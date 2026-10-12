// Cliente tipado do módulo Financeiro: as telas usam só este arquivo, nunca montam URLs.
import { api, qs, type Paged } from '../../lib/api';
import type { Option } from '../../components/ui';

// ---------- tipos ----------

export type StatusTitulo = 'aberto' | 'pago' | 'cancelado';
export type FormaPagamento = 'dinheiro' | 'pix' | 'cartao_debito' | 'cartao_credito' | 'boleto' | 'cheque' | 'a_prazo';
export type TipoLancamento = 'entrada' | 'saida';

export interface Pagamento {
  id: number;
  data: string;
  tipo: TipoLancamento;
  valor: number;
  descricao: string;
  forma_pagamento: FormaPagamento | null;
  criado_em: string;
  usuario_nome: string | null;
}

interface TituloBase {
  id: number;
  filial_id: number;
  documento: string | null;
  parcela: number;
  emissao: string;
  vencimento: string;
  valor: number;
  valor_pago: number;
  saldo: number;
  data_pagamento: string | null;
  forma_pagamento: FormaPagamento | null;
  status: StatusTitulo;
  observacao: string | null;
  vencida: boolean;
  dias_atraso: number;
  pagamentos?: Pagamento[];
}

export interface ContaReceber extends TituloBase {
  cliente_id: number;
  cliente_nome: string;
  cliente_cpf_cnpj: string | null;
  orcamento_id: number | null;
  orcamento_numero: number | null;
}

export interface ContaPagar extends TituloBase {
  fornecedor_id: number | null;
  fornecedor_nome: string | null;
  descricao: string;
  categoria: string | null;
}

export interface TotaisTitulos {
  aberto: number;
  vencido: number;
  qtd_vencido: number;
  pago_periodo: number;
}

export type ListaTitulos<T> = Paged<T> & { totais: TotaisTitulos };

export interface FiltroTitulos {
  q?: string;
  status?: StatusTitulo | '';
  vencidas?: boolean;
  de?: string;
  ate?: string;
  cliente_id?: number | null;
  orcamento_id?: number | null;
  fornecedor_id?: number | null;
  categoria?: string;
  page?: number;
  pageSize?: number;
}

export interface Baixa {
  valor?: number;
  data?: string;
  forma_pagamento: FormaPagamento;
}

interface Parcelamento {
  valor_total: number;
  parcelas: number;
  primeiro_vencimento: string;
  forma_pagamento?: FormaPagamento | null;
  documento?: string | null;
  observacao?: string | null;
}

export interface NovaContaReceber extends Parcelamento {
  cliente_id: number;
}

export interface DadosContaPagar {
  fornecedor_id?: number | null;
  descricao: string;
  categoria?: string | null;
  documento?: string | null;
  observacao?: string | null;
  forma_pagamento?: FormaPagamento | null;
}

export type NovaContaPagar = DadosContaPagar & Parcelamento & { emissao?: string | null };
export type EdicaoContaPagar = DadosContaPagar & { vencimento: string; valor: number };

export interface AlertaPagar {
  dias: number;
  vencidas: ContaPagar[];
  a_vencer: ContaPagar[];
  total_vencido: number;
  total_a_vencer: number;
}

export interface LancamentoCaixa {
  id: number;
  data: string;
  tipo: TipoLancamento;
  valor: number;
  descricao: string;
  forma_pagamento: FormaPagamento | null;
  conta_receber_id: number | null;
  conta_pagar_id: number | null;
  usuario_nome: string | null;
  origem: 'receber' | 'pagar' | 'manual';
  manual: boolean;
  saldo: number;
}

export interface Caixa {
  de: string;
  ate: string;
  saldo_anterior: number;
  entradas: number;
  saidas: number;
  saldo_final: number;
  lancamentos: LancamentoCaixa[];
  resumo_saidas: { grupo: string; quantidade: number; total: number }[];
}

export interface NovoLancamento {
  data?: string | null;
  tipo: TipoLancamento;
  valor: number;
  descricao: string;
  forma_pagamento?: FormaPagamento | null;
}

// ---------- endpoints ----------

const base = '/financeiro';
const filtroQs = (f: FiltroTitulos) => qs({ ...f, vencidas: f.vencidas ? 'true' : undefined });

export const financeiroApi = {
  receber: {
    listar: (f: FiltroTitulos) => api.get<ListaTitulos<ContaReceber>>(`${base}/receber${filtroQs(f)}`),
    obter: (id: number) => api.get<ContaReceber>(`${base}/receber/${id}`),
    criar: (b: NovaContaReceber) => api.post<{ items: ContaReceber[] }>(`${base}/receber`, b),
    baixar: (id: number, b: Baixa) => api.post<ContaReceber>(`${base}/receber/${id}/baixar`, b),
    cancelar: (id: number, motivo?: string) => api.post<ContaReceber>(`${base}/receber/${id}/cancelar`, { motivo }),
    estornar: (id: number) => api.post<ContaReceber>(`${base}/receber/${id}/estornar`),
  },
  pagar: {
    listar: (f: FiltroTitulos) => api.get<ListaTitulos<ContaPagar>>(`${base}/pagar${filtroQs(f)}`),
    obter: (id: number) => api.get<ContaPagar>(`${base}/pagar/${id}`),
    alerta: (dias = 7) => api.get<AlertaPagar>(`${base}/pagar/alerta${qs({ dias })}`),
    criar: (b: NovaContaPagar) => api.post<{ items: ContaPagar[] }>(`${base}/pagar`, b),
    atualizar: (id: number, b: EdicaoContaPagar) => api.put<ContaPagar>(`${base}/pagar/${id}`, b),
    excluir: (id: number) => api.del<void>(`${base}/pagar/${id}`),
    copiar: (id: number, vencimento?: string) => api.post<ContaPagar>(`${base}/pagar/${id}/copiar`, { vencimento }),
    baixar: (id: number, b: Baixa) => api.post<ContaPagar>(`${base}/pagar/${id}/baixar`, b),
    cancelar: (id: number, motivo?: string) => api.post<ContaPagar>(`${base}/pagar/${id}/cancelar`, { motivo }),
    estornar: (id: number) => api.post<ContaPagar>(`${base}/pagar/${id}/estornar`),
  },
  caixa: {
    consultar: (de?: string, ate?: string) => api.get<Caixa>(`${base}/caixa${qs({ de, ate })}`),
    lancar: (b: NovoLancamento) => api.post<LancamentoCaixa>(`${base}/caixa`, b),
    excluir: (id: number) => api.del<void>(`${base}/caixa/${id}`),
  },
};

/** Busca de pessoas pelo endpoint de Cadastros, já no formato do AsyncSelect. */
export function buscarPessoas(tipo: 'cliente' | 'fornecedor') {
  return async (q: string): Promise<Option[]> => {
    const r = await api.get<Paged<{ id: number; nome: string; fantasia: string | null; cpf_cnpj: string | null }>>(
      `/cadastros/pessoas${qs({ q, tipo, pageSize: 20 })}`,
    );
    return r.items.map((p) => ({ value: p.id, label: p.cpf_cnpj ? `${p.nome} (${p.cpf_cnpj})` : p.nome }));
  };
}
