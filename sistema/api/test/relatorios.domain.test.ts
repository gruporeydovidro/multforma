import { describe, expect, it } from 'vitest';
import { percentual, Ranking, RelatorioVendas, ticketMedio, type AgregadoVenda } from '../src/modules/relatorios/domain/indicadores.js';
import { Periodo, PeriodoInvalidoError } from '../src/modules/relatorios/domain/periodo.js';

describe('Periodo', () => {
  it('resolve o mês corrente e completa datas faltantes', () => {
    expect(Periodo.resolver({}, '2026-02-14').toJSON()).toEqual({ de: '2026-02-01', ate: '2026-02-28' });
    expect(Periodo.resolver({ de: '2024-02-10' }, '2026-01-01').toJSON()).toEqual({ de: '2024-02-10', ate: '2024-02-29' });
    expect(Periodo.resolver({ ate: '2026-12-05' }, '2026-01-01').toJSON()).toEqual({ de: '2026-12-01', ate: '2026-12-05' });
    expect(Periodo.resolver({ de: '2026-01-01', ate: '2026-03-31' }, '2026-01-01').toJSON()).toEqual({ de: '2026-01-01', ate: '2026-03-31' });
  });

  it('recusa período invertido', () => {
    expect(() => Periodo.criar('2026-02-01', '2026-01-01')).toThrow(PeriodoInvalidoError);
  });
});

describe('indicadores', () => {
  const ag = (chave: string, total: number, total_itens: number, custo: number, quantidade = 1): AgregadoVenda => ({ chave, rotulo: `R${chave}`, quantidade, total, total_itens, custo });

  it('percentual e ticket médio tratam divisão por zero', () => {
    expect(percentual(1, 3)).toBe(33.33);
    expect(percentual(5, 0)).toBe(0);
    expect(ticketMedio(1000, 3)).toBe(333.33);
    expect(ticketMedio(10, 0)).toBe(0);
  });

  it('calcula margem por linha e totalizador', () => {
    const r = new RelatorioVendas([ag('1', 770, 770, 330), ag('2', 450, 420, 180)]);
    expect(r.linhas[0]).toMatchObject({ margem: 440, margem_pct: 57.14 });
    expect(r.linhas[1]).toMatchObject({ margem: 240, margem_pct: 57.14 });
    expect(r.totais).toEqual({ quantidade: 2, total: 1220, total_itens: 1190, custo: 510, margem: 680, margem_pct: 57.14 });
  });

  it('ranking ordena por total, limita e calcula participação', () => {
    const rel = new RelatorioVendas([ag('1', 100, 100, 50), ag('2', 300, 300, 100), ag('0', 600, 600, 0)]);
    const r = Ranking.montar(rel.linhas, 2);
    expect(r.total_geral).toBe(1000);
    expect(r.items.map((i) => [i.posicao, i.id, i.total, i.participacao_pct])).toEqual([
      [1, null, 600, 60],
      [2, 2, 300, 30],
    ]);
  });
});
