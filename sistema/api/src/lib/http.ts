import type { FastifyReply, FastifyRequest } from 'fastify';
import { ZodError, type ZodTypeAny, type z } from 'zod';

export class HttpError extends Error {
  constructor(public status: number, message: string, public details?: unknown) {
    super(message);
  }
}

export const notFound = (what = 'Registro') => new HttpError(404, `${what} não encontrado`);
export const badRequest = (message: string, details?: unknown) => new HttpError(400, message, details);
export const conflict = (message: string) => new HttpError(409, message);

export function parse<S extends ZodTypeAny>(schema: S, data: unknown): z.infer<S> {
  return schema.parse(data);
}

export function errorHandler(err: any, req: FastifyRequest, reply: FastifyReply) {
  if (err instanceof HttpError) {
    return reply.status(err.status).send({ error: err.message, details: err.details });
  }
  if (err instanceof ZodError) {
    return reply.status(400).send({ error: 'Dados inválidos', details: err.flatten() });
  }
  // Violações de integridade do PostgreSQL
  if (err?.code === '23505') return reply.status(409).send({ error: 'Registro duplicado', details: err.detail });
  if (err?.code === '23503') return reply.status(409).send({ error: 'Registro vinculado a outros dados', details: err.detail });
  if (err?.code === '23514' || err?.code === '22P02') return reply.status(400).send({ error: 'Valor inválido', details: err.detail ?? err.message });
  if (err?.statusCode && err.statusCode < 500) return reply.status(err.statusCode).send({ error: err.message });
  req.log.error(err);
  return reply.status(500).send({ error: 'Erro interno' });
}
