import { ErroProducao } from './erros.js';

/** Resolve o período de relatório: padrão do 1º dia do mês de `hoje` até `hoje`. */
export function resolverPeriodo(p: { de?: string; ate?: string }, hoje: string): { de: string; ate: string } {
  const ate = p.ate ?? hoje;
  const de = p.de ?? `${ate.slice(0, 7)}-01`;
  if (de > ate) throw new ErroProducao('A data inicial é maior que a final');
  return { de, ate };
}
