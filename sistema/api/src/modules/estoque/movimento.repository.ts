import { query, queryOne, type Db } from '../../lib/db.js';
import type { MovimentoEstoqueInput } from '../../shared/contracts.js';

export interface FiltroMovimentos {
  produto_id?: number;
  tipo?: string;
  origem?: string;
  de?: string;
  ate?: string;
  limite: number;
  deslocamento: number;
}

export interface MovimentoDetalhe {
  id: number;
  criado_em: string;
  produto_id: number;
  produto_codigo: string;
  produto_nome: string;
  unidade_venda: string;
  tipo: string;
  origem: string;
  quantidade: number;
  custo_unitario: number | null;
  documento: string | null;
  referencia_id: number | null;
  observacao: string | null;
  usuario_nome: string | null;
}

const SELECT_DETALHE = `
  select m.id, m.criado_em, m.produto_id, p.codigo as produto_codigo, p.nome as produto_nome, p.unidade_venda,
         m.tipo, m.origem, m.quantidade, m.custo_unitario, m.documento, m.referencia_id, m.observacao, u.nome as usuario_nome
    from estoque_movimento m
    join produto p on p.id = m.produto_id
    left join usuario u on u.id = m.usuario_id`;

const WHERE_FILTRO = `
   where m.filial_id = $1
     and ($2::int is null or m.produto_id = $2)
     and ($3::text is null or m.tipo = $3)
     and ($4::text is null or m.origem = $4)
     and ($5::date is null or m.criado_em::date >= $5::date)
     and ($6::date is null or m.criado_em::date <= $6::date)`;

/** Acesso à tabela estoque_movimento. A quantidade já chega com o sinal definitivo. */
export class MovimentoRepository {
  constructor(private readonly db: Db) {}

  async inserir(m: MovimentoEstoqueInput): Promise<number> {
    const r = await queryOne<{ id: number }>(
      `insert into estoque_movimento (filial_id, produto_id, tipo, origem, quantidade, custo_unitario, documento, referencia_id, observacao, usuario_id)
       values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) returning id`,
      [m.filial_id, m.produto_id, m.tipo, m.origem, m.quantidade, m.custo_unitario ?? null, m.documento ?? null, m.referencia_id ?? null, m.observacao ?? null, m.usuario_id ?? null],
      this.db,
    );
    return r!.id;
  }

  /**
   * Bloqueio único dos escritores de estoque: serializa, até o fim da transação, toda leitura de saldo
   * seguida de alteração do mesmo produto (em qualquer filial, pois o custo médio é global).
   * Reentrante na mesma transação.
   */
  async travarProduto(produtoId: number): Promise<void> {
    await query(`select pg_advisory_xact_lock(hashtext('estoque'), $1::int)`, [produtoId], this.db);
  }

  /** Saldo do produto somando todas as filiais (base do custo médio, que é global). */
  async saldoTotal(produtoId: number): Promise<number> {
    const r = await queryOne<{ saldo: number }>(
      'select coalesce(sum(quantidade), 0) as saldo from estoque_movimento where produto_id = $1',
      [produtoId],
      this.db,
    );
    return r!.saldo;
  }

  async saldo(filialId: number, produtoId: number): Promise<number> {
    const r = await queryOne<{ saldo: number }>(
      'select coalesce(sum(quantidade), 0) as saldo from estoque_movimento where filial_id = $1 and produto_id = $2',
      [filialId, produtoId],
      this.db,
    );
    return r!.saldo;
  }

  buscar(filialId: number, id: number): Promise<MovimentoDetalhe | undefined> {
    return queryOne<MovimentoDetalhe>(`${SELECT_DETALHE} where m.id = $1 and m.filial_id = $2`, [id, filialId], this.db);
  }

  async listar(filialId: number, f: FiltroMovimentos): Promise<{ items: MovimentoDetalhe[]; total: number }> {
    const params = [filialId, f.produto_id ?? null, f.tipo ?? null, f.origem ?? null, f.de ?? null, f.ate ?? null];
    const total = await queryOne<{ n: number }>(`select count(*)::int as n from estoque_movimento m ${WHERE_FILTRO}`, params, this.db);
    const items = await query<MovimentoDetalhe>(
      `${SELECT_DETALHE} ${WHERE_FILTRO} order by m.criado_em desc, m.id desc limit $7 offset $8`,
      [...params, f.limite, f.deslocamento],
      this.db,
    );
    return { items, total: total!.n };
  }
}
