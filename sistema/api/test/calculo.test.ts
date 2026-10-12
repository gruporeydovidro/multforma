import { describe, expect, it } from 'vitest';
import {
  adicionarMeses,
  Arredondamento,
  CalculadoraItem,
  CobrancaPorArea,
  CobrancaPorPerimetro,
  CobrancaPorQuantidade,
  dividirValor,
  Medida,
  Orcamento,
  PlanoParcelas,
  RegraOrcamentoError,
  round2,
  round4,
  StatusOrcamentoError,
  valoresIguais,
  type ProdutoCalculo,
} from '../src/modules/orcamentos/domain/index.js';
import { AvaliadorFormula, Formula, Tokenizador } from '../src/modules/projetos/domain/AvaliadorFormula.js';
import { FormulaError, ProjetoInvalidoError } from '../src/modules/projetos/domain/erros.js';
import { Projeto, Vao, type DadosItemProjeto } from '../src/modules/projetos/domain/Projeto.js';

const vidro8: ProdutoCalculo = { unidade_venda: 'M2', area_minima_m2: 0.25, arredondamento_cm: 5 };

describe('números', () => {
  it('arredonda dinheiro a 2 e medida a 4 casas (meio para cima)', () => {
    expect(round2(1.005)).toBe(1.01);
    expect(round2(2.675)).toBe(2.68);
    expect(round2(-1.005)).toBe(-1.01);
    expect(round4(0.12345)).toBe(0.1235);
    expect(round2(0.1 + 0.2)).toBe(0.3);
  });
  it('compara valores com tolerância de 1 centavo', () => {
    expect(valoresIguais(100, 100.01)).toBe(true);
    expect(valoresIguais(100, 99.99)).toBe(true);
    expect(valoresIguais(100, 100.02)).toBe(false);
  });
});

describe('Arredondamento e Medida', () => {
  it('sobe ao múltiplo de valor_cm * 10 mm', () => {
    const a5 = new Arredondamento(5);
    expect(a5.passoMm).toBe(50);
    expect(a5.aplicar(1001)).toBe(1050);
    expect(a5.aplicar(1050)).toBe(1050);
    expect(a5.aplicar(1)).toBe(50);
    expect(new Arredondamento(10).aplicar(1234)).toBe(1300);
    expect(new Arredondamento(1).aplicar(1234)).toBe(1240);
  });
  it('sem arredondamento devolve a dimensão', () => {
    expect(Arredondamento.NENHUM.aplicar(1234)).toBe(1234);
    expect(new Arredondamento(0).aplicar(1234)).toBe(1234);
  });
  it('arredonda as duas dimensões e calcula área e perímetro', () => {
    const m = new Medida(1001, 1999).arredondar(new Arredondamento(5));
    expect([m.largura, m.altura]).toEqual([1050, 2000]);
    expect(m.areaM2()).toBe(2.1);
    expect(m.perimetroM()).toBe(6.1);
  });
  it('mantém dimensão ausente como null', () => {
    const m = Medida.de(500, null).arredondar(new Arredondamento(5));
    expect(m.largura).toBe(500);
    expect(m.altura).toBeNull();
    expect(m.completa).toBe(false);
    expect(() => m.areaM2()).toThrow(RegraOrcamentoError);
    expect(() => m.perimetroM()).toThrow(/metro linear/);
  });
  it('rejeita dimensão não positiva', () => {
    expect(() => new Medida(0, 100)).toThrow(/Largura/);
    expect(() => new Medida(100, -5)).toThrow(/Altura/);
  });
});

