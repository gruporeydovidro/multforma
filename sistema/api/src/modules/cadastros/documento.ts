/**
 * Validação de CPF e CNPJ por dígito verificador.
 * O CNPJ aceita o formato alfanumérico (12 posições [0-9A-Z] + 2 dígitos), em vigor desde 2026;
 * cada caractere vale o código ASCII menos 48, o que mantém o cálculo idêntico para CNPJs numéricos.
 */

export type TipoDocumento = 'cpf' | 'cnpj';

/** Remove a máscara (pontos, barras, hífens e espaços) e coloca as letras em maiúsculas. */
export function limparDocumento(valor: string): string {
  return valor.replace(/[^0-9A-Za-z]/g, '').toUpperCase();
}

function digitoVerificador(base: string, pesoInicial: number, pesoMaximo: number): number {
  let soma = 0;
  let peso = pesoInicial;
  for (const ch of base) {
    soma += (ch.charCodeAt(0) - 48) * peso;
    peso = peso === 2 ? pesoMaximo : peso - 1;
  }
  const resto = soma % 11;
  return resto < 2 ? 0 : 11 - resto;
}

export function cpfValido(valor: string): boolean {
  const d = limparDocumento(valor);
  if (!/^\d{11}$/.test(d) || /^(\d)\1{10}$/.test(d)) return false;
  const dv1 = digitoVerificador(d.slice(0, 9), 10, 10);
  const dv2 = digitoVerificador(d.slice(0, 10), 11, 11);
  return d.endsWith(`${dv1}${dv2}`);
}

export function cnpjValido(valor: string): boolean {
  const d = limparDocumento(valor);
  if (!/^[0-9A-Z]{12}\d{2}$/.test(d) || /^(\d)\1{13}$/.test(d)) return false;
  const dv1 = digitoVerificador(d.slice(0, 12), 5, 9);
  const dv2 = digitoVerificador(d.slice(0, 13), 6, 9);
  return d.endsWith(`${dv1}${dv2}`);
}

/** Aplica a máscara padrão: 000.000.000-00 ou 00.000.000/0000-00. */
export function formatarDocumento(valor: string): string {
  const d = limparDocumento(valor);
  if (d.length === 11) return `${d.slice(0, 3)}.${d.slice(3, 6)}.${d.slice(6, 9)}-${d.slice(9)}`;
  if (d.length === 14) return `${d.slice(0, 2)}.${d.slice(2, 5)}.${d.slice(5, 8)}/${d.slice(8, 12)}-${d.slice(12)}`;
  return valor;
}

/** Retorna o tipo do documento válido, ou null se não for CPF nem CNPJ válido. */
export function identificarDocumento(valor: string): TipoDocumento | null {
  if (cpfValido(valor)) return 'cpf';
  if (cnpjValido(valor)) return 'cnpj';
  return null;
}
