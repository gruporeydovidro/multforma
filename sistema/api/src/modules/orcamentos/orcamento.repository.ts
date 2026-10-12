import { query, queryOne, type Db } from '../../lib/db.js';
import { offset } from '../../lib/paging.js';
import type { Destino, Parcela, StatusOrcamento } from './domain/index.js';
import type { AtualizarOrcamentoInput, CriarOrcamentoInput, ListaOrcamentosFiltro } from './orcamentos.schemas.js';

export interface OrcamentoRow {
  id: number;
  filial_id: number;
  numero: number;
  cliente_id: number;
  vendedor_id: number | null;
  tabela_preco_id: number | null;
  data_emissao: string;
  validade: string | null;
  prazo_entrega: string | null;
  status: StatusOrcamento;
  destino: Destino;
  contato: string | null;
  endereco_entrega: string | null;
  observacoes: string | null;
  subtotal: number;
  desconto_pct: number;
  desconto_valor: number;
  acrescimo_valor: number;
  frete_valor: number;
  total: number;
  forma_pagamento: string | null;
  criado_por: number | null;
  criado_em: string;
  fechado_em: string | null;
}

export interface ItemRow {
  id: number;
  orcamento_id: number;
  orcamento_projeto_id: number | null;
  seq: number;
  produto_id: number;
  descricao: string;
  ambiente: string | null;
  unidade: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
  largura_calc_mm: number | null;
  altura_calc_mm: number | null;
  medida_cobrada: number;
  preco_unitario: number;
  desconto_valor: number;
  total: number;
}

export type NovoItem = Omit<ItemRow, 'id' | 'orcamento_id' | 'seq'>;

export interface ProjetoOrcamentoRow {
  id: number;
  orcamento_id: number;
  projeto_id: number;
  descricao: string | null;
  ambiente: string | null;
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
  total: number;
}

const COLUNAS_ITEM = [
  'orcamento_projeto_id', 'produto_id', 'descricao', 'ambiente', 'unidade', 'quantidade', 'largura_mm', 'altura_mm',
  'largura_calc_mm', 'altura_calc_mm', 'medida_cobrada', 'preco_unitario', 'desconto_valor', 'total',
] as const;

/** Colunas do cabeçalho que podem ser gravadas (lista fixa: nomes nunca vêm do cliente). */
const COLUNAS_CABECALHO = [
  'cliente_id', 'vendedor_id', 'tabela_preco_id', 'data_emissao', 'validade', 'prazo_entrega', 'destino',
  'contato', 'endereco_entrega', 'observacoes', 'desconto_pct', 'desconto_valor', 'acrescimo_valor', 'frete_valor',
] as const;

/** Acesso a dados de orçamento, itens, projetos e parcelas (só SQL; sempre filtrado pela filial). */
export class OrcamentoRepository {
  constructor(private readonly db: Db) {}

  async listar(filialId: number, f: ListaOrcamentosFiltro) {
    const params: unknown[] = [filialId];
    const where = ['o.filial_id = $1'];
    const add = (sql: string, v: unknown) => {
      params.push(v);
      where.push(sql.replace('?', `$${params.length}`));
    };
    if (f.q) {
      // q = número do orçamento (se for só dígitos) ou parte do nome/fantasia do cliente.
      params.push(`%${f.q}%`);
      const like = `$${params.length}`;
      const porNome = `c.nome ilike ${like} or c.fantasia ilike ${like}`;
      if (/^\d{1,9}$/.test(f.q)) {
        params.push(Number(f.q));
        where.push(`(o.numero = $${params.length} or ${porNome})`);
      } else {
        where.push(`(${porNome})`);
      }
    }
    if (f.status) add('o.status = ?', f.status);
    if (f.data_ini) add('o.data_emissao >= ?', f.data_ini);
    if (f.data_fim) add('o.data_emissao <= ?', f.data_fim);
    if (f.vendedor_id) add('o.vendedor_id = ?', f.vendedor_id);
    if (f.cliente_id) add('o.cliente_id = ?', f.cliente_id);
    const from = `from orcamento o join pessoa c on c.id = o.cliente_id left join funcionario v on v.id = o.vendedor_id where ${where.join(' and ')}`;
    const total = await queryOne<{ n: number }>(`select count(*)::int as n ${from}`, params, this.db);
    const items = await query(
      `select o.id, o.numero, o.data_emissao, o.validade, o.prazo_entrega, o.status, o.destino, o.total, o.cliente_id,
              c.nome as cliente_nome, o.vendedor_id, v.nome as vendedor_nome
         ${from}
        order by o.data_emissao desc, o.numero desc
        limit $${params.length + 1} offset $${params.length + 2}`,
      [...params, f.pageSize, offset(f.page, f.pageSize)],
      this.db,
    );
    return { items, total: total!.n };
  }