describe('CalculadoraItem', () => {
  it('escolhe a estratégia pela unidade (polimorfismo)', () => {
    expect(CalculadoraItem.estrategia('M2')).toBeInstanceOf(CobrancaPorArea);
    expect(CalculadoraItem.estrategia('ML')).toBeInstanceOf(CobrancaPorPerimetro);
    for (const u of ['UN', 'PC', 'KG'] as const) expect(CalculadoraItem.estrategia(u)).toBeInstanceOf(CobrancaPorQuantidade);
    expect(() => CalculadoraItem.estrategia('XX' as never)).toThrow(/Unidade/);
  });

  it('M2: arredonda, multiplica pela quantidade e aplica o preço', () => {
    const r = CalculadoraItem.calcular(vidro8, { quantidade: 2, largura_mm: 1001, altura_mm: 1999, preco_unitario: 280 });
    expect(r).toEqual({ largura_calc_mm: 1050, altura_calc_mm: 2000, medida_cobrada: 4.2, total: 1176 });
  });

  it('M2: respeita a área mínima por peça', () => {
    const r = CalculadoraItem.calcular(vidro8, { quantidade: 3, largura_mm: 200, altura_mm: 200, preco_unitario: 100 });
    expect(r.largura_calc_mm).toBe(200);
    expect(r.medida_cobrada).toBe(0.75); // 0,04 m² < 0,25 mínimo
    expect(r.total).toBe(75);
  });

  it('M2 sem medidas é erro', () => {
    expect(() => CalculadoraItem.calcular(vidro8, { quantidade: 1, preco_unitario: 1 })).toThrow(/largura e altura/);
  });

  it('ML: perímetro das medidas arredondadas', () => {
    const lap: ProdutoCalculo = { unidade_venda: 'ML', arredondamento_cm: null };
    const r = CalculadoraItem.calcular(lap, { quantidade: 2, largura_mm: 1000, altura_mm: 500, preco_unitario: 12 });
    expect(r.medida_cobrada).toBe(6); // 2 * (1 + 0,5) * 2
    expect(r.total).toBe(72);
    const r2 = CalculadoraItem.calcular({ unidade_venda: 'ML', arredondamento_cm: 5 }, { quantidade: 1, largura_mm: 1010, altura_mm: 490, preco_unitario: 10 });
    expect(r2.medida_cobrada).toBe(3.1); // 2 * (1,05 + 0,5)
  });

  it('UN/PC/KG: medida cobrada é a quantidade; medidas opcionais', () => {
    const kit: ProdutoCalculo = { unidade_venda: 'UN' };
    expect(CalculadoraItem.calcular(kit, { quantidade: 3, preco_unitario: 210 })).toEqual({ largura_calc_mm: null, altura_calc_mm: null, medida_cobrada: 3, total: 630 });
    expect(CalculadoraItem.calcular({ unidade_venda: 'KG' }, { quantidade: 1.2345, preco_unitario: 10 }).total).toBe(12.35);
    expect(CalculadoraItem.calcular({ unidade_venda: 'PC', arredondamento_cm: 5 }, { quantidade: 1, largura_mm: 333, preco_unitario: 5 }).largura_calc_mm).toBe(350);
  });

  it('arredonda medida cobrada a 4 casas antes de multiplicar', () => {
    const p: ProdutoCalculo = { unidade_venda: 'M2' };
    const r = CalculadoraItem.calcular(p, { quantidade: 1, largura_mm: 333, altura_mm: 333, preco_unitario: 100 });
    expect(r.medida_cobrada).toBe(0.1109); // 0,110889
    expect(r.total).toBe(11.09);
  });

  it('aplica o desconto do item e valida valores', () => {
    const r = CalculadoraItem.calcular({ unidade_venda: 'UN' }, { quantidade: 2, preco_unitario: 50, desconto_valor: 10.555 });
    expect(r.total).toBe(89.45);
    expect(() => CalculadoraItem.calcular({ unidade_venda: 'UN' }, { quantidade: 1, preco_unitario: 10, desconto_valor: 11 })).toThrow(/Desconto/);
    expect(() => CalculadoraItem.calcular({ unidade_venda: 'UN' }, { quantidade: 0, preco_unitario: 10 })).toThrow(/Quantidade/);
    expect(() => CalculadoraItem.calcular({ unidade_venda: 'UN' }, { quantidade: 1, preco_unitario: -1 })).toThrow(/Preço/);
    expect(() => CalculadoraItem.calcular({ unidade_venda: 'UN' }, { quantidade: 1, preco_unitario: 1, desconto_valor: -1 })).toThrow(/Desconto/);
  });
});

