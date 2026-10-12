import bcrypt from 'bcryptjs';
import { HttpError } from '../../lib/http.js';
import type { SessionUser } from '../../lib/auth.js';
import type { CredenciaisRepository } from './credenciais.repository.js';
import { TentativasLogin } from './tentativas-login.js';

/** Casos de uso de autenticação: login com limite de tentativas e revalidação da sessão. */
export class AuthService {
  constructor(
    private readonly credenciais: CredenciaisRepository,
    private readonly tentativas = new TentativasLogin(),
  ) {}

  /** `origem` identifica o cliente (ex.: IP) para o limite de tentativas. */
  async autenticar(login: string, senha: string, origem = ''): Promise<SessionUser> {
    const loginNorm = login.trim().toLowerCase();
    const chave = `${loginNorm}|${origem}`;
    if (this.tentativas.bloqueado(chave)) throw new HttpError(429, 'Muitas tentativas. Aguarde alguns minutos e tente de novo.');
    const u = await this.credenciais.buscarAtivoPorLogin(loginNorm);
    if (!u || !(await bcrypt.compare(senha, u.senha_hash))) {
      this.tentativas.registrarFalha(chave);
      throw new HttpError(401, 'Usuário ou senha inválidos');
    }
    this.tentativas.limpar(chave);
    return { id: u.id, nome: u.nome, login: u.login, perfil: u.perfil, filial_id: u.filial_id };
  }

  /**
   * Revalida a sessão a cada requisição: o usuário precisa continuar ativo, e perfil e filial
   * são sempre os atuais do banco (mudanças têm efeito imediato, sem esperar o token expirar).
   */
  async validarSessao(user: SessionUser): Promise<SessionUser> {
    const atual = await this.credenciais.buscarAtivoPorId(user.id);
    if (!atual) throw new HttpError(401, 'Sessão encerrada');
    return atual;
  }
}
