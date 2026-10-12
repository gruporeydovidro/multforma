import { beforeAll, describe, expect, it } from 'vitest';
import { getPool, query, queryOne, withTx } from '../src/lib/db.js';
import { ProducaoService, repositoriosProducao } from '../src/modules/producao/service.js';
import { login, useTestApp } from './helpers.js';

let seqOrc = 100;

/**
 * Cria um orçamento direto por SQL com os produtos do seed
 * (código, quantidade, largura, altura e, opcionalmente, as medidas calculadas para cobrança).
 */
async function criarOrcamento(itens: [string, number, number | null, number | null, number?, number?][], opts: { status?: string; prazo?: string | null } = {}) {
  const orc = await queryOne<{ id: number }>(
    `insert into orcamento (filial_id, numero, cliente_id, status, prazo_entrega, fechado_em)
     values ((select min(id) from filial), $1, (select id from pessoa where nome = 'Consumidor Final'), $2, $3, now()) returning id`,
    [++seqOrc, opts.status ?? 'fechado', opts.prazo === undefined ? '2099-12-31' : opts.prazo],
  );
  let seq = 0;
  for (const [codigo, qtd, larg, alt, largCalc, altCalc] of itens) {
    await query(
      `insert into orcamento_item (orcamento_id, seq, produto_id, descricao, unidade, quantidade, largura_mm, altura_mm, largura_calc_mm, altura_calc_mm)
       select $1, $2, p.id, p.nome, p.unidade_venda, $3, $4, $5, $7, $8 from produto p where p.codigo = $6`,
      [orc!.id, ++seq, qtd, larg, alt, codigo, largCalc ?? larg, altCalc ?? alt],
    );
  }
  return orc!.id;
}

