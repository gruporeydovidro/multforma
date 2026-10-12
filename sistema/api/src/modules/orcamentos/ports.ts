import type { Db } from '../../lib/db.js';

export type { Ports } from '../../shared/contracts.js';

/** Vão a que um projeto é aplicado no orçamento (mm). */
export interface VaoProjeto {
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
}

/** Peça gerada pela expansão de um projeto (sem preço). */
export interface PecaProjetoExpandida {
  descricao: string;
  tipo: string;
  produto_id: number;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

/**
 * Porta do módulo Projetos usada pelo Orçamento: expande um gabarito para um vão, dentro da transação de quem chama.
 * Implementada estruturalmente por ProjetoService (ligada em routes.ts; ver projetos.adapter.ts).
 */
export interface ProjetosPort {
  expandir(db: Db, projetoId: number, vao: VaoProjeto): Promise<{ id: number; nome: string; pecas: PecaProjetoExpandida[] }>;
}
