import { useCallback, useRef, useState } from 'react';

/**
 * Estado de envio de formulário/ação: busy, mensagem de erro e um executor que captura a falha.
 * Ignora novas chamadas enquanto uma estiver em andamento (Enter repetido, duplo clique).
 */
export function useEnvio() {
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState('');
  const emAndamento = useRef(false);
  const run = useCallback(async <T,>(fn: () => Promise<T>): Promise<T | undefined> => {
    if (emAndamento.current) return undefined;
    emAndamento.current = true;
    setBusy(true);
    setError('');
    try {
      return await fn();
    } catch (e) {
      setError((e as Error).message);
      return undefined;
    } finally {
      emAndamento.current = false;
      setBusy(false);
    }
  }, []);
  return { busy, error, setError, run };
}
