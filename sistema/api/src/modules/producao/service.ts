import { query, queryOne, type Db } from '../../lib/db.js';
import { proximoNumero } from '../../lib/numeracao.js';

/**
 * Contrato compartilhado: gera a ordem de produção de um orçamento fechado,
 * copiando os itens de produtos físicos (tipo 'produto'). Chamar dentro de withTx.
 * Retorna o id da ordem, ou null se não houver itens produzíveis.
 */
export async function criarOrdemProducao(db: Db, orcamentoId: number): Promise<number | null> {
  const orc = await queryOne<{ filial_id: number; prazo_entrega: string | null }>(
    'select filial_id, prazo_entrega from orcamento where id = $1',
    [orcamentoId],
    db,
  );
  if (!orc) throw new Error(`orçamento ${orcamentoId} inexistente`);
  const itens = await query(
    `select oi.id, oi.produto_id, oi.descricao, oi.quantidade, coalesce(oi.largura_calc_mm, oi.largura_mm) as largura_mm,
            coalesce(oi.altura_calc_mm, oi.altura_mm) as altura_mm
       from orcamento_item oi join produto p on p.id = oi.produto_id
      where oi.orcamento_id = $1 and p.tipo = 'produto'
      order by oi.seq`,
    [orcamentoId],
    db,
  );
  if (itens.length === 0) return null;
  const numero = await proximoNumero(db, 'ordem_producao', orc.filial_id);
  const primeiroSetor = await queryOne<{ id: number }>('select id from setor_producao where ativo order by ordem, id limit 1', [], db);
  const op = await queryOne<{ id: number }>(
    `insert into ordem_producao (filial_id, numero, orcamento_id, previsao_entrega) values ($1,$2,$3,$4) returning id`,
    [orc.filial_id, numero, orcamentoId, orc.prazo_entrega],
    db,
  );
  for (const it of itens) {
    await query(
      `insert into ordem_producao_item (ordem_id, orcamento_item_id, produto_id, descricao, quantidade, largura_mm, altura_mm, setor_atual_id)
       values ($1,$2,$3,$4,$5,$6,$7,$8)`,
      [op!.id, it.id, it.produto_id, it.descricao, it.quantidade, it.largura_mm, it.altura_mm, primeiroSetor?.id ?? null],
      db,
    );
  }
  return op!.id;
}
