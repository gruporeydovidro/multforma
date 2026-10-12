import { decimal } from '../../lib/format';
import type { ItemOrdem, OrdemResumo, StatusItem, StatusOrdem } from './api';

// Funções puras de exibição do módulo Produção.

type Tom = 'neutral' | 'green' | 'blue' | 'orange' | 'red';

export const STATUS_ORDEM: Record<StatusOrdem, { label: string; tom: Tom }> = {
  aguardando: { label: 'Aguardando', tom: 'neutral' },
  em_producao: { label: 'Em produção', tom: 'blue' },
  concluida: { label: 'Concluída', tom: 'green' },
  cancelada: { label: 'Cancelada', tom: 'red' },
};

export const STATUS_ITEM: Record<StatusItem, { label: string; tom: Tom }> = {
  pendente: { label: 'Pendente', tom: 'neutral' },
  em_producao: { label: 'Em produção', tom: 'blue' },
  concluido: { label: 'Concluído', tom: 'green' },
  defeito: { label: 'Defeito', tom: 'red' },
};

/** "500 x 1000 mm" ou "—" quando a peça não tem medidas. */
export function medidas(i: { largura_mm: number | null; altura_mm: number | null }): string {
  if (!i.largura_mm && !i.altura_mm) return '—';
  return `${i.largura_mm ?? '?'} x ${i.altura_mm ?? '?'} mm`;
}

/** Área total do item em m² (quantidade x largura x altura), ou null sem medidas. */
export function areaM2(i: Pick<ItemOrdem, 'quantidade' | 'largura_mm' | 'altura_mm'>): number | null {
  if (!i.largura_mm || !i.altura_mm) return null;
  return (i.quantidade * i.largura_mm * i.altura_mm) / 1e6;
}

export const quantidade = (v: number) => decimal(v, Number.isInteger(v) ? 0 : 3);

/** "3/5 itens" e percentual concluído. */
export function progresso(o: Pick<OrdemResumo, 'itens_total' | 'itens_concluidos'>) {
  const pct = o.itens_total ? Math.round((o.itens_concluidos / o.itens_total) * 100) : 0;
  return { texto: `${o.itens_concluidos}/${o.itens_total}`, pct };
}

export const ordemAberta = (s: StatusOrdem) => s === 'aguardando' || s === 'em_producao';
export const itemMarcavel = (s: StatusItem) => s === 'pendente' || s === 'em_producao';
