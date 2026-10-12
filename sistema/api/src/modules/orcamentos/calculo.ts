/**
 * Regras de cálculo do orçamento (funções puras, sem acesso a banco).
 * Medidas em milímetros; dinheiro arredondado a 2 casas; medida cobrada a 4 casas.
 * Ver "Regras de cálculo" em docs/CONVENCOES.md.
 */

export type Unidade = 'M2' | 'ML' | 'UN' | 'PC' | 'KG';

/** Erro de regra de cálculo (dados insuficientes ou incoerentes). As rotas o convertem em 400. */
export class CalculoError extends Error {}

/** Erro de fórmula de projeto (sintaxe inválida, variável desconhecida, divisão por zero). */
export class FormulaError extends CalculoError {}

function roundTo(v: number, casas: number): number {
  const f = 10 ** casas;
  // Number.EPSILON evita 1.005 -> 1.00 por imprecisão binária.
  return Math.round((v + Math.sign(v) * Number.EPSILON) * f) / f;
}

export const round2 = (v: number) => roundTo(v, 2);
export const round4 = (v: number) => roundTo(v, 4);

/** Arredonda uma dimensão (mm) para cima ao múltiplo de valor_cm * 10. Sem arredondamento, devolve a própria dimensão. */
export function arredondarDimensao(dimMm: number, valorCm: number | null | undefined): number {
  if (!valorCm || valorCm <= 0) return dimMm;
  const passo = valorCm * 10;
  return Math.ceil(dimMm / passo) * passo;
}

export interface ProdutoCalculo {
  unidade_venda: Unidade;
  area_minima_m2?: number | null;
  /** valor_cm do arredondamento do produto (null = sem arredondamento). */
  arredondamento_cm?: number | null;
}

export interface ItemCalculoInput {
  quantidade: number;
  largura_mm?: number | null;
  altura_mm?: number | null;
  preco_unitario: number;
  desconto_valor?: number | null;
}

export interface ItemCalculado {
  largura_calc_mm: number | null;
  altura_calc_mm: number | null;
  medida_cobrada: number;
  total: number;
}

/** Quantidade cobrada do item conforme a unidade de venda (m², metro linear de perímetro ou unidades). */
export function medidaCobrada(produto: ProdutoCalculo, quantidade: number, larguraCalc: number | null, alturaCalc: number | null): number {
  switch (produto.unidade_venda) {
    case 'M2': {
      if (!larguraCalc || !alturaCalc) throw new CalculoError('Informe largura e altura para produto vendido por m²');
      const areaUn = Math.max((larguraCalc * alturaCalc) / 1e6, Number(produto.area_minima_m2 ?? 0));
      return round4(areaUn * quantidade);
    }
    case 'ML': {
      if (!larguraCalc || !alturaCalc) throw new CalculoError('Informe largura e altura para produto vendido por metro linear');
      return round4(((2 * (larguraCalc + alturaCalc)) / 1000) * quantidade);
    }
    default:
      return round4(quantidade);
  }
}

/** Calcula medidas arredondadas, medida cobrada e total de um item. */
export function calcularItem(produto: ProdutoCalculo, item: ItemCalculoInput): ItemCalculado {
  const { quantidade, preco_unitario } = item;
  if (!(quantidade > 0)) throw new CalculoError('Quantidade deve ser maior que zero');
  if (preco_unitario < 0) throw new CalculoError('Preço unitário não pode ser negativo');
  const desconto = Number(item.desconto_valor ?? 0);
  if (desconto < 0) throw new CalculoError('Desconto do item não pode ser negativo');
  for (const [nome, v] of [['Largura', item.largura_mm], ['Altura', item.altura_mm]] as const) {
    if (v !== null && v !== undefined && !(v > 0)) throw new CalculoError(`${nome} deve ser maior que zero`);
  }
  const larguraCalc = item.largura_mm ? arredondarDimensao(item.largura_mm, produto.arredondamento_cm) : null;
  const alturaCalc = item.altura_mm ? arredondarDimensao(item.altura_mm, produto.arredondamento_cm) : null;
  const medida = medidaCobrada(produto, quantidade, larguraCalc, alturaCalc);
  const total = round2(medida * preco_unitario - desconto);
  if (total < 0) throw new CalculoError('Desconto do item maior que o valor do item');
  return { largura_calc_mm: larguraCalc, altura_calc_mm: alturaCalc, medida_cobrada: medida, total };
}

