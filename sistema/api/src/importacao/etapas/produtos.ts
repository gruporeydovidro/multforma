import type { Db } from '../../lib/db.js';
import { emTransacao, type ContextoImportacao, type Etapa } from '../contexto.js';
import { flag, formula, texto, unidadeVenda } from '../conversores.js';
import { r4 } from '../opcoes.js';
import { EtapaPorLote, type Conversao, type ConsultaOrigem } from './base.js';

/**
 * Produtos. Código = código do sistema anterior. Preço e custo vêm da tabela de preço padrão da primeira filial
 * (ou da primeira tabela que tiver o produto); a área mínima vem do grupo.
 */
export class ProdutosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Produtos';
  readonly entidade = 'produto';
  readonly tabela = 'produto';
  readonly colunas = ['codigo', 'nome', 'tipo', 'grupo_id', 'unidade_venda', 'espessura_mm', 'perda_pct', 'arredondamento_id', 'area_minima_m2',
    'custo', 'preco_venda', 'estoque_minimo', 'controla_estoque', 'ncm', 'ativo', 'criado_em'];
  private codigos = new Set<string>();

  protected async preparar(ctx: ContextoImportacao) {
    this.codigos = new Set((await ctx.destino.query('select codigo from produto')).rows.map((r) => r.codigo));
  }
  protected consulta(): ConsultaOrigem {
    return {
      sql: `select p.cd_produto, p.nm_produto, p.fl_produto, p.cd_grupo, p.sg_venda, p.nr_moldespessura, p.nr_moldperda, p.cd_arredondamento,
                   p.qt_est_minimo, p.cd_clasfiscal, p.fl_ativo, p.dt_cadastro, g.qt_areaminima,
                   pp.vl_venda, pp.vl_custo
              from produto p
              left join grupo g on g.cd_grupo = p.cd_grupo
              left join lateral (
                select x.vl_venda, x.vl_custo from produto_preco x
                 where x.cd_produto = p.cd_produto
                 order by (x.cd_tabela = (select cd_tabela from filial order by cd_filial limit 1)) desc, x.cd_tabela limit 1
              ) pp on true`,
      chave: ['cd_produto'],
    };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_produto);
  }
  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    let codigo = String(l.cd_produto);
    if (this.codigos.has(codigo)) codigo = `L${codigo}`;
    if (this.codigos.has(codigo)) return { ignorar: 'código já existe no VidroGest' };
    this.codigos.add(codigo);
    // fl_produto segue a lista Produto / Serviço / Conjunto do sistema anterior.
    const servico = ['2', 'S'].includes(String(l.fl_produto ?? '').trim().toUpperCase());
    const tipo = servico ? 'servico' : 'produto';
    return {
      valores: [codigo, texto(l.nm_produto, 200) ?? `Produto ${codigo}`, tipo, await ctx.mapa.id('grupo_produto', l.cd_grupo), unidadeVenda(l.sg_venda),
        l.nr_moldespessura ? Math.min(999, Math.max(0, Number(l.nr_moldespessura))) || null : null,
        Math.min(100, Math.max(0, Number(l.nr_moldperda ?? 0))), await ctx.mapa.id('arredondamento', l.cd_arredondamento),
        Math.min(1000, Math.max(0, Number(l.qt_areaminima ?? 0))), Math.max(0, r4(l.vl_custo)), Math.max(0, r4(l.vl_venda)),
        Math.max(0, r4(l.qt_est_minimo)), tipo === 'produto', texto(l.cd_clasfiscal), flag(l.fl_ativo, true), l.dt_cadastro ?? new Date()],
    };
  }
}

/** Preços por tabela (chave natural: tabela + produto; não precisa de mapeamento). */
export class PrecosEtapa implements Etapa {
  readonly nome = 'Preços por tabela';

  async executar(ctx: ContextoImportacao): Promise<void> {
    const produtos = await ctx.mapa.carregar('produto');
    const tabelas = await ctx.mapa.carregar('tabela_preco');
    for await (const lote of ctx.origem.lotes<any>('select cd_tabela, cd_produto, vl_venda from produto_preco', ['cd_tabela', 'cd_produto'], [], ctx.opcoes.tamanhoLote)) {
      ctx.relatorio.contar(this.nome, 'lidos', lote.length);
      const linhas: [number, number, number][] = [];
      for (const l of lote) {
        const t = tabelas.get(String(l.cd_tabela).trim());
        const p = produtos.get(String(l.cd_produto));
        if (!t || !p) {
          ctx.relatorio.contar(this.nome, 'ignorados');
          ctx.relatorio.avisar(this.nome, 'produto ou tabela não importados');
          continue;
        }
        linhas.push([t, p, Math.max(0, r4(l.vl_venda))]);
      }
      if (!linhas.length) continue;
      const r = await ctx.destino.query(
        `insert into produto_preco (tabela_preco_id, produto_id, preco)
         select * from unnest($1::int[], $2::int[], $3::numeric[]) on conflict do nothing`,
        [linhas.map((x) => x[0]), linhas.map((x) => x[1]), linhas.map((x) => x[2])],
      );
      ctx.relatorio.contar(this.nome, 'gravados', r.rowCount ?? 0);
    }
  }
}

