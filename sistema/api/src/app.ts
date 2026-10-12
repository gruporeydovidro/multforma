import Fastify, { type FastifyInstance } from 'fastify';
import cookie from '@fastify/cookie';
import jwt from '@fastify/jwt';
import fastifyStatic from '@fastify/static';
import { existsSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { COOKIE } from './lib/auth.js';
import { errorHandler, HttpError } from './lib/http.js';
import { registerModules } from './modules/index.js';
import { AuthService } from './modules/auth/auth.service.js';
import { CredenciaisRepository } from './modules/auth/credenciais.repository.js';
import { getPool } from './lib/db.js';

declare module 'fastify' {
  interface FastifyContextConfig {
    /** Rota acessível sem sessão. */
    public?: boolean;
  }
}

export async function buildApp(opts: { logger?: boolean } = {}): Promise<FastifyInstance> {
  const app = Fastify({ logger: opts.logger ?? false });
  const secret = process.env.JWT_SECRET ?? (process.env.NODE_ENV === 'production' ? undefined : 'dev-secret-change-me');
  if (!secret) throw new Error('JWT_SECRET não definida');

  await app.register(cookie);
  await app.register(jwt, { secret, cookie: { cookieName: COOKIE, signed: false } });
  app.setErrorHandler(errorHandler);

  const auth = new AuthService(new CredenciaisRepository(getPool()));
  app.addHook('onRequest', async (req) => {
    if (!req.url.startsWith('/api/') || req.routeOptions.config?.public) return;
    try {
      await req.jwtVerify();
    } catch {
      throw new HttpError(401, 'Não autenticado');
    }
    await auth.validarSessao(req.user);
  });

  app.get('/api/health', { config: { public: true } }, async () => ({ ok: true }));
  await registerModules(app);

  // Em produção a API também serve o front-end compilado.
  const webDist = join(dirname(fileURLToPath(import.meta.url)), '../../web/dist');
  if (existsSync(webDist)) {
    await app.register(fastifyStatic, { root: webDist });
    app.setNotFoundHandler((req, reply) => {
      if (req.url.startsWith('/api/')) return reply.status(404).send({ error: 'Rota não encontrada' });
      return reply.sendFile('index.html');
    });
  }
  return app;
}
