import { useCallback, useEffect, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import { apoioApi, orcamentosApi, type FechamentoInput, type FiltroOrcamentos, type ItemInput, type Opcao, type Orcamento, type ProjetoInput } from './api';

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

/** Lista de orçamentos com filtros e paginação. */
export function useOrcamentos() {
  const [filtro, setFiltroState] = useState<FiltroOrcamentos>({ page: 1, pageSize: 30 });
  const lista = useAsync(() => orcamentosApi.listar(filtro), [JSON.stringify(filtro)]);
  const setFiltro = (f: Partial<FiltroOrcamentos>) => setFiltroState((a) => ({ ...a, page: 1, ...f }));
  const setPage = (page: number) => setFiltroState((a) => ({ ...a, page }));
  return { filtro, setFiltro, setPage, ...lista };
}

/** Listas de apoio (vendedores, tabelas de preço, projetos). Falhas resultam em listas vazias. */
export function useApoio() {
  const [vendedores, setVendedores] = useState<Opcao[]>([]);
  const [tabelas, setTabelas] = useState<Opcao[]>([]);
  useEffect(() => {
    apoioApi.vendedores().then(setVendedores).catch(() => setVendedores([]));
    apoioApi.tabelasPreco().then(setTabelas).catch(() => setTabelas([]));
  }, []);
  return { vendedores, tabelas };
}

export function useProjetosAtivos() {
  return useAsync(() => apoioApi.projetos().catch(() => [] as Opcao[]), []);
}

/**
 * Estado e ações da tela do orçamento. Toda ação devolve o orçamento atualizado pelo servidor
 * (itens e totais recalculados lá), que substitui o estado local.
 */
export function useOrcamento(id: number | null) {
  const carga = useAsync(() => (id === null ? Promise.resolve(undefined) : orcamentosApi.obter(id)), [id]);
  const envio = useEnvio();
  const { setData } = carga;

  const executar = useCallback(
    async (fn: () => Promise<Orcamento>) => {
      const o = await envio.run(fn);
      if (o) setData(o);
      return o;
    },
    [envio.run, setData],
  );

  const comId = <A extends unknown[]>(fn: (id: number, ...a: A) => Promise<Orcamento>) => (...a: A) => executar(() => fn(id!, ...a));

  return {
    orcamento: carga.data,
    carregando: carga.loading,
    error: envio.error || carga.error || '',
    setError: envio.setError,
    busy: envio.busy,
    recarregar: carga.reload,
    salvarCabecalho: comId(orcamentosApi.atualizar),
    adicionarItem: comId((oid, it: ItemInput) => orcamentosApi.adicionarItem(oid, it)),
    atualizarItem: comId(orcamentosApi.atualizarItem),
    removerItem: comId(orcamentosApi.removerItem),
    adicionarProjeto: comId((oid, p: ProjetoInput) => orcamentosApi.adicionarProjeto(oid, p)),
    removerProjeto: comId(orcamentosApi.removerProjeto),
    aprovar: comId(orcamentosApi.aprovar),
    cancelar: comId(orcamentosApi.cancelar),
    fechar: comId((oid, f: FechamentoInput) => orcamentosApi.fechar(oid, f)),
    /** Devolve a cópia (novo orçamento), sem trocar o estado atual. */
    duplicar: () => envio.run(() => orcamentosApi.duplicar(id!)),
  };
}

export type UseOrcamento = ReturnType<typeof useOrcamento>;
