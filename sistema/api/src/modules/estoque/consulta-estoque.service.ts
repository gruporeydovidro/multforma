import { getPool } from '../../lib/db.js';
import { notFound } from '../../lib/http.js';
import { offset } from '../../lib/paging.js';
import { SaldoEstoque } from './domain/index.js';
import type { FabricaRepositoriosEstoque } from './repositorios.js';

interface Paginacao {
  page: number;
  pageSize: number;
}

/** Consultas de estoque (somente leitura). */
export class ConsultaEstoqueService {
  constructor(private readonly repos: FabricaRepositoriosEstoque) {}

  async saldos(filialId: number, f: Paginacao & { q?: string; abaixo_minimo?: boolean }) {
    const r = await this.repos(getPool()).produtos.listarSaldos(filialId, {
      q: f.q,
      abaixo_minimo: f.abaixo_minimo,
      limite: f.pageSize,
      deslocamento: offset(f.page, f.pageSize),
    });
    return { ...r, page: f.page, pageSize: f.pageSize };
  }

  async saldoDoProduto(filialId: number, produtoId: number) {
    const r = this.repos(getPool());
    const produto = await r.produtos.buscar(produtoId);
    if (!produto) throw notFound('Produto');
    const saldo = new SaldoEstoque(await r.movimentos.saldo(filialId, produtoId));
    return { ...produto, saldo: saldo.valor, abaixo_minimo: saldo.abaixoDoMinimo(produto.estoque_minimo) };
  }

  async movimentos(filialId: number, f: Paginacao & { produto_id?: number; tipo?: string; origem?: string; de?: string; ate?: string }) {
    const r = await this.repos(getPool()).movimentos.listar(filialId, {
      produto_id: f.produto_id,
      tipo: f.tipo,
      origem: f.origem,
      de: f.de,
      ate: f.ate,
      limite: f.pageSize,
      deslocamento: offset(f.page, f.pageSize),
    });
    return { ...r, page: f.page, pageSize: f.pageSize };
  }
}
