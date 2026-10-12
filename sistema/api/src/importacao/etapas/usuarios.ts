import { randomBytes } from 'node:crypto';
import bcrypt from 'bcryptjs';
import type { ContextoImportacao } from '../contexto.js';
import { texto } from '../conversores.js';
import { EtapaPorLote, type Conversao, type ConsultaOrigem } from './base.js';

/**
 * Usuários do sistema anterior. As senhas antigas não são reaproveitadas: cada usuário entra inativo,
 * com senha aleatória, e o administrador define a senha e ativa em Cadastros → Usuários.
 */
export class UsuariosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Usuários';
  readonly entidade = 'usuario';
  readonly tabela = 'usuario';
  readonly colunas = ['nome', 'login', 'senha_hash', 'perfil', 'filial_id', 'ativo'];
  private logins = new Set<string>();
  private filialPadrao!: number;

  protected async preparar(ctx: ContextoImportacao) {
    this.logins = new Set((await ctx.destino.query('select login from usuario')).rows.map((r) => r.login));
    this.filialPadrao = (await ctx.destino.query('select min(id) as id from filial')).rows[0].id;
  }
  protected consulta(): ConsultaOrigem {
    return {
      sql: `select u.cd_usuario, u.nm_usuario, (select min(uf.cd_filial) from usuario_filial uf where uf.cd_usuario = u.cd_usuario) as cd_filial from usuario u`,
      chave: ['cd_usuario'],
    };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_usuario).trim();
  }
  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    const login = String(l.cd_usuario).trim().toLowerCase().replace(/[^a-z0-9._-]/g, '');
    if (!login || login.length < 2) return { ignorar: 'login inválido' };
    if (this.logins.has(login)) return { ignorar: 'login já existe no VidroGest' };
    this.logins.add(login);
    const hash = await bcrypt.hash(randomBytes(24).toString('base64url'), 8);
    return { valores: [texto(l.nm_usuario) ?? login, login, hash, 'vendedor', (await ctx.mapa.id('filial', l.cd_filial)) ?? this.filialPadrao, false] };
  }
}
