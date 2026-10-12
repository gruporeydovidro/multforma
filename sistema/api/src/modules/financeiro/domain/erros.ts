/** Violação de regra de negócio do financeiro (convertida em HTTP pelo service). */
export class RegraFinanceiraError extends Error {
  constructor(message: string, readonly tipo: 'conflito' | 'invalido' = 'conflito') {
    super(message);
    this.name = 'RegraFinanceiraError';
  }

  static conflito(message: string) {
    return new RegraFinanceiraError(message, 'conflito');
  }

  static invalido(message: string) {
    return new RegraFinanceiraError(message, 'invalido');
  }
}
