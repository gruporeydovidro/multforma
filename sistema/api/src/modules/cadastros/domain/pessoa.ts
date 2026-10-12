import { CpfCnpj } from './cpf-cnpj.js';

export type Natureza = 'F' | 'J';
export type TipoPessoa = 'cliente' | 'fornecedor' | 'ambos';

/** Regras do documento de cliente/fornecedor: pessoa física usa CPF, jurídica usa CNPJ; ambos opcionais. */
export class DocumentoDaPessoa {
  /** Valida o documento conforme a natureza e devolve-o formatado (ou null se vazio). */
  static normalizar(natureza: Natureza, documento: string | null | undefined): string | null {
    if (!documento?.trim()) return null;
    return CpfCnpj.exigir(documento, natureza === 'F' ? 'cpf' : 'cnpj', 'cpf_cnpj').formatado;
  }
}
