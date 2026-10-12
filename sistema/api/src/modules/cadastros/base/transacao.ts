import { withTx, type Db } from '../../../lib/db.js';

/** Executa uma unidade de trabalho com repositório(s) ligados à mesma transação. */
export type EmTransacao<R> = <T>(fn: (repos: R) => Promise<T>) => Promise<T>;

/** Fábrica padrão: abre `withTx` e cria os repositórios com o client da transação. */
export function emTransacao<R>(criar: (db: Db) => R): EmTransacao<R> {
  return (fn) => withTx((db) => fn(criar(db)));
}
