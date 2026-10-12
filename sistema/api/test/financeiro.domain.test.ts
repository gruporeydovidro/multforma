import { describe, expect, it } from 'vitest';
import { LancamentoCaixa, ResumoCaixa } from '../src/modules/financeiro/domain/caixa.js';
import { Dinheiro } from '../src/modules/financeiro/domain/dinheiro.js';
import { RegraFinanceiraError } from '../src/modules/financeiro/domain/erros.js';
import { GeradorParcelas } from '../src/modules/financeiro/domain/gerador-parcelas.js';
import { Titulo, type DadosTitulo } from '../src/modules/financeiro/domain/titulo.js';

const titulo = (d: Partial<DadosTitulo> = {}) =>
  Titulo.de({ id: 1, valor: 100, valor_pago: 0, status: 'aberto', vencimento: '2026-01-10', parcela: 2, documento: 'ORC-7', ...d });

describe('Dinheiro', () => {
  it('arredonda a 2 casas e soma sem erro de ponto flutuante', () => {
    expect(Dinheiro.arredondar(1.005)).toBe(1.01);
    expect(Dinheiro.arredondar(-2.675)).toBe(-2.68);
    expect(Dinheiro.somar([0.1, 0.2])).toBe(0.3);
    expect(Dinheiro.subtrair(100, 33.33)).toBe(66.67);
    expect(Dinheiro.formatar(1234.5)).toBe('1.234,50');
  });
});

describe('Titulo', () => {
  it('baixa parcial mantém aberto e baixa total quita', () => {
    const t = titulo();
    expect(t.baixar(30)).toEqual({ valor: 30, valorPago: 30, status: 'aberto' });
    expect(t.saldo).toBe(70);
    expect(t.baixar()).toEqual({ valor: 70, valorPago: 100, status: 'pago' });
    expect(t.saldo).toBe(0);
  });

  it('recusa baixa acima do saldo, zerada ou de título não aberto', () => {
    const t = titulo({ valor_pago: 90 });
    expect(() => t.baixar(10.01)).toThrow(/entre 0,01 e 10,00/);
    expect(() => t.baixar(0)).toThrow(RegraFinanceiraError);
    t.baixar(10);
    expect(() => t.baixar(1)).toThrow(/não está em aberto/);
    try {
      titulo({ status: 'cancelado' }).baixar(1);
    } catch (e) {
      expect((e as RegraFinanceiraError).tipo).toBe('conflito');
    }
  });

  it('cancela só em aberto e sem pagamento', () => {
    expect(() => titulo({ valor_pago: 10 }).cancelar()).toThrow(/estorne/);
    expect(() => titulo({ status: 'pago', valor_pago: 100 }).cancelar()).toThrow(/em aberto/);
    const t = titulo();
    t.cancelar();
    expect(t.status).toBe('cancelado');
    expect(t.saldo).toBe(0);
  });

  it('estorno zera o pago e reabre', () => {
    const t = titulo({ status: 'pago', valor_pago: 100 });
    expect(t.estornar()).toBe(100);
    expect(t.status).toBe('aberto');
    expect(t.valorPago).toBe(0);
    expect(() => t.estornar()).toThrow(/não possui pagamento/);
    expect(() => titulo({ status: 'cancelado' }).estornar()).toThrow(/cancelado/);
  });

  it('vencimento, edição de valor, exclusão e descrição do movimento', () => {
    expect(titulo().estaVencido('2026-01-11')).toBe(true);
    expect(titulo().estaVencido('2026-01-10')).toBe(false);
    expect(titulo({ status: 'pago' }).estaVencido('2027-01-01')).toBe(false);
    const t = titulo({ valor_pago: 40 });
    expect(() => t.alterarValor(40)).toThrow(/maior que o já pago/);
    t.alterarValor(150.555);
    expect(t.valor).toBe(150.56);
    expect(() => titulo().exigirExcluivel(true)).toThrow(/cancele/);
    expect(() => titulo().exigirExcluivel(false)).not.toThrow();
    expect(titulo().descricaoMovimento('Recebimento')).toBe('Recebimento ORC-7 parc. 2');
  });
});

describe('GeradorParcelas', () => {
  it('divide o total com a sobra na última parcela', () => {
    const p = GeradorParcelas.mensais(100, 3, '2026-01-31');
    expect(p.map((x) => x.valor)).toEqual([33.33, 33.33, 33.34]);
    expect(Dinheiro.somar(p.map((x) => x.valor))).toBe(100);
    expect(p.map((x) => x.numero)).toEqual([1, 2, 3]);
  });

  it('vencimentos mensais ajustam ao fim do mês', () => {
    expect(GeradorParcelas.mensais(10, 3, '2026-01-31').map((x) => x.vencimento)).toEqual(['2026-01-31', '2026-02-28', '2026-03-31']);
    expect(GeradorParcelas.somarMeses('2027-11-15', 3)).toBe('2028-02-15');
    expect(GeradorParcelas.somarMeses('2028-01-29', 1)).toBe('2028-02-29');
  });

  it('valida a quantidade e o valor mínimo', () => {
    expect(() => GeradorParcelas.mensais(100, 0, '2026-01-01')).toThrow();
    expect(() => GeradorParcelas.mensais(0.02, 3, '2026-01-01')).toThrow(/insuficiente/);
    expect(GeradorParcelas.mensais(0.03, 3, '2026-01-01').map((x) => x.valor)).toEqual([0.01, 0.01, 0.01]);
  });
});

describe('ResumoCaixa e LancamentoCaixa', () => {
  it('calcula entradas, saídas, saldo final e saldo acumulado', () => {
    const r = new ResumoCaixa(50, [
      { tipo: 'entrada' as const, valor: 100.1 },
      { tipo: 'saida' as const, valor: 30.05 },
      { tipo: 'entrada' as const, valor: 0.2 },
    ]);
    expect(r.entradas).toBe(100.3);
    expect(r.saidas).toBe(30.05);
    expect(r.saldoFinal).toBe(120.25);
    expect(r.linhas.map((l) => l.saldo)).toEqual([150.1, 120.05, 120.25]);
  });

  it('só lançamento manual pode ser excluído', () => {
    expect(LancamentoCaixa.ehManual({ conta_receber_id: null, conta_pagar_id: null })).toBe(true);
    expect(() => LancamentoCaixa.exigirExcluivel({ conta_receber_id: 3, conta_pagar_id: null })).toThrow(/estorno/);
  });
});
