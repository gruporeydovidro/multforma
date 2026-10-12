/** Violação de regra de negócio da produção. O service converte para HttpError. */
export class ErroProducao extends Error {
  constructor(message: string, readonly tipo: 'invalido' | 'conflito' | 'nao_encontrado' = 'invalido') {
    super(message);
    this.name = 'ErroProducao';
  }
}
