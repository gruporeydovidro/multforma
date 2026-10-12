import { HttpError } from '../../lib/http.js';
import { ErroProducao } from './domain/index.js';

const STATUS = { invalido: 400, conflito: 409, nao_encontrado: 404 } as const;

/** Executa uma regra do domínio convertendo ErroProducao em erro HTTP. */
export function regra<T>(fn: () => T): T {
  try {
    return fn();
  } catch (e) {
    if (e instanceof ErroProducao) throw new HttpError(STATUS[e.tipo], e.message);
    throw e;
  }
}
