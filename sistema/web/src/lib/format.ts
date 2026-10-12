const brl = new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' });
const num = (d: number) => new Intl.NumberFormat('pt-BR', { minimumFractionDigits: d, maximumFractionDigits: d });

export const money = (v: number | null | undefined) => brl.format(Number(v ?? 0));
export const decimal = (v: number | null | undefined, d = 2) => num(d).format(Number(v ?? 0));
/** 'YYYY-MM-DD' (ou ISO) -> 'DD/MM/YYYY' */
export const date = (v: string | null | undefined) => {
  if (!v) return '';
  const [y, m, d] = v.slice(0, 10).split('-');
  return `${d}/${m}/${y}`;
};
export const dateTime = (v: string | null | undefined) => (v ? new Date(v).toLocaleString('pt-BR') : '');
export const today = () => new Date().toISOString().slice(0, 10);
export const addDays = (iso: string, days: number) => {
  const d = new Date(`${iso}T12:00:00`);
  d.setDate(d.getDate() + days);
  return d.toISOString().slice(0, 10);
};
