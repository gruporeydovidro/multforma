import { RegraOrcamentoError } from './erros.js';
import { round2, valoresIguais } from './numeros.js';

export const FORMAS_PAGAMENTO = ['dinheiro', 'pix', 'cartao_debito', 'cartao_credito', 'boleto', 'cheque', 'a_prazo'] as const;
export type FormaPagamento = (typeof FORMAS_PAGAMENTO)[number];

/** Formas liquidadas no ato do fechamento. */
export const FORMAS_A_VISTA: readonly FormaPagamento[] = ['dinheiro', 'pix', 'cartao_debito'];

export interface Parcela {
  numero: number;
  vencimento: string; // YYYY-MM-DD
  valor: number;
  forma_pagamento: FormaPagamento;
}

const DATA_ISO = /^\d{4}-\d{2}-\d{2}$/;

/** Soma meses a uma data ISO, limitando ao último dia do mês (31/01 + 1 = 28 ou 29/02). */
export function adicionarMeses(iso: string, meses: number): string {
  const [y, m, d] = iso.split('-').map(Number);
  const alvo = new Date(Date.UTC(y, m - 1 + meses, 1));
  const ultimoDia = new Date(Date.UTC(alvo.getUTCFullYear(), alvo.getUTCMonth() + 1, 0)).getUTCDate();
  alvo.setUTCDate(Math.min(d, ultimoDia));
  return alvo.toISOString().slice(0, 10);
}

/** Divide um valor em n partes que somam exatamente o total (os centavos de sobra vão para a primeira). */
export function dividirValor(total: number, n: number): number[] {
  if (!Number.isInteger(n) || n < 1) throw new RegraOrcamentoError('Número de parcelas inválido');
  const centavos = Math.round(total * 100);
  const base = Math.floor(centavos / n);
  const resto = centavos - base * n;
  return Array.from({ length: n }, (_, i) => (base + (i === 0 ? resto : 0)) / 100);
}

/** Conjunto de parcelas de um fechamento: geração mensal e validação da soma. */
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

  static gerar(args: { total: number; quantidade: number; primeiroVencimento: string; forma: FormaPagamento; intervaloMeses?: number }): PlanoParcelas {
    const valores = dividirValor(args.total, args.quantidade);
    const intervalo = args.intervaloMeses ?? 1;
    return new PlanoParcelas(
      valores.map((valor, i) => ({ numero: i + 1, vencimento: adicionarMeses(args.primeiroVencimento, i * intervalo), valor, forma_pagamento: args.forma })),
    );
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
