import { describe, expect, it } from 'vitest';
import { Acerto, CustoMedio, ErroEstoque, MovimentoEstoque, SaldoEstoque } from '../src/modules/estoque/domain/index.js';

// Domínio puro: sem banco.
describe('domínio do estoque', () => {
  it('aplica o sinal da quantidade por tipo', () => {
    expect(MovimentoEstoque.quantidadeComSinal('entrada', -3)).toBe(3);
    expect(MovimentoEstoque.quantidadeComSinal('saida', 3)).toBe(-3);
    expect(MovimentoEstoque.quantidadeComSinal('acerto', -2.5)).toBe(-2.5);
  });

  it('calcula o custo médio ponderado', () => {
    const c = new CustoMedio(10, 100).aplicarEntrada(10, 130);
    expect(c.custo).toBe(115);
    expect(c.saldo).toBe(20);
    expect(new CustoMedio(0, 999).aplicarEntrada(4, 50).custo).toBe(50);
    expect(new CustoMedio(-5, 80).aplicarEntrada(5, 60).custo).toBe(60); // saldo negativo não pesa
    expect(new CustoMedio(3, 10).aplicarEntrada(1, 11).custo).toBe(10.25);
    expect(new CustoMedio(1, 1).aplicarEntrada(2, 0).custo).toBe(0.3333);
    expect(() => new CustoMedio(1, 1).aplicarEntrada(0, 1)).toThrow(ErroEstoque);
    expect(() => new CustoMedio(1, 1).aplicarEntrada(1, -1)).toThrow(ErroEstoque);
  });

  it('calcula a diferença do acerto', () => {
    expect(new Acerto(15, 12).diferenca).toBe(-3);
    expect(new Acerto(1.1, 1.3).diferenca).toBe(0.2);
    expect(new Acerto(-2, 0).diferenca).toBe(2);
    expect(() => new Acerto(5, 5)).toThrow(/igual/);
    expect(() => new Acerto(5, -1)).toThrow(/negativo/);
  });

  it('valida a retirada e o mínimo', () => {
    const s = new SaldoEstoque(5);
    expect(() => s.garantirRetirada(5)).not.toThrow();
    expect(() => s.garantirRetirada(5.01)).toThrow(/insuficiente/);
    expect(() => s.garantirRetirada(0)).toThrow(ErroEstoque);
    expect(s.abaixoDoMinimo(6)).toBe(true);
    expect(s.abaixoDoMinimo(5)).toBe(false);
  });
});