describe('produção', () => {
  const t = useTestApp();
  let prod: string;
  let vend: string;
  let fin: string;
  let setores: Record<string, number>;
  let motivoId: number;

  const req = (method: 'GET' | 'POST' | 'PUT' | 'DELETE', url: string, payload?: object, cookie = prod) =>
    t.app.inject({ method, url: `/api/producao${url}`, payload, headers: { cookie } });

  beforeAll(async () => {
    prod = await login(t.app, 'producao');
    vend = await login(t.app, 'vendedor');
    fin = await login(t.app, 'financeiro');
    const rows = await query<{ id: number; nome: string }>('select id, nome from setor_producao');
    setores = Object.fromEntries(rows.map((r) => [r.nome, r.id]));
    motivoId = (await queryOne<{ id: number }>(`select id from motivo_defeito where descricao = 'Quebra na têmpera'`))!.id;
  });

  describe('geração da ordem', () => {
    it('cria a ordem a partir de orçamento fechado, só com produtos físicos', async () => {
      const orc = await criarOrcamento([['VT8', 2, 500, 1000], ['LAP', 6, 500, 1000], ['KITBOX', 1, null, null], ['INST', 1, null, null]]);
      const res = await req('POST', '/ordens', { orcamento_id: orc });
      expect(res.statusCode).toBe(201);
      const o = res.json();
      expect(o).toMatchObject({ status: 'aguardando', orcamento_id: orc, numero: 1, previsao_entrega: '2099-12-31', itens_total: 2, atrasada: false });
      expect(o.itens.map((i: any) => [i.produto_codigo, i.quantidade, i.largura_mm, i.altura_mm, i.setor_atual_nome, i.status])).toEqual([
        ['VT8', 2, 500, 1000, 'Corte', 'pendente'],
        ['KITBOX', 1, null, null, 'Corte', 'pendente'],
      ]);
      expect(o.setores.map((s: any) => s.nome)).toEqual(['Corte', 'Lapidação', 'Têmpera', 'Expedição']);
      expect(await queryOne(`select 1 from log_sistema where acao = 'producao.criar' and entidade_id = $1`, [o.id])).toBeTruthy();
    });

    it('409 se já existe ordem ativa ou o orçamento não está fechado', async () => {
      const orc = await criarOrcamento([['VT10', 1, 400, 400]]);
      expect((await req('POST', '/ordens', { orcamento_id: orc })).statusCode).toBe(201);
      const dup = await req('POST', '/ordens', { orcamento_id: orc });
      expect(dup.statusCode).toBe(409);
      expect(dup.json().error).toMatch(/já possui/);
      const aberto = await criarOrcamento([['VT10', 1, 400, 400]], { status: 'aberto' });
      expect((await req('POST', '/ordens', { orcamento_id: aberto })).statusCode).toBe(409);
    });

    it('400 sem itens produzíveis ou corpo inválido; 404 para orçamento inexistente', async () => {
      const servico = await criarOrcamento([['INST', 1, null, null]]);
      expect((await req('POST', '/ordens', { orcamento_id: servico })).statusCode).toBe(400);
      expect((await req('POST', '/ordens', {})).statusCode).toBe(400);
      expect((await req('POST', '/ordens', { orcamento_id: 999999 })).statusCode).toBe(404);
    });

    it('a porta criarOrdemProducao gera a ordem dentro da transação de quem chama', async () => {
      const orc = await criarOrcamento([['ESP4', 1, 600, 800]]);
      const service = new ProducaoService(repositoriosProducao);
      const id = await withTx((db) => service.criarOrdemProducao(db, orc));
      expect(id).toBeTypeOf('number');
      const o = await queryOne('select status, previsao_entrega from ordem_producao where id = $1', [id]);
      expect(o).toEqual({ status: 'aguardando', previsao_entrega: '2099-12-31' });
      const so = await criarOrcamento([['LAP', 1, 100, 100]]);
      expect(await service.criarOrdemProducao(getPool(), so)).toBeNull();
    });

    it('lista os orçamentos fechados sem ordem ativa', async () => {
      const livre = await criarOrcamento([['VC4', 1, 300, 300]]);
      const res = await req('GET', '/orcamentos-disponiveis');
      expect(res.statusCode).toBe(200);
      const ids = res.json().items.map((o: any) => o.id);
      expect(ids).toContain(livre);
      expect((await req('GET', '/orcamentos-disponiveis', undefined, vend)).statusCode).toBe(403);
    });
  });

  describe('marcação por setor', () => {
    let ordem: any;
    let vidro: any;
    let kit: any;
    const marcar = (item: any, body: object, cookie = prod) => req('POST', `/ordens/${ordem.id}/itens/${item.id}/marcar`, body, cookie);

    beforeAll(async () => {
      const orc = await criarOrcamento([['VT8', 2, 700, 1900], ['KITBOX', 1, null, null]]);
      ordem = (await req('POST', '/ordens', { orcamento_id: orc })).json();
      [vidro, kit] = ordem.itens;
    });

    it('permissões: vendedor lê mas não marca; financeiro não acessa', async () => {
      expect((await req('GET', `/ordens/${ordem.id}`, undefined, vend)).statusCode).toBe(200);
      expect((await marcar(vidro, { setor_id: setores['Corte'] }, vend)).statusCode).toBe(403);
      expect((await req('GET', '/ordens', undefined, fin)).statusCode).toBe(403);
      expect((await req('POST', `/ordens/${ordem.id}/cancelar`, {}, vend)).statusCode).toBe(403);
    });

    it('validações de setor, quantidade e motivo (400)', async () => {
      expect((await marcar(vidro, { setor_id: setores['Têmpera'] })).statusCode).toBe(400);
      expect((await marcar(vidro, { setor_id: setores['Corte'], quantidade: 3 })).statusCode).toBe(400);
      expect((await marcar(vidro, { setor_id: setores['Corte'], defeito: true })).json().error).toMatch(/motivo/);
      expect((await marcar(vidro, { setor_id: setores['Corte'], defeito: true, motivo_id: 99999 })).statusCode).toBe(400);
      expect((await marcar(vidro, { quantidade: 1 })).statusCode).toBe(400);
      expect((await req('POST', `/ordens/${ordem.id}/itens/999999/marcar`, { setor_id: setores['Corte'] })).statusCode).toBe(404);
      const o = (await req('GET', `/ordens/${ordem.id}`)).json();
      expect(o.status).toBe('aguardando');
      expect(o.marcacoes).toHaveLength(0);
    });

    it('a primeira marcação inicia a ordem e avança o item ao próximo setor', async () => {
      const res = await marcar(vidro, { setor_id: setores['Corte'], observacao: 'ok' });
      expect(res.statusCode).toBe(200);
      const o = res.json();
      expect(o.status).toBe('em_producao');
      expect(o.iniciado_em).toBeTruthy();
      expect(o.itens[0]).toMatchObject({ setor_atual_nome: 'Lapidação', status: 'em_producao' });
      expect(o.marcacoes[0]).toMatchObject({ setor_nome: 'Corte', quantidade: 2, defeito: false, observacao: 'ok', usuario_nome: 'teste_producao' });
    });

    it('defeito exige motivo, separa o item e refazer volta ao primeiro setor', async () => {
      await marcar(vidro, { setor_id: setores['Lapidação'] });
      const def = await marcar(vidro, { setor_id: setores['Têmpera'], quantidade: 1, defeito: true, motivo_id: motivoId, observacao: 'estourou' });
      expect(def.statusCode).toBe(200);
      expect(def.json().itens[0]).toMatchObject({ status: 'defeito', setor_atual_nome: 'Têmpera', defeitos: 1 });
      expect(def.json().marcacoes[0]).toMatchObject({ defeito: true, motivo: 'Quebra na têmpera', quantidade: 1 });

      expect((await marcar(vidro, { setor_id: setores['Têmpera'] })).statusCode).toBe(409);
      expect((await req('POST', `/ordens/${ordem.id}/itens/${kit.id}/refazer`)).statusCode).toBe(409);

      const painel = (await req('GET', '/painel', undefined, vend)).json();
      expect(painel.defeitos.map((d: any) => d.item_id)).toContain(vidro.id);

      const ref = await req('POST', `/ordens/${ordem.id}/itens/${vidro.id}/refazer`);
      expect(ref.statusCode).toBe(200);
      expect(ref.json().itens[0]).toMatchObject({ status: 'pendente', setor_atual_nome: 'Corte' });
      expect(await queryOne(`select 1 from log_sistema where acao = 'producao.refazer' and entidade_id = $1`, [vidro.id])).toBeTruthy();
    });

    it('painel lista os itens pendentes por setor', async () => {
      const res = await req('GET', '/painel');
      expect(res.statusCode).toBe(200);
      const corte = res.json().setores.find((s: any) => s.nome === 'Corte');
      const itens = corte.itens.filter((i: any) => i.ordem_id === ordem.id);
      expect(itens.map((i: any) => i.item_id).sort()).toEqual([vidro.id, kit.id].sort());
      expect(corte.total_itens).toBeGreaterThanOrEqual(2);
      expect(itens[0]).toMatchObject({ ordem_numero: ordem.numero, cliente_nome: 'Consumidor Final' });
    });

    it('conclui o item no último setor e a ordem quando todos concluem', async () => {
      for (const s of ['Corte', 'Lapidação', 'Têmpera', 'Expedição']) {
        expect((await marcar(vidro, { setor_id: setores[s] })).statusCode).toBe(200);
      }
      let o = (await req('GET', `/ordens/${ordem.id}`)).json();
      expect(o.itens[0]).toMatchObject({ status: 'concluido', setor_atual_id: null });
      expect(o.status).toBe('em_producao');
      for (const s of ['Corte', 'Lapidação', 'Têmpera']) await marcar(kit, { setor_id: setores[s] });
      o = (await marcar(kit, { setor_id: setores['Expedição'] })).json();
      expect(o.status).toBe('concluida');
      expect(o.concluido_em).toBeTruthy();
      expect(o.itens_concluidos).toBe(2);
      expect((await marcar(kit, { setor_id: setores['Expedição'] })).statusCode).toBe(409);
      expect((await req('POST', `/ordens/${ordem.id}/cancelar`)).statusCode).toBe(409);
    });

    it('relatórios de produção por setor e de defeitos', async () => {
      const ps = await req('GET', '/relatorios/producao-setor', undefined, vend);
      expect(ps.statusCode).toBe(200);
      const tempera = ps.json().items.find((s: any) => s.setor_nome === 'Têmpera');
      expect(tempera).toMatchObject({ defeitos: 1, pecas_defeito: 1 });
      expect(tempera.pecas).toBeGreaterThanOrEqual(3);
      expect(tempera.m2).toBeGreaterThan(0);
      const df = (await req('GET', '/relatorios/defeitos')).json();
      expect(df.por_motivo).toEqual([{ motivo_id: motivoId, motivo: 'Quebra na têmpera', ocorrencias: 1, pecas: 1 }]);
      expect(df.por_setor).toEqual([{ setor_id: setores['Têmpera'], setor_nome: 'Têmpera', ocorrencias: 1, pecas: 1 }]);
      expect(df.ocorrencias[0]).toMatchObject({ ordem_numero: ordem.numero, observacao: 'estourou', largura_mm: 700 });
      const fora = (await req('GET', '/relatorios/defeitos?de=2000-01-01&ate=2000-01-31')).json();
      expect(fora.por_motivo).toEqual([]);
      expect((await req('GET', '/relatorios/defeitos?de=2026-02-01&ate=2026-01-01')).statusCode).toBe(400);
    });
  });

  describe('listagem, atrasadas e cancelamento', () => {
    let atrasada: any;

    beforeAll(async () => {
      const orc = await criarOrcamento([['VT8', 1, 300, 300]], { prazo: '2020-01-10' });
      atrasada = (await req('POST', '/ordens', { orcamento_id: orc })).json();
    });

    it('filtra por status, atrasadas e busca', async () => {
      const todas = (await req('GET', '/ordens', undefined, vend)).json();
      expect(todas.total).toBeGreaterThanOrEqual(5);
      expect(todas.items[0].numero).toBeGreaterThan(todas.items[1].numero);
      const atr = (await req('GET', '/ordens?atrasadas=true')).json();
      expect(atr.items.map((o: any) => o.id)).toEqual([atrasada.id]);
      expect(atr.items[0].atrasada).toBe(true);
      const conc = (await req('GET', '/ordens?status=concluida')).json();
      expect(conc.items.every((o: any) => o.status === 'concluida')).toBe(true);
      expect(conc.total).toBe(1);
      const busca = (await req('GET', `/ordens?q=${atrasada.numero}`)).json();
      expect(busca.items.map((o: any) => o.id)).toContain(atrasada.id);
      const pag = (await req('GET', '/ordens?pageSize=2&page=2')).json();
      expect(pag).toMatchObject({ page: 2, pageSize: 2 });
      expect(pag.items).toHaveLength(2);
      expect((await req('GET', '/ordens?status=xyz')).statusCode).toBe(400);
      const prev = (await req('GET', '/relatorios/previsao-entrega?ate=2021-01-01')).json();
      expect(prev.items.map((o: any) => o.id)).toEqual([atrasada.id]);
    });

    it('edita a previsão de entrega', async () => {
      const res = await req('PUT', `/ordens/${atrasada.id}`, { previsao_entrega: '2099-01-01', observacoes: 'urgente' });
      expect(res.statusCode).toBe(200);
      expect(res.json()).toMatchObject({ previsao_entrega: '2099-01-01', observacoes: 'urgente', atrasada: false });
      expect((await req('GET', '/ordens?atrasadas=true')).json().total).toBe(0);
    });

    it('cancela a ordem e libera o orçamento para nova ordem', async () => {
      const res = await req('POST', `/ordens/${atrasada.id}/cancelar`, { motivo: 'cliente desistiu' });
      expect(res.statusCode).toBe(200);
      expect(res.json().status).toBe('cancelada');
      expect((await req('POST', `/ordens/${atrasada.id}/cancelar`)).statusCode).toBe(409);
      expect((await req('POST', `/ordens/${atrasada.id}/itens/${atrasada.itens[0].id}/marcar`, { setor_id: setores['Corte'] })).statusCode).toBe(409);
      expect(await queryOne(`select 1 from log_sistema where acao = 'producao.cancelar' and entidade_id = $1`, [atrasada.id])).toBeTruthy();
      expect((await req('POST', '/ordens', { orcamento_id: atrasada.orcamento_id })).statusCode).toBe(201);
    });

    it('404 para ordem inexistente', async () => {
      expect((await req('GET', '/ordens/999999')).statusCode).toBe(404);
    });
  });

  describe('setores e motivos', () => {
    it('leitura para produção e vendedor; escrita só admin', async () => {
      const s = await req('GET', '/setores', undefined, vend);
      expect(s.json().items.map((x: any) => x.nome)).toEqual(['Corte', 'Lapidação', 'Têmpera', 'Expedição']);
      expect((await req('GET', '/motivos')).json().items).toHaveLength(4);
      expect((await req('POST', '/setores', { nome: 'Serigrafia', ordem: 5 })).statusCode).toBe(403);
      expect((await req('POST', '/motivos', { descricao: 'Risco' })).statusCode).toBe(403);
    });

    it('admin cria, edita, desativa e exclui', async () => {
      const adm = t.cookie;
      const s = await req('POST', '/setores', { nome: 'Serigrafia', ordem: 5 }, adm);
      expect(s.statusCode).toBe(201);
      const id = s.json().id;
      expect((await req('POST', '/setores', { nome: 'Serigrafia' }, adm)).statusCode).toBe(409);
      const up = await req('PUT', `/setores/${id}`, { nome: 'Serigrafia', ordem: 5, ativo: false }, adm);
      expect(up.json().ativo).toBe(false);
      expect((await req('GET', '/setores?ativo=true')).json().items.map((x: any) => x.id)).not.toContain(id);
      expect((await req('DELETE', `/setores/${id}`, undefined, adm)).statusCode).toBe(204);
      expect((await req('DELETE', `/setores/${id}`, undefined, adm)).statusCode).toBe(404);
      // setor com marcações não pode ser excluído
      expect((await req('DELETE', `/setores/${setores['Corte']}`, undefined, adm)).statusCode).toBe(409);
      expect((await req('POST', '/setores', { nome: '' }, adm)).statusCode).toBe(400);

      const m = await req('POST', '/motivos', { descricao: 'Risco no vidro' }, adm);
      expect(m.statusCode).toBe(201);
      expect((await req('PUT', `/motivos/${m.json().id}`, { descricao: 'Risco na peça' }, adm)).json().descricao).toBe('Risco na peça');
      expect((await req('DELETE', `/motivos/${m.json().id}`, undefined, adm)).statusCode).toBe(204);
      expect((await req('DELETE', `/motivos/${motivoId}`, undefined, adm)).statusCode).toBe(409);
    });
  });

  // ----- regressões da revisão (no fim: os testes acima contam ordens e setores) -----
  describe('regressões da revisão', () => {
    const pendente = <T>(p: Promise<T>, ms = 300) => Promise.race([p.then(() => 'resolvida'), new Promise((r) => setTimeout(() => r('pendente'), ms))]);

    it('a ordem usa a medida real de corte, não a arredondada de cobrança', async () => {
      const orc = await criarOrcamento([['VT8', 1, 1013, 2001, 1050, 2050]]);
      const o = (await req('POST', '/ordens', { orcamento_id: orc })).json();
      expect(o.itens[0]).toMatchObject({ largura_mm: 1013, altura_mm: 2001 });
      const service = new ProducaoService(repositoriosProducao);
      const orc2 = await criarOrcamento([['VT10', 2, 733, 1499, 750, 1500]]);
      const id = await withTx((db) => service.criarOrdemProducao(db, orc2));
      expect(await queryOne('select largura_mm, altura_mm from ordem_producao_item where ordem_id = $1', [id])).toEqual({ largura_mm: 733, altura_mm: 1499 });
    });

    it('marcação parcial acumula por setor e só avança/conclui com o lote completo', async () => {
      const orc = await criarOrcamento([['VT8', 10, 500, 500]]);
      const ordem = (await req('POST', '/ordens', { orcamento_id: orc })).json();
      const item = ordem.itens[0];
      const marcar = (body: object) => req('POST', `/ordens/${ordem.id}/itens/${item.id}/marcar`, body);
      const estado = (o: any) => {
        const i = o.itens[0];
        return [i.setor_atual_nome, i.status, i.processado_setor];
      };

      let res = await marcar({ setor_id: setores['Corte'], quantidade: 1 });
      expect(res.statusCode).toBe(200);
      expect(res.json().status).toBe('em_producao');
      expect(estado(res.json())).toEqual(['Corte', 'em_producao', 1]);
      res = await marcar({ setor_id: setores['Corte'], quantidade: 10 });
      expect(res.statusCode).toBe(400);
      expect(res.json().error).toMatch(/restante no setor \(9/);
      expect(estado((await marcar({ setor_id: setores['Corte'], quantidade: 9 })).json())).toEqual(['Lapidação', 'em_producao', 0]);

      expect(estado((await marcar({ setor_id: setores['Lapidação'], quantidade: 4 })).json())).toEqual(['Lapidação', 'em_producao', 4]);
      res = await marcar({ setor_id: setores['Lapidação'], quantidade: 2, defeito: true, motivo_id: motivoId });
      expect(res.json().itens[0]).toMatchObject({ status: 'defeito', defeitos: 1 });
      expect(res.json().marcacoes[0]).toMatchObject({ setor_nome: 'Lapidação', quantidade: 2, defeito: true, motivo: 'Quebra na têmpera' });

      // refazer volta ao primeiro setor e zera o acúmulo (as marcações anteriores no Corte não contam)
      res = await req('POST', `/ordens/${ordem.id}/itens/${item.id}/refazer`);
      expect(estado(res.json())).toEqual(['Corte', 'pendente', 0]);
      res = await marcar({ setor_id: setores['Corte'] }); // sem quantidade: o restante do setor
      expect(res.json().marcacoes[0]).toMatchObject({ setor_nome: 'Corte', quantidade: 10 });
      expect(estado(res.json())).toEqual(['Lapidação', 'em_producao', 0]); // as 4 de antes do defeito não contam

      await marcar({ setor_id: setores['Lapidação'] });
      await marcar({ setor_id: setores['Têmpera'] });
      res = await marcar({ setor_id: setores['Expedição'], quantidade: 5 });
      expect(res.json().status).toBe('em_producao');
      expect(estado(res.json())).toEqual(['Expedição', 'em_producao', 5]);
      expect((await marcar({ setor_id: setores['Expedição'], quantidade: 6 })).statusCode).toBe(400);
      res = await marcar({ setor_id: setores['Expedição'], quantidade: 5 });
      expect(res.json()).toMatchObject({ status: 'concluida', itens_concluidos: 1 });
      expect(res.json().itens[0]).toMatchObject({ status: 'concluido', setor_atual_id: null });
    });

    it('o painel mostra o acumulado do setor', async () => {
      const orc = await criarOrcamento([['VC4', 3, 400, 400]]);
      const ordem = (await req('POST', '/ordens', { orcamento_id: orc })).json();
      await req('POST', `/ordens/${ordem.id}/itens/${ordem.itens[0].id}/marcar`, { setor_id: setores['Corte'], quantidade: 2 });
      const corte = (await req('GET', '/painel')).json().setores.find((s: any) => s.nome === 'Corte');
      expect(corte.itens.find((i: any) => i.item_id === ordem.itens[0].id)).toMatchObject({ quantidade: 3, processado_setor: 2 });
    });

    it('409 ao criar ordem sem setor ativo (tela e porta), sem gravar itens sem setor', async () => {
      const ativos = (await query<{ id: number }>('select id from setor_producao where ativo')).map((r) => r.id);
      const orc = await criarOrcamento([['VT8', 1, 500, 500]]);
      try {
        await query('update setor_producao set ativo = false');
        const res = await req('POST', '/ordens', { orcamento_id: orc });
        expect(res.statusCode).toBe(409);
        expect(res.json().error).toMatch(/Nenhum setor de produção ativo/);
        const service = new ProducaoService(repositoriosProducao);
        await expect(withTx((db) => service.criarOrdemProducao(db, orc))).rejects.toMatchObject({ status: 409 });
        expect(await queryOne('select 1 from ordem_producao where orcamento_id = $1', [orc])).toBeUndefined();
      } finally {
        await query('update setor_producao set ativo = true where id = any($1)', [ativos]);
      }
      expect((await queryOne<{ n: number }>('select count(*)::int as n from ordem_producao_item where setor_atual_id is null and status <> $1', ['concluido']))!.n).toBe(0);
      expect((await req('POST', '/ordens', { orcamento_id: orc })).statusCode).toBe(201);
    });

    it('geração concorrente do mesmo orçamento: uma cria, a outra recebe 409', async () => {
      const orc = await criarOrcamento([['VT8', 1, 500, 500]]);
      const [a, b] = await Promise.all([req('POST', '/ordens', { orcamento_id: orc }), req('POST', '/ordens', { orcamento_id: orc })]);
      expect([a.statusCode, b.statusCode].sort()).toEqual([201, 409]);
      expect((await queryOne<{ n: number }>('select count(*)::int as n from ordem_producao where orcamento_id = $1', [orc]))!.n).toBe(1);
    });

    it('serializa pelo advisory lock da produção, sem travar a linha do orçamento', async () => {
      const orc = await criarOrcamento([['VT8', 1, 500, 500]]);
      const client = await getPool().connect();
      try {
        // Orçamentos alterando o orçamento (no key update): a geração não pode esperar por isso.
        await client.query('begin');
        await client.query(`update orcamento set observacoes = 'editando' where id = $1`, [orc]);
        const livre = req('POST', '/ordens', { orcamento_id: orc });
        expect(await pendente(livre, 1500)).toBe('resolvida');
        expect((await livre).statusCode).toBe(201);
        await client.query('rollback');

        // Outra geração do mesmo orçamento em andamento: espera o advisory lock.
        const orc2 = await criarOrcamento([['VT8', 1, 500, 500]]);
        await client.query('begin');
        await client.query(`select pg_advisory_xact_lock(hashtext('ordem_producao'), $1)`, [orc2]);
        const bloqueada = req('POST', '/ordens', { orcamento_id: orc2 });
        expect(await pendente(bloqueada)).toBe('pendente');
        await client.query('commit');
        expect((await bloqueada).statusCode).toBe(201);
      } finally {
        await client.query('rollback').catch(() => undefined);
        client.release();
      }
    });

    it('schemas: data inválida e valores acima do limite dão 400', async () => {
      const orc = await criarOrcamento([['VT8', 1, 500, 500]]);
      const ordem = (await req('POST', '/ordens', { orcamento_id: orc })).json();
      expect((await req('GET', '/relatorios/defeitos?de=2026-02-30')).statusCode).toBe(400);
      expect((await req('GET', '/relatorios/producao-setor?ate=2026-13-01')).statusCode).toBe(400);
      expect((await req('GET', '/ordens?de=2026-02-31')).statusCode).toBe(400);
      expect((await req('PUT', `/ordens/${ordem.id}`, { previsao_entrega: '2026-02-30' })).statusCode).toBe(400);
      expect((await req('GET', '/ordens/99999999999')).statusCode).toBe(400);
      expect((await req('POST', '/ordens', { orcamento_id: 99999999999 })).statusCode).toBe(400);
      expect((await req('POST', `/ordens/${ordem.id}/itens/${ordem.itens[0].id}/marcar`, { setor_id: setores['Corte'], quantidade: 1e12 })).statusCode).toBe(400);
      expect((await req('POST', '/setores', { nome: 'Grande', ordem: 1e12 }, t.cookie)).statusCode).toBe(400);
    });
  });
});
