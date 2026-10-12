import { beforeAll, describe, expect, it } from 'vitest';
import { query, queryOne, type Db } from '../src/lib/db.js';
import { OrcamentoService } from '../src/modules/orcamentos/orcamento.service.js';
import type { Ports, ProjetosPort } from '../src/modules/orcamentos/ports.js';
import type { BaixaContaReceberInput, GerarContasReceberInput, MovimentoEstoqueInput } from '../src/shared/contracts.js';
import { login, useTestApp } from './helpers.js';

const id = async (sql: string, params: unknown[] = []) => (await queryOne<{ id: number }>(sql, params))!.id;

describe('orçamentos', () => {
  const t = useTestApp();
  const ids = {} as { cliente: number; cliente2: number; vendedor: number; revenda: number; vt8: number; kit: number; lap: number; inst: number; box: number; filial: number };
  const cookies = {} as { vendedor: string; financeiro: string; producao: string };

  type Metodo = 'GET' | 'POST' | 'PUT' | 'DELETE';
  const req = (method: Metodo, url: string, payload?: unknown, cookie = cookies.vendedor) =>
    t.app.inject({ method, url: `/api/orcamentos${url}`, payload: payload as object, headers: { cookie } });
  const ok = async (method: Metodo, url: string, payload?: unknown) => {
    const res = await req(method, url, payload);
    if (res.statusCode >= 300) throw new Error(`${method} ${url} -> ${res.statusCode}: ${res.body}`);
    return res.json();
  };
  const novo = (extra: Record<string, unknown> = {}) => ok('POST', '/', { cliente_id: ids.cliente, vendedor_id: ids.vendedor, ...extra });

  beforeAll(async () => {
    ids.filial = await id('select min(id) as id from filial');
    ids.cliente = await id(`select id from pessoa where nome = 'Consumidor Final'`);
    ids.cliente2 = await id(`insert into pessoa (tipo, nome, cidade, uf) values ('ambos', 'Maria Vidros Teste', 'Campinas', 'SP') returning id`);
    ids.vendedor = await id(`select id from funcionario where vendedor limit 1`);
    ids.revenda = await id(`select id from tabela_preco where nome = 'Revenda'`);
    for (const [k, cod] of [['vt8', 'VT8'], ['kit', 'KITBOX'], ['lap', 'LAP'], ['inst', 'INST']] as const) {
      ids[k] = await id('select id from produto where codigo = $1', [cod]);
    }
    ids.box = await id(`select id from projeto where nome = 'Box frontal 2 folhas'`);
    cookies.vendedor = await login(t.app, 'vendedor');
    cookies.financeiro = await login(t.app, 'financeiro');
    cookies.producao = await login(t.app, 'producao');
  });

  describe('cabeçalho', () => {
    it('cria com número sequencial por filial e status aberto', async () => {
      const a = await novo({ validade: '2026-12-31', observacoes: 'Primeiro' });
      const b = await novo();
      expect(a).toMatchObject({ status: 'aberto', destino: 'producao', total: 0, validade: '2026-12-31', observacoes: 'Primeiro', vendedor_nome: 'Vendedor Padrão' });
      expect(a.cliente).toMatchObject({ id: ids.cliente, nome: 'Consumidor Final' });
      expect(a.filial).toMatchObject({ nome: 'Matriz' });
      expect(b.numero).toBe(a.numero + 1);
      expect(a.itens).toEqual([]);
    });

    it('valida referências e dados (400)', async () => {
      expect((await req('POST', '/', { cliente_id: 999999 })).statusCode).toBe(400);
      const fornecedor = await id(`select id from pessoa where tipo = 'fornecedor' limit 1`);
      expect((await req('POST', '/', { cliente_id: fornecedor })).json().error).toMatch(/cliente/);
      expect((await req('POST', '/', { cliente_id: ids.cliente, destino: 'marte' })).statusCode).toBe(400);
      expect((await req('POST', '/', { cliente_id: ids.cliente, desconto_pct: 120 })).statusCode).toBe(400);
      expect((await req('GET', '/999999')).statusCode).toBe(404);
    });

    it('edita o cabeçalho parcialmente', async () => {
      const o = await novo();
      const e = await ok('PUT', `/${o.id}`, { contato: 'João', destino: 'balcao', prazo_entrega: '2026-11-01' });
      expect(e).toMatchObject({ contato: 'João', destino: 'balcao', prazo_entrega: '2026-11-01', vendedor_id: ids.vendedor });
    });
  });

  describe('itens e totais', () => {
    let orc: { id: number };
    beforeAll(async () => {
      orc = await novo();
    });

    it('calcula o item M2 no servidor com arredondamento e preço sugerido', async () => {
      const r = await req('POST', `/${orc.id}/itens`, { produto_id: ids.vt8, ambiente: 'Banheiro', largura_mm: 1001, altura_mm: 1999, quantidade: 2, total: 1, medida_cobrada: 99 });
      expect(r.statusCode).toBe(201);
      const o = r.json();
      expect(o.itens).toHaveLength(1);
      expect(o.itens[0]).toMatchObject({
        seq: 1, descricao: 'Vidro temperado incolor 8 mm', ambiente: 'Banheiro', unidade: 'M2',
        largura_calc_mm: 1050, altura_calc_mm: 2000, medida_cobrada: 4.2, preco_unitario: 280, total: 1176,
      });
      expect(o).toMatchObject({ subtotal: 1176, total: 1176 });
    });

    it('aceita preço editado, unidade e perímetro', async () => {
      await ok('POST', `/${orc.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 200 });
      const o = await ok('POST', `/${orc.id}/itens`, { produto_id: ids.lap, largura_mm: 1000, altura_mm: 500, quantidade: 1, descricao: 'Lapidação do espelho' });
      expect(o.itens[1]).toMatchObject({ seq: 2, unidade: 'UN', medida_cobrada: 1, preco_unitario: 200, total: 200 });
      expect(o.itens[2]).toMatchObject({ seq: 3, descricao: 'Lapidação do espelho', medida_cobrada: 3, total: 36 });
      expect(o.subtotal).toBe(1412);
    });

    it('edita item recalculando e remove item', async () => {
      const o0 = await ok('GET', `/${orc.id}`);
      const kitItem = o0.itens[1];
      const o1 = await ok('PUT', `/${orc.id}/itens/${kitItem.id}`, { quantidade: 2, desconto_valor: 10 });
      expect(o1.itens[1]).toMatchObject({ quantidade: 2, preco_unitario: 200, desconto_valor: 10, total: 390 });
      expect(o1.subtotal).toBe(1602);
      const o2 = await ok('DELETE', `/${orc.id}/itens/${o0.itens[2].id}`);
      expect(o2.itens).toHaveLength(2);
      expect(o2.subtotal).toBe(1566);
      expect((await req('DELETE', `/${orc.id}/itens/999999`)).statusCode).toBe(404);
    });

    it('rejeita item inválido (400)', async () => {
      expect((await req('POST', `/${orc.id}/itens`, { produto_id: ids.vt8, quantidade: 1 })).json().error).toMatch(/largura e altura/);
      expect((await req('POST', `/${orc.id}/itens`, { produto_id: 999999, quantidade: 1 })).statusCode).toBe(400);
      expect((await req('POST', `/${orc.id}/itens`, { produto_id: ids.kit, quantidade: 0 })).statusCode).toBe(400);
      expect((await req('POST', `/${orc.id}/itens`, { produto_id: ids.kit, quantidade: 1, desconto_valor: 500 })).statusCode).toBe(400);
    });

    it('aplica desconto %, desconto em valor, acréscimo e frete', async () => {
      const a = await ok('PUT', `/${orc.id}`, { desconto_pct: 10, acrescimo_valor: 20, frete_valor: 50 });
      expect(a).toMatchObject({ subtotal: 1566, desconto_valor: 156.6, total: 1479.4 });
      expect(a.totais).toEqual({ subtotal: 1566, desconto: 156.6, acrescimo: 20, frete: 50, total: 1479.4 });
      const b = await ok('PUT', `/${orc.id}`, { desconto_pct: 0, desconto_valor: 66 });
      expect(b).toMatchObject({ desconto_valor: 66, total: 1570 });
    });

    it('usa o preço da tabela do orçamento', async () => {
      const o = await novo({ tabela_preco_id: ids.revenda });
      const r = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      expect(r.itens[0].preco_unitario).toBe(178.5);
      expect(r.tabela_preco_nome).toBe('Revenda');
    });
  });

  describe('projetos no orçamento', () => {
    let orc: { id: number };
    beforeAll(async () => {
      orc = await novo();
      await ok('POST', `/${orc.id}/itens`, { produto_id: ids.inst, quantidade: 1 });
    });

    it('prévia não grava', async () => {
      const p = await ok('POST', `/${orc.id}/projetos/previa`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: 1900, vidro_produto_id: ids.vt8 });
      expect(p.itens).toHaveLength(3);
      expect(p.total).toBe(1061.2);
      expect((await ok('GET', `/${orc.id}`)).itens).toHaveLength(1);
    });

    it('expande o projeto em itens ligados e soma no total', async () => {
      const o = await ok('POST', `/${orc.id}/projetos`, { projeto_id: ids.box, ambiente: 'Banheiro', largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 1, vidro_produto_id: ids.vt8 });
      expect(o.projetos).toHaveLength(1);
      const op = o.projetos[0];
      expect(op).toMatchObject({ projeto_nome: 'Box frontal 2 folhas', descricao: 'Box frontal 2 folhas', vidro_nome: 'Vidro temperado incolor 8 mm', total: 1061.2 });
      const doProjeto = o.itens.filter((i: { orcamento_projeto_id: number | null }) => i.orcamento_projeto_id === op.id);
      expect(doProjeto).toEqual([
        expect.objectContaining({ descricao: 'Folha fixa - Vidro temperado incolor 8 mm', ambiente: 'Banheiro', largura_mm: 775, altura_mm: 1890, largura_calc_mm: 800, altura_calc_mm: 1900, medida_cobrada: 1.52, total: 425.6 }),
        expect.objectContaining({ descricao: 'Folha móvel - Vidro temperado incolor 8 mm', largura_mm: 775, altura_mm: 1870, total: 425.6 }),
        expect.objectContaining({ produto_id: ids.kit, quantidade: 1, largura_mm: null, total: 210 }),
      ]);
      expect(o.subtotal).toBe(1211.2);

      // Editar uma peça do projeto atualiza o total do projeto
      const o2 = await ok('PUT', `/${orc.id}/itens/${doProjeto[2].id}`, { preco_unitario: 100 });
      expect(o2.projetos[0].total).toBe(951.2);
    });

    it('quantidade do projeto multiplica as peças', async () => {
      const o = await novo();
      const r = await ok('POST', `/${o.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 3, vidro_produto_id: ids.vt8 });
      expect(r.itens.map((i: { quantidade: number }) => i.quantidade)).toEqual([3, 3, 3]);
      expect(r.total).toBe(3183.6);
    });

    it('erros de projeto (400/404)', async () => {
      expect((await req('POST', `/${orc.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: 1900 })).json().error).toMatch(/vidro/);
      expect((await req('POST', `/${orc.id}/projetos`, { projeto_id: 999999, largura_vao_mm: 1500, altura_vao_mm: 1900 })).statusCode).toBe(404);
      expect((await req('DELETE', `/${orc.id}/projetos/999999`)).statusCode).toBe(404);
    });

    it('remove o projeto e seus itens', async () => {
      const o = await ok('GET', `/${orc.id}`);
      const r = await ok('DELETE', `/${orc.id}/projetos/${o.projetos[0].id}`);
      expect(r.projetos).toHaveLength(0);
      expect(r.itens).toHaveLength(1);
      expect(r.total).toBe(150);
    });
  });

  describe('fluxo de status e bloqueios', () => {
    it('aprovar exige itens e bloqueia edição de itens e valores (409)', async () => {
      const o = await novo();
      expect((await req('POST', `/${o.id}/aprovar`)).statusCode).toBe(400);
      const comItem = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      const ap = await ok('POST', `/${o.id}/aprovar`);
      expect(ap.status).toBe('aprovado');
      expect(ap.itens_editaveis).toBe(false);
      expect((await req('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 })).statusCode).toBe(409);
      expect((await req('PUT', `/${o.id}/itens/${comItem.itens[0].id}`, { quantidade: 3 })).statusCode).toBe(409);
      expect((await req('DELETE', `/${o.id}/itens/${comItem.itens[0].id}`)).statusCode).toBe(409);
      expect((await req('POST', `/${o.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 1, altura_vao_mm: 1 })).statusCode).toBe(409);
      expect((await req('PUT', `/${o.id}`, { frete_valor: 10 })).statusCode).toBe(409);
      expect((await req('POST', `/${o.id}/aprovar`)).statusCode).toBe(409);
      // campos não financeiros continuam editáveis
      expect((await ok('PUT', `/${o.id}`, { observacoes: 'Entregar pela manhã', frete_valor: 0 })).observacoes).toBe('Entregar pela manhã');
    });

    it('cancelar a partir de aberto e aprovado; cancelado e fechado são finais', async () => {
      const a = await novo();
      expect((await ok('POST', `/${a.id}/cancelar`)).status).toBe('cancelado');
      expect((await req('POST', `/${a.id}/cancelar`)).statusCode).toBe(409);
      expect((await req('POST', `/${a.id}/aprovar`)).statusCode).toBe(409);
      expect((await req('PUT', `/${a.id}`, { observacoes: 'x' })).statusCode).toBe(409);
      const log = await queryOne(`select * from log_sistema where acao = 'cancelar_orcamento' and entidade_id = $1`, [a.id]);
      expect(log).toBeTruthy();
    });

    it('fechar só depois de aprovado (409)', async () => {
      const o = await novo();
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      const r = await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'pix', parcelas: [{ vencimento: '2026-10-12', valor: 210 }] });
      expect(r.statusCode).toBe(409);
    });
  });

  describe('fechamento', () => {
    const hoje = async () => (await queryOne<{ d: string }>('select current_date as d'))!.d;

    it('parcelas que não somam o total → 400 sem efeitos', async () => {
      const o = await novo();
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      await ok('POST', `/${o.id}/aprovar`);
      const r = await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'boleto', parcelas: [{ vencimento: '2026-11-10', valor: 100 }, { vencimento: '2026-12-10', valor: 100 }] });
      expect(r.statusCode).toBe(400);
      expect(r.json().error).toMatch(/somam/);
      expect((await ok('GET', `/${o.id}`)).status).toBe('aprovado');
      expect(await queryOne('select 1 from conta_receber where orcamento_id = $1', [o.id])).toBeUndefined();
      expect((await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'boleto', parcelas: [] })).statusCode).toBe(400);
      expect((await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'troca', parcelas: [{ vencimento: '2026-11-10', valor: 210 }] })).statusCode).toBe(400);
    });

    it('à vista: conta baixada, caixa, estoque negativo e ordem de produção', async () => {
      const o = await novo({ destino: 'producao' });
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.vt8, largura_mm: 1000, altura_mm: 1000, quantidade: 2 }); // 2 m² = 560
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 }); // 210
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.inst, quantidade: 1 }); // serviço: 150
      await ok('POST', `/${o.id}/aprovar`);
      const d = await hoje();
      const f = await ok('POST', `/${o.id}/fechar`, { forma_pagamento: 'pix', parcelas: [{ vencimento: d, valor: 920.005 }] });
      expect(f).toMatchObject({ status: 'fechado', forma_pagamento: 'pix', total: 920 });
      expect(f.fechado_em).toBeTruthy();
      expect(f.parcelas).toEqual([expect.objectContaining({ numero: 1, vencimento: d, valor: 920, forma_pagamento: 'pix' })]);

      const contas = await query('select * from conta_receber where orcamento_id = $1', [o.id]);
      expect(contas).toHaveLength(1);
      expect(contas[0]).toMatchObject({ valor: 920, valor_pago: 920, status: 'pago', documento: `ORC ${f.numero}`, cliente_id: ids.cliente });
      const caixa = await query('select * from caixa_lancamento where conta_receber_id = $1', [contas[0].id]);
      expect(caixa).toEqual([expect.objectContaining({ tipo: 'entrada', valor: 920, forma_pagamento: 'pix' })]);

      const mov = await query('select produto_id, tipo, origem, quantidade from estoque_movimento where referencia_id = $1 order by produto_id', [o.id]);
      expect(mov).toEqual(
        expect.arrayContaining([
          { produto_id: ids.vt8, tipo: 'saida', origem: 'venda', quantidade: -2 },
          { produto_id: ids.kit, tipo: 'saida', origem: 'venda', quantidade: -1 },
        ]),
      );
      expect(mov.some((m) => m.produto_id === ids.inst)).toBe(false);

      const op = await queryOne('select * from ordem_producao where orcamento_id = $1', [o.id]);
      expect(op).toBeTruthy();
      expect(await queryOne(`select * from log_sistema where acao = 'fechar_orcamento' and entidade_id = $1`, [o.id])).toBeTruthy();

      // fechado é final
      expect((await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'pix', parcelas: [{ vencimento: d, valor: 920 }] })).statusCode).toBe(409);
      expect((await req('POST', `/${o.id}/cancelar`)).statusCode).toBe(409);
      expect((await req('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 })).statusCode).toBe(409);
    });

    it('a prazo em parcelas: contas em aberto, sem caixa; balcão não gera ordem', async () => {
      const o = await novo({ destino: 'balcao' });
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 100 });
      await ok('POST', `/${o.id}/aprovar`);
      const f = await ok('POST', `/${o.id}/fechar`, {
        forma_pagamento: 'boleto',
        parcelas: [{ vencimento: '2026-11-10', valor: 33.34 }, { vencimento: '2026-12-10', valor: 33.33 }, { vencimento: '2027-01-10', valor: 33.33 }],
      });
      expect(f.parcelas.map((p: { numero: number }) => p.numero)).toEqual([1, 2, 3]);
      const contas = await query('select parcela, valor, status, valor_pago from conta_receber where orcamento_id = $1 order by parcela', [o.id]);
      expect(contas).toEqual([
        { parcela: 1, valor: 33.34, status: 'aberto', valor_pago: 0 },
        { parcela: 2, valor: 33.33, status: 'aberto', valor_pago: 0 },
        { parcela: 3, valor: 33.33, status: 'aberto', valor_pago: 0 },
      ]);
      expect(await queryOne('select 1 from caixa_lancamento cl join conta_receber cr on cr.id = cl.conta_receber_id where cr.orcamento_id = $1', [o.id])).toBeUndefined();
      expect(await queryOne('select 1 from ordem_producao where orcamento_id = $1', [o.id])).toBeUndefined();
    });

    it('entrada à vista + saldo no boleto: só a parcela à vista é baixada', async () => {
      const o = await novo({ destino: 'instalacao' });
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 300 });
      await ok('POST', `/${o.id}/aprovar`);
      await ok('POST', `/${o.id}/fechar`, {
        forma_pagamento: 'boleto',
        parcelas: [{ vencimento: await hoje(), valor: 100, forma_pagamento: 'dinheiro' }, { vencimento: '2026-12-10', valor: 200 }],
      });
      const contas = await query('select parcela, status, forma_pagamento from conta_receber where orcamento_id = $1 order by parcela', [o.id]);
      expect(contas).toEqual([
        { parcela: 1, status: 'pago', forma_pagamento: 'dinheiro' },
        { parcela: 2, status: 'aberto', forma_pagamento: 'boleto' },
      ]);
    });
  });

  describe('listagem, duplicação e permissões', () => {
    it('filtra por número, cliente, status, período e vendedor', async () => {
      const m = await novo({ cliente_id: ids.cliente2, data_emissao: '2026-01-15' });
      const porNumero = await ok('GET', `/?q=${m.numero}`);
      expect(porNumero.items.map((i: { id: number }) => i.id)).toContain(m.id);
      const porCliente = await ok('GET', '/?q=maria');
      expect(porCliente.items.every((i: { cliente_nome: string }) => i.cliente_nome === 'Maria Vidros Teste')).toBe(true);
      expect(porCliente.total).toBe(1);
      const periodo = await ok('GET', '/?data_ini=2026-01-01&data_fim=2026-01-31');
      expect(periodo.items.map((i: { id: number }) => i.id)).toEqual([m.id]);
      const cancelados = await ok('GET', '/?status=cancelado');
      expect(cancelados.items.every((i: { status: string }) => i.status === 'cancelado')).toBe(true);
      expect(cancelados.total).toBeGreaterThan(0);
      expect((await ok('GET', `/?vendedor_id=${ids.vendedor}&pageSize=5`)).items).toHaveLength(5);
      expect((await req('GET', '/?status=xx')).statusCode).toBe(400);
    });

    it('duplica como novo orçamento aberto, com projetos e itens', async () => {
      const o = await novo({ desconto_pct: 5, frete_valor: 30 });
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 199.9 });
      await ok('POST', `/${o.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: 1900, vidro_produto_id: ids.vt8 });
      const original = await ok('POST', `/${o.id}/cancelar`);
      const res = await req('POST', `/${o.id}/duplicar`);
      expect(res.statusCode).toBe(201);
      const c = res.json();
      expect(c.id).not.toBe(o.id);
      expect(c.numero).toBeGreaterThan(o.numero);
      expect(c).toMatchObject({ status: 'aberto', desconto_pct: 5, frete_valor: 30, total: original.total, subtotal: original.subtotal });
      expect(c.itens).toHaveLength(4);
      expect(c.projetos).toHaveLength(1);
      expect(c.projetos[0].id).not.toBe(original.projetos[0].id);
      expect(c.itens.filter((i: { orcamento_projeto_id: number }) => i.orcamento_projeto_id === c.projetos[0].id)).toHaveLength(3);
      expect(c.itens[0].preco_unitario).toBe(199.9);
    });

    it('produção não acessa; financeiro só lê', async () => {
      expect((await req('POST', '/', { cliente_id: ids.cliente }, cookies.producao)).statusCode).toBe(403);
      expect((await req('GET', '/', undefined, cookies.producao)).statusCode).toBe(403);
      expect((await req('GET', '/', undefined, cookies.financeiro)).statusCode).toBe(200);
      expect((await req('POST', '/', { cliente_id: ids.cliente }, cookies.financeiro)).statusCode).toBe(403);
      expect((await req('POST', '/', { cliente_id: ids.cliente }, t.cookie)).statusCode).toBe(201); // admin
    });
  });

  describe('OrcamentoService com portas falsas', () => {
    it('fecha chamando as portas na ordem e na mesma transação', async () => {
      const chamadas: string[] = [];
      const conexoes = new Set<Db>();
      const ports: Ports = {
        estoque: {
          registrarMovimento: async (db: Db, m: MovimentoEstoqueInput) => { conexoes.add(db); chamadas.push(`estoque:${m.tipo}:${m.quantidade}`); return 1; },
          saldo: async () => 0,
        },
        financeiro: {
          gerarContasReceber: async (db: Db, a: GerarContasReceberInput) => { conexoes.add(db); chamadas.push(`receber:${a.parcelas.length}`); return a.parcelas.map((_, i) => 1000 + i); },
          baixarContaReceber: async (db: Db, a: BaixaContaReceberInput) => { conexoes.add(db); chamadas.push(`baixa:${a.id}:${a.valor}`); },
        },
        producao: { criarOrdemProducao: async (db: Db) => { conexoes.add(db); chamadas.push('producao'); return 77; } },
      };
      const projetos: ProjetosPort = {
        expandir: async () => ({ id: 1, nome: 'Fake', pecas: [{ descricao: 'Peça', tipo: 'vidro', produto_id: ids.vt8, quantidade: 1, largura_mm: 500, altura_mm: 500 }] }),
      };
      const service = new OrcamentoService(ports, projetos);
      const u = { id: (await queryOne<{ id: number }>(`select id from usuario where login = 'admin'`))!.id, filial_id: ids.filial };

      const o = await service.criar(u, { cliente_id: ids.cliente, vendedor_id: null, tabela_preco_id: null, validade: null, prazo_entrega: null, destino: 'producao',
        contato: null, endereco_entrega: null, observacoes: null, desconto_pct: 0, desconto_valor: 0, acrescimo_valor: 0, frete_valor: 0 });
      const comProjeto = await service.adicionarProjeto(u, o.id, { projeto_id: 1, descricao: null, ambiente: 'Sala', largura_vao_mm: 1000, altura_vao_mm: 1000, quantidade: 1, vidro_produto_id: null });
      expect(comProjeto.itens[0]).toMatchObject({ descricao: 'Peça - Vidro temperado incolor 8 mm', medida_cobrada: 0.25, total: 70 });
      await service.aprovar(u, o.id);
      const f = await service.fechar(u, o.id, { forma_pagamento: 'dinheiro', parcelas: [{ vencimento: '2026-10-12', valor: 70 }] });

      expect(f.status).toBe('fechado');
      expect(chamadas).toEqual(['receber:1', 'baixa:1000:70', 'estoque:saida:0.25', 'producao']);
      expect(conexoes.size).toBe(1);
    });

    it('falha numa porta desfaz todo o fechamento', async () => {
      const falha: Ports = {
        estoque: { registrarMovimento: async () => { throw new Error('estoque indisponível'); }, saldo: async () => 0 },
        financeiro: { gerarContasReceber: async () => [1], baixarContaReceber: async () => {} },
        producao: { criarOrdemProducao: async () => null },
      };
      const service = new OrcamentoService(falha, { expandir: async () => ({ id: 0, nome: '', pecas: [] }) });
      const u = { id: (await queryOne<{ id: number }>(`select id from usuario where login = 'admin'`))!.id, filial_id: ids.filial };
      const o = await novo();
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      await ok('POST', `/${o.id}/aprovar`);
      await expect(service.fechar(u, o.id, { forma_pagamento: 'boleto', parcelas: [{ vencimento: '2026-11-10', valor: 210 }] })).rejects.toThrow(/estoque/);
      const depois = await ok('GET', `/${o.id}`);
      expect(depois.status).toBe('aprovado');
      expect(depois.parcelas).toEqual([]);
    });
  });
});