export interface TotaisInput {
  desconto_pct?: number | null;
  desconto_valor?: number | null;
  acrescimo_valor?: number | null;
  frete_valor?: number | null;
}

export interface Totais {
  subtotal: number;
  /** Desconto geral efetivamente aplicado (em R$). */
  desconto: number;
  total: number;
}

/**
 * Totais do orçamento: desconto % tem precedência sobre o desconto em valor.
 * O desconto é limitado ao subtotal para o total nunca ficar negativo por causa dele.
 */
export function calcularTotais(totaisItens: number[], h: TotaisInput): Totais {
  const subtotal = round2(totaisItens.reduce((s, v) => s + Number(v), 0));
  const pct = Number(h.desconto_pct ?? 0);
  const bruto = pct > 0 ? round2((subtotal * pct) / 100) : round2(Number(h.desconto_valor ?? 0));
  const desconto = Math.min(Math.max(bruto, 0), subtotal);
  const total = round2(subtotal - desconto + Number(h.acrescimo_valor ?? 0) + Number(h.frete_valor ?? 0));
  return { subtotal, desconto, total };
}

/** Gera N parcelas mensais que somam exatamente o total (a diferença de centavos vai para a primeira). */
export function dividirParcelas(total: number, n: number): number[] {
  if (!Number.isInteger(n) || n < 1) throw new CalculoError('Número de parcelas inválido');
  const centavos = Math.round(total * 100);
  const base = Math.floor(centavos / n);
  const resto = centavos - base * n;
  return Array.from({ length: n }, (_, i) => (base + (i === 0 ? resto : 0)) / 100);
}

// ---------------------------------------------------------------------------
// Avaliador de fórmulas: tokenizador + parser recursivo descendente.
// Gramática:
//   expr   := termo (('+' | '-') termo)*
//   termo  := fator (('*' | '/') fator)*
//   fator  := ('+' | '-') fator | primario
//   prim   := NUMERO | VAR | FUNC '(' expr (',' expr)* ')' | '(' expr ')'
// VAR: L (largura do vão) e A (altura do vão), sem distinção de maiúsculas. FUNC: min, max.
// ---------------------------------------------------------------------------

type Token =
  | { t: 'num'; v: number; pos: number }
  | { t: 'id'; v: string; pos: number }
  | { t: 'op'; v: '+' | '-' | '*' | '/' | '(' | ')' | ','; pos: number };

export type Ast =
  | { k: 'num'; v: number }
  | { k: 'var'; nome: 'L' | 'A' }
  | { k: 'neg'; e: Ast }
  | { k: 'bin'; op: '+' | '-' | '*' | '/'; a: Ast; b: Ast }
  | { k: 'fn'; nome: 'min' | 'max'; args: Ast[] };

export interface VariaveisFormula {
  L: number;
  A: number;
}

const MAX_FORMULA = 200;
const VARIAVEIS = new Set(['L', 'A']);
const FUNCOES = new Set(['min', 'max']);

