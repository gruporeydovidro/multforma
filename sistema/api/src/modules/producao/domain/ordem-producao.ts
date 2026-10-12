import { ErroProducao } from './erros.js';
import { ItemProducao, type Marcacao, type MarcacaoSolicitada } from './item-producao.js';
import type { RoteiroProducao } from './roteiro.js';

export type StatusOrdem = 'aguardando' | 'em_producao' | 'concluida' | 'cancelada';

/** Mudanças de estado da ordem que o repositório precisa gravar com data/hora. */
export interface EventosOrdem {
  iniciou: boolean;
  concluiu: boolean;
}

/**
 * Agregado da ordem de produção: controla os itens e o status da ordem
 * (aguardando → em_producao na primeira marcação → concluida quando todos os itens terminam).
 */
export class OrdemProducao {
  private _eventos: EventosOrdem = { iniciou: false, concluiu: false };

  constructor(
    readonly id: number,
    private _status: StatusOrdem,
    readonly itens: ItemProducao[],
  ) {}

  get status() {
    return this._status;
  }

  get eventos(): Readonly<EventosOrdem> {
    return this._eventos;
  }

  marcarItem(itemId: number, m: MarcacaoSolicitada, roteiro: RoteiroProducao): Marcacao {
    this.garantirEmAndamento();
    const marcacao = this.item(itemId).marcar(m, roteiro);
    if (this._status === 'aguardando') {
      this._status = 'em_producao';
      this._eventos.iniciou = true;
    }
    if (this.itens.every((i) => i.concluido)) {
      this._status = 'concluida';
      this._eventos.concluiu = true;
    }
    return marcacao;
  }

  refazerItem(itemId: number, roteiro: RoteiroProducao): ItemProducao {
    this.garantirEmAndamento();
    const item = this.item(itemId);
    item.refazer(roteiro);
    return item;
  }

  cancelar(): void {
    if (this._status === 'cancelada') throw new ErroProducao('Ordem de produção já cancelada', 'conflito');
    if (this._status === 'concluida') throw new ErroProducao('Ordem de produção concluída não pode ser cancelada', 'conflito');
    this._status = 'cancelada';
  }

  garantirEditavel(): void {
    if (this._status === 'cancelada') throw new ErroProducao('Ordem de produção cancelada', 'conflito');
  }

  item(itemId: number): ItemProducao {
    const item = this.itens.find((i) => i.id === itemId);
    if (!item) throw new ErroProducao('Item da ordem não encontrado', 'nao_encontrado');
    return item;
  }

  private garantirEmAndamento(): void {
    this.garantirEditavel();
    if (this._status === 'concluida') throw new ErroProducao('Ordem de produção já concluída', 'conflito');
  }
}
