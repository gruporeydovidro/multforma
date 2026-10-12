import { badRequest, conflict } from '../../lib/http.js';
import type { Dados } from './base/cadastro.repository.js';
import { CadastroService } from './base/cadastro.service.js';
import type { EmTransacao } from './base/transacao.js';
import type { ProdutoCriar, ProdutoEditar, ProdutoFiltro } from './cadastros.schemas.js';
import { ErroDeValidacao } from './domain/erros.js';
import { PrecosDoProduto, type PrecoTabela } from './domain/precos.js';
import type { PrecoProduto, Produto, ProdutoItem, ProdutoRepository } from './produto.repository.js';

/** Produtos: código único, grupo e arredondamento existentes e preços por tabela. */
export class ProdutoService extends CadastroService<Produto, ProdutoItem, ProdutoFiltro, ProdutoCriar, ProdutoEditar> {
  constructor(
    private readonly produtos: ProdutoRepository,
    private readonly transacao: EmTransacao<ProdutoRepository>,
  ) {
    super(produtos, { nome: 'Produto', genero: 'm' });
  }

  async listarPrecos(produtoId: number): Promise<PrecoProduto[]> {
    await this.obter(produtoId);
    return this.produtos.listarPrecos(produtoId);
  }

  async definirPrecos(produtoId: number, itens: PrecoTabela[]): Promise<PrecoProduto[]> {
    await this.obter(produtoId);
    const precos = await this.regra(() => PrecosDoProduto.criar(itens));
    const existentes = new Set(await this.produtos.tabelasExistentes(precos.tabelas));
    const faltando = precos.tabelas.filter((id) => !existentes.has(id));
    if (faltando.length) throw badRequest(`Tabela de preço não encontrada: ${faltando.join(', ')}`);
    await this.transacao((repo) => repo.substituirPrecos(produtoId, precos.itens));
    return this.produtos.listarPrecos(produtoId);
  }

  protected async prepararCriacao(dados: ProdutoCriar): Promise<Dados> {
    await this.validarReferencias(dados);
    return dados;
  }

  protected async prepararEdicao(dados: ProdutoEditar, atual: Produto): Promise<Dados> {
    await this.validarReferencias(dados, atual.id);
    return dados;
  }

  private async validarReferencias(dados: ProdutoEditar, excetoId?: number): Promise<void> {
    if (dados.codigo && (await this.produtos.codigoEmUso(dados.codigo, excetoId))) {
      throw conflict('Já existe um produto com este código');
    }
    if (dados.grupo_id && !(await this.produtos.grupoExiste(dados.grupo_id))) {
      throw new ErroDeValidacao('grupo_id', 'Grupo não encontrado');
    }
    if (dados.arredondamento_id && !(await this.produtos.arredondamentoExiste(dados.arredondamento_id))) {
      throw new ErroDeValidacao('arredondamento_id', 'Arredondamento não encontrado');
    }
  }
}
