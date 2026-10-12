import { query, queryOne, type Db } from '../../lib/db.js';
import { badRequest } from '../../lib/http.js';
import { calcularItem, calcularTotais, CalculoError, round2, type ItemCalculado, type ProdutoCalculo, type Unidade } from './calculo.js';

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

/** Carrega produtos com o arredondamento e o preço da tabela informada. */
export async function carregarProdutos(db: Db, ids: number[], tabelaPrecoId: number | null): Promise<Map<number, ProdutoComPreco>> {
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
    db,
  );
  return new Map(rows.map((r) => [r.id, r]));
}

export async function carregarProduto(db: Db, id: number, tabelaPrecoId: number | null): Promise<ProdutoComPreco> {
  const p = (await carregarProdutos(db, [id], tabelaPrecoId)).get(id);
  if (!p) throw badRequest(`Produto ${id} não encontrado`);
  return p;
}

/** calcularItem convertendo erros de regra em 400. */
export function calcularOu400(produto: ProdutoCalculo, item: Parameters<typeof calcularItem>[1]): ItemCalculado {
  try {
    return calcularItem(produto, item);
  } catch (e) {
    if (e instanceof CalculoError) throw badRequest(e.message);
    throw e;
  }
}

/** Recalcula o total de cada projeto do orçamento e os totais do cabeçalho, e grava. */
export async function recalcularOrcamento(db: Db, orcamentoId: number) {
  await query(
    `update orcamento_projeto op
        set total = coalesce((select sum(oi.total) from orcamento_item oi where oi.orcamento_projeto_id = op.id), 0)
      where op.orcamento_id = $1`,
    [orcamentoId],
    db,
  );
  const orc = await queryOne<{ desconto_pct: number; desconto_valor: number; acrescimo_valor: number; frete_valor: number }>(
    'select desconto_pct, desconto_valor, acrescimo_valor, frete_valor from orcamento where id = $1',
    [orcamentoId],
    db,
  );
  if (!orc) return;
  const itens = await query<{ total: number }>('select total from orcamento_item where orcamento_id = $1', [orcamentoId], db);
  const t = calcularTotais(itens.map((i) => i.total), orc);
  // Com desconto %, grava em desconto_valor o valor efetivo (útil para relatórios e impressão).
  // Sem %, desconto_valor é o valor digitado e fica como está (o cálculo já o limita ao subtotal).
  const descontoValor = Number(orc.desconto_pct) > 0 ? t.desconto : round2(Number(orc.desconto_valor));
  await query('update orcamento set subtotal = $2, desconto_valor = $3, total = $4 where id = $1', [orcamentoId, t.subtotal, descontoValor, t.total], db);
}
