import { useCallback, useEffect, useState, type ChangeEvent } from 'react';
import { useLocation, useNavigate, useSearchParams } from 'react-router-dom';
import type { Paged } from '../../lib/api';
import { useAsync } from '../../lib/useAsync';
import type { Filtro, ResultadoExclusao } from './api';
import { avisoExclusao, errosDeCampo, mensagemErro, type ValoresForm } from './util';

const TAMANHO_PAGINA = 20;

/**
 * Estado de uma listagem paginada guardado na URL (?q=&page=&...), para sobreviver à volta da edição.
 * `fixos` entram em toda consulta (ex.: tipo=cliente); `versao` força o recarregamento.
 */
export function useListagem<T>(listar: (f: Filtro) => Promise<Paged<T>>, fixos: Filtro = {}, versao = 0) {
  const [params, setParams] = useSearchParams();
  const page = Number(params.get('page')) || 1;
  const filtro: Filtro = { ...Object.fromEntries(params.entries()), ...fixos, page, pageSize: TAMANHO_PAGINA };
  const chave = JSON.stringify(filtro);
  const { data, error, reload } = useAsync(() => listar(filtro), [chave, versao]);

  const definir = useCallback(
    (nome: string, valor: string) => {
      const proximo = new URLSearchParams(params);
      if (valor) proximo.set(nome, valor);
      else proximo.delete(nome);
      if (nome !== 'page') proximo.delete('page');
      setParams(proximo, { replace: true });
    },
    [params, setParams],
  );

  return { data, error, reload, page, pageSize: TAMANHO_PAGINA, valor: (nome: string) => params.get(nome) ?? '', definir };
}

export type Listagem<T> = ReturnType<typeof useListagem<T>>;

type Evento = ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>;

/** Valores, erros por campo e envio de um formulário. `campo()` e `marca()` ligam inputs e checkboxes. */
export function useFormulario(inicial: ValoresForm) {
  const [valores, setValores] = useState<ValoresForm>(inicial);
  const [erros, setErros] = useState<Record<string, string>>({});
  const [erro, setErro] = useState<string>();
  const [enviando, setEnviando] = useState(false);

  const definir = useCallback((nome: string, valor: string | boolean) => setValores((v) => ({ ...v, [nome]: valor })), []);

  /** Executa a gravação, mostrando o erro geral e os erros por campo da API. Retorna true se deu certo. */
  const enviar = useCallback(async (acao: () => Promise<unknown>) => {
    setEnviando(true);
    setErro(undefined);
    setErros({});
    try {
      await acao();
      return true;
    } catch (e) {
      setErro(mensagemErro(e));
      setErros(errosDeCampo(e));
      return false;
    } finally {
      setEnviando(false);
    }
  }, []);

  const campo = (nome: string) => ({
    name: nome,
    value: String(valores[nome] ?? ''),
    onChange: (e: Evento) => definir(nome, e.target.value),
    error: erros[nome],
  });

  const marca = (nome: string) => ({ checked: valores[nome] === true, onChange: (v: boolean) => definir(nome, v) });

  return { valores, setValores, definir, campo, marca, erros, erro, setErro, enviando, enviar };
}

export type Formulario = ReturnType<typeof useFormulario>;

/**
 * Carrega o registro de uma rota `.../:id` (`novo` = criação) no formulário.
 * `paraForm` converte o registro nos valores do formulário.
 */
export function useEdicao<T>(param: string | undefined, obter: (id: number) => Promise<T>, vazio: ValoresForm, paraForm: (r: T) => ValoresForm) {
  const id = param && param !== 'novo' ? Number(param) : null;
  const form = useFormulario(vazio);
  const [registro, setRegistro] = useState<T>();
  const [carregando, setCarregando] = useState(id !== null);

  useEffect(() => {
    if (id === null) return;
    setCarregando(true);
    obter(id)
      .then((r) => {
        setRegistro(r);
        form.setValores(paraForm(r));
      })
      .catch((e) => form.setErro(mensagemErro(e)))
      .finally(() => setCarregando(false));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [id]);

  return { id, form, registro, carregando };
}

/** Navegação entre lista e formulário, preservando a busca e a página da lista. */
export function useNavegacaoCadastro(lista: string) {
  const navigate = useNavigate();
  const location = useLocation();
  const voltarPara = (location.state as { voltar?: string } | null)?.voltar ?? `/${lista}`;
  return {
    abrir: (id: number | 'novo') => navigate(`/${lista}/${id}`, { state: { voltar: location.pathname + location.search } }),
    voltar: () => navigate(voltarPara),
  };
}

/**
 * Pede confirmação e exclui pelo formulário (erros aparecem nele).
 * Devolve o aviso de desativação, se houver, ou null quando nada foi feito.
 */
export async function excluirRegistro(form: Formulario, excluir: () => Promise<ResultadoExclusao>): Promise<{ aviso?: string } | null> {
  if (!window.confirm('Excluir este registro?')) return null;
  let resultado: ResultadoExclusao = 'excluido';
  const ok = await form.enviar(async () => {
    resultado = await excluir();
  });
  return ok ? { aviso: avisoExclusao(resultado) } : null;
}
