import { query, queryOne, type Db } from '../../lib/db.js';
import { offset } from '../../lib/paging.js';
import type { DadosTitulo, StatusTitulo } from './domain/titulo.js';
import { SqlWhere } from './sql-where.js';

export interface FiltroTitulos {
  q?: string;
  page: number;
  pageSize: number;
  status?: StatusTitulo;
  vencidas?: boolean;
  de?: string;
  ate?: string;
  cliente_id?: number;
  orcamento_id?: number;
  fornecedor_id?: number;
  categoria?: string;
}

export interface TotaisTitulos {
  aberto: number;
  vencido: number;
  qtd_vencido: number;
  pago_periodo: number;
}

/** Linha de título já com os campos calculados (saldo, vencida, dias_atraso). */
export interface TituloView extends DadosTitulo {
  filial_id: number;
  parcela: number;
  documento: string | null;
  emissao: string;
  data_pagamento: string | null;
  forma_pagamento: string | null;
  observacao: string | null;
  criado_em: string;
  saldo: number;
  vencida: boolean;
  dias_atraso: number;
}

export interface ContaReceberView extends TituloView {
  cliente_id: number;
  orcamento_id: number | null;
  cliente_nome: string;
  cliente_cpf_cnpj: string | null;
  orcamento_numero: number | null;
}

export interface ContaPagarView extends TituloView {
  fornecedor_id: number | null;
  descricao: string;
  categoria: string | null;
  fornecedor_nome: string | null;
}

/** Dados mínimos do título lido com bloqueio (for update). */
export type TituloTravado = DadosTitulo & { filial_id: number };

export interface PagamentoView {
  id: number;
  data: string;
  tipo: 'entrada' | 'saida';
  valor: number;
  descricao: string;
  forma_pagamento: string | null;
  criado_em: string;
  usuario_nome: string | null;
}

/** Partes fixas do SQL de cada tipo de título (constantes, nunca vindas do cliente). */
interface ConfigTitulo {
  tabela: 'conta_receber' | 'conta_pagar';
  fk: 'conta_receber_id' | 'conta_pagar_id';
  from: string;
  campos: string;
  /** Condição de busca textual; $X é substituído pelo marcador do parâmetro. */
  busca: string;
  /** Sentido do caixa que representa pagamento do título. */
  tipoPagamento: 'entrada' | 'saida';
  /** Coluna de descrição (contas a pagar) usada no texto do caixa. */
  descricao: string;
}

// valor e valor_pago são numeric(14,2): a diferença já é exata em 2 casas (sem arredondamento próprio).
const CALCULADOS = `t.valor - t.valor_pago as saldo,
  (t.status = 'aberto' and t.vencimento < current_date) as vencida,
  case when t.status = 'aberto' and t.vencimento < current_date then current_date - t.vencimento else 0 end as dias_atraso`;

/** Acesso a dados comum a contas a receber e a pagar. */
export abstract class TituloRepository<V extends TituloView = TituloView> {
  protected abstract readonly cfg: ConfigTitulo;

  constructor(protected readonly db: Db) {}

  /** Filtros independentes de status e período (filial, busca, pessoa…). */
  protected abstract filtrosEspecificos(w: SqlWhere, f: FiltroTitulos): void;

  private filtrosBase(filialId: number, f: FiltroTitulos): SqlWhere {
    const w = new SqlWhere();
    w.add(`t.filial_id = ${w.p(filialId)}`);
    if (f.q) {
      const ph = w.p(`%${f.q}%`);
      w.add(this.cfg.busca.replaceAll('$X', ph));
    }
    this.filtrosEspecificos(w, f);
    return w;
  }

  async listar(filialId: number, f: FiltroTitulos): Promise<{ items: V[]; total: number }> {
    const w = this.filtrosBase(filialId, f);
    if (f.status) w.add(`t.status = ${w.p(f.status)}`);
    if (f.vencidas) w.add(`t.status = 'aberto' and t.vencimento < current_date`);
    if (f.de) w.add(`t.vencimento >= ${w.p(f.de)}`);
    if (f.ate) w.add(`t.vencimento <= ${w.p(f.ate)}`);
    const [{ total }] = await query<{ total: number }>(`select count(*)::int as total from ${this.cfg.from} where ${w.sql}`, w.params, this.db);
    const items = await query<V>(
      `select t.*, ${this.cfg.campos}, ${CALCULADOS}
         from ${this.cfg.from}
        where ${w.sql}
        order by t.vencimento, t.id
        limit ${w.p(f.pageSize)} offset ${w.p(offset(f.page, f.pageSize))}`,
      w.params,
      this.db,
    );
    return { items, total };
  }

