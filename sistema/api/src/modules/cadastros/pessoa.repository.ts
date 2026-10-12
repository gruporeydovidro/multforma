import { queryOne } from '../../lib/db.js';
import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import { termoLike, type Filtros } from './base/consulta.js';
import type { PessoaFiltro } from './cadastros.schemas.js';
import type { Natureza, TipoPessoa } from './domain/pessoa.js';

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

export interface Pessoa extends PessoaItem {
  rg_ie: string | null;
  cep: string | null;
  logradouro: string | null;
  numero: string | null;
  complemento: string | null;
  bairro: string | null;
  limite_credito: number;
  observacoes: string | null;
  criado_em: string;
}

const SO_DOCUMENTO = /^[\d.\-/\s]+$/;
const LIMPA_DOCUMENTO = `regexp_replace(coalesce(p.cpf_cnpj, ''), '[^0-9A-Za-z]', '', 'g')`;

export class PessoaRepository extends CadastroRepository<Pessoa, PessoaItem, PessoaFiltro> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'pessoa',
    alias: 'p',
    origem: 'pessoa p',
    colunasLista: 'p.id, p.tipo, p.natureza, p.nome, p.fantasia, p.cpf_cnpj, p.telefone, p.celular, p.email, p.cidade, p.uf, p.ativo',
    colunasDetalhe: 'p.*',
    colunasGravaveis: [
      'tipo', 'natureza', 'nome', 'fantasia', 'cpf_cnpj', 'rg_ie', 'email', 'telefone', 'celular',
      'cep', 'logradouro', 'numero', 'complemento', 'bairro', 'cidade', 'uf', 'limite_credito', 'observacoes', 'ativo',
    ],
    desativavel: true,
  };

  /** Busca por nome, fantasia e CPF/CNPJ (com ou sem máscara). `tipo` cliente/fornecedor inclui `ambos`. */
  protected filtrar(f: Filtros, { q, tipo, ativo }: PessoaFiltro): void {
    if (q) {
      const termo = f.param(termoLike(q));
      const condicoes = [`p.nome ilike ${termo}`, `p.fantasia ilike ${termo}`, `p.cpf_cnpj ilike ${termo}`];
      const digitos = q.replace(/\D/g, '');
      if (digitos && SO_DOCUMENTO.test(q)) condicoes.push(`${LIMPA_DOCUMENTO} like ${f.param(termoLike(digitos))}`);
      f.onde(`(${condicoes.join(' or ')})`);
    }
    if (tipo && tipo !== 'ambos') f.onde(`p.tipo in (${f.param(tipo)}, 'ambos')`);
    else f.igual('p.tipo', tipo);
    f.igual('p.ativo', ativo);
  }

  protected ordenar(): string {
    return 'p.ativo desc, lower(p.nome), p.id';
  }

  async documentoEmUso(documento: string, excetoId?: number): Promise<boolean> {
    const row = await queryOne(
      `select 1 from pessoa p where ${LIMPA_DOCUMENTO} = regexp_replace($1, '[^0-9A-Za-z]', '', 'g') and p.id <> $2`,
      [documento, excetoId ?? 0],
      this.db,
    );
    return !!row;
  }
}
