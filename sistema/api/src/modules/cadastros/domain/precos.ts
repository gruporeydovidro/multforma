import { ErroDeValidacao } from './erros.js';

export interface PrecoTabela {
  tabela_preco_id: number;
  preco: number;
}

/** Lista de preços de um produto: no máximo um preço por tabela, nunca negativo. */
export class PrecosDoProduto {
  private constructor(readonly itens: readonly PrecoTabela[]) {}

  static criar(itens: PrecoTabela[]): PrecosDoProduto {
    const vistos = new Set<number>();
    for (const { tabela_preco_id, preco } of itens) {
      if (vistos.has(tabela_preco_id)) throw new ErroDeValidacao('precos', 'Cada tabela de preço pode aparecer uma única vez');
      if (!Number.isFinite(preco) || preco < 0) throw new ErroDeValidacao('precos', 'O preço não pode ser negativo');
      vistos.add(tabela_preco_id);
    }
    return new PrecosDoProduto(itens.map((i) => ({ tabela_preco_id: i.tabela_preco_id, preco: Math.round(i.preco * 10000) / 10000 })));
  }

  get tabelas(): number[] {
    return this.itens.map((i) => i.tabela_preco_id);
  }
}
