// Funções puras de exibição do Financeiro (sem JSX, testáveis).
import type { FormaPagamento, StatusTitulo } from './api';

export const FORMAS_PAGAMENTO: { value: FormaPagamento; label: string }[] = [
  { value: 'dinheiro', label: 'Dinheiro' },
  { value: 'pix', label: 'PIX' },
  { value: 'cartao_debito', label: 'Cartão de débito' },
  { value: 'cartao_credito', label: 'Cartão de crédito' },
  { value: 'boleto', label: 'Boleto' },
  { value: 'cheque', label: 'Cheque' },
  { value: 'a_prazo', label: 'A prazo' },
];

export const rotuloForma = (f: string | null | undefined) => FORMAS_PAGAMENTO.find((x) => x.value === f)?.label ?? (f || '—');

export type Tom = 'neutral' | 'green' | 'blue' | 'orange' | 'red';

/** Rótulo e cor do status de um título, considerando vencimento e pagamento parcial. */
export function situacaoTitulo(t: { status: StatusTitulo; vencida: boolean; valor_pago: number }): { label: string; tone: Tom } {
  if (t.status === 'pago') return { label: 'Pago', tone: 'green' };
  if (t.status === 'cancelado') return { label: 'Cancelado', tone: 'neutral' };
  if (t.vencida) return { label: t.valor_pago > 0 ? 'Vencido (parcial)' : 'Vencido', tone: 'red' };
  return { label: t.valor_pago > 0 ? 'Parcial' : 'Aberto', tone: t.valor_pago > 0 ? 'orange' : 'blue' };
}

export const round2 = (v: number) => (Math.sign(v) * Math.round(Math.abs(v) * 100 * (1 + 2 * Number.EPSILON))) / 100 || 0;

/** Soma meses ajustando ao último dia do mês (igual à regra da API). */
export function somarMeses(iso: string, meses: number): string {
  const [y, m, d] = iso.split('-').map(Number);
  const total = y * 12 + (m - 1) + meses;
  const ano = Math.floor(total / 12);
  const mes = (total % 12) + 1;
  const ultimo = new Date(Date.UTC(ano, mes, 0)).getUTCDate();
  const p = (n: number, w = 2) => String(n).padStart(w, '0');
  return `${p(ano, 4)}-${p(mes)}-${p(Math.min(d, ultimo))}`;
}

/** Prévia das parcelas mensais (a sobra do arredondamento fica na última). */
export function previaParcelas(total: number, quantidade: number, primeiroVencimento: string) {
  if (!(total > 0) || !(quantidade >= 1) || !/^\d{4}-\d{2}-\d{2}$/.test(primeiroVencimento)) return [];
  const t = round2(total);
  const base = Math.floor((t / quantidade) * 100 + 1e-6) / 100;
  return Array.from({ length: quantidade }, (_, i) => ({
    numero: i + 1,
    vencimento: somarMeses(primeiroVencimento, i),
    valor: i === quantidade - 1 ? round2(t - base * (quantidade - 1)) : base,
  }));
}

/** Converte texto digitado ('1.234,56' ou '1234.56') em número; NaN se inválido. */
export function lerValor(texto: string): number {
  const s = texto.trim();
  if (!s) return NaN;
  const normal = s.includes(',') ? s.replace(/\./g, '').replace(',', '.') : s;
  return /^-?\d+(\.\d+)?$/.test(normal) ? Number(normal) : NaN;
}

/** Valor por extenso simplificado para o recibo, ex.: 'cento e vinte reais e cinquenta centavos'. */
export function valorPorExtenso(valor: number): string {
  const un = ['', 'um', 'dois', 'três', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'catorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove'];
  const dz = ['', '', 'vinte', 'trinta', 'quarenta', 'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa'];
  const ct = ['', 'cento', 'duzentos', 'trezentos', 'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos', 'novecentos'];
  const ate999 = (n: number): string => {
    if (n === 0) return '';
    if (n === 100) return 'cem';
    const c = Math.floor(n / 100);
    const r = n % 100;
    const partes: string[] = [];
    if (c) partes.push(ct[c]);
    if (r < 20) { if (r) partes.push(un[r]); } else {
      partes.push(dz[Math.floor(r / 10)] + (r % 10 ? ` e ${un[r % 10]}` : ''));
    }
    return partes.join(' e ');
  };
  const grupos: [number, string, string][] = [[1e9, 'bilhão', 'bilhões'], [1e6, 'milhão', 'milhões'], [1e3, 'mil', 'mil']];
  const extenso = (n: number): string => {
    if (n === 0) return 'zero';
    const partes: string[] = [];
    let resto = n;
    for (const [div, s, p] of grupos) {
      const q = Math.floor(resto / div);
      if (q) partes.push(div === 1e3 && q === 1 ? 'mil' : `${ate999(q)} ${q === 1 ? s : p}`);
      resto %= div;
    }
    if (resto) partes.push(ate999(resto));
    if (partes.length > 1 && resto && (resto < 100 || resto % 100 === 0)) {
      const ult = partes.pop()!;
      return `${partes.join(', ')} e ${ult}`;
    }
    return partes.join(', ');
  };
  const v = round2(Math.abs(valor));
  const reais = Math.floor(v);
  const centavos = Math.round((v - reais) * 100);
  const txtReais = reais ? `${extenso(reais)} ${reais === 1 ? 'real' : 'reais'}` : '';
  const txtCent = centavos ? `${extenso(centavos)} ${centavos === 1 ? 'centavo' : 'centavos'}` : '';
  return [txtReais, txtCent].filter(Boolean).join(' e ') || 'zero real';
}
