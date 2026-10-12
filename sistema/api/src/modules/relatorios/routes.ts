import type { FastifyInstance } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import * as s from './relatorios.schemas.js';
import { RelatoriosService } from './relatorios.service.js';

/** Adaptador HTTP dos relatórios (somente leitura). */
export default async function relatoriosRoutes(app: FastifyInstance, _opts: ModuloOptions) {
  const service = new RelatoriosService();
  const leitura = { preHandler: requirePerfil('financeiro', 'vendedor') };

  app.get('/vendas', leitura, (req) => {
    const q = s.vendasQuery.parse(req.query);
    return service.vendas(req.user.filial_id, q, q.agrupar);
  });

  app.get('/ranking/:tipo', leitura, (req) => {
    const { tipo } = s.rankingParams.parse(req.params);
    const q = s.rankingQuery.parse(req.query);
    return service.ranking(req.user.filial_id, tipo, q, q.limite);
  });

  app.get('/resumo-financeiro', leitura, (req) => service.resumoFinanceiro(req.user.filial_id, s.periodoQuery.parse(req.query)));

  app.get('/painel', leitura, (req) => service.painel(req.user.filial_id));
}
