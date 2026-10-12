import type { Db } from '../../lib/db.js';
import { MotivoRepository } from './motivo.repository.js';
import { OrcamentoProducaoRepository } from './orcamento-producao.repository.js';
import { OrdemProducaoRepository } from './ordem-producao.repository.js';
import { RelatorioProducaoRepository } from './relatorio-producao.repository.js';
import { SetorRepository } from './setor.repository.js';

/** Repositórios do módulo ligados a uma conexão (pool ou transação). */
export interface RepositoriosProducao {
  ordens: OrdemProducaoRepository;
  setores: SetorRepository;
  motivos: MotivoRepository;
  orcamentos: OrcamentoProducaoRepository;
  relatorios: RelatorioProducaoRepository;
}

export type FabricaRepositoriosProducao = (db: Db) => RepositoriosProducao;

export const repositoriosProducao: FabricaRepositoriosProducao = (db) => ({
  ordens: new OrdemProducaoRepository(db),
  setores: new SetorRepository(db),
  motivos: new MotivoRepository(db),
  orcamentos: new OrcamentoProducaoRepository(db),
  relatorios: new RelatorioProducaoRepository(db),
});
