import { queryOne, type Db } from '../../lib/db.js';

export interface MovimentoInput {
  filial_id: number;
  produto_id: number;
  tipo: 'entrada' | 'saida' | 'acerto';
  origem: 'compra' | 'venda' | 'acerto' | 'producao' | 'manual';
  /** Sempre positiva para entrada/saída; em acerto, o sinal indica a direção. */
  quantidade: number;
  custo_unitario?: number | null;
  documento?: string | null;
  referencia_id?: number | null;
  observacao?: string | null;
  usuario_id?: number | null;
}

/** Contrato compartilhado: registra um movimento de estoque (saída grava quantidade negativa). */
export async function registrarMovimento(db: Db, m: MovimentoInput): Promise<number> {
  const qtd = m.tipo === 'saida' ? -Math.abs(m.quantidade) : m.tipo === 'entrada' ? Math.abs(m.quantidade) : m.quantidade;
  const r = await queryOne<{ id: number }>(
    `insert into estoque_movimento (filial_id, produto_id, tipo, origem, quantidade, custo_unitario, documento, referencia_id, observacao, usuario_id)
     values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) returning id`,
    [m.filial_id, m.produto_id, m.tipo, m.origem, qtd, m.custo_unitario ?? null, m.documento ?? null, m.referencia_id ?? null, m.observacao ?? null, m.usuario_id ?? null],
    db,
  );
  return r!.id;
}

export async function saldo(db: Db, filialId: number, produtoId: number): Promise<number> {
  const r = await queryOne<{ saldo: number }>(
    'select coalesce(sum(quantidade), 0) as saldo from estoque_movimento where filial_id = $1 and produto_id = $2',
    [filialId, produtoId],
    db,
  );
  return r!.saldo;
}
