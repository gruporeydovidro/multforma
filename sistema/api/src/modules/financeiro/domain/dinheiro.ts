import { arredondarDinheiro } from '../../../shared/numeros.js';

/** Regras de valores monetários: sempre 2 casas decimais. */
export class Dinheiro {
  /** Tolerância de comparação (meio centavo). */
  static readonly TOLERANCIA = 0.005;

  private constructor() {}

  /** Arredondamento comercial (meio para longe do zero), corrigindo o erro binário (1.005 -> 1.01). */
  static arredondar(v: number): number {
    return arredondarDinheiro(v);
  }

  static somar(valores: Iterable<number>): number {
    let s = 0;
    for (const v of valores) s += v;
    return Dinheiro.arredondar(s);
  }

  static subtrair(a: number, b: number): number {
    return Dinheiro.arredondar(a - b);
  }

  /** a >= b, considerando a tolerância. */
  static maiorOuIgual(a: number, b: number): boolean {
    return a > b - Dinheiro.TOLERANCIA;
  }

  /** 1234.5 -> '1.234,50' (para mensagens). */
  static formatar(v: number): string {
    return Dinheiro.arredondar(v).toLocaleString('pt-BR', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
  }
}
