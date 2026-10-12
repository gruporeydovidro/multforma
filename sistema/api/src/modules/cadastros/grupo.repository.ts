import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { FiltroBase, Filtros } from './base/consulta.js';

export interface Grupo {
  id: number;
  nome: string;
  /** Quantidade de produtos do grupo. */
  produtos: number;
}

const COLUNAS = 'g.id, g.nome, (select count(*) from produto x where x.grupo_id = g.id)::int as produtos';

export class GrupoRepository extends CadastroRepository<Grupo, Grupo, FiltroBase> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'grupo_produto',
    alias: 'g',
    origem: 'grupo_produto g',
    colunasLista: COLUNAS,
    colunasDetalhe: COLUNAS,
    colunasGravaveis: ['nome'],
    desativavel: false,
  };

  protected filtrar(f: Filtros, { q }: FiltroBase): void {
    f.contem(['g.nome'], q);
  }

  protected ordenar(): string {
    return 'lower(g.nome), g.id';
  }
}
