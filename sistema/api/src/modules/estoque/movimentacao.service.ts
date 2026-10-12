import { withTx, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import type { CatalogoPort, EstoquePort } from '../../shared/contracts.js';
import { Acerto, CustoMedio, ErroEstoque, SaldoEstoque } from './domain/index.js';
import type { ProdutoEstoque } from './produto-estoque.repository.js';
import type { FabricaRepositoriosEstoque, RepositoriosEstoque } from './repositorios.js';

export interface Operador {
  filialId: number;
  usuarioId: number;
}

export interface EntradaInput {
  produto_id: number;
  quantidade: number;
  custo_unitario?: number | null;
  documento?: string | null;
  observacao?: string | null;
}

export type SaidaInput = Omit<EntradaInput, 'custo_unitario'>;

export interface AcertoInput {
  produto_id: number;
  saldo_contado: number;
  observacao?: string | null;
}

/** Converte violações de regra do domínio em erros HTTP. */
function regra<T>(fn: () => T): T {
  try {
    return fn();
  } catch (e) {
    if (e instanceof ErroEstoque) throw e.tipo === 'conflito' ? conflict(e.message) : badRequest(e.message);
    throw e;
  }
}

/** Casos de uso de movimentação manual: entrada (com custo médio), saída e acerto de inventário. */
export class MovimentacaoService {
  constructor(
    private readonly repos: FabricaRepositoriosEstoque,
    private readonly estoque: EstoquePort,
    private readonly catalogo: CatalogoPort,
  ) {}

  registrarEntrada(op: Operador, e: EntradaInput) {
    return withTx(async (db) => {
      const r = this.repos(db);
      const produto = await this.produtoMovimentavel(r, e.produto_id);
      if (e.custo_unitario != null) {
        // O custo do produto é global: pondera pelo saldo de todas as filiais.
        const saldo = await r.movimentos.saldoTotal(produto.id);
        const novo = regra(() => new CustoMedio(saldo, produto.custo).aplicarEntrada(e.quantidade, e.custo_unitario!));
        await this.catalogo.atualizarCusto(db, produto.id, novo.custo);
      }
      const id = await this.estoque.registrarMovimento(db, {
        filial_id: op.filialId,
        produto_id: produto.id,
        tipo: 'entrada',
        origem: 'compra',
        quantidade: e.quantidade,
        custo_unitario: e.custo_unitario ?? null,
        documento: e.documento,
        observacao: e.observacao,
        usuario_id: op.usuarioId,
      });
      return this.resultado(db, r, op, id, produto.id);
    });
  }

  registrarSaida(op: Operador, s: SaidaInput) {
    return withTx(async (db) => {
      const r = this.repos(db);
      const produto = await this.produtoMovimentavel(r, s.produto_id);
      const saldo = new SaldoEstoque(await this.estoque.saldo(db, op.filialId, produto.id));
      regra(() => saldo.garantirRetirada(s.quantidade));
      const id = await this.estoque.registrarMovimento(db, {
        filial_id: op.filialId,
        produto_id: produto.id,
        tipo: 'saida',
        origem: 'manual',
        quantidade: s.quantidade,
        custo_unitario: produto.custo,
        documento: s.documento,
        observacao: s.observacao,
        usuario_id: op.usuarioId,
      });
      await logAcao(db, op.usuarioId, 'estoque.saida', 'produto', produto.id, { quantidade: s.quantidade, movimento_id: id });
      return this.resultado(db, r, op, id, produto.id);
    });
  }

  registrarAcerto(op: Operador, a: AcertoInput) {
    return withTx(async (db) => {
      const r = this.repos(db);
      const produto = await this.produtoMovimentavel(r, a.produto_id);
      const saldoSistema = await this.estoque.saldo(db, op.filialId, produto.id);
      const acerto = regra(() => new Acerto(saldoSistema, a.saldo_contado));
      const id = await this.estoque.registrarMovimento(db, {
        filial_id: op.filialId,
        produto_id: produto.id,
        tipo: 'acerto',
        origem: 'acerto',
        quantidade: acerto.diferenca,
        custo_unitario: produto.custo,
        observacao: a.observacao,
        usuario_id: op.usuarioId,
      });
      await logAcao(db, op.usuarioId, 'estoque.acerto', 'produto', produto.id, {
        saldo_anterior: acerto.saldoSistema,
        saldo_contado: acerto.saldoContado,
        diferenca: acerto.diferenca,
        movimento_id: id,
      });
      return { ...(await this.resultado(db, r, op, id, produto.id)), diferenca: acerto.diferenca };
    });
  }

  /**
   * Adquire o bloqueio do produto (o mesmo da porta registrarMovimento, usada pela venda) antes de
   * qualquer leitura de saldo, e valida se o produto pode ser movimentado.
   */
  private async produtoMovimentavel(r: RepositoriosEstoque, produtoId: number): Promise<ProdutoEstoque> {
    await r.movimentos.travarProduto(produtoId);
    const produto = await r.produtos.buscar(produtoId);
    if (!produto) throw notFound('Produto');
    if (!produto.controla_estoque) throw badRequest('O produto não controla estoque');
    if (!produto.ativo) throw badRequest('O produto está inativo');
    return produto;
  }

  private async resultado(db: Db, r: RepositoriosEstoque, op: Operador, movimentoId: number, produtoId: number) {
    // Consultas em sequência: o client da transação não aceita consultas simultâneas.
    const movimento = await r.movimentos.buscar(op.filialId, movimentoId);
    const saldo = await this.estoque.saldo(db, op.filialId, produtoId);
    const produto = await r.produtos.buscar(produtoId);
    return { movimento, saldo, custo: produto!.custo };
  }
}
