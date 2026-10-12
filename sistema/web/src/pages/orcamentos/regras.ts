import type { Destino, FormaPagamento, ParcelaOrcamento, StatusOrcamento } from './api';

// Funções puras de exibição do módulo Vendas (sem JSX). Os valores oficiais são sempre calculados no servidor.

export const AMBIENTES = ['Banheiro', 'Cozinha', 'Hall de Entrada', 'Quarto', 'Sala', 'Sala de Estar'] as const;

export const STATUS: Record<StatusOrcamento, { label: string; tone: 'blue' | 'orange' | 'green' | 'red' }> = {
  aberto: { label: 'Aberto', tone: 'blue' },
  aprovado: { label: 'Aprovado', tone: 'orange' },
  fechado: { label: 'Fechado', tone: 'green' },
  cancelado: { label: 'Cancelado', tone: 'red' },
};

export const DESTINOS: Record<Destino, string> = { producao: 'Produção', balcao: 'Balcão', instalacao: 'Instalação' };

export const FORMAS: Record<FormaPagamento, string> = {
  dinheiro: 'Dinheiro',
  pix: 'PIX',
  cartao_debito: 'Cartão de débito',
  cartao_credito: 'Cartão de crédito',
  boleto: 'Boleto',
  cheque: 'Cheque',
  a_prazo: 'A prazo',
};

export const FORMAS_A_VISTA: FormaPagamento[] = ['dinheiro', 'pix', 'cartao_debito'];

export const round2 = (v: number) => Math.round((Number(v) + Math.sign(Number(v)) * Number.EPSILON) * 100) / 100;

/** Soma meses a uma data ISO, limitando ao último dia do mês. */
export function adicionarMeses(iso: string, meses: number): string {
  const [y, m, d] = iso.split('-').map(Number);
  const alvo = new Date(Date.UTC(y, m - 1 + meses, 1));
  const ultimo = new Date(Date.UTC(alvo.getUTCFullYear(), alvo.getUTCMonth() + 1, 0)).getUTCDate();
  alvo.setUTCDate(Math.min(d, ultimo));
  return alvo.toISOString().slice(0, 10);
}

/** N parcelas mensais que somam exatamente o total (centavos de sobra na primeira). */
export function gerarParcelas(total: number, n: number, primeiroVencimento: string, forma: FormaPagamento): ParcelaOrcamento[] {
  const qtd = Math.max(1, Math.floor(n));
  const centavos = Math.round(total * 100);
  const base = Math.floor(centavos / qtd);
  const resto = centavos - base * qtd;
  return Array.from({ length: qtd }, (_, i) => ({
    numero: i + 1,
    vencimento: adicionarMeses(primeiroVencimento, i),
    valor: (base + (i === 0 ? resto : 0)) / 100,
    forma_pagamento: forma,
  }));
}

export const somaParcelas = (ps: { valor: number }[]) => round2(ps.reduce((s, p) => s + Number(p.valor || 0), 0));

/** As parcelas precisam somar o total, com tolerância de R$ 0,01. */
export const parcelasConferem = (ps: { valor: number }[], total: number) => Math.abs(somaParcelas(ps) - round2(total)) <= 0.0100001;

/** "1500 x 1900" (mm), ou vazio. */
export function medidas(l: number | null | undefined, a: number | null | undefined): string {
  if (!l && !a) return '';
  return `${l ?? '—'} x ${a ?? '—'}`;
}

/** Medidas usadas no cálculo, só quando o arredondamento as alterou. */
export function medidasCalculadas(it: { largura_mm: number | null; altura_mm: number | null; largura_calc_mm: number | null; altura_calc_mm: number | null }): string {
  if (it.largura_calc_mm === it.largura_mm && it.altura_calc_mm === it.altura_mm) return '';
  return medidas(it.largura_calc_mm, it.altura_calc_mm);
}

export function enderecoLinha(e: { logradouro: string | null; numero: string | null; complemento: string | null; bairro: string | null; cidade: string | null; uf: string | null; cep: string | null }): string {
  const rua = [e.logradouro, e.numero].filter(Boolean).join(', ');
  const local = [e.bairro, [e.cidade, e.uf].filter(Boolean).join('/')].filter(Boolean).join(' - ');
  return [rua, e.complemento, local, e.cep && `CEP ${e.cep}`].filter(Boolean).join(' · ');
}
