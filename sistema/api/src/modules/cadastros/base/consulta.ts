/** Peças para montar consultas de listagem com SQL parametrizado. */

export interface Paginacao {
  page: number;
  pageSize: number;
}

export interface Pagina<T> extends Paginacao {
  items: T[];
  total: number;
}

/** Filtro comum a todas as listagens de cadastro. */
export interface FiltroBase {
  q?: string;
}

/** Padrão `%termo%` para ILIKE, escapando os curingas digitados pelo usuário. */
export function termoLike(q: string): string {
  return `%${q.replace(/[\\%_]/g, '\\$&')}%`;
}

/**
 * Acumula condições de WHERE e os valores correspondentes.
 * Valores entram sempre por `param()`, que devolve o marcador `$n`; nomes de coluna vêm só do código.
 */
export class Filtros {
  private readonly condicoes: string[] = [];
  readonly params: unknown[] = [];

  param(valor: unknown): string {
    this.params.push(valor);
    return `$${this.params.length}`;
  }

  onde(condicao: string): this {
    this.condicoes.push(condicao);
    return this;
  }

  /** `coluna = valor`, ignorado quando o valor não foi informado. */
  igual(coluna: string, valor: unknown): this {
    if (valor !== undefined) this.onde(`${coluna} = ${this.param(valor)}`);
    return this;
  }

  /** Alguma das colunas contém o termo (sem diferenciar maiúsculas). */
  contem(colunas: string[], q: string | undefined): this {
    if (!q) return this;
    const p = this.param(termoLike(q));
    return this.onde(`(${colunas.map((c) => `${c} ilike ${p}`).join(' or ')})`);
  }

  get where(): string {
    return this.condicoes.length ? `where ${this.condicoes.join(' and ')}` : '';
  }
}
