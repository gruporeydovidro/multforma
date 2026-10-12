import type { SetorRoteiro } from './roteiro.js';

export interface ItemEmAberto {
  item_id: number;
  setor_atual_id: number | null;
  status: 'pendente' | 'em_producao' | 'defeito' | 'concluido';
  quantidade: number;
}

export interface SetorNoPainel<T> extends Omit<SetorRoteiro, 'ativo'> {
  total_itens: number;
  total_pecas: number;
  itens: T[];
}

/** Agrupa os itens em aberto pelo setor em que estão; os itens com defeito ficam à parte. */
export function montarPainel<T extends ItemEmAberto>(setores: SetorRoteiro[], itens: T[]) {
  const ativos = itens.filter((i) => i.status !== 'defeito' && i.status !== 'concluido');
  return {
    setores: setores.map(({ id, nome, ordem }): SetorNoPainel<T> => {
      const lista = ativos.filter((i) => i.setor_atual_id === id);
      return { id, nome, ordem, total_itens: lista.length, total_pecas: lista.reduce((a, i) => a + i.quantidade, 0), itens: lista };
    }),
    defeitos: itens.filter((i) => i.status === 'defeito'),
  };
}
