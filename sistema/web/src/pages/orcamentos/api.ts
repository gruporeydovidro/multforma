import { api, qs, type Paged } from '../../lib/api';
import type { Option } from '../../components/ui';

// Cliente tipado do módulo Vendas (/api/orcamentos) e das consultas de apoio que ele usa.

export type StatusOrcamento = 'aberto' | 'aprovado' | 'fechado' | 'cancelado';
export type Destino = 'producao' | 'balcao' | 'instalacao';
export type FormaPagamento = 'dinheiro' | 'pix' | 'cartao_debito' | 'cartao_credito' | 'boleto' | 'cheque' | 'a_prazo';

export interface OrcamentoResumo {
  id: number;
  numero: number;
  data_emissao: string;
  validade: string | null;
  prazo_entrega: string | null;
  status: StatusOrcamento;
  destino: Destino;
  total: number;
  cliente_id: number;
  cliente_nome: string;
  vendedor_id: number | null;
  vendedor_nome: string | null;
}

export interface Cabecalho {
  cliente_id: number;
  vendedor_id: number | null;
  tabela_preco_id: number | null;
  data_emissao: string;
  validade: string | null;
  prazo_entrega: string | null;
  destino: Destino;
  contato: string | null;
  endereco_entrega: string | null;
  observacoes: string | null;
  desconto_pct: number;
  desconto_valor: number;
  acrescimo_valor: number;
  frete_valor: number;
}

export interface Endereco {
  cep: string | null;
  logradouro: string | null;
  numero: string | null;
  complemento: string | null;
  bairro: string | null;
  cidade: string | null;
  uf: string | null;
}

export interface ClienteOrcamento extends Endereco {
  id: number;
  nome: string;
  fantasia: string | null;
  cpf_cnpj: string | null;
  rg_ie: string | null;
  email: string | null;
  telefone: string | null;
  celular: string | null;
}

export interface FilialOrcamento extends Endereco {
  id: number;
  nome: string;
  cnpj: string | null;
  inscricao_estadual: string | null;
  telefone: string | null;
  email: string | null;
}

export interface ItemOrcamento {
  id: number;
  orcamento_projeto_id: number | null;
  seq: number;
  produto_id: number;
  produto_codigo: string;
  descricao: string;
  ambiente: string | null;
  unidade: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
  largura_calc_mm: number | null;
  altura_calc_mm: number | null;
  medida_cobrada: number;
  preco_unitario: number;
  desconto_valor: number;
  total: number;
}

export interface ProjetoOrcamento {
  id: number;
  projeto_id: number;
  projeto_nome: string;
  descricao: string | null;
  ambiente: string | null;
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
  vidro_nome: string | null;
  total: number;
}

export interface ParcelaOrcamento {
  id?: number;
  numero: number;
  vencimento: string;
  valor: number;
  forma_pagamento: FormaPagamento;
}

export interface Orcamento extends Cabecalho {
  id: number;
  numero: number;
  status: StatusOrcamento;
  subtotal: number;
  total: number;
  forma_pagamento: FormaPagamento | null;
  criado_em: string;
  fechado_em: string | null;
  cliente: ClienteOrcamento;
  filial: FilialOrcamento;
  vendedor_nome: string | null;
  tabela_preco_nome: string | null;
  itens: ItemOrcamento[];
  projetos: ProjetoOrcamento[];
  parcelas: ParcelaOrcamento[];
  itens_editaveis: boolean;
  totais: { subtotal: number; desconto: number; acrescimo: number; frete: number; total: number };
}

export interface ItemInput {
  produto_id: number;
  descricao?: string | null;
  ambiente?: string | null;
  quantidade: number;
  largura_mm?: number | null;
  altura_mm?: number | null;
  preco_unitario?: number;
  desconto_valor?: number;
}

export interface ProjetoInput {
  projeto_id: number;
  descricao?: string | null;
  ambiente?: string | null;
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
}

export interface PreviaProjeto {
  projeto: { id: number; nome: string };
  itens: Omit<ItemOrcamento, 'id' | 'seq' | 'produto_codigo'>[];
  total: number;
}

