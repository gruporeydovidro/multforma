import type { FastifyReply, FastifyRequest } from 'fastify';
import { ZodError } from 'zod';

export class HttpError extends Error {
  constructor(public status: number, message: string, public details?: unknown) {
    super(message);
  }
}

export const notFound = (what = 'Registro') => new HttpError(404, `${what} não encontrado`);
export const badRequest = (message: string, details?: unknown) => new HttpError(400, message, details);
export const conflict = (message: string) => new HttpError(409, message);

export function errorHandler(err: any, req: FastifyRequest, reply: FastifyReply) {
  if (err instanceof HttpError) {
    return reply.status(err.status).send({ error: err.message, details: err.details });
  }
  if (err instanceof ZodError) {
    return reply.status(400).send({ error: 'Dados inválidos', details: err.flatten() });
  }
  // Violações de integridade do PostgreSQL
  // Detalhes do Postgres (valores de chave, nomes de restrição) vão só para o log.
  if (['23505', '23503', '23514', '22P02', '22003', '22008'].includes(err?.code)) req.log.warn({ code: err.code, detail: err.detail }, 'violação de integridade');
  if (err?.code === '23505') return reply.status(409).send({ error: 'Registro duplicado' });
  if (err?.code === '23503') return reply.status(409).send({ error: 'Registro vinculado a outros dados' });
  if (['23514', '22P02', '22003', '22008'].includes(err?.code)) return reply.status(400).send({ error: 'Valor inválido' });
  if (err?.statusCode && err.statusCode < 500) return reply.status(err.statusCode).send({ error: err.message });
  req.log.error(err);
  return reply.status(500).send({ error: 'Erro interno' });
}
