import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { Filtros } from './base/consulta.js';
import type { FiltroComAtivo } from './cadastros.schemas.js';

export interface Filial {
  id: number;
  nome: string;
  cnpj: string | null;
  inscricao_estadual: string | null;
  telefone: string | null;
  email: string | null;
  cep: string | null;
  logradouro: string | null;
  numero: string | null;
  complemento: string | null;
  bairro: string | null;
  cidade: string | null;
  uf: string | null;
  ativo: boolean;
  criado_em: string;
}

export class FilialRepository extends CadastroRepository<Filial, Filial, FiltroComAtivo> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'filial',
    alias: 'f',
    origem: 'filial f',
    colunasLista: 'f.*',
    colunasDetalhe: 'f.*',
    colunasGravaveis: [
      'nome', 'cnpj', 'inscricao_estadual', 'telefone', 'email',
      'cep', 'logradouro', 'numero', 'complemento', 'bairro', 'cidade', 'uf', 'ativo',
    ],
    desativavel: true,
  };

  protected filtrar(f: Filtros, { q, ativo }: FiltroComAtivo): void {
    f.contem(['f.nome', 'f.cnpj', 'f.cidade'], q).igual('f.ativo', ativo);
  }

  protected ordenar(): string {
    return 'f.ativo desc, f.id';
  }
}
