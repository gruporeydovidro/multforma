import { useCallback, useEffect, useState } from 'react';
import { useAsync } from '../../lib/useAsync';
import { projetosApi, type FiltroProjetos, type ItemProjeto, type PecaSimulada, type Projeto, type ProjetoInput, type Vao } from './api';

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

/** Lista paginada com filtros. */
export function useProjetos() {
  const [filtro, setFiltroState] = useState<FiltroProjetos>({ page: 1, pageSize: 30 });
  const lista = useAsync(() => projetosApi.listar(filtro), [JSON.stringify(filtro)]);
  const setFiltro = (f: Partial<FiltroProjetos>) => setFiltroState((a) => ({ ...a, page: 1, ...f }));
  const setPage = (page: number) => setFiltroState((a) => ({ ...a, page }));
  return { filtro, setFiltro, setPage, ...lista };
}

export const novoItem = (): ItemProjeto => ({
  descricao: '',
  tipo: 'vidro',
  produto_id: null,
  quantidade: 1,
  formula_largura: '',
  formula_altura: '',
  folga_largura_mm: 0,
  folga_altura_mm: 0,
});

const vazio: ProjetoInput = { nome: '', descricao: '', ativo: true, itens: [novoItem()] };

/** Formulário de projeto com a grade de itens. id = null cria. */
export function useProjetoForm(id: number | null) {
  const [form, setForm] = useState<ProjetoInput>(vazio);
  const [carregando, setCarregando] = useState(id !== null);
  const envio = useEnvio();

  useEffect(() => {
    if (id === null) return;
    setCarregando(true);
    projetosApi
      .obter(id)
      .then(({ id: _id, ...p }) => setForm(p))
      .catch((e) => envio.setError(e.message))
      .finally(() => setCarregando(false));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [id]);

  const set = <K extends keyof ProjetoInput>(k: K, v: ProjetoInput[K]) => setForm((f) => ({ ...f, [k]: v }));
  const setItem = (i: number, patch: Partial<ItemProjeto>) =>
    setForm((f) => ({ ...f, itens: f.itens.map((it, j) => (j === i ? { ...it, ...patch } : it)) }));
  const addItem = () => setForm((f) => ({ ...f, itens: [...f.itens, novoItem()] }));
  const removeItem = (i: number) => setForm((f) => ({ ...f, itens: f.itens.filter((_, j) => j !== i) }));
  const moveItem = (i: number, delta: -1 | 1) =>
    setForm((f) => {
      const j = i + delta;
      if (j < 0 || j >= f.itens.length) return f;
      const itens = [...f.itens];
      [itens[i], itens[j]] = [itens[j], itens[i]];
      return { ...f, itens };
    });

  const salvar = (): Promise<Projeto | undefined> =>
    envio.run(() => (id === null ? projetosApi.criar(form) : projetosApi.atualizar(id, form)));

  /** Exclui (ou desativa, se já usado em orçamento). true em caso de sucesso. */
  const excluir = async (): Promise<boolean> =>
    id !== null && (await envio.run(async () => { await projetosApi.excluir(id); return true; })) === true;

  return { form, set, setItem, addItem, removeItem, moveItem, salvar, excluir, carregando, ...envio };
}

/** Simulador: calcula as peças de um projeto salvo para um vão. */
export function useSimulador(projetoId: number | null) {
  const [vao, setVao] = useState<Vao>({ largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 1, vidro_produto_id: null });
  const [pecas, setPecas] = useState<PecaSimulada[]>();
  const envio = useEnvio();
  const simular = () =>
    projetoId === null
      ? undefined
      : envio.run(async () => setPecas((await projetosApi.simular(projetoId, vao)).pecas));
  return { vao, setVao, pecas, simular, ...envio };
}
