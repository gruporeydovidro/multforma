/** Violação de regra de negócio do estoque. O service converte para HttpError. */
export class ErroEstoque extends Error {
  constructor(message: string, readonly tipo: 'invalido' | 'conflito' = 'invalido') {
    super(message);
    this.name = 'ErroEstoque';
  }
}
