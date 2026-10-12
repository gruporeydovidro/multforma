import { arredondar } from '../../../shared/numeros.js';
import { ErroProducao } from './erros.js';
import type { RoteiroProducao } from './roteiro.js';

export type StatusItem = 'pendente' | 'em_producao' | 'concluido' | 'defeito';

export interface MarcacaoSolicitada {
  setorId: number;
  /** Peças marcadas; padrão: o saldo restante do item no setor. */
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
  /** true quando a marcação completou o lote no setor e o item avançou (ou concluiu). */
  avancou: boolean;
}

/** Quantidades na precisão do banco (numeric(12,3)). */
const q3 = (v: number) => arredondar(v, 3);

/**
 * Peça (ou lote de peças iguais) de uma ordem de produção.
 * Máquina de estados: pendente → em_producao → … → concluido; qualquer setor → defeito → (refazer) pendente.
 * As marcações sem defeito acumulam a quantidade processada no setor atual; o item só avança
 * ao próximo setor quando o acumulado atinge a quantidade do item.
 */
export class ItemProducao {
  private _processadoNoSetor: number;

  constructor(
    readonly id: number,
    readonly quantidade: number,
    private _setorAtualId: number | null,
    private _status: StatusItem,
    processadoNoSetor = 0,
  ) {
    this._processadoNoSetor = q3(processadoNoSetor);
  }

  get setorAtualId() {
    return this._setorAtualId;
  }

  get status() {
    return this._status;
  }

  get concluido() {
    return this._status === 'concluido';
  }

  /** Peças já processadas (sem defeito) no setor atual. */
  get processadoNoSetor() {
    return this._processadoNoSetor;
  }

  /** Peças que faltam processar no setor atual para o item avançar. */
  get restanteNoSetor() {
    return Math.max(q3(this.quantidade - this._processadoNoSetor), 0);
  }

  /**
   * Marca peças do item no setor atual. Sem defeito, soma ao acumulado do setor e avança
   * (ou conclui, no último setor) quando o lote fica completo. Com defeito, separa o item.
   */
  marcar(m: MarcacaoSolicitada, roteiro: RoteiroProducao): Marcacao {
    if (this._status === 'concluido') throw new ErroProducao('Item já concluído', 'conflito');
    if (this._status === 'defeito') throw new ErroProducao('Item com defeito: use "refazer" antes de marcar novamente', 'conflito');
    if (this._setorAtualId !== m.setorId) throw new ErroProducao('O item não está neste setor');
    const defeito = !!m.defeito;
    const quantidade = q3(m.quantidade ?? this.restanteNoSetor);
    if (quantidade <= 0) throw new ErroProducao('A quantidade deve ser maior que zero');
    if (defeito) {
      if (quantidade > this.quantidade) throw new ErroProducao(`Quantidade maior que a do item (${this.quantidade})`);
      if (!m.motivoId) throw new ErroProducao('Informe o motivo do defeito');
      this._status = 'defeito';
      return this.registro(m, quantidade, true, false);
    }
    if (quantidade > this.restanteNoSetor) {
      throw new ErroProducao(
        `Quantidade maior que o saldo restante no setor (${this.restanteNoSetor} de ${this.quantidade}; já processadas ${this._processadoNoSetor})`,
      );
    }
    this._processadoNoSetor = q3(this._processadoNoSetor + quantidade);
    const avancou = this._processadoNoSetor >= this.quantidade;
    if (avancou) this.avancar(m.setorId, roteiro);
    else this._status = 'em_producao';
    return this.registro(m, quantidade, false, avancou);
  }

  /** Volta o item com defeito ao primeiro setor, zerando o acumulado. */
  refazer(roteiro: RoteiroProducao): void {
    if (this._status !== 'defeito') throw new ErroProducao('Só itens com defeito podem ser refeitos', 'conflito');
    const primeiro = roteiro.primeiro();
    if (!primeiro) throw new ErroProducao('Nenhum setor de produção ativo');
    this._setorAtualId = primeiro.id;
    this._status = 'pendente';
    this._processadoNoSetor = 0;
  }

  private avancar(setorId: number, roteiro: RoteiroProducao): void {
    const proximo = roteiro.proximo(setorId);
    this._setorAtualId = proximo?.id ?? null;
    this._status = proximo ? 'em_producao' : 'concluido';
    this._processadoNoSetor = 0;
  }

  private registro(m: MarcacaoSolicitada, quantidade: number, defeito: boolean, avancou: boolean): Marcacao {
    return {
      itemId: this.id,
      setorId: m.setorId,
      quantidade,
      defeito,
      motivoId: defeito ? m.motivoId! : null,
      observacao: m.observacao ?? null,
      avancou,
    };
  }
}
