import bcrypt from 'bcryptjs';
import { ErroDeValidacao } from './erros.js';

/** Senha em texto puro já validada; só sai do objeto como hash bcrypt. */
export class Senha {
  static readonly MINIMO = 6;
  /** bcrypt ignora o que passa de 72 bytes. */
  static readonly MAXIMO = 72;
  private static readonly CUSTO = 10;

  private constructor(private readonly texto: string) {}

  static criar(texto: string, campo = 'senha'): Senha {
    if (texto.length < Senha.MINIMO) throw new ErroDeValidacao(campo, `A senha deve ter ao menos ${Senha.MINIMO} caracteres`);
    if (Buffer.byteLength(texto) > Senha.MAXIMO) throw new ErroDeValidacao(campo, `A senha deve ter no máximo ${Senha.MAXIMO} caracteres`);
    return new Senha(texto);
  }

  gerarHash(): Promise<string> {
    return bcrypt.hash(this.texto, Senha.CUSTO);
  }

  static confere(texto: string, hash: string): Promise<boolean> {
    return bcrypt.compare(texto, hash);
  }
}