export interface FechamentoInput {
  forma_pagamento: FormaPagamento;
  parcelas: { vencimento: string; valor: number; forma_pagamento?: FormaPagamento }[];
}

export interface FiltroOrcamentos {
  q?: string;
  status?: StatusOrcamento | '';
  data_ini?: string;
  data_fim?: string;
  vendedor_id?: number | '';
  page?: number;
  pageSize?: number;
}

/** Produto do cadastro, para inclusão rápida (o preço final vem do servidor, pela tabela do orçamento). */
export interface ProdutoOpcao extends Option {
  unidade_venda: string;
  preco_venda: number;
}

export interface Opcao {
  id: number;
  nome: string;
}

const base = '/orcamentos';

export const orcamentosApi = {
  listar: (f: FiltroOrcamentos = {}) => api.get<Paged<OrcamentoResumo>>(`${base}${qs({ ...f })}`),
  obter: (id: number) => api.get<Orcamento>(`${base}/${id}`),
  criar: (c: Partial<Cabecalho> & { cliente_id: number }) => api.post<Orcamento>(base, c),
  atualizar: (id: number, c: Partial<Cabecalho>) => api.put<Orcamento>(`${base}/${id}`, c),

  adicionarItem: (id: number, it: ItemInput) => api.post<Orcamento>(`${base}/${id}/itens`, it),
  atualizarItem: (id: number, itemId: number, it: Partial<ItemInput>) => api.put<Orcamento>(`${base}/${id}/itens/${itemId}`, it),
  removerItem: (id: number, itemId: number) => api.del<Orcamento>(`${base}/${id}/itens/${itemId}`),

  previaProjeto: (id: number, p: ProjetoInput) => api.post<PreviaProjeto>(`${base}/${id}/projetos/previa`, p),
  adicionarProjeto: (id: number, p: ProjetoInput) => api.post<Orcamento>(`${base}/${id}/projetos`, p),
  removerProjeto: (id: number, projetoId: number) => api.del<Orcamento>(`${base}/${id}/projetos/${projetoId}`),

  aprovar: (id: number) => api.post<Orcamento>(`${base}/${id}/aprovar`),
  cancelar: (id: number) => api.post<Orcamento>(`${base}/${id}/cancelar`),
  fechar: (id: number, f: FechamentoInput) => api.post<Orcamento>(`${base}/${id}/fechar`, f),
  duplicar: (id: number) => api.post<Orcamento>(`${base}/${id}/duplicar`),
};

/** Consultas de apoio (endpoints de Cadastros e Projetos), já no formato das telas. */
export const apoioApi = {
  buscarClientes: async (q: string): Promise<Option[]> => {
    const r = await api.get<Paged<{ id: number; nome: string; fantasia: string | null; cpf_cnpj: string | null; cidade: string | null }>>(
      `/cadastros/pessoas${qs({ q, tipo: 'cliente', pageSize: 20 })}`,
    );
    return r.items.map((p) => ({ value: p.id, label: [p.nome, p.cpf_cnpj, p.cidade].filter(Boolean).join(' · ') }));
  },
  buscarProdutos: async (q: string): Promise<ProdutoOpcao[]> => {
    const r = await api.get<Paged<{ id: number; codigo: string; nome: string; unidade_venda: string; preco_venda: number }>>(
      `/cadastros/produtos${qs({ q, ativo: true, pageSize: 20 })}`,
    );
    return r.items.map((p) => ({ value: p.id, label: `${p.codigo} - ${p.nome}`, unidade_venda: p.unidade_venda, preco_venda: p.preco_venda }));
  },
  vendedores: async (): Promise<Opcao[]> => (await api.get<Paged<Opcao>>(`/cadastros/funcionarios${qs({ vendedor: true, pageSize: 200 })}`)).items,
  tabelasPreco: async (): Promise<Opcao[]> => (await api.get<{ items: (Opcao & { ativo: boolean })[] }>('/cadastros/tabelas-preco')).items,
  projetos: async (): Promise<Opcao[]> => (await api.get<Paged<Opcao>>(`/projetos${qs({ ativo: true, pageSize: 200 })}`)).items,
};
