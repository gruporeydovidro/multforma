import pg from 'pg';

// numeric e bigint chegam como string no driver; o MVP trabalha com number.
pg.types.setTypeParser(1700, (v) => Number(v));
pg.types.setTypeParser(20, (v) => Number(v));
// date sem fuso: manter 'YYYY-MM-DD'.
pg.types.setTypeParser(1082, (v) => v);

export type Db = pg.Pool | pg.PoolClient;

let pool: pg.Pool | undefined;

export function getPool(): pg.Pool {
  if (!pool) {
    const connectionString = process.env.DATABASE_URL;
    if (!connectionString) throw new Error('DATABASE_URL não definida');
    pool = new pg.Pool({
      connectionString,
      ssl: /sslmode=require/.test(connectionString) ? { rejectUnauthorized: true } : undefined,
    });
  }
  return pool;
}

export async function closePool(): Promise<void> {
  await pool?.end();
  pool = undefined;
}

export async function query<T extends pg.QueryResultRow = any>(sql: string, params: unknown[] = [], db: Db = getPool()): Promise<T[]> {
  const res = await db.query<T>(sql, params);
  return res.rows;
}

export async function queryOne<T extends pg.QueryResultRow = any>(sql: string, params: unknown[] = [], db: Db = getPool()): Promise<T | undefined> {
  const rows = await query<T>(sql, params, db);
  return rows[0];
}

/** Executa fn numa transação; faz rollback em qualquer erro. */
export async function withTx<T>(fn: (client: pg.PoolClient) => Promise<T>): Promise<T> {
  const client = await getPool().connect();
  try {
    await client.query('begin');
    const result = await fn(client);
    await client.query('commit');
    return result;
  } catch (err) {
    await client.query('rollback');
    throw err;
  } finally {
    client.release();
  }
}
