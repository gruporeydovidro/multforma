import { getPool, withTx, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import { proximoNumero } from '../../lib/numeracao.js';
import type { SessionUser } from '../../lib/auth.js';
import {
  CalculadoraItem,
  CAMPOS_FINANCEIROS,
  Orcamento,
  PlanoParcelas,
  RegraOrcamentoError,
  round2,
  StatusOrcamentoError,
  type EntradaItem,
  type ItemCalculado,
  type Totais,
} from './domain/index.js';
import { OrcamentoRepository, type NovoItem, type OrcamentoRow } from './orcamento.repository.js';
import type {
  AtualizarItemInput,
  AtualizarOrcamentoInput,
  CriarOrcamentoInput,
  FecharInput,
  ItemInput,
  ListaOrcamentosFiltro,
  ProjetoOrcamentoInput,
} from './orcamentos.schemas.js';
import type { PecaProjetoExpandida, Ports } from './ports.js';
import { ProdutoRepository, type ProdutoComPreco } from './produto.repository.js';

export type Usuario = Pick<SessionUser, 'id' | 'filial_id'>;

/** Executa uma regra do domínio convertendo seus erros em HTTP (regra → 400, status → 409). */
function regra<T>(fn: () => T): T {
  try {
    return fn();
  } catch (e) {
    if (e instanceof StatusOrcamentoError) throw conflict(e.message);
    if (e instanceof RegraOrcamentoError) throw badRequest(e.message);
    throw e;
  }
}

/** Repositórios ligados a uma conexão (pool ou transação). */
class Repos {
  readonly orcamentos: OrcamentoRepository;
  readonly produtos: ProdutoRepository;
  constructor(readonly db: Db) {
    this.orcamentos = new OrcamentoRepository(db);
    this.produtos = new ProdutoRepository(db);
  }
}

/**
 * Casos de uso do orçamento (vendas). Recebe as portas dos outros módulos pelo construtor;
 * cada operação de escrita roda numa transação e termina recalculando e gravando os totais.
 */
export class OrcamentoService {
  constructor(private readonly ports: Ports) {}

  private repos(db: Db = getPool()) {
    return new Repos(db);
  }

  // ------------------------------------------------------------------ consultas

  async listar(u: Usuario, f: ListaOrcamentosFiltro) {
    const r = await this.repos().orcamentos.listar(u.filial_id, f);
    return { ...r, page: f.page, pageSize: f.pageSize };
  }

  async obter(u: Usuario, id: number, db?: Db) {
    const repo = this.repos(db).orcamentos;
    const o = await repo.buscar(u.filial_id, id);
    if (!o) throw notFound('Orçamento');
    const [comp, itens, projetos, parcelas] = await Promise.all([repo.complementos(o), repo.itens(id), repo.projetos(id), repo.parcelas(id)]);
    const t = Orcamento.calcularTotais(itens.map((i) => i.total), o);
    return {
      ...o,
      ...comp,
      itens,
      projetos,
      parcelas,
      itens_editaveis: new Orcamento(o.status).itensEditaveis,
      totais: { subtotal: t.subtotal, desconto: t.desconto, acrescimo: o.acrescimo_valor, frete: o.frete_valor, total: t.total },
    };
  }

  // ------------------------------------------------------------------ cabeçalho

  async criar(u: Usuario, d: CriarOrcamentoInput) {
    const id = await withTx(async (db) => {
      const r = this.repos(db);
      await this.validarReferencias(r, d);
      const numero = await proximoNumero(db, 'orcamento', u.filial_id);
      const novo = await r.orcamentos.inserir(u.filial_id, numero, d, u.id);
      await this.recalcular(r, u, novo);
      return novo;
    });
    return this.obter(u, id);
  }

  async atualizar(u: Usuario, id: number, d: AtualizarOrcamentoInput) {
    await withTx(async (db) => {
      const r = this.repos(db);
      const o = await this.travar(r, u, id);
      // O desconto efetivo é derivado no recálculo; aqui só se resolve a intenção (% ou R$) da edição.
      const dados: AtualizarOrcamentoInput = { ...d, ...Orcamento.resolverDesconto(o, d) };
      const alterados = CAMPOS_FINANCEIROS.filter((c) => {
        if (c === 'desconto_valor' && Number(dados.desconto_pct) > 0) return false; // derivado do %
        return dados[c] !== undefined && Number(dados[c] ?? 0) !== Number(o[c] ?? 0);
      });
      regra(() => new Orcamento(o.status).garantirCabecalhoEditavel(alterados));
      await this.validarReferencias(r, dados);
      await r.orcamentos.atualizarCabecalho(id, dados);
      await this.recalcular(r, u, id);
    });
    return this.obter(u, id);
  }

  // ------------------------------------------------------------------ itens

  async adicionarItem(u: Usuario, id: number, d: ItemInput) {
    return this.editarItens(u, id, async (r, o) => {
      const prod = await this.produto(r, d.produto_id, o.tabela_preco_id);
      const entrada = { ...d, preco_unitario: d.preco_unitario ?? prod.preco };
      await r.orcamentos.inserirItem(id, this.montarItem(prod, entrada, { descricao: d.descricao, ambiente: d.ambiente, orcamento_projeto_id: null }));
    });
  }

  async atualizarItem(u: Usuario, id: number, itemId: number, d: AtualizarItemInput) {
    return this.editarItens(u, id, async (r, o) => {
      const atual = await r.orcamentos.buscarItem(id, itemId);
      if (!atual) throw notFound('Item');
      const trocouProduto = d.produto_id !== undefined && d.produto_id !== atual.produto_id;
      // Trocar para um produto inativo é recusado; um item já gravado continua editável.
      const prod = await this.produto(r, d.produto_id ?? atual.produto_id, o.tabela_preco_id, trocouProduto);
      const entrada: EntradaItem = {
        quantidade: d.quantidade ?? atual.quantidade,
        largura_mm: d.largura_mm !== undefined ? d.largura_mm : atual.largura_mm,
        altura_mm: d.altura_mm !== undefined ? d.altura_mm : atual.altura_mm,
        preco_unitario: d.preco_unitario ?? (trocouProduto ? prod.preco : atual.preco_unitario),
        desconto_valor: d.desconto_valor ?? atual.desconto_valor,
      };
      const descricao = d.descricao !== undefined ? d.descricao : trocouProduto ? null : atual.descricao;
      const ambiente = d.ambiente !== undefined ? d.ambiente : atual.ambiente;
      await r.orcamentos.atualizarItem(itemId, this.montarItem(prod, entrada, { descricao, ambiente, orcamento_projeto_id: atual.orcamento_projeto_id }));
    });
  }

  async removerItem(u: Usuario, id: number, itemId: number) {
    return this.editarItens(u, id, async (r) => {
      if (!(await r.orcamentos.buscarItem(id, itemId))) throw notFound('Item');
      await r.orcamentos.removerItem(itemId);
    });
  }

  // ------------------------------------------------------------------ projetos

  /** Peças do projeto já precificadas pela tabela do orçamento, sem gravar. */
  async previaProjeto(u: Usuario, id: number, d: ProjetoOrcamentoInput) {
    const r = this.repos();
    const o = await r.orcamentos.buscar(u.filial_id, id);
    if (!o) throw notFound('Orçamento');
    const { nome, pecas } = await this.ports.projetos.expandir(r.db, d.projeto_id, d);
    const itens = await this.precificarPecas(r, pecas, o.tabela_preco_id, d.ambiente);
    return { projeto: { id: d.projeto_id, nome }, itens, total: round2(itens.reduce((s, i) => s + i.total, 0)) };
  }

  async adicionarProjeto(u: Usuario, id: number, d: ProjetoOrcamentoInput) {
    return this.editarItens(u, id, async (r, o) => {
      const { nome, pecas } = await this.ports.projetos.expandir(r.db, d.projeto_id, d);
      const itens = await this.precificarPecas(r, pecas, o.tabela_preco_id, d.ambiente);
      const projetoOrcId = await r.orcamentos.inserirProjeto(id, { ...d, descricao: d.descricao ?? nome });
      for (const it of itens) await r.orcamentos.inserirItem(id, { ...it, orcamento_projeto_id: projetoOrcId });
    });
  }

  async removerProjeto(u: Usuario, id: number, projetoOrcId: number) {
    return this.editarItens(u, id, async (r) => {
      if (!(await r.orcamentos.buscarProjeto(id, projetoOrcId))) throw notFound('Projeto do orçamento');
      await r.orcamentos.removerProjeto(projetoOrcId);
    });
  }

  // ------------------------------------------------------------------ fluxo de status

  async aprovar(u: Usuario, id: number) {
    await withTx(async (db) => {
      const r = this.repos(db);
      const o = await this.travar(r, u, id);
      const qtd = (await r.orcamentos.totaisItens(id)).length;
      const status = regra(() => new Orcamento(o.status).aprovar(qtd));
      await r.orcamentos.gravarStatus(id, status);
      await logAcao(db, u.id, 'aprovar_orcamento', 'orcamento', id, { numero: o.numero });
    });
    return this.obter(u, id);
  }

  async cancelar(u: Usuario, id: number) {
    await withTx(async (db) => {
      const r = this.repos(db);
      const o = await this.travar(r, u, id);
      const status = regra(() => new Orcamento(o.status).cancelar());
      await r.orcamentos.gravarStatus(id, status);
      await logAcao(db, u.id, 'cancelar_orcamento', 'orcamento', id, { numero: o.numero, status_anterior: o.status });
    });
    return this.obter(u, id);
  }

  /**
   * Fechamento em transação única: parcelas → contas a receber (à vista já baixadas) →
   * saída de estoque → ordem de produção (destino produção) → status fechado e log.
   */
  async fechar(u: Usuario, id: number, d: FecharInput) {
    await withTx(async (db) => {
      const r = this.repos(db);
      const o = await this.travar(r, u, id);
      const { total } = await this.recalcular(r, u, id);
      const informado = regra(() => new PlanoParcelas(d.parcelas.map((p, i) => ({ numero: i + 1, vencimento: p.vencimento, valor: p.valor, forma_pagamento: p.forma_pagamento ?? d.forma_pagamento }))));
      regra(() => new Orcamento(o.status).fechar(total, informado));
      const plano = regra(() => informado.ajustadoAo(total));

      const documento = `ORC ${o.numero}`;
      await r.orcamentos.inserirParcelas(id, plano.parcelas);
      const titulos = await this.ports.financeiro.gerarContasReceber(db, {
        filial_id: o.filial_id, cliente_id: o.cliente_id, orcamento_id: id, documento, parcelas: [...plano.parcelas],
      });
      const hoje = await r.orcamentos.hoje();
      for (const [i, p] of plano.parcelas.entries()) {
        if (PlanoParcelas.aVista(p.forma_pagamento)) {
          await this.ports.financeiro.baixarContaReceber(db, { id: titulos[i], valor: p.valor, data: hoje, forma_pagamento: p.forma_pagamento, usuario_id: u.id });
        }
      }
      for (const it of await r.orcamentos.itensComEstoque(id)) {
        await this.ports.estoque.registrarMovimento(db, {
          filial_id: o.filial_id, produto_id: it.produto_id, tipo: 'saida', origem: 'venda', quantidade: it.medida_cobrada,
          documento, referencia_id: id, usuario_id: u.id,
        });
      }
      const ordemId = o.destino === 'producao' ? await this.ports.producao.criarOrdemProducao(db, id) : null;
      await r.orcamentos.gravarFechamento(id, d.forma_pagamento);
      await logAcao(db, u.id, 'fechar_orcamento', 'orcamento', id, {
        numero: o.numero, total, forma_pagamento: d.forma_pagamento, parcelas: plano.parcelas.length, ordem_producao_id: ordemId,
      });
    });
    return this.obter(u, id);
  }

  /** Copia cabeçalho, projetos e itens para um novo orçamento aberto, com a data de hoje. */
  async duplicar(u: Usuario, id: number) {
    const novoId = await withTx(async (db) => {
      const r = this.repos(db);
      const o = await r.orcamentos.buscar(u.filial_id, id);
      if (!o) throw notFound('Orçamento');
      const hoje = await r.orcamentos.hoje();
      const numero = await proximoNumero(db, 'orcamento', u.filial_id);
      const novo = await r.orcamentos.inserir(u.filial_id, numero, {
        ...o, data_emissao: hoje, validade: deslocar(o.validade, o.data_emissao, hoje), prazo_entrega: deslocar(o.prazo_entrega, o.data_emissao, hoje),
      }, u.id);
      const mapa = new Map<number, number>();
      for (const p of await r.orcamentos.projetos(id)) mapa.set(p.id, await r.orcamentos.inserirProjeto(novo, p));
      for (const it of await r.orcamentos.itens(id)) {
        await r.orcamentos.inserirItem(novo, { ...it, orcamento_projeto_id: it.orcamento_projeto_id ? mapa.get(it.orcamento_projeto_id)! : null });
      }
      await this.recalcular(r, u, novo);
      await logAcao(db, u.id, 'duplicar_orcamento', 'orcamento', novo, { origem_id: id, origem_numero: o.numero, numero });
      return novo;
    });
    return this.obter(u, novoId);
  }

  // ------------------------------------------------------------------ apoio

  /** Abre transação, trava o orçamento, exige itens editáveis, aplica a alteração e recalcula. */
  private async editarItens(u: Usuario, id: number, alterar: (r: Repos, o: OrcamentoRow) => Promise<void>) {
    await withTx(async (db) => {
      const r = this.repos(db);
      const o = await this.travar(r, u, id);
      regra(() => new Orcamento(o.status).garantirItensEditaveis());
      await alterar(r, o);
      await this.recalcular(r, u, id);
    });
    return this.obter(u, id);
  }

  private async travar(r: Repos, u: Usuario, id: number): Promise<OrcamentoRow> {
    const o = await r.orcamentos.buscar(u.filial_id, id, true);
    if (!o) throw notFound('Orçamento');
    return o;
  }

  /** Recalcula o total de cada projeto e os totais do cabeçalho, grava e devolve os totais. */
  private async recalcular(r: Repos, u: Usuario, id: number): Promise<Totais> {
    await r.orcamentos.recalcularTotaisProjetos(id);
    const o = await r.orcamentos.buscar(u.filial_id, id);
    if (!o) throw notFound('Orçamento');
    const t = Orcamento.calcularTotais(await r.orcamentos.totaisItens(id), o);
    regra(() => Orcamento.garantirLimites(t));
    await r.orcamentos.gravarTotais(id, { subtotal: t.subtotal, desconto_valor: Orcamento.descontoAGravar(o, t), total: t.total });
    return t;
  }

  private async produto(r: Repos, produtoId: number, tabelaPrecoId: number | null, exigirAtivo = true): Promise<ProdutoComPreco> {
    const p = (await r.produtos.comPreco([produtoId], tabelaPrecoId)).get(produtoId);
    if (!p) throw badRequest(`Produto ${produtoId} não encontrado`);
    if (exigirAtivo && !p.ativo) throw badRequest(`Produto ${p.codigo} - ${p.nome} está inativo`);
    return p;
  }

  private montarItem(
    prod: ProdutoComPreco,
    entrada: EntradaItem,
    extra: { descricao: string | null; ambiente: string | null; orcamento_projeto_id: number | null },
  ): NovoItem {
    const calc: ItemCalculado = regra(() => CalculadoraItem.calcular(prod, entrada));
    return {
      orcamento_projeto_id: extra.orcamento_projeto_id,
      produto_id: prod.id,
      descricao: extra.descricao || prod.nome,
      ambiente: extra.ambiente,
      unidade: prod.unidade_venda,
      quantidade: calc.quantidade,
      largura_mm: entrada.largura_mm ?? null,
      altura_mm: entrada.altura_mm ?? null,
      largura_calc_mm: calc.largura_calc_mm,
      altura_calc_mm: calc.altura_calc_mm,
      medida_cobrada: calc.medida_cobrada,
      preco_unitario: calc.preco_unitario,
      desconto_valor: calc.desconto_valor,
      total: calc.total,
    };
  }

  private async precificarPecas(r: Repos, pecas: PecaProjetoExpandida[], tabelaPrecoId: number | null, ambiente: string | null): Promise<NovoItem[]> {
    const produtos = await r.produtos.comPreco(pecas.map((p) => p.produto_id), tabelaPrecoId);
    return pecas.map((p) => {
      const prod = produtos.get(p.produto_id);
      if (!prod) throw badRequest(`${p.descricao}: produto ${p.produto_id} não encontrado`);
      if (!prod.ativo) throw badRequest(`${p.descricao}: produto ${prod.codigo} - ${prod.nome} está inativo`);
      try {
        return this.montarItem(
          prod,
          { quantidade: p.quantidade, largura_mm: p.largura_mm, altura_mm: p.altura_mm, preco_unitario: prod.preco },
          { descricao: `${p.descricao} - ${prod.nome}`, ambiente, orcamento_projeto_id: null },
        );
      } catch (e) {
        throw badRequest(`${p.descricao}: ${(e as Error).message}`);
      }
    });
  }

  private async validarReferencias(r: Repos, d: { cliente_id?: number | null; vendedor_id?: number | null; tabela_preco_id?: number | null }) {
    const faltando = await r.orcamentos.referenciasInexistentes(d);
    if (faltando.length) throw badRequest(`Não encontrado: ${faltando.join(', ')}`);
  }
}

/** Mantém a distância (em dias) entre uma data e a emissão ao trocar a emissão. */
function deslocar(data: string | null, emissaoAntiga: string, emissaoNova: string): string | null {
  if (!data) return null;
  const dia = 86_400_000;
  const diff = Math.round((Date.parse(data) - Date.parse(emissaoAntiga)) / dia);
  return new Date(Date.parse(emissaoNova) + Math.max(diff, 0) * dia).toISOString().slice(0, 10);
}
