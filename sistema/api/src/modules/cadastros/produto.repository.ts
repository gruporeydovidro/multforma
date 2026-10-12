import { query, queryOne } from '../../lib/db.js';
import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { Filtros } from './base/consulta.js';
import type { ProdutoFiltro } from './cadastros.schemas.js';
import type { PrecoTabela } from './domain/precos.js';

export interface ProdutoItem {
  id: number;
  codigo: string;
  nome: string;
  tipo: 'produto' | 'servico';
  unidade_venda: 'M2' | 'ML' | 'UN' | 'PC' | 'KG';
  preco_venda: number;
  custo: number;
  espessura_mm: number | null;
  grupo_id: number | null;
  grupo_nome: string | null;
  arredondamento_id: number | null;
  area_minima_m2: number;
  controla_estoque: boolean;
  ativo: boolean;
}

export interface Produto extends ProdutoItem {
  perda_pct: number;
  estoque_minimo: number;
  ncm: string | null;
  arredondamento_descricao: string | null;
  arredondamento_valor_cm: number | null;
  criado_em: string;
}

export interface PrecoProduto extends PrecoTabela {
  tabela_nome: string;
}

/** Produtos e seus preços por tabela (agregado produto + produto_preco). */
export class ProdutoRepository extends CadastroRepository<Produto, ProdutoItem, ProdutoFiltro> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'produto',
    alias: 'p',
    origem: 'produto p left join grupo_produto g on g.id = p.grupo_id left join arredondamento a on a.id = p.arredondamento_id',
    colunasLista: `p.id, p.codigo, p.nome, p.tipo, p.unidade_venda, p.preco_venda, p.custo, p.espessura_mm, p.grupo_id,
      g.nome as grupo_nome, p.arredondamento_id, p.area_minima_m2, p.controla_estoque, p.ativo`,
    colunasDetalhe: `p.*, g.nome as grupo_nome, a.descricao as arredondamento_descricao, a.valor_cm as arredondamento_valor_cm`,
    colunasGravaveis: [
      'codigo', 'nome', 'tipo', 'grupo_id', 'unidade_venda', 'espessura_mm', 'perda_pct', 'arredondamento_id',
      'area_minima_m2', 'custo', 'preco_venda', 'estoque_minimo', 'controla_estoque', 'ncm', 'ativo',
    ],
    desativavel: true,
  };

  protected filtrar(f: Filtros, { q, tipo, grupo_id, ativo }: ProdutoFiltro): void {
    f.contem(['p.codigo', 'p.nome'], q).igual('p.tipo', tipo).igual('p.grupo_id', grupo_id).igual('p.ativo', ativo);
  }

  /** Código idêntico ao termo vem primeiro. */
  protected ordenar(f: Filtros, { q }: ProdutoFiltro): string {
    const exato = q ? `(lower(p.codigo) = lower(${f.param(q)})) desc, ` : '';
    return `${exato}lower(p.nome), p.id`;
  }

  /** Devolve false se o produto não existe. */
  async atualizarCusto(id: number, custo: number): Promise<boolean> {
    const rows = await query('update produto set custo = $2 where id = $1 returning id', [id, custo], this.db);
    return rows.length > 0;
  }

  async codigoEmUso(codigo: string, excetoId?: number): Promise<boolean> {
    return !!(await queryOne('select 1 from produto where lower(codigo) = lower($1) and id <> $2', [codigo, excetoId ?? 0], this.db));
  }

  grupoExiste(id: number): Promise<boolean> {
    return this.existe('grupo_produto', id);
  }

  arredondamentoExiste(id: number): Promise<boolean> {
    return this.existe('arredondamento', id);
  }

  listarPrecos(produtoId: number): Promise<PrecoProduto[]> {
    return query<PrecoProduto>(
      `select pp.tabela_preco_id, t.nome as tabela_nome, pp.preco
         from produto_preco pp join tabela_preco t on t.id = pp.tabela_preco_id
        where pp.produto_id = $1 order by lower(t.nome)`,
      [produtoId],
      this.db,
    );
  }

  /** Das tabelas informadas, as que existem. */
  async tabelasExistentes(ids: number[]): Promise<number[]> {
    const rows = await query<{ id: number }>('select id from tabela_preco where id = any($1::int[])', [ids], this.db);
    return rows.map((r) => r.id);
  }

  /** Troca todos os preços do produto pelos informados. Chame dentro de transação. */
  async substituirPrecos(produtoId: number, precos: readonly PrecoTabela[]): Promise<void> {
    await query('delete from produto_preco where produto_id = $1', [produtoId], this.db);
    if (!precos.length) return;
    await query(
      `insert into produto_preco (tabela_preco_id, produto_id, preco)
       select t, $1, p from unnest($2::int[], $3::numeric[]) as x(t, p)`,
      [produtoId, precos.map((p) => p.tabela_preco_id), precos.map((p) => p.preco)],
      this.db,
    );
  }
}
