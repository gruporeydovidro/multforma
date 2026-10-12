import { conflict, notFound } from '../../lib/http.js';
import type { CaixaRepository } from './caixa.repository.js';
import { Titulo } from './domain/titulo.js';
import type { TituloRepository, TituloTravado } from './titulo.repository.js';

export interface DadosBaixa {
  /** Sem valor, baixa o saldo inteiro. */
  valor?: number;
  data: string;
  forma_pagamento: string;
  usuario_id: number | null;
}

/** Sentido do caixa e rótulos de cada tipo de título. */
export interface SentidoTitulo {
  baixa: 'entrada' | 'saida';
  estorno: 'entrada' | 'saida';
  rotulo: string; // 'Recebimento' | 'Pagamento'
  fk: 'conta_receber_id' | 'conta_pagar_id';
}

export const SENTIDO_RECEBER: SentidoTitulo = { baixa: 'entrada', estorno: 'saida', rotulo: 'Recebimento', fk: 'conta_receber_id' };
export const SENTIDO_PAGAR: SentidoTitulo = { baixa: 'saida', estorno: 'entrada', rotulo: 'Pagamento', fk: 'conta_pagar_id' };

/**
 * Operações que alteram o estado de um título e refletem no caixa (baixa, estorno, cancelamento).
 * Aplica as regras do domínio `Titulo` e persiste pelos repositórios recebidos (mesma transação).
 */
export class MovimentacaoTitulos {
  constructor(
    private readonly titulos: TituloRepository,
    private readonly caixa: CaixaRepository,
    private readonly sentido: SentidoTitulo,
  ) {}

  /** Carrega e bloqueia o título da filial; 404 se não existir nela. */
  private async carregar(id: number, filialId: number) {
    return this.exigir(await this.titulos.travar(id, filialId));
  }

  private exigir(dados: TituloTravado | undefined) {
    if (!dados) throw notFound('Título');
    return { titulo: Titulo.de(dados), filialId: dados.filial_id };
  }

  /** Baixa parcial ou total de um título da filial, com lançamento no caixa. Retorna o valor baixado. */
  async baixar(id: number, filialId: number, b: DadosBaixa): Promise<number> {
    return this.aplicarBaixa(await this.carregar(id, filialId), b);
  }

  /**
   * Baixa pedida pela porta FinanceiroPort (sem filial na assinatura): o título precisa existir (404)
   * e estar em aberto (409). O lançamento de caixa vai para a filial do próprio título.
   */
  async baixarPelaPorta(id: number, b: DadosBaixa): Promise<number> {
    const carregado = this.exigir(await this.titulos.travarPelaPorta(id));
    if (carregado.titulo.status !== 'aberto') throw conflict('Título não está em aberto');
    return this.aplicarBaixa(carregado, b);
  }

  private async aplicarBaixa({ titulo, filialId }: { titulo: Titulo; filialId: number }, b: DadosBaixa): Promise<number> {
    const baixa = titulo.baixar(b.valor);
    await this.titulos.registrarPagamento(titulo.id, { valor_pago: baixa.valorPago, status: baixa.status, data: b.data, forma_pagamento: b.forma_pagamento });
    await this.caixa.inserir({
      filial_id: filialId,
      data: b.data,
      tipo: this.sentido.baixa,
      valor: baixa.valor,
      descricao: titulo.descricaoMovimento(this.sentido.rotulo),
      forma_pagamento: b.forma_pagamento,
      [this.sentido.fk]: titulo.id,
      usuario_id: b.usuario_id,
    });
    return baixa.valor;
  }

  /** Estorna todo o valor pago, com o movimento inverso no caixa. Retorna o valor estornado. */
  async estornar(id: number, filialId: number, args: { data: string; usuario_id: number | null }): Promise<number> {
    const { titulo } = await this.carregar(id, filialId);
    const valor = titulo.estornar();
    await this.titulos.registrarPagamento(id, { valor_pago: titulo.valorPago, status: titulo.status, data: null });
    await this.caixa.inserir({
      filial_id: filialId,
      data: args.data,
      tipo: this.sentido.estorno,
      valor,
      descricao: titulo.descricaoMovimento(`Estorno ${this.sentido.rotulo.toLowerCase()}`),
      forma_pagamento: null,
      [this.sentido.fk]: id,
      usuario_id: args.usuario_id,
    });
    return valor;
  }

  async cancelar(id: number, filialId: number, motivo: string | null): Promise<void> {
    const { titulo } = await this.carregar(id, filialId);
    titulo.cancelar();
    await this.titulos.cancelar(id, motivo);
  }
}
