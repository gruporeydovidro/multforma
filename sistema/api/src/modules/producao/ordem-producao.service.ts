import { getPool, withTx, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import { offset } from '../../lib/paging.js';
import type { ProducaoPort } from '../../shared/contracts.js';
import { montarPainel, type ItemEmAberto, type MarcacaoSolicitada, type OrdemProducao } from './domain/index.js';
import type { FiltroOrdens } from './ordem-producao.repository.js';
import { regra } from './regra.js';
import type { FabricaRepositoriosProducao, RepositoriosProducao } from './repositorios.js';

export interface Operador {
  filialId: number;
  usuarioId: number;
}

/** Casos de uso das ordens de produção: geração, marcação por setor, defeito/refazer, cancelamento e consultas. */
export class OrdemProducaoService {
  constructor(
    private readonly repos: FabricaRepositoriosProducao,
    private readonly producao: ProducaoPort,
  ) {}

  // ----- consultas -----

  async listar(filialId: number, f: Omit<FiltroOrdens, 'limite' | 'deslocamento'> & { page: number; pageSize: number }) {
    const { page, pageSize, ...filtro } = f;
    const r = await this.repos(getPool()).ordens.listar(filialId, { ...filtro, limite: pageSize, deslocamento: offset(page, pageSize) });
    return { ...r, page, pageSize };
  }

  detalhe(filialId: number, id: number) {
    return this.detalheCom(this.repos(getPool()), filialId, id);
  }

  orcamentosDisponiveis(filialId: number, q?: string) {
    return this.repos(getPool()).orcamentos.disponiveis(filialId, q).then((items) => ({ items }));
  }

  async painel(filialId: number) {
    const r = this.repos(getPool());
    const [setores, itens] = await Promise.all([r.setores.listar(true), r.ordens.itensEmAberto(filialId)]);
    return montarPainel(setores, itens as ItemEmAberto[]);
  }

  // ----- ações -----

  /** Gera a ordem a partir de um orçamento fechado sem ordem ativa. */
  gerar(op: Operador, orcamentoId: number) {
    return withTx(async (db) => {
      const r = this.repos(db);
      await r.orcamentos.travarGeracaoDeOrdem(orcamentoId);
      const orc = await r.orcamentos.buscarDaFilial(op.filialId, orcamentoId);
      if (!orc) throw notFound('Orçamento');
      if (orc.status !== 'fechado') throw conflict('Só orçamentos fechados podem ir para a produção');
      const ativa = await r.ordens.ativaDoOrcamento(orcamentoId);
      if (ativa) throw conflict(`O orçamento já possui a ordem de produção nº ${ativa.numero}`);
      const id = await this.producao.criarOrdemProducao(db, orcamentoId);
      if (!id) throw badRequest('O orçamento não possui itens para produção');
      await logAcao(db, op.usuarioId, 'producao.criar', 'ordem_producao', id, { orcamento_id: orcamentoId });
      return this.detalheCom(r, op.filialId, id);
    });
  }

  atualizar(op: Operador, id: number, dados: { previsao_entrega?: string | null; observacoes?: string | null }) {
    return this.alterar(op, id, async (ordem, r) => {
      regra(() => ordem.garantirEditavel());
      await r.ordens.atualizarDados(id, dados);
    });
  }

  cancelar(op: Operador, id: number, motivo?: string) {
    return this.alterar(op, id, async (ordem, r, db) => {
      regra(() => ordem.cancelar());
      await r.ordens.salvar(ordem);
      await logAcao(db, op.usuarioId, 'producao.cancelar', 'ordem_producao', id, { motivo: motivo ?? null });
    });
  }

  marcar(op: Operador, id: number, itemId: number, m: MarcacaoSolicitada) {
    return this.alterar(op, id, async (ordem, r, db) => {
      if (m.defeito && m.motivoId && !(await r.motivos.existe(m.motivoId))) throw badRequest('Motivo de defeito inexistente');
      const roteiro = await r.setores.roteiro();
      const marcacao = regra(() => ordem.marcarItem(itemId, m, roteiro));
      await r.ordens.registrarMarcacao(marcacao, op.usuarioId);
      await r.ordens.salvar(ordem, ordem.item(itemId));
      if (marcacao.defeito) {
        await logAcao(db, op.usuarioId, 'producao.defeito', 'ordem_producao_item', itemId, {
          setor_id: marcacao.setorId,
          motivo_id: marcacao.motivoId,
          quantidade: marcacao.quantidade,
        });
      }
      if (ordem.eventos.concluiu) await logAcao(db, op.usuarioId, 'producao.concluir', 'ordem_producao', id);
    });
  }

  refazer(op: Operador, id: number, itemId: number) {
    return this.alterar(op, id, async (ordem, r, db) => {
      const setorAnterior = regra(() => ordem.item(itemId)).setorAtualId;
      const roteiro = await r.setores.roteiro();
      const item = regra(() => ordem.refazerItem(itemId, roteiro));
      await r.ordens.salvar(ordem, item);
      await logAcao(db, op.usuarioId, 'producao.refazer', 'ordem_producao_item', itemId, { setor_anterior_id: setorAnterior });
    });
  }

  // ----- apoio -----

  /** Carrega o agregado travado, aplica a alteração e devolve o detalhe atualizado, numa única transação. */
  private alterar(op: Operador, id: number, fn: (ordem: OrdemProducao, r: RepositoriosProducao, db: Db) => Promise<void>) {
    return withTx(async (db) => {
      const r = this.repos(db);
      const ordem = await r.ordens.carregarParaAlteracao(op.filialId, id);
      if (!ordem) throw notFound('Ordem de produção');
      await fn(ordem, r, db);
      return this.detalheCom(r, op.filialId, id);
    });
  }

  private async detalheCom(r: Pick<RepositoriosProducao, 'ordens' | 'setores'>, filialId: number, id: number) {
    const ordem = await r.ordens.detalhe(filialId, id);
    if (!ordem) throw notFound('Ordem de produção');
    const setores = (await r.setores.listar(true)).map(({ id, nome, ordem }) => ({ id, nome, ordem }));
    return { ...ordem, setores };
  }
}
