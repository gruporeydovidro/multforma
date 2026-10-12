import { api, qs, type Paged } from '../../lib/api';
import type { Option } from '../../components/ui';

// Cliente tipado do módulo Projetos (/api/projetos). As telas usam só estas funções.

export const TIPOS_ITEM = [
  { value: 'vidro', label: 'Vidro' },
  { value: 'ferragem', label: 'Ferragem' },
  { value: 'acessorio', label: 'Acessório' },
  { value: 'servico', label: 'Serviço' },
] as const;
export type TipoItem = (typeof TIPOS_ITEM)[number]['value'];

export interface ProjetoResumo {
  id: number;
  nome: string;
  descricao: string | null;
  ativo: boolean;
  qtd_itens: number;
}

export interface ItemProjeto {
  id?: number;
  descricao: string;
  tipo: TipoItem;
  produto_id: number | null;
  produto_nome?: string | null;
  produto_codigo?: string | null;
  quantidade: number;
  formula_largura: string | null;
  formula_altura: string | null;
  folga_largura_mm: number;
  folga_altura_mm: number;
}

export interface Projeto {
  id: number;
  nome: string;
  descricao: string | null;
  ativo: boolean;
  itens: ItemProjeto[];
}

export type ProjetoInput = Omit<Projeto, 'id'>;

export interface Vao {
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
}

export interface PecaSimulada {
  projeto_item_id?: number;
  descricao: string;
  tipo: TipoItem;
  produto_id: number;
  produto_nome: string;
  produto_codigo: string;
  unidade: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

export interface FiltroProjetos {
  q?: string;
  ativo?: boolean;
  page?: number;
  pageSize?: number;
}

interface ProdutoCadastro {
  id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
}

export const projetosApi = {
  listar: (f: FiltroProjetos = {}) => api.get<Paged<ProjetoResumo>>(`/projetos${qs({ ...f })}`),
  obter: (id: number) => api.get<Projeto>(`/projetos/${id}`),
  criar: (p: ProjetoInput) => api.post<Projeto>('/projetos', p),
  atualizar: (id: number, p: ProjetoInput) => api.put<Projeto>(`/projetos/${id}`, p),
  excluir: (id: number) => api.del<void>(`/projetos/${id}`),
  simular: (id: number, vao: Vao) => api.post<{ pecas: PecaSimulada[] }>(`/projetos/${id}/simular`, vao),

  /** Busca de produtos ativos para o AsyncSelect (endpoint do módulo Cadastros). */
  buscarProdutos: async (q: string): Promise<Option[]> => {
    const r = await api.get<Paged<ProdutoCadastro>>(`/cadastros/produtos${qs({ q, ativo: true, pageSize: 20 })}`);
    return r.items.map((p) => ({ value: p.id, label: `${p.codigo} - ${p.nome}` }));
  },
};
