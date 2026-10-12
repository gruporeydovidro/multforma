import type { FastifyReply, FastifyRequest } from 'fastify';
import { HttpError } from './http.js';

export type Perfil = 'admin' | 'vendedor' | 'producao' | 'financeiro';

export interface SessionUser {
  id: number;
  nome: string;
  login: string;
  perfil: Perfil;
  filial_id: number;
}

declare module '@fastify/jwt' {
  interface FastifyJWT {
    payload: SessionUser;
    user: SessionUser;
  }
}

export const COOKIE = 'vg_session';

/** preHandler: exige um dos perfis informados (admin sempre passa). */
export function requirePerfil(...perfis: Perfil[]) {
  return async (req: FastifyRequest, _reply: FastifyReply) => {
    const u = req.user;
    if (!u) throw new HttpError(401, 'Não autenticado');
    if (u.perfil !== 'admin' && !perfis.includes(u.perfil)) throw new HttpError(403, 'Sem permissão');
  };
}