  /** Aberto e vencido pelo vencimento no período; pago pela data do caixa no período (líquido de estornos). */
  async totais(filialId: number, f: FiltroTitulos): Promise<TotaisTitulos> {
    const wa = this.filtrosBase(filialId, f);
    const periodo: string[] = [];
    if (f.de) periodo.push(`t.vencimento >= ${wa.p(f.de)}`);
    if (f.ate) periodo.push(`t.vencimento <= ${wa.p(f.ate)}`);
    const pv = periodo.map((c) => ` and ${c}`).join('');
    const abertos = await queryOne<Omit<TotaisTitulos, 'pago_periodo'>>(
      `select coalesce(sum(t.valor - t.valor_pago) filter (where t.status = 'aberto'${pv}), 0) as aberto,
              coalesce(sum(t.valor - t.valor_pago) filter (where t.status = 'aberto' and t.vencimento < current_date${pv}), 0) as vencido,
              count(*) filter (where t.status = 'aberto' and t.vencimento < current_date${pv})::int as qtd_vencido
         from ${this.cfg.from} where ${wa.sql}`,
      wa.params,
      this.db,
    );
    const wp = this.filtrosBase(filialId, f);
    if (f.de) wp.add(`cl.data >= ${wp.p(f.de)}`);
    if (f.ate) wp.add(`cl.data <= ${wp.p(f.ate)}`);
    const pago = await queryOne<{ pago: number }>(
      `select coalesce(sum(case when cl.tipo = '${this.cfg.tipoPagamento}' then cl.valor else -cl.valor end), 0) as pago
         from caixa_lancamento cl join ${this.cfg.from} on t.id = cl.${this.cfg.fk}
        where ${wp.sql}`,
      wp.params,
      this.db,
    );
    return { ...abertos!, pago_periodo: pago!.pago };
  }

  obter(id: number, filialId: number): Promise<V | undefined> {
    return queryOne<V>(
      `select t.*, ${this.cfg.campos}, ${CALCULADOS} from ${this.cfg.from} where t.id = $1 and t.filial_id = $2`,
      [id, filialId],
      this.db,
    );
  }

  pagamentos(id: number): Promise<PagamentoView[]> {
    return query<PagamentoView>(
      `select cl.id, cl.data, cl.tipo, cl.valor, cl.descricao, cl.forma_pagamento, cl.criado_em, u.nome as usuario_nome
         from caixa_lancamento cl left join usuario u on u.id = cl.usuario_id
        where cl.${this.cfg.fk} = $1 order by cl.data, cl.id`,
      [id],
      this.db,
    );
  }

  /** Lê e bloqueia o título da filial para alteração (uso das rotas do financeiro: sempre com a filial do usuário). */
  travar(id: number, filialId: number): Promise<TituloTravado | undefined> {
    return this.travarOnde('id = $1 and filial_id = $2', [id, filialId]);
  }

  /**
   * Lê e bloqueia o título sem filtrar a filial. Só para a porta FinanceiroPort, que recebe o id de um título
   * gerado na própria transação de quem chama (ex.: fechamento de orçamento) e não conhece a filial do usuário.
   */
  travarPelaPorta(id: number): Promise<TituloTravado | undefined> {
    return this.travarOnde('id = $1', [id]);
  }

  private travarOnde(where: string, params: unknown[]): Promise<TituloTravado | undefined> {
    return queryOne(
      `select id, filial_id, valor, valor_pago, status, vencimento, parcela, documento, ${this.cfg.descricao} as descricao
         from ${this.cfg.tabela} where ${where} for update`,
      params,
      this.db,
    );
  }

  async registrarPagamento(id: number, p: { valor_pago: number; status: StatusTitulo; data: string | null; forma_pagamento?: string | null }) {
    await query(
      `update ${this.cfg.tabela} set valor_pago = $2, status = $3, data_pagamento = $4, forma_pagamento = coalesce($5, forma_pagamento)
        where id = $1`,
      [id, p.valor_pago, p.status, p.data, p.forma_pagamento ?? null],
      this.db,
    );
  }

  async cancelar(id: number, motivo: string | null) {
    await query(
      `update ${this.cfg.tabela} set status = 'cancelado',
              observacao = case when $2::text is null then observacao else concat_ws(' | ', nullif(observacao, ''), 'Cancelado: ' || $2::text) end
        where id = $1`,
      [id, motivo],
      this.db,
    );
  }
}

export interface NovaContaReceber {
  filial_id: number;
  cliente_id: number;
  orcamento_id: number | null;
  documento: string | null;
  parcela: number;
  vencimento: string;
  valor: number;
  forma_pagamento: string | null;
  observacao?: string | null;
}

