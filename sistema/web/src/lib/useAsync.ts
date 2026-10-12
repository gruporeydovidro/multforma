import { useCallback, useEffect, useRef, useState } from 'react';

/**
 * Carrega dados assíncronos; reload() refaz a chamada.
 * Só a resposta da chamada mais recente é aplicada (filtros digitados rápido não exibem dados velhos).
 */
export function useAsync<T>(fn: () => Promise<T>, deps: unknown[] = []) {
  const [data, setData] = useState<T | undefined>();
  const [error, setError] = useState<string | undefined>();
  const [loading, setLoading] = useState(true);
  const seq = useRef(0);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  const run = useCallback(fn, deps);
  const reload = useCallback(() => {
    const minha = ++seq.current;
    setLoading(true);
    setError(undefined);
    return run()
      .then((d) => { if (minha === seq.current) setData(d); })
      .catch((e) => { if (minha === seq.current) setError(e.message ?? String(e)); })
      .finally(() => { if (minha === seq.current) setLoading(false); });
  }, [run]);
  useEffect(() => {
    reload();
    return () => { seq.current++; };
  }, [reload]);
  return { data, error, loading, reload, setData };
}
