import { FormulaError } from './erros.js';

/**
 * Avaliador seguro de fórmulas de projeto (sem eval/Function): tokenizador + parser recursivo descendente.
 *
 * Gramática:
 *   expr    := termo (('+' | '-') termo)*
 *   termo   := fator (('*' | '/') fator)*
 *   fator   := ('+' | '-') fator | primario
 *   primario:= NUMERO | VARIAVEL | FUNCAO '(' expr (',' expr)* ')' | '(' expr ')'
 * VARIAVEL: L (largura do vão) e A (altura do vão), sem distinção de maiúsculas. FUNCAO: min, max.
 */

export interface VariaveisFormula {
  L: number;
  A: number;
}

type Operador = '+' | '-' | '*' | '/';

type Token =
  | { tipo: 'numero'; valor: number; pos: number }
  | { tipo: 'nome'; valor: string; pos: number }
  | { tipo: 'simbolo'; valor: Operador | '(' | ')' | ','; pos: number };

/** Nó da árvore sintática: cada tipo sabe se avaliar (polimorfismo no lugar de switch). */
interface No {
  avaliar(vars: VariaveisFormula): number;
}

class Numero implements No {
  constructor(private readonly valor: number) {}
  avaliar() {
    return this.valor;
  }
}

class Variavel implements No {
  constructor(private readonly nome: keyof VariaveisFormula) {}
  avaliar(vars: VariaveisFormula) {
    return vars[this.nome];
  }
}

class Negacao implements No {
  constructor(private readonly expr: No) {}
  avaliar(vars: VariaveisFormula) {
    return -this.expr.avaliar(vars);
  }
}

class Binaria implements No {
  constructor(private readonly op: Operador, private readonly esq: No, private readonly dir: No) {}
  avaliar(vars: VariaveisFormula) {
    const a = this.esq.avaliar(vars);
    const b = this.dir.avaliar(vars);
    switch (this.op) {
      case '+': return a + b;
      case '-': return a - b;
      case '*': return a * b;
      case '/':
        if (b === 0) throw new FormulaError('Divisão por zero na fórmula');
        return a / b;
    }
  }
}

const FUNCOES = { min: Math.min, max: Math.max } as const;
type NomeFuncao = keyof typeof FUNCOES;

class Chamada implements No {
  constructor(private readonly nome: NomeFuncao, private readonly args: No[]) {}
  avaliar(vars: VariaveisFormula) {
    return FUNCOES[this.nome](...this.args.map((a) => a.avaliar(vars)));
  }
}

export class Tokenizador {
  static tokenizar(src: string): Token[] {
    const tokens: Token[] = [];
    let i = 0;
    while (i < src.length) {
      const c = src[i];
      if (/\s/.test(c)) {
        i++;
      } else if (/[0-9.]/.test(c)) {
        const ini = i;
        while (i < src.length && /[0-9.]/.test(src[i])) i++;
        const txt = src.slice(ini, i);
        if (!/^(\d+(\.\d*)?|\.\d+)$/.test(txt)) throw new FormulaError(`Número inválido "${txt}" na posição ${ini + 1}`);
        tokens.push({ tipo: 'numero', valor: Number(txt), pos: ini });
      } else if (/[A-Za-z_]/.test(c)) {
        const ini = i;
        while (i < src.length && /[A-Za-z0-9_]/.test(src[i])) i++;
        tokens.push({ tipo: 'nome', valor: src.slice(ini, i), pos: ini });
      } else if ('+-*/(),'.includes(c)) {
        tokens.push({ tipo: 'simbolo', valor: c as Operador, pos: i });
        i++;
      } else {
        throw new FormulaError(`Caractere inválido "${c}" na posição ${i + 1}`);
      }
    }
    return tokens;
  }
}

class Parser {
  private i = 0;
  constructor(private readonly tokens: Token[]) {}

  analisar(): No {
    if (this.tokens.length === 0) throw new FormulaError('Fórmula vazia');
    const no = this.expr();
    const sobra = this.tokens[this.i];
    if (sobra) throw new FormulaError(`Símbolo inesperado "${sobra.valor}" na posição ${sobra.pos + 1}`);
    return no;
  }

  private simbolo(...aceitos: string[]): string | undefined {
    const tk = this.tokens[this.i];
    if (tk?.tipo === 'simbolo' && aceitos.includes(tk.valor)) {
      this.i++;
      return tk.valor;
    }
    return undefined;
  }

  private exigir(s: string) {
    if (this.simbolo(s)) return;
    const tk = this.tokens[this.i];
    throw new FormulaError(tk ? `Esperado "${s}" na posição ${tk.pos + 1}` : `Esperado "${s}" no fim da fórmula`);
  }

  private expr(): No {
    let no = this.termo();
    let op: string | undefined;
    while ((op = this.simbolo('+', '-'))) no = new Binaria(op as Operador, no, this.termo());
    return no;
  }

  private termo(): No {
    let no = this.fator();
    let op: string | undefined;
    while ((op = this.simbolo('*', '/'))) no = new Binaria(op as Operador, no, this.fator());
    return no;
  }

  private fator(): No {
    const op = this.simbolo('+', '-');
    if (!op) return this.primario();
    const e = this.fator();
    return op === '-' ? new Negacao(e) : e;
  }

  private primario(): No {
    const tk = this.tokens[this.i];
    if (!tk) throw new FormulaError('Fórmula incompleta');
    if (tk.tipo === 'numero') {
      this.i++;
      return new Numero(tk.valor);
    }
    if (tk.tipo === 'nome') {
      this.i++;
      return this.nome(tk.valor);
    }
    if (this.simbolo('(')) {
      const e = this.expr();
      this.exigir(')');
      return e;
    }
    throw new FormulaError(`Símbolo inesperado "${tk.valor}" na posição ${tk.pos + 1}`);
  }

  private nome(nome: string): No {
    const funcao = nome.toLowerCase();
    if (Object.hasOwn(FUNCOES, funcao)) {
      this.exigir('(');
      const args = [this.expr()];
      while (this.simbolo(',')) args.push(this.expr());
      this.exigir(')');
      return new Chamada(funcao as NomeFuncao, args);
    }
    const variavel = nome.toUpperCase();
    if (variavel === 'L' || variavel === 'A') return new Variavel(variavel);
    throw new FormulaError(`Variável desconhecida "${nome}" (use L, A, min ou max)`);
  }
}

/** Fórmula já analisada; pode ser avaliada várias vezes. */
export class Formula {
  static readonly TAMANHO_MAXIMO = 200;

  private constructor(readonly texto: string, private readonly raiz: No) {}

  static compilar(texto: string): Formula {
    if (typeof texto !== 'string') throw new FormulaError('Fórmula inválida');
    if (texto.length > Formula.TAMANHO_MAXIMO) throw new FormulaError(`Fórmula muito longa (máximo ${Formula.TAMANHO_MAXIMO} caracteres)`);
    return new Formula(texto, new Parser(Tokenizador.tokenizar(texto)).analisar());
  }

  avaliar(vars: VariaveisFormula): number {
    const v = this.raiz.avaliar(vars);
    if (!Number.isFinite(v)) throw new FormulaError('Resultado da fórmula inválido');
    return v;
  }
}

/** Fachada de uso simples. */
export const AvaliadorFormula = {
  avaliar(texto: string, vars: VariaveisFormula): number {
    return Formula.compilar(texto).avaliar(vars);
  },
  /** Devolve a mensagem de erro, ou null se a fórmula for válida. */
  validar(texto: string): string | null {
    try {
      Formula.compilar(texto);
      return null;
    } catch (e) {
      return (e as Error).message;
    }
  },
};
