import { useCallback, useEffect } from 'react';
import type { Option } from '../../components/ui';
import { useAsync } from '../../lib/useAsync';
import { useFiltroUrl } from '../../lib/useFiltroUrl';
import type { FiltroTitulos, ListaTitulos, StatusTitulo } from './api';

/** Valor do filtro de situação que significa "todas" (vazio na URL volta ao padrão 'aberto'). */
export const TODAS = 'todas';

/**
 * Filtros das listas de títulos como ficam na URL (sempre texto). Os nomes de cliente/fornecedor
 * só servem para reexibir o rótulo do AsyncSelect ao voltar do recibo; não vão para a API.
 */
export const FILTROS_TITULOS_PADRAO = {
  q: '',
  status: 'aberto',
  de: '',
  ate: '',
  vencidas: '',
  categoria: '',
  cliente_id: '',
  cliente_nome: '',
  fornecedor_id: '',
  fornecedor_nome: '',
};

export type FiltrosTitulosUrl = typeof FILTROS_TITULOS_PADRAO;
export type CampoPessoa = 'cliente' | 'fornecedor';

const idOuNada = (v: string) => (Number(v) > 0 ? Number(v) : undefined);

/** Converte os filtros da URL na consulta da API (função pura). */
export function filtroParaApi(f: FiltrosTitulosUrl, page: number): FiltroTitulos {
  return {
    q: f.q || undefined,
    status: f.status && f.status !== TODAS ? (f.status as StatusTitulo) : undefined,
    vencidas: f.vencidas === '1' || undefined,
    de: f.de || undefined,
    ate: f.ate || undefined,
    categoria: f.categoria || undefined,
    cliente_id: idOuNada(f.cliente_id),
    fornecedor_id: idOuNada(f.fornecedor_id),
    page,
    pageSize: 50,
  };
}

/**
 * Lista de títulos com os filtros na query string (sobrevivem à ida ao recibo e à volta).
 * Mudar qualquer filtro volta para a página 1.
 */
export function useListaTitulos<T>(carregar: (f: FiltroTitulos) => Promise<ListaTitulos<T>>) {
  const { filtros, pagina, definir } = useFiltroUrl(FILTROS_TITULOS_PADRAO);
  const consulta = filtroParaApi(filtros, pagina);
  const lista = useAsync(() => carregar(consulta), [JSON.stringify(consulta)]);
  const irPara = useCallback((page: number) => definir({ page }), [definir]);

  // Ao abrir a tela: nome de pessoa sem id na URL (texto que foi editado sem escolher opção) não filtra,
  // então não é reexibido. Só na montagem, para não apagar o campo enquanto o usuário digita.
  useEffect(() => {
    const orfaos = (['cliente', 'fornecedor'] as const).filter((c) => !filtros[`${c}_id`] && filtros[`${c}_nome`]);
    if (orfaos.length) definir({ ...Object.fromEntries(orfaos.map((c) => [`${c}_nome`, ''])), page: pagina });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /**
   * Props do AsyncSelect de cliente/fornecedor. Só filtra quando uma opção é escolhida; ao editar o texto,
   * o filtro sai (o nome fica para não apagar o que está sendo digitado e é limpo ao recarregar a tela).
   */
  const pessoa = (campo: CampoPessoa) => ({
    value: idOuNada(filtros[`${campo}_id`]) ?? null,
    initialLabel: filtros[`${campo}_nome`] || undefined,
    onChange: (v: number | null, o?: Option) =>
      definir((v === null ? { [`${campo}_id`]: '' } : { [`${campo}_id`]: String(v), [`${campo}_nome`]: o?.label ?? '' }) as Partial<FiltrosTitulosUrl>),
  });

  return { filtros, filtrar: definir, irPara, pessoa, ...lista };
}
