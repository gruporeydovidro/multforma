// Cliente tipado do módulo Cadastros: as telas usam só este arquivo, nunca montam URLs.
import { api, qs, type Paged } from '../../lib/api';
import type { Perfil } from '../../lib/auth';

export type Filtro = Record<string, string | number | boolean | undefined>;
export type ResultadoExclusao = 'excluido' | 'desativado';

// ---------- tipos ----------

export type TipoPessoa = 'cliente' | 'fornecedor' | 'ambos';
export type Natureza = 'F' | 'J';
export type UnidadeVenda = 'M2' | 'ML' | 'UN' | 'PC' | 'KG';
export type TipoProduto = 'produto' | 'servico';

export interface Endereco {
  cep: string | null;
  logradouro: string | null;
  numero: string | null;
  complemento: string | null;
  bairro: string | null;
  cidade: string | null;
  uf: string | null;
}

export interface PessoaItem {
  id: number;
  tipo: TipoPessoa;
  natureza: Natureza;
  nome: string;
  fantasia: string | null;
  cpf_cnpj: string | null;
  telefone: string | null;
  celular: string | null;
  email: string | null;
  cidade: string | null;
  uf: string | null;
  ativo: boolean;
}

export interface Pessoa extends PessoaItem, Endereco {
  rg_ie: string | null;
  limite_credito: number;
  observacoes: string | null;
}

export interface ProdutoItem {
  id: number;
  codigo: string;
  nome: string;
  tipo: TipoProduto;
  unidade_venda: UnidadeVenda;
  preco_venda: number;
  custo: number;
  espessura_mm: number | null;
  grupo_id: number | null;
  grupo_nome: string | null;
  arredondamento_id: number | null;
  area_minima_m2: number;
  controla_estoque: boolean;
  ativo: boolean;
}

export interface Produto extends ProdutoItem {
  perda_pct: number;
  estoque_minimo: number;
  ncm: string | null;
}

export interface PrecoTabela {
  tabela_preco_id: number;
  preco: number;
}

export interface PrecoProduto extends PrecoTabela {
  tabela_nome: string;
}

export interface Funcionario {
  id: number;
  nome: string;
  cargo: string | null;
  telefone: string | null;
  email: string | null;
  vendedor: boolean;
  instalador: boolean;
  comissao_pct: number;
  ativo: boolean;
}

export interface Grupo {
  id: number;
  nome: string;
  produtos: number;
}

export interface Arredondamento {
  id: number;
  descricao: string;
  valor_cm: number;
}

export interface TabelaPreco {
  id: number;
  nome: string;
  ativo: boolean;
}

export interface Filial extends Endereco {
  id: number;
  nome: string;
  cnpj: string | null;
  inscricao_estadual: string | null;
  telefone: string | null;
  email: string | null;
  ativo: boolean;
}

export interface Usuario {
  id: number;
  nome: string;
  login: string;
  perfil: Perfil;
  filial_id: number;
  filial_nome: string;
  ativo: boolean;
}

/** Dados enviados na gravação: os campos do registro, sem id nem campos calculados. */
export type Entrada<T> = Partial<Omit<T, 'id'>> & Record<string, unknown>;

// ---------- recursos ----------

/** Endpoints CRUD padrão de um cadastro. Os métodos são arrow functions para poderem ser passados como callback. */
export class Recurso<TDetalhe extends { id: number }, TItem = TDetalhe> {
  constructor(protected readonly caminho: string) {}

  listar = (filtro: Filtro = {}): Promise<Paged<TItem>> => api.get<Paged<TItem>>(`${this.caminho}${qs(filtro)}`);

  obter = (id: number): Promise<TDetalhe> => api.get<TDetalhe>(`${this.caminho}/${id}`);

  /** Cria (id nulo) ou atualiza. */
  salvar = (id: number | null, dados: Entrada<TDetalhe>): Promise<TDetalhe> =>
    id ? api.put<TDetalhe>(`${this.caminho}/${id}`, dados) : api.post<TDetalhe>(this.caminho, dados);

  /** Exclui; se houver vínculos, a API desativa o registro. */
  excluir = async (id: number): Promise<ResultadoExclusao> => {
    const r = await api.del<{ desativado?: boolean } | undefined>(`${this.caminho}/${id}`);
    return r?.desativado ? 'desativado' : 'excluido';
  };
}

class ProdutosApi extends Recurso<Produto, ProdutoItem> {
  precos = (id: number): Promise<PrecoProduto[]> => api.get<PrecoProduto[]>(`${this.caminho}/${id}/precos`);

  salvarPrecos = (id: number, precos: PrecoTabela[]): Promise<PrecoProduto[]> =>
    api.put<PrecoProduto[]>(`${this.caminho}/${id}/precos`, precos);
}

class UsuariosApi extends Recurso<Usuario> {
  redefinirSenha = (id: number, senha: string): Promise<void> => api.put(`${this.caminho}/${id}/senha`, { senha });
}

export const cadastrosApi = {
  pessoas: new Recurso<Pessoa, PessoaItem>('/cadastros/pessoas'),
  produtos: new ProdutosApi('/cadastros/produtos'),
  funcionarios: new Recurso<Funcionario>('/cadastros/funcionarios'),
  grupos: new Recurso<Grupo>('/cadastros/grupos'),
  arredondamentos: new Recurso<Arredondamento>('/cadastros/arredondamentos'),
  tabelasPreco: new Recurso<TabelaPreco>('/cadastros/tabelas-preco'),
  filiais: new Recurso<Filial>('/cadastros/filiais'),
  usuarios: new UsuariosApi('/cadastros/usuarios'),
  alterarMinhaSenha: (senha_atual: string, nova_senha: string): Promise<void> =>
    api.put('/cadastros/minha-senha', { senha_atual, nova_senha }),
};
