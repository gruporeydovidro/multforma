import type { FastifyInstance, FastifyRequest } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import { ConsultaEstoqueService } from './consulta-estoque.service.js';
import { acertoBody, entradaBody, movimentosQuery, produtoParam, saidaBody, saldosQuery } from './estoque.schemas.js';
import { MovimentacaoService, type Operador } from './movimentacao.service.js';
import { repositoriosEstoque } from './repositorios.js';

const movimentar = requirePerfil('producao');
const operador = (req: FastifyRequest): Operador => ({ filialId: req.user.filial_id, usuarioId: req.user.id });

/** Estoque: leitura para todos os perfis; movimentação para admin e produção. */
export default async function estoqueRoutes(app: FastifyInstance, opts: ModuloOptions) {
  const consulta = new ConsultaEstoqueService(repositoriosEstoque);
  const movimentacao = new MovimentacaoService(repositoriosEstoque, opts.ports.estoque, opts.ports.catalogo);

  app.get('/saldos', async (req) => consulta.saldos(req.user.filial_id, saldosQuery.parse(req.query)));

  app.get('/saldos/:produtoId', async (req) => {
    const { produtoId } = produtoParam.parse(req.params);
    return consulta.saldoDoProduto(req.user.filial_id, produtoId);
  });

  app.get('/movimentos', async (req) => consulta.movimentos(req.user.filial_id, movimentosQuery.parse(req.query)));

  app.post('/entradas', { preHandler: movimentar }, async (req, reply) =>
    reply.status(201).send(await movimentacao.registrarEntrada(operador(req), entradaBody.parse(req.body))),
  );

  app.post('/saidas', { preHandler: movimentar }, async (req, reply) =>
    reply.status(201).send(await movimentacao.registrarSaida(operador(req), saidaBody.parse(req.body))),
  );

  app.post('/acertos', { preHandler: movimentar }, async (req, reply) =>
    reply.status(201).send(await movimentacao.registrarAcerto(operador(req), acertoBody.parse(req.body))),
  );
}
