import { useCallback } from 'react';
import { useSearchParams } from 'react-router-dom';
import { today } from '../../lib/format';
import { mesDe, type Periodo } from '../../lib/periodo';

/** Período guardado na URL (?de=&ate=), com o mês corrente como padrão. */
export function usePeriodoUrl(): [Periodo, (p: Periodo) => void, URLSearchParams, (k: string, v: string) => void] {
  const [params, setParams] = useSearchParams();
  const padrao = mesDe(today());
  const periodo = { de: params.get('de') || padrao.de, ate: params.get('ate') || padrao.ate };
  const setPeriodo = useCallback(
    (p: Periodo) => setParams((atual) => { const n = new URLSearchParams(atual); n.set('de', p.de); n.set('ate', p.ate); return n; }, { replace: true }),
    [setParams],
  );
  const setParam = useCallback(
    (k: string, v: string) => setParams((atual) => { const n = new URLSearchParams(atual); n.set(k, v); return n; }, { replace: true }),
    [setParams],
  );
  return [periodo, setPeriodo, params, setParam];
}
