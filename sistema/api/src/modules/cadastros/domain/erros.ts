/** Violação de uma regra de cadastro, ligada ao campo que a causou. Convertida em 400 pelos services. */
export class ErroDeValidacao extends Error {
  constructor(readonly campo: string, mensagem: string) {
    super(mensagem);
    this.name = 'ErroDeValidacao';
  }
}
