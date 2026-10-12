import { useCallback, useEffect, useState } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import { can, useAuth } from '../../lib/auth';
import { useAsync } from '../../lib/useAsync';
import { useFiltroUrl } from '../../lib/useFiltroUrl';
import { apoioApi, orcamentosApi, type Cabecalho, type FechamentoInput, type ItemInput, type Opcao, type Orcamento, type ProjetoInput, type StatusOrcamento } from './api';
import { permissoesOrcamento, type PermissoesOrcamento } from './regras';

import { useEnvio } from '../../lib/useEnvio';

export { useEnvio };

const FILTRO_PADRAO = { q: '', status: '', data_ini: '', data_fim: '', vendedor_id: '' };
const POR_PAGINA = 30;

/** Lista de orçamentos; filtros e página ficam na URL (voltar do detalhe preserva o filtro). */
export function useOrcamentos() {
  const { filtros, pagina, definir } = useFiltroUrl(FILTRO_PADRAO);
  const lista = useAsync(
    () => orcamentosApi.listar({ ...filtros, status: filtros.status as StatusOrcamento | '', page: pagina, pageSize: POR_PAGINA }),
    [JSON.stringify(filtros), pagina],
  );
  const setFiltro = (f: Partial<typeof FILTRO_PADRAO>) => definir(f);
  const setPage = (page: number) => definir({ page });
  return { filtro: filtros, setFiltro, setPage, ...lista };
}

/** Estado de navegação levado da lista ao detalhe: a query string com os filtros. */
interface EstadoLista {
  lista?: string;
}

/** Abre um orçamento levando os filtros da lista; `voltar` retorna à lista com eles. */
export function useNavegacaoOrcamentos() {
  const nav = useNavigate();
  const loc = useLocation();
  const lista = (loc.state as EstadoLista | null)?.lista ?? (loc.pathname === '/orcamentos' ? loc.search : '');
  return {
    abrir: (id: number | 'novo') => nav(`/orcamentos/${id}`, { state: { lista } satisfies EstadoLista }),
    voltar: () => nav(`/orcamentos${lista}`),
    imprimir: (id: number) => nav(`/orcamentos/${id}/imprimir`, { state: { lista } satisfies EstadoLista }),
    nav,
    estado: { lista } satisfies EstadoLista,
  };
}

/** Permissões do usuário logado para um orçamento (null = novo). Fonte única para a tela. */
export function usePermissoesOrcamento(status: StatusOrcamento | null): PermissoesOrcamento {
  const { user } = useAuth();
  return permissoesOrcamento(can(user, 'vendedor'), status);
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

/** Criação do orçamento (só o cabeçalho). */
export function useNovoOrcamento() {
  const envio = useEnvio();
  const criar = (c: Partial<Cabecalho> & { cliente_id: number }) => envio.run(() => orcamentosApi.criar(c));
  return { criar, ...envio };
}
