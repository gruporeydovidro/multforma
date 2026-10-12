import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { dataIso as data, quantidade, valorNaoNegativo } from '../../shared/validacao.js';

const texto = (max: number) => z.string().trim().max(max).nullable().optional();
/** Chave serial (integer do Postgres): acima disso o banco daria erro de overflow. */
const id = z.coerce.number().int().positive().max(2_147_483_647);

export const produtoParam = z.object({ produtoId: id });

export const saldosQuery = listQuery.extend({
  abaixo_minimo: z.enum(['true', 'false']).transform((v) => v === 'true').optional(),
});

export const movimentosQuery = listQuery.extend({
  produto_id: id.optional(),
  tipo: z.enum(['entrada', 'saida', 'acerto']).optional(),
  origem: z.enum(['compra', 'venda', 'acerto', 'producao', 'manual']).optional(),
  de: data.optional(),
  ate: data.optional(),
});

export const saidaBody = z.object({
  produto_id: id,
  quantidade,
  documento: texto(60),
  observacao: texto(500),
});

export const entradaBody = saidaBody.extend({
  custo_unitario: valorNaoNegativo.nullable().optional(),
});

export const acertoBody = z.object({
  produto_id: id,
  saldo_contado: z.coerce.number().min(0, 'O saldo contado não pode ser negativo').max(999_999_999),
  observacao: texto(500),
});