function tokenizar(src: string): Token[] {
  const tokens: Token[] = [];
  let i = 0;
  while (i < src.length) {
    const c = src[i];
    if (c === ' ' || c === '\t' || c === '\n' || c === '\r') {
      i++;
    } else if ((c >= '0' && c <= '9') || c === '.') {
      const ini = i;
      while (i < src.length && ((src[i] >= '0' && src[i] <= '9') || src[i] === '.')) i++;
      const txt = src.slice(ini, i);
      if (!/^(\d+(\.\d*)?|\.\d+)$/.test(txt)) throw new FormulaError(`Número inválido "${txt}" na posição ${ini + 1}`);
      tokens.push({ t: 'num', v: Number(txt), pos: ini });
    } else if (/[A-Za-z_]/.test(c)) {
      const ini = i;
      while (i < src.length && /[A-Za-z0-9_]/.test(src[i])) i++;
      tokens.push({ t: 'id', v: src.slice(ini, i), pos: ini });
    } else if ('+-*/(),'.includes(c)) {
      tokens.push({ t: 'op', v: c as '+', pos: i });
      i++;
    } else {
      throw new FormulaError(`Caractere inválido "${c}" na posição ${i + 1}`);
    }
  }
  return tokens;
}

class Parser {
  private i = 0;
  constructor(private tokens: Token[]) {}

  parse(): Ast {
    if (this.tokens.length === 0) throw new FormulaError('Fórmula vazia');
    const ast = this.expr();
    const sobra = this.tokens[this.i];
    if (sobra) throw new FormulaError(`Símbolo inesperado "${sobra.v}" na posição ${sobra.pos + 1}`);
    return ast;
  }

  private peekOp(...ops: string[]): string | undefined {
    const tk = this.tokens[this.i];
    return tk && tk.t === 'op' && ops.includes(tk.v) ? tk.v : undefined;
  }

  private expect(op: string) {
    const tk = this.tokens[this.i];
    if (!tk || tk.t !== 'op' || tk.v !== op) {
      throw new FormulaError(tk ? `Esperado "${op}" na posição ${tk.pos + 1}` : `Esperado "${op}" no fim da fórmula`);
    }
    this.i++;
  }

  private expr(): Ast {
    let a = this.termo();
    let op: string | undefined;
    while ((op = this.peekOp('+', '-'))) {
      this.i++;
      a = { k: 'bin', op: op as '+' | '-', a, b: this.termo() };
    }
    return a;
  }

  private termo(): Ast {
    let a = this.fator();
    let op: string | undefined;
    while ((op = this.peekOp('*', '/'))) {
      this.i++;
      a = { k: 'bin', op: op as '*' | '/', a, b: this.fator() };
    }
    return a;
  }

  private fator(): Ast {
    const op = this.peekOp('+', '-');
    if (op) {
      this.i++;
      const e = this.fator();
      return op === '-' ? { k: 'neg', e } : e;
    }
    return this.primario();
  }

  private primario(): Ast {
    const tk = this.tokens[this.i];
    if (!tk) throw new FormulaError('Fórmula incompleta');
    if (tk.t === 'num') {
      this.i++;
      return { k: 'num', v: tk.v };
    }
    if (tk.t === 'id') {
      this.i++;
      const up = tk.v.toUpperCase();
      const low = tk.v.toLowerCase();
      if (FUNCOES.has(low)) {
        this.expect('(');
        const args = [this.expr()];
        while (this.peekOp(',')) {
          this.i++;
          args.push(this.expr());
        }
        this.expect(')');
        return { k: 'fn', nome: low as 'min' | 'max', args };
      }
      if (VARIAVEIS.has(up)) return { k: 'var', nome: up as 'L' | 'A' };
      throw new FormulaError(`Variável desconhecida "${tk.v}" (use L, A, min ou max)`);
    }
    if (tk.v === '(') {
      this.i++;
      const e = this.expr();
      this.expect(')');
      return e;
    }
    throw new FormulaError(`Símbolo inesperado "${tk.v}" na posição ${tk.pos + 1}`);
  }
}

/** Analisa a fórmula e devolve a árvore sintática. Lança FormulaError se for inválida. */
export function compilarFormula(formula: string): Ast {
  if (typeof formula !== 'string') throw new FormulaError('Fórmula inválida');
  if (formula.length > MAX_FORMULA) throw new FormulaError(`Fórmula muito longa (máximo ${MAX_FORMULA} caracteres)`);
  return new Parser(tokenizar(formula)).parse();
}

