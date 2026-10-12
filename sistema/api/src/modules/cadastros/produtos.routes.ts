import type { FastifyInstance } from 'fastify';
import { registrarCrud, permissao } from './base/crud.routes.js';
import { idParam, precosProduto, produtoCriar, produtoEditar, produtoFiltro } from './cadastros.schemas.js';
import type { ProdutoService } from './produto.service.js';

const ESCRITA = ['vendedor', 'financeiro'] as const;

/** CRUD de produtos e preços por tabela (`GET/PUT /produtos/:id/precos`). */
export function rotasProdutos(app: FastifyInstance, service: ProdutoService) {
  registrarCrud(app, { caminho: '/produtos', service, filtro: produtoFiltro, criar: produtoCriar, editar: produtoEditar, escrita: [...ESCRITA] });

  app.get('/produtos/:id/precos', async (req) => service.listarPrecos(idParam.parse(req.params).id));

  app.put('/produtos/:id/precos', permissao([...ESCRITA]), async (req) =>
    service.definirPrecos(idParam.parse(req.params).id, precosProduto.parse(req.body)),
  );
}
