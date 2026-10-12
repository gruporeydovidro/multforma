import { useCallback } from 'react';
import { lerNumero } from '../../lib/numero';
import { useAsync } from '../../lib/useAsync';
import { useEnvio } from '../../lib/useEnvio';
import { useFiltroUrl } from '../../lib/useFiltroUrl';
import { producaoApi, type FiltroOrdens, type ItemOrdem, type MarcacaoInput, type StatusOrdem } from './api';
import { saldoNoSetor } from './format';

export { useEnvio };

export const useSetores = (ativo?: boolean) => useAsync(() => producaoApi.setores(ativo), [ativo]);
export const useMotivos = () => useAsync(() => producaoApi.motivos(), []);

/** Filtros da lista de ordens como ficam na URL (sempre texto). */
export const FILTROS_ORDENS_PADRAO = { q: '', status: '', de: '', ate: '', atrasadas: '' };
export type FiltrosOrdensUrl = typeof FILTROS_ORDENS_PADRAO;

/** Converte os filtros da URL na consulta da API (função pura). */
export function ordensParaApi(f: FiltrosOrdensUrl, page: number): FiltroOrdens {
  return {
    q: f.q || undefined,
    status: (f.status || undefined) as StatusOrdem | undefined,
    de: f.de || undefined,
    ate: f.ate || undefined,
    atrasadas: f.atrasadas === '1' || undefined,
    page,
    pageSize: 30,
  };
}

/**
 * Lista de ordens com os filtros na query string: sobrevivem à ida ao detalhe e à volta,
 * e clicar no menu limpa a URL e os filtros. Mudar um filtro volta à primeira página.
 */
export function useOrdens() {
  const { filtros, pagina, definir } = useFiltroUrl(FILTROS_ORDENS_PADRAO);
  const consulta = ordensParaApi(filtros, pagina);
  const lista = useAsync(() => producaoApi.ordens(consulta), [JSON.stringify(consulta)]);
  const setPage = useCallback((page: number) => definir({ page }), [definir]);
  return { filtros, filtrar: definir, setPage, ...lista };
}

export interface MarcacaoForm {
  setor_id: number | '';
  quantidade: string;
  defeito: boolean;
  motivo_id: number | '';
  observacao: string;
}

type ItemMarcavel = Pick<ItemOrdem, 'setor_atual_id' | 'quantidade'> & { processado_setor?: number | null };

/** Formulário inicial: sugere o saldo restante do item no setor atual. */
export const marcacaoInicial = (item: ItemMarcavel, defeito = false): MarcacaoForm => ({
  setor_id: item.setor_atual_id ?? '',
  quantidade: String(saldoNoSetor(item).restante || item.quantidade).replace('.', ','),
  defeito,
  motivo_id: '',
  observacao: '',
});

/**
 * Valida o formulário de marcação e monta o corpo da requisição (função pura).
 * Sem defeito, a quantidade não passa do restante no setor; com defeito, não passa da quantidade do item.
 */
export function montarMarcacao(f: MarcacaoForm, item: Pick<ItemMarcavel, 'quantidade' | 'processado_setor'>): { erro?: string; body?: MarcacaoInput } {
  if (!f.setor_id) return { erro: 'Selecione o setor.' };
  const quantidade = lerNumero(f.quantidade);
  if (quantidade === null || !(quantidade > 0)) return { erro: 'Informe a quantidade.' };
  const { restante } = saldoNoSetor(item);
  if (f.defeito && quantidade > item.quantidade) return { erro: `A quantidade com defeito não pode passar de ${item.quantidade}.` };
  if (!f.defeito && quantidade > restante) return { erro: `A quantidade não pode passar do restante no setor (${restante}).` };
  if (f.defeito && !f.motivo_id) return { erro: 'Selecione o motivo do defeito.' };
  return {
    body: {
      setor_id: f.setor_id,
      quantidade,
      defeito: f.defeito,
      motivo_id: f.defeito ? Number(f.motivo_id) : null,
      observacao: f.observacao.trim() || null,
    },
  };
}