describe('Orcamento: totais', () => {
  it('soma itens, aplica desconto %, acréscimo e frete', () => {
    expect(Orcamento.calcularTotais([100, 200.5], { desconto_pct: 10, desconto_valor: 999, acrescimo_valor: 5, frete_valor: 20 })).toEqual({
      subtotal: 300.5,
      desconto: 30.05,
      total: 295.45,
    });
  });
  it('sem % usa o desconto em valor', () => {
    expect(Orcamento.calcularTotais([100], { desconto_pct: 0, desconto_valor: 15 })).toEqual({ subtotal: 100, desconto: 15, total: 85 });
  });
  it('limita o desconto ao subtotal e trata vazio', () => {
    expect(Orcamento.calcularTotais([10], { desconto_valor: 50, frete_valor: 5 })).toEqual({ subtotal: 10, desconto: 10, total: 5 });
    expect(Orcamento.calcularTotais([], {})).toEqual({ subtotal: 0, desconto: 0, total: 0 });
  });
  it('arredonda o desconto % a centavos', () => {
    expect(Orcamento.calcularTotais([33.33], { desconto_pct: 7.5 }).desconto).toBe(2.5);
    expect(Orcamento.calcularTotais([0.1, 0.2], {}).subtotal).toBe(0.3);
  });
  it('desconto a gravar: efetivo com %, digitado sem %', () => {
    const t = Orcamento.calcularTotais([200], { desconto_pct: 5 });
    expect(Orcamento.descontoAGravar({ desconto_pct: 5, desconto_valor: 0 }, t)).toBe(10);
    expect(Orcamento.descontoAGravar({ desconto_pct: 0, desconto_valor: 300 }, Orcamento.calcularTotais([200], { desconto_valor: 300 }))).toBe(300);
  });
});

describe('Orcamento: status', () => {
  const plano = new PlanoParcelas([{ numero: 1, vencimento: '2026-01-10', valor: 100, forma_pagamento: 'pix' }]);

  it('itens só editáveis em aberto', () => {
    expect(new Orcamento('aberto').itensEditaveis).toBe(true);
    for (const s of ['aprovado', 'fechado', 'cancelado'] as const) {
      expect(() => new Orcamento(s).garantirItensEditaveis()).toThrow(StatusOrcamentoError);
    }
  });
  it('cabeçalho: aprovado aceita só campos não financeiros', () => {
    expect(() => new Orcamento('aberto').garantirCabecalhoEditavel(['frete_valor'])).not.toThrow();
    expect(() => new Orcamento('aprovado').garantirCabecalhoEditavel([])).not.toThrow();
    expect(() => new Orcamento('aprovado').garantirCabecalhoEditavel(['frete_valor'])).toThrow(/frete_valor/);
    expect(() => new Orcamento('fechado').garantirCabecalhoEditavel([])).toThrow(StatusOrcamentoError);
  });
  it('aberto → aprovado (exige itens)', () => {
    expect(new Orcamento('aberto').aprovar(1)).toBe('aprovado');
    expect(() => new Orcamento('aberto').aprovar(0)).toThrow(RegraOrcamentoError);
    expect(() => new Orcamento('aprovado').aprovar(1)).toThrow(StatusOrcamentoError);
  });
  it('aprovado → fechado, validando total e parcelas', () => {
    expect(new Orcamento('aprovado').fechar(100, plano)).toBe('fechado');
    expect(new Orcamento('aprovado').fechar(100.01, plano)).toBe('fechado');
    expect(() => new Orcamento('aprovado').fechar(150, plano)).toThrow(/somam/);
    expect(() => new Orcamento('aprovado').fechar(0, plano)).toThrow(/zero/);
    expect(() => new Orcamento('aberto').fechar(100, plano)).toThrow(StatusOrcamentoError);
    expect(() => new Orcamento('fechado').fechar(100, plano)).toThrow(StatusOrcamentoError);
  });
  it('cancelamento a partir de aberto ou aprovado', () => {
    expect(new Orcamento('aberto').cancelar()).toBe('cancelado');
    expect(new Orcamento('aprovado').cancelar()).toBe('cancelado');
    expect(() => new Orcamento('fechado').cancelar()).toThrow(StatusOrcamentoError);
    expect(() => new Orcamento('cancelado').cancelar()).toThrow(StatusOrcamentoError);
  });
});

