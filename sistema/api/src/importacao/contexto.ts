import type pg from 'pg';
import type { MapaLegado } from './mapa-legado.js';
import type { OpcoesImportacao } from './opcoes.js';
import type { OrigemLegado } from './origem.js';
import type { Relatorio } from './relatorio.js';

/** Dependências compartilhadas pelas etapas da importação. */
export interface ContextoImportacao {
  origem: OrigemLegado;
  destino: pg.Pool;
  mapa: MapaLegado;
  opcoes: OpcoesImportacao;
  relatorio: Relatorio;
  log: (msg: string) => void;
}

/** Uma etapa da importação (uma entidade). Deve ser idempotente: só grava o que ainda não foi importado. */
export interface Etapa {
  readonly nome: string;
  executar(ctx: ContextoImportacao): Promise<void>;
}

/** Executa `fn` numa transação do destino. */
export async function emTransacao<T>(destino: pg.Pool, fn: (db: pg.PoolClient) => Promise<T>): Promise<T> {
  const c = await destino.connect();
  try {
    await c.query('begin');
    const r = await fn(c);
    await c.query('commit');
    return r;
  } catch (e) {
    await c.query('rollback');
    throw e;
  } finally {
    c.release();
  }
}
