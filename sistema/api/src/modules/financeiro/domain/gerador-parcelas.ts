import { Dinheiro } from './dinheiro.js';
import { RegraFinanceiraError } from './erros.js';

export interface ParcelaGerada {
  numero: number;
  vencimento: string; // YYYY-MM-DD
  valor: number;
}

/** Divide um total em parcelas mensais de 2 casas; a diferença de arredondamento fica na última. */
export class GeradorParcelas {
  static readonly MAXIMO = 120;

  private constructor() {}

  static mensais(total: number, quantidade: number, primeiroVencimento: string): ParcelaGerada[] {
    if (!Number.isInteger(quantidade) || quantidade < 1 || quantidade > GeradorParcelas.MAXIMO) {
      throw RegraFinanceiraError.invalido(`Número de parcelas deve estar entre 1 e ${GeradorParcelas.MAXIMO}`);
    }
    const t = Dinheiro.arredondar(total);
    if (t < quantidade * 0.01) throw RegraFinanceiraError.invalido('Valor total insuficiente para o número de parcelas');
    const base = Math.floor((t / quantidade) * 100 + 1e-6) / 100;
    return Array.from({ length: quantidade }, (_, i) => ({
      numero: i + 1,
      vencimento: GeradorParcelas.somarMeses(primeiroVencimento, i),
      valor: i === quantidade - 1 ? Dinheiro.arredondar(t - base * (quantidade - 1)) : base,
    }));
  }

  /** Soma meses a uma data ISO, ajustando ao último dia do mês quando preciso (31/01 + 1 = 28/02). */
  static somarMeses(iso: string, meses: number): string {
    const [y, m, d] = iso.split('-').map(Number);
    const total = y * 12 + (m - 1) + meses;
    const ano = Math.floor(total / 12);
    const mes = (total % 12) + 1;
    const ultimoDia = new Date(Date.UTC(ano, mes, 0)).getUTCDate();
    const p = (n: number, w = 2) => String(n).padStart(w, '0');
    return `${p(ano, 4)}-${p(mes)}-${p(Math.min(d, ultimoDia))}`;
  }
}
