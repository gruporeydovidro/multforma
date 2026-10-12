import type { Db } from '../../lib/db.js';
import { badRequest, notFound } from '../../lib/http.js';
import { arredondar } from '../../shared/numeros.js';
import type { CatalogoPort } from '../../shared/contracts.js';
import { ProdutoRepository } from './produto.repository.js';

/** Maior valor aceito por `produto.custo` (numeric(14,4)). */
const CUSTO_MAXIMO = 9_999_999_999.9999;

/** Implementa a porta de catálogo: escrita no produto solicitada por outros módulos (ex.: custo médio do estoque). */
export class CatalogoService implements CatalogoPort {
  /** Grava o custo arredondado a 4 casas, na transação de quem chama. Produto inexistente: 404. */
  async atualizarCusto(db: Db, produtoId: number, custo: number): Promise<void> {
    const valor = arredondar(custo, 4);
    if (!Number.isFinite(valor) || valor < 0 || valor > CUSTO_MAXIMO) throw badRequest(`Custo inválido para o produto ${produtoId}: ${custo}`);
    const atualizado = await new ProdutoRepository(db).atualizarCusto(produtoId, valor);
    if (!atualizado) throw notFound(`Produto ${produtoId}`);
  }
}
