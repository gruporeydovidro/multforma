import bcrypt from 'bcryptjs';
import { HttpError } from '../../lib/http.js';
import type { SessionUser } from '../../lib/auth.js';
import type { CredenciaisRepository } from './credenciais.repository.js';

/** Caso de uso de autenticação: confere as credenciais e devolve o usuário da sessão. */
export class AuthService {
  constructor(private readonly credenciais: CredenciaisRepository) {}

  async autenticar(login: string, senha: string): Promise<SessionUser> {
    const u = await this.credenciais.buscarAtivoPorLogin(login.trim().toLowerCase());
    if (!u || !(await bcrypt.compare(senha, u.senha_hash))) throw new HttpError(401, 'Usuário ou senha inválidos');
    return { id: u.id, nome: u.nome, login: u.login, perfil: u.perfil, filial_id: u.filial_id };
  }
}
