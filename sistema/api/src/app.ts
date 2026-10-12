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
import { criarAuth } from './composition.js';

declare module 'fastify' {
  interface FastifyContextConfig {
    /** Rota acessível sem sessão. */
    public?: boolean;
  }
}

/** Segredo do JWT: obrigatório (e forte) fora de desenvolvimento/teste. */
function segredoJwt(): string {
  const env = process.env.NODE_ENV ?? '';
  const secret = process.env.JWT_SECRET;
  if (secret && (secret.length >= 32 || env === 'development' || env === 'test')) return secret;
  if (!secret && (env === 'development' || env === 'test')) return 'dev-secret-somente-local';
  throw new Error('JWT_SECRET ausente ou fraco: defina um segredo com pelo menos 32 caracteres');
}

export async function buildApp(opts: { logger?: boolean } = {}): Promise<FastifyInstance> {
  const app = Fastify({ logger: opts.logger ?? false });
  const secret = segredoJwt();

  await app.register(cookie);
  await app.register(jwt, { secret, cookie: { cookieName: COOKIE, signed: false } });
  app.setErrorHandler(errorHandler);

  const auth = criarAuth();
  // Decide pela rota casada (já normalizada pelo roteador), não pela URL crua: '/%61pi/...' também é '/api/...'.
  // Nega por padrão: toda rota da API exige sessão, salvo as marcadas como públicas.
  app.addHook('onRequest', async (req) => {
    const rota = req.routeOptions.url;
    if (!rota?.startsWith('/api/') || req.routeOptions.config?.public) return;
    try {
      await req.jwtVerify();
    } catch {
      throw new HttpError(401, 'Não autenticado');
    }
    req.user = await auth.validarSessao(req.user);
  });

  app.get('/api/health', { config: { public: true } }, async () => ({ ok: true }));
  await registerModules(app, { auth });

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
