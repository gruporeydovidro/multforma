import type { Db } from '../../lib/db.js';
import { MovimentoRepository } from './movimento.repository.js';
import { ProdutoEstoqueRepository } from './produto-estoque.repository.js';

/** Repositórios do módulo ligados a uma conexão (pool ou transação). */
export interface RepositoriosEstoque {
  movimentos: MovimentoRepository;
  produtos: ProdutoEstoqueRepository;
}

export type FabricaRepositoriosEstoque = (db: Db) => RepositoriosEstoque;

export const repositoriosEstoque: FabricaRepositoriosEstoque = (db) => ({
  movimentos: new MovimentoRepository(db),
  produtos: new ProdutoEstoqueRepository(db),
});
