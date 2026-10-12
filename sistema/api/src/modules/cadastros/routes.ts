import type { FastifyInstance } from 'fastify';
import type { ModuloOptions } from '../../shared/contracts.js';
import { registrarCrud } from './base/crud.routes.js';
import { criarServicosCadastros } from './cadastros.composicao.js';
import * as s from './cadastros.schemas.js';
import { rotasProdutos } from './produtos.routes.js';
import { rotasUsuarios } from './usuarios.routes.js';

/**
 * Módulo Cadastros, montado em /api/cadastros.
 * Leitura: qualquer usuário logado (usuários: só admin). Escrita de pessoas e produtos: vendedor e financeiro;
 * demais cadastros: só admin. O módulo não usa as portas de outros módulos.
 */
export default async function cadastrosRoutes(app: FastifyInstance, _opts: ModuloOptions) {
  const servicos = criarServicosCadastros();

  registrarCrud(app, {
    caminho: '/pessoas', service: servicos.pessoas,
    filtro: s.pessoaFiltro, criar: s.pessoaCriar, editar: s.pessoaEditar, escrita: ['vendedor', 'financeiro'],
  });
  rotasProdutos(app, servicos.produtos);
  registrarCrud(app, {
    caminho: '/funcionarios', service: servicos.funcionarios,
    filtro: s.funcionarioFiltro, criar: s.funcionarioCriar, editar: s.funcionarioEditar, escrita: [],
  });
  registrarCrud(app, {
    caminho: '/grupos', service: servicos.grupos,
    filtro: s.grupoFiltro, criar: s.grupoCriar, editar: s.grupoEditar, escrita: [],
  });
  registrarCrud(app, {
    caminho: '/arredondamentos', service: servicos.arredondamentos,
    filtro: s.arredondamentoFiltro, criar: s.arredondamentoCriar, editar: s.arredondamentoEditar, escrita: [],
  });
  registrarCrud(app, {
    caminho: '/tabelas-preco', service: servicos.tabelasPreco,
    filtro: s.tabelaPrecoFiltro, criar: s.tabelaPrecoCriar, editar: s.tabelaPrecoEditar, escrita: [],
  });
  registrarCrud(app, {
    caminho: '/filiais', service: servicos.filiais,
    filtro: s.filialFiltro, criar: s.filialCriar, editar: s.filialEditar, escrita: [],
  });
  rotasUsuarios(app, servicos.usuarios);
}
