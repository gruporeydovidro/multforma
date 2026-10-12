import { query, queryOne, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { round2 } from './util.js';

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
      [args.filial_id, args.cliente_id, args.orcamento_id, args.documento, p.numero, p.vencimento, round2(p.valor), p.forma_pagamento],
      db,
    );
    ids.push(r.id);
  }
  return ids;
}

/**
 * Contrato compartilhado: baixa (total ou parcial) de um título a receber e lança a entrada no caixa.
 * Quando valor_pago atinge o valor do título, o status passa a 'pago'. Chamar dentro de withTx.
 */
export async function baixarContaReceber(
  db: Db,
  args: { id: number; valor: number; data: string; forma_pagamento: string; usuario_id: number | null },
): Promise<void> {
  await baixar(db, 'receber', args);
}

/** Baixa (total ou parcial) de um título a pagar, lançando a saída no caixa. Chamar dentro de withTx. */
export async function baixarContaPagar(
  db: Db,
  args: { id: number; valor: number; data: string; forma_pagamento: string; usuario_id: number | null },
): Promise<void> {
  await baixar(db, 'pagar', args);
}

type TipoConta = 'receber' | 'pagar';

/** Tabela e sentido do caixa de cada tipo de título (valores fixos, nunca vindos do cliente). */
const CONTA = {
  receber: { tabela: 'conta_receber', fk: 'conta_receber_id', baixa: 'entrada', estorno: 'saida', rotulo: 'Recebimento' },
  pagar: { tabela: 'conta_pagar', fk: 'conta_pagar_id', baixa: 'saida', estorno: 'entrada', rotulo: 'Pagamento' },
} as const;

interface TituloLock {
  id: number;
  filial_id: number;
  valor: number;
  valor_pago: number;
  status: string;
  documento: string | null;
  parcela: number;
  descricao: string | null;
}

async function travarTitulo(db: Db, tipo: TipoConta, id: number): Promise<TituloLock> {
  const c = CONTA[tipo];
  const descricao = tipo === 'pagar' ? 'descricao' : 'null::text as descricao';
  const t = await queryOne<TituloLock>(
    `select id, filial_id, valor, valor_pago, status, documento, parcela, ${descricao} from ${c.tabela} where id = $1 for update`,
    [id],
    db,
  );
  if (!t) throw notFound('Título');
  return t;
}

function descricaoCaixa(tipo: TipoConta, t: TituloLock, prefixo: string) {
  const ref = [t.descricao, t.documento].filter(Boolean).join(' ');
  return `${prefixo} ${ref} parc. ${t.parcela}`.replace(/\s+/g, ' ').trim();
}

async function baixar(
  db: Db,
  tipo: TipoConta,
  args: { id: number; valor: number; data: string; forma_pagamento: string; usuario_id: number | null },
) {
  const c = CONTA[tipo];
  const t = await travarTitulo(db, tipo, args.id);
  if (t.status !== 'aberto') throw conflict('Título não está em aberto');
  const restante = round2(t.valor - t.valor_pago);
  const valor = round2(args.valor);
  if (!(valor > 0) || valor > restante + 0.001) {
    throw badRequest(`Valor da baixa deve estar entre 0,01 e ${restante.toFixed(2).replace('.', ',')}`);
  }
  const novoPago = round2(t.valor_pago + valor);
  await query(
    `update ${c.tabela} set valor_pago = $2::numeric, data_pagamento = $3, forma_pagamento = $4,
            status = case when $2::numeric >= valor then 'pago' else 'aberto' end
      where id = $1`,
    [t.id, novoPago, args.data, args.forma_pagamento],
    db,
  );
  await query(
    `insert into caixa_lancamento (filial_id, data, tipo, valor, descricao, forma_pagamento, ${c.fk}, usuario_id)
     values ($1,$2,$3,$4,$5,$6,$7,$8)`,
    [t.filial_id, args.data, c.baixa, valor, descricaoCaixa(tipo, t, c.rotulo), args.forma_pagamento, t.id, args.usuario_id],
    db,
  );
}

/**
 * Estorna o que foi pago no título: zera valor_pago, volta a 'aberto' e lança no caixa
 * o movimento inverso (saída para receber, entrada para pagar). Retorna o valor estornado.
 */
export async function estornarConta(db: Db, tipo: TipoConta, args: { id: number; data: string; usuario_id: number | null }): Promise<number> {
  const c = CONTA[tipo];
  const t = await travarTitulo(db, tipo, args.id);
  if (t.status === 'cancelado') throw conflict('Título cancelado não pode ser estornado');
  if (!(t.valor_pago > 0)) throw conflict('Título não possui pagamento para estornar');
  await query(
    `update ${c.tabela} set valor_pago = 0, data_pagamento = null, status = 'aberto' where id = $1`,
    [t.id],
    db,
  );
  await query(
    `insert into caixa_lancamento (filial_id, data, tipo, valor, descricao, ${c.fk}, usuario_id)
     values ($1,$2,$3,$4,$5,$6,$7)`,
    [t.filial_id, args.data, c.estorno, t.valor_pago, descricaoCaixa(tipo, t, `Estorno ${c.rotulo.toLowerCase()}`), t.id, args.usuario_id],
    db,
  );
  return t.valor_pago;
}

/** Cancela um título em aberto e sem pagamento. */
export async function cancelarConta(db: Db, tipo: TipoConta, id: number, motivo?: string | null): Promise<void> {
  const c = CONTA[tipo];
  const t = await travarTitulo(db, tipo, id);
  if (t.status !== 'aberto') throw conflict('Só é possível cancelar título em aberto');
  if (t.valor_pago > 0) throw conflict('Título possui pagamento; estorne antes de cancelar');
  await query(
    `update ${c.tabela} set status = 'cancelado',
            observacao = case when $2::text is null then observacao else concat_ws(' | ', nullif(observacao, ''), 'Cancelado: ' || $2::text) end
      where id = $1`,
    [id, motivo?.trim() || null],
    db,
  );
}
