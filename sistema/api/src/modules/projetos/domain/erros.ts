/** Regra de projeto violada (dados incoerentes). O service converte em 400. */
export class ProjetoInvalidoError extends Error {}

/** Fórmula inválida: sintaxe, variável desconhecida, divisão por zero ou resultado não finito. */
export class FormulaError extends ProjetoInvalidoError {}
