import { query, type Db } from '../../lib/db.js';
import type { ProdutoCalculo, Unidade } from './domain/index.js';

export interface ProdutoComPreco extends ProdutoCalculo {
  id: number;
  codigo: string;
  nome: string;
  tipo: 'produto' | 'servico';
  unidade_venda: Unidade;
  controla_estoque: boolean;
  ativo: boolean;
  /** Preço sugerido: o da tabela de preço, se houver; senão preco_venda. */
  preco: number;
}

/** Leitura de produto, arredondamento e preço (somente consulta). */
export class ProdutoRepository {
  constructor(private readonly db: Db) {}

  async comPreco(ids: number[], tabelaPrecoId: number | null): Promise<Map<number, ProdutoComPreco>> {
    const unicos = [...new Set(ids)];
    if (unicos.length === 0) return new Map();
    const rows = await query<ProdutoComPreco>(
      `select p.id, p.codigo, p.nome, p.tipo, p.unidade_venda, p.area_minima_m2, p.controla_estoque, p.ativo,
              a.valor_cm as arredondamento_cm, coalesce(pp.preco, p.preco_venda) as preco
         from produto p
         left join arredondamento a on a.id = p.arredondamento_id
         left join produto_preco pp on pp.produto_id = p.id and pp.tabela_preco_id = $2
        where p.id = any($1::int[])`,
      [unicos, tabelaPrecoId],
      this.db,
    );
    return new Map(rows.map((r) => [r.id, r]));
  }
}
