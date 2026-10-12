import { useCallback, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import { producaoApi, type FiltroOrdens, type ItemOrdem, type MarcacaoInput } from './api';

import { useEnvio } from '../../lib/useEnvio';

export { useEnvio };

export const useSetores = (ativo?: boolean) => useAsync(() => producaoApi.setores(ativo), [ativo]);
export const useMotivos = () => useAsync(() => producaoApi.motivos(), []);

/** Lista de ordens com filtros e paginação. */
export function useOrdens(inicial: FiltroOrdens = {}) {
  const [filtro, setFiltroState] = useState<FiltroOrdens>({ page: 1, pageSize: 30, ...inicial });
  const lista = useAsync(() => producaoApi.ordens(filtro), [JSON.stringify(filtro)]);
  /** Altera filtros e volta à primeira página. */
  const setFiltro = (f: Partial<FiltroOrdens>) => setFiltroState((atual) => ({ ...atual, page: 1, ...f }));
  const setPage = (page: number) => setFiltroState((atual) => ({ ...atual, page }));
  return { filtro, setFiltro, setPage, ...lista };
}

export interface MarcacaoForm {
  setor_id: number | '';
  quantidade: string;
  defeito: boolean;
  motivo_id: number | '';
  observacao: string;
}

export const marcacaoInicial = (item: Pick<ItemOrdem, 'setor_atual_id' | 'quantidade'>, defeito = false): MarcacaoForm => ({
  setor_id: item.setor_atual_id ?? '',
  quantidade: String(item.quantidade),
  defeito,
  motivo_id: '',
  observacao: '',
});

/** Valida o formulário de marcação e monta o corpo da requisição (função pura). */
export function montarMarcacao(f: MarcacaoForm, quantidadeItem: number): { erro?: string; body?: MarcacaoInput } {
  if (!f.setor_id) return { erro: 'Selecione o setor.' };
  const quantidade = Number(f.quantidade.replace(',', '.'));
  if (!(quantidade > 0)) return { erro: 'Informe a quantidade.' };
  if (quantidade > quantidadeItem) return { erro: `A quantidade não pode passar de ${quantidadeItem}.` };
  if (f.defeito && !f.motivo_id) return { erro: 'Selecione o motivo do defeito.' };
  return {
    body: {
      setor_id: f.setor_id,
      quantidade,
      defeito: f.defeito,
      motivo_id: f.defeito ? Number(f.motivo_id) : null,
      observacao: f.observacao.trim() || null,
    },
  };
}
