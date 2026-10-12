import type { Db } from '../lib/db.js';

/** Correspondência entre a chave do sistema anterior e o id no VidroGest, por entidade. */
export class MapaLegado {
  private readonly cache = new Map<string, Map<string, number>>();

  constructor(private readonly db: Db) {}

  async carregar(entidade: string): Promise<Map<string, number>> {
    let m = this.cache.get(entidade);
    if (!m) {
      const { rows } = await this.db.query<{ chave: string; id: number }>('select chave, id from legado_mapa where entidade = $1', [entidade]);
      m = new Map(rows.map((r) => [r.chave, r.id]));
      this.cache.set(entidade, m);
    }
    return m;
  }

  async id(entidade: string, chave: unknown): Promise<number | null> {
    if (chave === null || chave === undefined || chave === '') return null;
    return (await this.carregar(entidade)).get(String(chave)) ?? null;
  }

  /** Registra correspondências (dentro da transação de quem grava os registros). */
  async registrar(db: Db, entidade: string, pares: [string, number][]): Promise<void> {
    if (!pares.length) return;
    await db.query(
      `insert into legado_mapa (entidade, chave, id) select $1, c, i from unnest($2::text[], $3::int[]) as t(c, i)
       on conflict (entidade, chave) do update set id = excluded.id`,
      [entidade, pares.map((p) => p[0]), pares.map((p) => p[1])],
    );
    const m = await this.carregar(entidade);
    for (const [c, i] of pares) m.set(c, i);
  }
}
