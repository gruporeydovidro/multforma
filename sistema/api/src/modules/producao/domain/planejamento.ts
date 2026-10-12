import { ErroProducao } from './erros.js';
import type { RoteiroProducao } from './roteiro.js';

export interface ItemOrcado {
  orcamento_item_id: number;
  produto_id: number;
  descricao: string;
  quantidade: number;
  /** Medidas reais de corte (não as arredondadas para cobrança). */
  largura_mm: number | null;
  altura_mm: number | null;
}

export interface ItemPlanejado extends ItemOrcado {
  setor_atual_id: number;
}

/**
 * Planeja os itens de uma nova ordem: itens sem quantidade são ignorados e
 * os demais começam no primeiro setor ativo do roteiro. Sem setor ativo, a ordem não pode ser criada
 * (os itens ficariam sem setor e nunca poderiam ser marcados).
 */
export function planejarItens(itens: ItemOrcado[], roteiro: RoteiroProducao): ItemPlanejado[] {
  const produziveis = itens.filter((it) => it.quantidade > 0);
  if (produziveis.length === 0) return [];
  const primeiro = roteiro.primeiro();
  if (!primeiro) {
    throw new ErroProducao('Nenhum setor de produção ativo: cadastre ou ative um setor antes de gerar a ordem de produção', 'conflito');
  }
  return produziveis.map((it) => ({ ...it, setor_atual_id: primeiro.id }));
}
