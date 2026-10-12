import type { FastifyInstance } from 'fastify';
import { criarPorts } from '../composition.js';
import type { AuthService } from './auth/auth.service.js';
import auth from './auth/routes.js';
import cadastros from './cadastros/routes.js';
import projetos from './projetos/routes.js';
import orcamentos from './orcamentos/routes.js';
import producao from './producao/routes.js';
import estoque from './estoque/routes.js';
import financeiro from './financeiro/routes.js';
import relatorios from './relatorios/routes.js';

/** Cada módulo é um plugin Fastify montado em /api/<prefixo>; recebe as portas em opts.ports. */
export async function registerModules(app: FastifyInstance, deps: { auth: AuthService }) {
  const ports = criarPorts();
  await app.register(auth, { prefix: '/api/auth', auth: deps.auth });
  await app.register(cadastros, { prefix: '/api/cadastros', ports });
  await app.register(projetos, { prefix: '/api/projetos', ports });
  await app.register(orcamentos, { prefix: '/api/orcamentos', ports });
  await app.register(producao, { prefix: '/api/producao', ports });
  await app.register(estoque, { prefix: '/api/estoque', ports });
  await app.register(financeiro, { prefix: '/api/financeiro', ports });
  await app.register(relatorios, { prefix: '/api/relatorios', ports });
}