describe('PlanoParcelas', () => {
  it('divide o valor sem perder centavos', () => {
    expect(dividirValor(100, 3)).toEqual([33.34, 33.33, 33.33]);
    expect(dividirValor(0.05, 2)).toEqual([0.03, 0.02]);
    expect(() => dividirValor(10, 0)).toThrow();
  });
  it('soma meses respeitando o fim do mês', () => {
    expect(adicionarMeses('2026-01-31', 1)).toBe('2026-02-28');
    expect(adicionarMeses('2028-01-31', 1)).toBe('2028-02-29');
    expect(adicionarMeses('2026-11-15', 2)).toBe('2027-01-15');
    expect(adicionarMeses('2026-05-10', 0)).toBe('2026-05-10');
  });
  it('gera parcelas mensais que somam o total', () => {
    const p = PlanoParcelas.gerar({ total: 1000, quantidade: 3, primeiroVencimento: '2026-10-12', forma: 'boleto' });
    expect(p.parcelas.map((x) => [x.numero, x.vencimento, x.valor])).toEqual([
      [1, '2026-10-12', 333.34],
      [2, '2026-11-12', 333.33],
      [3, '2026-12-12', 333.33],
    ]);
    expect(p.soma).toBe(1000);
    expect(() => p.validarSoma(1000)).not.toThrow();
    expect(() => p.validarSoma(1000.5)).toThrow(RegraOrcamentoError);
  });
  it('ajusta a diferença tolerada na última parcela', () => {
    const p = new PlanoParcelas([
      { numero: 1, vencimento: '2026-10-12', valor: 50, forma_pagamento: 'pix' },
      { numero: 2, vencimento: '2026-11-12', valor: 50.01, forma_pagamento: 'boleto' },
    ]);
    expect(p.ajustadoAo(100).parcelas.map((x) => x.valor)).toEqual([50, 50]);
    expect(p.ajustadoAo(100.01)).toBe(p);
    expect(() => p.ajustadoAo(99)).toThrow(/somam/);
  });
  it('valida cada parcela e renumera', () => {
    expect(() => new PlanoParcelas([])).toThrow(/ao menos/);
    expect(() => new PlanoParcelas([{ numero: 1, vencimento: '12/10/2026', valor: 1, forma_pagamento: 'pix' }])).toThrow(/vencimento/);
    expect(() => new PlanoParcelas([{ numero: 1, vencimento: '2026-10-12', valor: 0, forma_pagamento: 'pix' }])).toThrow(/valor/);
    expect(() => new PlanoParcelas([{ numero: 1, vencimento: '2026-10-12', valor: 1, forma_pagamento: 'xx' as never }])).toThrow(/forma/);
    const p = new PlanoParcelas([{ numero: 7, vencimento: '2026-10-12', valor: 1.234, forma_pagamento: 'pix' }]);
    expect(p.parcelas[0]).toMatchObject({ numero: 1, valor: 1.23 });
  });
  it('identifica formas à vista', () => {
    expect(['dinheiro', 'pix', 'cartao_debito'].every(PlanoParcelas.aVista)).toBe(true);
    expect(['cartao_credito', 'boleto', 'cheque', 'a_prazo'].some(PlanoParcelas.aVista)).toBe(false);
  });
});

