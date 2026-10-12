// Cliente tipado do módulo Início (painel de indicadores).
import { api } from '../../lib/api';

export interface Contagem {
  quantidade: number;
  total: number;
}

export interface Painel {
  hoje: string;
  mes: { de: string; ate: string };
  vendas_mes: Contagem;
  vendas_hoje: Contagem;
  ticket_medio: number;
  orcamentos_abertos: Contagem;
  orcamentos_aprovados: Contagem;
  receber_vencido: Contagem;
  pagar_vencido: Contagem;
  pagar_7_dias: Contagem;
  producao: { em_andamento: number; aguardando: number; em_producao: number; atrasadas: number };
  ultimos_orcamentos: { id: number; numero: number; cliente_nome: string; data_emissao: string; status: string; total: number }[];
}

export const inicioApi = {
  painel: () => api.get<Painel>('/relatorios/painel'),
};
