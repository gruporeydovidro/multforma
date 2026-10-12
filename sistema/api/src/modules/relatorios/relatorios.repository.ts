import { query, queryOne, type Db } from '../../lib/db.js';
import type { AgregadoVenda } from './domain/indicadores.js';
import type { Periodo } from './domain/periodo.js';

export type Agrupamento = 'dia' | 'vendedor' | 'cliente' | 'produto';

export interface Contagem {
  quantidade: number;
  total: number;
}

/** CTEs: orçamentos fechados no período (por fechado_em) e seus itens com o custo estimado. */
const BASE_VENDAS = `
  with orc as (
    select o.id, o.total, o.cliente_id, o.vendedor_id, o.fechado_em::date as dia
      from orcamento o
     where o.filial_id = $1 and o.status = 'fechado' and o.fechado_em::date between $2 and $3
  ), itens as (
    select oi.orcamento_id, oi.produto_id, oi.quantidade, oi.medida_cobrada, oi.total, oi.unidade,
           p.custo * oi.medida_cobrada as custo
      from orcamento_item oi join orc on orc.id = oi.orcamento_id join produto p on p.id = oi.produto_id
  ), por_orc as (
    select orcamento_id, sum(total) as total_itens, sum(custo) as custo from itens group by orcamento_id
  )`;

/** Agrupamento por orçamento: chave/rótulo e junção (constantes, nunca vindas do cliente). */
const POR_ORCAMENTO: Record<Exclude<Agrupamento, 'produto'>, { chave: string; rotulo: string; join: string; ordem: string }> = {
  dia: { chave: `orc.dia::text`, rotulo: `orc.dia::text`, join: '', ordem: 'chave' },
  vendedor: { chave: `coalesce(orc.vendedor_id, 0)::text`, rotulo: `coalesce(f.nome, 'Sem vendedor')`, join: 'left join funcionario f on f.id = orc.vendedor_id', ordem: 'total desc, rotulo' },
  cliente: { chave: `orc.cliente_id::text`, rotulo: `pe.nome`, join: 'join pessoa pe on pe.id = orc.cliente_id', ordem: 'total desc, rotulo' },
};

/** Consultas somente leitura para relatórios e painel (leem tabelas de vários módulos). */
export class RelatoriosRepository {
  constructor(private readonly db: Db) {}

  async hoje(): Promise<string> {
    return (await queryOne<{ d: string }>('select current_date as d', [], this.db))!.d;
  }

  vendas(filialId: number, p: Periodo, agrupar: Agrupamento): Promise<AgregadoVenda[]> {
    const params = [filialId, p.de, p.ate];
    if (agrupar === 'produto') {
      return query<AgregadoVenda>(
        `${BASE_VENDAS}
         select it.produto_id::text as chave, pr.codigo || ' - ' || pr.nome as rotulo, sum(it.quantidade) as quantidade,
                sum(it.medida_cobrada) as medida, min(it.unidade) as unidade,
                sum(it.total) as total, sum(it.total) as total_itens, sum(it.custo) as custo
           from itens it join produto pr on pr.id = it.produto_id
          group by it.produto_id, pr.codigo, pr.nome
          order by total desc, rotulo`,
        params,
        this.db,
      );
    }
    const g = POR_ORCAMENTO[agrupar];
    return query<AgregadoVenda>(
      `${BASE_VENDAS}
       select ${g.chave} as chave, ${g.rotulo} as rotulo, count(*)::int as quantidade, sum(orc.total) as total,
              coalesce(sum(po.total_itens), 0) as total_itens, coalesce(sum(po.custo), 0) as custo
         from orc left join por_orc po on po.orcamento_id = orc.id ${g.join}
        group by 1, 2
        order by ${g.ordem}`,
      params,
      this.db,
    );
  }

  /** Recebido (contas a receber) e pago (contas a pagar) pelo caixa no período, líquidos de estornos. */
  async fluxoTitulos(filialId: number, p: Periodo): Promise<{ recebido: number; pago: number }> {
    return (await queryOne(
      `select coalesce(sum(case when conta_receber_id is not null then (case when tipo = 'entrada' then valor else -valor end) end), 0) as recebido,
              coalesce(sum(case when conta_pagar_id is not null then (case when tipo = 'saida' then valor else -valor end) end), 0) as pago
         from caixa_lancamento where filial_id = $1 and data between $2 and $3`,
      [filialId, p.de, p.ate],
      this.db,
    ))!;
  }

  /** Saldo em aberto com vencimento no período. */
  async emAberto(filialId: number, p: Periodo): Promise<{ receber: Contagem; pagar: Contagem }> {
    const r = (await queryOne(
      `select (select count(*)::int from conta_receber where filial_id = $1 and status = 'aberto' and vencimento between $2 and $3) as qr,
              (select coalesce(sum(valor - valor_pago), 0) from conta_receber where filial_id = $1 and status = 'aberto' and vencimento between $2 and $3) as vr,
              (select count(*)::int from conta_pagar where filial_id = $1 and status = 'aberto' and vencimento between $2 and $3) as qp,
              (select coalesce(sum(valor - valor_pago), 0) from conta_pagar where filial_id = $1 and status = 'aberto' and vencimento between $2 and $3) as vp`,
      [filialId, p.de, p.ate],
      this.db,
    ))!;
    return { receber: { quantidade: r.qr, total: r.vr }, pagar: { quantidade: r.qp, total: r.vp } };
  }

