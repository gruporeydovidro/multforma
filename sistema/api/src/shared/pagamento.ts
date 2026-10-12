// Formas de pagamento: vocabulário comum a Orçamentos e Financeiro.
export const FORMAS_PAGAMENTO = ['dinheiro', 'pix', 'cartao_debito', 'cartao_credito', 'boleto', 'cheque', 'a_prazo'] as const;
export type FormaPagamento = (typeof FORMAS_PAGAMENTO)[number];

/** Formas liquidadas no ato (baixa imediata). */
export const FORMAS_A_VISTA: readonly FormaPagamento[] = ['dinheiro', 'pix', 'cartao_debito'];
