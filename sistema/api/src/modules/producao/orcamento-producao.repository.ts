import { query, queryOne, type Db } from '../../lib/db.js';
import type { ItemOrcado } from './domain/index.js';

export interface OrcamentoParaProducao {
  id: number;
  filial_id: number;
  status: string;
  prazo_entrega: string | null;
}

/**
 * Leitura dos orçamentos (tabelas do módulo Orçamentos) necessária à produção.
 * Somente leitura; a única escrita é o lock de linha durante a geração da ordem.
 */
export class OrcamentoProducaoRepository {
  constructor(private readonly db: Db) {}

  buscar(id: number): Promise<OrcamentoParaProducao | undefined> {
    return queryOne<OrcamentoParaProducao>('select id, filial_id, status, prazo_entrega from orcamento where id = $1', [id], this.db);
  }

  /** Trava o orçamento da filial para impedir duas ordens simultâneas. */
  travarDaFilial(filialId: number, id: number): Promise<OrcamentoParaProducao | undefined> {
    return queryOne<OrcamentoParaProducao>(
      'select id, filial_id, status, prazo_entrega from orcamento where id = $1 and filial_id = $2 for update',
      [id, filialId],
      this.db,
    );
  }

  /** Itens de produtos físicos (tipo 'produto'), com as medidas de corte (calculadas, se houver). */
  itensProduziveis(orcamentoId: number): Promise<ItemOrcado[]> {
    return query<ItemOrcado>(
      `select oi.id as orcamento_item_id, oi.produto_id, oi.descricao, oi.quantidade,
              coalesce(oi.largura_calc_mm, oi.largura_mm) as largura_mm, coalesce(oi.altura_calc_mm, oi.altura_mm) as altura_mm
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
