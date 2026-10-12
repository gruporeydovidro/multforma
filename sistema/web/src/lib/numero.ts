/**
 * Converte texto digitado em pt-BR para número. Aceita '1.234,56', '1234,56', '1234.56' e '1.500' (milhar).
 * Retorna null para vazio ou inválido.
 */
export function lerNumero(texto: string | number | null | undefined): number | null {
  if (texto === null || texto === undefined) return null;
  if (typeof texto === 'number') return Number.isFinite(texto) ? texto : null;
  let s = texto.trim().replace(/\s|R\$/g, '');
  if (!s) return null;
  if (s.includes(',')) s = s.replace(/\./g, '').replace(',', '.');
  else if (/^-?\d{1,3}(\.\d{3})+$/.test(s)) s = s.replace(/\./g, '');
  const n = Number(s);
  return Number.isFinite(n) ? n : null;
}
