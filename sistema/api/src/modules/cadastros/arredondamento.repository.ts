import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { FiltroBase, Filtros } from './base/consulta.js';

export interface Arredondamento {
  id: number;
  descricao: string;
  /** Cada dimensão é arredondada para cima ao múltiplo deste valor, em cm. */
  valor_cm: number;
}

export class ArredondamentoRepository extends CadastroRepository<Arredondamento, Arredondamento, FiltroBase> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'arredondamento',
    alias: 'a',
    origem: 'arredondamento a',
    colunasLista: 'a.*',
    colunasDetalhe: 'a.*',
    colunasGravaveis: ['descricao', 'valor_cm'],
    desativavel: false,
  };

  protected filtrar(f: Filtros, { q }: FiltroBase): void {
    f.contem(['a.descricao'], q);
  }

  protected ordenar(): string {
    return 'a.valor_cm, a.id';
  }
}
