import { decimal } from '../../lib/format';
import type { OrigemMovimento, TipoMovimento } from './api';

// Funções puras de exibição e de cálculo do módulo Estoque.

type Tom = 'neutral' | 'green' | 'blue' | 'orange' | 'red';

export const TIPOS: Record<TipoMovimento, { label: string; tom: Tom }> = {
  entrada: { label: 'Entrada', tom: 'green' },
  saida: { label: 'Saída', tom: 'orange' },
  acerto: { label: 'Acerto', tom: 'blue' },
};

export const ORIGENS: Record<OrigemMovimento, string> = {
  compra: 'Compra',
  venda: 'Venda',
  acerto: 'Acerto',
  producao: 'Produção',
  manual: 'Manual',
};

/** Quantidade com até 4 casas, sem zeros desnecessários. */
export const qtd = (v: number) => decimal(v, Number.isInteger(v) ? 0 : Math.min(4, String(v).split('.')[1]?.length ?? 0));

/** Converte texto digitado ("1.234,5", "1,5" ou "1.5") em número; null se vazio ou inválido. */
export function numero(texto: string): number | null {
  const bruto = texto.trim();
  const t = bruto.includes(',') ? bruto.replace(/\./g, '').replace(',', '.') : bruto;
  if (!t) return null;
  const n = Number(t);
  return Number.isFinite(n) ? n : null;
}

/** Prévia do custo médio ponderado depois de uma entrada (mesma regra da API). */
export function previaCustoMedio(saldo: number, custo: number, quantidade: number, custoUnitario: number): number {
  const base = Math.max(saldo, 0);
  return Math.round(((base * custo + quantidade * custoUnitario) / (base + quantidade)) * 10_000) / 10_000;
}
