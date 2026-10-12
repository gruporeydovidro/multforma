import type { Db } from '../../lib/db.js';
import type { ContextoImportacao } from '../contexto.js';
import { dia, formaOrcamento, formaPortador, somarDias, statusOrcamento, texto, unidadeVenda } from '../conversores.js';
import { r2, r4 } from '../opcoes.js';
import { EtapaPorLote, type Conversao, type ConsultaOrigem } from './base.js';

const FECHADOS = `('9', '2', '5')`;

/**
 * Orçamentos com itens e parcelas. Mantém o número original por filial; os totais vêm das views de total
 * do sistema anterior. Itens de produtos que não existem mais apontam para o produto "Item do sistema anterior".
 * As medidas (largura/altura) não são importadas: o histórico guarda a medida cobrada e o valor.
 */
export class OrcamentosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Orçamentos';
  readonly entidade = 'orcamento';
  readonly tabela = 'orcamento';
  readonly colunas = ['filial_id', 'numero', 'cliente_id', 'vendedor_id', 'tabela_preco_id', 'data_emissao', 'validade', 'prazo_entrega', 'status',
    'destino', 'contato', 'observacoes', 'subtotal', 'desconto_pct', 'desconto_valor', 'acrescimo_valor', 'frete_valor', 'total', 'forma_pagamento',
    'criado_em', 'fechado_em'];
  private produtoGenerico!: number;
  private numerosUsados = new Set<string>();
  private formasPortador = new Map<number, string>();
  private unidadesProduto = new Map<number, string>();
  private semTotal = new Set<string>();

  protected async preparar(ctx: ContextoImportacao) {
    const r = await ctx.destino.query(
      `insert into produto (codigo, nome, tipo, unidade_venda, controla_estoque, ativo)
       values ('LEGADO-ITEM', 'Item do sistema anterior', 'produto', 'UN', false, false)
       on conflict (codigo) do update set codigo = excluded.codigo returning id`,
    );
    this.produtoGenerico = r.rows[0].id;
    this.numerosUsados = new Set((await ctx.destino.query('select filial_id, numero from orcamento')).rows.map((x) => `${x.filial_id}|${x.numero}`));
    for (const p of await ctx.origem.consultar('select cd_portador, fl_pagamento from portador')) this.formasPortador.set(Number(p.cd_portador), formaPortador(p.fl_pagamento));
    for (const r of (await ctx.destino.query('select id, unidade_venda from produto')).rows) this.unidadesProduto.set(r.id, r.unidade_venda);
  }

  protected consulta(ctx: ContextoImportacao): ConsultaOrigem {
    const recente = ctx.opcoes.escopo === 'recente';
    return {
      sql: `select o.cd_filial, o.nr_orcamento, o.dt_emissao, o.st_orcamento, o.dt_cancelamento, o.cd_emitente, o.cd_funcionario, o.cd_tabela,
                   o.fl_formapagto, o.nm_contato, o.mm_observacao, o.vl_desconto, o.vl_pedido_frete, o.nr_validade, o.nr_entrega,
                   o.dt_confirmado, o.dt_fatura, o.fl_producao, t.vl_orcamento
              from orcamento o
              left join orcamento_total t on t.cd_filial = o.cd_filial and t.nr_orcamento = o.nr_orcamento
             ${recente ? `where o.dt_emissao >= $1::date or (o.dt_cancelamento is null and coalesce(o.st_orcamento, '') not in ${FECHADOS})` : ''}`,
      chave: ['cd_filial', 'nr_orcamento'],
      params: recente ? [ctx.opcoes.desde] : [],
    };
  }
  protected chaveLegada(l: any) {
    return `${l.cd_filial}|${l.nr_orcamento}`;
  }

  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    const filial = await ctx.mapa.id('filial', l.cd_filial);
    const cliente = await ctx.mapa.id('pessoa', l.cd_emitente);
    if (!filial) return { ignorar: 'filial não importada' };
    if (!cliente) return { ignorar: 'cliente não importado' };
    if (this.numerosUsados.has(`${filial}|${l.nr_orcamento}`)) return { ignorar: 'número de orçamento já usado no VidroGest' };
    this.numerosUsados.add(`${filial}|${l.nr_orcamento}`);
    const emissao = dia(l.dt_emissao) ?? '2000-01-01';
    const status = statusOrcamento(l.st_orcamento, l.dt_cancelamento);
    const desconto = Math.max(0, r2(l.vl_desconto));
    const frete = Math.max(0, r2(l.vl_pedido_frete));
    // Total do sistema anterior; sem ele, é recalculado a partir dos itens em aposGravar.
    const total = l.vl_orcamento !== null && l.vl_orcamento !== undefined ? r2(l.vl_orcamento) : null;
    if (total === null) this.semTotal.add(this.chaveLegada(l));
    const fechadoEm = status === 'fechado' ? (l.dt_confirmado ?? l.dt_fatura ?? l.dt_emissao) : null;
    const dias = (n: unknown) => (Number(n) > 0 && Number(n) < 3650 ? somarDias(emissao, Number(n)) : null);
    return {
      valores: [filial, Number(l.nr_orcamento), cliente, await ctx.mapa.id('funcionario', l.cd_funcionario), await ctx.mapa.id('tabela_preco', texto(l.cd_tabela)),
        emissao, dias(l.nr_validade), dias(l.nr_entrega), status, String(l.fl_producao ?? '').trim() === '1' ? 'producao' : 'balcao',
        texto(l.nm_contato), texto(l.mm_observacao), 0, 0, desconto, 0, frete, total ?? 0, formaOrcamento(l.fl_formapagto),
        l.dt_emissao ?? new Date(), fechadoEm],
    };
  }

  protected async aposGravar(db: Db, linhas: any[], ids: number[], ctx: ContextoImportacao) {
    const idPorChave = new Map(linhas.map((l, i) => [this.chaveLegada(l), ids[i]]));
    const filiais = linhas.map((l) => Number(l.cd_filial));
    const numeros = linhas.map((l) => Number(l.nr_orcamento));
    const produtos = await ctx.mapa.carregar('produto');

    const itens = await ctx.origem.consultar(
      `select i.cd_filial, i.nr_orcamento, i.nr_item, i.cd_produto, i.nm_produto, i.ds_ambiente, i.sg_unidade, i.qt_item, i.vl_unitario, t.vl_venda
         from orcamento_item i
         left join orcamento_item_total t on t.cd_filial = i.cd_filial and t.nr_orcamento = i.nr_orcamento and t.nr_item = i.nr_item
        where (i.cd_filial, i.nr_orcamento) in (select * from unnest($1::smallint[], $2::int[]))
        order by i.cd_filial, i.nr_orcamento, i.nr_item`,
      [filiais, numeros],
    );
    const cols = ['orcamento_id', 'seq', 'produto_id', 'descricao', 'ambiente', 'unidade', 'quantidade', 'medida_cobrada', 'preco_unitario', 'total'];
    const linhasItens: unknown[][] = [];
    for (const it of itens) {
      const orc = idPorChave.get(`${it.cd_filial}|${it.nr_orcamento}`)!;
      let produto = produtos.get(String(it.cd_produto)) ?? null;
      if (!produto) {
        produto = this.produtoGenerico;
        ctx.relatorio.avisar(this.nome, 'item com produto inexistente (ligado a "Item do sistema anterior")');
      }
      const unidade = this.unidadesProduto.get(produto) ?? unidadeVenda(it.sg_unidade);
      const medida = Math.max(0, r4(it.qt_item));
      const porArea = unidade === 'M2' || unidade === 'ML';
      const total = r2(it.vl_venda ?? medida * Number(it.vl_unitario ?? 0));
      linhasItens.push([orc, Number(it.nr_item), produto, texto(it.nm_produto, 200) ?? 'Item', texto(it.ds_ambiente), unidade,
        porArea ? 1 : medida, medida, Math.max(0, r4(it.vl_unitario)), total]);
    }
    if (linhasItens.length) {
      for (let i = 0; i < linhasItens.length; i += 2000) {
        const bloco = linhasItens.slice(i, i + 2000);
        await db.query(
          `insert into orcamento_item (${cols.join(', ')})
           select * from unnest($1::int[], $2::int[], $3::int[], $4::text[], $5::text[], $6::text[], $7::numeric[], $8::numeric[], $9::numeric[], $10::numeric[])`,
          cols.map((_, c) => bloco.map((l) => l[c])),
        );
      }
      ctx.relatorio.contar('Itens de orçamento', 'gravados', linhasItens.length);
    }
    await this.fecharTotais(db, idPorChave);

    const parcelas = await ctx.origem.consultar(
      `select cd_filial, nr_orcamento, nr_parcela, dt_vencimento, vl_parcela, cd_portador from orcamento_parcela
        where (cd_filial, nr_orcamento) in (select * from unnest($1::smallint[], $2::int[]))
        order by cd_filial, nr_orcamento, nr_parcela`,
      [filiais, numeros],
    );
    const lp = parcelas
      .filter((p) => Number(p.vl_parcela) > 0 && dia(p.dt_vencimento))
      .map((p) => [idPorChave.get(`${p.cd_filial}|${p.nr_orcamento}`)!, Number(p.nr_parcela ?? 1), dia(p.dt_vencimento), r2(p.vl_parcela),
        this.formasPortador.get(Number(p.cd_portador)) ?? 'a_prazo']);
    if (lp.length) {
      await db.query(
        `insert into orcamento_parcela (orcamento_id, numero, vencimento, valor, forma_pagamento)
         select * from unnest($1::int[], $2::int[], $3::date[], $4::numeric[], $5::text[])`,
        [0, 1, 2, 3, 4].map((c) => lp.map((l) => l[c])),
      );
      ctx.relatorio.contar('Parcelas de orçamento', 'gravados', lp.length);
    }
  }

  /**
   * Subtotal = soma dos itens. O total do sistema anterior é mantido; a diferença em relação a
   * subtotal - desconto + frete vira acréscimo (se positiva) ou desconto (se negativa).
   */
  private async fecharTotais(db: Db, idPorChave: Map<string, number>) {
    const ids = [...idPorChave.values()];
    const recalcular = [...this.semTotal].filter((c) => idPorChave.has(c)).map((c) => idPorChave.get(c)!);
    await db.query(
      `update orcamento o set
         subtotal = s.subtotal,
         total = case when o.id = any($2::int[]) then greatest(0, s.subtotal - o.desconto_valor + o.frete_valor) else o.total end
       from (select orcamento_id, round(coalesce(sum(total), 0), 2) as subtotal from orcamento_item where orcamento_id = any($1::int[]) group by orcamento_id) s
      where o.id = s.orcamento_id`,
      [ids, recalcular],
    );
    await db.query(
      `update orcamento set
         acrescimo_valor = greatest(0, round(total - (subtotal - desconto_valor + frete_valor), 2)),
         desconto_valor = desconto_valor + greatest(0, round((subtotal - desconto_valor + frete_valor) - total, 2))
       where id = any($1::int[])`,
      [ids],
    );
  }
}
