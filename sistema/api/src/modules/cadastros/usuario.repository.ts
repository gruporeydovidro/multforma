import { query, queryOne } from '../../lib/db.js';
import type { Perfil } from '../../lib/auth.js';
import { logAcao } from '../../lib/log.js';
import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { Filtros } from './base/consulta.js';
import type { UsuarioFiltro } from './cadastros.schemas.js';

/** Usuário como sai da API: nunca inclui senha_hash. */
export interface Usuario {
  id: number;
  nome: string;
  login: string;
  perfil: Perfil;
  filial_id: number;
  filial_nome: string;
  ativo: boolean;
  criado_em: string;
}

const COLUNAS = 'u.id, u.nome, u.login, u.perfil, u.filial_id, f.nome as filial_nome, u.ativo, u.criado_em';

export class UsuarioRepository extends CadastroRepository<Usuario, Usuario, UsuarioFiltro> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'usuario',
    alias: 'u',
    origem: 'usuario u join filial f on f.id = u.filial_id',
    colunasLista: COLUNAS,
    colunasDetalhe: COLUNAS,
    colunasGravaveis: ['nome', 'login', 'senha_hash', 'perfil', 'filial_id', 'ativo'],
    desativavel: true,
  };

  protected filtrar(f: Filtros, { q, perfil, ativo }: UsuarioFiltro): void {
    f.contem(['u.nome', 'u.login'], q).igual('u.perfil', perfil).igual('u.ativo', ativo);
  }

  protected ordenar(): string {
    return 'u.ativo desc, lower(u.nome), u.id';
  }

  async loginEmUso(login: string, excetoId?: number): Promise<boolean> {
    return !!(await queryOne('select 1 from usuario where login = $1 and id <> $2', [login, excetoId ?? 0], this.db));
  }

  filialExiste(id: number): Promise<boolean> {
    return this.existe('filial', id);
  }

  async buscarHash(id: number): Promise<string | undefined> {
    const row = await queryOne<{ senha_hash: string }>('select senha_hash from usuario where id = $1', [id], this.db);
    return row?.senha_hash;
  }

  async gravarHash(id: number, hash: string): Promise<void> {
    await query('update usuario set senha_hash = $2 where id = $1', [id, hash], this.db);
  }

  registrarAcao(autorId: number, acao: string, usuarioId: number): Promise<void> {
    return logAcao(this.db, autorId, acao, 'usuario', usuarioId);
  }
}
