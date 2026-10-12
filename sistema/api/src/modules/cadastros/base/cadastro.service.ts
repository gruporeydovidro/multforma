import type { QueryResultRow } from 'pg';
import type { SessionUser } from '../../../lib/auth.js';
import { badRequest, conflict, HttpError } from '../../../lib/http.js';
import { ErroDeValidacao } from '../domain/erros.js';
import type { CadastroRepository, Dados } from './cadastro.repository.js';
import type { FiltroBase, Pagina, Paginacao } from './consulta.js';
import type { EmTransacao } from './transacao.js';

/** Nome do cadastro para as mensagens, com o gênero gramatical. */
export interface Rotulo {
  nome: string;
  genero: 'm' | 'f';
}

/** Resultado do DELETE: excluído de fato ou só desativado por ter vínculos. */
export type Exclusao = 'excluido' | 'desativado';

/** Converte uma violação de regra do domínio em 400 com o erro no campo (formato do Zod flatten). */
export function comoErroHttp(err: unknown): unknown {
  if (err instanceof ErroDeValidacao) {
    return badRequest(err.message, { formErrors: [], fieldErrors: { [err.campo]: [err.message] } });
  }
  return err;
}

/**
 * Casos de uso comuns a todo cadastro (listar, obter, criar, atualizar, excluir ou desativar).
 * As subclasses aplicam as regras próprias nos ganchos `prepararCriacao`, `prepararEdicao` e `antesDeExcluir`;
 * `aposCriar` e `aposAtualizar` (ex.: log) rodam na mesma transação da gravação, que é desfeita se eles falharem.
 */
export abstract class CadastroService<
  TDetalhe extends QueryResultRow,
  TItem extends QueryResultRow,
  TFiltro extends FiltroBase,
  TCriar extends Dados,
  TEditar extends Dados,
  TRepo extends CadastroRepository<TDetalhe, TItem, TFiltro> = CadastroRepository<TDetalhe, TItem, TFiltro>,
> {
  /**
   * @param repo repositório ligado ao pool, para leituras.
   * @param transacao fábrica que abre uma transação com o repositório ligado a ela, para as gravações.
   */
  constructor(
    protected readonly repo: TRepo,
    private readonly rotulo: Rotulo,
    protected readonly transacao: EmTransacao<TRepo>,
  ) {}

  listar(filtro: TFiltro & Paginacao): Promise<Pagina<TItem>> {
    return this.repo.listar(filtro);
  }

  async obter(id: number): Promise<TDetalhe> {
    const registro = await this.repo.buscarPorId(id);
    if (!registro) throw new HttpError(404, `${this.rotulo.nome} não encontrad${this.sufixo}`);
    return registro;
  }

  async criar(dados: TCriar, autor: SessionUser): Promise<TDetalhe> {
    const prontos = await this.regra(() => this.prepararCriacao(dados, autor));
    const id = await this.transacao(async (repo) => {
      const novo = await repo.inserir(prontos);
      await this.aposCriar(repo, novo, autor);
      return novo;
    });
    return this.obter(id);
  }

  async atualizar(id: number, dados: TEditar, autor: SessionUser): Promise<TDetalhe> {
    const atual = await this.obter(id);
    const prontos = await this.regra(() => this.prepararEdicao(dados, atual, autor));
    await this.transacao(async (repo) => {
      await repo.atualizar(id, prontos);
      await this.aposAtualizar(repo, id, autor);
    });
    return this.obter(id);
  }

  async excluir(id: number, autor: SessionUser): Promise<Exclusao> {
    await this.regra(() => this.antesDeExcluir(id, autor));
    const resultado = await this.repo.excluir(id);
    if (resultado === 'inexistente') throw new HttpError(404, `${this.rotulo.nome} não encontrad${this.sufixo}`);
    if (resultado === 'excluido') return 'excluido';
    if (!this.repo.desativavel) throw conflict(`${this.rotulo.nome} possui vínculos e não pode ser excluíd${this.sufixo}`);
    await this.repo.desativar(id);
    return 'desativado';
  }

  protected prepararCriacao(dados: TCriar, _autor: SessionUser): Dados | Promise<Dados> {
    return dados;
  }

  protected prepararEdicao(dados: TEditar, _atual: TDetalhe, _autor: SessionUser): Dados | Promise<Dados> {
    return dados;
  }

  protected antesDeExcluir(_id: number, _autor: SessionUser): void | Promise<void> {}

  /** Depois do insert, na mesma transação (`repo` está ligado a ela). */
  protected aposCriar(_repo: TRepo, _id: number, _autor: SessionUser): void | Promise<void> {}

  /** Depois do update, na mesma transação (`repo` está ligado a ela). */
  protected aposAtualizar(_repo: TRepo, _id: number, _autor: SessionUser): void | Promise<void> {}

  /** Executa uma etapa com regras de domínio, convertendo ErroDeValidacao em erro HTTP. */
  protected async regra<T>(fn: () => T | Promise<T>): Promise<T> {
    try {
      return await fn();
    } catch (err) {
      throw comoErroHttp(err);
    }
  }

  private get sufixo(): string {
    return this.rotulo.genero === 'f' ? 'a' : 'o';
  }
}
