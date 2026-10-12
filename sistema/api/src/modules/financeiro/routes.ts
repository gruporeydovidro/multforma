import type { FastifyInstance } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import { CaixaService } from './caixa.service.js';
import { ContaPagarService } from './conta-pagar.service.js';
import { ContaReceberService } from './conta-receber.service.js';
import * as s from './financeiro.schemas.js';

/** Adaptador HTTP do financeiro: valida a entrada, chama o service e devolve a resposta. */
export default async function financeiroRoutes(app: FastifyInstance, opts: ModuloOptions) {
  const receber = new ContaReceberService(opts.ports.financeiro);
  const pagar = new ContaPagarService();
  const caixa = new CaixaService();

  const leituraReceber = { preHandler: requirePerfil('financeiro', 'vendedor') };
  const financeiro = { preHandler: requirePerfil('financeiro') };
  const id = (params: unknown) => s.idParam.parse(params).id;

  // Contas a receber
  app.get('/receber', leituraReceber, (req) => receber.listar(req.user.filial_id, s.filtroTitulos.parse(req.query)));
  app.get('/receber/:id', leituraReceber, (req) => receber.obter(req.user.filial_id, id(req.params)));
  app.post('/receber', financeiro, async (req, reply) => reply.status(201).send(await receber.criarAvulsa(req.user, s.novaContaReceber.parse(req.body))));
  app.post('/receber/:id/baixar', financeiro, (req) => receber.baixar(req.user, id(req.params), s.baixaBody.parse(req.body ?? {})));
  app.post('/receber/:id/cancelar', financeiro, (req) => receber.cancelar(req.user, id(req.params), s.motivoBody.parse(req.body ?? {}).motivo));
  app.post('/receber/:id/estornar', financeiro, (req) => receber.estornar(req.user, id(req.params)));

  // Contas a pagar
  app.get('/pagar', financeiro, (req) => pagar.listar(req.user.filial_id, s.filtroTitulos.parse(req.query)));
  app.get('/pagar/alerta', financeiro, (req) => pagar.alerta(req.user.filial_id, s.alertaQuery.parse(req.query).dias));
  app.get('/pagar/:id', financeiro, (req) => pagar.obter(req.user.filial_id, id(req.params)));
  app.post('/pagar', financeiro, async (req, reply) => reply.status(201).send(await pagar.criar(req.user, s.novaContaPagar.parse(req.body))));
  app.put('/pagar/:id', financeiro, (req) => pagar.atualizar(req.user, id(req.params), s.edicaoContaPagar.parse(req.body)));
  app.delete('/pagar/:id', financeiro, async (req, reply) => {
    await pagar.excluir(req.user, id(req.params));
    return reply.status(204).send();
  });
  app.post('/pagar/:id/copiar', financeiro, async (req, reply) =>
    reply.status(201).send(await pagar.copiar(req.user, id(req.params), s.copiaContaPagar.parse(req.body ?? {}).vencimento)));
  app.post('/pagar/:id/baixar', financeiro, (req) => pagar.baixar(req.user, id(req.params), s.baixaBody.parse(req.body ?? {})));
  app.post('/pagar/:id/cancelar', financeiro, (req) => pagar.cancelar(req.user, id(req.params), s.motivoBody.parse(req.body ?? {}).motivo));
  app.post('/pagar/:id/estornar', financeiro, (req) => pagar.estornar(req.user, id(req.params)));

  // Caixa
  app.get('/caixa', financeiro, (req) => caixa.consultar(req.user.filial_id, s.periodoQuery.parse(req.query)));
  app.post('/caixa', financeiro, async (req, reply) => reply.status(201).send(await caixa.lancar(req.user, s.novoLancamento.parse(req.body))));
  app.delete('/caixa/:id', financeiro, async (req, reply) => {
    await caixa.excluir(req.user, id(req.params));
    return reply.status(204).send();
  });
}
