/** Acumula condições SQL com parâmetros posicionais ($1, $2…), sem interpolar valores. */
export class SqlWhere {
  private readonly conds: string[] = [];
  readonly params: unknown[] = [];

  /** Registra um valor e devolve o seu marcador ($n). */
  p(v: unknown): string {
    this.params.push(v);
    return `$${this.params.length}`;
  }

  add(cond: string): this {
    this.conds.push(cond);
    return this;
  }

  get sql(): string {
    return this.conds.length ? this.conds.join(' and ') : 'true';
  }
}