/** Gabaritos de projeto com seus itens; fórmulas convertidas para a sintaxe L/A e validadas. */
export class ProjetosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Projetos';
  readonly entidade = 'projeto';
  readonly tabela = 'projeto';
  readonly colunas = ['nome', 'descricao'];

  protected consulta(): ConsultaOrigem {
    return { sql: 'select cd_projeto, nm_projeto, mm_complemento from projeto', chave: ['cd_projeto'] };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_projeto);
  }
  protected converter(l: any): Conversao {
    return { valores: [texto(l.nm_projeto, 200) ?? `Projeto ${l.cd_projeto}`, texto(l.mm_complemento)] };
  }

  protected async aposGravar(db: Db, linhas: any[], ids: number[], ctx: ContextoImportacao) {
    const porProjeto = new Map(linhas.map((l, i) => [Number(l.cd_projeto), ids[i]]));
    const itens = await ctx.origem.consultar(
      `select i.cd_projeto, i.nr_item, i.tp_item, i.cd_produto, i.qt_item, i.ds_form_altura, i.ds_form_largura,
              i.nr_altura_folga, i.nr_largura_folga, pc.ds_peca, pt.ds_parte, p.nm_produto
         from projeto_item i
         left join projeto_peca pc on pc.cd_peca = i.cd_peca
         left join projeto_parte pt on pt.cd_parte = i.cd_parte
         left join produto p on p.cd_produto = i.cd_produto
        where i.cd_projeto = any($1::int[]) order by i.cd_projeto, i.nr_item`,
      [[...porProjeto.keys()]],
    );
    for (const it of itens) {
      const vidro = String(it.tp_item ?? '').trim() === '0';
      const produto = await ctx.mapa.id('produto', it.cd_produto);
      if (!vidro && !produto) {
        ctx.relatorio.avisar(this.nome, 'item de projeto sem produto (ignorado)');
        continue;
      }
      const fl = formula(it.ds_form_largura);
      const fa = formula(it.ds_form_altura);
      for (const f of [fl, fa]) if (f.aviso) ctx.relatorio.avisar(this.nome, 'fórmula não convertida (ver descrição do projeto)');
      const avisos = [fl.aviso, fa.aviso].filter(Boolean);
      if (avisos.length) {
        await db.query(`update projeto set descricao = concat_ws(E'\\n', descricao, $2::text) where id = $1`, [porProjeto.get(Number(it.cd_projeto)), avisos.join('\n')]);
      }
      const descricao = texto(it.ds_peca) ?? texto(it.ds_parte) ?? texto(it.nm_produto) ?? `Item ${it.nr_item}`;
      await db.query(
        `insert into projeto_item (projeto_id, descricao, tipo, produto_id, quantidade, formula_largura, formula_altura, folga_largura_mm, folga_altura_mm, ordem)
         values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)`,
        [porProjeto.get(Number(it.cd_projeto)), descricao, vidro ? 'vidro' : 'ferragem', vidro ? null : produto,
          Math.max(0.001, Math.min(9_999_999, Number(it.qt_item ?? 1))), fl.texto, fa.texto,
          Math.trunc(Number(it.nr_largura_folga ?? 0)), Math.trunc(Number(it.nr_altura_folga ?? 0)), Number(it.nr_item ?? 0)],
      );
    }
  }
}

/** Saldo atual de estoque por filial/produto, gravado como um acerto de saldo inicial. */
export class EstoqueInicialEtapa implements Etapa {
  readonly nome = 'Saldo inicial de estoque';

  async executar(ctx: ContextoImportacao): Promise<void> {
    const filiais = await ctx.mapa.carregar('filial');
    const produtos = await ctx.mapa.carregar('produto');
    const feitos = await ctx.mapa.carregar('estoque_saldo');
    const controlados = new Set((await ctx.destino.query('select id from produto where controla_estoque')).rows.map((r) => r.id));
    const linhas = await ctx.origem.consultar(`select cd_filial, cd_produto, qt_saldo from estoque_saldo where coalesce(qt_saldo, 0) <> 0`);
    ctx.relatorio.contar(this.nome, 'lidos', linhas.length);
    const pares: [string, number][] = [];
    await emTransacao(ctx.destino, async (db) => {
      for (const l of linhas) {
        const chave = `${l.cd_filial}|${l.cd_produto}`;
        if (feitos.has(chave)) continue;
        const f = filiais.get(String(l.cd_filial));
        const p = produtos.get(String(l.cd_produto));
        if (!f || !p || !controlados.has(p)) {
          ctx.relatorio.contar(this.nome, 'ignorados');
          ctx.relatorio.avisar(this.nome, !f || !p ? 'filial ou produto não importados' : 'produto não controla estoque');
          continue;
        }
        const { rows } = await db.query(
          `insert into estoque_movimento (filial_id, produto_id, tipo, origem, quantidade, documento, observacao)
           values ($1,$2,'acerto','manual',$3,'SALDO INICIAL','Saldo importado do sistema anterior') returning id`,
          [f, p, r4(l.qt_saldo)],
        );
        pares.push([chave, rows[0].id]);
      }
      await ctx.mapa.registrar(db, 'estoque_saldo', pares);
    });
    ctx.relatorio.contar(this.nome, 'gravados', pares.length);
  }
}
