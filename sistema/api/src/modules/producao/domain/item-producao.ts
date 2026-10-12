import { ErroProducao } from './erros.js';
import type { RoteiroProducao } from './roteiro.js';

export type StatusItem = 'pendente' | 'em_producao' | 'concluido' | 'defeito';

export interface MarcacaoSolicitada {
  setorId: number;
  /** Peças marcadas; padrão: a quantidade do item. */
  quantidade?: number;
  defeito?: boolean;
  motivoId?: number | null;
  observacao?: string | null;
}

/** Registro de uma marcação já validada, pronta para ser gravada. */
export interface Marcacao {
  itemId: number;
  setorId: number;
  quantidade: number;
  defeito: boolean;
  motivoId: number | null;
  observacao: string | null;
}

/**
 * Peça (ou lote de peças iguais) de uma ordem de produção.
 * Máquina de estados: pendente → em_producao → … → concluido; qualquer setor → defeito → (refazer) pendente.
 */
export class ItemProducao {
  constructor(
    readonly id: number,
    readonly quantidade: number,
    private _setorAtualId: number | null,
    private _status: StatusItem,
  ) {}

  get setorAtualId() {
    return this._setorAtualId;
  }

  get status() {
    return this._status;
  }

  get concluido() {
    return this._status === 'concluido';
  }

  /** Marca o item no setor atual: sem defeito avança (ou conclui no último setor); com defeito, separa o item. */
  marcar(m: MarcacaoSolicitada, roteiro: RoteiroProducao): Marcacao {
    if (this._status === 'concluido') throw new ErroProducao('Item já concluído', 'conflito');
    if (this._status === 'defeito') throw new ErroProducao('Item com defeito: use "refazer" antes de marcar novamente', 'conflito');
    if (this._setorAtualId !== m.setorId) throw new ErroProducao('O item não está neste setor');
    const quantidade = m.quantidade ?? this.quantidade;
    if (quantidade <= 0) throw new ErroProducao('A quantidade deve ser maior que zero');
    if (quantidade > this.quantidade) throw new ErroProducao(`Quantidade maior que a do item (${this.quantidade})`);
    const defeito = !!m.defeito;
    if (defeito && !m.motivoId) throw new ErroProducao('Informe o motivo do defeito');

    if (defeito) {
      this._status = 'defeito';
    } else {
      const proximo = roteiro.proximo(m.setorId);
      this._setorAtualId = proximo?.id ?? null;
      this._status = proximo ? 'em_producao' : 'concluido';
    }
    return {
      itemId: this.id,
      setorId: m.setorId,
      quantidade,
      defeito,
      motivoId: defeito ? m.motivoId! : null,
      observacao: m.observacao ?? null,
    };
  }

  /** Volta o item com defeito ao primeiro setor. */
  refazer(roteiro: RoteiroProducao): void {
    if (this._status !== 'defeito') throw new ErroProducao('Só itens com defeito podem ser refeitos', 'conflito');
    const primeiro = roteiro.primeiro();
    if (!primeiro) throw new ErroProducao('Nenhum setor de produção ativo');
    this._setorAtualId = primeiro.id;
    this._status = 'pendente';
  }
}
