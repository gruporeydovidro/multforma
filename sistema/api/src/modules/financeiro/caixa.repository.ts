import { query, queryOne, type Db } from '../../lib/db.js';
import type { TipoLancamento, VinculoLancamento } from './domain/caixa.js';

export interface NovoLancamento {
  filial_id: number;
  data: string | null; // null = data do dia
  tipo: TipoLancamento;
  valor: number;
  descricao: string;
  forma_pagamento: string | null;
  conta_receber_id?: number | null;
  conta_pagar_id?: number | null;
  usuario_id: number | null;
}

export interface LancamentoView extends VinculoLancamento {
  id: number;
  data: string;
  tipo: TipoLancamento;
  valor: number;
  descricao: string;
  forma_pagamento: string | null;
  criado_em: string;
  usuario_nome: string | null;
  origem: 'receber' | 'pagar' | 'manual';
}

export interface GrupoSaida {
  grupo: string;
  quantidade: number;
  total: number;
}

/** Acesso a dados do caixa (caixa_lancamento). */
export class CaixaRepository {
  constructor(private readonly db: Db) {}

  async inserir(l: NovoLancamento): Promise<LancamentoView> {
    const r = await queryOne<{ id: number }>(
      `insert into caixa_lancamento (filial_id, data, tipo, valor, descricao, forma_pagamento, conta_receber_id, conta_pagar_id, usuario_id)
       values ($1, coalesce($2::date, current_date), $3, $4, $5, $6, $7, $8, $9) returning id`,
      [l.filial_id, l.data, l.tipo, l.valor, l.descricao, l.forma_pagamento, l.conta_receber_id ?? null, l.conta_pagar_id ?? null, l.usuario_id],
      this.db,
    );
    return (await this.obter(r!.id, l.filial_id))!;
  }

  obter(id: number, filialId: number): Promise<LancamentoView | undefined> {
    return queryOne<LancamentoView>(`${SELECT} where cl.id = $1 and cl.filial_id = $2`, [id, filialId], this.db);
  }

  /** Lê e bloqueia o lançamento da filial. */
  travar(id: number, filialId: number): Promise<(VinculoLancamento & { tipo: TipoLancamento; valor: number }) | undefined> {
    return queryOne(
      'select conta_receber_id, conta_pagar_id, tipo, valor from caixa_lancamento where id = $1 and filial_id = $2 for update',
      [id, filialId],
      this.db,
    );
  }

  async excluir(id: number) {
    await query('delete from caixa_lancamento where id = $1', [id], this.db);
  }

  async saldoAntesDe(filialId: number, data: string): Promise<number> {
    const r = await queryOne<{ saldo: number }>(
      `select coalesce(sum(case when tipo = 'entrada' then valor else -valor end), 0) as saldo
         from caixa_lancamento where filial_id = $1 and data < $2`,
      [filialId, data],
      this.db,
    );
    return r!.saldo;
  }

  listarPeriodo(filialId: number, de: string, ate: string): Promise<LancamentoView[]> {
    return query<LancamentoView>(`${SELECT} where cl.filial_id = $1 and cl.data between $2 and $3 order by cl.data, cl.id`, [filialId, de, ate], this.db);
  }

  /** Saídas do período agrupadas por categoria da conta a pagar, estorno ou lançamento manual. */
  resumoSaidas(filialId: number, de: string, ate: string): Promise<GrupoSaida[]> {
    return query<GrupoSaida>(
      `select case when cl.conta_pagar_id is not null then coalesce(nullif(cp.categoria, ''), 'Contas a pagar (sem categoria)')
                   when cl.conta_receber_id is not null then 'Estorno de recebimento'
                   else 'Lançamento manual' end as grupo,
              count(*)::int as quantidade, sum(cl.valor) as total
         from caixa_lancamento cl left join conta_pagar cp on cp.id = cl.conta_pagar_id
        where cl.filial_id = $1 and cl.tipo = 'saida' and cl.data between $2 and $3
        group by 1 order by total desc`,
      [filialId, de, ate],
      this.db,
    );
  }
}

const SELECT = `select cl.id, cl.data, cl.tipo, cl.valor, cl.descricao, cl.forma_pagamento, cl.conta_receber_id, cl.conta_pagar_id,
       cl.criado_em, u.nome as usuario_nome,
       case when cl.conta_receber_id is not null then 'receber' when cl.conta_pagar_id is not null then 'pagar' else 'manual' end as origem
  from caixa_lancamento cl left join usuario u on u.id = cl.usuario_id`;
