/** Regra de negócio do orçamento violada (dados inválidos). O service converte em 400. */
export class RegraOrcamentoError extends Error {}

/** Operação não permitida no status atual. O service converte em 409. */
export class StatusOrcamentoError extends Error {}
