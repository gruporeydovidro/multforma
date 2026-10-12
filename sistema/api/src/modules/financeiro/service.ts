import { query, type Db } from '../../lib/db.js';

export interface ParcelaInput {
  numero: number;
  vencimento: string; // YYYY-MM-DD
  valor: number;
  forma_pagamento: string;
}

/** Contrato compartilhado: cria os títulos a receber de uma venda. Retorna os ids criados. */
export async function gerarContasReceber(
  db: Db,
  args: { filial_id: number; cliente_id: number; orcamento_id: number | null; documento: string; parcelas: ParcelaInput[] },
): Promise<number[]> {
  const ids: number[] = [];
  for (const p of args.parcelas) {
    const [r] = await query<{ id: number }>(
      `insert into conta_receber (filial_id, cliente_id, orcamento_id, documento, parcela, vencimento, valor, forma_pagamento)
       values ($1,$2,$3,$4,$5,$6,$7,$8) returning id`,
      [args.filial_id, args.cliente_id, args.orcamento_id, args.documento, p.numero, p.vencimento, p.valor, p.forma_pagamento],
      db,
    );
    ids.push(r.id);
  }
  return ids;
}

/**
 * Contrato compartilhado: baixa (total ou parcial) de um título a receber e lança a entrada no caixa.
 * Quando valor_pago atinge o valor do título, o status passa a 'pago'.
 */
export async function baixarContaReceber(
  db: Db,
  args: { id: number; valor: number; data: string; forma_pagamento: string; usuario_id: number | null },
): Promise<void> {
  const [cr] = await query<{ id: number; filial_id: number; valor: number; valor_pago: number; status: string; documento: string | null; parcela: number }>(
    'select id, filial_id, valor, valor_pago, status, documento, parcela from conta_receber where id = $1 for update',
    [args.id],
    db,
  );
  if (!cr) throw new Error(`título ${args.id} inexistente`);
  if (cr.status !== 'aberto') throw new Error('título não está em aberto');
  const restante = Math.round((cr.valor - cr.valor_pago) * 100) / 100;
  if (args.valor <= 0 || args.valor > restante + 0.001) throw new Error(`valor da baixa deve estar entre 0,01 e ${restante.toFixed(2)}`);
  const novoPago = Math.round((cr.valor_pago + args.valor) * 100) / 100;
  await query(
    `update conta_receber set valor_pago = $2, data_pagamento = $3, forma_pagamento = $4,
            status = case when $2 >= valor then 'pago' else 'aberto' end
      where id = $1`,
    [cr.id, novoPago, args.data, args.forma_pagamento],
    db,
  );
  await query(
    `insert into caixa_lancamento (filial_id, data, tipo, valor, descricao, forma_pagamento, conta_receber_id, usuario_id)
     values ($1,$2,'entrada',$3,$4,$5,$6,$7)`,
    [cr.filial_id, args.data, args.valor, `Recebimento ${cr.documento ?? ''} parc. ${cr.parcela}`.trim(), args.forma_pagamento, cr.id, args.usuario_id],
    db,
  );
}
