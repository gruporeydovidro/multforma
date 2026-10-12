// Cliente tipado do módulo Relatórios: as telas usam só este arquivo, nunca montam URLs.
import { api, qs } from '../../lib/api';
import type { Periodo } from '../../lib/periodo';

export type Agrupamento = 'dia' | 'vendedor' | 'cliente' | 'produto';
export type TipoRanking = 'clientes' | 'produtos' | 'vendedores';

export interface Contagem {
  quantidade: number;
  total: number;
}

export interface LinhaVenda {
  chave: string;
  rotulo: string;
  quantidade: number;
  total: number;
  total_itens: number;
  custo: number;
  margem: number;
  margem_pct: number;
  medida?: number;
  unidade?: string;
}

/** A margem usa o custo ATUAL do produto (não o da data da venda); a API manda a nota para exibir. */
export interface MargemEstimada {
  base_custo: 'custo_atual_produto';
  nota: string;
}

export interface RelatorioVendas extends Periodo {
  agrupar: Agrupamento;
  linhas: LinhaVenda[];
  totais: Omit<LinhaVenda, 'chave' | 'rotulo' | 'medida' | 'unidade'>;
  margem_estimada: MargemEstimada;
}

export interface PosicaoRanking {
  posicao: number;
  id: number | null;
  nome: string;
  quantidade: number;
  total: number;
  margem: number;
  participacao_pct: number;
  medida?: number;
  unidade?: string;
}

export interface RelatorioRanking extends Periodo {
  tipo: TipoRanking;
  limite: number;
  items: PosicaoRanking[];
  total_geral: number;
  margem_estimada: MargemEstimada;
}

export interface ResumoFinanceiro extends Periodo {
  vendas: Contagem;
  recebido: number;
  pago: number;
  resultado: number;
  a_receber: Contagem;
  a_pagar: Contagem;
  vencidos: { receber: Contagem; pagar: Contagem };
  caixa: { saldo_anterior: number; entradas: number; saidas: number; saldo_final: number };
  despesas_por_categoria: { categoria: string; total: number }[];
}

const base = '/relatorios';

export const relatoriosApi = {
  vendas: (p: Periodo, agrupar: Agrupamento) => api.get<RelatorioVendas>(`${base}/vendas${qs({ ...p, agrupar })}`),
  ranking: (tipo: TipoRanking, p: Periodo, limite = 10) => api.get<RelatorioRanking>(`${base}/ranking/${tipo}${qs({ ...p, limite })}`),
  resumoFinanceiro: (p: Periodo) => api.get<ResumoFinanceiro>(`${base}/resumo-financeiro${qs({ ...p })}`),
};
