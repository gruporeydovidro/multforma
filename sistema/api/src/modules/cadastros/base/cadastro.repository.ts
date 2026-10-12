import type { QueryResultRow } from 'pg';
import { query, queryOne, type Db } from '../../../lib/db.js';
import { offset } from '../../../lib/paging.js';
import { Filtros, type FiltroBase, type Pagina, type Paginacao } from './consulta.js';

export type Dados = Record<string, unknown>;
export type ResultadoExclusao = 'excluido' | 'vinculado' | 'inexistente';

/** Como uma tabela de cadastro é lida e gravada. Nomes vêm do código, nunca do cliente. */
export interface DefinicaoCadastro {
  tabela: string;
  /** Alias da tabela principal em `origem`. */
  alias: string;
  /** Cláusula FROM com alias e joins, usada na listagem e no detalhe. */
  origem: string;
  colunasLista: string;
  colunasDetalhe: string;
  /** Únicas colunas aceitas em insert/update. */
  colunasGravaveis: readonly string[];
  /** A tabela tem `ativo` e pode ser desativada quando houver vínculos. */
  desativavel: boolean;
}

const IDENTIFICADOR = /^[a-z_][a-z0-9_]*$/;

/**
 * Acesso a dados genérico de um cadastro: listagem paginada, detalhe, inserção, edição e exclusão.
 * Cada agregado estende a classe informando a definição, os filtros e a ordenação.
 */
export abstract class CadastroRepository<TDetalhe extends QueryResultRow, TItem extends QueryResultRow, TFiltro extends FiltroBase> {
  protected abstract readonly def: DefinicaoCadastro;

  constructor(protected readonly db: Db) {}

  get desativavel(): boolean {
    return this.def.desativavel;
  }

  /** Acrescenta as condições do filtro (o termo `q` inclusive). */
  protected abstract filtrar(f: Filtros, filtro: TFiltro): void;

  /** Expressão ORDER BY; pode usar `f.param()` para valores. */
  protected abstract ordenar(f: Filtros, filtro: TFiltro): string;

  async listar(filtro: TFiltro & Paginacao): Promise<Pagina<TItem>> {
    const { origem, colunasLista } = this.def;
    const f = new Filtros();
    this.filtrar(f, filtro);
    const where = f.where;
    const paramsWhere = [...f.params];
    const ordem = this.ordenar(f, filtro);
    const limite = f.param(filtro.pageSize);
    const inicio = f.param(offset(filtro.page, filtro.pageSize));
    const [items, contagem] = await Promise.all([
      query<TItem>(`select ${colunasLista} from ${origem} ${where} order by ${ordem} limit ${limite} offset ${inicio}`, f.params, this.db),
      queryOne<{ total: number }>(`select count(*)::int as total from ${origem} ${where}`, paramsWhere, this.db),
    ]);
    return { items, total: contagem?.total ?? 0, page: filtro.page, pageSize: filtro.pageSize };
  }

  buscarPorId(id: number): Promise<TDetalhe | undefined> {
    const { colunasDetalhe, origem, alias } = this.def;
    return queryOne<TDetalhe>(`select ${colunasDetalhe} from ${origem} where ${alias}.id = $1`, [id], this.db);
  }

  async inserir(dados: Dados): Promise<number> {
    const campos = this.gravaveis(dados);
    const sql = campos.length
      ? `insert into ${this.def.tabela} (${campos.map(([c]) => c).join(', ')}) values (${campos.map((_, i) => `$${i + 1}`).join(', ')}) returning id`
      : `insert into ${this.def.tabela} default values returning id`;
    const row = await queryOne<{ id: number }>(sql, campos.map(([, v]) => v), this.db);
    return row!.id;
  }

  async atualizar(id: number, dados: Dados): Promise<void> {
    const campos = this.gravaveis(dados);
    if (!campos.length) return;
    const sets = campos.map(([c], i) => `${c} = $${i + 2}`).join(', ');
    await query(`update ${this.def.tabela} set ${sets} where id = $1`, [id, ...campos.map(([, v]) => v)], this.db);
  }

  /** Tenta excluir; devolve 'vinculado' se alguma FK impedir. Use fora de transação. */
  async excluir(id: number): Promise<ResultadoExclusao> {
    try {
      const rows = await query(`delete from ${this.def.tabela} where id = $1 returning id`, [id], this.db);
      return rows.length ? 'excluido' : 'inexistente';
    } catch (err: any) {
      if (err?.code === '23503') return 'vinculado';
      throw err;
    }
  }

  async desativar(id: number): Promise<void> {
    await query(`update ${this.def.tabela} set ativo = false where id = $1`, [id], this.db);
  }

  /** Se existe um registro com o id na tabela informada (do próprio módulo). */
  protected async existe(tabela: string, id: number): Promise<boolean> {
    return !!(await queryOne(`select 1 from ${tabela} where id = $1`, [id], this.db));
  }

  private gravaveis(dados: Dados): [string, unknown][] {
    return Object.entries(dados).filter(([coluna, valor]) => {
      if (valor === undefined || !this.def.colunasGravaveis.includes(coluna)) return false;
      if (!IDENTIFICADOR.test(coluna)) throw new Error(`coluna inválida: ${coluna}`);
      return true;
    });
  }
}
