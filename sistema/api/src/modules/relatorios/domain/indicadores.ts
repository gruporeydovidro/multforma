import { arredondarDinheiro } from '../../../shared/numeros.js';
/** Arredonda a 2 casas (meio para longe do zero, corrigindo o erro binário). */
export const round2 = arredondarDinheiro;

/** parte / todo em %, com 2 casas (0 quando todo = 0). */
export function percentual(parte: number, todo: number): number {
  return todo ? round2((parte / todo) * 100) : 0;
}

export function ticketMedio(total: number, quantidade: number): number {
  return quantidade ? round2(total / quantidade) : 0;
}

/** Agregado bruto vindo do banco para uma chave de agrupamento. */
export interface AgregadoVenda {
  chave: string;
  rotulo: string;
  /** Orçamentos (dia/vendedor/cliente) ou quantidade de itens (produto). */
  quantidade: number;
  /** Total vendido (total do orçamento; para produto, total dos itens). */
  total: number;
  /** Σ total dos itens (base da margem). */
  total_itens: number;
  /** Σ custo do produto × medida_cobrada. */
  custo: number;
  medida?: number;
  unidade?: string;
}

export interface LinhaVenda extends AgregadoVenda {
  margem: number;
  margem_pct: number;
}

/** Margem estimada = Σ (total do item − custo do produto × medida_cobrada). */
export function comMargem(a: AgregadoVenda): LinhaVenda {
  const margem = round2(a.total_itens - a.custo);
  return { ...a, total: round2(a.total), total_itens: round2(a.total_itens), custo: round2(a.custo), margem, margem_pct: percentual(margem, a.total_itens) };
}

/** Linhas com margem e o totalizador geral. */
export class RelatorioVendas {
  readonly linhas: LinhaVenda[];
  readonly totais: Omit<LinhaVenda, 'chave' | 'rotulo' | 'medida' | 'unidade'>;

  constructor(agregados: AgregadoVenda[]) {
    this.linhas = agregados.map(comMargem);
    const soma = (k: 'quantidade' | 'total' | 'total_itens' | 'custo') => this.linhas.reduce((s, l) => s + l[k], 0);
    const total_itens = round2(soma('total_itens'));
    const margem = round2(total_itens - soma('custo'));
    this.totais = {
      quantidade: round2(soma('quantidade')),
      total: round2(soma('total')),
      total_itens,
      custo: round2(soma('custo')),
      margem,
      margem_pct: percentual(margem, total_itens),
    };
  }
}

export interface PosicaoRanking {
  posicao: number;
  id: number | null;
  nome: string;
  quantidade: number;
  total: number;
  margem: number;
  participacao_pct: number;
  medida?: number;
  unidade?: string;
}

/** Ordena por total (desc), limita e calcula a participação sobre o total geral. */
export class Ranking {
  static montar(linhas: LinhaVenda[], limite: number): { items: PosicaoRanking[]; total_geral: number } {
    const total_geral = round2(linhas.reduce((s, l) => s + l.total, 0));
    const items = [...linhas]
      .sort((a, b) => b.total - a.total || a.rotulo.localeCompare(b.rotulo))
      .slice(0, limite)
      .map((l, i) => ({
        posicao: i + 1,
        id: Number(l.chave) || null,
        nome: l.rotulo,
        quantidade: l.quantidade,
        total: l.total,
        margem: l.margem,
        participacao_pct: percentual(l.total, total_geral),
        ...(l.unidade !== undefined ? { medida: l.medida, unidade: l.unidade } : {}),
      }));
    return { items, total_geral };
  }
}
