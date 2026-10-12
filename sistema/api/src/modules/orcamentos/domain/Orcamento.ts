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

  /** Valor a gravar em desconto_valor: com %, o desconto efetivo; sem %, o valor digitado. */
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
