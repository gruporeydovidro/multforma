import { RegraOrcamentoError } from './erros.js';
import { round2, valoresIguais } from './numeros.js';

import { FORMAS_A_VISTA, FORMAS_PAGAMENTO, type FormaPagamento } from '../../../shared/pagamento.js';

export { FORMAS_A_VISTA, FORMAS_PAGAMENTO, type FormaPagamento };

export interface Parcela {
  numero: number;
  vencimento: string; // YYYY-MM-DD
  valor: number;
  forma_pagamento: FormaPagamento;
}

const DATA_ISO = /^\d{4}-\d{2}-\d{2}$/;

/** Conjunto de parcelas de um fechamento: validação de cada parcela e da soma. */
export class PlanoParcelas {
  readonly parcelas: readonly Parcela[];

  constructor(parcelas: Parcela[]) {
    if (parcelas.length === 0) throw new RegraOrcamentoError('Informe ao menos uma parcela');
    this.parcelas = parcelas.map((p, i) => {
      if (!DATA_ISO.test(p.vencimento)) throw new RegraOrcamentoError(`Parcela ${i + 1}: vencimento inválido`);
      if (!(p.valor > 0)) throw new RegraOrcamentoError(`Parcela ${i + 1}: valor deve ser maior que zero`);
      if (!FORMAS_PAGAMENTO.includes(p.forma_pagamento)) throw new RegraOrcamentoError(`Parcela ${i + 1}: forma de pagamento inválida`);
      return { ...p, numero: i + 1, valor: round2(p.valor) };
    });
  }

  static aVista(forma: string): boolean {
    return (FORMAS_A_VISTA as readonly string[]).includes(forma);
  }

  get soma(): number {
    return round2(this.parcelas.reduce((s, p) => s + p.valor, 0));
  }

  /** As parcelas devem somar o total (tolerância de R$ 0,01). */
  validarSoma(total: number): void {
    if (!valoresIguais(this.soma, total)) {
      throw new RegraOrcamentoError(`As parcelas somam ${this.soma.toFixed(2)}, mas o total do orçamento é ${round2(total).toFixed(2)}`);
    }
  }

  /** Valida a soma e absorve na última parcela a diferença de centavos tolerada, para somar exatamente o total. */
  ajustadoAo(total: number): PlanoParcelas {
    this.validarSoma(total);
    const diferenca = round2(round2(total) - this.soma);
    if (diferenca === 0) return this;
    const parcelas = this.parcelas.map((p) => ({ ...p }));
    const ultima = parcelas[parcelas.length - 1];
    ultima.valor = round2(ultima.valor + diferenca);
    return new PlanoParcelas(parcelas);
  }
}
