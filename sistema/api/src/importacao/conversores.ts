// Conversões puras dos valores do sistema anterior para o modelo do VidroGest.
import { CpfCnpj } from '../modules/cadastros/domain/cpf-cnpj.js';
import { Formula } from '../modules/projetos/domain/AvaliadorFormula.js';

/** Texto aparado; vazio vira null. */
export function texto(v: unknown, max?: number): string | null {
  if (v === null || v === undefined) return null;
  const s = String(v).replace(/\s+$/g, '').replace(/^\s+/g, '');
  if (!s) return null;
  return max ? s.slice(0, max) : s;
}

/** Data/hora do legado (Date ou texto) para 'YYYY-MM-DD'. */
export function dia(v: unknown): string | null {
  if (!v) return null;
  if (v instanceof Date) {
    if (Number.isNaN(v.getTime())) return null;
    const p = (n: number) => String(n).padStart(2, '0');
    return `${v.getFullYear()}-${p(v.getMonth() + 1)}-${p(v.getDate())}`;
  }
  const m = /^(\d{4})-(\d{2})-(\d{2})/.exec(String(v));
  return m ? `${m[1]}-${m[2]}-${m[3]}` : null;
}

export function somarDias(iso: string, dias: number): string {
  const d = new Date(`${iso}T12:00:00Z`);
  d.setUTCDate(d.getUTCDate() + dias);
  return d.toISOString().slice(0, 10);
}

/** Flag do legado ('1', 'S', 'T', true) para boolean; `padrao` quando vazio. */
export function flag(v: unknown, padrao = false): boolean {
  if (v === null || v === undefined || v === '') return padrao;
  return ['1', 's', 'sim', 't', 'true', 'y'].includes(String(v).trim().toLowerCase());
}

export interface DocumentoConvertido {
  valor: string | null;
  aviso?: string;
}

/** CPF/CNPJ formatado quando válido; inválido não é gravado (vira aviso). */
export function documento(v: unknown): DocumentoConvertido {
  const bruto = texto(v);
  if (!bruto) return { valor: null };
  const doc = CpfCnpj.analisar(bruto);
  return doc ? { valor: doc.formatado } : { valor: null, aviso: `Documento inválido no sistema anterior: ${bruto}` };
}

/** Telefone só com dígitos do legado para (00) 0000-0000 / (00) 00000-0000. */
export function telefone(v: unknown): string | null {
  const d = texto(v)?.replace(/\D/g, '');
  if (!d) return null;
  if (d.length === 10) return `(${d.slice(0, 2)}) ${d.slice(2, 6)}-${d.slice(6)}`;
  if (d.length === 11) return `(${d.slice(0, 2)}) ${d.slice(2, 7)}-${d.slice(7)}`;
  return d;
}

export function cep(v: unknown): string | null {
  const d = texto(v)?.replace(/\D/g, '');
  return d && d.length === 8 ? `${d.slice(0, 5)}-${d.slice(5)}` : d || null;
}

/** tp_pessoa: 1 = física, 2 = jurídica. */
export const natureza = (v: unknown): 'F' | 'J' => (String(v ?? '').trim() === '2' ? 'J' : 'F');

export type UnidadeVidroGest = 'M2' | 'ML' | 'UN' | 'PC' | 'KG';

/**
 * Unidade de venda do sistema anterior para a do VidroGest. M2 = área; MT/ML = metro linear (o legado tem M2 separado);
 * CE = moldura para quadro, vendida por metro linear; PÇ/PC = peça; demais (CJ, CX, PR...) = unidade.
 */
export const UNIDADES_LEGADO: Record<string, UnidadeVidroGest> = { M2: 'M2', MT: 'ML', ML: 'ML', CE: 'ML', PC: 'PC', 'PÇ': 'PC', KG: 'KG', UN: 'UN' };

export function unidadeVenda(v: unknown): UnidadeVidroGest {
  return UNIDADES_LEGADO[String(v ?? '').trim().toUpperCase()] ?? 'UN';
}

export type StatusOrcamento = 'aberto' | 'aprovado' | 'fechado' | 'cancelado';

/**
 * Situação do orçamento. Observado nas consultas do sistema anterior: '9' = fechado; '2' e '5' são vendas
 * faturadas (nota fiscal); '3' = confirmado. Cancelado é dado pela data de cancelamento.
 */
export function statusOrcamento(st: unknown, dtCancelamento: unknown): StatusOrcamento {
  if (dtCancelamento) return 'cancelado';
  const s = String(st ?? '').trim();
  if (['9', '2', '5'].includes(s)) return 'fechado';
  if (s === '3') return 'aprovado';
  return 'aberto';
}

/** fl_formapagto do orçamento: 1 à vista, 2 a prazo, 3 cartão, 4 cheque, 5 contra-apresentação, 6 multiparcelado. */
export function formaOrcamento(v: unknown): string | null {
  const mapa: Record<string, string> = { '1': 'dinheiro', '2': 'a_prazo', '3': 'cartao_credito', '4': 'cheque', '5': 'a_prazo', '6': 'boleto', '7': 'cartao_debito', '8': 'pix' };
  return mapa[String(v ?? '').trim()] ?? null;
}

/** fl_pagamento do portador: 1 dinheiro, 2 cheque, 3 boleto, 4 cartão, 5 depósito, 6 transferência, 7 vale, 8 tíquete, 9 duplicata. */
export function formaPortador(v: unknown): string {
  const mapa: Record<string, string> = { '1': 'dinheiro', '2': 'cheque', '3': 'boleto', '4': 'cartao_credito', '5': 'pix', '6': 'pix', '9': 'a_prazo' };
  return mapa[String(v ?? '').trim()] ?? 'a_prazo';
}

export interface FormulaConvertida {
  texto: string | null;
  aviso?: string;
}

/**
 * Converte a fórmula do gabarito para a sintaxe do VidroGest (variáveis L e A, ponto decimal) e a valida.
 * Fórmula vazia continua vazia; inválida não é gravada (vira aviso com o texto original).
 */
export function formula(v: unknown): FormulaConvertida {
  const original = texto(v);
  if (!original) return { texto: null };
  const convertida = original
    .toUpperCase()
    .replace(/LARGURA|LARG\b/g, 'L')
    .replace(/ALTURA|ALT\b/g, 'A')
    .replace(/(\d),(\d)/g, '$1.$2')
    .replace(/\bMIN\b/g, 'min')
    .replace(/\bMAX\b/g, 'max')
    .replace(/\s+/g, ' ')
    .trim();
  try {
    Formula.compilar(convertida);
    return { texto: convertida };
  } catch (e) {
    return { texto: null, aviso: `Fórmula não convertida "${original}": ${(e as Error).message}` };
  }
}
