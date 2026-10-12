import { arredondar } from '../../../shared/numeros.js';

/** Dinheiro: 2 casas. */
export const round2 = (v: number): number => arredondar(Number(v), 2);

/** Medida cobrada: 4 casas. */
export const round4 = (v: number): number => arredondar(Number(v), 4);

/** Compara valores monetários com tolerância (padrão R$ 0,01). */
export const valoresIguais = (a: number, b: number, tolerancia = 0.01): boolean => Math.abs(round2(a) - round2(b)) <= tolerancia + 1e-9;
