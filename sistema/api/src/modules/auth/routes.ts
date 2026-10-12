import type { FastifyInstance } from 'fastify';
import { z } from 'zod';
import { getPool } from '../../lib/db.js';
import { COOKIE } from '../../lib/auth.js';
import { AuthService } from './auth.service.js';
import { CredenciaisRepository } from './credenciais.repository.js';

const SESSAO_SEGUNDOS = 12 * 3600;
const loginBody = z.object({ login: z.string().trim().min(1), senha: z.string().min(1) });

export default async function authRoutes(app: FastifyInstance) {
  const service = new AuthService(new CredenciaisRepository(getPool()));

  app.post('/login', { config: { public: true } }, async (req, reply) => {
    const { login, senha } = loginBody.parse(req.body);
    const user = await service.autenticar(login, senha);
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
