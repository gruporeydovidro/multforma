import { ErroDeValidacao } from './erros.js';

export type TipoProduto = 'produto' | 'servico';

/** Estado atual do produto, na edição. */
export interface EstadoEstoque {
  tipo: TipoProduto;
  controla_estoque: boolean;
}

/**
 * Controle de estoque conforme o tipo: produto controla por padrão; serviço nunca controla.
 * Na edição, trocar o tipo sem informar o campo aplica o padrão do novo tipo.
 */
export class ControleDeEstoque {
  static padrao(tipo: TipoProduto): boolean {
    return tipo === 'produto';
  }

  /** Valor a gravar em `controla_estoque` (undefined = manter o atual). */
  static resolver(tipo: TipoProduto | undefined, informado: boolean | undefined, atual?: EstadoEstoque): boolean | undefined {
    const tipoFinal = tipo ?? atual?.tipo ?? 'produto';
    if (tipoFinal === 'servico' && informado === true) {
      throw new ErroDeValidacao('controla_estoque', 'Serviço não controla estoque');
    }
    if (informado !== undefined) return informado;
    if (!atual) return ControleDeEstoque.padrao(tipoFinal);
    return tipoFinal !== atual.tipo ? ControleDeEstoque.padrao(tipoFinal) : undefined;
  }
}
