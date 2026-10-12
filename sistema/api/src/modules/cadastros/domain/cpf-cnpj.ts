import { ErroDeValidacao } from './erros.js';

export type TipoDocumento = 'cpf' | 'cnpj';

/**
 * Objeto de valor para CPF/CNPJ, validado pelo dígito verificador.
 * O CNPJ aceita o formato alfanumérico (12 posições [0-9A-Z] + 2 dígitos) em vigor desde 2026:
 * cada caractere vale o código ASCII menos 48, o que mantém o cálculo dos CNPJs numéricos.
 */
export class CpfCnpj {
  private constructor(readonly valor: string, readonly tipo: TipoDocumento) {}

  /** Remove a máscara (pontos, barras, hífens e espaços) e coloca as letras em maiúsculas. */
  static limpar(texto: string): string {
    return texto.replace(/[^0-9A-Za-z]/g, '').toUpperCase();
  }

  static cpfValido(texto: string): boolean {
    const d = CpfCnpj.limpar(texto);
    if (!/^\d{11}$/.test(d) || /^(\d)\1{10}$/.test(d)) return false;
    return d.endsWith(`${digito(d.slice(0, 9), 10, 10)}${digito(d.slice(0, 10), 11, 11)}`);
  }

  static cnpjValido(texto: string): boolean {
    const d = CpfCnpj.limpar(texto);
    if (!/^[0-9A-Z]{12}\d{2}$/.test(d) || /^(\d)\1{13}$/.test(d)) return false;
    return d.endsWith(`${digito(d.slice(0, 12), 5, 9)}${digito(d.slice(0, 13), 6, 9)}`);
  }

  /** CPF ou CNPJ válido, ou null. */
  static analisar(texto: string): CpfCnpj | null {
    if (CpfCnpj.cpfValido(texto)) return new CpfCnpj(CpfCnpj.limpar(texto), 'cpf');
    if (CpfCnpj.cnpjValido(texto)) return new CpfCnpj(CpfCnpj.limpar(texto), 'cnpj');
    return null;
  }

  /** Exige um documento válido do tipo pedido; senão lança ErroDeValidacao no campo informado. */
  static exigir(texto: string, tipo: TipoDocumento, campo = 'cpf_cnpj'): CpfCnpj {
    const doc = CpfCnpj.analisar(texto);
    if (!doc || doc.tipo !== tipo) throw new ErroDeValidacao(campo, `${tipo.toUpperCase()} inválido`);
    return doc;
  }

  /** 000.000.000-00 ou 00.000.000/0000-00 */
  get formatado(): string {
    const d = this.valor;
    return this.tipo === 'cpf'
      ? `${d.slice(0, 3)}.${d.slice(3, 6)}.${d.slice(6, 9)}-${d.slice(9)}`
      : `${d.slice(0, 2)}.${d.slice(2, 5)}.${d.slice(5, 8)}/${d.slice(8, 12)}-${d.slice(12)}`;
  }

  toString(): string {
    return this.formatado;
  }
}

/** Módulo 11 com pesos decrescentes de pesoInicial até 2, reiniciando em pesoMaximo. */
function digito(base: string, pesoInicial: number, pesoMaximo: number): number {
  let soma = 0;
  let peso = pesoInicial;
  for (const ch of base) {
    soma += (ch.charCodeAt(0) - 48) * peso;
    peso = peso === 2 ? pesoMaximo : peso - 1;
  }
  const resto = soma % 11;
  return resto < 2 ? 0 : 11 - resto;
}
