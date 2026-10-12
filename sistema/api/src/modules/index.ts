import type { FastifyInstance } from 'fastify';
import auth from './auth/routes.js';
import cadastros from './cadastros/routes.js';
import projetos from './projetos/routes.js';
import orcamentos from './orcamentos/routes.js';
import producao from './producao/routes.js';
import estoque from './estoque/routes.js';
import financeiro from './financeiro/routes.js';
import relatorios from './relatorios/routes.js';

/** Cada módulo é um plugin Fastify montado em /api/<prefixo>. */
export async function registerModules(app: FastifyInstance) {
  await app.register(auth, { prefix: '/api/auth' });
  await app.register(cadastros, { prefix: '/api/cadastros' });
  await app.register(projetos, { prefix: '/api/projetos' });
  await app.register(orcamentos, { prefix: '/api/orcamentos' });
  await app.register(producao, { prefix: '/api/producao' });
  await app.register(estoque, { prefix: '/api/estoque' });
  await app.register(financeiro, { prefix: '/api/financeiro' });
  await app.register(relatorios, { prefix: '/api/relatorios' });
}
