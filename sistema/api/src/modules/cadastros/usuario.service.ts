import type { SessionUser } from '../../lib/auth.js';
import { conflict, HttpError } from '../../lib/http.js';
import type { Dados } from './base/cadastro.repository.js';
import { CadastroService } from './base/cadastro.service.js';
import type { EmTransacao } from './base/transacao.js';
import type { UsuarioCriar, UsuarioEditar, UsuarioFiltro } from './cadastros.schemas.js';
import { ErroDeValidacao } from './domain/erros.js';
import { Senha } from './domain/senha.js';
import { Login, PoliticaDeAutoAlteracao } from './domain/usuario.js';
import type { Usuario, UsuarioRepository } from './usuario.repository.js';

/**
 * Usuários do sistema: login único em minúsculas, senha só como hash e proteção contra autobloqueio.
 * Cada gravação e o seu registro em log_sistema acontecem na mesma transação.
 */
export class UsuarioService extends CadastroService<Usuario, Usuario, UsuarioFiltro, UsuarioCriar, UsuarioEditar, UsuarioRepository> {
  constructor(private readonly usuarios: UsuarioRepository, transacao: EmTransacao<UsuarioRepository>) {
    super(usuarios, { nome: 'Usuário', genero: 'm' }, transacao);
  }

  /** Redefinição de senha de outro usuário pelo administrador. */
  async redefinirSenha(id: number, senha: string, autor: SessionUser): Promise<void> {
    await this.obter(id);
    const nova = await this.regra(() => Senha.criar(senha));
    await this.gravarSenha(id, await nova.gerarHash(), autor, 'usuario_senha_redefinida');
  }

  /** Troca da própria senha, conferindo a atual. */
  async alterarMinhaSenha(autor: SessionUser, senhaAtual: string, novaSenha: string): Promise<void> {
    const hash = await this.usuarios.buscarHash(autor.id);
    if (!hash) throw new HttpError(404, 'Usuário não encontrado');
    const novoHash = await this.regra(async () => {
      if (!(await Senha.confere(senhaAtual, hash))) throw new ErroDeValidacao('senha_atual', 'Senha atual incorreta');
      return Senha.criar(novaSenha, 'nova_senha').gerarHash();
    });
    await this.gravarSenha(autor.id, novoHash, autor, 'usuario_senha_alterada');
  }

  protected async aposCriar(repo: UsuarioRepository, id: number, autor: SessionUser): Promise<void> {
    await repo.registrarAcao(autor.id, 'usuario_criado', id);
  }

  protected async aposAtualizar(repo: UsuarioRepository, id: number, autor: SessionUser): Promise<void> {
    await repo.registrarAcao(autor.id, 'usuario_alterado', id);
  }

  /** Grava o hash (calculado fora da transação, pois o bcrypt é lento) e o log juntos. */
  private gravarSenha(id: number, hash: string, autor: SessionUser, acao: string): Promise<void> {
    return this.transacao(async (repo) => {
      await repo.gravarHash(id, hash);
      await repo.registrarAcao(autor.id, acao, id);
    });
  }

  protected async prepararCriacao({ senha, ...dados }: UsuarioCriar, autor: SessionUser): Promise<Dados> {
    const login = await this.loginDisponivel(dados.login);
    const filialId = dados.filial_id ?? autor.filial_id;
    await this.validarFilial(filialId);
    const hash = await Senha.criar(senha).gerarHash();
    return { ...dados, login, filial_id: filialId, senha_hash: hash };
  }

  protected async prepararEdicao(dados: UsuarioEditar, atual: Usuario, autor: SessionUser): Promise<Dados> {
    new PoliticaDeAutoAlteracao(autor.id).validarEdicao(atual.id, dados);
    const login = dados.login === undefined ? undefined : await this.loginDisponivel(dados.login, atual.id);
    if (dados.filial_id !== undefined) await this.validarFilial(dados.filial_id);
    return { ...dados, login };
  }

  protected antesDeExcluir(id: number, autor: SessionUser): void {
    new PoliticaDeAutoAlteracao(autor.id).validarExclusao(id);
  }

  private async loginDisponivel(texto: string, excetoId?: number): Promise<string> {
    const login = Login.criar(texto).valor;
    if (await this.usuarios.loginEmUso(login, excetoId)) throw conflict('Este login já está em uso');
    return login;
  }

  private async validarFilial(id: number): Promise<void> {
    if (!(await this.usuarios.filialExiste(id))) throw new ErroDeValidacao('filial_id', 'Filial não encontrada');
  }
}
