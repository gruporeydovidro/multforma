import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { TIPOS_ITEM } from './domain/Projeto.js';

const textoOpcional = z
  .string()
  .trim()
  .nullish()
  .transform((v) => (v ? v : null));

export const itemProjetoSchema = z.object({
  descricao: z.string().trim().min(1, 'Informe a descrição'),
  tipo: z.enum(TIPOS_ITEM).default('vidro'),
  produto_id: z.number().int().positive().nullish().transform((v) => v ?? null),
  quantidade: z.coerce.number().positive().default(1),
  formula_largura: textoOpcional,
  formula_altura: textoOpcional,
  folga_largura_mm: z.coerce.number().int().default(0),
  folga_altura_mm: z.coerce.number().int().default(0),
});

export const projetoSchema = z.object({
  nome: z.string().trim().min(1, 'Informe o nome'),
  descricao: textoOpcional,
  ativo: z.boolean().default(true),
  itens: z.array(itemProjetoSchema).default([]),
});

export const listaProjetosSchema = listQuery.extend({
  ativo: z.enum(['true', 'false']).optional().transform((v) => (v === undefined ? undefined : v === 'true')),
});

export const vaoSchema = z.object({
  largura_vao_mm: z.coerce.number().int().positive(),
  altura_vao_mm: z.coerce.number().int().positive(),
  quantidade: z.coerce.number().int().positive().default(1),
  vidro_produto_id: z.number().int().positive().nullish().transform((v) => v ?? null),
});

export const idParam = z.object({ id: z.coerce.number().int().positive() });

export type ProjetoInput = z.infer<typeof projetoSchema>;
export type ItemProjetoInput = z.infer<typeof itemProjetoSchema>;
export type ListaProjetosFiltro = z.infer<typeof listaProjetosSchema>;
export type VaoInput = z.infer<typeof vaoSchema>;
