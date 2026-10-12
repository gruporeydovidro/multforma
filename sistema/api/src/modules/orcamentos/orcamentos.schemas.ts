import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { DESTINOS, FORMAS_PAGAMENTO, STATUS_ORCAMENTO } from './domain/index.js';

const data = z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Data inválida (use AAAA-MM-DD)');
const idOpcional = z.number().int().positive().nullish().transform((v) => v ?? null);
const texto = z
  .string()
  .trim()
  .nullish()
  .transform((v) => (v ? v : null));
const dinheiro = z.coerce.number().min(0).max(1e10);

export const idParam = z.object({ id: z.coerce.number().int().positive() });
export const itemParam = idParam.extend({ itemId: z.coerce.number().int().positive() });
export const projetoParam = idParam.extend({ projetoId: z.coerce.number().int().positive() });

export const listaOrcamentosSchema = listQuery.extend({
  status: z.enum(STATUS_ORCAMENTO).optional(),
  data_ini: data.optional(),
  data_fim: data.optional(),
  vendedor_id: z.coerce.number().int().positive().optional(),
  cliente_id: z.coerce.number().int().positive().optional(),
});

const camposCabecalho = {
  cliente_id: z.number().int().positive(),
  vendedor_id: idOpcional,
  tabela_preco_id: idOpcional,
  data_emissao: data,
  validade: data.nullish().transform((v) => v ?? null),
  prazo_entrega: data.nullish().transform((v) => v ?? null),
  destino: z.enum(DESTINOS),
  contato: texto,
  endereco_entrega: texto,
  observacoes: texto,
  desconto_pct: z.coerce.number().min(0).max(100),
  desconto_valor: dinheiro,
  acrescimo_valor: dinheiro,
  frete_valor: dinheiro,
};

export const criarOrcamentoSchema = z.object({
  ...camposCabecalho,
  data_emissao: camposCabecalho.data_emissao.optional(),
  destino: camposCabecalho.destino.default('producao'),
  desconto_pct: camposCabecalho.desconto_pct.default(0),
  desconto_valor: camposCabecalho.desconto_valor.default(0),
  acrescimo_valor: camposCabecalho.acrescimo_valor.default(0),
  frete_valor: camposCabecalho.frete_valor.default(0),
});

/** Edição parcial do cabeçalho: só os campos enviados são alterados. */
export const atualizarOrcamentoSchema = z.object(camposCabecalho).partial();

export const itemSchema = z.object({
  produto_id: z.number().int().positive(),
  descricao: texto,
  ambiente: texto,
  quantidade: z.coerce.number().positive().default(1),
  largura_mm: z.number().int().positive().nullish().transform((v) => v ?? null),
  altura_mm: z.number().int().positive().nullish().transform((v) => v ?? null),
  /** Omitido = preço sugerido (tabela do orçamento ou preço de venda). */
  preco_unitario: z.coerce.number().min(0).optional(),
  desconto_valor: dinheiro.default(0),
});

export const atualizarItemSchema = z.object({
  produto_id: z.number().int().positive(),
  descricao: texto,
  ambiente: texto,
  quantidade: z.coerce.number().positive(),
  largura_mm: z.number().int().positive().nullable(),
  altura_mm: z.number().int().positive().nullable(),
  preco_unitario: z.coerce.number().min(0),
  desconto_valor: dinheiro,
}).partial();

export const projetoOrcamentoSchema = z.object({
  projeto_id: z.number().int().positive(),
  descricao: texto,
  ambiente: texto,
  largura_vao_mm: z.coerce.number().int().positive(),
  altura_vao_mm: z.coerce.number().int().positive(),
  quantidade: z.coerce.number().int().positive().default(1),
  vidro_produto_id: idOpcional,
});

export const fecharSchema = z.object({
  forma_pagamento: z.enum(FORMAS_PAGAMENTO),
  parcelas: z
    .array(
      z.object({
        vencimento: data,
        valor: z.coerce.number().positive(),
        forma_pagamento: z.enum(FORMAS_PAGAMENTO).optional(),
      }),
    )
    .min(1, 'Informe ao menos uma parcela'),
});

export type ListaOrcamentosFiltro = z.infer<typeof listaOrcamentosSchema>;
export type CriarOrcamentoInput = z.infer<typeof criarOrcamentoSchema>;
export type AtualizarOrcamentoInput = z.infer<typeof atualizarOrcamentoSchema>;
export type ItemInput = z.infer<typeof itemSchema>;
export type AtualizarItemInput = z.infer<typeof atualizarItemSchema>;
export type ProjetoOrcamentoInput = z.infer<typeof projetoOrcamentoSchema>;
export type FecharInput = z.infer<typeof fecharSchema>;
