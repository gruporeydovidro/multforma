import { beforeAll, describe, expect, it } from 'vitest';
import { query, queryOne } from '../src/lib/db.js';
import { login, useTestApp } from './helpers.js';

interface ItemFixture { codigo: string; quantidade: number; medida: number; total: number }

let numero = 100;

/** Cria um orçamento (por SQL) com itens; fechado_em define o período da venda. */
async function criarOrcamento(o: { cliente_id: number; vendedor_id?: number | null; status?: string; fechado_em?: string | null; total: number; itens: ItemFixture[] }) {
  numero += 1;
  const orc = (await queryOne<{ id: number }>(
    `insert into orcamento (filial_id, numero, cliente_id, vendedor_id, status, subtotal, total, fechado_em)
     values (1, $1, $2, $3, $4, $5, $5, $6::timestamptz) returning id`,
    [numero, o.cliente_id, o.vendedor_id ?? null, o.status ?? 'fechado', o.total, o.fechado_em ?? null],
  ))!.id;
  let seq = 0;
  for (const it of o.itens) {
    seq += 1;
    await query(
      `insert into orcamento_item (orcamento_id, seq, produto_id, descricao, unidade, quantidade, medida_cobrada, preco_unitario, total)
       select $1, $2, p.id, p.nome, p.unidade_venda, $4, $5::numeric, round($6::numeric / $5::numeric, 4), $6::numeric from produto p where p.codigo = $3`,
      [orc, seq, it.codigo, it.quantidade, it.medida, it.total],
    );
  }
  return orc;
}

