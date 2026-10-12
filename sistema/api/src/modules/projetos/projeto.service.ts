import { getPool, withTx, type Db } from '../../lib/db.js';
import { badRequest, notFound } from '../../lib/http.js';
import { ProjetoInvalidoError } from './domain/erros.js';
import { Projeto, Vao, type PecaProjeto } from './domain/Projeto.js';
import { ProjetoRepository } from './projeto.repository.js';
import type { ListaProjetosFiltro, ProjetoInput, VaoInput } from './projetos.schemas.js';

/** Converte erros de regra do domínio em 400. */
function regra<T>(fn: () => T): T {
  try {
    return fn();
  } catch (e) {
    if (e instanceof ProjetoInvalidoError) throw badRequest(e.message);
    throw e;
  }
}

export interface ProjetoExpandido {
  id: number;
  nome: string;
  pecas: PecaProjeto[];
}

/** Casos de uso de projetos (gabaritos). Também expande projetos para o módulo de orçamentos. */
export class ProjetoService {
  /** db opcional (ex.: testes); por padrão usa o pool, obtido sob demanda. */
  constructor(private readonly dbFixo?: Db) {}

  private get db(): Db {
    return this.dbFixo ?? getPool();
  }

  private repo(db: Db = this.db) {
    return new ProjetoRepository(db);
  }

  async listar(f: ListaProjetosFiltro) {
    const r = await this.repo().listar(f);
    return { ...r, page: f.page, pageSize: f.pageSize };
  }

  async obter(id: number) {
    const repo = this.repo();
    const projeto = await repo.buscar(id);
    if (!projeto) throw notFound('Projeto');
    return { ...projeto, itens: await repo.itens(id) };
  }

  async criar(dados: ProjetoInput) {
    const id = await withTx(async (db) => {
      const repo = this.repo(db);
      await this.validar(repo, dados);
      const novo = await repo.inserir(dados);
      await repo.substituirItens(novo, dados.itens);
      return novo;
    });
    return this.obter(id);
  }

  async atualizar(id: number, dados: ProjetoInput) {
    await withTx(async (db) => {
      const repo = this.repo(db);
      if (!(await repo.buscar(id))) throw notFound('Projeto');
      await this.validar(repo, dados);
      await repo.atualizar(id, dados);
      await repo.substituirItens(id, dados.itens);
    });
    return this.obter(id);
  }

  /** Exclui; se o projeto já foi usado em orçamento, apenas desativa. */
  async excluir(id: number): Promise<'excluido' | 'desativado'> {
    const repo = this.repo();
    if (!(await repo.buscar(id))) throw notFound('Projeto');
    if (await repo.usadoEmOrcamento(id)) {
      await repo.desativar(id);
      return 'desativado';
    }
    await repo.excluir(id);
    return 'excluido';
  }

  /** Calcula as peças para um vão sem gravar nada, com o nome e a unidade de cada produto. */
  async simular(id: number, vao: VaoInput) {
    const repo = this.repo();
    const exp = await this.expandirGabarito(this.db, id, vao);
    const produtos = await repo.produtos(exp.pecas.map((p) => p.produto_id));
    const pecas = exp.pecas.map((p) => {
      const prod = produtos.get(p.produto_id);
      if (!prod) throw badRequest(`${p.descricao}: produto ${p.produto_id} não encontrado`);
      return { ...p, produto_nome: prod.nome, produto_codigo: prod.codigo, unidade: prod.unidade_venda };
    });
    return { projeto: { id: exp.id, nome: exp.nome }, vao, pecas };
  }

  /** Expansão de um projeto para um vão (porta usada pelo módulo de orçamentos, na transação dele): exige projeto ativo. */
  async expandir(db: Db, id: number, vao: VaoInput): Promise<ProjetoExpandido> {
    return this.expandirGabarito(db, id, vao, true);
  }

  /** Expande o gabarito; a simulação aceita projeto inativo, a inclusão em orçamento não. */
  private async expandirGabarito(db: Db, id: number, vao: VaoInput, exigirAtivo = false): Promise<ProjetoExpandido> {
    const repo = this.repo(db);
    const row = await repo.buscar(id);
    if (!row) throw notFound('Projeto');
    if (exigirAtivo && !row.ativo) throw badRequest(`Projeto ${row.nome} está inativo`);
    const itens = await repo.itens(id);
    const pecas = regra(() =>
      new Projeto(row.nome, itens).expandir(new Vao(vao.largura_vao_mm, vao.altura_vao_mm, vao.quantidade, vao.vidro_produto_id ?? null)),
    );
    return { id: row.id, nome: row.nome, pecas };
  }

  private async validar(repo: ProjetoRepository, dados: ProjetoInput) {
    regra(() => new Projeto(dados.nome, dados.itens));
    const ids = dados.itens.map((i) => i.produto_id).filter((x): x is number => x !== null);
    const produtos = await repo.produtos(ids);
    const faltando = ids.find((pid) => !produtos.has(pid));
    if (faltando) throw badRequest(`Produto ${faltando} não encontrado`);
  }
}
