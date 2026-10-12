import { getPool, withTx, type Db } from '../../lib/db.js';
import { badRequest, conflict } from '../../lib/http.js';
import { RegraFinanceiraError } from './domain/erros.js';
import { criarRepositorios, type FabricaRepositorios, type RepositoriosFinanceiro } from './repositorios.js';

/** Converte erros de regra do domínio em erros HTTP (400/409). */
export async function traduzirErros<T>(fn: () => Promise<T>): Promise<T> {
  try {
    return await fn();
  } catch (err) {
    if (err instanceof RegraFinanceiraError) throw err.tipo === 'invalido' ? badRequest(err.message) : conflict(err.message);
    throw err;
  }
}

/** Base dos services do financeiro: transação, leitura fora de transação e tradução de erros. */
export abstract class ServicoFinanceiro {
  constructor(protected readonly fabrica: FabricaRepositorios = criarRepositorios) {}

  protected emTransacao<T>(fn: (repos: RepositoriosFinanceiro, db: Db) => Promise<T>): Promise<T> {
    return traduzirErros(() => withTx((db) => fn(this.fabrica(db), db)));
  }

  protected leitura<T>(fn: (repos: RepositoriosFinanceiro) => Promise<T>): Promise<T> {
    return traduzirErros(() => fn(this.fabrica(getPool())));
  }
}
