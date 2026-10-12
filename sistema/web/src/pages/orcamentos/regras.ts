import { lerNumero } from '../../lib/numero';
import type { Destino, FormaPagamento, ItemInput, ParcelaOrcamento, StatusOrcamento } from './api';

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

/** Arredonda a centavos, meio para longe do zero, sem o erro binário (10,075 → 10,08), como a API. */
export const round2 = (v: number) => {
  const n = Number(v);
  if (!Number.isFinite(n)) return n;
  const r = (Math.sign(n) * Math.round(Number((Math.abs(n) * 100).toPrecision(15)))) / 100;
  return r === 0 ? 0 : r;
};

/**
 * O que o usuário pode fazer no orçamento: escrita só para vendedor (admin sempre passa),
 * limitada pelo status. Fonte única para a tela, para não exibir ações que a API recusaria (403/409).
 */
export interface PermissoesOrcamento {
  /** Datas, destino, contato, observações (aberto ou aprovado). */
  cabecalho: boolean;
  /** Cliente, tabela, descontos, acréscimo e frete (só aberto). */
  financeiro: boolean;
  /** Incluir, editar e remover itens e projetos (só aberto). */
  itens: boolean;
  aprovar: boolean;
  fechar: boolean;
  cancelar: boolean;
  duplicar: boolean;
}

export function permissoesOrcamento(vendedor: boolean, status: StatusOrcamento | null): PermissoesOrcamento {
  const aberto = status === 'aberto';
  const aprovado = status === 'aprovado';
  return {
    cabecalho: vendedor && (status === null || aberto || aprovado),
    financeiro: vendedor && (status === null || aberto),
    itens: vendedor && aberto,
    aprovar: vendedor && aberto,
    fechar: vendedor && aprovado,
    cancelar: vendedor && (aberto || aprovado),
    duplicar: vendedor && status !== null,
  };
}

/** Campos de item como digitados (texto pt-BR: '1.500', '1.234,56'). */
export interface CamposItem {
  ambiente: string;
  largura: string;
  altura: string;
  quantidade: string;
  preco: string;
  desconto: string;
  descricao: string;
}

type DadosItem = Required<Pick<ItemInput, 'quantidade' | 'largura_mm' | 'altura_mm'>> & { preco_unitario: number | null; desconto_valor: number };

/**
 * Valida e converte os campos do item. Nada vira valor padrão sem aviso: quantidade em branco é erro.
 * `precoObrigatorio` = false deixa o preço em branco para o servidor sugerir (tabela ou cadastro).
 */
export function lerCamposItem(c: CamposItem, opcoes: { unidade?: string; precoObrigatorio: boolean }): { erro: string } | { dados: DadosItem } {
  const medida = (rotulo: string, s: string): number | null | string => {
    if (!s.trim()) return null;
    const n = lerNumero(s);
    if (n === null || !Number.isInteger(n) || n <= 0) return `${rotulo}: informe um número inteiro de milímetros maior que zero`;
    return n;
  };
  if (!c.quantidade.trim()) return { erro: 'Informe a quantidade' };
  const quantidade = lerNumero(c.quantidade);
  if (quantidade === null || quantidade <= 0) return { erro: 'Quantidade inválida: informe um número maior que zero' };
  const largura = medida('Largura', c.largura);
  if (typeof largura === 'string') return { erro: largura };
  const altura = medida('Altura', c.altura);
  if (typeof altura === 'string') return { erro: altura };
  if ((opcoes.unidade === 'M2' || opcoes.unidade === 'ML') && (largura === null || altura === null)) {
    return { erro: `Informe largura e altura (produto vendido por ${opcoes.unidade === 'M2' ? 'm²' : 'metro linear'})` };
  }
  let preco: number | null = null;
  if (c.preco.trim()) {
    preco = lerNumero(c.preco);
    if (preco === null || preco < 0) return { erro: 'Preço inválido: use números, ex.: 1.234,56' };
  } else if (opcoes.precoObrigatorio) {
    return { erro: 'Informe o preço unitário' };
  }
  const desconto = c.desconto.trim() ? lerNumero(c.desconto) : 0;
  if (desconto === null || desconto < 0) return { erro: 'Desconto inválido: use números, ex.: 10,50' };
  return { dados: { quantidade, largura_mm: largura, altura_mm: altura, preco_unitario: preco, desconto_valor: desconto } };
}

/** Texto pt-BR de um número para um campo editável ('1234.5' → '1234,5'). */
export const textoNumero = (v: number | null | undefined): string => (v === null || v === undefined ? '' : String(v).replace('.', ','));

/** Soma meses a uma data ISO, limitando ao último dia do mês. */
export function adicionarMeses(iso: string, meses: number): string {
  const [y, m, d] = iso.split('-').map(Number);
  const alvo = new Date(Date.UTC(y, m - 1 + meses, 1));
  const ultimo = new Date(Date.UTC(alvo.getUTCFullYear(), alvo.getUTCMonth() + 1, 0)).getUTCDate();
  alvo.setUTCDate(Math.min(d, ultimo));
  return alvo.toISOString().slice(0, 10);
}

/** N parcelas mensais que somam exatamente o total (centavos de sobra na última, como no Financeiro). */
export function gerarParcelas(total: number, n: number, primeiroVencimento: string, forma: FormaPagamento): ParcelaOrcamento[] {
  const qtd = Math.max(1, Math.floor(n));
  const centavos = Math.round(round2(total) * 100);
  const base = Math.floor(centavos / qtd);
  const resto = centavos - base * qtd;
  return Array.from({ length: qtd }, (_, i) => ({
    numero: i + 1,
    vencimento: adicionarMeses(primeiroVencimento, i),
    valor: (base + (i === qtd - 1 ? resto : 0)) / 100,
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
