import { getPool } from '../../lib/db.js';
import { resolverPeriodo } from './domain/index.js';
import { regra } from './regra.js';
import type { FabricaRepositoriosProducao } from './repositorios.js';

interface PeriodoInformado {
  de?: string;
  ate?: string;
}

const hoje = () => {
  const d = new Date();
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
};

/** Relatórios de produção: por setor, problemas (defeitos) e previsão de entrega. */
export class RelatorioProducaoService {
  constructor(private readonly repos: FabricaRepositoriosProducao) {}

  async producaoPorSetor(filialId: number, p: PeriodoInformado) {
    const periodo = regra(() => resolverPeriodo(p, hoje()));
    const items = await this.repos(getPool()).relatorios.producaoPorSetor(filialId, periodo);
    return { ...periodo, items };
  }

  async defeitos(filialId: number, p: PeriodoInformado) {
    const periodo = regra(() => resolverPeriodo(p, hoje()));
    const rel = this.repos(getPool()).relatorios;
    const [por_motivo, por_setor, ocorrencias] = await Promise.all([
      rel.defeitosPorMotivo(filialId, periodo),
      rel.defeitosPorSetor(filialId, periodo),
      rel.ocorrenciasDeDefeito(filialId, periodo),
    ]);
    return { ...periodo, por_motivo, por_setor, ocorrencias };
  }

  async previsaoEntrega(filialId: number, p: PeriodoInformado) {
    const items = await this.repos(getPool()).ordens.previsaoEntrega(filialId, p.de, p.ate);
    return { items };
  }
}
