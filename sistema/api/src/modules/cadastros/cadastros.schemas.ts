import { z } from 'zod';
import { listQuery } from '../../lib/paging.js';
import { valorNaoNegativo } from '../../shared/validacao.js';

// ---------- peças reutilizáveis ----------

/** Id inteiro positivo dentro do `integer` do Postgres (ids maiores dariam erro de banco). */
const id = z.coerce.number().int().positive().max(2_147_483_647, 'Id inválido');

export const idParam = z.object({ id });

/** Texto opcional: aparado; vazio vira null. */
const texto = (max: number) =>
  z.string().trim().max(max, `Máximo de ${max} caracteres`).transform((v) => v || null).nullable().optional();

const obrigatorio = (max: number, mensagem: string) => z.string({ required_error: mensagem }).trim().min(1, mensagem).max(max, `Máximo de ${max} caracteres`);

const email = z
  .string()
  .trim()
  .refine((v) => v === '' || z.string().email().safeParse(v).success, 'E-mail inválido')
  .transform((v) => v || null)
  .nullable()
  .optional();

const uf = z
  .string()
  .trim()
  .toUpperCase()
  .refine((v) => v === '' || /^[A-Z]{2}$/.test(v), 'UF inválida')
  .transform((v) => v || null)
  .nullable()
  .optional();

const vazioComoNulo = (v: unknown) => (v === '' ? null : v);

/** Número opcional que aceita null (e '' como null). */
const numeroOuNulo = (min: number, max: number) =>
  z.preprocess(vazioComoNulo, z.coerce.number().min(min, `Mínimo ${min}`).max(max, `Máximo ${max}`).nullable().optional());

/** Chave estrangeira opcional. */
const idOuNulo = z.preprocess(vazioComoNulo, id.nullable().optional());

const valor = (min = 0, max?: number) => {
  const n = z.coerce.number().min(min, `Mínimo ${min}`);
  return max === undefined ? n : n.max(max, `Máximo ${max}`);
};

/** Booleano de query string: 'true'/'false' (ou '1'/'0'). */
const booleanoQuery = z.enum(['true', 'false', '1', '0']).transform((v) => v === 'true' || v === '1').optional();

const endereco = {
  cep: texto(10),
  logradouro: texto(150),
  numero: texto(20),
  complemento: texto(80),
  bairro: texto(80),
  cidade: texto(80),
  uf,
};

const comAtivo = listQuery.extend({ ativo: booleanoQuery });

// ---------- pessoas (clientes e fornecedores) ----------

export const tiposPessoa = ['cliente', 'fornecedor', 'ambos'] as const;

export const pessoaCriar = z.object({
  tipo: z.enum(tiposPessoa).default('cliente'),
  natureza: z.enum(['F', 'J']).default('F'),
  nome: obrigatorio(150, 'Informe o nome'),
  fantasia: texto(150),
  cpf_cnpj: texto(20),
  rg_ie: texto(30),
  email,
  telefone: texto(30),
  celular: texto(30),
  ...endereco,
  limite_credito: valorNaoNegativo.default(0),
  observacoes: texto(2000),
  ativo: z.boolean().default(true),
});
export const pessoaEditar = pessoaCriar.partial();
export const pessoaFiltro = comAtivo.extend({ tipo: z.enum(tiposPessoa).optional() });

export type PessoaCriar = z.infer<typeof pessoaCriar>;
export type PessoaEditar = z.infer<typeof pessoaEditar>;
export type PessoaFiltro = z.infer<typeof pessoaFiltro>;

// ---------- produtos ----------

export const unidadesVenda = ['M2', 'ML', 'UN', 'PC', 'KG'] as const;

export const produtoCriar = z.object({
  codigo: obrigatorio(30, 'Informe o código'),
  nome: obrigatorio(150, 'Informe o nome'),
  tipo: z.enum(['produto', 'servico']).default('produto'),
  grupo_id: idOuNulo,
  unidade_venda: z.enum(unidadesVenda).default('UN'),
  // Limites compatíveis com as colunas: espessura numeric(6,2), perda numeric(6,3), área numeric(10,4),
  // custo, preço e estoque mínimo numeric(14,4).
  espessura_mm: numeroOuNulo(0, 1000),
  perda_pct: valor(0, 100).default(0),
  arredondamento_id: idOuNulo,
  area_minima_m2: valor(0, 1000).default(0),
  custo: valorNaoNegativo.default(0),
  preco_venda: valorNaoNegativo.default(0),
  estoque_minimo: valorNaoNegativo.default(0),
  /** Sem valor: o padrão depende do tipo (ver ControleDeEstoque). */
  controla_estoque: z.boolean().optional(),
  ncm: texto(10),
  ativo: z.boolean().default(true),
});
export const produtoEditar = produtoCriar.partial();
export const produtoFiltro = comAtivo
  .extend({
    tipo: z.enum(['produto', 'servico']).optional(),
    grupo_id: id.optional(),
    /** Alias de grupo_id. */
    grupo: id.optional(),
  })
  .transform(({ grupo, ...f }) => ({ ...f, grupo_id: f.grupo_id ?? grupo }));

