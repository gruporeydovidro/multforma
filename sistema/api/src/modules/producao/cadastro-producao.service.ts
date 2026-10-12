import { getPool } from '../../lib/db.js';
import { notFound } from '../../lib/http.js';
import type { SetorDados } from './setor.repository.js';
import type { FabricaRepositoriosProducao } from './repositorios.js';

/** Cadastro dos setores de produção (a ordem define o roteiro das peças). */
export class SetorService {
  constructor(private readonly repos: FabricaRepositoriosProducao) {}

  private get setores() {
    return this.repos(getPool()).setores;
  }

  listar(ativo?: boolean) {
    return this.setores.listar(ativo).then((items) => ({ items }));
  }

  criar(s: SetorDados) {
    return this.setores.criar(s);
  }

  async atualizar(id: number, s: SetorDados) {
    const row = await this.setores.atualizar(id, s);
    if (!row) throw notFound('Setor');
    return row;
  }

  async excluir(id: number) {
    if (!(await this.setores.excluir(id))) throw notFound('Setor');
  }
}

/** Cadastro dos motivos de defeito. */
export class MotivoService {
  constructor(private readonly repos: FabricaRepositoriosProducao) {}

  private get motivos() {
    return this.repos(getPool()).motivos;
  }

  listar() {
    return this.motivos.listar().then((items) => ({ items }));
  }

  criar(descricao: string) {
    return this.motivos.criar(descricao);
  }

  async atualizar(id: number, descricao: string) {
    const row = await this.motivos.atualizar(id, descricao);
    if (!row) throw notFound('Motivo');
    return row;
  }

  async excluir(id: number) {
    if (!(await this.motivos.excluir(id))) throw notFound('Motivo');
  }
}
