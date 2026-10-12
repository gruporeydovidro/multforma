import type { FastifyInstance } from 'fastify';
import { afterAll, beforeAll } from 'vitest';
import bcrypt from 'bcryptjs';
import { buildApp } from '../src/app.js';
import { closePool, getPool, query } from '../src/lib/db.js';
import { migrate } from '../src/db/migrate.js';
import { seed } from '../src/db/seed.js';
import type { Perfil } from '../src/lib/auth.js';

/** Recria o schema do banco de teste, aplica migrações e seed. */
export async function resetDb() {
  const pool = getPool();
  await pool.query('drop schema public cascade; create schema public;');
  await migrate(pool);
  await seed(pool, { senhaAdmin: 'admin123' });
}

/** Cria (se preciso) um usuário do perfil e retorna o cookie de sessão. */
export async function login(app: FastifyInstance, perfil: Perfil = 'admin'): Promise<string> {
  const loginName = perfil === 'admin' ? 'admin' : `teste_${perfil}`;
  if (perfil !== 'admin') {
    const hash = await bcrypt.hash('senha123', 4);
    await query(
      `insert into usuario (nome, login, senha_hash, perfil, filial_id)
       values ($1, $1, $2, $3, (select min(id) from filial)) on conflict (login) do nothing`,
      [loginName, hash, perfil],
    );
  }
  const res = await app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: loginName, senha: perfil === 'admin' ? 'admin123' : 'senha123' } });
  if (res.statusCode !== 200) throw new Error(`login falhou: ${res.body}`);
  const c = res.cookies.find((x) => x.name === 'vg_session');
  return `vg_session=${c!.value}`;
}

/**
 * Uso: const t = useTestApp(); depois t.app e t.cookie dentro dos testes.
 * Reseta o banco uma vez por arquivo de teste.
 */
export function useTestApp() {
  const ctx = {} as { app: FastifyInstance; cookie: string };
  beforeAll(async () => {
    await resetDb();
    ctx.app = await buildApp();
    ctx.cookie = await login(ctx.app);
  });
  afterAll(async () => {
    await ctx.app?.close();
    await closePool();
  });
  return ctx;
}