describe('AvaliadorFormula', () => {
  const v = { L: 1500, A: 1900 };
  const av = (f: string, vars = v) => AvaliadorFormula.avaliar(f, vars);

  it('números, variáveis e precedência', () => {
    expect(av('42')).toBe(42);
    expect(av('2.5')).toBe(2.5);
    expect(av('.5')).toBe(0.5);
    expect(av('L')).toBe(1500);
    expect(av('a')).toBe(1900);
    expect(av('L/2 + 25')).toBe(775);
    expect(av('1 + 2 * 3')).toBe(7);
    expect(av('(1 + 2) * 3')).toBe(9);
    expect(av('10 - 4 - 3')).toBe(3);
    expect(av('100 / 10 / 2')).toBe(5);
    expect(av('L - A + 100')).toBe(-300);
  });
  it('unários', () => {
    expect(av('-5 + 10')).toBe(5);
    expect(av('--5')).toBe(5);
    expect(av('+L')).toBe(1500);
    expect(av('2 * -3')).toBe(-6);
    expect(av('-(L - A)')).toBe(400);
  });
  it('min e max com vários argumentos e aninhados', () => {
    expect(av('min(L, A)')).toBe(1500);
    expect(av('MAX(L, A, 3000)')).toBe(3000);
    expect(av('max(min(L, 1000), 800) + 1')).toBe(1001);
    expect(av('min(L/3, A/2) - 10')).toBe(490);
  });
  it('espaços e quebras de linha', () => {
    expect(av('  ( L\n+ A )\t/ 2 ')).toBe(1700);
  });
  it('erros de sintaxe com mensagem clara', () => {
    const casos: [string, RegExp][] = [
      ['', /vazia/],
      ['   ', /vazia/],
      ['L +', /incompleta/],
      ['(L + A', /Esperado "\)"/],
      ['L + A)', /inesperado "\)"/],
      ['L A', /inesperado "A"/],
      ['2L', /inesperado "L"/],
      ['L ** 2', /inesperado "\*"/],
      ['X + 1', /Variável desconhecida "X"/],
      ['abs(L)', /Variável desconhecida "abs"/],
      ['min L', /Esperado "\("/],
      ['min()', /inesperado "\)"/],
      ['L ^ 2', /Caractere inválido "\^"/],
      ['1.2.3', /Número inválido/],
      ['L; process.exit()', /Caractere inválido ";"/],
      ['constructor', /Variável desconhecida/],
    ];
    for (const [f, re] of casos) {
      expect(() => av(f), f).toThrow(FormulaError);
      expect(() => av(f), f).toThrow(re);
    }
  });
  it('divisão por zero', () => {
    expect(() => av('L / 0')).toThrow(/Divisão por zero/);
    expect(() => av('L / (A - A)')).toThrow(FormulaError);
    expect(() => av('1/(L-1500)')).toThrow(/Divisão por zero/);
  });
  it('limita o tamanho e valida sem avaliar', () => {
    expect(() => av('1+'.repeat(150) + '1')).toThrow(/longa/);
    expect(AvaliadorFormula.validar('L/2+25')).toBeNull();
    expect(AvaliadorFormula.validar('L/')).toMatch(/incompleta/);
    expect(AvaliadorFormula.validar('L/0')).toBeNull(); // só sintaxe; o zero aparece ao avaliar
  });
  it('fórmula compilada pode ser reavaliada', () => {
    const f = Formula.compilar('L/2 + 25');
    expect(f.avaliar({ L: 1000, A: 0 })).toBe(525);
    expect(f.avaliar({ L: 2000, A: 0 })).toBe(1025);
    expect(Tokenizador.tokenizar('min(L,2)').map((t) => t.valor)).toEqual(['min', '(', 'L', ',', 2, ')']);
  });
  it('não usa eval nem Function', async () => {
    const { readFile } = await import('node:fs/promises');
    const fonte = await readFile(new URL('../src/modules/projetos/domain/AvaliadorFormula.ts', import.meta.url), 'utf8');
    expect(fonte).not.toMatch(/\beval\s*\(|new Function|Function\s*\(/);
  });
});

describe('Projeto: expansão', () => {
  const itensBox: DadosItemProjeto[] = [
    { id: 1, descricao: 'Folha fixa', tipo: 'vidro', produto_id: null, quantidade: 1, formula_largura: 'L/2 + 25', formula_altura: 'A', folga_largura_mm: 0, folga_altura_mm: 10 },
    { id: 2, descricao: 'Folha móvel', tipo: 'vidro', produto_id: null, quantidade: 1, formula_largura: 'L/2 + 25', formula_altura: 'A', folga_largura_mm: 0, folga_altura_mm: 30 },
    { id: 3, descricao: 'Kit', tipo: 'ferragem', produto_id: 99, quantidade: 1, formula_largura: null, formula_altura: null, folga_largura_mm: 0, folga_altura_mm: 0 },
  ];

  it('aplica fórmulas, folgas, vidro escolhido e quantidade', () => {
    const pecas = new Projeto('Box', itensBox).expandir(new Vao(1500, 1900, 2, 7));
    expect(pecas).toEqual([
      { projeto_item_id: 1, descricao: 'Folha fixa', tipo: 'vidro', produto_id: 7, quantidade: 2, largura_mm: 775, altura_mm: 1890 },
      { projeto_item_id: 2, descricao: 'Folha móvel', tipo: 'vidro', produto_id: 7, quantidade: 2, largura_mm: 775, altura_mm: 1870 },
      { projeto_item_id: 3, descricao: 'Kit', tipo: 'ferragem', produto_id: 99, quantidade: 2, largura_mm: null, altura_mm: null },
    ]);
  });
  it('arredonda a peça ao milímetro e multiplica quantidades fracionárias', () => {
    const p = new Projeto('X', [{ ...itensBox[0], formula_largura: 'L/3', quantidade: 1.5 }]).expandir(new Vao(1000, 1000, 3, 7));
    expect(p[0].largura_mm).toBe(333);
    expect(p[0].quantidade).toBe(4.5);
  });
  it('exige o vidro quando há item de vidro sem produto', () => {
    const projeto = new Projeto('Box', itensBox);
    expect(projeto.exigeVidro).toBe(true);
    expect(() => projeto.expandir(new Vao(1500, 1900, 1, null))).toThrow(/escolha o vidro/);
  });
  it('valida vão, itens e fórmulas', () => {
    expect(() => new Vao(0, 100)).toThrow(/vão/);
    expect(() => new Vao(100, 100, 0)).toThrow(/Quantidade/);
    expect(() => new Projeto('', [])).toThrow(/nome/);
    expect(() => new Projeto('X', []).expandir(new Vao(1, 1))).toThrow(/sem itens/);
    expect(() => new Projeto('X', [{ ...itensBox[2], produto_id: null }])).toThrow(/informe o produto/);
    expect(() => new Projeto('X', [{ ...itensBox[0], formula_largura: 'L +' }])).toThrow(/Folha fixa: fórmula de largura inválida/);
    expect(() => new Projeto('X', [{ ...itensBox[0], quantidade: 0 }])).toThrow(ProjetoInvalidoError);
  });
  it('erro de avaliação e medida não positiva citam o item', () => {
    const div = new Projeto('X', [{ ...itensBox[0], formula_largura: 'L/(A-1000)' }]);
    expect(() => div.expandir(new Vao(1000, 1000, 1, 7))).toThrow(/Folha fixa: Divisão por zero/);
    const neg = new Projeto('X', [{ ...itensBox[0], formula_altura: 'A - 2000' }]);
    expect(() => neg.expandir(new Vao(1000, 1000, 1, 7))).toThrow(/altura calculada não é positiva/);
  });
});
