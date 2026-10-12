/** Contagens e avisos por etapa, impressos ao final. */
export class Relatorio {
  private readonly linhas = new Map<string, { lidos: number; gravados: number; ignorados: number }>();
  private readonly avisos = new Map<string, Map<string, number>>();

  contar(etapa: string, campo: 'lidos' | 'gravados' | 'ignorados', n = 1) {
    const l = this.linhas.get(etapa) ?? { lidos: 0, gravados: 0, ignorados: 0 };
    l[campo] += n;
    this.linhas.set(etapa, l);
  }

  avisar(etapa: string, motivo: string) {
    const m = this.avisos.get(etapa) ?? new Map<string, number>();
    m.set(motivo, (m.get(motivo) ?? 0) + 1);
    this.avisos.set(etapa, m);
  }

  resumo(): string {
    const out = ['', 'Etapa                       lidos   gravados  ignorados', '-'.repeat(58)];
    for (const [etapa, l] of this.linhas) {
      out.push(`${etapa.padEnd(26)} ${String(l.lidos).padStart(7)} ${String(l.gravados).padStart(10)} ${String(l.ignorados).padStart(10)}`);
    }
    for (const [etapa, m] of this.avisos) {
      out.push('', `Avisos em ${etapa}:`);
      for (const [motivo, n] of m) out.push(`  - ${motivo}: ${n}`);
    }
    return out.join('\n');
  }

  dados() {
    return { etapas: Object.fromEntries(this.linhas), avisos: Object.fromEntries([...this.avisos].map(([k, v]) => [k, Object.fromEntries(v)])) };
  }
}
