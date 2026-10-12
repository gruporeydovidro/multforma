// Funções puras do módulo Cadastros (conversão de formulário, mensagens e rótulos).
import { ApiError } from '../../lib/api';
import type { Perfil } from '../../lib/auth';
import type { PrecoTabela, ResultadoExclusao, TipoPessoa, UnidadeVenda } from './api';

/** Estado de formulário: texto para inputs e booleano para checkboxes. */
export type ValoresForm = Record<string, string | boolean>;

/** Registro da API → valores de formulário (null vira '', número vira texto). */
export function paraFormulario(registro: object, campos: string[]): ValoresForm {
  const fonte = registro as Record<string, unknown>;
  const valores: ValoresForm = {};
  for (const campo of campos) {
    const v = fonte[campo];
    valores[campo] = typeof v === 'boolean' ? v : v === null || v === undefined ? '' : String(v);
  }
  return valores;
}

/** Valores de formulário → corpo da API ('' vira null; campos numéricos viram número). */
export function doFormulario(valores: ValoresForm, numericos: string[] = []): Record<string, unknown> {
  const dados: Record<string, unknown> = {};
  for (const [campo, v] of Object.entries(valores)) {
    if (typeof v === 'boolean') dados[campo] = v;
    else if (v.trim() === '') dados[campo] = null;
    else dados[campo] = numericos.includes(campo) ? paraNumero(v) : v;
  }
  return dados;
}

/** Aceita '1234.5' e '1.234,5'. */
export function paraNumero(texto: string): number {
  const t = texto.trim();
  return Number(t.includes(',') ? t.replace(/\./g, '').replace(',', '.') : t);
}

/** Erros por campo devolvidos pela API (formato `details.fieldErrors`). */
export function errosDeCampo(e: unknown): Record<string, string> {
  const campos = (e instanceof ApiError && (e.details as any)?.fieldErrors) || {};
  return Object.fromEntries(
    Object.entries(campos as Record<string, string[]>)
      .filter(([, msgs]) => msgs?.length)
      .map(([campo, msgs]) => [campo, msgs[0]]),
  );
}

export function mensagemErro(e: unknown): string {
  return e instanceof Error ? e.message : String(e);
}

/** Aviso após excluir: a API desativa em vez de excluir quando há vínculos. */
export function avisoExclusao(resultado: ResultadoExclusao): string | undefined {
  return resultado === 'desativado' ? 'O registro possui vínculos e foi desativado em vez de excluído.' : undefined;
}

/** Margem sobre o preço de venda, em %; null se não houver preço. */
export function margemPct(custo: number, preco: number): number | null {
  if (!Number.isFinite(custo) || !Number.isFinite(preco) || preco <= 0) return null;
  return ((preco - custo) / preco) * 100;
}

/** Mapa tabela → preço digitado para a lista enviada à API (em branco = sem preço próprio). */
export function listaDePrecos(precos: Record<number, string>): PrecoTabela[] {
  return Object.entries(precos)
    .filter(([, v]) => v.trim() !== '')
    .map(([tabela, v]) => ({ tabela_preco_id: Number(tabela), preco: paraNumero(v) }));
}

/** Erro da confirmação de senha, conferida no navegador antes de enviar. */
export function erroConfirmacao(senha: string, confirmacao: string): string | undefined {
  return senha === confirmacao ? undefined : 'A confirmação não confere com a senha';
}

export const TIPOS_PESSOA: Record<TipoPessoa, string> = { cliente: 'Cliente', fornecedor: 'Fornecedor', ambos: 'Cliente e fornecedor' };

export const UNIDADES: Record<UnidadeVenda, string> = {
  M2: 'm² (área)',
  ML: 'Metro linear (perímetro)',
  UN: 'Unidade',
  PC: 'Peça',
  KG: 'Quilo',
};

export const PERFIS: Record<Perfil, string> = { admin: 'Administrador', vendedor: 'Vendedor', producao: 'Produção', financeiro: 'Financeiro' };

export const UFS = 'AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR PE PI RJ RN RS RO RR SC SP SE TO'.split(' ');
