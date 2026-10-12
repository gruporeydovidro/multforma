import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { Dinheiro } from './domain/dinheiro.js';
import { GeradorParcelas } from './domain/gerador-parcelas.js';

export const FORMAS_PAGAMENTO = ['dinheiro', 'pix', 'cartao_debito', 'cartao_credito', 'boleto', 'cheque', 'a_prazo'] as const;
export const formaPagamento = z.enum(FORMAS_PAGAMENTO);

/** Data 'YYYY-MM-DD' existente no calendário. */
export const dataIso = z
  .string()
  .regex(/^\d{4}-\d{2}-\d{2}$/, 'Data deve estar no formato AAAA-MM-DD')
  .refine((s) => {
    const d = new Date(`${s}T00:00:00Z`);
    return !Number.isNaN(d.getTime()) && d.toISOString().startsWith(s);
  }, 'Data inválida');

/** Valor monetário positivo, arredondado a 2 casas. */
export const valorMonetario = z.coerce.number().positive('Valor deve ser maior que zero').max(999_999_999_999).transform(Dinheiro.arredondar);

const textoOpcional = (max: number) => z.string().trim().max(max).nullish().transform((v) => v || null);
const idOpcional = z.coerce.number().int().positive().optional();

export const idParam = z.object({ id: z.coerce.number().int().positive() });

export const filtroTitulos = listQuery.extend({
  status: z.enum(['aberto', 'pago', 'cancelado']).optional(),
  vencidas: z.enum(['true', 'false']).optional().transform((v) => v === 'true'),
  de: dataIso.optional(),
  ate: dataIso.optional(),
  cliente_id: idOpcional,
  orcamento_id: idOpcional,
  fornecedor_id: idOpcional,
  categoria: z.string().trim().optional(),
});

export const baixaBody = z
  .object({
    valor: valorMonetario.optional(),
    data: dataIso.optional(),
    forma_pagamento: formaPagamento.default('dinheiro'),
  })
  .default({});

export const motivoBody = z.object({ motivo: textoOpcional(300) }).default({});

const parcelamento = {
  valor_total: valorMonetario,
  parcelas: z.coerce.number().int().min(1).max(GeradorParcelas.MAXIMO).default(1),
  primeiro_vencimento: dataIso,
  forma_pagamento: formaPagamento.nullish().transform((v) => v ?? null),
  documento: textoOpcional(60),
  observacao: textoOpcional(500),
};

export const novaContaReceber = z.object({ cliente_id: z.coerce.number().int().positive(), ...parcelamento });

const camposPagar = {
  fornecedor_id: z.coerce.number().int().positive().nullish().transform((v) => v ?? null),
  descricao: z.string().trim().min(1, 'Informe a descrição').max(200),
  categoria: textoOpcional(60),
  documento: textoOpcional(60),
  observacao: textoOpcional(500),
  forma_pagamento: formaPagamento.nullish().transform((v) => v ?? null),
};

export const novaContaPagar = z.object({ ...camposPagar, ...parcelamento, emissao: dataIso.nullish().transform((v) => v ?? null) });
export const edicaoContaPagar = z.object({ ...camposPagar, vencimento: dataIso, valor: valorMonetario });
export const copiaContaPagar = z.object({ vencimento: dataIso.optional() }).default({});
export const alertaQuery = z.object({ dias: z.coerce.number().int().min(0).max(365).default(7) });

export const periodoQuery = z
  .object({ de: dataIso.optional(), ate: dataIso.optional() })
  .refine((p) => !p.de || !p.ate || p.de <= p.ate, { message: 'Data inicial maior que a final', path: ['de'] });

export const novoLancamento = z.object({
  data: dataIso.nullish().transform((v) => v ?? null),
  tipo: z.enum(['entrada', 'saida']),
  valor: valorMonetario,
  descricao: z.string().trim().min(1, 'Informe a descrição').max(200),
  forma_pagamento: formaPagamento.nullish().transform((v) => v ?? null),
});

export type FiltroTitulosInput = z.infer<typeof filtroTitulos>;
export type BaixaInput = z.infer<typeof baixaBody>;
export type NovaContaReceberInput = z.infer<typeof novaContaReceber>;
export type NovaContaPagarInput = z.infer<typeof novaContaPagar>;
export type EdicaoContaPagarInput = z.infer<typeof edicaoContaPagar>;
export type NovoLancamentoInput = z.infer<typeof novoLancamento>;
