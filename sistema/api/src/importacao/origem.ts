import pg from 'pg';

/** Somente leitura sobre o banco do sistema anterior. Toda consulta usa o schema configurado. */
export class OrigemLegado {
  private readonly pool: pg.Pool;

  constructor(url: string, readonly schema: string) {
    if (!/^[a-z_][a-z0-9_]*$/i.test(schema)) throw new Error(`schema inválido: ${schema}`);
    this.pool = new pg.Pool({
      connectionString: url,
      ssl: /sslmode=(require|verify-full|verify-ca)/.test(url) ? { rejectUnauthorized: true } : undefined,
      max: 2,
    });
  }

  /**
   * Cada consulta roda numa transação somente leitura com o search_path do schema de origem.
   * SET LOCAL (em vez de parâmetros de conexão) funciona também no pooler do Neon (PgBouncer).
   */
  async consultar<T extends pg.QueryResultRow = any>(sql: string, params: unknown[] = []): Promise<T[]> {
    const c = await this.pool.connect();
    try {
      await c.query('begin read only');
      await c.query(`set local search_path to ${this.schema}`);
      const r = await c.query<T>(sql, params);
      await c.query('commit');
      return r.rows;
    } catch (e) {
      await c.query('rollback').catch(() => undefined);
      throw e;
    } finally {
      c.release();
    }
  }

  /** Colunas existentes de uma tabela ou view (lidas do catálogo, independem de permissão). */
  async colunas(tabela: string): Promise<Set<string>> {
    const rows = await this.consultar<{ attname: string }>(
      `select a.attname from pg_attribute a join pg_class c on c.oid = a.attrelid join pg_namespace n on n.oid = c.relnamespace
        where n.nspname = $1 and c.relname = $2 and a.attnum > 0 and not a.attisdropped`,
      [this.schema, tabela],
    );
    return new Set(rows.map((r) => r.attname));
  }

  /**
   * Percorre uma consulta em lotes por paginação de chave (keyset), sem carregar tudo na memória.
   * `sql` é a consulta base (sem order/limit); `chave` são colunas do resultado que a identificam.
   */
  async *lotes<T extends pg.QueryResultRow>(sql: string, chave: string[], params: unknown[], tamanho: number): AsyncGenerator<T[]> {
    if (chave.some((c) => !/^[a-z_][a-z0-9_]*$/.test(c))) throw new Error('chave inválida');
    let ultimo: unknown[] | null = null;
    for (;;) {
      const n = params.length;
      const apos = ultimo ? `(${chave.join(', ')}) > (${chave.map((_, i) => `$${n + i + 1}`).join(', ')})` : 'true';
      const texto = `select * from (${sql}) q where ${apos} order by ${chave.join(', ')} limit ${Math.trunc(tamanho)}`;
      const rows = await this.consultar<T>(texto, ultimo ? [...params, ...ultimo] : params);
      if (!rows.length) return;
      yield rows;
      const fim: Record<string, unknown> = rows[rows.length - 1];
      ultimo = chave.map((c) => fim[c]);
      if (rows.length < tamanho) return;
    }
  }

  async fechar() {
    await this.pool.end();
  }
}
