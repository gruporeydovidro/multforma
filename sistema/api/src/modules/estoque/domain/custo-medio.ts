import { ErroEstoque } from './erros.js';
import { round4 } from './numero.js';

/**
 * Custo médio ponderado. Saldo negativo é tratado como zero (o custo antigo não pesa
 * sobre peças que não existem fisicamente).
 */
export class CustoMedio {
  constructor(readonly saldo: number, readonly custo: number) {}

  aplicarEntrada(quantidade: number, custoUnitario: number): CustoMedio {
    if (quantidade <= 0) throw new ErroEstoque('A quantidade deve ser maior que zero');
    if (custoUnitario < 0) throw new ErroEstoque('O custo unitário não pode ser negativo');
    const base = Math.max(this.saldo, 0);
    const novoSaldo = base + quantidade;
    const novoCusto = (base * this.custo + quantidade * custoUnitario) / novoSaldo;
    return new CustoMedio(round4(this.saldo + quantidade), round4(novoCusto));
  }
}
