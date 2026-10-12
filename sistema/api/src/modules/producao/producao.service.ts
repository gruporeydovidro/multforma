import type { Db } from '../../lib/db.js';
import type { ProducaoPort } from '../../shared/contracts.js';
import { planejarItens } from './domain/index.js';
import { regra } from './regra.js';
import type { FabricaRepositoriosProducao } from './repositorios.js';

/**
 * Implementação da porta de produção usada por outros módulos (ex.: fechamento do orçamento).
 * Gera a ordem copiando os itens de produtos físicos; não valida o status do orçamento,
 * pois é chamada dentro da transação de fechamento, antes de o status ser gravado.
 * Lança 409 se não houver setor de produção ativo.
 */
export class ProducaoService implements ProducaoPort {
  constructor(private readonly repos: FabricaRepositoriosProducao) {}

  async criarOrdemProducao(db: Db, orcamentoId: number): Promise<number | null> {
    const r = this.repos(db);
    await r.orcamentos.travarGeracaoDeOrdem(orcamentoId);
    const orc = await r.orcamentos.buscar(orcamentoId);
    if (!orc) throw new Error(`orçamento ${orcamentoId} inexistente`);
    const orcados = await r.orcamentos.itensProduziveis(orcamentoId);
    const roteiro = await r.setores.roteiro();
    // Sem setor ativo: 409 (os itens ficariam sem setor e nunca poderiam ser marcados).
    const itens = regra(() => planejarItens(orcados, roteiro));
    if (itens.length === 0) return null;
    return r.ordens.criar({ filial_id: orc.filial_id, orcamento_id: orcamentoId, previsao_entrega: orc.prazo_entrega }, itens);
  }
}
