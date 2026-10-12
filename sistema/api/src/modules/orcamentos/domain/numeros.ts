/** Arredondamento decimal "meio para cima", à prova de imprecisão binária (1.005 -> 1.01). */
function arredondar(v: number, casas: number): number {
  const f = 10 ** casas;
  return Math.round((v + Math.sign(v) * Number.EPSILON) * f) / f;
}

/** Dinheiro: 2 casas. */
export const round2 = (v: number): number => arredondar(Number(v), 2);

/** Medida cobrada: 4 casas. */
export const round4 = (v: number): number => arredondar(Number(v), 4);

/** Compara valores monetários com tolerância (padrão R$ 0,01). */
export const valoresIguais = (a: number, b: number, tolerancia = 0.01): boolean => Math.abs(round2(a) - round2(b)) <= tolerancia + 1e-9;
