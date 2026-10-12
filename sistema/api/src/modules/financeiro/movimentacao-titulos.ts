import { notFound } from '../../lib/http.js';
import type { CaixaRepository } from './caixa.repository.js';
import { Titulo } from './domain/titulo.js';
import type { TituloRepository } from './titulo.repository.js';

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

  private async carregar(id: number, filialId?: number) {
    const dados = await this.titulos.travar(id, filialId);
    if (!dados) throw notFound('Título');
    return { titulo: Titulo.de(dados), filialId: dados.filial_id };
  }

  /** Baixa parcial ou total, com lançamento no caixa. Retorna o valor baixado. */
  async baixar(id: number, filialId: number | undefined, b: DadosBaixa): Promise<number> {
    const { titulo, filialId: filial } = await this.carregar(id, filialId);
    const baixa = titulo.baixar(b.valor);
    await this.titulos.registrarPagamento(id, { valor_pago: baixa.valorPago, status: baixa.status, data: b.data, forma_pagamento: b.forma_pagamento });
    await this.caixa.inserir({
      filial_id: filial,
      data: b.data,
      tipo: this.sentido.baixa,
      valor: baixa.valor,
      descricao: titulo.descricaoMovimento(this.sentido.rotulo),
      forma_pagamento: b.forma_pagamento,
      [this.sentido.fk]: id,
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
