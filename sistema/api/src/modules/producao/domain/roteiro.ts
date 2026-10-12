import { ErroProducao } from './erros.js';

export interface SetorRoteiro {
  id: number;
  nome: string;
  ordem: number;
  ativo: boolean;
}

/**
 * Sequência dos setores de produção (pela ordem, com desempate pelo id).
 * Setores inativos são pulados, mas continuam valendo como posição para itens que já estão neles.
 */
export class RoteiroProducao {
  private readonly setores: SetorRoteiro[];

  constructor(setores: SetorRoteiro[]) {
    this.setores = [...setores].sort((a, b) => a.ordem - b.ordem || a.id - b.id);
  }

  ativos(): SetorRoteiro[] {
    return this.setores.filter((s) => s.ativo);
  }

  primeiro(): SetorRoteiro | undefined {
    return this.ativos()[0];
  }

  /** Próximo setor ativo depois do informado; undefined quando o informado é o último. */
  proximo(setorId: number): SetorRoteiro | undefined {
    const pos = this.setores.findIndex((s) => s.id === setorId);
    if (pos < 0) throw new ErroProducao('Setor de produção inexistente');
    return this.setores.slice(pos + 1).find((s) => s.ativo);
  }
}
