/** Arredonda a 4 casas (precisão das quantidades e custos no banco). */
export const round4 = (v: number) => Math.round((v + Number.EPSILON) * 10_000) / 10_000;