describe('relatórios', () => {
  const t = useTestApp();
  let consumidor: number;
  let clienteB: number;
  let vendedor: number;
  let hoje: string;

  const get = (url: string, cookie = t.cookie) => t.app.inject({ method: 'GET', url: `/api/relatorios${url}`, headers: { cookie } });
  const fin = (method: 'POST' | 'GET', url: string, payload?: unknown) =>
    t.app.inject({ method, url: `/api/financeiro${url}`, payload: payload as any, headers: { cookie: t.cookie } });

  beforeAll(async () => {
    hoje = (await queryOne<{ d: string }>('select current_date as d'))!.d;
    consumidor = (await queryOne<{ id: number }>(`select id from pessoa where nome = 'Consumidor Final'`))!.id;
    clienteB = (await queryOne<{ id: number }>(`insert into pessoa (tipo, nome) values ('cliente', 'Cliente B') returning id`))!.id;
    vendedor = (await queryOne<{ id: number }>(`select id from funcionario where vendedor order by id limit 1`))!.id;

    // Março/2025: A = 770 (itens 770, custo 2*120 + 90 = 330); B = 450 com frete (itens 420, custo 1,5*120 = 180).
    await criarOrcamento({
      cliente_id: consumidor, vendedor_id: vendedor, fechado_em: '2025-03-10T15:00:00', total: 770,
      itens: [{ codigo: 'VT8', quantidade: 1, medida: 2, total: 560 }, { codigo: 'KITBOX', quantidade: 1, medida: 1, total: 210 }],
    });
    await criarOrcamento({
      cliente_id: clienteB, fechado_em: '2025-03-11T10:00:00', total: 450,
      itens: [{ codigo: 'VT8', quantidade: 1, medida: 1.5, total: 420 }],
    });
    // Fora do período e não fechado: não entram.
    await criarOrcamento({ cliente_id: clienteB, fechado_em: '2025-04-01T10:00:00', total: 999, itens: [{ codigo: 'VT10', quantidade: 1, medida: 1, total: 999 }] });
    await criarOrcamento({ cliente_id: clienteB, status: 'aberto', total: 300, itens: [{ codigo: 'VT8', quantidade: 1, medida: 1, total: 300 }] });
    await criarOrcamento({ cliente_id: consumidor, status: 'aprovado', total: 200, itens: [{ codigo: 'INST', quantidade: 1, medida: 1, total: 200 }] });
  });

  const marco = 'de=2025-03-01&ate=2025-03-31';

  it('permissões: producao não acessa; vendedor e financeiro leem', async () => {
    const producao = await login(t.app, 'producao');
    for (const url of ['/vendas', '/painel', '/resumo-financeiro', '/ranking/clientes']) expect((await get(url, producao)).statusCode).toBe(403);
    expect((await get('/vendas', await login(t.app, 'vendedor'))).statusCode).toBe(200);
    expect((await get('/painel', await login(t.app, 'financeiro'))).statusCode).toBe(200);
  });

  it('vendas por dia com margem e totais', async () => {
    const res = await get(`/vendas?${marco}&agrupar=dia`);
    expect(res.statusCode).toBe(200);
    const r = res.json();
    expect(r).toMatchObject({ de: '2025-03-01', ate: '2025-03-31', agrupar: 'dia' });
    expect(r.linhas.map((l: any) => [l.chave, l.quantidade, l.total, l.margem])).toEqual([
      ['2025-03-10', 1, 770, 440],
      ['2025-03-11', 1, 450, 240],
    ]);
    expect(r.totais).toEqual({ quantidade: 2, total: 1220, total_itens: 1190, custo: 510, margem: 680, margem_pct: 57.14 });
  });

  it('vendas por vendedor, cliente e produto', async () => {
    const vend = (await get(`/vendas?${marco}&agrupar=vendedor`)).json();
    expect(vend.linhas.map((l: any) => [l.rotulo, l.total])).toEqual([['Vendedor Padrão', 770], ['Sem vendedor', 450]]);

    const cli = (await get(`/vendas?${marco}&agrupar=cliente`)).json();
    expect(cli.linhas.map((l: any) => [l.chave, l.rotulo, l.quantidade, l.total])).toEqual([
      [String(consumidor), 'Consumidor Final', 1, 770],
      [String(clienteB), 'Cliente B', 1, 450],
    ]);

    const prod = (await get(`/vendas?${marco}&agrupar=produto`)).json();
    expect(prod.linhas.map((l: any) => [l.rotulo, l.quantidade, l.medida, l.unidade, l.total, l.custo, l.margem])).toEqual([
      ['VT8 - Vidro temperado incolor 8 mm', 2, 3.5, 'M2', 980, 420, 560],
      ['KITBOX - Kit box frontal (roldanas, trilho e puxador)', 1, 1, 'UN', 210, 90, 120],
    ]);
    expect(prod.totais).toMatchObject({ total: 1190, margem: 680 });
  });

  it('valida parâmetros', async () => {
    expect((await get('/vendas?agrupar=mes')).statusCode).toBe(400);
    expect((await get('/vendas?de=2025-03-31&ate=2025-03-01')).statusCode).toBe(400);
    expect((await get('/vendas?de=2025-13-01')).statusCode).toBe(400);
    expect((await get('/ranking/fornecedores')).statusCode).toBe(400);
  });

  it('período padrão é o mês corrente', async () => {
    const r = (await get('/vendas')).json();
    expect(r.de.slice(0, 7)).toBe(hoje.slice(0, 7));
    expect(r.linhas).toEqual([]);
    expect(r.totais.total).toBe(0);
  });

  it('rankings de clientes, produtos e vendedores', async () => {
    const cli = (await get(`/ranking/clientes?${marco}&limite=1`)).json();
    expect(cli).toMatchObject({ tipo: 'clientes', total_geral: 1220 });
    expect(cli.items).toEqual([expect.objectContaining({ posicao: 1, id: consumidor, nome: 'Consumidor Final', total: 770, participacao_pct: 63.11 })]);

    const prod = (await get(`/ranking/produtos?${marco}`)).json();
    expect(prod.items.map((i: any) => [i.posicao, i.nome.split(' - ')[0], i.total])).toEqual([[1, 'VT8', 980], [2, 'KITBOX', 210]]);
    expect(prod.total_geral).toBe(1190);

    const vend = (await get(`/ranking/vendedores?${marco}`)).json();
    expect(vend.items.map((i: any) => [i.id, i.nome, i.participacao_pct])).toEqual([[vendedor, 'Vendedor Padrão', 63.11], [null, 'Sem vendedor', 36.89]]);
  });

  it('resumo financeiro do período', async () => {
    const cr = (await fin('POST', '/receber', { cliente_id: consumidor, valor_total: 300, primeiro_vencimento: '2025-03-20' })).json().items[0];
    await fin('POST', `/receber/${cr.id}/baixar`, { valor: 100, data: '2025-03-15', forma_pagamento: 'pix' });
    const cp = (await fin('POST', '/pagar', { descricao: 'Conta de luz', categoria: 'Energia', valor_total: 80, primeiro_vencimento: '2025-03-25' })).json().items[0];
    await fin('POST', `/pagar/${cp.id}/baixar`, { data: '2025-03-26' });
    await fin('POST', '/pagar', { descricao: 'Aluguel', categoria: 'Ocupação', valor_total: 500, primeiro_vencimento: '2025-03-28' });
    await fin('POST', '/caixa', { data: '2025-03-27', tipo: 'saida', valor: 15, descricao: 'Sangria' });
    await fin('POST', '/caixa', { data: '2025-02-10', tipo: 'entrada', valor: 50, descricao: 'Suprimento' });

    const res = await get(`/resumo-financeiro?${marco}`);
    expect(res.statusCode).toBe(200);
    const r = res.json();
    expect(r).toMatchObject({
      de: '2025-03-01',
      ate: '2025-03-31',
      vendas: { quantidade: 2, total: 1220 },
      recebido: 100,
      pago: 80,
      resultado: 20,
      a_receber: { quantidade: 1, total: 200 },
      a_pagar: { quantidade: 1, total: 500 },
      vencidos: { receber: { quantidade: 1, total: 200 }, pagar: { quantidade: 1, total: 500 } },
      caixa: { saldo_anterior: 50, entradas: 100, saidas: 95, saldo_final: 55 },
    });
    expect(r.despesas_por_categoria).toEqual([{ categoria: 'Energia', total: 80 }, { categoria: 'Lançamentos manuais', total: 15 }]);
  });

  it('painel da página inicial', async () => {
    const antes = (await get('/painel')).json();
    await criarOrcamento({ cliente_id: clienteB, vendedor_id: vendedor, fechado_em: 'now', total: 500, itens: [{ codigo: 'VT8', quantidade: 1, medida: 1, total: 500 }] });
    const orcHoje = (await queryOne<{ id: number }>('select max(id) as id from orcamento'))!.id;
    await query(
      `insert into ordem_producao (filial_id, numero, orcamento_id, status, previsao_entrega) values
       (1, 1, $1, 'aguardando', current_date - 2), (1, 2, $1, 'em_producao', current_date + 5), (1, 3, $1, 'concluida', current_date - 9)`,
      [orcHoje],
    );
    await fin('POST', '/pagar', { descricao: 'Fornecedor X', valor_total: 250, primeiro_vencimento: hoje });

    const res = await get('/painel');
    expect(res.statusCode).toBe(200);
    const p = res.json();
    expect(p.hoje).toBe(hoje);
    expect(p.vendas_hoje).toEqual({ quantidade: antes.vendas_hoje.quantidade + 1, total: antes.vendas_hoje.total + 500 });
    expect(p.vendas_mes.quantidade).toBe(antes.vendas_mes.quantidade + 1);
    expect(p.ticket_medio).toBe(Math.round((p.vendas_mes.total / p.vendas_mes.quantidade) * 100) / 100);
    expect(p.orcamentos_abertos).toEqual({ quantidade: 1, total: 300 });
    expect(p.orcamentos_aprovados).toEqual({ quantidade: 1, total: 200 });
    expect(p.receber_vencido).toEqual({ quantidade: 1, total: 200 });
    expect(p.pagar_7_dias).toEqual({ quantidade: 1, total: 250 });
    expect(p.producao).toEqual({ em_andamento: 2, aguardando: 1, em_producao: 1, atrasadas: 1 });
    expect(p.ultimos_orcamentos).toHaveLength(5);
    expect(p.ultimos_orcamentos[0]).toMatchObject({ id: orcHoje, cliente_nome: 'Cliente B', status: 'fechado', total: 500 });
  });
});
