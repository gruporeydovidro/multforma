import { arredondar } from '../shared/numeros.js';

/** O que importar: tudo, só o recente (mais o que está em aberto) ou só os cadastros. */
export type Escopo = 'tudo' | 'recente' | 'cadastros';

export interface OpcoesImportacao {
  escopo: Escopo;
  /** Corte do escopo 'recente' (YYYY-MM-DD). */
  desde: string;
  /** Schema das tabelas de origem. */
  schemaOrigem: string;
  tamanhoLote: number;
}

export function dataAnosAtras(anos: number, hoje = new Date()): string {
  const d = new Date(hoje);
  d.setFullYear(d.getFullYear() - anos);
  return d.toISOString().slice(0, 10);
}

export const r2 = (v: unknown) => arredondar(Number(v ?? 0), 2);
export const r4 = (v: unknown) => arredondar(Number(v ?? 0), 4);
