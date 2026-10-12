import { Dinheiro } from './dinheiro.js';
import { RegraFinanceiraError } from './erros.js';

export type TipoLancamento = 'entrada' | 'saida';

export interface Lancamento {
  tipo: TipoLancamento;
  valor: number;
}

export interface VinculoLancamento {
  conta_receber_id: number | null;
  conta_pagar_id: number | null;
}

/** Regras do lançamento de caixa. */
export class LancamentoCaixa {
  private constructor() {}

  static ehManual(l: VinculoLancamento): boolean {
    return l.conta_receber_id == null && l.conta_pagar_id == null;
  }

  /** Só lançamento manual (sem vínculo com título) pode ser excluído. */
  static exigirExcluivel(l: VinculoLancamento): void {
    if (!LancamentoCaixa.ehManual(l)) throw RegraFinanceiraError.conflito('Lançamento vinculado a título; use o estorno do título');
  }

  static efeito(l: Lancamento): number {
    return l.tipo === 'entrada' ? l.valor : -l.valor;
  }
}

/** Resumo de um período do caixa: saldo anterior, entradas, saídas, saldo final e saldo acumulado por linha. */
export class ResumoCaixa<T extends Lancamento> {
  readonly entradas: number;
  readonly saidas: number;
  readonly saldoFinal: number;
  readonly linhas: (T & { saldo: number })[];

  constructor(readonly saldoAnterior: number, lancamentos: T[]) {
    let saldo = Dinheiro.arredondar(saldoAnterior);
    this.linhas = lancamentos.map((l) => {
      saldo = Dinheiro.arredondar(saldo + LancamentoCaixa.efeito(l));
      return { ...l, saldo };
    });
    this.entradas = Dinheiro.somar(lancamentos.filter((l) => l.tipo === 'entrada').map((l) => l.valor));
    this.saidas = Dinheiro.somar(lancamentos.filter((l) => l.tipo === 'saida').map((l) => l.valor));
    this.saldoFinal = Dinheiro.arredondar(saldoAnterior + this.entradas - this.saidas);
  }
}
