import type { FastifyInstance } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import { OrcamentoService } from './orcamento.service.js';
import {
  atualizarItemSchema,
  atualizarOrcamentoSchema,
  criarOrcamentoSchema,
  fecharSchema,
  idParam,
  itemParam,
  itemSchema,
  listaOrcamentosSchema,
  projetoOrcamentoSchema,
  projetoParam,
} from './orcamentos.schemas.js';
import { criarProjetosPort } from './projetos.adapter.js';

/** Orçamentos (vendas): escrita para vendedor; leitura também para financeiro. Adaptador HTTP fino. */
export default async function orcamentosRoutes(app: FastifyInstance, opts: ModuloOptions) {
  const service = new OrcamentoService(opts.ports, criarProjetosPort(opts));
  const leitura = { preHandler: requirePerfil('vendedor', 'financeiro') };
  const escrita = { preHandler: requirePerfil('vendedor') };

  app.get('/', leitura, async (req) => service.listar(req.user, listaOrcamentosSchema.parse(req.query)));

  app.get('/:id', leitura, async (req) => service.obter(req.user, idParam.parse(req.params).id));

  app.post('/', escrita, async (req, reply) => reply.status(201).send(await service.criar(req.user, criarOrcamentoSchema.parse(req.body))));

  app.put('/:id', escrita, async (req) => service.atualizar(req.user, idParam.parse(req.params).id, atualizarOrcamentoSchema.parse(req.body)));

  // Itens (cálculo no servidor)
  app.post('/:id/itens', escrita, async (req, reply) =>
    reply.status(201).send(await service.adicionarItem(req.user, idParam.parse(req.params).id, itemSchema.parse(req.body))),
  );

  app.put('/:id/itens/:itemId', escrita, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    return service.atualizarItem(req.user, id, itemId, atualizarItemSchema.parse(req.body));
  });

  app.delete('/:id/itens/:itemId', escrita, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    return service.removerItem(req.user, id, itemId);
  });

  // Projetos no orçamento
  app.post('/:id/projetos/previa', escrita, async (req) => service.previaProjeto(req.user, idParam.parse(req.params).id, projetoOrcamentoSchema.parse(req.body)));

  app.post('/:id/projetos', escrita, async (req, reply) =>
    reply.status(201).send(await service.adicionarProjeto(req.user, idParam.parse(req.params).id, projetoOrcamentoSchema.parse(req.body))),
  );

  app.delete('/:id/projetos/:projetoId', escrita, async (req) => {
    const { id, projetoId } = projetoParam.parse(req.params);
    return service.removerProjeto(req.user, id, projetoId);
  });

  // Fluxo de status
  app.post('/:id/aprovar', escrita, async (req) => service.aprovar(req.user, idParam.parse(req.params).id));
  app.post('/:id/cancelar', escrita, async (req) => service.cancelar(req.user, idParam.parse(req.params).id));
  app.post('/:id/fechar', escrita, async (req) => service.fechar(req.user, idParam.parse(req.params).id, fecharSchema.parse(req.body)));
  app.post('/:id/duplicar', escrita, async (req, reply) => reply.status(201).send(await service.duplicar(req.user, idParam.parse(req.params).id)));
}
