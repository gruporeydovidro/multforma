import { describe, expect, it } from 'vitest';
import { login, useTestApp } from './helpers.js';
import { query } from '../src/lib/db.js';

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

describe('sessão de usuário desativado', () => {
  const t = useTestApp();

  it('perde o acesso imediatamente', async () => {
    const cookie = await login(t.app, 'vendedor');
    expect((await t.app.inject({ method: 'GET', url: '/api/auth/me', headers: { cookie } })).statusCode).toBe(200);
    await query("update usuario set ativo = false where login = 'teste_vendedor'");
    expect((await t.app.inject({ method: 'GET', url: '/api/auth/me', headers: { cookie } })).statusCode).toBe(401);
  });
});

describe('segurança da sessão', () => {
  const t = useTestApp();

  it('não aceita contornar a autenticação codificando a URL', async () => {
    for (const url of ['/%61pi/cadastros/pessoas', '/%61pi/cadastros/produtos', '/%61pi/projetos', '/api/cadastros/%70essoas']) {
      const res = await t.app.inject({ method: 'GET', url });
      expect(res.statusCode, url).toBe(401);
    }
  });

  it('aplica na hora a mudança de perfil e de filial', async () => {
    const cookie = await login(t.app, 'financeiro');
    expect((await t.app.inject({ method: 'GET', url: '/api/financeiro/receber', headers: { cookie } })).statusCode).toBe(200);
    await query("insert into filial (nome) values ('Filial 2')");
    await query("update usuario set perfil = 'producao', filial_id = (select max(id) from filial) where login = 'teste_financeiro'");
    expect((await t.app.inject({ method: 'GET', url: '/api/financeiro/receber', headers: { cookie } })).statusCode).toBe(403);
    const me = (await t.app.inject({ method: 'GET', url: '/api/auth/me', headers: { cookie } })).json().user;
    expect(me.perfil).toBe('producao');
    expect(me.filial_id).toBeGreaterThan(1);
  });

  it('bloqueia o login após 5 senhas erradas', async () => {
    const tentar = (senha: string) => t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'admin', senha }, remoteAddress: '10.9.9.9' });
    for (let i = 0; i < 5; i++) expect((await tentar('errada')).statusCode).toBe(401);
    expect((await tentar('admin123')).statusCode).toBe(429);
  });
});
