import { z } from 'zod';
import { queryOne, type Db } from '../../lib/db.js';

/** Arredonda para 2 casas (valores monetários). */
export const round2 = (v: number) => Math.round((v + Number.EPSILON) * 100) / 100;

/** Data no formato 'YYYY-MM-DD' (validada). */
export const dataIso = z
  .string()
  .regex(/^\d{4}-\d{2}-\d{2}$/, 'Data deve estar no formato AAAA-MM-DD')
  .refine((s) => !Number.isNaN(Date.parse(`${s}T00:00:00Z`)) && new Date(`${s}T00:00:00Z`).toISOString().startsWith(s), 'Data inválida');

/** Valor monetário positivo com no máximo 2 casas. */
export const valorMonetario = z.coerce
  .number()
  .positive('Valor deve ser maior que zero')
  .max(999_999_999_999)
  .transform(round2);

/** Período opcional de/até (inclusive). */
export const periodoQuery = z
  .object({ de: dataIso.optional(), ate: dataIso.optional() })
  .refine((p) => !p.de || !p.ate || p.de <= p.ate, { message: 'Data inicial maior que a final', path: ['de'] });

/** Data corrente do banco (evita divergência de fuso entre API e PostgreSQL). */
export async function hoje(db: Db): Promise<string> {
  const r = await queryOne<{ d: string }>('select current_date as d', [], db);
  return r!.d;
}

/** Soma meses a uma data ISO, ajustando o dia ao último dia do mês quando preciso (31/01 + 1 = 28/02). */
export function addMonths(iso: string, months: number): string {
  const [y, m, d] = iso.split('-').map(Number);
  const total = y * 12 + (m - 1) + months;
  const ny = Math.floor(total / 12);
  const nm = (total % 12) + 1;
  const ultimo = new Date(Date.UTC(ny, nm, 0)).getUTCDate();
  return `${String(ny).padStart(4, '0')}-${String(nm).padStart(2, '0')}-${String(Math.min(d, ultimo)).padStart(2, '0')}`;
}

/** Divide um total em n parcelas de 2 casas; a diferença de arredondamento vai na última. */
export function dividirParcelas(total: number, n: number): number[] {
  const base = Math.floor((total / n) * 100) / 100;
  const valores = Array.from({ length: n }, () => base);
  valores[n - 1] = round2(total - base * (n - 1));
  return valores;
}

/** Primeiro e último dia do mês corrente do banco. */
export async function mesCorrente(db: Db): Promise<{ de: string; ate: string }> {
  const r = await queryOne<{ de: string; ate: string }>(
    `select date_trunc('month', current_date)::date as de,
            (date_trunc('month', current_date) + interval '1 month - 1 day')::date as ate`,
    [],
    db,
  );
  return r!;
}
