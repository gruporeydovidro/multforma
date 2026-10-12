import type { RoteiroProducao } from './roteiro.js';

export interface ItemOrcado {
  orcamento_item_id: number;
  produto_id: number;
  descricao: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

export interface ItemPlanejado extends ItemOrcado {
  setor_atual_id: number | null;
}

/**
 * Planeja os itens de uma nova ordem: itens sem quantidade são ignorados e
 * os demais começam no primeiro setor ativo do roteiro.
 */
export function planejarItens(itens: ItemOrcado[], roteiro: RoteiroProducao): ItemPlanejado[] {
  const primeiro = roteiro.primeiro();
  return itens.filter((it) => it.quantidade > 0).map((it) => ({ ...it, setor_atual_id: primeiro?.id ?? null }));
}
