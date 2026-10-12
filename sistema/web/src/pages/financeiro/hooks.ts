import { useCallback, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import type { FiltroTitulos, ListaTitulos } from './api';

/** Estado de uma lista de títulos: filtros, paginação e recarga. */
export function useListaTitulos<T>(carregar: (f: FiltroTitulos) => Promise<ListaTitulos<T>>, inicial: FiltroTitulos = {}) {
  const [filtros, setFiltros] = useState<FiltroTitulos>({ page: 1, pageSize: 50, ...inicial });
  const lista = useAsync(() => carregar(filtros), [JSON.stringify(filtros)]);
  /** Altera filtros e volta para a primeira página. */
  const filtrar = useCallback((f: Partial<FiltroTitulos>) => setFiltros((atual) => ({ ...atual, ...f, page: 1 })), []);
  const irPara = useCallback((page: number) => setFiltros((atual) => ({ ...atual, page })), []);
  return { filtros, filtrar, irPara, ...lista };
}

/** Executa uma ação assíncrona com estado de envio e mensagem de erro (para botões e modais). */
export function useAcao() {
  const [enviando, setEnviando] = useState(false);
  const [erro, setErro] = useState<string>();
  const executar = useCallback(async <R,>(fn: () => Promise<R>): Promise<R | undefined> => {
    setEnviando(true);
    setErro(undefined);
    try {
      return await fn();
    } catch (e) {
      setErro((e as Error).message ?? String(e));
      return undefined;
    } finally {
      setEnviando(false);
    }
  }, []);
  return { enviando, erro, setErro, executar };
}
