import { useCallback, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import { estoqueApi } from './api';

/** Estado de envio: desabilita botões e guarda a mensagem de erro da API. */
export function useEnvio() {
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState('');
  const run = useCallback(async <T,>(fn: () => Promise<T>): Promise<T | undefined> => {
    setBusy(true);
    setError('');
    try {
      return await fn();
    } catch (e) {
      setError((e as Error).message);
      return undefined;
    } finally {
      setBusy(false);
    }
  }, []);
  return { busy, error, setError, run };
}

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
