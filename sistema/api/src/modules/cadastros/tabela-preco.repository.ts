import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { Filtros } from './base/consulta.js';
import type { FiltroComAtivo } from './cadastros.schemas.js';

export interface TabelaPreco {
  id: number;
  nome: string;
  ativo: boolean;
}

export class TabelaPrecoRepository extends CadastroRepository<TabelaPreco, TabelaPreco, FiltroComAtivo> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'tabela_preco',
    alias: 't',
    origem: 'tabela_preco t',
    colunasLista: 't.id, t.nome, t.ativo',
    colunasDetalhe: 't.id, t.nome, t.ativo',
    colunasGravaveis: ['nome', 'ativo'],
    desativavel: true,
  };

  protected filtrar(f: Filtros, { q, ativo }: FiltroComAtivo): void {
    f.contem(['t.nome'], q).igual('t.ativo', ativo);
  }

  protected ordenar(): string {
    return 't.ativo desc, lower(t.nome), t.id';
  }
}
