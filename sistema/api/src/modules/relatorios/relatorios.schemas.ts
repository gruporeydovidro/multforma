import { z } from 'zod';

import { dataIso } from '../../shared/validacao.js';

export const periodoQuery = z.object({ de: dataIso.optional(), ate: dataIso.optional() });

export const vendasQuery = periodoQuery.extend({
  agrupar: z.enum(['dia', 'vendedor', 'cliente', 'produto']).default('dia'),
});

export const rankingParams = z.object({ tipo: z.enum(['clientes', 'produtos', 'vendedores']) });

export const rankingQuery = periodoQuery.extend({
  limite: z.coerce.number().int().min(1).max(100).default(10),
});

export type PeriodoInput = z.infer<typeof periodoQuery>;
export type TipoRanking = z.infer<typeof rankingParams>['tipo'];