const precoItem = z.object({ tabela_preco_id: id, preco: valorNaoNegativo });
const listaPrecos = z.array(precoItem).max(200);
/** Aceita a lista pura ou `{ precos: [...] }`. */
export const precosProduto = z.union([listaPrecos, z.object({ precos: listaPrecos }).transform((b) => b.precos)]);

export type ProdutoCriar = z.infer<typeof produtoCriar>;
export type ProdutoEditar = z.infer<typeof produtoEditar>;
export type ProdutoFiltro = z.infer<typeof produtoFiltro>;

// ---------- funcionários ----------

export const funcionarioCriar = z.object({
  nome: obrigatorio(150, 'Informe o nome'),
  cargo: texto(80),
  telefone: texto(30),
  email,
  vendedor: z.boolean().default(false),
  instalador: z.boolean().default(false),
  /** numeric(6,3). */
  comissao_pct: valor(0, 100).default(0),
  ativo: z.boolean().default(true),
});
export const funcionarioEditar = funcionarioCriar.partial();
export const funcionarioFiltro = comAtivo.extend({ vendedor: booleanoQuery, instalador: booleanoQuery });

export type FuncionarioCriar = z.infer<typeof funcionarioCriar>;
export type FuncionarioEditar = z.infer<typeof funcionarioEditar>;
export type FuncionarioFiltro = z.infer<typeof funcionarioFiltro>;

// ---------- grupos, arredondamentos e tabelas de preço ----------

export const grupoCriar = z.object({ nome: obrigatorio(80, 'Informe o nome') });
export const grupoEditar = grupoCriar.partial();
export const grupoFiltro = listQuery;

export const arredondamentoCriar = z.object({
  descricao: obrigatorio(80, 'Informe a descrição'),
  valor_cm: z.coerce.number().int('Use um número inteiro de centímetros').min(1, 'Mínimo 1 cm').max(1000, 'Máximo 1000 cm'),
});
export const arredondamentoEditar = arredondamentoCriar.partial();
export const arredondamentoFiltro = listQuery;

export const tabelaPrecoCriar = z.object({ nome: obrigatorio(80, 'Informe o nome'), ativo: z.boolean().default(true) });
export const tabelaPrecoEditar = tabelaPrecoCriar.partial();
export const tabelaPrecoFiltro = comAtivo;

export type GrupoCriar = z.infer<typeof grupoCriar>;
export type GrupoEditar = z.infer<typeof grupoEditar>;
export type ArredondamentoCriar = z.infer<typeof arredondamentoCriar>;
export type ArredondamentoEditar = z.infer<typeof arredondamentoEditar>;
export type TabelaPrecoCriar = z.infer<typeof tabelaPrecoCriar>;
export type TabelaPrecoEditar = z.infer<typeof tabelaPrecoEditar>;
export type FiltroComAtivo = z.infer<typeof comAtivo>;

// ---------- filiais ----------

export const filialCriar = z.object({
  nome: obrigatorio(150, 'Informe o nome'),
  cnpj: texto(20),
  inscricao_estadual: texto(30),
  telefone: texto(30),
  email,
  ...endereco,
  ativo: z.boolean().default(true),
});
export const filialEditar = filialCriar.partial();
export const filialFiltro = comAtivo;

export type FilialCriar = z.infer<typeof filialCriar>;
export type FilialEditar = z.infer<typeof filialEditar>;

// ---------- usuários ----------

export const perfis = ['admin', 'vendedor', 'producao', 'financeiro'] as const;

/** Login e senha só são conferidos quanto à presença aqui; as regras ficam no domain (Login, Senha). */
const usuarioDados = z.object({
  nome: obrigatorio(150, 'Informe o nome'),
  login: obrigatorio(60, 'Informe o login'),
  perfil: z.enum(perfis, { required_error: 'Informe o perfil' }),
  filial_id: id.optional(),
  ativo: z.boolean().default(true),
});
export const usuarioCriar = usuarioDados.extend({ senha: z.string({ required_error: 'Informe a senha' }) });
export const usuarioEditar = usuarioDados.partial();
export const usuarioFiltro = comAtivo.extend({ perfil: z.enum(perfis).optional() });
export const usuarioSenha = z.object({ senha: z.string({ required_error: 'Informe a senha' }) });
export const minhaSenha = z.object({
  senha_atual: z.string({ required_error: 'Informe a senha atual' }).min(1, 'Informe a senha atual'),
  nova_senha: z.string({ required_error: 'Informe a nova senha' }),
});

export type UsuarioCriar = z.infer<typeof usuarioCriar>;
export type UsuarioEditar = z.infer<typeof usuarioEditar>;
export type UsuarioFiltro = z.infer<typeof usuarioFiltro>;
