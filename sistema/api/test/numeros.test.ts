import { describe, expect, it } from 'vitest';
import { arredondar, arredondarDinheiro } from '../src/shared/numeros.js';

describe('arredondamento compartilhado', () => {
  it('corrige meio-centavo com erro binário', () => {
    expect(arredondarDinheiro(0.5 * 4.27)).toBe(2.14);
    expect(arredondarDinheiro(0.3 * 12.45)).toBe(3.74);
    expect(arredondarDinheiro(21.35 * 0.1)).toBe(2.14);
    expect(arredondarDinheiro(1.005)).toBe(1.01);
    expect(arredondarDinheiro(-2.135)).toBe(-2.14);
    expect(arredondar(1.00005, 4)).toBe(1.0001);
  });

  it('acerta todos os meios-centavos de 0,005 a 2000,005', () => {
    let erros = 0;
    for (let c = 0; c <= 200_000; c++) {
      const v = Number(`${Math.floor(c / 100)}.${String(c % 100).padStart(2, '0')}5`);
      if (arredondarDinheiro(v) !== Number(((c + 1) / 100).toFixed(2))) erros++;
    }
    expect(erros).toBe(0);
  });
});
