import { ErroEstoque } from './erros.js';
import { round4 } from './numero.js';

/** Acerto de inventário: a diferença entre o saldo contado e o do sistema vira um movimento. */
export class Acerto {
  readonly diferenca: number;

  constructor(readonly saldoSistema: number, readonly saldoContado: number) {
    if (saldoContado < 0) throw new ErroEstoque('O saldo contado não pode ser negativo');
    this.diferenca = round4(saldoContado - saldoSistema);
    if (this.diferenca === 0) throw new ErroEstoque('O saldo contado é igual ao saldo atual; não há o que acertar');
  }
}
