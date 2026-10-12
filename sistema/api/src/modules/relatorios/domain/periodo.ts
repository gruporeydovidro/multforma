/** Erro de parâmetro de relatório (vira 400 no service). */
export class PeriodoInvalidoError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'PeriodoInvalidoError';
  }
}

const p2 = (n: number) => String(n).padStart(2, '0');

/** Intervalo de datas inclusivo ('YYYY-MM-DD'). */
export class Periodo {
  private constructor(readonly de: string, readonly ate: string) {}

  static criar(de: string, ate: string): Periodo {
    if (de > ate) throw new PeriodoInvalidoError('Data inicial maior que a final');
    return new Periodo(de, ate);
  }

  /** Mês inteiro que contém a data. */
  static mesDe(dataIso: string): Periodo {
    const [y, m] = dataIso.split('-').map(Number);
    const ultimo = new Date(Date.UTC(y, m, 0)).getUTCDate();
    return new Periodo(`${y}-${p2(m)}-01`, `${y}-${p2(m)}-${p2(ultimo)}`);
  }

  /**
   * Preenche o que faltar: sem datas, o mês de `hoje`; só `de`, até o fim do mês de `de`;
   * só `ate`, desde o primeiro dia do mês de `ate`.
   */
  static resolver(entrada: { de?: string; ate?: string }, hoje: string): Periodo {
    if (entrada.de && entrada.ate) return Periodo.criar(entrada.de, entrada.ate);
    if (entrada.de) return Periodo.criar(entrada.de, Periodo.mesDe(entrada.de).ate);
    if (entrada.ate) return Periodo.criar(Periodo.mesDe(entrada.ate).de, entrada.ate);
    return Periodo.mesDe(hoje);
  }

  toJSON() {
    return { de: this.de, ate: this.ate };
  }
}
