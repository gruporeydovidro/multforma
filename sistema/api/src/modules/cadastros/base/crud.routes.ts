import type { FastifyInstance, RouteShorthandOptions } from 'fastify';
import type { ZodType } from 'zod';
import { requirePerfil, type Perfil, type SessionUser } from '../../../lib/auth.js';
import { idParam } from '../cadastros.schemas.js';
import type { Exclusao } from './cadastro.service.js';

/** O que as rotas CRUD precisam de um service de cadastro. */
export interface ServicoCrud<TFiltro, TCriar, TEditar> {
  listar(filtro: TFiltro): Promise<unknown>;
  obter(id: number): Promise<unknown>;
  criar(dados: TCriar, autor: SessionUser): Promise<unknown>;
  atualizar(id: number, dados: TEditar, autor: SessionUser): Promise<unknown>;
  excluir(id: number, autor: SessionUser): Promise<Exclusao>;
}

export interface RecursoCrud<TFiltro, TCriar, TEditar> {
  caminho: string;
  service: ServicoCrud<TFiltro, TCriar, TEditar>;
  filtro: ZodType<TFiltro, any, any>;
  criar: ZodType<TCriar, any, any>;
  editar: ZodType<TEditar, any, any>;
  /** Perfis que podem gravar além do admin ([] = só admin). */
  escrita: Perfil[];
  /** Perfis que podem ler além do admin; omitido = qualquer usuário logado. */
  leitura?: Perfil[];
}

export function permissao(perfis: Perfil[] | undefined): RouteShorthandOptions {
  return perfis ? { preHandler: requirePerfil(...perfis) } : {};
}

/**
 * Registra GET (lista e detalhe), POST, PUT e DELETE de um cadastro.
 * DELETE devolve 204, ou 200 `{ desativado: true }` quando o registro tinha vínculos e foi desativado.
 */
export function registrarCrud<TFiltro, TCriar, TEditar>(app: FastifyInstance, r: RecursoCrud<TFiltro, TCriar, TEditar>) {
  const ler = permissao(r.leitura);
  const gravar = permissao(r.escrita);
  const item = `${r.caminho}/:id`;

  app.get(r.caminho, ler, async (req) => r.service.listar(r.filtro.parse(req.query)));

  app.get(item, ler, async (req) => r.service.obter(idParam.parse(req.params).id));

  app.post(r.caminho, gravar, async (req, reply) => {
    const criado = await r.service.criar(r.criar.parse(req.body), req.user);
    return reply.status(201).send(criado);
  });

  app.put(item, gravar, async (req) => r.service.atualizar(idParam.parse(req.params).id, r.editar.parse(req.body), req.user));

  app.delete(item, gravar, async (req, reply) => {
    const resultado = await r.service.excluir(idParam.parse(req.params).id, req.user);
    return resultado === 'excluido' ? reply.status(204).send() : { desativado: true };
  });
}
