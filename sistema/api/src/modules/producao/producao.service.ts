import type { Db } from '../../lib/db.js';
import type { ProducaoPort } from '../../shared/contracts.js';
import { planejarItens } from './domain/index.js';
import type { FabricaRepositoriosProducao } from './repositorios.js';

/**
 * Implementação da porta de produção usada por outros módulos (ex.: fechamento do orçamento).
 * Gera a ordem copiando os itens de produtos físicos; não valida o status do orçamento,
 * pois é chamada dentro da transação de fechamento, antes de o status ser gravado.
 */
export class ProducaoService implements ProducaoPort {
  constructor(private readonly repos: FabricaRepositoriosProducao) {}

  async criarOrdemProducao(db: Db, orcamentoId: number): Promise<number | null> {
    const r = this.repos(db);
    const orc = await r.orcamentos.buscar(orcamentoId);
    if (!orc) throw new Error(`orçamento ${orcamentoId} inexistente`);
    const itens = planejarItens(await r.orcamentos.itensProduziveis(orcamentoId), await r.setores.roteiro());
    if (itens.length === 0) return null;
    return r.ordens.criar({ filial_id: orc.filial_id, orcamento_id: orcamentoId, previsao_entrega: orc.prazo_entrega }, itens);
  }
}
