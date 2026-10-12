import { getPool, type Db } from '../../lib/db.js';
import { badRequest } from '../../lib/http.js';
import { MARGEM_ESTIMADA, Ranking, RelatorioVendas, round2, ticketMedio } from './domain/indicadores.js';
import { Periodo, PeriodoInvalidoError } from './domain/periodo.js';
import type { PeriodoInput, TipoRanking } from './relatorios.schemas.js';
import { RelatoriosRepository, type Agrupamento, type Contagem } from './relatorios.repository.js';

const AGRUPAMENTO_DO_RANKING: Record<TipoRanking, Agrupamento> = { clientes: 'cliente', produtos: 'produto', vendedores: 'vendedor' };

const contagem = (c: Contagem | undefined): Contagem => ({ quantidade: c?.quantidade ?? 0, total: round2(c?.total ?? 0) });

/** Casos de uso de leitura: relatórios de vendas, rankings, resumo financeiro e painel. */
export class RelatoriosService {
  constructor(private readonly criarRepositorio: (db: Db) => RelatoriosRepository = (db) => new RelatoriosRepository(db)) {}

  private get repo() {
    return this.criarRepositorio(getPool());
  }

  private async periodo(repo: RelatoriosRepository, entrada: PeriodoInput): Promise<Periodo> {
    try {
      return Periodo.resolver(entrada, await repo.hoje());
    } catch (err) {
      if (err instanceof PeriodoInvalidoError) throw badRequest(err.message);
      throw err;
    }
  }

  async vendas(filialId: number, entrada: PeriodoInput, agrupar: Agrupamento) {
    const repo = this.repo;
    const p = await this.periodo(repo, entrada);
    const rel = new RelatorioVendas(await repo.vendas(filialId, p, agrupar));
    return { ...p.toJSON(), agrupar, linhas: rel.linhas, totais: rel.totais, margem_estimada: MARGEM_ESTIMADA };
  }

  async ranking(filialId: number, tipo: TipoRanking, entrada: PeriodoInput, limite: number) {
    const repo = this.repo;
    const p = await this.periodo(repo, entrada);
    const rel = new RelatorioVendas(await repo.vendas(filialId, p, AGRUPAMENTO_DO_RANKING[tipo]));
    return { ...p.toJSON(), tipo, limite, ...Ranking.montar(rel.linhas, limite), margem_estimada: MARGEM_ESTIMADA };
  }

  async resumoFinanceiro(filialId: number, entrada: PeriodoInput) {
    const repo = this.repo;
    const p = await this.periodo(repo, entrada);
    const [fluxo, aberto, vencidos, caixa, despesas, vendas] = await Promise.all([
      repo.fluxoTitulos(filialId, p),
      repo.emAberto(filialId, p),
      repo.vencidos(filialId),
      repo.caixa(filialId, p),
      repo.despesasPorCategoria(filialId, p),
      repo.vendasEntre(filialId, p.de, p.ate),
    ]);
    const recebido = round2(fluxo.recebido);
    const pago = round2(fluxo.pago);
    return {
      ...p.toJSON(),
      vendas: contagem(vendas),
      recebido,
      pago,
      resultado: round2(recebido - pago),
      a_receber: contagem(aberto.receber),
      a_pagar: contagem(aberto.pagar),
      vencidos: { receber: contagem(vencidos.receber), pagar: contagem(vencidos.pagar) },
      caixa: {
        saldo_anterior: round2(caixa.saldo_anterior),
        entradas: round2(caixa.entradas),
        saidas: round2(caixa.saidas),
        saldo_final: round2(caixa.saldo_anterior + caixa.entradas - caixa.saidas),
      },
      despesas_por_categoria: despesas.map((d) => ({ ...d, total: round2(d.total) })),
    };
  }

  /** Indicadores da página inicial. */
  async painel(filialId: number) {
    const repo = this.repo;
    const hoje = await repo.hoje();
    const mes = Periodo.mesDe(hoje);
    const [vendasMes, vendasHoje, status, vencidos, pagar7, producao, ultimos] = await Promise.all([
      repo.vendasEntre(filialId, mes.de, mes.ate),
      repo.vendasEntre(filialId, hoje, hoje),
      repo.orcamentosPorStatus(filialId),
      repo.vencidos(filialId),
      repo.pagarProximos(filialId, 7),
      repo.producao(filialId),
      repo.ultimosOrcamentos(filialId, 5),
    ]);
    return {
      hoje,
      mes: mes.toJSON(),
      vendas_mes: contagem(vendasMes),
      vendas_hoje: contagem(vendasHoje),
      ticket_medio: ticketMedio(vendasMes.total, vendasMes.quantidade),
      orcamentos_abertos: contagem(status.aberto),
      orcamentos_aprovados: contagem(status.aprovado),
      receber_vencido: contagem(vencidos.receber),
      pagar_vencido: contagem(vencidos.pagar),
      pagar_7_dias: contagem(pagar7),
      producao,
      ultimos_orcamentos: ultimos,
    };
  }
}
