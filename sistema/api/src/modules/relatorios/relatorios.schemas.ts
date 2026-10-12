import { z } from 'zod';

/** Data 'YYYY-MM-DD' existente no calendário. */
const dataIso = z
  .string()
  .regex(/^\d{4}-\d{2}-\d{2}$/, 'Data deve estar no formato AAAA-MM-DD')
  .refine((s) => {
    const d = new Date(`${s}T00:00:00Z`);
    return !Number.isNaN(d.getTime()) && d.toISOString().startsWith(s);
  }, 'Data inválida');

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
