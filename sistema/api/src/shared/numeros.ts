// Núcleo compartilhado (puro): arredondamento decimal usado por todos os módulos.

/**
 * Arredonda "meio para longe do zero" em `casas` decimais, corrigindo a imprecisão binária
 * (2.135 * 100 = 213.49999999999997 → 214). toPrecision(15) remove o ruído antes do round.
 */
export function arredondar(v: number, casas: number): number {
  const n = Number(v);
  if (!Number.isFinite(n)) return n;
  const f = 10 ** casas;
  const r = (Math.sign(n) * Math.round(Number((Math.abs(n) * f).toPrecision(15)))) / f;
  return r === 0 ? 0 : r;
}

/** Valores monetários: 2 casas. */
export const arredondarDinheiro = (v: number): number => arredondar(v, 2);
