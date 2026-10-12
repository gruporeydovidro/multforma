import { beforeAll, describe, expect, it } from 'vitest';
import { getPool, query, queryOne, withTx } from '../src/lib/db.js';
import { EstoqueService, repositoriosEstoque } from '../src/modules/estoque/service.js';
import { login, useTestApp } from './helpers.js';

describe('estoque', () => {
  const t = useTestApp();
  let prod: string;
  let vend: string;
  const ids: Record<string, number> = {};

  const req = (method: 'GET' | 'POST', url: string, payload?: object, cookie = prod) =>
    t.app.inject({ method, url: `/api/estoque${url}`, payload, headers: { cookie } });
  const custo = async (codigo: string) => (await queryOne<{ custo: number }>('select custo from produto where codigo = $1', [codigo]))!.custo;

  beforeAll(async () => {
    prod = await login(t.app, 'producao');
    vend = await login(t.app, 'vendedor');
    for (const r of await query<{ id: number; codigo: string }>('select id, codigo from produto')) ids[r.codigo] = r.id;
  });

  it('entrada soma ao saldo e atualiza o custo médio ponderado', async () => {
    const e1 = await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 10, custo_unitario: 100, documento: 'NF 123' });
    expect(e1.statusCode).toBe(201);
    expect(e1.json()).toMatchObject({ saldo: 10, custo: 100 }); // saldo anterior zero: custo = custo da entrada
    expect(e1.json().movimento).toMatchObject({ tipo: 'entrada', origem: 'compra', quantidade: 10, custo_unitario: 100, documento: 'NF 123', usuario_nome: 'teste_producao' });

    const e2 = await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 10, custo_unitario: 130 });
    expect(e2.json()).toMatchObject({ saldo: 20, custo: 115 });
    expect(await custo('VT8')).toBe(115);

    const e3 = await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 5 });
    expect(e3.json()).toMatchObject({ saldo: 25, custo: 115 }); // sem custo informado, mantém o custo
  });

  it('saída subtrai do saldo e não permite ficar negativo', async () => {
    const s = await req('POST', '/saidas', { produto_id: ids.VT8, quantidade: 10, observacao: 'quebra' });
    expect(s.statusCode).toBe(201);
    expect(s.json().saldo).toBe(15);
    expect(s.json().movimento).toMatchObject({ tipo: 'saida', origem: 'manual', quantidade: -10 });
    const sem = await req('POST', '/saidas', { produto_id: ids.VT8, quantidade: 100 });
    expect(sem.statusCode).toBe(400);
    expect(sem.json().error).toMatch(/insuficiente/);
  });

  it('acerto grava a diferença para chegar ao saldo contado, com log', async () => {
    const a = await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: 12, observacao: 'inventário' });
    expect(a.statusCode).toBe(201);
    expect(a.json()).toMatchObject({ saldo: 12, diferenca: -3 });
    expect(a.json().movimento).toMatchObject({ tipo: 'acerto', origem: 'acerto', quantidade: -3 });
    const log = await queryOne(`select detalhes from log_sistema where acao = 'estoque.acerto' and entidade_id = $1`, [ids.VT8]);
    expect(log!.detalhes).toMatchObject({ saldo_anterior: 15, saldo_contado: 12, diferenca: -3 });
    const mais = await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: 12.5 });
    expect(mais.json()).toMatchObject({ saldo: 12.5, diferenca: 0.5 });
    expect((await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: 12.5 })).statusCode).toBe(400);
    expect((await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: -1 })).statusCode).toBe(400);
  });

  it('validações: produto inexistente, sem controle de estoque e quantidade', async () => {
    expect((await req('POST', '/entradas', { produto_id: 999999, quantidade: 1 })).statusCode).toBe(404);
    expect((await req('POST', '/entradas', { produto_id: ids.LAP, quantidade: 1 })).json().error).toMatch(/não controla/);
    expect((await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 0 })).statusCode).toBe(400);
    expect((await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 1, custo_unitario: -5 })).statusCode).toBe(400);
  });

  it('permissões: todos leem; só admin e produção movimentam', async () => {
    expect((await req('GET', '/saldos', undefined, vend)).statusCode).toBe(200);
    expect((await req('GET', '/movimentos', undefined, vend)).statusCode).toBe(200);
    expect((await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 1 }, vend)).statusCode).toBe(403);
    expect((await req('POST', '/saidas', { produto_id: ids.VT8, quantidade: 1 }, vend)).statusCode).toBe(403);
    expect((await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: 1 }, vend)).statusCode).toBe(403);
    expect((await req('POST', '/entradas', { produto_id: ids.VC4, quantidade: 1 }, t.cookie)).statusCode).toBe(201);
  });

  it('consulta saldos com mínimo, custo e filtro abaixo do mínimo', async () => {
    await query(`update produto set estoque_minimo = 5 where codigo in ('VT8', 'VT10')`);
    const res = await req('GET', '/saldos');
    expect(res.statusCode).toBe(200);
    const body = res.json();
    const codigos = body.items.map((i: any) => i.codigo);
    expect(codigos).toContain('KITBOX');
    expect(codigos).not.toContain('LAP'); // serviço não controla estoque
    expect(body.items.find((i: any) => i.codigo === 'VT8')).toMatchObject({ saldo: 12.5, estoque_minimo: 5, custo: 115, valor_estoque: 1437.5, abaixo_minimo: false });
    expect(body.items.find((i: any) => i.codigo === 'VT10')).toMatchObject({ saldo: 0, abaixo_minimo: true });

    const abaixo = (await req('GET', '/saldos?abaixo_minimo=true')).json();
    expect(abaixo.items.map((i: any) => i.codigo)).toEqual(['VT10']);
    expect(abaixo.total).toBe(1);
    const busca = (await req('GET', '/saldos?q=vt8')).json();
    expect(busca.items.map((i: any) => i.codigo)).toEqual(['VT8']);

    const um = await req('GET', `/saldos/${ids.VT8}`);
    expect(um.json()).toMatchObject({ codigo: 'VT8', saldo: 12.5, abaixo_minimo: false });
    expect((await req('GET', '/saldos/999999')).statusCode).toBe(404);
  });

  it('lista movimentações com filtros e paginação', async () => {
    const todas = (await req('GET', `/movimentos?produto_id=${ids.VT8}`)).json();
    expect(todas.total).toBe(6);
    expect(todas.items[0].tipo).toBe('acerto'); // mais recente primeiro
    const entradas = (await req('GET', `/movimentos?produto_id=${ids.VT8}&tipo=entrada`)).json();
    expect(entradas.total).toBe(3);
    const pag = (await req('GET', '/movimentos?pageSize=2&page=2')).json();
    expect(pag).toMatchObject({ page: 2, pageSize: 2, total: 7 });
    expect(pag.items).toHaveLength(2);
    const hoje = new Date().toISOString().slice(0, 10);
    expect((await req('GET', `/movimentos?de=2000-01-01&ate=2000-12-31`)).json().total).toBe(0);
    expect((await req('GET', `/movimentos?de=${hoje}`)).json().total).toBeGreaterThan(0);
    expect((await req('GET', '/movimentos?tipo=xyz')).statusCode).toBe(400);
  });

  it('porta EstoquePort: saída da venda grava quantidade negativa e saldo pode ficar negativo', async () => {
    const svc = new EstoqueService(repositoriosEstoque);
    const filial = (await queryOne<{ id: number }>('select min(id) as id from filial'))!.id;
    await withTx((db) => svc.registrarMovimento(db, { filial_id: filial, produto_id: ids.ESP4, tipo: 'saida', origem: 'venda', quantidade: 2.5 }));
    expect(await svc.saldo(getPool(), filial, ids.ESP4)).toBe(-2.5);
    const saldos = (await req('GET', '/saldos?q=ESP4')).json();
    expect(saldos.items[0]).toMatchObject({ saldo: -2.5, abaixo_minimo: true });
  });

  // ----- regressões da revisão (ficam no fim: os testes acima contam movimentos globais) -----

  /** Produto novo, isolado dos demais testes. */
  const novoProduto = async (codigo: string, custoInicial = 100) =>
    (await queryOne<{ id: number }>(
      `insert into produto (codigo, nome, tipo, unidade_venda, custo, preco_venda, controla_estoque)
       values ($1, $1, 'produto', 'UN', $2, 10, true) returning id`,
      [codigo, custoInicial],
    ))!.id;
  const filialPadrao = async () => (await queryOne<{ id: number }>('select min(id) as id from filial'))!.id;
  const pendente = <T>(p: Promise<T>, ms = 300) => Promise.race([p.then(() => 'resolvida'), new Promise((r) => setTimeout(() => r('pendente'), ms))]);

  /** Abre uma transação "de venda" que registra a saída pela porta e segura o bloqueio até commit(). */
  async function vendaAberta(produtoId: number, quantidade: number) {
    const svc = new EstoqueService(repositoriosEstoque);
    const client = await getPool().connect();
    await client.query('begin');
    await svc.registrarMovimento(client, { filial_id: await filialPadrao(), produto_id: produtoId, tipo: 'saida', origem: 'venda', quantidade });
    return {
      commit: async () => {
        await client.query('commit');
        client.release();
      },
    };
  }

  it('concorrência: acerto aguarda a venda em andamento e chega ao saldo contado (10, venda de 3, contagem 8)', async () => {
    const pid = await novoProduto('CONC1');
    expect((await req('POST', '/entradas', { produto_id: pid, quantidade: 10 })).json().saldo).toBe(10);
    const venda = await vendaAberta(pid, 3);
    const acerto = req('POST', '/acertos', { produto_id: pid, saldo_contado: 8 });
    expect(await pendente(acerto)).toBe('pendente'); // bloqueado pela venda: não lê o saldo 10 desatualizado
    await venda.commit();
    const res = await acerto;
    expect(res.statusCode).toBe(201);
    expect(res.json()).toMatchObject({ saldo: 8, diferenca: 1 });
    expect((await req('GET', `/saldos/${pid}`)).json().saldo).toBe(8);
  });

  it('concorrência: saída manual valida o saldo depois da venda concorrente', async () => {
    const pid = await novoProduto('CONC2');
    await req('POST', '/entradas', { produto_id: pid, quantidade: 10 });
    const venda = await vendaAberta(pid, 8);
    const saida = req('POST', '/saidas', { produto_id: pid, quantidade: 5 });
    expect(await pendente(saida)).toBe('pendente');
    await venda.commit();
    const res = await saida;
    expect(res.statusCode).toBe(400);
    expect(res.json().error).toMatch(/insuficiente/);
    expect((await req('GET', `/saldos/${pid}`)).json().saldo).toBe(2);
  });

  it('a porta registrarMovimento aguarda outra movimentação em andamento do mesmo produto', async () => {
    const pid = await novoProduto('CONC3');
    const venda1 = await vendaAberta(pid, 1);
    const svc = new EstoqueService(repositoriosEstoque);
    const filial = await filialPadrao();
    const venda2 = withTx((db) => svc.registrarMovimento(db, { filial_id: filial, produto_id: pid, tipo: 'saida', origem: 'venda', quantidade: 1 }));
    expect(await pendente(venda2)).toBe('pendente');
    await venda1.commit();
    await venda2;
    expect(await svc.saldo(getPool(), filial, pid)).toBe(-2);
  });

  it('não trava a linha do produto (tabela de Cadastros) ao movimentar', async () => {
    const pid = await novoProduto('CONC4');
    const client = await getPool().connect();
    try {
      await client.query('begin');
      await client.query("update produto set nome = nome || ' (editado)' where id = $1", [pid]); // Cadastros editando o produto (no key update)
      const res = req('POST', '/entradas', { produto_id: pid, quantidade: 2 });
      expect(await pendente(res, 1500)).toBe('resolvida');
      expect((await res).statusCode).toBe(201);
    } finally {
      await client.query('rollback');
      client.release();
    }
  });

  it('custo médio usa o saldo total de todas as filiais', async () => {
    const pid = await novoProduto('CMG', 100);
    const outra = (await queryOne<{ id: number }>(`insert into filial (nome, cidade, uf) values ('Filial 2', 'Campinas', 'SP') returning id`))!.id;
    const svc = new EstoqueService(repositoriosEstoque);
    await withTx((db) => svc.registrarMovimento(db, { filial_id: outra, produto_id: pid, tipo: 'entrada', origem: 'compra', quantidade: 10, custo_unitario: 100 }));
    // filial do usuário com saldo zero; total = 10 a 100 → (10*100 + 10*130) / 20 = 115
    const e = await req('POST', '/entradas', { produto_id: pid, quantidade: 10, custo_unitario: 130 });
    expect(e.statusCode).toBe(201);
    expect(e.json()).toMatchObject({ saldo: 10, custo: 115 });
  });

  it('schemas: data inválida e valores acima do limite dão 400', async () => {
    expect((await req('GET', '/movimentos?de=2026-02-30')).statusCode).toBe(400);
    expect((await req('GET', '/movimentos?ate=2026-13-01')).statusCode).toBe(400);
    expect((await req('GET', '/movimentos?produto_id=99999999999')).statusCode).toBe(400);
    expect((await req('GET', '/saldos/99999999999')).statusCode).toBe(400);
    expect((await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 1e12 })).statusCode).toBe(400);
    expect((await req('POST', '/entradas', { produto_id: ids.VT8, quantidade: 1, custo_unitario: 1e13 })).statusCode).toBe(400);
    expect((await req('POST', '/saidas', { produto_id: ids.VT8, quantidade: 1e12 })).statusCode).toBe(400);
    expect((await req('POST', '/acertos', { produto_id: ids.VT8, saldo_contado: 1e12 })).statusCode).toBe(400);
    expect((await req('POST', '/entradas', { produto_id: 99999999999, quantidade: 1 })).statusCode).toBe(400);
  });
});
