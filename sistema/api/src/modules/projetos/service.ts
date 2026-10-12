import { query, queryOne, type Db } from '../../lib/db.js';
import { badRequest, notFound } from '../../lib/http.js';
import { CalculoError, expandirProjeto, round2, type ItemCalculado, type PecaProjeto, type ProjetoItemCalculo } from '../orcamentos/calculo.js';
import { calcularOu400, carregarProdutos } from '../orcamentos/service.js';

export interface PecaCalculada extends PecaProjeto, ItemCalculado {
  produto_nome: string;
  produto_codigo: string;
  unidade: string;
  preco_unitario: number;
}

export interface ParametrosVao {
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id?: number | null;
}

export async function carregarItensProjeto(db: Db, projetoId: number) {
  return query<ProjetoItemCalculo & { id: number; ordem: number }>(
    `select id, descricao, tipo, produto_id, quantidade, formula_largura, formula_altura, folga_largura_mm, folga_altura_mm, ordem
       from projeto_item where projeto_id = $1 order by ordem, id`,
    [projetoId],
    db,
  );
}

/**
 * Expande o projeto para o vão informado e calcula cada peça (medidas, medida cobrada, preço e total).
 * Não grava nada. Erros de fórmula ou de dados viram 400.
 */
export async function calcularPecasProjeto(db: Db, projetoId: number, p: ParametrosVao, tabelaPrecoId: number | null) {
  const projeto = await queryOne<{ id: number; nome: string; ativo: boolean }>('select id, nome, ativo from projeto where id = $1', [projetoId], db);
  if (!projeto) throw notFound('Projeto');
  const itens = await carregarItensProjeto(db, projetoId);
  if (itens.length === 0) throw badRequest('Projeto sem itens');
  let pecas: PecaProjeto[];
  try {
    pecas = expandirProjeto(itens, p);
  } catch (e) {
    if (e instanceof CalculoError) throw badRequest(e.message);
    throw e;
  }
  const produtos = await carregarProdutos(db, pecas.map((x) => x.produto_id), tabelaPrecoId);
  const calculadas: PecaCalculada[] = pecas.map((peca) => {
    const prod = produtos.get(peca.produto_id);
    if (!prod) throw badRequest(`${peca.descricao}: produto ${peca.produto_id} não encontrado`);
    const preco = prod.preco;
    let calc: ItemCalculado;
    try {
      calc = calcularOu400(prod, { quantidade: peca.quantidade, largura_mm: peca.largura_mm, altura_mm: peca.altura_mm, preco_unitario: preco });
    } catch (e) {
      throw badRequest(`${peca.descricao}: ${(e as Error).message}`);
    }
    return { ...peca, ...calc, produto_nome: prod.nome, produto_codigo: prod.codigo, unidade: prod.unidade_venda, preco_unitario: preco };
  });
  return { projeto, pecas: calculadas, total: round2(calculadas.reduce((s, x) => s + x.total, 0)) };
}
