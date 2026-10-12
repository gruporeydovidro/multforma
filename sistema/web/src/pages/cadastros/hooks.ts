import { useCallback, useEffect, useRef, useState, type ChangeEvent } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import type { Paged } from '../../lib/api';
import { useAsync } from '../../lib/useAsync';
import { useEnvio } from '../../lib/useEnvio';
import { useFiltroUrl } from '../../lib/useFiltroUrl';
import type { Filtro, ResultadoExclusao } from './api';
import { avisoExclusao, desativando, errosDeCampo, mensagemErro, type ValoresForm } from './util';

const TAMANHO_PAGINA = 20;

/**
 * Estado de uma listagem paginada guardado na URL (?q=&page=&...), para sobreviver à volta da edição.
 * `nomes` são os filtros editáveis (ex.: q, ativo); `fixos` entram em toda consulta (ex.: tipo=cliente);
 * `versao` força o recarregamento. A URL fica com o `useFiltroUrl` compartilhado.
 */
export function useListagem<T>(listar: (f: Filtro) => Promise<Paged<T>>, nomes: string[], fixos: Filtro = {}, versao = 0) {
  const padrao = Object.fromEntries(nomes.map((n) => [n, ''])) as Record<string, string>;
  const { filtros, pagina, definir: definirUrl } = useFiltroUrl(padrao);
  const filtro: Filtro = { ...filtros, ...fixos, page: pagina, pageSize: TAMANHO_PAGINA };
  const chave = JSON.stringify(filtro);
  const { data, error, reload } = useAsync(() => listar(filtro), [chave, versao]);

  const definir = useCallback(
    (nome: string, valor: string) => {
      // Com chaves dinâmicas (Record<string, string>), o tipo de `page` colide com o índice; o formato é o esperado.
      if (nome === 'page') definirUrl({ page: Number(valor) || undefined } as Parameters<typeof definirUrl>[0]);
      else definirUrl({ [nome]: valor });
    },
    [definirUrl],
  );

  return { data, error, reload, page: pagina, pageSize: TAMANHO_PAGINA, valor: (nome: string) => filtros[nome] ?? '', definir };
}

export type Listagem<T> = ReturnType<typeof useListagem<T>>;

type Evento = ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>;

/**
 * Valores, erros por campo e envio de um formulário. `campo()` e `marca()` ligam inputs e checkboxes.
 * O envio usa o `useEnvio` compartilhado: enquanto um está em andamento, novos (Enter repetido, duplo clique) são ignorados.
 */
export function useFormulario(inicial: ValoresForm) {
  const [valores, setValores] = useState<ValoresForm>(inicial);
  const [erros, setErros] = useState<Record<string, string>>({});
  const envio = useEnvio();
  const { run, setError } = envio;

  const definir = useCallback((nome: string, valor: string | boolean) => setValores((v) => ({ ...v, [nome]: valor })), []);
  const setErro = useCallback((mensagem?: string) => setError(mensagem ?? ''), [setError]);

  /**
   * Executa a gravação, mostrando o erro geral e os erros por campo da API.
   * Retorna true se deu certo; false se falhou ou se outro envio já estava em andamento.
   */
  const enviar = useCallback(
    async (acao: () => Promise<unknown>) => {
      const ok = await run(async () => {
        setErros({});
        try {
          await acao();
        } catch (e) {
          setErros(errosDeCampo(e));
          throw e;
        }
        return true as const;
      });
      return ok === true;
    },
    [run],
  );

  const campo = (nome: string) => ({
    name: nome,
    value: String(valores[nome] ?? ''),
    onChange: (e: Evento) => definir(nome, e.target.value),
    error: erros[nome],
  });

  const marca = (nome: string) => ({ checked: valores[nome] === true, onChange: (v: boolean) => definir(nome, v) });

  return { valores, setValores, definir, campo, marca, erros, erro: envio.error || undefined, setErro, enviando: envio.busy, enviar };
}

export type Formulario = ReturnType<typeof useFormulario>;

/**
 * Carrega o registro de uma rota `.../:id` (`novo` = criação) no formulário.
 * `paraForm` converte o registro nos valores do formulário. `assumir` adota um registro recém-criado
 * (a rota passa a ser a dele) sem recarregá-lo nem apagar o que está no formulário.
 */
export function useEdicao<T>(param: string | undefined, obter: (id: number) => Promise<T>, vazio: ValoresForm, paraForm: (r: T) => ValoresForm) {
  const id = param && param !== 'novo' ? Number(param) : null;
  const form = useFormulario(vazio);
  const [registro, setRegistro] = useState<T>();
  const [carregando, setCarregando] = useState(id !== null);
  const assumido = useRef<number | null>(null);

  useEffect(() => {
    if (id === null || assumido.current === id) return;
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

  const assumir = useCallback((novoId: number, r: T) => {
    assumido.current = novoId;
    setRegistro(r);
  }, []);

  return { id, form, registro, carregando, assumir };
}

/** Navegação entre lista e formulário, preservando a busca e a página da lista. */
export function useNavegacaoCadastro(lista: string) {
  const navigate = useNavigate();
  const location = useLocation();
  const voltarPara = (location.state as { voltar?: string } | null)?.voltar ?? `/${lista}`;
  return {
    abrir: (id: number | 'novo') => navigate(`/${lista}/${id}`, { state: { voltar: location.pathname + location.search } }),
    /** Troca a rota atual (ex.: `novo`) pela do registro, sem nova entrada no histórico. */
    trocarPara: (id: number) => navigate(`/${lista}/${id}`, { replace: true, state: location.state }),
    voltar: () => navigate(voltarPara),
  };
}

/**
 * Pede confirmação e exclui pelo formulário (erros aparecem nele).
 * Devolve o aviso de desativação, se houver, ou null quando nada foi feito.
 */
export async function excluirRegistro(form: Formulario, excluir: () => Promise<ResultadoExclusao>): Promise<{ aviso?: string } | null> {
  if (form.enviando) return null;
  if (!window.confirm('Excluir este registro? Se ele tiver vínculos, será apenas desativado.')) return null;
  let resultado: ResultadoExclusao = 'excluido';
  const ok = await form.enviar(async () => {
    resultado = await excluir();
  });
  return ok ? { aviso: avisoExclusao(resultado) } : null;
}

/** Confirma a gravação quando ela desativa um registro ativo; nos demais casos, segue sem perguntar. */
export function confirmarDesativacao(atual: object | undefined, valores: ValoresForm): boolean {
  return !desativando(atual, valores) || window.confirm('Desativar este registro? Ele deixará de aparecer nas buscas de ativos.');
}
