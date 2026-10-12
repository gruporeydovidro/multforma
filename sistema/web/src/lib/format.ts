const brl = new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' });
const num = (d: number) => new Intl.NumberFormat('pt-BR', { minimumFractionDigits: d, maximumFractionDigits: d });

export const money = (v: number | null | undefined) => brl.format(Number(v ?? 0));
export const decimal = (v: number | null | undefined, d = 2) => num(d).format(Number(v ?? 0));
const p2 = (n: number) => String(n).padStart(2, '0');
/** Data local (fuso do navegador) no formato 'YYYY-MM-DD'. */
const isoLocal = (d: Date) => `${d.getFullYear()}-${p2(d.getMonth() + 1)}-${p2(d.getDate())}`;

/** 'YYYY-MM-DD' -> 'DD/MM/YYYY'. Instantes (timestamptz, com hora) são convertidos para o dia local. */
export const date = (v: string | null | undefined) => {
  if (!v) return '';
  const dia = v.length > 10 ? isoLocal(new Date(v)) : v;
  const [y, m, d] = dia.split('-');
  return `${d}/${m}/${y}`;
};
export const dateTime = (v: string | null | undefined) => (v ? new Date(v).toLocaleString('pt-BR') : '');
/** Hoje no fuso local (toISOString usaria UTC e viraria o dia às 21h em Brasília). */
export const today = () => isoLocal(new Date());
export const addDays = (iso: string, days: number) => {
  const d = new Date(`${iso}T12:00:00`);
  d.setDate(d.getDate() + days);
  return isoLocal(d);
};
