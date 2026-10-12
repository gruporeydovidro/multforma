import { ErroDeValidacao } from './erros.js';

/** Login de usuário: minúsculo, 3 a 40 caracteres entre letras, números, ponto, hífen e sublinhado. */
export class Login {
  private constructor(readonly valor: string) {}

  static criar(texto: string): Login {
    const valor = texto.trim().toLowerCase();
    if (valor.length < 3 || valor.length > 40) throw new ErroDeValidacao('login', 'O login deve ter de 3 a 40 caracteres');
    if (!/^[a-z0-9._-]+$/.test(valor)) throw new ErroDeValidacao('login', 'Use no login apenas letras, números, ponto, hífen ou sublinhado');
    return new Login(valor);
  }

  toString(): string {
    return this.valor;
  }
}

/** O administrador não pode se trancar fora do sistema: nem se desativar, nem perder o perfil, nem se excluir. */
export class PoliticaDeAutoAlteracao {
  constructor(private readonly autorId: number) {}

  validarEdicao(alvoId: number, alteracao: { ativo?: boolean; perfil?: string }): void {
    if (alvoId !== this.autorId) return;
    if (alteracao.ativo === false) throw new ErroDeValidacao('ativo', 'Você não pode desativar o seu próprio usuário');
    if (alteracao.perfil !== undefined && alteracao.perfil !== 'admin') {
      throw new ErroDeValidacao('perfil', 'Você não pode remover o seu próprio perfil de administrador');
    }
  }

  validarExclusao(alvoId: number): void {
    if (alvoId === this.autorId) throw new ErroDeValidacao('id', 'Você não pode excluir o seu próprio usuário');
  }
}
