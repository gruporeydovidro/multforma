import { arredondar } from '../../../shared/numeros.js';
import { RegraOrcamentoError } from './erros.js';
import { Arredondamento, Medida } from './Medida.js';
import { round2, round4 } from './numeros.js';

export const UNIDADES = ['M2', 'ML', 'UN', 'PC', 'KG'] as const;
export type Unidade = (typeof UNIDADES)[number];

/** O que o cálculo precisa saber do produto. */
export interface ProdutoCalculo {
  unidade_venda: Unidade;
  area_minima_m2?: number | null;
  /** valor_cm do arredondamento do produto (null = sem arredondamento). */
  arredondamento_cm?: number | null;
}

export interface EntradaItem {
  quantidade: number;
  largura_mm?: number | null;
  altura_mm?: number | null;
  preco_unitario: number;
  desconto_valor?: number | null;
}

export interface ItemCalculado {
  /** Entradas já na precisão das colunas (quantidade 3 casas, preço 4, desconto 2): o total bate com o gravado. */
  quantidade: number;
  preco_unitario: number;
  desconto_valor: number;
  largura_calc_mm: number | null;
  altura_calc_mm: number | null;
  medida_cobrada: number;
  total: number;
}

/** Estratégia de cobrança por unidade de venda. */
export interface EstrategiaCobranca {
  medidaCobrada(medida: Medida, quantidade: number, produto: ProdutoCalculo): number;
}

/** M2: área unitária (respeitando a área mínima) vezes a quantidade. */
export class CobrancaPorArea implements EstrategiaCobranca {
  medidaCobrada(medida: Medida, quantidade: number, produto: ProdutoCalculo) {
    return Math.max(medida.areaM2(), Number(produto.area_minima_m2 ?? 0)) * quantidade;
  }
}

/** ML: perímetro (2 x (L + A)) em metros vezes a quantidade. */
export class CobrancaPorPerimetro implements EstrategiaCobranca {
  medidaCobrada(medida: Medida, quantidade: number) {
    return medida.perimetroM() * quantidade;
  }
}

/** UN, PC, KG: a própria quantidade. */
export class CobrancaPorQuantidade implements EstrategiaCobranca {
  medidaCobrada(_medida: Medida, quantidade: number) {
    return quantidade;
  }
}

/** Limites das colunas de orcamento_item (numeric(12,3), numeric(14,4) e numeric(14,2)). */
export const LIMITES_ITEM = { quantidade: 999_999_999, medidaCobrada: 9_999_999_999, total: 999_999_999_999 } as const;

/** Calcula medidas arredondadas, medida cobrada e total de um item, escolhendo a estratégia pela unidade. */
export class CalculadoraItem {
  private static readonly estrategias: Record<Unidade, EstrategiaCobranca> = {
    M2: new CobrancaPorArea(),
    ML: new CobrancaPorPerimetro(),
    UN: new CobrancaPorQuantidade(),
    PC: new CobrancaPorQuantidade(),
    KG: new CobrancaPorQuantidade(),
  };

  static estrategia(unidade: Unidade): EstrategiaCobranca {
    const e = CalculadoraItem.estrategias[unidade];
    if (!e) throw new RegraOrcamentoError(`Unidade de venda desconhecida: ${unidade}`);
    return e;
  }

  static calcular(produto: ProdutoCalculo, item: EntradaItem): ItemCalculado {
    // Arredonda as entradas à precisão gravada antes de calcular, para o total conferir com quantidade x preço gravados.
    const quantidade = arredondar(Number(item.quantidade), 3);
    const preco = arredondar(Number(item.preco_unitario), 4);
    const desconto = arredondar(Number(item.desconto_valor ?? 0), 2);
    if (!(quantidade > 0)) throw new RegraOrcamentoError('Quantidade deve ser maior que zero');
    if (quantidade > LIMITES_ITEM.quantidade) throw new RegraOrcamentoError('Quantidade acima do limite');
    if (!(preco >= 0)) throw new RegraOrcamentoError('Preço unitário não pode ser negativo');
    if (!(desconto >= 0)) throw new RegraOrcamentoError('Desconto do item não pode ser negativo');

    const medida = Medida.de(item.largura_mm, item.altura_mm).arredondar(new Arredondamento(produto.arredondamento_cm ?? null));
    const medidaCobrada = round4(CalculadoraItem.estrategia(produto.unidade_venda).medidaCobrada(medida, quantidade, produto));
    if (medidaCobrada > LIMITES_ITEM.medidaCobrada) throw new RegraOrcamentoError('Medida cobrada acima do limite');
    const total = round2(medidaCobrada * preco - desconto);
    if (total < 0) throw new RegraOrcamentoError('Desconto do item maior que o valor do item');
    if (total > LIMITES_ITEM.total) throw new RegraOrcamentoError('Total do item acima do limite');
    return {
      quantidade, preco_unitario: preco, desconto_valor: desconto,
      largura_calc_mm: medida.largura, altura_calc_mm: medida.altura, medida_cobrada: medidaCobrada, total,
    };
  }
}
