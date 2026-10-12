import { readdir, readFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import type pg from 'pg';
import { closePool, getPool } from '../lib/db.js';

const dir = join(dirname(fileURLToPath(import.meta.url)), 'migrations');

/** Aplica, em ordem, os arquivos .sql ainda não registrados em schema_migrations. */
export async function migrate(pool: pg.Pool = getPool()): Promise<string[]> {
  await pool.query('create table if not exists schema_migrations (nome text primary key, aplicado_em timestamptz not null default now())');
  const done = new Set((await pool.query('select nome from schema_migrations')).rows.map((r) => r.nome));
  const files = (await readdir(dir)).filter((f) => f.endsWith('.sql')).sort();
  const applied: string[] = [];
  for (const f of files) {
    if (done.has(f)) continue;
    const sql = await readFile(join(dir, f), 'utf8');
    const client = await pool.connect();
    try {
      await client.query('begin');
      await client.query(sql);
      await client.query('insert into schema_migrations (nome) values ($1)', [f]);
      await client.query('commit');
      applied.push(f);
    } catch (err) {
      await client.query('rollback');
      throw new Error(`Falha na migração ${f}: ${(err as Error).message}`);
    } finally {
      client.release();
    }
  }
  return applied;
}

if (process.argv[1] && fileURLToPath(import.meta.url) === process.argv[1]) {
  migrate()
    .then((a) => console.log(a.length ? `Aplicadas: ${a.join(', ')}` : 'Nada a aplicar'))
    .finally(closePool);
}
