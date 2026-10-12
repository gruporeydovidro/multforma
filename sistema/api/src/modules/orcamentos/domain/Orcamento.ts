import { RegraOrcamentoError, StatusOrcamentoError } from './erros.js';
import { round2 } from './numeros.js';
import type { PlanoParcelas } from './PlanoParcelas.js';

export const STATUS_ORCAMENTO = ['aberto', 'aprovado', 'fechado', 'cancelado'] as const;
export type StatusOrcamento = (typeof STATUS_ORCAMENTO)[number];

export const DESTINOS = ['producao', 'balcao', 'instalacao'] as const;
export type Destino = (typeof DESTINOS)[number];

export interface AjustesOrcamento {
  desconto_pct?: number | null;
  desconto_valor?: number | null;
  acrescimo_valor?: number | null;
  frete_valor?: number | null;
}

export interface Desconto {
  desconto_pct: number;
  desconto_valor: number;
}

/** Limite das colunas de valor do cabeçalho (numeric(14,2)). */
export const LIMITE_VALOR_ORCAMENTO = 999_999_999_999;

export interface Totais {
  subtotal: number;
  /** Desconto geral efetivamente aplicado (R$). */
  desconto: number;
  total: number;
}

/** Campos do cabeçalho que alteram valores; só podem mudar com o orçamento aberto. */
export const CAMPOS_FINANCEIROS = ['cliente_id', 'tabela_preco_id', 'desconto_pct', 'desconto_valor', 'acrescimo_valor', 'frete_valor'] as const;

const ROTULO: Record<StatusOrcamento, string> = { aberto: 'aberto', aprovado: 'aprovado', fechado: 'fechado', cancelado: 'cancelado' };

/** Transições permitidas: aberto → aprovado → fechado; aberto|aprovado → cancelado. */
const TRANSICOES: Record<StatusOrcamento, readonly StatusOrcamento[]> = {
  aberto: ['aprovado', 'cancelado'],
  aprovado: ['fechado', 'cancelado'],
  fechado: [],
  cancelado: [],
};

/** Regras do orçamento: totais e ciclo de vida (o que cada status permite). */
export class Orcamento {
  constructor(readonly status: StatusOrcamento) {}

  /**
   * subtotal = Σ itens; desconto = pct > 0 ? subtotal * pct / 100 : desconto_valor (limitado ao subtotal);
   * total = subtotal - desconto + acréscimo + frete.
   */
  static calcularTotais(totaisItens: number[], a: AjustesOrcamento): Totais {
    const subtotal = round2(totaisItens.reduce((s, v) => s + Number(v), 0));
    const pct = Number(a.desconto_pct ?? 0);
    const bruto = pct > 0 ? round2((subtotal * pct) / 100) : round2(Number(a.desconto_valor ?? 0));
    const desconto = Math.min(Math.max(bruto, 0), subtotal);
    const total = round2(subtotal - desconto + Number(a.acrescimo_valor ?? 0) + Number(a.frete_valor ?? 0));
    return { subtotal, desconto, total };
  }

  /**
   * Intenção de desconto de uma edição parcial do cabeçalho. Os dois modos são exclusivos:
   * - % (desconto_pct > 0): desconto_valor é derivado (o efetivo, regravado a cada recálculo);
   * - R$ (desconto_pct = 0): desconto_valor é o digitado.
   * Mudar o % sem informar o valor descarta o valor derivado do % anterior (pct 0 = sem desconto).
   * Informar só um valor positivo passa ao modo R$; só um valor zero não desliga um % ativo. Sem nenhum dos dois, nada muda.
   */
  static resolverDesconto(atual: Desconto, alteracao: AjustesOrcamento): Desconto {
    const informado = (v: number | null | undefined): v is number => v !== undefined && v !== null;
    const pctAtual = Number(atual.desconto_pct ?? 0);
    const valorAtual = Number(atual.desconto_valor ?? 0);
    const { desconto_pct: pct, desconto_valor: valor } = alteracao;
    if (informado(pct) && informado(valor)) return { desconto_pct: Number(pct), desconto_valor: round2(Number(valor)) };
    if (informado(pct)) return { desconto_pct: Number(pct), desconto_valor: Number(pct) === pctAtual ? valorAtual : 0 };
    // Só o valor: positivo passa ao modo R$; zero zera o desconto em R$ (com % ativo, o % continua valendo).
    if (informado(valor) && (Number(valor) > 0 || pctAtual === 0)) return { desconto_pct: 0, desconto_valor: round2(Number(valor)) };
    return { desconto_pct: pctAtual, desconto_valor: valorAtual };
  }

  /** Os totais precisam caber nas colunas do cabeçalho. */
  static garantirLimites(t: Totais): void {
    if (t.subtotal > LIMITE_VALOR_ORCAMENTO || t.total > LIMITE_VALOR_ORCAMENTO) throw new RegraOrcamentoError('Total do orçamento acima do limite');
  }

  /** Valor a gravar em desconto_valor: com %, o desconto efetivo (derivado); sem %, o valor digitado. */
  static descontoAGravar(a: AjustesOrcamento, t: Totais): number {
    return Number(a.desconto_pct ?? 0) > 0 ? t.desconto : round2(Number(a.desconto_valor ?? 0));
  }

  get itensEditaveis(): boolean {
    return this.status === 'aberto';
  }

  pode(destino: StatusOrcamento): boolean {
    return TRANSICOES[this.status].includes(destino);
  }

  garantirItensEditaveis(): void {
    if (!this.itensEditaveis) throw new StatusOrcamentoError(`Itens só podem ser alterados com o orçamento aberto (status: ${ROTULO[this.status]})`);
  }

  /** Aberto: tudo editável. Aprovado: só campos não financeiros (datas, destino, contato, observações...). */
  garantirCabecalhoEditavel(camposFinanceirosAlterados: string[]): void {
    if (this.status === 'aberto') return;
    if (this.status === 'aprovado' && camposFinanceirosAlterados.length === 0) return;
    if (this.status === 'aprovado') {
      throw new StatusOrcamentoError(`Orçamento aprovado: não é possível alterar ${camposFinanceirosAlterados.join(', ')}`);
    }
    throw new StatusOrcamentoError(`Orçamento ${ROTULO[this.status]} não pode ser alterado`);
  }

  private transitar(destino: StatusOrcamento, acao: string): StatusOrcamento {
    if (!this.pode(destino)) throw new StatusOrcamentoError(`Não é possível ${acao} um orçamento ${ROTULO[this.status]}`);
    return destino;
  }

  aprovar(quantidadeItens: number): StatusOrcamento {
    const novo = this.transitar('aprovado', 'aprovar');
    if (quantidadeItens <= 0) throw new RegraOrcamentoError('Inclua ao menos um item antes de aprovar');
    return novo;
  }

  cancelar(): StatusOrcamento {
    return this.transitar('cancelado', 'cancelar');
  }

  fechar(total: number, plano: PlanoParcelas): StatusOrcamento {
    const novo = this.transitar('fechado', 'fechar');
    if (!(total > 0)) throw new RegraOrcamentoError('Orçamento com total zero não pode ser fechado');
    plano.validarSoma(total);
    return novo;
  }
}
