import { ErroEstoque } from './erros.js';

export type TipoMovimento = 'entrada' | 'saida' | 'acerto';

/** Regras de sinal da quantidade: entrada soma, saída subtrai e acerto mantém o sinal informado. */
export class MovimentoEstoque {
  static quantidadeComSinal(tipo: TipoMovimento, quantidade: number): number {
    if (tipo === 'saida') return -Math.abs(quantidade);
    if (tipo === 'entrada') return Math.abs(quantidade);
    return quantidade;
  }
}

/** Saldo de um produto na filial. */
export class SaldoEstoque {
  constructor(readonly valor: number) {}

  /** Valida a retirada manual: não permite que o saldo fique negativo. */
  garantirRetirada(quantidade: number): void {
    if (quantidade <= 0) throw new ErroEstoque('A quantidade deve ser maior que zero');
    if (quantidade > this.valor) throw new ErroEstoque(`Saldo insuficiente (saldo atual: ${this.valor})`);
  }

  abaixoDoMinimo(minimo: number): boolean {
    return this.valor < minimo;
  }
}