  /** Cabeçalho do orçamento da filial; com `bloquear`, trava a linha até o fim da transação. */
  buscar(filialId: number, id: number, bloquear = false) {
    return queryOne<OrcamentoRow>(
      `select * from orcamento where id = $1 and filial_id = $2 ${bloquear ? 'for update' : ''}`,
      [id, filialId],
      this.db,
    );
  }

  /** Nomes de cliente, vendedor e tabela de preço para o detalhe. */
  async complementos(o: OrcamentoRow) {
    const cliente = await queryOne(
      `select id, nome, fantasia, cpf_cnpj, rg_ie, email, telefone, celular, cep, logradouro, numero, complemento, bairro, cidade, uf
         from pessoa where id = $1`,
      [o.cliente_id],
      this.db,
    );
    const filial = await queryOne(
      `select id, nome, cnpj, inscricao_estadual, telefone, email, cep, logradouro, numero, complemento, bairro, cidade, uf
         from filial where id = $1`,
      [o.filial_id],
      this.db,
    );
    const nomes = await queryOne<{ vendedor_nome: string | null; tabela_preco_nome: string | null }>(
      `select (select nome from funcionario where id = $1) as vendedor_nome, (select nome from tabela_preco where id = $2) as tabela_preco_nome`,
      [o.vendedor_id, o.tabela_preco_id],
      this.db,
    );
    return { cliente, filial, ...nomes! };
  }

  /** Referências inexistentes entre cliente, vendedor e tabela de preço. */
  async referenciasInexistentes(r: { cliente_id?: number | null; vendedor_id?: number | null; tabela_preco_id?: number | null }): Promise<string[]> {
    const row = await queryOne<{ cliente: boolean; vendedor: boolean; tabela: boolean }>(
      `select ($1::int is null or exists (select 1 from pessoa where id = $1 and tipo in ('cliente','ambos'))) as cliente,
              ($2::int is null or exists (select 1 from funcionario where id = $2)) as vendedor,
              ($3::int is null or exists (select 1 from tabela_preco where id = $3)) as tabela`,
      [r.cliente_id ?? null, r.vendedor_id ?? null, r.tabela_preco_id ?? null],
      this.db,
    );
    return [!row!.cliente && 'cliente', !row!.vendedor && 'vendedor', !row!.tabela && 'tabela de preço'].filter((x): x is string => !!x);
  }

  async inserir(filialId: number, numero: number, d: CriarOrcamentoInput, usuarioId: number): Promise<number> {
    const r = await queryOne<{ id: number }>(
      `insert into orcamento (filial_id, numero, cliente_id, vendedor_id, tabela_preco_id, data_emissao, validade, prazo_entrega, destino,
                              contato, endereco_entrega, observacoes, desconto_pct, desconto_valor, acrescimo_valor, frete_valor, criado_por)
       values ($1,$2,$3,$4,$5,coalesce($6::date, current_date),$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17) returning id`,
      [filialId, numero, d.cliente_id, d.vendedor_id, d.tabela_preco_id, d.data_emissao ?? null, d.validade, d.prazo_entrega, d.destino,
        d.contato, d.endereco_entrega, d.observacoes, d.desconto_pct, d.desconto_valor, d.acrescimo_valor, d.frete_valor, usuarioId],
      this.db,
    );
    return r!.id;
  }

  async atualizarCabecalho(id: number, d: AtualizarOrcamentoInput): Promise<void> {
    const sets: string[] = [];
    const params: unknown[] = [id];
    for (const col of COLUNAS_CABECALHO) {
      if (d[col] === undefined) continue;
      params.push(d[col]);
      sets.push(`${col} = $${params.length}`);
    }
    if (sets.length) await query(`update orcamento set ${sets.join(', ')} where id = $1`, params, this.db);
  }

  async gravarTotais(id: number, t: { subtotal: number; desconto_valor: number; total: number }): Promise<void> {
    await query('update orcamento set subtotal = $2, desconto_valor = $3, total = $4 where id = $1', [id, t.subtotal, t.desconto_valor, t.total], this.db);
  }

  async gravarStatus(id: number, status: StatusOrcamento): Promise<void> {
    await query('update orcamento set status = $2 where id = $1', [id, status], this.db);
  }

  async gravarFechamento(id: number, formaPagamento: string): Promise<void> {
    await query(`update orcamento set status = 'fechado', forma_pagamento = $2, fechado_em = now() where id = $1`, [id, formaPagamento], this.db);
  }

  async hoje(): Promise<string> {
    return (await queryOne<{ d: string }>('select current_date as d', [], this.db))!.d;
  }

  // ---- itens ----

  itens(orcamentoId: number) {
    return query<ItemRow & { produto_codigo: string; produto_tipo: string }>(
      `select oi.*, p.codigo as produto_codigo, p.tipo as produto_tipo
         from orcamento_item oi join produto p on p.id = oi.produto_id
        where oi.orcamento_id = $1 order by oi.seq, oi.id`,
      [orcamentoId],
      this.db,
    );
  }

  buscarItem(orcamentoId: number, itemId: number) {
    return queryOne<ItemRow>('select * from orcamento_item where id = $1 and orcamento_id = $2', [itemId, orcamentoId], this.db);
  }

