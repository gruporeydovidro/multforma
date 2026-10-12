import { query, queryOne, type Db } from '../../lib/db.js';
import { offset } from '../../lib/paging.js';
import type { DadosItemProjeto } from './domain/Projeto.js';
import type { ItemProjetoInput, ListaProjetosFiltro, ProjetoInput } from './projetos.schemas.js';

export interface ProjetoRow {
  id: number;
  nome: string;
  descricao: string | null;
  ativo: boolean;
  criado_em: string;
}

export interface ItemProjetoRow extends DadosItemProjeto {
  id: number;
  ordem: number;
  produto_nome: string | null;
  produto_codigo: string | null;
}

export interface ProdutoResumo {
  id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
  ativo: boolean;
}

/** Acesso a dados de projeto e projeto_item (só SQL). */
export class ProjetoRepository {
  constructor(private readonly db: Db) {}

  async listar(f: ListaProjetosFiltro) {
    const where: string[] = [];
    const params: unknown[] = [];
    if (f.q) {
      params.push(`%${f.q}%`);
      where.push(`(p.nome ilike $${params.length} or p.descricao ilike $${params.length})`);
    }
    if (f.ativo !== undefined) {
      params.push(f.ativo);
      where.push(`p.ativo = $${params.length}`);
    }
    const w = where.length ? `where ${where.join(' and ')}` : '';
    const total = await queryOne<{ n: number }>(`select count(*)::int as n from projeto p ${w}`, params, this.db);
    const items = await query(
      `select p.id, p.nome, p.descricao, p.ativo, (select count(*)::int from projeto_item i where i.projeto_id = p.id) as qtd_itens
         from projeto p ${w}
        order by p.nome, p.id
        limit $${params.length + 1} offset $${params.length + 2}`,
      [...params, f.pageSize, offset(f.page, f.pageSize)],
      this.db,
    );
    return { items, total: total!.n };
  }

  buscar(id: number) {
    return queryOne<ProjetoRow>('select id, nome, descricao, ativo, criado_em from projeto where id = $1', [id], this.db);
  }

  itens(projetoId: number) {
    return query<ItemProjetoRow>(
      `select i.id, i.descricao, i.tipo, i.produto_id, i.quantidade, i.formula_largura, i.formula_altura,
              i.folga_largura_mm, i.folga_altura_mm, i.ordem, pr.nome as produto_nome, pr.codigo as produto_codigo
         from projeto_item i left join produto pr on pr.id = i.produto_id
        where i.projeto_id = $1
        order by i.ordem, i.id`,
      [projetoId],
      this.db,
    );
  }

  async inserir(p: ProjetoInput): Promise<number> {
    const r = await queryOne<{ id: number }>(
      'insert into projeto (nome, descricao, ativo) values ($1,$2,$3) returning id',
      [p.nome, p.descricao, p.ativo],
      this.db,
    );
    return r!.id;
  }

  async atualizar(id: number, p: ProjetoInput): Promise<void> {
    await query('update projeto set nome = $2, descricao = $3, ativo = $4 where id = $1', [id, p.nome, p.descricao, p.ativo], this.db);
  }

  /** Os itens do gabarito não são referenciados por outras tabelas, então podem ser substituídos. */
  async substituirItens(projetoId: number, itens: ItemProjetoInput[]): Promise<void> {
    await query('delete from projeto_item where projeto_id = $1', [projetoId], this.db);
    for (const [ordem, i] of itens.entries()) {
      await query(
        `insert into projeto_item (projeto_id, descricao, tipo, produto_id, quantidade, formula_largura, formula_altura, folga_largura_mm, folga_altura_mm, ordem)
         values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)`,
        [projetoId, i.descricao, i.tipo, i.produto_id, i.quantidade, i.formula_largura, i.formula_altura, i.folga_largura_mm, i.folga_altura_mm, ordem + 1],
        this.db,
      );
    }
  }

  async usadoEmOrcamento(id: number): Promise<boolean> {
    const r = await queryOne('select 1 from orcamento_projeto where projeto_id = $1 limit 1', [id], this.db);
    return !!r;
  }

  async excluir(id: number): Promise<void> {
    await query('delete from projeto where id = $1', [id], this.db);
  }

  async desativar(id: number): Promise<void> {
    await query('update projeto set ativo = false where id = $1', [id], this.db);
  }

  /** Leitura de produtos (somente consulta) para validar e descrever as peças. */
  async produtos(ids: number[]): Promise<Map<number, ProdutoResumo>> {
    if (ids.length === 0) return new Map();
    const rows = await query<ProdutoResumo>(
      'select id, codigo, nome, unidade_venda, ativo from produto where id = any($1::int[])',
      [[...new Set(ids)]],
      this.db,
    );
    return new Map(rows.map((r) => [r.id, r]));
  }
}
