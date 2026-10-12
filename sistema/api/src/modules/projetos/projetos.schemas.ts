import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { milimetros, quantidade } from '../../shared/validacao.js';
import { TIPOS_ITEM } from './domain/Projeto.js';

const id = z.number().int().positive().max(2_147_483_647);
/** Folga em mm (coluna integer); negativa acrescenta à medida. */
const folga = z.coerce.number().int('Folga deve ser inteira (mm)').min(-100_000).max(100_000, 'Folga acima de 100 m');
/** Quantidade por conjunto (coluna numeric(10,3)). */
const quantidadeItem = quantidade.max(9_999_999, 'Quantidade acima do limite');

const textoOpcional = z
  .string()
  .trim()
  .nullish()
  .transform((v) => (v ? v : null));

export const itemProjetoSchema = z.object({
  descricao: z.string().trim().min(1, 'Informe a descrição'),
  tipo: z.enum(TIPOS_ITEM).default('vidro'),
  produto_id: id.nullish().transform((v) => v ?? null),
  quantidade: quantidadeItem.default(1),
  formula_largura: textoOpcional,
  formula_altura: textoOpcional,
  folga_largura_mm: folga.default(0),
  folga_altura_mm: folga.default(0),
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
  largura_vao_mm: milimetros,
  altura_vao_mm: milimetros,
  quantidade: quantidade.int('Quantidade deve ser inteira').max(100_000, 'Quantidade acima do limite').default(1),
  vidro_produto_id: id.nullish().transform((v) => v ?? null),
});

export const idParam = z.object({ id: z.coerce.number().int().positive().max(2_147_483_647) });

export type ProjetoInput = z.infer<typeof projetoSchema>;
export type ItemProjetoInput = z.infer<typeof itemProjetoSchema>;
export type ListaProjetosFiltro = z.infer<typeof listaProjetosSchema>;
export type VaoInput = z.infer<typeof vaoSchema>;
