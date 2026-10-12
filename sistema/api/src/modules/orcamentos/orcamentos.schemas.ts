import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { dataIso, milimetros, quantidade, valorNaoNegativo } from '../../shared/validacao.js';
import { DESTINOS, FORMAS_PAGAMENTO, STATUS_ORCAMENTO } from './domain/index.js';

/** Chave estrangeira (coluna integer). */
const id = z.number().int().positive().max(2_147_483_647);
const idCoerce = z.coerce.number().int().positive().max(2_147_483_647);
const idOpcional = id.nullish().transform((v) => v ?? null);
const medidaOpcional = milimetros.nullish().transform((v) => v ?? null);
const texto = z
  .string()
  .trim()
  .nullish()
  .transform((v) => (v ? v : null));
/** Valores em R$ do cabeçalho e do item (numeric(14,2)). */
const dinheiro = valorNaoNegativo;
/** Quantidade de conjuntos de um projeto (coluna integer; limitada para as peças caberem em numeric(12,3)). */
const conjuntos = quantidade.int('Quantidade deve ser inteira').max(100_000, 'Quantidade acima do limite');

export const idParam = z.object({ id: idCoerce });
export const itemParam = idParam.extend({ itemId: idCoerce });
export const projetoParam = idParam.extend({ projetoId: idCoerce });

export const listaOrcamentosSchema = listQuery.extend({
  status: z.enum(STATUS_ORCAMENTO).optional(),
  data_ini: dataIso.optional(),
  data_fim: dataIso.optional(),
  vendedor_id: idCoerce.optional(),
  cliente_id: idCoerce.optional(),
});

const camposCabecalho = {
  cliente_id: id,
  vendedor_id: idOpcional,
  tabela_preco_id: idOpcional,
  data_emissao: dataIso,
  validade: dataIso.nullish().transform((v) => v ?? null),
  prazo_entrega: dataIso.nullish().transform((v) => v ?? null),
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
  produto_id: id,
  descricao: texto,
  ambiente: texto,
  quantidade: quantidade.default(1),
  largura_mm: medidaOpcional,
  altura_mm: medidaOpcional,
  /** Omitido = preço sugerido (tabela do orçamento ou preço de venda). */
  preco_unitario: valorNaoNegativo.optional(),
  desconto_valor: dinheiro.default(0),
});

export const atualizarItemSchema = z.object({
  produto_id: id,
  descricao: texto,
  ambiente: texto,
  quantidade,
  largura_mm: milimetros.nullable(),
  altura_mm: milimetros.nullable(),
  preco_unitario: valorNaoNegativo,
  desconto_valor: dinheiro,
}).partial();

export const projetoOrcamentoSchema = z.object({
  projeto_id: id,
  descricao: texto,
  ambiente: texto,
  largura_vao_mm: milimetros,
  altura_vao_mm: milimetros,
  quantidade: conjuntos.default(1),
  vidro_produto_id: idOpcional,
});

export const fecharSchema = z.object({
  forma_pagamento: z.enum(FORMAS_PAGAMENTO),
  parcelas: z
    .array(
      z.object({
        vencimento: dataIso,
        valor: valorNaoNegativo.positive('Valor da parcela deve ser maior que zero'),
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