export function avaliarAst(ast: Ast, vars: VariaveisFormula): number {
  switch (ast.k) {
    case 'num':
      return ast.v;
    case 'var':
      return vars[ast.nome];
    case 'neg':
      return -avaliarAst(ast.e, vars);
    case 'fn': {
      const vals = ast.args.map((a) => avaliarAst(a, vars));
      return ast.nome === 'min' ? Math.min(...vals) : Math.max(...vals);
    }
    case 'bin': {
      const a = avaliarAst(ast.a, vars);
      const b = avaliarAst(ast.b, vars);
      if (ast.op === '+') return a + b;
      if (ast.op === '-') return a - b;
      if (ast.op === '*') return a * b;
      if (b === 0) throw new FormulaError('Divisão por zero na fórmula');
      return a / b;
    }
  }
}

/** Avalia uma fórmula com L e A (mm). Sem eval/Function. */
export function avaliarFormula(formula: string, vars: VariaveisFormula): number {
  const v = avaliarAst(compilarFormula(formula), vars);
  if (!Number.isFinite(v)) throw new FormulaError('Resultado da fórmula inválido');
  return v;
}

/** Valida a sintaxe; devolve a mensagem de erro ou null. */
export function validarFormula(formula: string): string | null {
  try {
    compilarFormula(formula);
    return null;
  } catch (e) {
    return (e as Error).message;
  }
}

// ---------------------------------------------------------------------------
// Expansão de projeto em peças
// ---------------------------------------------------------------------------

export interface ProjetoItemCalculo {
  id?: number;
  descricao: string;
  tipo: string;
  produto_id: number | null;
  quantidade: number;
  formula_largura: string | null;
  formula_altura: string | null;
  folga_largura_mm: number;
  folga_altura_mm: number;
}

export interface PecaProjeto {
  projeto_item_id?: number;
  descricao: string;
  tipo: string;
  produto_id: number;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

const vazia = (f: string | null | undefined) => !f || !f.trim();

function dimensao(formula: string | null, folga: number, vars: VariaveisFormula, descricao: string, nome: string): number | null {
  if (vazia(formula)) return null;
  let v: number;
  try {
    v = avaliarFormula(formula!, vars);
  } catch (e) {
    throw new FormulaError(`${descricao}: ${(e as Error).message}`);
  }
  const mm = Math.round(v - (folga ?? 0));
  if (mm <= 0) throw new CalculoError(`${descricao}: ${nome} calculada não é positiva (${mm} mm)`);
  return mm;
}

/**
 * Expande os itens do projeto em peças para um vão L x A.
 * Produto = produto do item ou, se nulo, o vidro escolhido. Quantidade = item.quantidade * quantidade do projeto.
 */
export function expandirProjeto(
  itens: ProjetoItemCalculo[],
  p: { largura_vao_mm: number; altura_vao_mm: number; quantidade: number; vidro_produto_id?: number | null },
): PecaProjeto[] {
  if (!(p.largura_vao_mm > 0) || !(p.altura_vao_mm > 0)) throw new CalculoError('Informe largura e altura do vão');
  if (!(p.quantidade > 0)) throw new CalculoError('Quantidade deve ser maior que zero');
  const vars = { L: p.largura_vao_mm, A: p.altura_vao_mm };
  return itens.map((it) => {
    const produtoId = it.produto_id ?? p.vidro_produto_id ?? null;
    if (!produtoId) throw new CalculoError(`${it.descricao}: escolha o vidro do projeto`);
    return {
      projeto_item_id: it.id,
      descricao: it.descricao,
      tipo: it.tipo,
      produto_id: produtoId,
      quantidade: Math.round(Number(it.quantidade) * p.quantidade * 1000) / 1000,
      largura_mm: dimensao(it.formula_largura, it.folga_largura_mm, vars, it.descricao, 'largura'),
      altura_mm: dimensao(it.formula_altura, it.folga_altura_mm, vars, it.descricao, 'altura'),
    };
  });
}
