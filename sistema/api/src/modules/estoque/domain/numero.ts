import { arredondar } from '../../../shared/numeros.js';

/** Arredonda a 4 casas (precisão das quantidades e custos no banco). */
export const round4 = (v: number) => arredondar(v, 4);
