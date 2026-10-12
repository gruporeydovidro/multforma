import { query, queryOne, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
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
      order by oi.seq, oi.id`,
    [orcamentoId],
    db,
  );
  if (itens.length === 0) return null;
  const numero = await proximoNumero(db, 'ordem_producao', orc.filial_id);
  const primeiro = await primeiroSetor(db);
  const op = await queryOne<{ id: number }>(
    `insert into ordem_producao (filial_id, numero, orcamento_id, previsao_entrega) values ($1,$2,$3,$4) returning id`,
    [orc.filial_id, numero, orcamentoId, orc.prazo_entrega],
    db,
  );
  for (const it of itens) {
    await query(
      `insert into ordem_producao_item (ordem_id, orcamento_item_id, produto_id, descricao, quantidade, largura_mm, altura_mm, setor_atual_id)
       values ($1,$2,$3,$4,$5,$6,$7,$8)`,
      [op!.id, it.id, it.produto_id, it.descricao, it.quantidade, it.largura_mm, it.altura_mm, primeiro?.id ?? null],
      db,
    );
  }
  return op!.id;
}

interface Setor { id: number; nome: string; ordem: number }

async function primeiroSetor(db: Db) {
  return queryOne<Setor>('select id, nome, ordem from setor_producao where ativo order by ordem, id limit 1', [], db);
}

/** Próximo setor ativo depois do informado, pela ordem (desempate pelo id). */
async function proximoSetor(db: Db, setorId: number) {
  return queryOne<Setor>(
    `select s.id, s.nome, s.ordem from setor_producao s, setor_producao atual
      where atual.id = $1 and s.ativo and (s.ordem, s.id) > (atual.ordem, atual.id)
      order by s.ordem, s.id limit 1`,
    [setorId],
    db,
  );
}

interface ItemLock {
  id: number;
  ordem_id: number;
  quantidade: number;
  setor_atual_id: number | null;
  status: 'pendente' | 'em_producao' | 'concluido' | 'defeito';
  ordem_status: 'aguardando' | 'em_producao' | 'concluida' | 'cancelada';
}

/** Carrega e trava o item (e a ordem) para alteração. Valida filial e estado da ordem. */
async function travarItem(db: Db, filialId: number, ordemId: number, itemId: number): Promise<ItemLock> {
  const ordem = await queryOne<{ status: ItemLock['ordem_status'] }>(
    'select status from ordem_producao where id = $1 and filial_id = $2 for update',
    [ordemId, filialId],
    db,
  );
  if (!ordem) throw notFound('Ordem de produção');
  if (ordem.status === 'cancelada') throw conflict('Ordem de produção cancelada');
  if (ordem.status === 'concluida') throw conflict('Ordem de produção já concluída');
  const item = await queryOne<ItemLock>(
    `select id, ordem_id, quantidade, setor_atual_id, status from ordem_producao_item
      where id = $1 and ordem_id = $2 for update`,
    [itemId, ordemId],
    db,
  );
  if (!item) throw notFound('Item da ordem');
  return { ...item, ordem_status: ordem.status };
}

export interface MarcacaoInput {
  setor_id: number;
  quantidade?: number;
  defeito?: boolean;
  motivo_id?: number | null;
  observacao?: string | null;
}

/**
 * Marca o item no setor. Sem defeito: avança ao próximo setor (ou conclui no último).
 * Com defeito: exige motivo e põe o item em 'defeito'. Chamar dentro de withTx.
 */
export async function marcarItem(db: Db, ctx: { filialId: number; usuarioId: number }, ordemId: number, itemId: number, m: MarcacaoInput) {
  const item = await travarItem(db, ctx.filialId, ordemId, itemId);
  if (item.status === 'concluido') throw conflict('Item já concluído');
  if (item.status === 'defeito') throw conflict('Item com defeito: use "refazer" antes de marcar novamente');
  if (item.setor_atual_id !== m.setor_id) throw badRequest('O item não está neste setor');
  const quantidade = m.quantidade ?? item.quantidade;
  if (quantidade > item.quantidade) throw badRequest(`Quantidade maior que a do item (${item.quantidade})`);
  if (m.defeito) {
    if (!m.motivo_id) throw badRequest('Informe o motivo do defeito');
    const motivo = await queryOne('select id from motivo_defeito where id = $1', [m.motivo_id], db);
    if (!motivo) throw badRequest('Motivo de defeito inexistente');
  }

  await query(
    `insert into producao_marcacao (ordem_item_id, setor_id, usuario_id, quantidade, defeito, motivo_id, observacao)
     values ($1,$2,$3,$4,$5,$6,$7)`,
    [itemId, m.setor_id, ctx.usuarioId, quantidade, !!m.defeito, m.defeito ? m.motivo_id : null, m.observacao ?? null],
    db,
  );

  if (m.defeito) {
    await query(`update ordem_producao_item set status = 'defeito' where id = $1`, [itemId], db);
  } else {
    const prox = await proximoSetor(db, m.setor_id);
    if (prox) {
      await query(`update ordem_producao_item set setor_atual_id = $2, status = 'em_producao' where id = $1`, [itemId, prox.id], db);
    } else {
      await query(`update ordem_producao_item set setor_atual_id = null, status = 'concluido' where id = $1`, [itemId], db);
    }
  }

  if (item.ordem_status === 'aguardando') {
    await query(`update ordem_producao set status = 'em_producao', iniciado_em = now() where id = $1`, [ordemId], db);
  }
  const pend = await queryOne<{ n: number }>(
    `select count(*)::int as n from ordem_producao_item where ordem_id = $1 and status <> 'concluido'`,
    [ordemId],
    db,
  );
  if (pend!.n === 0) {
    await query(`update ordem_producao set status = 'concluida', concluido_em = now() where id = $1`, [ordemId], db);
    await logAcao(db, ctx.usuarioId, 'producao.concluir', 'ordem_producao', ordemId);
  }
  if (m.defeito) {
    await logAcao(db, ctx.usuarioId, 'producao.defeito', 'ordem_producao_item', itemId, { setor_id: m.setor_id, motivo_id: m.motivo_id, quantidade });
  }
}

/** Volta um item com defeito ao primeiro setor para ser refeito. Chamar dentro de withTx. */
export async function refazerItem(db: Db, ctx: { filialId: number; usuarioId: number }, ordemId: number, itemId: number) {
  const item = await travarItem(db, ctx.filialId, ordemId, itemId);
  if (item.status !== 'defeito') throw conflict('Só itens com defeito podem ser refeitos');
  const primeiro = await primeiroSetor(db);
  if (!primeiro) throw badRequest('Nenhum setor de produção ativo');
  await query(`update ordem_producao_item set setor_atual_id = $2, status = 'pendente' where id = $1`, [itemId, primeiro.id], db);
  await logAcao(db, ctx.usuarioId, 'producao.refazer', 'ordem_producao_item', itemId, { setor_anterior_id: item.setor_atual_id });
}
