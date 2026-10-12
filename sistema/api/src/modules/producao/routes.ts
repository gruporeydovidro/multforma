import type { FastifyInstance, FastifyRequest } from 'fastify';
import { requirePerfil } from '../../lib/auth.js';
import type { ModuloOptions } from '../../shared/contracts.js';
import { MotivoService, SetorService } from './cadastro-producao.service.js';
import { OrdemProducaoService, type Operador } from './ordem-producao.service.js';
import {
  buscaQuery, cancelarBody, idParam, itemParam, marcarBody, motivoBody, ordemCreateBody, ordemUpdateBody, ordensQuery, periodoQuery, setorBody, setoresQuery,
} from './producao.schemas.js';
import { RelatorioProducaoService } from './relatorio-producao.service.js';
import { repositoriosProducao } from './repositorios.js';

const ler = requirePerfil('producao', 'vendedor');
const produzir = requirePerfil('producao');
const somenteAdmin = requirePerfil();
const operador = (req: FastifyRequest): Operador => ({ filialId: req.user.filial_id, usuarioId: req.user.id });

/** Produção: perfil produção (vendedor só lê); cadastros de setores e motivos só admin altera. */
export default async function producaoRoutes(app: FastifyInstance, opts: ModuloOptions) {
  const setores = new SetorService(repositoriosProducao);
  const motivos = new MotivoService(repositoriosProducao);
  const ordens = new OrdemProducaoService(repositoriosProducao, opts.ports.producao);
  const relatorios = new RelatorioProducaoService(repositoriosProducao);

  // ----- setores -----
  app.get('/setores', { preHandler: ler }, async (req) => setores.listar(setoresQuery.parse(req.query).ativo));
  app.post('/setores', { preHandler: somenteAdmin }, async (req, reply) => reply.status(201).send(await setores.criar(setorBody.parse(req.body))));
  app.put('/setores/:id', { preHandler: somenteAdmin }, async (req) => setores.atualizar(idParam.parse(req.params).id, setorBody.parse(req.body)));
  app.delete('/setores/:id', { preHandler: somenteAdmin }, async (req, reply) => {
    await setores.excluir(idParam.parse(req.params).id);
    return reply.status(204).send();
  });

  // ----- motivos de defeito -----
  app.get('/motivos', { preHandler: ler }, async () => motivos.listar());
  app.post('/motivos', { preHandler: somenteAdmin }, async (req, reply) => reply.status(201).send(await motivos.criar(motivoBody.parse(req.body).descricao)));
  app.put('/motivos/:id', { preHandler: somenteAdmin }, async (req) => motivos.atualizar(idParam.parse(req.params).id, motivoBody.parse(req.body).descricao));
  app.delete('/motivos/:id', { preHandler: somenteAdmin }, async (req, reply) => {
    await motivos.excluir(idParam.parse(req.params).id);
    return reply.status(204).send();
  });

  // ----- ordens -----
  app.get('/orcamentos-disponiveis', { preHandler: produzir }, async (req) => ordens.orcamentosDisponiveis(req.user.filial_id, buscaQuery.parse(req.query).q));
  app.get('/ordens', { preHandler: ler }, async (req) => ordens.listar(req.user.filial_id, ordensQuery.parse(req.query)));
  app.get('/ordens/:id', { preHandler: ler }, async (req) => ordens.detalhe(req.user.filial_id, idParam.parse(req.params).id));
  app.post('/ordens', { preHandler: produzir }, async (req, reply) =>
    reply.status(201).send(await ordens.gerar(operador(req), ordemCreateBody.parse(req.body).orcamento_id)),
  );
  app.put('/ordens/:id', { preHandler: produzir }, async (req) => ordens.atualizar(operador(req), idParam.parse(req.params).id, ordemUpdateBody.parse(req.body)));
  app.post('/ordens/:id/cancelar', { preHandler: produzir }, async (req) =>
    ordens.cancelar(operador(req), idParam.parse(req.params).id, cancelarBody.parse(req.body ?? {}).motivo),
  );
  app.post('/ordens/:id/itens/:itemId/marcar', { preHandler: produzir }, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    return ordens.marcar(operador(req), id, itemId, marcarBody.parse(req.body));
  });
  app.post('/ordens/:id/itens/:itemId/refazer', { preHandler: produzir }, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    return ordens.refazer(operador(req), id, itemId);
  });

  // ----- painel do chão de fábrica -----
  app.get('/painel', { preHandler: ler }, async (req) => ordens.painel(req.user.filial_id));

  // ----- relatórios -----
  app.get('/relatorios/producao-setor', { preHandler: ler }, async (req) => relatorios.producaoPorSetor(req.user.filial_id, periodoQuery.parse(req.query)));
  app.get('/relatorios/defeitos', { preHandler: ler }, async (req) => relatorios.defeitos(req.user.filial_id, periodoQuery.parse(req.query)));
  app.get('/relatorios/previsao-entrega', { preHandler: ler }, async (req) => relatorios.previsaoEntrega(req.user.filial_id, periodoQuery.parse(req.query)));
}
