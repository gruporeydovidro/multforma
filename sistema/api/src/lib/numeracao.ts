import { queryOne, type Db } from './db.js';

const TABELAS = new Set(['orcamento', 'ordem_producao']);

/**
 * Próximo número sequencial por filial. Usa advisory lock da transação,
 * então deve ser chamado dentro de withTx para não gerar números repetidos.
 */
export async function proximoNumero(db: Db, tabela: 'orcamento' | 'ordem_producao', filialId: number): Promise<number> {
  if (!TABELAS.has(tabela)) throw new Error(`tabela sem numeração: ${tabela}`);
  await db.query('select pg_advisory_xact_lock(hashtext($1), $2)', [tabela, filialId]);
  const r = await queryOne<{ n: number }>(`select coalesce(max(numero), 0) + 1 as n from ${tabela} where filial_id = $1`, [filialId], db);
  return r!.n;
}
