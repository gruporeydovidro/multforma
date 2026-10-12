import type { SessionUser } from '../../lib/auth.js';
import { badRequest, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import type { FinanceiroPort } from '../../shared/contracts.js';
import { Dinheiro } from './domain/dinheiro.js';
import { GeradorParcelas } from './domain/gerador-parcelas.js';
import type { BaixaInput, FiltroTitulosInput, NovaContaReceberInput } from './financeiro.schemas.js';
import { MovimentacaoTitulos, SENTIDO_RECEBER } from './movimentacao-titulos.js';
import type { FabricaRepositorios, RepositoriosFinanceiro } from './repositorios.js';
import { ServicoFinanceiro } from './servico-base.js';

/** Casos de uso de contas a receber. A geração e a baixa passam pela porta FinanceiroPort. */
export class ContaReceberService extends ServicoFinanceiro {
  constructor(private readonly financeiro: FinanceiroPort, fabrica?: FabricaRepositorios) {
    super(fabrica);
  }

  listar(filialId: number, f: FiltroTitulosInput) {
    return this.leitura(async ({ receber }) => {
      const { items, total } = await receber.listar(filialId, f);
      const t = await receber.totais(filialId, f);
      return {
        items,
        total,
        page: f.page,
        pageSize: f.pageSize,
        totais: { ...t, aberto: Dinheiro.arredondar(t.aberto), vencido: Dinheiro.arredondar(t.vencido), pago_periodo: Dinheiro.arredondar(t.pago_periodo) },
      };
    });
  }

  obter(filialId: number, id: number) {
    return this.leitura((r) => this.detalhe(r, filialId, id));
  }

  /** Lançamento avulso em N parcelas mensais. */
  criarAvulsa(u: SessionUser, b: NovaContaReceberInput) {
    return this.emTransacao(async (r, db) => {
      const tipo = await r.apoio.tipoPessoa(b.cliente_id);
      if (!tipo) throw badRequest('Cliente não encontrado');
      if (tipo === 'fornecedor') throw badRequest('A pessoa informada não é cliente');
      const parcelas = GeradorParcelas.mensais(b.valor_total, b.parcelas, b.primeiro_vencimento);
      const ids = await this.financeiro.gerarContasReceber(db, {
        filial_id: u.filial_id,
        cliente_id: b.cliente_id,
        orcamento_id: null,
        documento: b.documento ?? 'AVULSO',
        parcelas: parcelas.map((p) => ({ ...p, forma_pagamento: b.forma_pagamento ?? 'a_prazo' })),
      });
      if (b.observacao) await r.receber.definirObservacao(ids, b.observacao);
      await logAcao(db, u.id, 'criar_conta_receber', 'conta_receber', ids[0], { ids, valor_total: b.valor_total, parcelas: b.parcelas });
      const items = [];
      for (const id of ids) items.push(await this.detalhe(r, u.filial_id, id)); // sequencial: mesma conexão da transação
      return { items };
    });
  }

  baixar(u: SessionUser, id: number, b: BaixaInput) {
    return this.emTransacao(async (r, db) => {
      const atual = await r.receber.travar(id, u.filial_id);
      if (!atual) throw notFound('Título');
      const valor = b.valor ?? Dinheiro.subtrair(atual.valor, atual.valor_pago);
      const data = b.data ?? (await r.apoio.hoje());
      await this.financeiro.baixarContaReceber(db, { id, valor, data, forma_pagamento: b.forma_pagamento, usuario_id: u.id });
      await logAcao(db, u.id, 'baixar_conta_receber', 'conta_receber', id, { valor, data, forma_pagamento: b.forma_pagamento });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  cancelar(u: SessionUser, id: number, motivo: string | null) {
    return this.emTransacao(async (r, db) => {
      await this.movimentacao(r).cancelar(id, u.filial_id, motivo);
      await logAcao(db, u.id, 'cancelar_conta_receber', 'conta_receber', id, { motivo });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  estornar(u: SessionUser, id: number) {
    return this.emTransacao(async (r, db) => {
      const valor = await this.movimentacao(r).estornar(id, u.filial_id, { data: await r.apoio.hoje(), usuario_id: u.id });
      await logAcao(db, u.id, 'estornar_conta_receber', 'conta_receber', id, { valor });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  private movimentacao(r: RepositoriosFinanceiro) {
    return new MovimentacaoTitulos(r.receber, r.caixa, SENTIDO_RECEBER);
  }

  private async detalhe(r: RepositoriosFinanceiro, filialId: number, id: number) {
    const t = await r.receber.obter(id, filialId);
    if (!t) throw notFound('Título');
    return { ...t, pagamentos: await r.receber.pagamentos(id) };
  }
}
