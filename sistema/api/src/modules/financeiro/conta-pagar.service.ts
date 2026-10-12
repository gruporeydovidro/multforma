import type { SessionUser } from '../../lib/auth.js';
import { badRequest, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import { Dinheiro } from './domain/dinheiro.js';
import { GeradorParcelas } from './domain/gerador-parcelas.js';
import { Titulo } from './domain/titulo.js';
import type { BaixaInput, EdicaoContaPagarInput, FiltroTitulosInput, NovaContaPagarInput } from './financeiro.schemas.js';
import { MovimentacaoTitulos, SENTIDO_PAGAR } from './movimentacao-titulos.js';
import type { RepositoriosFinanceiro } from './repositorios.js';
import { ServicoFinanceiro } from './servico-base.js';

/** Casos de uso de contas a pagar. */
export class ContaPagarService extends ServicoFinanceiro {
  listar(filialId: number, f: FiltroTitulosInput) {
    return this.leitura(async ({ pagar }) => {
      const { items, total } = await pagar.listar(filialId, f);
      const t = await pagar.totais(filialId, f);
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

  /** Títulos em aberto que vencem nos próximos `dias` e os já vencidos. */
  alerta(filialId: number, dias: number) {
    return this.leitura(async ({ pagar }) => {
      const rows = await pagar.vencendoAte(filialId, dias);
      const vencidas = rows.filter((t) => t.vencida);
      const a_vencer = rows.filter((t) => !t.vencida);
      return {
        dias,
        vencidas,
        a_vencer,
        total_vencido: Dinheiro.somar(vencidas.map((t) => t.saldo)),
        total_a_vencer: Dinheiro.somar(a_vencer.map((t) => t.saldo)),
      };
    });
  }

  /** Cria o título em N parcelas mensais. */
  criar(u: SessionUser, b: NovaContaPagarInput) {
    return this.emTransacao(async (r, db) => {
      await this.validarFornecedor(r, b.fornecedor_id);
      const ids: number[] = [];
      for (const p of GeradorParcelas.mensais(b.valor_total, b.parcelas, b.primeiro_vencimento)) {
        ids.push(
          await r.pagar.inserir({
            filial_id: u.filial_id,
            fornecedor_id: b.fornecedor_id,
            documento: b.documento,
            descricao: b.descricao,
            categoria: b.categoria,
            forma_pagamento: b.forma_pagamento,
            observacao: b.observacao,
            emissao: b.emissao,
            parcela: p.numero,
            vencimento: p.vencimento,
            valor: p.valor,
          }),
        );
      }
      await logAcao(db, u.id, 'criar_conta_pagar', 'conta_pagar', ids[0], { ids, valor_total: b.valor_total, parcelas: b.parcelas });
      const items = [];
      for (const id of ids) items.push(await this.detalhe(r, u.filial_id, id)); // sequencial: mesma conexão da transação
      return { items };
    });
  }

  atualizar(u: SessionUser, id: number, b: EdicaoContaPagarInput) {
    return this.emTransacao(async (r) => {
      const titulo = await this.carregar(r, u.filial_id, id);
      titulo.alterarValor(b.valor);
      await this.validarFornecedor(r, b.fornecedor_id);
      await r.pagar.atualizar(id, { ...b, valor: titulo.valor });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  excluir(u: SessionUser, id: number) {
    return this.emTransacao(async (r, db) => {
      const titulo = await this.carregar(r, u.filial_id, id);
      titulo.exigirExcluivel(await r.pagar.temMovimentoCaixa(id));
      await r.pagar.excluir(id);
      await logAcao(db, u.id, 'excluir_conta_pagar', 'conta_pagar', id);
    });
  }

  /** Copia o título (novo, em aberto); vencimento padrão: um mês depois do original. */
  copiar(u: SessionUser, id: number, vencimento?: string) {
    return this.emTransacao(async (r, db) => {
      const o = await this.detalhe(r, u.filial_id, id);
      const novoId = await r.pagar.inserir({
        filial_id: u.filial_id,
        fornecedor_id: o.fornecedor_id,
        documento: o.documento,
        descricao: o.descricao,
        categoria: o.categoria,
        forma_pagamento: o.forma_pagamento,
        observacao: o.observacao,
        emissao: null,
        parcela: o.parcela,
        vencimento: vencimento ?? GeradorParcelas.somarMeses(o.vencimento, 1),
        valor: o.valor,
      });
      await logAcao(db, u.id, 'copiar_conta_pagar', 'conta_pagar', novoId, { origem: id });
      return this.detalhe(r, u.filial_id, novoId);
    });
  }

  baixar(u: SessionUser, id: number, b: BaixaInput) {
    return this.emTransacao(async (r, db) => {
      const data = b.data ?? (await r.apoio.hoje());
      const valor = await this.movimentacao(r).baixar(id, u.filial_id, { valor: b.valor, data, forma_pagamento: b.forma_pagamento, usuario_id: u.id });
      await logAcao(db, u.id, 'baixar_conta_pagar', 'conta_pagar', id, { valor, data, forma_pagamento: b.forma_pagamento });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  cancelar(u: SessionUser, id: number, motivo: string | null) {
    return this.emTransacao(async (r, db) => {
      await this.movimentacao(r).cancelar(id, u.filial_id, motivo);
      await logAcao(db, u.id, 'cancelar_conta_pagar', 'conta_pagar', id, { motivo });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  estornar(u: SessionUser, id: number) {
    return this.emTransacao(async (r, db) => {
      const valor = await this.movimentacao(r).estornar(id, u.filial_id, { data: await r.apoio.hoje(), usuario_id: u.id });
      await logAcao(db, u.id, 'estornar_conta_pagar', 'conta_pagar', id, { valor });
      return this.detalhe(r, u.filial_id, id);
    });
  }

  private movimentacao(r: RepositoriosFinanceiro) {
    return new MovimentacaoTitulos(r.pagar, r.caixa, SENTIDO_PAGAR);
  }

  private async validarFornecedor(r: RepositoriosFinanceiro, fornecedorId: number | null) {
    if (!fornecedorId) return;
    const tipo = await r.apoio.tipoPessoa(fornecedorId);
    if (!tipo) throw badRequest('Fornecedor não encontrado');
    if (tipo === 'cliente') throw badRequest('A pessoa informada não é fornecedor');
  }

  private async carregar(r: RepositoriosFinanceiro, filialId: number, id: number) {
    const dados = await r.pagar.travar(id, filialId);
    if (!dados) throw notFound('Título');
    return Titulo.de(dados);
  }

  private async detalhe(r: RepositoriosFinanceiro, filialId: number, id: number) {
    const t = await r.pagar.obter(id, filialId);
    if (!t) throw notFound('Título');
    return { ...t, pagamentos: await r.pagar.pagamentos(id) };
  }
}
