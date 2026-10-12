import { beforeAll, describe, expect, it } from 'vitest';
import { query, queryOne, type Db } from '../src/lib/db.js';
import { OrcamentoService } from '../src/modules/orcamentos/orcamento.service.js';
import type { Ports } from '../src/modules/orcamentos/ports.js';
import { arredondarDinheiro } from '../src/shared/numeros.js';
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

  describe('regressões da revisão', () => {
    const umMil = async () => {
      const o = await novo();
      await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 1000 });
      return o;
    };

    it('desconto %: zerar ou mudar o % sem informar o valor recalcula', async () => {
      const o = await umMil();
      expect(await ok('PUT', `/${o.id}`, { desconto_pct: 10 })).toMatchObject({ subtotal: 1000, desconto_valor: 100, total: 900 });
      const zerado = await ok('PUT', `/${o.id}`, { desconto_pct: 0 });
      expect(zerado).toMatchObject({ desconto_pct: 0, desconto_valor: 0, total: 1000 });
      expect(zerado.totais.desconto).toBe(0);
      await ok('PUT', `/${o.id}`, { desconto_pct: 10 });
      expect(await ok('PUT', `/${o.id}`, { desconto_pct: 5 })).toMatchObject({ desconto_valor: 50, total: 950 });
      // o desconto derivado acompanha os itens
      const comItem = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 1000 });
      expect(comItem).toMatchObject({ subtotal: 2000, desconto_valor: 100, total: 1900 });
      // só o valor: passa ao modo R$
      expect(await ok('PUT', `/${o.id}`, { desconto_valor: 30 })).toMatchObject({ desconto_pct: 0, desconto_valor: 30, total: 1970 });
      // mexer em outro campo não altera o desconto
      expect(await ok('PUT', `/${o.id}`, { frete_valor: 10 })).toMatchObject({ desconto_pct: 0, desconto_valor: 30, total: 1980 });
    });

    it('desconto %: reenviar o mesmo % num orçamento aprovado não é alteração financeira', async () => {
      const o = await umMil();
      await ok('PUT', `/${o.id}`, { desconto_pct: 10 });
      await ok('POST', `/${o.id}/aprovar`);
      expect((await req('PUT', `/${o.id}`, { desconto_pct: 10, observacoes: 'ok' })).statusCode).toBe(200);
      expect((await req('PUT', `/${o.id}`, { desconto_pct: 10, desconto_valor: 0 })).statusCode).toBe(200);
      expect((await req('PUT', `/${o.id}`, { desconto_pct: 0 })).statusCode).toBe(409);
      expect((await ok('GET', `/${o.id}`))).toMatchObject({ desconto_pct: 10, total: 900 });
    });

    it('fechamento não baixa estoque de serviço, mesmo com controla_estoque', async () => {
      await query('update produto set controla_estoque = true where id = $1', [ids.inst]);
      try {
        const o = await novo({ destino: 'balcao' });
        await ok('POST', `/${o.id}/itens`, { produto_id: ids.inst, quantidade: 1 });
        await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
        const ap = await ok('POST', `/${o.id}/aprovar`);
        await ok('POST', `/${o.id}/fechar`, { forma_pagamento: 'boleto', parcelas: [{ vencimento: '2026-12-10', valor: ap.total }] });
        const mov = await query<{ produto_id: number }>('select produto_id from estoque_movimento where referencia_id = $1 and origem = $2', [o.id, 'venda']);
        expect(mov.map((m) => m.produto_id)).toEqual([ids.kit]);
      } finally {
        await query('update produto set controla_estoque = false where id = $1', [ids.inst]);
      }
    });

    it('schemas: datas inexistentes, medidas, quantidades e valores fora do limite dão 400', async () => {
      const o = await novo();
      const casos: [Metodo, string, unknown][] = [
        ['POST', '/', { cliente_id: ids.cliente, validade: '2026-02-31' }],
        ['POST', '/', { cliente_id: ids.cliente, data_emissao: '2026-13-01' }],
        ['POST', '/', { cliente_id: 3_000_000_000 }],
        ['POST', '/', { cliente_id: ids.cliente, frete_valor: 1e13 }],
        ['PUT', `/${o.id}`, { prazo_entrega: '2026-04-31' }],
        ['PUT', `/${o.id}`, { desconto_valor: -1 }],
        ['GET', '/?data_ini=2026-02-30', undefined],
        ['GET', '/99999999999', undefined],
        ['POST', `/${o.id}/itens`, { produto_id: ids.vt8, quantidade: 1, largura_mm: 3_000_000_000, altura_mm: 1000 }],
        ['POST', `/${o.id}/itens`, { produto_id: ids.vt8, quantidade: 1, largura_mm: 1000.5, altura_mm: 1000 }],
        ['POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1e12 }],
        ['POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 1e11 }],
        ['POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: -5 }],
        ['POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1e8, preco_unitario: 1e6 }],
        ['POST', `/${o.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 3_000_000_000, altura_vao_mm: 1900, vidro_produto_id: ids.vt8 }],
        ['POST', `/${o.id}/projetos`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 1e9, vidro_produto_id: ids.vt8 }],
        ['POST', `/${o.id}/projetos/previa`, { projeto_id: ids.box, largura_vao_mm: 1500, altura_vao_mm: -1, vidro_produto_id: ids.vt8 }],
      ];
      for (const [m, url, body] of casos) expect((await req(m, url, body)).statusCode, `${m} ${url} ${JSON.stringify(body)}`).toBe(400);
      const comItem = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      const itemId = comItem.itens[0].id;
      expect((await req('PUT', `/${o.id}/itens/${itemId}`, { largura_mm: 3_000_000_000 })).statusCode).toBe(400);
      expect((await req('PUT', `/${o.id}/itens/${itemId}`, { quantidade: 1e12 })).statusCode).toBe(400);
      const ap = await ok('POST', `/${o.id}/aprovar`);
      expect((await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'pix', parcelas: [{ vencimento: '2026-02-29', valor: ap.total }] })).statusCode).toBe(400);
      expect((await req('POST', `/${o.id}/fechar`, { forma_pagamento: 'pix', parcelas: [{ vencimento: '2026-10-12', valor: 1e13 }] })).statusCode).toBe(400);
      expect((await ok('GET', `/${o.id}`)).status).toBe('aprovado');
    });

    it('precisão: entradas arredondadas antes do cálculo; total bate com o gravado', async () => {
      const o = await novo();
      const a = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1, preco_unitario: 10.075 });
      expect(a.itens[0]).toMatchObject({ preco_unitario: 10.075, total: 10.08 });
      const b = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1.0005, preco_unitario: 100 });
      expect(b.itens[1]).toMatchObject({ quantidade: 1.001, medida_cobrada: 1.001, total: 100.1 });
      const c = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1000, preco_unitario: 10.00005 });
      expect(c.itens[2]).toMatchObject({ preco_unitario: 10.0001, total: 10000.1 });
      const gravados = await query<{ quantidade: number; preco_unitario: number; desconto_valor: number; medida_cobrada: number; total: number }>(
        'select quantidade, preco_unitario, desconto_valor, medida_cobrada, total from orcamento_item where orcamento_id = $1 order by seq', [o.id],
      );
      for (const g of gravados) expect(g.total).toBe(arredondarDinheiro(g.medida_cobrada * g.preco_unitario - g.desconto_valor));
      expect(c.subtotal).toBe(10110.28);
    });

    it('recusa produto inativo no item e projeto ou peça inativos no orçamento (400)', async () => {
      const inativo = await id(`insert into produto (codigo, nome, unidade_venda, preco_venda, ativo) values ('INAT1', 'Produto inativo', 'UN', 10, false) returning id`);
      const vidroInativo = await id(`insert into produto (codigo, nome, unidade_venda, preco_venda, ativo) values ('INAT2', 'Vidro inativo', 'M2', 100, false) returning id`);
      const projetoInativo = await id(`insert into projeto (nome, ativo) values ('Projeto desativado', false) returning id`);
      await query(`insert into projeto_item (projeto_id, descricao, tipo, produto_id, quantidade) values ($1, 'Kit', 'ferragem', $2, 1)`, [projetoInativo, ids.kit]);
      const projetoComPecaInativa = await id(`insert into projeto (nome) values ('Projeto com peça inativa') returning id`);
      await query(`insert into projeto_item (projeto_id, descricao, tipo, produto_id, quantidade) values ($1, 'Peça', 'ferragem', $2, 1)`, [projetoComPecaInativa, inativo]);

      const o = await novo();
      const r1 = await req('POST', `/${o.id}/itens`, { produto_id: inativo, quantidade: 1 });
      expect(r1.statusCode).toBe(400);
      expect(r1.json().error).toMatch(/inativo/);
      const comItem = await ok('POST', `/${o.id}/itens`, { produto_id: ids.kit, quantidade: 1 });
      const itemId = comItem.itens[0].id;
      expect((await req('PUT', `/${o.id}/itens/${itemId}`, { produto_id: inativo })).statusCode).toBe(400);

      const vao = { largura_vao_mm: 1500, altura_vao_mm: 1900 };
      for (const url of [`/${o.id}/projetos`, `/${o.id}/projetos/previa`]) {
        const p1 = await req('POST', url, { projeto_id: projetoInativo, ...vao });
        expect(p1.statusCode, url).toBe(400);
        expect(p1.json().error).toMatch(/Projeto desativado está inativo/);
        expect((await req('POST', url, { projeto_id: projetoComPecaInativa, ...vao })).json().error).toMatch(/Peça: produto INAT1 - Produto inativo está inativo/);
        expect((await req('POST', url, { projeto_id: ids.box, ...vao, vidro_produto_id: vidroInativo })).statusCode, url).toBe(400);
      }
      const depois = await ok('GET', `/${o.id}`);
      expect(depois.itens).toHaveLength(1);
      expect(depois.projetos).toHaveLength(0);

      // item já gravado continua editável se o produto for desativado depois
      await query('update produto set ativo = false where id = $1', [ids.kit]);
      try {
        expect((await ok('PUT', `/${o.id}/itens/${itemId}`, { quantidade: 2 })).itens[0].quantidade).toBe(2);
      } finally {
        await query('update produto set ativo = true where id = $1', [ids.kit]);
      }
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
        // o service recebe só `ports` e usa ports.projetos (não há segunda dependência no construtor)
        projetos: {
          expandir: async () => ({ id: 1, nome: 'Fake', pecas: [{ descricao: 'Peça', tipo: 'vidro', produto_id: ids.vt8, quantidade: 1, largura_mm: 500, altura_mm: 500 }] }),
        },
        catalogo: { atualizarCusto: async () => {} },
      };
      const service = new OrcamentoService(ports);
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

    it('baixa o estoque em ordem crescente de produto, com itens do mesmo produto juntos (evita deadlock)', async () => {
      const extra = await id(`insert into produto (codigo, nome, unidade_venda, preco_venda, controla_estoque) values ('ORD1', 'Puxador teste', 'UN', 5, true) returning id`);
      const produtos = [extra, ids.kit, ids.vt8].sort((a, b) => b - a); // inclui do maior para o menor id
      const saidas: number[] = [];
      const ports: Ports = {
        estoque: { registrarMovimento: async (_db: Db, m: MovimentoEstoqueInput) => { saidas.push(m.produto_id); return 1; }, saldo: async () => 0 },
        financeiro: { gerarContasReceber: async (_db: Db, a: GerarContasReceberInput) => a.parcelas.map((_, i) => 1 + i), baixarContaReceber: async () => {} },
        producao: { criarOrdemProducao: async () => null },
        projetos: { expandir: async () => ({ id: 0, nome: '', pecas: [] }) },
        catalogo: { atualizarCusto: async () => {} },
      };
      const o = await novo({ destino: 'balcao' });
      for (const pid of [...produtos, produtos[0], produtos[1]]) {
        await ok('POST', `/${o.id}/itens`, { produto_id: pid, quantidade: 1, largura_mm: 1000, altura_mm: 1000 });
      }
      const ap = await ok('POST', `/${o.id}/aprovar`);
      const u = { id: (await queryOne<{ id: number }>(`select id from usuario where login = 'admin'`))!.id, filial_id: ids.filial };
      await new OrcamentoService(ports).fechar(u, o.id, { forma_pagamento: 'boleto', parcelas: [{ vencimento: '2026-12-10', valor: ap.total }] });
      const crescente = [...produtos].sort((a, b) => a - b);
      expect(saidas).toEqual([crescente[0], crescente[1], crescente[1], crescente[2], crescente[2]]);
    });

    it('falha numa porta desfaz todo o fechamento', async () => {
      const falha: Ports = {
        estoque: { registrarMovimento: async () => { throw new Error('estoque indisponível'); }, saldo: async () => 0 },
        financeiro: { gerarContasReceber: async () => [1], baixarContaReceber: async () => {} },
        producao: { criarOrdemProducao: async () => null },
        projetos: { expandir: async () => ({ id: 0, nome: '', pecas: [] }) },
        catalogo: { atualizarCusto: async () => {} },
      };
      const service = new OrcamentoService(falha);
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
