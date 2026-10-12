import { query, queryOne, type Db } from '../../lib/db.js';
import type { ItemOrcado } from './domain/index.js';

export interface OrcamentoParaProducao {
  id: number;
  filial_id: number;
  status: string;
  prazo_entrega: string | null;
}

/**
 * Leitura dos orçamentos (tabelas do módulo Orçamentos) necessária à produção. Somente leitura:
 * a serialização da geração de ordens usa um advisory lock próprio, sem travar linhas de outro módulo.
 */
export class OrcamentoProducaoRepository {
  constructor(private readonly db: Db) {}

  buscar(id: number): Promise<OrcamentoParaProducao | undefined> {
    return queryOne<OrcamentoParaProducao>('select id, filial_id, status, prazo_entrega from orcamento where id = $1', [id], this.db);
  }

  /**
   * Serializa a geração de ordens do mesmo orçamento até o fim da transação (advisory lock do módulo,
   * reentrante na mesma transação), sem `for update` na tabela orcamento, que é de outro módulo.
   */
  async travarGeracaoDeOrdem(orcamentoId: number): Promise<void> {
    await query(`select pg_advisory_xact_lock(hashtext('ordem_producao'), $1::int)`, [orcamentoId], this.db);
  }

  buscarDaFilial(filialId: number, id: number): Promise<OrcamentoParaProducao | undefined> {
    return queryOne<OrcamentoParaProducao>(
      'select id, filial_id, status, prazo_entrega from orcamento where id = $1 and filial_id = $2',
      [id, filialId],
      this.db,
    );
  }

  /**
   * Itens de produtos físicos (tipo 'produto'), com as medidas reais de corte. As medidas calculadas
   * (largura_calc_mm/altura_calc_mm) são arredondadas para cobrança e não servem para a produção.
   */
  itensProduziveis(orcamentoId: number): Promise<ItemOrcado[]> {
    return query<ItemOrcado>(
      `select oi.id as orcamento_item_id, oi.produto_id, oi.descricao, oi.quantidade, oi.largura_mm, oi.altura_mm
         from orcamento_item oi join produto p on p.id = oi.produto_id
        where oi.orcamento_id = $1 and p.tipo = 'produto'
        order by oi.seq, oi.id`,
      [orcamentoId],
      this.db,
    );
  }

  /** Orçamentos fechados da filial ainda sem ordem ativa. */
  disponiveis(filialId: number, q?: string) {
    return query(
      `select orc.id, orc.numero, orc.data_emissao, orc.prazo_entrega, orc.total, c.nome as cliente_nome
         from orcamento orc join pessoa c on c.id = orc.cliente_id
        where orc.filial_id = $1 and orc.status = 'fechado'
          and not exists (select 1 from ordem_producao o where o.orcamento_id = orc.id and o.status <> 'cancelada')
          and ($2::text is null or orc.numero::text = $2 or c.nome ilike '%' || $2 || '%')
        order by orc.fechado_em desc nulls last, orc.id desc
        limit 20`,
      [filialId, q || null],
      this.db,
    );
  }
}
