import { query, queryOne, type Db } from '../../lib/db.js';

export interface ProdutoEstoque {
  id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
  controla_estoque: boolean;
  ativo: boolean;
  custo: number;
  estoque_minimo: number;
}

export interface SaldoProduto {
  produto_id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
  saldo: number;
  estoque_minimo: number;
  custo: number;
  valor_estoque: number;
  abaixo_minimo: boolean;
}

export interface FiltroSaldos {
  q?: string;
  abaixo_minimo?: boolean;
  limite: number;
  deslocamento: number;
}

const SALDOS = `
    from produto p
    left join estoque_saldo s on s.produto_id = p.id and s.filial_id = $1
   where p.controla_estoque and p.ativo
     and ($2::text is null or p.codigo ilike '%' || $2 || '%' or p.nome ilike '%' || $2 || '%')
     and (not $3::boolean or coalesce(s.saldo, 0) < p.estoque_minimo)`;

/**
 * Leitura dos dados de produto usados pelo estoque. O produto pertence a Cadastros: a gravação
 * do custo médio passa pela CatalogoPort, e a serialização usa o bloqueio do próprio estoque
 * (MovimentoRepository.travarProduto), nunca um `for update` na tabela produto.
 */
export class ProdutoEstoqueRepository {
  constructor(private readonly db: Db) {}

  buscar(id: number): Promise<ProdutoEstoque | undefined> {
    return queryOne<ProdutoEstoque>(
      'select id, codigo, nome, unidade_venda, controla_estoque, ativo, custo, estoque_minimo from produto where id = $1',
      [id],
      this.db,
    );
  }

  async listarSaldos(filialId: number, f: FiltroSaldos): Promise<{ items: SaldoProduto[]; total: number }> {
    const params = [filialId, f.q || null, !!f.abaixo_minimo];
    const total = await queryOne<{ n: number }>(`select count(*)::int as n ${SALDOS}`, params, this.db);
    const items = await query<SaldoProduto>(
      `select p.id as produto_id, p.codigo, p.nome, p.unidade_venda, coalesce(s.saldo, 0) as saldo, p.estoque_minimo, p.custo,
              round(coalesce(s.saldo, 0) * p.custo, 2) as valor_estoque,
              coalesce(s.saldo, 0) < p.estoque_minimo as abaixo_minimo
         ${SALDOS}
        order by p.nome, p.id limit $4 offset $5`,
      [...params, f.limite, f.deslocamento],
      this.db,
    );
    return { items, total: total!.n };
  }
}
