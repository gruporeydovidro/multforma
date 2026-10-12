import { RegraOrcamentoError } from './erros.js';

/** Arredondamento do produto: cada dimensão sobe ao múltiplo de valor_cm (em mm: valor_cm * 10). */
export class Arredondamento {
  static readonly NENHUM = new Arredondamento(null);

  constructor(readonly valorCm: number | null) {}

  get passoMm(): number | null {
    return this.valorCm && this.valorCm > 0 ? this.valorCm * 10 : null;
  }

  aplicar(dimMm: number): number {
    const passo = this.passoMm;
    return passo ? Math.ceil(dimMm / passo) * passo : dimMm;
  }
}

/** Largura x altura em mm (cada uma opcional). Imutável. */
export class Medida {
  constructor(readonly largura: number | null = null, readonly altura: number | null = null) {
    for (const [nome, v] of [['Largura', largura], ['Altura', altura]] as const) {
      if (v !== null && !(v > 0)) throw new RegraOrcamentoError(`${nome} deve ser maior que zero`);
    }
  }

  static de(largura?: number | null, altura?: number | null): Medida {
    return new Medida(largura ?? null, altura ?? null);
  }

  get completa(): boolean {
    return this.largura !== null && this.altura !== null;
  }

  arredondar(a: Arredondamento): Medida {
    return new Medida(this.largura === null ? null : a.aplicar(this.largura), this.altura === null ? null : a.aplicar(this.altura));
  }

  private exigirCompleta(oQue: string): void {
    if (!this.completa) throw new RegraOrcamentoError(`Informe largura e altura para produto vendido por ${oQue}`);
  }

  /** Área em m². */
  areaM2(): number {
    this.exigirCompleta('m²');
    return (this.largura! * this.altura!) / 1e6;
  }

  /** Perímetro em metros. */
  perimetroM(): number {
    this.exigirCompleta('metro linear');
    return (2 * (this.largura! + this.altura!)) / 1000;
  }
}
