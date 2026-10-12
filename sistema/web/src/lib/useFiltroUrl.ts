import { useCallback, useMemo } from 'react';
import { useSearchParams } from 'react-router-dom';

/**
 * Filtros de tela guardados na query string: sobrevivem à ida ao detalhe e à volta,
 * e acompanham a navegação (clicar no menu limpa a URL e, portanto, os filtros).
 * `padrao` preenche os filtros ausentes da URL. Mudar qualquer filtro volta para a página 1.
 */
export function useFiltroUrl<T extends Record<string, string>>(padrao: T) {
  const [params, setParams] = useSearchParams();
  const chavePadrao = JSON.stringify(padrao);
  const filtros = useMemo(() => {
    const base = JSON.parse(chavePadrao) as T;
    const atual = { ...base } as Record<string, string>;
    for (const k of Object.keys(base)) atual[k] = params.get(k) ?? base[k];
    return atual as T;
  }, [params, chavePadrao]);
  const pagina = Number(params.get('page')) || 1;

  const definir = useCallback(
    (mudancas: Partial<T> & { page?: number }) => {
      const proximo = new URLSearchParams(params);
      for (const [k, v] of Object.entries(mudancas)) {
        if (v === undefined || v === null || v === '') proximo.delete(k);
        else proximo.set(k, String(v));
      }
      if (!('page' in mudancas)) proximo.delete('page');
      setParams(proximo, { replace: true });
    },
    [params, setParams],
  );

  return { filtros, pagina, definir };
}
