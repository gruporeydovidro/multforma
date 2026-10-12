import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';

const data = z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Data no formato AAAA-MM-DD');
const texto = (max: number) => z.string().trim().max(max).nullable().optional();
const id = z.coerce.number().int().positive();

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
  quantidade: z.coerce.number().positive(),
  documento: texto(60),
  observacao: texto(500),
});

export const entradaBody = saidaBody.extend({
  custo_unitario: z.coerce.number().min(0).nullable().optional(),
});

export const acertoBody = z.object({
  produto_id: id,
  saldo_contado: z.coerce.number().min(0),
  observacao: texto(500),
});
