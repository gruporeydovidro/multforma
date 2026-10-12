import { CadastroRepository, type DefinicaoCadastro } from './base/cadastro.repository.js';
import type { Filtros } from './base/consulta.js';
import type { FuncionarioFiltro } from './cadastros.schemas.js';

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
  criado_em: string;
}

export class FuncionarioRepository extends CadastroRepository<Funcionario, Funcionario, FuncionarioFiltro> {
  protected readonly def: DefinicaoCadastro = {
    tabela: 'funcionario',
    alias: 'f',
    origem: 'funcionario f',
    colunasLista: 'f.*',
    colunasDetalhe: 'f.*',
    colunasGravaveis: ['nome', 'cargo', 'telefone', 'email', 'vendedor', 'instalador', 'comissao_pct', 'ativo'],
    desativavel: true,
  };

  protected filtrar(f: Filtros, { q, vendedor, instalador, ativo }: FuncionarioFiltro): void {
    f.contem(['f.nome', 'f.cargo'], q).igual('f.vendedor', vendedor).igual('f.instalador', instalador).igual('f.ativo', ativo);
  }

  protected ordenar(): string {
    return 'f.ativo desc, lower(f.nome), f.id';
  }
}
