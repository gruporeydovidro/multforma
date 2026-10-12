import { useCallback, useEffect } from 'react';
import type { Option } from '../../components/ui';
import { useAsync } from '../../lib/useAsync';
import { useFiltroUrl } from '../../lib/useFiltroUrl';
import { estoqueApi, type FiltroMovimentos, type FiltroSaldos, type OrigemMovimento, type TipoMovimento } from './api';

const PAGINA = 50;
const idOuNada = (v: string) => (Number(v) > 0 ? Number(v) : null);

/** Filtros da tela de saldos como ficam na URL (sempre texto). */
export const FILTROS_SALDOS_PADRAO = { q: '', abaixo_minimo: '' };
export type FiltrosSaldosUrl = typeof FILTROS_SALDOS_PADRAO;

export function saldosParaApi(f: FiltrosSaldosUrl, page: number): FiltroSaldos {
  return { q: f.q || undefined, abaixo_minimo: f.abaixo_minimo === '1' || undefined, page, pageSize: PAGINA };
}

/**
 * Filtros da tela de movimentações como ficam na URL. `produto_nome` só reexibe o rótulo do
 * campo de produto (ao voltar à tela ou vindo do link dos saldos); não vai para a API.
 */
export const FILTROS_MOVIMENTOS_PADRAO = { produto_id: '', produto_nome: '', tipo: '', origem: '', de: '', ate: '' };
export type FiltrosMovimentosUrl = typeof FILTROS_MOVIMENTOS_PADRAO;

export function movimentosParaApi(f: FiltrosMovimentosUrl, page: number): FiltroMovimentos {
  return {
    produto_id: idOuNada(f.produto_id),
    tipo: (f.tipo || undefined) as TipoMovimento | undefined,
    origem: (f.origem || undefined) as OrigemMovimento | undefined,
    de: f.de || undefined,
    ate: f.ate || undefined,
    page,
    pageSize: PAGINA,
  };
}

/**
 * Lista paginada com os filtros na query string (useFiltroUrl): a lista acompanha a URL, então
 * clicar no menu limpa os filtros e voltar do detalhe os mantém. Mudar um filtro volta à página 1.
 */
export function useListaUrl<P extends Record<string, string>, F, R>(padrao: P, paraApi: (f: P, page: number) => F, buscar: (f: F) => Promise<R>) {
  const { filtros, pagina, definir } = useFiltroUrl(padrao);
  const consulta = paraApi(filtros, pagina);
  const lista = useAsync(() => buscar(consulta), [JSON.stringify(consulta)]);
  const setPage = useCallback((page: number) => definir({ page } as Partial<P> & { page: number }), [definir]);
  return { filtros, pagina, filtrar: definir, setPage, ...lista };
}

/**
 * Movimentações com todos os filtros na URL, inclusive o produto. Devolve também as props do campo de produto:
 * o rótulo vem da URL (ou é buscado quando o link traz só o id). Ao editar o texto sem escolher opção,
 * o filtro sai e o rótulo antigo fica, para não apagar o que está sendo digitado; ele é limpo ao reabrir a tela.
 */
export function useMovimentos() {
  const lista = useListaUrl(FILTROS_MOVIMENTOS_PADRAO, movimentosParaApi, estoqueApi.movimentos);
  const { filtros, filtrar, setPage } = lista;
  const produtoId = idOuNada(filtros.produto_id);
  const semRotulo = useSaldoProduto(produtoId && !filtros.produto_nome ? produtoId : null).data;
  const rotulo = filtros.produto_nome || (semRotulo && semRotulo.id === produtoId ? `${semRotulo.codigo} — ${semRotulo.nome}` : '');

  useEffect(() => {
    if (!filtros.produto_id && filtros.produto_nome) filtrar({ produto_nome: '', page: lista.pagina });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const produto = {
    value: produtoId,
    initialLabel: rotulo || undefined,
    onChange: (v: number | null, o?: Option) =>
      filtrar(v === null ? { produto_id: '', produto_nome: rotulo } : { produto_id: String(v), produto_nome: o?.label ?? '' }),
  };
  return { ...lista, produto, setPage };
}

/** Saldo atual do produto escolhido (null enquanto nenhum produto). */
export function useSaldoProduto(produtoId: number | null) {
  return useAsync(() => (produtoId ? estoqueApi.saldoDoProduto(produtoId) : Promise.resolve(undefined)), [produtoId]);
}
