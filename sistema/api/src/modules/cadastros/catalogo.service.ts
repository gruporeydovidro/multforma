import type { Db } from '../../lib/db.js';
import type { CatalogoPort } from '../../shared/contracts.js';
import { ProdutoRepository } from './produto.repository.js';

/** Implementa a porta de catálogo: escrita no produto solicitada por outros módulos (ex.: custo médio do estoque). */
export class CatalogoService implements CatalogoPort {
  async atualizarCusto(db: Db, produtoId: number, custo: number): Promise<void> {
    if (!(custo >= 0)) throw new Error('custo inválido');
    await new ProdutoRepository(db).atualizarCusto(produtoId, custo);
  }
}
