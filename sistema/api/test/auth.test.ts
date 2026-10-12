import { describe, expect, it } from 'vitest';
import { useTestApp } from './helpers.js';

describe('auth', () => {
  const t = useTestApp();

  it('rejeita acesso sem sessão', async () => {
    const res = await t.app.inject({ method: 'GET', url: '/api/auth/me' });
    expect(res.statusCode).toBe(401);
  });

  it('rejeita senha errada', async () => {
    const res = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'admin', senha: 'x' } });
    expect(res.statusCode).toBe(401);
  });

  it('retorna o usuário logado', async () => {
    const res = await t.app.inject({ method: 'GET', url: '/api/auth/me', headers: { cookie: t.cookie } });
    expect(res.statusCode).toBe(200);
    expect(res.json().user).toMatchObject({ login: 'admin', perfil: 'admin' });
  });

  it('health é público', async () => {
    const res = await t.app.inject({ method: 'GET', url: '/api/health' });
    expect(res.json()).toEqual({ ok: true });
  });
});
