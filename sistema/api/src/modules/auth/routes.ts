import type { FastifyInstance } from 'fastify';
import bcrypt from 'bcryptjs';
import { z } from 'zod';
import { queryOne } from '../../lib/db.js';
import { HttpError } from '../../lib/http.js';
import { COOKIE, type SessionUser } from '../../lib/auth.js';

const loginBody = z.object({ login: z.string().trim().min(1), senha: z.string().min(1) });

export default async function authRoutes(app: FastifyInstance) {
  app.post('/login', { config: { public: true } }, async (req, reply) => {
    const { login, senha } = loginBody.parse(req.body);
    const u = await queryOne(
      'select id, nome, login, perfil, filial_id, senha_hash from usuario where login = $1 and ativo',
      [login.toLowerCase()],
    );
    if (!u || !(await bcrypt.compare(senha, u.senha_hash))) throw new HttpError(401, 'Usuário ou senha inválidos');
    const user: SessionUser = { id: u.id, nome: u.nome, login: u.login, perfil: u.perfil, filial_id: u.filial_id };
    const token = app.jwt.sign(user, { expiresIn: '12h' });
    reply.setCookie(COOKIE, token, {
      path: '/',
      httpOnly: true,
      sameSite: 'lax',
      secure: process.env.NODE_ENV === 'production',
      maxAge: 12 * 3600,
    });
    return { user };
  });

  app.post('/logout', { config: { public: true } }, async (_req, reply) => {
    reply.clearCookie(COOKIE, { path: '/' });
    return { ok: true };
  });

  app.get('/me', async (req) => ({ user: req.user }));
}
