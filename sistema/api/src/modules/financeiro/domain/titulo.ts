import { Dinheiro } from './dinheiro.js';
import { RegraFinanceiraError } from './erros.js';

export type StatusTitulo = 'aberto' | 'pago' | 'cancelado';

export interface DadosTitulo {
  id: number;
  valor: number;
  valor_pago: number;
  status: StatusTitulo;
  vencimento: string; // YYYY-MM-DD
  parcela?: number;
  documento?: string | null;
  descricao?: string | null;
}

/** Resultado de uma baixa: valor efetivamente baixado e o novo estado do título. */
export interface Baixa {
  valor: number;
  valorPago: number;
  status: StatusTitulo;
}

/**
 * Título financeiro (a receber ou a pagar) com as regras de baixa parcial/total,
 * cancelamento, estorno e edição. Não conhece banco nem HTTP.
 */
export class Titulo {
  private constructor(
    readonly id: number,
    private _valor: number,
    private _valorPago: number,
    private _status: StatusTitulo,
    readonly vencimento: string,
    readonly parcela: number,
    readonly documento: string | null,
    readonly descricao: string | null,
  ) {}

  static de(d: DadosTitulo): Titulo {
    return new Titulo(d.id, d.valor, d.valor_pago, d.status, d.vencimento, d.parcela ?? 1, d.documento ?? null, d.descricao ?? null);
  }

  get valor() { return this._valor; }
  get valorPago() { return this._valorPago; }
  get status() { return this._status; }

  get saldo(): number {
    return this._status === 'cancelado' ? 0 : Dinheiro.subtrair(this._valor, this._valorPago);
  }

  /** Baixa parcial ou total. Sem valor, baixa o saldo inteiro. */
  baixar(valor?: number): Baixa {
    if (this._status !== 'aberto') throw RegraFinanceiraError.conflito('Título não está em aberto');
    const restante = this.saldo;
    const v = Dinheiro.arredondar(valor ?? restante);
    if (!(v > 0) || v > restante + Dinheiro.TOLERANCIA) {
      throw RegraFinanceiraError.invalido(`Valor da baixa deve estar entre 0,01 e ${Dinheiro.formatar(restante)}`);
    }
    this._valorPago = Dinheiro.arredondar(this._valorPago + v);
    this._status = Dinheiro.maiorOuIgual(this._valorPago, this._valor) ? 'pago' : 'aberto';
    return { valor: v, valorPago: this._valorPago, status: this._status };
  }

  /** Só título em aberto e sem pagamento pode ser cancelado. */
  cancelar(): void {
    if (this._status !== 'aberto') throw RegraFinanceiraError.conflito('Só é possível cancelar título em aberto');
    if (this._valorPago > 0) throw RegraFinanceiraError.conflito('Título possui pagamento; estorne antes de cancelar');
    this._status = 'cancelado';
  }

  /** Desfaz o que foi pago: zera o valor pago e volta a 'aberto'. Retorna o valor estornado. */
  estornar(): number {
    if (this._status === 'cancelado') throw RegraFinanceiraError.conflito('Título cancelado não pode ser estornado');
    if (!(this._valorPago > 0)) throw RegraFinanceiraError.conflito('Título não possui pagamento para estornar');
    const estornado = this._valorPago;
    this._valorPago = 0;
    this._status = 'aberto';
    return estornado;
  }

  /** Edição de dados/valor: só em aberto e sem ficar abaixo do já pago. */
  alterarValor(novoValor: number): void {
    if (this._status !== 'aberto') throw RegraFinanceiraError.conflito('Só é possível editar título em aberto');
    const v = Dinheiro.arredondar(novoValor);
    if (!(v > 0)) throw RegraFinanceiraError.invalido('Valor deve ser maior que zero');
    if (this._valorPago > 0 && v <= this._valorPago) throw RegraFinanceiraError.invalido('Valor deve ser maior que o já pago');
    this._valor = v;
  }

  /** Exclusão física só sem pagamento e sem movimentação no caixa. */
  exigirExcluivel(temMovimentoCaixa: boolean): void {
    if (this._valorPago > 0 || temMovimentoCaixa) {
      throw RegraFinanceiraError.conflito('Título com movimentação no caixa; cancele em vez de excluir');
    }
  }

  /** Texto do lançamento de caixa, ex.: 'Recebimento ORC-12 parc. 1'. */
  descricaoMovimento(prefixo: string): string {
    return [prefixo, this.descricao, this.documento, `parc. ${this.parcela}`].filter(Boolean).join(' ').replace(/\s+/g, ' ').trim();
  }
}
