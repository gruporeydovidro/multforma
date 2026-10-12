import type { Db } from '../lib/db.js';

const LIMITE_PARAMETROS = 30_000;

/**
 * Insere várias linhas com um único comando por bloco e devolve os ids na mesma ordem das linhas
 * (INSERT ... VALUES ... RETURNING preserva a ordem dos VALUES).
 */
export async function inserirLinhas(db: Db, tabela: string, colunas: string[], linhas: unknown[][]): Promise<number[]> {
  if (!/^[a-z_][a-z0-9_]*$/.test(tabela) || colunas.some((c) => !/^[a-z_][a-z0-9_]*$/.test(c))) throw new Error('identificador inválido');
  const ids: number[] = [];
  const porBloco = Math.max(1, Math.floor(LIMITE_PARAMETROS / colunas.length));
  for (let i = 0; i < linhas.length; i += porBloco) {
    const bloco = linhas.slice(i, i + porBloco);
    const params: unknown[] = [];
    const values = bloco.map((l) => `(${l.map((v) => { params.push(v); return `$${params.length}`; }).join(', ')})`);
    const { rows } = await db.query<{ id: number }>(`insert into ${tabela} (${colunas.join(', ')}) values ${values.join(', ')} returning id`, params);
    if (rows.length !== bloco.length) throw new Error(`inserção parcial em ${tabela}`);
    ids.push(...rows.map((r) => r.id));
  }
  return ids;
}