  async totaisItens(orcamentoId: number): Promise<number[]> {
    return (await query<{ total: number }>('select total from orcamento_item where orcamento_id = $1', [orcamentoId], this.db)).map((r) => r.total);
  }

  async inserirItem(orcamentoId: number, it: NovoItem): Promise<number> {
    const seq = await queryOne<{ n: number }>('select coalesce(max(seq), 0) + 1 as n from orcamento_item where orcamento_id = $1', [orcamentoId], this.db);
    const cols = ['orcamento_id', 'seq', ...COLUNAS_ITEM];
    const vals = [orcamentoId, seq!.n, ...COLUNAS_ITEM.map((c) => it[c])];
    const r = await queryOne<{ id: number }>(
      `insert into orcamento_item (${cols.join(', ')}) values (${cols.map((_, i) => `$${i + 1}`).join(', ')}) returning id`,
      vals,
      this.db,
    );
    return r!.id;
  }

  async atualizarItem(itemId: number, it: NovoItem): Promise<void> {
    const sets = COLUNAS_ITEM.map((c, i) => `${c} = $${i + 2}`);
    await query(`update orcamento_item set ${sets.join(', ')} where id = $1`, [itemId, ...COLUNAS_ITEM.map((c) => it[c])], this.db);
  }

  async removerItem(itemId: number): Promise<void> {
    await query('delete from orcamento_item where id = $1', [itemId], this.db);
  }

  /**
   * Itens de produto (não serviço) que controla estoque, para a baixa no fechamento.
   * Em ordem crescente de produto (itens do mesmo produto juntos, pela sequência): a porta de estoque
   * trava cada produto, e vendas concorrentes travando na mesma ordem não entram em deadlock.
   */
  itensComEstoque(orcamentoId: number) {
    return query<{ id: number; produto_id: number; medida_cobrada: number }>(
      `select oi.id, oi.produto_id, oi.medida_cobrada
         from orcamento_item oi join produto p on p.id = oi.produto_id
        where oi.orcamento_id = $1 and p.tipo = 'produto' and p.controla_estoque
        order by oi.produto_id, oi.seq, oi.id`,
      [orcamentoId],
      this.db,
    );
  }

  // ---- projetos ----

  projetos(orcamentoId: number) {
    return query<ProjetoOrcamentoRow & { projeto_nome: string; vidro_nome: string | null }>(
      `select op.*, pj.nome as projeto_nome, pr.nome as vidro_nome
         from orcamento_projeto op join projeto pj on pj.id = op.projeto_id left join produto pr on pr.id = op.vidro_produto_id
        where op.orcamento_id = $1 order by op.id`,
      [orcamentoId],
      this.db,
    );
  }

  buscarProjeto(orcamentoId: number, projetoOrcId: number) {
    return queryOne<ProjetoOrcamentoRow>('select * from orcamento_projeto where id = $1 and orcamento_id = $2', [projetoOrcId, orcamentoId], this.db);
  }

  async inserirProjeto(orcamentoId: number, p: Omit<ProjetoOrcamentoRow, 'id' | 'orcamento_id' | 'total'>): Promise<number> {
    const r = await queryOne<{ id: number }>(
      `insert into orcamento_projeto (orcamento_id, projeto_id, descricao, ambiente, largura_vao_mm, altura_vao_mm, quantidade, vidro_produto_id)
       values ($1,$2,$3,$4,$5,$6,$7,$8) returning id`,
      [orcamentoId, p.projeto_id, p.descricao, p.ambiente, p.largura_vao_mm, p.altura_vao_mm, p.quantidade, p.vidro_produto_id],
      this.db,
    );
    return r!.id;
  }

  /** Remove o projeto; os itens dele saem junto (on delete cascade). */
  async removerProjeto(projetoOrcId: number): Promise<void> {
    await query('delete from orcamento_projeto where id = $1', [projetoOrcId], this.db);
  }

  async recalcularTotaisProjetos(orcamentoId: number): Promise<void> {
    await query(
      `update orcamento_projeto op
          set total = coalesce((select sum(oi.total) from orcamento_item oi where oi.orcamento_projeto_id = op.id), 0)
        where op.orcamento_id = $1`,
      [orcamentoId],
      this.db,
    );
  }

  // ---- parcelas ----

  parcelas(orcamentoId: number) {
    return query('select id, numero, vencimento, valor, forma_pagamento from orcamento_parcela where orcamento_id = $1 order by numero', [orcamentoId], this.db);
  }

  async inserirParcelas(orcamentoId: number, parcelas: readonly Parcela[]): Promise<void> {
    for (const p of parcelas) {
      await query(
        'insert into orcamento_parcela (orcamento_id, numero, vencimento, valor, forma_pagamento) values ($1,$2,$3,$4,$5)',
        [orcamentoId, p.numero, p.vencimento, p.valor, p.forma_pagamento],
        this.db,
      );
    }
  }
}
