import { useCallback, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import { estoqueApi } from './api';

import { useEnvio } from '../../lib/useEnvio';

export { useEnvio };

/** Lista paginada com filtros: alterar um filtro volta à primeira página. */
export function useListaFiltrada<F extends { page?: number; pageSize?: number }, R>(buscar: (f: F) => Promise<R>, inicial: F) {
  const [filtro, setFiltroState] = useState<F>({ page: 1, pageSize: 50, ...inicial });
  const lista = useAsync(() => buscar(filtro), [JSON.stringify(filtro)]);
  const setFiltro = (f: Partial<F>) => setFiltroState((atual) => ({ ...atual, page: 1, ...f }));
  const setPage = (page: number) => setFiltroState((atual) => ({ ...atual, page }));
  return { filtro, setFiltro, setPage, ...lista };
}

/** Saldo atual do produto escolhido (null enquanto nenhum produto). */
export function useSaldoProduto(produtoId: number | null) {
  return useAsync(() => (produtoId ? estoqueApi.saldoDoProduto(produtoId) : Promise.resolve(undefined)), [produtoId]);
}
