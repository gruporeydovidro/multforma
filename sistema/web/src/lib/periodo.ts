// Períodos de datas (funções puras).
import { addDays, today } from './format';

export interface Periodo {
  de: string;
  ate: string;
}

const p2 = (n: number) => String(n).padStart(2, '0');

/** Mês inteiro que contém a data. */
export function mesDe(iso: string): Periodo {
  const [y, m] = iso.split('-').map(Number);
  const ultimo = new Date(Date.UTC(y, m, 0)).getUTCDate();
  return { de: `${y}-${p2(m)}-01`, ate: `${y}-${p2(m)}-${p2(ultimo)}` };
}

/** Atalhos de período usados nos filtros. */
export function atalhosPeriodo(hoje = today()): { rotulo: string; periodo: Periodo }[] {
  const mesAtual = mesDe(hoje);
  const mesAnterior = mesDe(addDays(mesAtual.de, -1));
  return [
    { rotulo: 'Hoje', periodo: { de: hoje, ate: hoje } },
    { rotulo: 'Últimos 7 dias', periodo: { de: addDays(hoje, -6), ate: hoje } },
    { rotulo: 'Este mês', periodo: mesAtual },
    { rotulo: 'Mês anterior', periodo: mesAnterior },
    { rotulo: 'Este ano', periodo: { de: `${hoje.slice(0, 4)}-01-01`, ate: `${hoje.slice(0, 4)}-12-31` } },
  ];
}

export const periodoValido = (p: Periodo) => !!p.de && !!p.ate && p.de <= p.ate;
