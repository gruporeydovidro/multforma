import { api, qs, type Paged } from '../../lib/api';

// Cliente tipado do módulo Produção (/api/producao). As telas usam só estas funções.

export type StatusOrdem = 'aguardando' | 'em_producao' | 'concluida' | 'cancelada';
export type StatusItem = 'pendente' | 'em_producao' | 'concluido' | 'defeito';

export interface Setor {
  id: number;
  nome: string;
  ordem: number;
  ativo: boolean;
}
export type SetorInput = Omit<Setor, 'id'>;

export interface Motivo {
  id: number;
  descricao: string;
}

export interface OrdemResumo {
  id: number;
  numero: number;
  status: StatusOrdem;
  previsao_entrega: string | null;
  observacoes: string | null;
  criado_em: string;
  iniciado_em: string | null;
  concluido_em: string | null;
  orcamento_id: number;
  orcamento_numero: number;
  cliente_id: number;
  cliente_nome: string;
  atrasada: boolean;
  itens_total: number;
  itens_concluidos: number;
  itens_defeito: number;
  pecas_total: number;
}

export interface ItemOrdem {
  id: number;
  orcamento_item_id: number | null;
  produto_id: number;
  produto_codigo: string;
  espessura_mm: number | null;
  ambiente: string | null;
  descricao: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
  status: StatusItem;
  setor_atual_id: number | null;
  setor_atual_nome: string | null;
  defeitos: number;
}

export interface MarcacaoHistorico {
  id: number;
  ordem_item_id: number;
  item_descricao: string;
  setor_id: number;
  setor_nome: string;
  quantidade: number;
  defeito: boolean;
  motivo_id: number | null;
  motivo: string | null;
  observacao: string | null;
  usuario_nome: string | null;
  criado_em: string;
}

export interface OrdemDetalhe extends OrdemResumo {
  cliente_telefone: string | null;
  cliente_celular: string | null;
  endereco_entrega: string | null;
  contato: string | null;
  orcamento_observacoes: string | null;
  orcamento_data: string;
  itens: ItemOrdem[];
  marcacoes: MarcacaoHistorico[];
  setores: Omit<Setor, 'ativo'>[];
}

export interface FiltroOrdens {
  q?: string;
  status?: StatusOrdem | '';
  atrasadas?: boolean;
  de?: string;
  ate?: string;
  page?: number;
  pageSize?: number;
}

export interface MarcacaoInput {
  setor_id: number;
  quantidade?: number;
  defeito?: boolean;
  motivo_id?: number | null;
  observacao?: string | null;
}

export interface OrcamentoDisponivel {
  id: number;
  numero: number;
  data_emissao: string;
  prazo_entrega: string | null;
  total: number;
  cliente_nome: string;
}

export interface ItemPainel {
  item_id: number;
  ordem_id: number;
  ordem_numero: number;
  cliente_nome: string;
  descricao: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
  status: StatusItem;
  setor_atual_id: number | null;
  setor_atual_nome: string | null;
  previsao_entrega: string | null;
  atrasada: boolean;
}

export interface SetorPainel {
  id: number;
  nome: string;
  ordem: number;
  total_itens: number;
  total_pecas: number;
  itens: ItemPainel[];
}

export interface Painel {
  setores: SetorPainel[];
  defeitos: ItemPainel[];
}

export interface Periodo {
  de?: string;
  ate?: string;
}

export interface ProducaoSetorLinha {
  setor_id: number;
  setor_nome: string;
  marcacoes: number;
  pecas: number;
  m2: number;
  defeitos: number;
  pecas_defeito: number;
}

export interface RelatorioDefeitos {
  de: string;
  ate: string;
  por_motivo: { motivo_id: number | null; motivo: string; ocorrencias: number; pecas: number }[];
  por_setor: { setor_id: number; setor_nome: string; ocorrencias: number; pecas: number }[];
  ocorrencias: {
    id: number;
    criado_em: string;
    ordem_id: number;
    ordem_numero: number;
    item_descricao: string;
    largura_mm: number | null;
    altura_mm: number | null;
    setor_nome: string;
    motivo: string | null;
    quantidade: number;
    observacao: string | null;
    usuario_nome: string | null;
  }[];
}

const base = '/producao';
const ordem = (id: number) => `${base}/ordens/${id}`;
const item = (ordemId: number, itemId: number) => `${ordem(ordemId)}/itens/${itemId}`;

export const producaoApi = {
  // setores
  setores: (ativo?: boolean) => api.get<{ items: Setor[] }>(`${base}/setores${qs({ ativo })}`).then((r) => r.items),
  criarSetor: (s: SetorInput) => api.post<Setor>(`${base}/setores`, s),
  atualizarSetor: (id: number, s: SetorInput) => api.put<Setor>(`${base}/setores/${id}`, s),
  excluirSetor: (id: number) => api.del<void>(`${base}/setores/${id}`),

  // motivos
  motivos: () => api.get<{ items: Motivo[] }>(`${base}/motivos`).then((r) => r.items),
  criarMotivo: (descricao: string) => api.post<Motivo>(`${base}/motivos`, { descricao }),
  atualizarMotivo: (id: number, descricao: string) => api.put<Motivo>(`${base}/motivos/${id}`, { descricao }),
  excluirMotivo: (id: number) => api.del<void>(`${base}/motivos/${id}`),

  // ordens
  ordens: (f: FiltroOrdens) => api.get<Paged<OrdemResumo>>(`${base}/ordens${qs({ ...f, atrasadas: f.atrasadas || undefined })}`),
  ordem: (id: number) => api.get<OrdemDetalhe>(ordem(id)),
  orcamentosDisponiveis: (q: string) => api.get<{ items: OrcamentoDisponivel[] }>(`${base}/orcamentos-disponiveis${qs({ q })}`).then((r) => r.items),
  gerarOrdem: (orcamentoId: number) => api.post<OrdemDetalhe>(`${base}/ordens`, { orcamento_id: orcamentoId }),
  atualizarOrdem: (id: number, d: { previsao_entrega?: string | null; observacoes?: string | null }) => api.put<OrdemDetalhe>(ordem(id), d),
  cancelarOrdem: (id: number, motivo?: string) => api.post<OrdemDetalhe>(`${ordem(id)}/cancelar`, { motivo: motivo || undefined }),
  marcar: (ordemId: number, itemId: number, m: MarcacaoInput) => api.post<OrdemDetalhe>(`${item(ordemId, itemId)}/marcar`, m),
  refazer: (ordemId: number, itemId: number) => api.post<OrdemDetalhe>(`${item(ordemId, itemId)}/refazer`),

  // painel e relatórios
  painel: () => api.get<Painel>(`${base}/painel`),
  producaoPorSetor: (p: Periodo) => api.get<{ de: string; ate: string; items: ProducaoSetorLinha[] }>(`${base}/relatorios/producao-setor${qs({ ...p })}`),
  defeitos: (p: Periodo) => api.get<RelatorioDefeitos>(`${base}/relatorios/defeitos${qs({ ...p })}`),
  previsaoEntrega: (p: Periodo) => api.get<{ items: OrdemResumo[] }>(`${base}/relatorios/previsao-entrega${qs({ ...p })}`).then((r) => r.items),
};
