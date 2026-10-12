import { Formula, type VariaveisFormula } from './AvaliadorFormula.js';
import { FormulaError, ProjetoInvalidoError } from './erros.js';

export const TIPOS_ITEM = ['vidro', 'ferragem', 'acessorio', 'servico'] as const;
export type TipoItemProjeto = (typeof TIPOS_ITEM)[number];

export interface DadosItemProjeto {
  id?: number;
  descricao: string;
  tipo: TipoItemProjeto;
  /** null em item de vidro = usa o vidro escolhido no orçamento. */
  produto_id: number | null;
  quantidade: number;
  formula_largura: string | null;
  formula_altura: string | null;
  folga_largura_mm: number;
  folga_altura_mm: number;
  ordem?: number;
}

/** Peça resultante da expansão de um item de projeto para um vão. */
export interface PecaProjeto {
  projeto_item_id?: number;
  descricao: string;
  tipo: TipoItemProjeto;
  produto_id: number;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

/** Vão (medidas em mm) e quantidade de conjuntos a que o projeto é aplicado. */
export class Vao {
  constructor(
    readonly largura: number,
    readonly altura: number,
    readonly quantidade: number = 1,
    readonly vidroProdutoId: number | null = null,
  ) {
    if (!(largura > 0) || !(altura > 0)) throw new ProjetoInvalidoError('Informe largura e altura do vão');
    if (!(quantidade > 0)) throw new ProjetoInvalidoError('Quantidade deve ser maior que zero');
  }

  get variaveis(): VariaveisFormula {
    return { L: this.largura, A: this.altura };
  }
}

const vazia = (f: string | null | undefined): boolean => !f || !f.trim();

/** Dimensão de um item: fórmula menos folga. Sem fórmula, a dimensão não existe (null). */
class DimensaoItem {
  private readonly formula: Formula | null;

  constructor(private readonly descricao: string, private readonly nome: string, texto: string | null, private readonly folga: number) {
    try {
      this.formula = vazia(texto) ? null : Formula.compilar(texto!.trim());
    } catch (e) {
      throw new FormulaError(`${descricao}: fórmula de ${nome} inválida: ${(e as Error).message}`);
    }
  }

  calcular(vao: Vao): number | null {
    if (!this.formula) return null;
    let v: number;
    try {
      v = this.formula.avaliar(vao.variaveis);
    } catch (e) {
      throw new FormulaError(`${this.descricao}: ${(e as Error).message}`);
    }
    const mm = Math.round(v - this.folga);
    if (mm <= 0) throw new ProjetoInvalidoError(`${this.descricao}: ${this.nome} calculada não é positiva (${mm} mm)`);
    return mm;
  }
}

export class ItemProjeto {
  private readonly largura: DimensaoItem;
  private readonly altura: DimensaoItem;

  constructor(readonly dados: DadosItemProjeto) {
    if (!dados.descricao?.trim()) throw new ProjetoInvalidoError('Item sem descrição');
    if (!TIPOS_ITEM.includes(dados.tipo)) throw new ProjetoInvalidoError(`${dados.descricao}: tipo inválido`);
    if (!(Number(dados.quantidade) > 0)) throw new ProjetoInvalidoError(`${dados.descricao}: quantidade deve ser maior que zero`);
    if (dados.tipo !== 'vidro' && !dados.produto_id) throw new ProjetoInvalidoError(`${dados.descricao}: informe o produto (só itens de vidro podem usar o vidro escolhido)`);
    this.largura = new DimensaoItem(dados.descricao, 'largura', dados.formula_largura, dados.folga_largura_mm ?? 0);
    this.altura = new DimensaoItem(dados.descricao, 'altura', dados.formula_altura, dados.folga_altura_mm ?? 0);
  }

  expandir(vao: Vao): PecaProjeto {
    const produtoId = this.dados.produto_id ?? vao.vidroProdutoId;
    if (!produtoId) throw new ProjetoInvalidoError(`${this.dados.descricao}: escolha o vidro do projeto`);
    return {
      projeto_item_id: this.dados.id,
      descricao: this.dados.descricao,
      tipo: this.dados.tipo,
      produto_id: produtoId,
      quantidade: Math.round(Number(this.dados.quantidade) * vao.quantidade * 1000) / 1000,
      largura_mm: this.largura.calcular(vao),
      altura_mm: this.altura.calcular(vao),
    };
  }
}

/** Gabarito de esquadria/box/janela: valida os itens e os expande em peças para um vão. */
export class Projeto {
  readonly itens: ItemProjeto[];

  constructor(readonly nome: string, itens: DadosItemProjeto[]) {
    if (!nome?.trim()) throw new ProjetoInvalidoError('Informe o nome do projeto');
    this.itens = itens.map((i) => new ItemProjeto(i));
  }

  /** Projeto com algum item de vidro sem produto fixo exige a escolha do vidro. */
  get exigeVidro(): boolean {
    return this.itens.some((i) => i.dados.produto_id === null);
  }

  expandir(vao: Vao): PecaProjeto[] {
    if (this.itens.length === 0) throw new ProjetoInvalidoError('Projeto sem itens');
    return this.itens.map((i) => i.expandir(vao));
  }
}
