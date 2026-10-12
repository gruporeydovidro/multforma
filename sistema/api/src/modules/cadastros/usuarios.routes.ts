import type { FastifyInstance } from 'fastify';
import { permissao, registrarCrud } from './base/crud.routes.js';
import { idParam, minhaSenha, usuarioCriar, usuarioEditar, usuarioFiltro, usuarioSenha } from './cadastros.schemas.js';
import type { UsuarioService } from './usuario.service.js';

const SO_ADMIN = permissao([]);

/** Usuários (só admin) e troca da própria senha (qualquer usuário logado). */
export function rotasUsuarios(app: FastifyInstance, service: UsuarioService) {
  registrarCrud(app, { caminho: '/usuarios', service, filtro: usuarioFiltro, criar: usuarioCriar, editar: usuarioEditar, escrita: [], leitura: [] });

  app.put('/usuarios/:id/senha', SO_ADMIN, async (req) => {
    await service.redefinirSenha(idParam.parse(req.params).id, usuarioSenha.parse(req.body).senha, req.user);
    return { ok: true };
  });

  app.put('/minha-senha', async (req) => {
    const { senha_atual, nova_senha } = minhaSenha.parse(req.body);
    await service.alterarMinhaSenha(req.user, senha_atual, nova_senha);
    return { ok: true };
  });
}