export class ContaReceberRepository extends TituloRepository<ContaReceberView> {
  protected readonly cfg: ConfigTitulo = {
    tabela: 'conta_receber',
    fk: 'conta_receber_id',
    from: 'conta_receber t join pessoa pe on pe.id = t.cliente_id left join orcamento o on o.id = t.orcamento_id',
    campos: 'pe.nome as cliente_nome, pe.cpf_cnpj as cliente_cpf_cnpj, o.numero as orcamento_numero',
    busca: '(pe.nome ilike $X or pe.fantasia ilike $X or t.documento ilike $X)',
    tipoPagamento: 'entrada',
    descricao: 'null::text',
  };

  protected filtrosEspecificos(w: SqlWhere, f: FiltroTitulos) {
    if (f.cliente_id) w.add(`t.cliente_id = ${w.p(f.cliente_id)}`);
    if (f.orcamento_id) w.add(`t.orcamento_id = ${w.p(f.orcamento_id)}`);
  }

  async inserir(c: NovaContaReceber): Promise<number> {
    const r = await queryOne<{ id: number }>(
      `insert into conta_receber (filial_id, cliente_id, orcamento_id, documento, parcela, vencimento, valor, forma_pagamento, observacao)
       values ($1,$2,$3,$4,$5,$6,$7,$8,$9) returning id`,
      [c.filial_id, c.cliente_id, c.orcamento_id, c.documento, c.parcela, c.vencimento, c.valor, c.forma_pagamento, c.observacao ?? null],
      this.db,
    );
    return r!.id;
  }

  async definirObservacao(ids: number[], observacao: string) {
    await query('update conta_receber set observacao = $2 where id = any($1::int[])', [ids, observacao], this.db);
  }
}

export interface DadosContaPagar {
  fornecedor_id: number | null;
  documento: string | null;
  descricao: string;
  categoria: string | null;
  forma_pagamento: string | null;
  observacao: string | null;
}

export interface NovaContaPagar extends DadosContaPagar {
  filial_id: number;
  parcela: number;
  emissao: string | null;
  vencimento: string;
  valor: number;
}

export class ContaPagarRepository extends TituloRepository<ContaPagarView> {
  protected readonly cfg: ConfigTitulo = {
    tabela: 'conta_pagar',
    fk: 'conta_pagar_id',
    from: 'conta_pagar t left join pessoa pe on pe.id = t.fornecedor_id',
    campos: 'pe.nome as fornecedor_nome',
    busca: '(t.descricao ilike $X or t.documento ilike $X or t.categoria ilike $X or pe.nome ilike $X)',
    tipoPagamento: 'saida',
    descricao: 'descricao',
  };

  protected filtrosEspecificos(w: SqlWhere, f: FiltroTitulos) {
    if (f.fornecedor_id) w.add(`t.fornecedor_id = ${w.p(f.fornecedor_id)}`);
    if (f.categoria) w.add(`t.categoria ilike ${w.p(f.categoria)}`);
  }

  async inserir(c: NovaContaPagar): Promise<number> {
    const r = await queryOne<{ id: number }>(
      `insert into conta_pagar (filial_id, fornecedor_id, documento, descricao, categoria, parcela, emissao, vencimento, valor, forma_pagamento, observacao)
       values ($1,$2,$3,$4,$5,$6,coalesce($7::date, current_date),$8,$9,$10,$11) returning id`,
      [c.filial_id, c.fornecedor_id, c.documento, c.descricao, c.categoria, c.parcela, c.emissao, c.vencimento, c.valor, c.forma_pagamento, c.observacao],
      this.db,
    );
    return r!.id;
  }

  async atualizar(id: number, c: DadosContaPagar & { vencimento: string; valor: number }) {
    await query(
      `update conta_pagar set fornecedor_id = $2, documento = $3, descricao = $4, categoria = $5, forma_pagamento = $6,
              observacao = $7, vencimento = $8, valor = $9
        where id = $1`,
      [id, c.fornecedor_id, c.documento, c.descricao, c.categoria, c.forma_pagamento, c.observacao, c.vencimento, c.valor],
      this.db,
    );
  }

  async excluir(id: number) {
    await query('delete from conta_pagar where id = $1', [id], this.db);
  }

  async temMovimentoCaixa(id: number): Promise<boolean> {
    return !!(await queryOne('select 1 from caixa_lancamento where conta_pagar_id = $1 limit 1', [id], this.db));
  }

  /** Em aberto com vencimento até hoje + dias (inclui os já vencidos). */
  vencendoAte(filialId: number, dias: number): Promise<ContaPagarView[]> {
    return query<ContaPagarView>(
      `select t.*, ${this.cfg.campos}, ${CALCULADOS}
         from ${this.cfg.from}
        where t.filial_id = $1 and t.status = 'aberto' and t.vencimento <= current_date + $2::int
        order by t.vencimento, t.id`,
      [filialId, dias],
      this.db,
    );
  }
}
