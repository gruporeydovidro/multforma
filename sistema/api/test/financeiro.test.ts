import { beforeAll, describe, expect, it } from 'vitest';
import { query, queryOne, withTx } from '../src/lib/db.js';
import { FinanceiroService } from '../src/modules/financeiro/service.js';
import { login, useTestApp } from './helpers.js';

const somarDias = (iso: string, dias: number) => {
  const d = new Date(`${iso}T12:00:00Z`);
  d.setUTCDate(d.getUTCDate() + dias);
  return d.toISOString().slice(0, 10);
};

describe('financeiro', () => {
  const t = useTestApp();
  let hoje: string;
  let clienteId: number;
  let fornecedorId: number;
  let cookieProducao: string;
  let cookieVendedor: string;
  let cookieFinanceiro: string;

  const req = (method: 'GET' | 'POST' | 'PUT' | 'DELETE', url: string, payload?: unknown, cookie = t.cookie) =>
    t.app.inject({ method, url: `/api/financeiro${url}`, payload: payload as any, headers: { cookie } });

  const novoReceber = async (body: Record<string, unknown>) => {
    const res = await req('POST', '/receber', { cliente_id: clienteId, valor_total: 100, primeiro_vencimento: hoje, ...body });
    expect(res.statusCode, res.body).toBe(201);
    return res.json().items as any[];
  };

  beforeAll(async () => {
    hoje = (await queryOne<{ d: string }>('select current_date as d'))!.d;
    clienteId = (await queryOne<{ id: number }>(`select id from pessoa where tipo = 'cliente' order by id limit 1`))!.id;
    fornecedorId = (await queryOne<{ id: number }>(`select id from pessoa where tipo = 'fornecedor' order by id limit 1`))!.id;
    cookieProducao = await login(t.app, 'producao');
    cookieVendedor = await login(t.app, 'vendedor');
    cookieFinanceiro = await login(t.app, 'financeiro');
  });

  describe('permissões', () => {
    it('perfil producao não acessa o financeiro', async () => {
      for (const url of ['/receber', '/pagar', '/caixa', '/pagar/alerta']) {
        expect((await req('GET', url, undefined, cookieProducao)).statusCode).toBe(403);
      }
    });

    it('vendedor só lê contas a receber', async () => {
      expect((await req('GET', '/receber', undefined, cookieVendedor)).statusCode).toBe(200);
      expect((await req('POST', '/receber', { cliente_id: clienteId, valor_total: 10, primeiro_vencimento: hoje }, cookieVendedor)).statusCode).toBe(403);
      expect((await req('GET', '/pagar', undefined, cookieVendedor)).statusCode).toBe(403);
      expect((await req('GET', '/caixa', undefined, cookieVendedor)).statusCode).toBe(403);
    });

    it('perfil financeiro opera', async () => {
      expect((await req('GET', '/caixa', undefined, cookieFinanceiro)).statusCode).toBe(200);
    });

    it('sem sessão: 401', async () => {
      expect((await t.app.inject({ method: 'GET', url: '/api/financeiro/receber' })).statusCode).toBe(401);
    });
  });

  describe('contas a receber', () => {
    it('cria lançamento avulso em parcelas mensais', async () => {
      const items = await novoReceber({ valor_total: 100, parcelas: 3, primeiro_vencimento: '2026-01-31', documento: 'NF 10', observacao: 'teste' });
      expect(items.map((i) => i.valor)).toEqual([33.33, 33.33, 33.34]);
      expect(items.map((i) => i.vencimento)).toEqual(['2026-01-31', '2026-02-28', '2026-03-31']);
      expect(items.map((i) => i.parcela)).toEqual([1, 2, 3]);
      expect(items[0]).toMatchObject({ status: 'aberto', documento: 'NF 10', observacao: 'teste', cliente_nome: 'Consumidor Final' });
    });

    it('valida a entrada', async () => {
      expect((await req('POST', '/receber', { cliente_id: clienteId, valor_total: -1, primeiro_vencimento: hoje })).statusCode).toBe(400);
      expect((await req('POST', '/receber', { cliente_id: clienteId, valor_total: 10, primeiro_vencimento: '2026-02-30' })).statusCode).toBe(400);
      expect((await req('POST', '/receber', { cliente_id: fornecedorId, valor_total: 10, primeiro_vencimento: hoje })).statusCode).toBe(400);
      expect((await req('POST', '/receber', { cliente_id: 999999, valor_total: 10, primeiro_vencimento: hoje })).statusCode).toBe(400);
    });

    it('baixa parcial e total, com entrada no caixa', async () => {
      const [cr] = await novoReceber({ valor_total: 250 });
      let res = await req('POST', `/receber/${cr.id}/baixar`, { valor: 100, forma_pagamento: 'pix' });
      expect(res.statusCode, res.body).toBe(200);
      expect(res.json()).toMatchObject({ status: 'aberto', valor_pago: 100, saldo: 150, forma_pagamento: 'pix' });

      res = await req('POST', `/receber/${cr.id}/baixar`, { valor: 150.01 });
      expect(res.statusCode).toBe(400);

      res = await req('POST', `/receber/${cr.id}/baixar`, { forma_pagamento: 'dinheiro' });
      expect(res.statusCode).toBe(200);
      const pago = res.json();
      expect(pago).toMatchObject({ status: 'pago', valor_pago: 250, saldo: 0, data_pagamento: hoje });
      expect(pago.pagamentos.map((p: any) => [p.tipo, p.valor])).toEqual([['entrada', 100], ['entrada', 150]]);

      expect((await req('POST', `/receber/${cr.id}/baixar`, { valor: 1 })).statusCode).toBe(409);
      const caixa = await query('select tipo, valor from caixa_lancamento where conta_receber_id = $1 order by id', [cr.id]);
      expect(caixa).toEqual([{ tipo: 'entrada', valor: 100 }, { tipo: 'entrada', valor: 150 }]);
      const log = await query(`select acao from log_sistema where entidade = 'conta_receber' and entidade_id = $1`, [cr.id]);
      expect(log.filter((l) => l.acao === 'baixar_conta_receber')).toHaveLength(2);
    });

    it('cancelamento bloqueado se pago; estorno reabre e lança saída no caixa', async () => {
      const [cr] = await novoReceber({ valor_total: 80 });
      await req('POST', `/receber/${cr.id}/baixar`, { valor: 30 });
      expect((await req('POST', `/receber/${cr.id}/cancelar`, {})).statusCode).toBe(409);

      let res = await req('POST', `/receber/${cr.id}/estornar`);
      expect(res.statusCode, res.body).toBe(200);
      expect(res.json()).toMatchObject({ status: 'aberto', valor_pago: 0, data_pagamento: null });
      const mov = await query('select tipo, valor from caixa_lancamento where conta_receber_id = $1 order by id', [cr.id]);
      expect(mov).toEqual([{ tipo: 'entrada', valor: 30 }, { tipo: 'saida', valor: 30 }]);
      expect((await req('POST', `/receber/${cr.id}/estornar`)).statusCode).toBe(409);

      res = await req('POST', `/receber/${cr.id}/cancelar`, { motivo: 'Desistência' });
      expect(res.statusCode).toBe(200);
      expect(res.json()).toMatchObject({ status: 'cancelado' });
      expect(res.json().observacao).toContain('Cancelado: Desistência');
      expect((await req('POST', `/receber/${cr.id}/cancelar`)).statusCode).toBe(409);
      expect((await req('POST', `/receber/${cr.id}/baixar`, {})).statusCode).toBe(409);
      const log = await queryOne(`select 1 from log_sistema where acao = 'cancelar_conta_receber' and entidade_id = $1`, [cr.id]);
      expect(log).toBeTruthy();
    });

    it('lista com filtros e totais', async () => {
      const outro = (await queryOne<{ id: number }>(
        `insert into pessoa (tipo, nome) values ('ambos', 'Cliente Filtro') returning id`,
      ))!.id;
      const [vencida] = await novoReceber({ cliente_id: outro, valor_total: 40, primeiro_vencimento: somarDias(hoje, -10) });
      const [futura] = await novoReceber({ cliente_id: outro, valor_total: 60, primeiro_vencimento: somarDias(hoje, 5) });
      await req('POST', `/receber/${futura.id}/baixar`, { valor: 20 });

      let res = await req('GET', `/receber?cliente_id=${outro}`);
      expect(res.statusCode).toBe(200);
      let body = res.json();
      expect(body.total).toBe(2);
      expect(body.items.map((i: any) => i.id)).toEqual([vencida.id, futura.id]);
      expect(body.items[0]).toMatchObject({ vencida: true, dias_atraso: 10 });
      expect(body.totais).toMatchObject({ aberto: 80, vencido: 40, qtd_vencido: 1, pago_periodo: 20 });

      res = await req('GET', `/receber?cliente_id=${outro}&vencidas=true`);
      expect(res.json().items.map((i: any) => i.id)).toEqual([vencida.id]);

      res = await req('GET', `/receber?q=filtro&de=${hoje}&ate=${somarDias(hoje, 30)}`);
      body = res.json();
      expect(body.items.map((i: any) => i.id)).toEqual([futura.id]);
      expect(body.totais).toMatchObject({ aberto: 40, vencido: 0, pago_periodo: 20 });

      res = await req('GET', `/receber?status=pago`);
      expect(res.json().items.every((i: any) => i.status === 'pago')).toBe(true);

      res = await req('GET', `/receber/${vencida.id}`);
      expect(res.json()).toMatchObject({ id: vencida.id, pagamentos: [] });
      expect((await req('GET', '/receber/999999')).statusCode).toBe(404);
    });

    it('filtra por orçamento', async () => {
      const orc = (await queryOne<{ id: number }>(
        `insert into orcamento (filial_id, numero, cliente_id, status, total, fechado_em) values (1, 9001, $1, 'fechado', 90, now()) returning id`,
        [clienteId],
      ))!.id;
      const ids = await withTx((db) =>
        new FinanceiroService().gerarContasReceber(db, {
          filial_id: 1,
          cliente_id: clienteId,
          orcamento_id: orc,
          documento: 'ORC 9001',
          parcelas: [
            { numero: 1, vencimento: hoje, valor: 45, forma_pagamento: 'boleto' },
            { numero: 2, vencimento: somarDias(hoje, 30), valor: 45, forma_pagamento: 'boleto' },
          ],
        }),
      );
      const res = await req('GET', `/receber?orcamento_id=${orc}`);
      expect(res.json().items.map((i: any) => [i.id, i.orcamento_numero])).toEqual([[ids[0], 9001], [ids[1], 9001]]);
    });
  });

  describe('FinanceiroService (porta)', () => {
    it('gera e baixa títulos dentro da transação de quem chama', async () => {
      const svc = new FinanceiroService();
      const id = await withTx(async (db) => {
        const [novo] = await svc.gerarContasReceber(db, {
          filial_id: 1, cliente_id: clienteId, orcamento_id: null, documento: 'PORTA',
          parcelas: [{ numero: 1, vencimento: hoje, valor: 50.005, forma_pagamento: 'dinheiro' }],
        });
        await svc.baixarContaReceber(db, { id: novo, valor: 50.01, data: hoje, forma_pagamento: 'dinheiro', usuario_id: null });
        return novo;
      });
      const cr = await queryOne('select valor, valor_pago, status from conta_receber where id = $1', [id]);
      expect(cr).toEqual({ valor: 50.01, valor_pago: 50.01, status: 'pago' });

      await expect(
        withTx((db) => svc.baixarContaReceber(db, { id, valor: 1, data: hoje, forma_pagamento: 'pix', usuario_id: null })),
      ).rejects.toMatchObject({ status: 409 });
    });

    it('rollback desfaz a baixa se a transação falhar', async () => {
      const svc = new FinanceiroService();
      const [id] = await withTx((db) => svc.gerarContasReceber(db, {
        filial_id: 1, cliente_id: clienteId, orcamento_id: null, documento: 'RB',
        parcelas: [{ numero: 1, vencimento: hoje, valor: 10, forma_pagamento: 'pix' }],
      }));
      await expect(withTx(async (db) => {
        await svc.baixarContaReceber(db, { id, valor: 10, data: hoje, forma_pagamento: 'pix', usuario_id: null });
        throw new Error('falha posterior');
      })).rejects.toThrow('falha posterior');
      expect(await queryOne('select status, valor_pago from conta_receber where id = $1', [id])).toEqual({ status: 'aberto', valor_pago: 0 });
      expect(await queryOne('select count(*)::int as n from caixa_lancamento where conta_receber_id = $1', [id])).toEqual({ n: 0 });
    });
  });

  describe('contas a pagar', () => {
    it('CRUD, parcelas, baixa parcial/total com saída no caixa, cancelamento e estorno', async () => {
      let res = await req('POST', '/pagar', {
        fornecedor_id: fornecedorId, descricao: 'Compra de vidro', categoria: 'Matéria-prima', documento: 'NF 55',
        valor_total: 1000, parcelas: 2, primeiro_vencimento: somarDias(hoje, 40),
      });
      expect(res.statusCode, res.body).toBe(201);
      const [p1, p2] = res.json().items;
      expect([p1.valor, p2.valor]).toEqual([500, 500]);
      expect(p1).toMatchObject({ fornecedor_nome: 'Distribuidora de Vidros Exemplo Ltda', categoria: 'Matéria-prima', parcela: 1, emissao: hoje });

      res = await req('PUT', `/pagar/${p1.id}`, { descricao: 'Compra de vidro temperado', fornecedor_id: fornecedorId, categoria: 'Matéria-prima', documento: 'NF 55', vencimento: somarDias(hoje, 41), valor: 520 });
      expect(res.statusCode, res.body).toBe(200);
      expect(res.json()).toMatchObject({ descricao: 'Compra de vidro temperado', valor: 520, vencimento: somarDias(hoje, 41) });

      res = await req('POST', `/pagar/${p1.id}/baixar`, { valor: 200, forma_pagamento: 'boleto' });
      expect(res.json()).toMatchObject({ status: 'aberto', valor_pago: 200, saldo: 320 });
      expect((await req('PUT', `/pagar/${p1.id}`, { descricao: 'x', vencimento: hoje, valor: 150 })).statusCode).toBe(400);
      expect((await req('DELETE', `/pagar/${p1.id}`)).statusCode).toBe(409);
      expect((await req('POST', `/pagar/${p1.id}/cancelar`)).statusCode).toBe(409);

      res = await req('POST', `/pagar/${p1.id}/baixar`, {});
      expect(res.json()).toMatchObject({ status: 'pago', valor_pago: 520, saldo: 0 });
      const mov = await query('select tipo, valor, descricao from caixa_lancamento where conta_pagar_id = $1 order by id', [p1.id]);
      expect(mov.map((m) => [m.tipo, m.valor])).toEqual([['saida', 200], ['saida', 320]]);
      expect(mov[0].descricao).toContain('Pagamento Compra de vidro temperado NF 55 parc. 1');
      expect((await req('PUT', `/pagar/${p1.id}`, { descricao: 'x', vencimento: hoje, valor: 600 })).statusCode).toBe(409);

      res = await req('POST', `/pagar/${p1.id}/estornar`);
      expect(res.json()).toMatchObject({ status: 'aberto', valor_pago: 0 });
      const est = await queryOne(`select tipo, valor from caixa_lancamento where conta_pagar_id = $1 order by id desc limit 1`, [p1.id]);
      expect(est).toEqual({ tipo: 'entrada', valor: 520 });

      res = await req('POST', `/pagar/${p2.id}/cancelar`, { motivo: 'Pedido cancelado' });
      expect(res.json()).toMatchObject({ status: 'cancelado' });

      res = await req('POST', `/pagar/${p2.id}/copiar`, {});
      expect(res.statusCode).toBe(201);
      const copia = res.json();
      expect(copia).toMatchObject({ status: 'aberto', valor: 500, valor_pago: 0, descricao: 'Compra de vidro' });
      expect(copia.id).not.toBe(p2.id);

      expect((await req('DELETE', `/pagar/${copia.id}`)).statusCode).toBe(204);
      expect((await req('GET', `/pagar/${copia.id}`)).statusCode).toBe(404);

      res = await req('GET', '/pagar?q=vidro&categoria=Matéria-prima');
      expect(res.json().items.map((i: any) => i.id)).toEqual([p1.id, p2.id]);
      expect(res.json().totais.aberto).toBe(520);
    });

    it('valida fornecedor e descrição', async () => {
      expect((await req('POST', '/pagar', { descricao: '', valor_total: 10, primeiro_vencimento: hoje })).statusCode).toBe(400);
      expect((await req('POST', '/pagar', { fornecedor_id: clienteId, descricao: 'X', valor_total: 10, primeiro_vencimento: hoje })).statusCode).toBe(400);
      const res = await req('POST', '/pagar', { descricao: 'Sem fornecedor', valor_total: 10, primeiro_vencimento: hoje });
      expect(res.statusCode).toBe(201);
      expect(res.json().items[0].fornecedor_id).toBeNull();
    });

    it('alerta de vencimento', async () => {
      const criar = async (descricao: string, dias: number, valor: number) => {
        const r = await req('POST', '/pagar', { descricao, valor_total: valor, primeiro_vencimento: somarDias(hoje, dias), categoria: 'Alerta' });
        return r.json().items[0];
      };
      const vencida = await criar('Aluguel atrasado', -3, 1500);
      const hojeT = await criar('Energia', 0, 300);
      const semana = await criar('Internet', 7, 120);
      const fora = await criar('Seguro', 8, 900);

      const res = await req('GET', '/pagar/alerta?dias=7');
      expect(res.statusCode).toBe(200);
      const body = res.json();
      const ids = (l: any[]) => l.map((i) => i.id);
      expect(ids(body.vencidas)).toContain(vencida.id);
      expect(ids(body.a_vencer)).toEqual(expect.arrayContaining([hojeT.id, semana.id]));
      expect([...ids(body.vencidas), ...ids(body.a_vencer)]).not.toContain(fora.id);
      expect(body.total_vencido).toBeGreaterThanOrEqual(1500);
      expect((await req('GET', '/pagar/alerta?dias=-1')).statusCode).toBe(400);
    });
  });

  describe('caixa', () => {
    it('período com saldo anterior, entradas, saídas e saldo final', async () => {
      const lanc = async (body: Record<string, unknown>) => {
        const r = await req('POST', '/caixa', body);
        expect(r.statusCode, r.body).toBe(201);
        return r.json();
      };
      await lanc({ data: '2020-01-01', tipo: 'entrada', valor: 100, descricao: 'Suprimento inicial' });
      const s1 = await lanc({ data: '2020-01-02', tipo: 'saida', valor: 30.5, descricao: 'Sangria' });
      await lanc({ data: '2020-01-02', tipo: 'entrada', valor: 10.25, descricao: 'Venda balcão', forma_pagamento: 'dinheiro' });
      await lanc({ data: '2020-01-03', tipo: 'saida', valor: 5, descricao: 'Despesa: café' });
      expect(s1).toMatchObject({ manual: true, origem: 'manual' });

      const res = await req('GET', '/caixa?de=2020-01-02&ate=2020-01-02');
      expect(res.statusCode).toBe(200);
      const c = res.json();
      expect(c).toMatchObject({ de: '2020-01-02', ate: '2020-01-02', saldo_anterior: 100, entradas: 10.25, saidas: 30.5, saldo_final: 79.75 });
      expect(c.lancamentos.map((l: any) => l.saldo)).toEqual([69.5, 79.75]);
      expect(c.resumo_saidas).toEqual([{ grupo: 'Lançamento manual', quantidade: 1, total: 30.5 }]);

      const atual = (await req('GET', '/caixa')).json();
      expect(atual.de).toBe(hoje);
      expect(atual.lancamentos.some((l: any) => l.origem === 'receber')).toBe(true);
      expect(atual.saldo_final).toBeCloseTo(atual.saldo_anterior + atual.entradas - atual.saidas, 2);

      expect((await req('GET', '/caixa?de=2020-01-05&ate=2020-01-01')).statusCode).toBe(400);
      expect((await req('POST', '/caixa', { tipo: 'saida', valor: 0, descricao: 'x' })).statusCode).toBe(400);
    });

    it('exclui só lançamento manual', async () => {
      const manual = (await req('POST', '/caixa', { tipo: 'saida', valor: 12, descricao: 'Despesa avulsa' })).json();
      expect((await req('DELETE', `/caixa/${manual.id}`)).statusCode).toBe(204);
      expect((await req('DELETE', `/caixa/${manual.id}`)).statusCode).toBe(404);
      const vinculado = await queryOne<{ id: number }>('select id from caixa_lancamento where conta_receber_id is not null limit 1');
      expect((await req('DELETE', `/caixa/${vinculado!.id}`)).statusCode).toBe(409);
    });
  });

  describe('multi-filial', () => {
    it('não enxerga nem altera títulos de outra filial', async () => {
      const filial2 = (await queryOne<{ id: number }>(`insert into filial (nome) values ('Filial 2') returning id`))!.id;
      const outro = (await queryOne<{ id: number }>(
        `insert into conta_receber (filial_id, cliente_id, vencimento, valor) values ($1, $2, current_date, 10) returning id`,
        [filial2, clienteId],
      ))!.id;
      expect((await req('GET', `/receber/${outro}`)).statusCode).toBe(404);
      expect((await req('POST', `/receber/${outro}/baixar`, {})).statusCode).toBe(404);
      expect((await req('GET', '/receber?pageSize=200')).json().items.some((i: any) => i.id === outro)).toBe(false);
    });
  });
});
