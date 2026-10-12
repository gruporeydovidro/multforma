import type { Db } from '../../lib/db.js';
import type { EstoquePort, MovimentoEstoqueInput } from '../../shared/contracts.js';
import { MovimentoEstoque } from './domain/index.js';
import type { FabricaRepositoriosEstoque } from './repositorios.js';

/**
 * Implementação da porta de estoque usada pelos outros módulos (ex.: baixa na venda).
 * Os métodos recebem o `db` de quem chama para participar da mesma transação.
 */
export class EstoqueService implements EstoquePort {
  constructor(private readonly repos: FabricaRepositoriosEstoque) {}

  /** Grava o movimento sob o bloqueio do produto, o mesmo usado pelas entradas, saídas e acertos manuais. */
  async registrarMovimento(db: Db, m: MovimentoEstoqueInput): Promise<number> {
    const movimentos = this.repos(db).movimentos;
    await movimentos.travarProduto(m.produto_id);
    return movimentos.inserir({ ...m, quantidade: MovimentoEstoque.quantidadeComSinal(m.tipo, m.quantidade) });
  }

  saldo(db: Db, filialId: number, produtoId: number): Promise<number> {
    return this.repos(db).movimentos.saldo(filialId, produtoId);
  }
}
