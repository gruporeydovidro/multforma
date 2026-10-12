import type { FastifyInstance } from 'fastify';
import { z } from 'zod';
import { COOKIE } from '../../lib/auth.js';
import type { AuthService } from './auth.service.js';

const SESSAO_SEGUNDOS = 12 * 3600;
const loginBody = z.object({ login: z.string().trim().min(1), senha: z.string().min(1) });

export default async function authRoutes(app: FastifyInstance, opts: { auth: AuthService }) {
  const service = opts.auth;

  app.post('/login', { config: { public: true } }, async (req, reply) => {
    const { login, senha } = loginBody.parse(req.body);
    const user = await service.autenticar(login, senha, req.ip);
    reply.setCookie(COOKIE, app.jwt.sign(user, { expiresIn: SESSAO_SEGUNDOS }), {
      path: '/',
      httpOnly: true,
      sameSite: 'lax',
      secure: process.env.NODE_ENV === 'production',
      maxAge: SESSAO_SEGUNDOS,
    });
    return { user };
  });

  app.post('/logout', { config: { public: true } }, async (_req, reply) => {
    reply.clearCookie(COOKIE, { path: '/' });
    return { ok: true };
  });

  app.get('/me', async (req) => ({ user: req.user }));
}
