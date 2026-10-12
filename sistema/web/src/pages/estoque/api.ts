import { api, qs, type Paged } from '../../lib/api';

// Cliente tipado do módulo Estoque (/api/estoque). As telas usam só estas funções.

export type TipoMovimento = 'entrada' | 'saida' | 'acerto';
export type OrigemMovimento = 'compra' | 'venda' | 'acerto' | 'producao' | 'manual';

export interface SaldoProduto {
  produto_id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
  saldo: number;
  estoque_minimo: number;
  custo: number;
  valor_estoque: number;
  abaixo_minimo: boolean;
}

export interface SaldoDetalhe {
  id: number;
  codigo: string;
  nome: string;
  unidade_venda: string;
  controla_estoque: boolean;
  ativo: boolean;
  custo: number;
  estoque_minimo: number;
  saldo: number;
  abaixo_minimo: boolean;
}

export interface Movimento {
  id: number;
  criado_em: string;
  produto_id: number;
  produto_codigo: string;
  produto_nome: string;
  unidade_venda: string;
  tipo: TipoMovimento;
  origem: OrigemMovimento;
  quantidade: number;
  custo_unitario: number | null;
  documento: string | null;
  referencia_id: number | null;
  observacao: string | null;
  usuario_nome: string | null;
}

export interface FiltroSaldos {
  q?: string;
  abaixo_minimo?: boolean;
  page?: number;
  pageSize?: number;
}

export interface FiltroMovimentos {
  produto_id?: number | null;
  tipo?: TipoMovimento | '';
  origem?: OrigemMovimento | '';
  de?: string;
  ate?: string;
  page?: number;
  pageSize?: number;
}

export interface EntradaInput {
  produto_id: number;
  quantidade: number;
  custo_unitario?: number | null;
  documento?: string | null;
  observacao?: string | null;
}
export type SaidaInput = Omit<EntradaInput, 'custo_unitario'>;
export interface AcertoInput {
  produto_id: number;
  saldo_contado: number;
  observacao?: string | null;
}

export interface ResultadoMovimento {
  movimento: Movimento;
  saldo: number;
  custo: number;
  diferenca?: number;
}

/** Produto como devolvido pelo cadastro (contrato de /api/cadastros/produtos). */
export interface ProdutoCadastro {
  id: number;
  codigo: string;
  nome: string;
  tipo: 'produto' | 'servico';
  unidade_venda: string;
}

const base = '/estoque';

export const estoqueApi = {
  saldos: (f: FiltroSaldos) => api.get<Paged<SaldoProduto>>(`${base}/saldos${qs({ ...f, abaixo_minimo: f.abaixo_minimo || undefined })}`),
  saldoDoProduto: (produtoId: number) => api.get<SaldoDetalhe>(`${base}/saldos/${produtoId}`),
  movimentos: (f: FiltroMovimentos) => api.get<Paged<Movimento>>(`${base}/movimentos${qs({ ...f })}`),
  entrada: (e: EntradaInput) => api.post<ResultadoMovimento>(`${base}/entradas`, e),
  saida: (s: SaidaInput) => api.post<ResultadoMovimento>(`${base}/saidas`, s),
  acerto: (a: AcertoInput) => api.post<ResultadoMovimento>(`${base}/acertos`, a),
  /** Busca de produtos ativos no cadastro (dono: módulo Cadastros). */
  buscarProdutos: (q: string) =>
    api.get<Paged<ProdutoCadastro>>(`/cadastros/produtos${qs({ q, ativo: true, pageSize: 20 })}`).then((r) => r.items),
};
