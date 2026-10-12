import { queryOne, type Db } from '../../lib/db.js';
import type { Perfil } from '../../lib/auth.js';

export interface CredencialUsuario {
  id: number;
  nome: string;
  login: string;
  perfil: Perfil;
  filial_id: number;
  senha_hash: string;
}

/** Acesso às credenciais de login. */
export class CredenciaisRepository {
  constructor(private readonly db: Db) {}

  buscarAtivoPorLogin(login: string): Promise<CredencialUsuario | undefined> {
    return queryOne<CredencialUsuario>(
      'select id, nome, login, perfil, filial_id, senha_hash from usuario where login = $1 and ativo',
      [login],
      this.db,
    );
  }

  async estaAtivo(id: number): Promise<boolean> {
    const r = await queryOne<{ ativo: boolean }>('select ativo from usuario where id = $1', [id], this.db);
    return r?.ativo === true;
  }
}
