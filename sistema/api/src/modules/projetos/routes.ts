import type { FastifyInstance } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import { ProjetoService } from './projeto.service.js';
import { idParam, listaProjetosSchema, projetoSchema, vaoSchema } from './projetos.schemas.js';

/** Projetos (gabaritos): leitura para qualquer usuário logado; escrita para admin e vendedor. */
export default async function projetosRoutes(app: FastifyInstance, _opts: ModuloOptions) {
  const service = new ProjetoService();
  const escrita = { preHandler: requirePerfil('vendedor') };

  app.get('/', async (req) => service.listar(listaProjetosSchema.parse(req.query)));

  app.get('/:id', async (req) => service.obter(idParam.parse(req.params).id));

  app.post('/', escrita, async (req, reply) => reply.status(201).send(await service.criar(projetoSchema.parse(req.body))));

  app.put('/:id', escrita, async (req) => service.atualizar(idParam.parse(req.params).id, projetoSchema.parse(req.body)));

  app.delete('/:id', escrita, async (req, reply) => {
    await service.excluir(idParam.parse(req.params).id);
    return reply.status(204).send();
  });

  app.post('/:id/simular', async (req) => service.simular(idParam.parse(req.params).id, vaoSchema.parse(req.body)));
}