  /** Títulos em aberto já vencidos (até hoje, independentemente do período). */
  async vencidos(filialId: number): Promise<{ receber: Contagem; pagar: Contagem }> {
    const r = (await queryOne(
      `select (select count(*)::int from conta_receber where filial_id = $1 and status = 'aberto' and vencimento < current_date) as qr,
              (select coalesce(sum(valor - valor_pago), 0) from conta_receber where filial_id = $1 and status = 'aberto' and vencimento < current_date) as vr,
              (select count(*)::int from conta_pagar where filial_id = $1 and status = 'aberto' and vencimento < current_date) as qp,
              (select coalesce(sum(valor - valor_pago), 0) from conta_pagar where filial_id = $1 and status = 'aberto' and vencimento < current_date) as vp`,
      [filialId],
      this.db,
    ))!;
    return { receber: { quantidade: r.qr, total: r.vr }, pagar: { quantidade: r.qp, total: r.vp } };
  }

  /** Contas a pagar em aberto vencendo de hoje até hoje + dias. */
  async pagarProximos(filialId: number, dias: number): Promise<Contagem> {
    return (await queryOne<Contagem>(
      `select count(*)::int as quantidade, coalesce(sum(valor - valor_pago), 0) as total
         from conta_pagar
        where filial_id = $1 and status = 'aberto' and vencimento between current_date and current_date + $2::int`,
      [filialId, dias],
      this.db,
    ))!;
  }

  async caixa(filialId: number, p: Periodo): Promise<{ saldo_anterior: number; entradas: number; saidas: number }> {
    return (await queryOne(
      `select coalesce(sum(case when data < $2 then (case when tipo = 'entrada' then valor else -valor end) end), 0) as saldo_anterior,
              coalesce(sum(valor) filter (where tipo = 'entrada' and data between $2 and $3), 0) as entradas,
              coalesce(sum(valor) filter (where tipo = 'saida' and data between $2 and $3), 0) as saidas
         from caixa_lancamento where filial_id = $1 and data <= $3`,
      [filialId, p.de, p.ate],
      this.db,
    ))!;
  }

  /** Saídas do caixa no período por categoria de despesa (contas a pagar) e lançamentos manuais. */
  despesasPorCategoria(filialId: number, p: Periodo): Promise<{ categoria: string; total: number }[]> {
    return query(
      `select case when cl.conta_pagar_id is not null then coalesce(nullif(cp.categoria, ''), 'Sem categoria') else 'Lançamentos manuais' end as categoria,
              sum(cl.valor) as total
         from caixa_lancamento cl left join conta_pagar cp on cp.id = cl.conta_pagar_id
        where cl.filial_id = $1 and cl.tipo = 'saida' and cl.conta_receber_id is null and cl.data between $2 and $3
        group by 1 order by total desc`,
      [filialId, p.de, p.ate],
      this.db,
    );
  }

  /** Orçamentos fechados entre as datas (por fechado_em). */
  async vendasEntre(filialId: number, de: string, ate: string): Promise<Contagem> {
    return (await queryOne<Contagem>(
      `select count(*)::int as quantidade, coalesce(sum(total), 0) as total
         from orcamento where filial_id = $1 and status = 'fechado' and fechado_em::date between $2 and $3`,
      [filialId, de, ate],
      this.db,
    ))!;
  }

  async orcamentosPorStatus(filialId: number): Promise<Record<string, Contagem>> {
    const rows = await query<Contagem & { status: string }>(
      `select status, count(*)::int as quantidade, coalesce(sum(total), 0) as total
         from orcamento where filial_id = $1 group by status`,
      [filialId],
      this.db,
    );
    return Object.fromEntries(rows.map((r) => [r.status, { quantidade: r.quantidade, total: r.total }]));
  }

  async producao(filialId: number): Promise<{ em_andamento: number; aguardando: number; em_producao: number; atrasadas: number }> {
    return (await queryOne(
      `select count(*) filter (where status in ('aguardando', 'em_producao'))::int as em_andamento,
              count(*) filter (where status = 'aguardando')::int as aguardando,
              count(*) filter (where status = 'em_producao')::int as em_producao,
              count(*) filter (where status in ('aguardando', 'em_producao') and previsao_entrega < current_date)::int as atrasadas
         from ordem_producao where filial_id = $1`,
      [filialId],
      this.db,
    ))!;
  }

  ultimosOrcamentos(filialId: number, limite: number) {
    return query<{ id: number; numero: number; cliente_nome: string; data_emissao: string; status: string; total: number }>(
      `select o.id, o.numero, pe.nome as cliente_nome, o.data_emissao, o.status, o.total
         from orcamento o join pessoa pe on pe.id = o.cliente_id
        where o.filial_id = $1
        order by o.criado_em desc, o.id desc
        limit $2`,
      [filialId, limite],
      this.db,
    );
  }
}
