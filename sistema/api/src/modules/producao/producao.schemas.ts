import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';

const id = z.coerce.number().int().positive();
const data = z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Data no formato AAAA-MM-DD');
const bool = z.enum(['true', 'false']).transform((v) => v === 'true');

export const idParam = z.object({ id });
export const itemParam = idParam.extend({ itemId: id });
export const periodoQuery = z.object({ de: data.optional(), ate: data.optional() });
export const buscaQuery = z.object({ q: z.string().trim().optional() });
export const setoresQuery = z.object({ ativo: bool.optional() });

export const setorBody = z.object({
  nome: z.string().trim().min(1).max(60),
  ordem: z.coerce.number().int().min(0).default(0),
  ativo: z.boolean().default(true),
});

export const motivoBody = z.object({ descricao: z.string().trim().min(1).max(120) });

export const ordensQuery = listQuery.extend({
  status: z.enum(['aguardando', 'em_producao', 'concluida', 'cancelada']).optional(),
  cliente_id: id.optional(),
  atrasadas: bool.optional(),
  de: data.optional(),
  ate: data.optional(),
});

export const ordemCreateBody = z.object({ orcamento_id: id });

export const ordemUpdateBody = z.object({
  previsao_entrega: data.nullable().optional(),
  observacoes: z.string().trim().max(2000).nullable().optional(),
});

export const cancelarBody = z.object({ motivo: z.string().trim().max(500).optional() });

/** Corpo da marcação, já convertido para o formato do domínio. */
export const marcarBody = z
  .object({
    setor_id: id,
    quantidade: z.coerce.number().positive().optional(),
    defeito: z.boolean().default(false),
    motivo_id: id.nullable().optional(),
    observacao: z.string().trim().max(500).nullable().optional(),
  })
  .transform((b) => ({ setorId: b.setor_id, quantidade: b.quantidade, defeito: b.defeito, motivoId: b.motivo_id ?? null, observacao: b.observacao ?? null }));
