import { z } from 'zod';

// Schemas Zod reutilizados por todos os módulos (validação na borda).

/** Data 'YYYY-MM-DD' existente no calendário. */
export const dataIso = z
  .string()
  .regex(/^\d{4}-\d{2}-\d{2}$/, 'Data deve estar no formato AAAA-MM-DD')
  .refine((s) => {
    const d = new Date(`${s}T00:00:00Z`);
    return !Number.isNaN(d.getTime()) && d.toISOString().startsWith(s);
  }, 'Data inválida');

/** Medida em milímetros (até 100 m). */
export const milimetros = z.coerce.number().int('Medida deve ser inteira (mm)').positive('Medida deve ser maior que zero').max(100_000, 'Medida acima de 100 m');

/** Quantidade positiva compatível com numeric(12,3). */
export const quantidade = z.coerce.number().positive('Quantidade deve ser maior que zero').max(999_999_999);

/** Preço/valor não negativo compatível com numeric(14,4). */
export const valorNaoNegativo = z.coerce.number().min(0, 'Valor não pode ser negativo').max(9_999_999_999);
