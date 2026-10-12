/**
 * Limita tentativas de login malsucedidas por chave (login + IP) numa janela de tempo.
 * Em memória: suficiente para uma instância; com várias instâncias, trocar por um armazenamento compartilhado.
 */
export class TentativasLogin {
  private readonly falhas = new Map<string, { n: number; ate: number }>();

  constructor(
    private readonly maximo = 5,
    private readonly janelaMs = 15 * 60_000,
    private readonly agora: () => number = Date.now,
  ) {}

  bloqueado(chave: string): boolean {
    const f = this.falhas.get(chave);
    if (!f) return false;
    if (f.ate <= this.agora()) {
      this.falhas.delete(chave);
      return false;
    }
    return f.n >= this.maximo;
  }

  registrarFalha(chave: string): void {
    const f = this.falhas.get(chave);
    if (!f || f.ate <= this.agora()) this.falhas.set(chave, { n: 1, ate: this.agora() + this.janelaMs });
    else f.n++;
  }

  limpar(chave: string): void {
    this.falhas.delete(chave);
  }
}
