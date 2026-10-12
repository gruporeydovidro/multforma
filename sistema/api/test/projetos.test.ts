import { beforeAll, describe, expect, it } from 'vitest';
import { queryOne } from '../src/lib/db.js';
import { login, useTestApp } from './helpers.js';

describe('projetos', () => {
  const t = useTestApp();
  let vt8: number;
  let kit: number;
  let boxId: number;
  let cookieVendedor: string;
  let cookieProducao: string;

  const req = (method: 'GET' | 'POST' | 'PUT' | 'DELETE', url: string, payload?: unknown, cookie = t.cookie) =>
    t.app.inject({ method, url: `/api/projetos${url}`, payload: payload as object, headers: { cookie } });

  beforeAll(async () => {
    vt8 = (await queryOne<{ id: number }>(`select id from produto where codigo = 'VT8'`))!.id;
    kit = (await queryOne<{ id: number }>(`select id from produto where codigo = 'KITBOX'`))!.id;
    boxId = (await queryOne<{ id: number }>(`select id from projeto where nome = 'Box frontal 2 folhas'`))!.id;
    cookieVendedor = await login(t.app, 'vendedor');
    cookieProducao = await login(t.app, 'producao');
  });

  const novoProjeto = () => ({
    nome: 'Janela 2 folhas de correr',
    descricao: 'Teste',
    itens: [
      { descricao: 'Folha', tipo: 'vidro', quantidade: 2, formula_largura: 'L/2 + 30', formula_altura: 'A - 40', folga_largura_mm: 5, folga_altura_mm: 0 },
      { descricao: 'Kit', tipo: 'ferragem', produto_id: kit, quantidade: 1 },
    ],
  });

  it('lista com o projeto do seed e contagem de itens', async () => {
    const res = await req('GET', '/?q=box');
    expect(res.statusCode).toBe(200);
    const body = res.json();
    expect(body.total).toBe(1);
    expect(body.items[0]).toMatchObject({ nome: 'Box frontal 2 folhas', qtd_itens: 3, ativo: true });
  });

  it('detalhe traz os itens ordenados com o produto', async () => {
    const res = await req('GET', `/${boxId}`);
    expect(res.statusCode).toBe(200);
    const p = res.json();
    expect(p.itens.map((i: { descricao: string }) => i.descricao)).toEqual(['Folha fixa', 'Folha móvel', 'Kit de ferragens']);
    expect(p.itens[2]).toMatchObject({ produto_id: kit, produto_codigo: 'KITBOX' });
    expect((await req('GET', '/999999')).statusCode).toBe(404);
  });

  it('vendedor cria, edita e exclui projeto', async () => {
    const criado = await req('POST', '/', novoProjeto(), cookieVendedor);
    expect(criado.statusCode).toBe(201);
    const p = criado.json();
    expect(p.itens).toHaveLength(2);
    expect(p.itens[0]).toMatchObject({ descricao: 'Folha', produto_id: null, quantidade: 2, formula_largura: 'L/2 + 30', folga_largura_mm: 5, ordem: 1 });

    const edit = await req('PUT', `/${p.id}`, { ...novoProjeto(), nome: 'Janela editada', itens: [novoProjeto().itens[1]] }, cookieVendedor);
    expect(edit.statusCode).toBe(200);
    expect(edit.json()).toMatchObject({ nome: 'Janela editada' });
    expect(edit.json().itens).toHaveLength(1);

    expect((await req('DELETE', `/${p.id}`, undefined, cookieVendedor)).statusCode).toBe(204);
    expect((await req('GET', `/${p.id}`)).statusCode).toBe(404);
  });

  it('valida fórmulas e produto obrigatório (400)', async () => {
    const formulaRuim = await req('POST', '/', { ...novoProjeto(), itens: [{ descricao: 'Folha', tipo: 'vidro', formula_largura: 'L/2 +', formula_altura: 'A' }] });
    expect(formulaRuim.statusCode).toBe(400);
    expect(formulaRuim.json().error).toMatch(/Folha: fórmula de largura inválida/);

    const variavel = await req('POST', '/', { ...novoProjeto(), itens: [{ descricao: 'Folha', tipo: 'vidro', formula_largura: 'X', formula_altura: 'A' }] });
    expect(variavel.json().error).toMatch(/Variável desconhecida/);

    const semProduto = await req('POST', '/', { ...novoProjeto(), itens: [{ descricao: 'Kit', tipo: 'ferragem' }] });
    expect(semProduto.statusCode).toBe(400);
    expect(semProduto.json().error).toMatch(/informe o produto/);

    const produtoInexistente = await req('POST', '/', { ...novoProjeto(), itens: [{ descricao: 'Kit', tipo: 'ferragem', produto_id: 999999 }] });
    expect(produtoInexistente.statusCode).toBe(400);

    expect((await req('POST', '/', { nome: '' })).statusCode).toBe(400);
  });

  it('simula o box do seed sem gravar', async () => {
    const antes = await queryOne<{ n: number }>('select count(*)::int as n from projeto_item');
    const res = await req('POST', `/${boxId}/simular`, { largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 2, vidro_produto_id: vt8 }, cookieProducao);
    expect(res.statusCode).toBe(200);
    const { pecas } = res.json();
    expect(pecas).toEqual([
      expect.objectContaining({ descricao: 'Folha fixa', produto_id: vt8, produto_codigo: 'VT8', unidade: 'M2', quantidade: 2, largura_mm: 775, altura_mm: 1890 }),
      expect.objectContaining({ descricao: 'Folha móvel', produto_id: vt8, quantidade: 2, largura_mm: 775, altura_mm: 1870 }),
      expect.objectContaining({ descricao: 'Kit de ferragens', produto_id: kit, unidade: 'UN', quantidade: 2, largura_mm: null, altura_mm: null }),
    ]);
    expect((await queryOne<{ n: number }>('select count(*)::int as n from projeto_item'))!.n).toBe(antes!.n);
  });

  it('simulação sem vidro ou com vão inválido dá 400', async () => {
    const semVidro = await req('POST', `/${boxId}/simular`, { largura_vao_mm: 1500, altura_vao_mm: 1900 });
    expect(semVidro.statusCode).toBe(400);
    expect(semVidro.json().error).toMatch(/escolha o vidro/);
    expect((await req('POST', `/${boxId}/simular`, { largura_vao_mm: 0, altura_vao_mm: 1900, vidro_produto_id: vt8 })).statusCode).toBe(400);
    expect((await req('POST', `/999999/simular`, { largura_vao_mm: 10, altura_vao_mm: 10 })).statusCode).toBe(404);
  });

  it('schemas: medidas, folgas, quantidades e ids fora do limite dão 400 (regressão)', async () => {
    const item = { descricao: 'Folha', tipo: 'vidro', formula_largura: 'L', formula_altura: 'A' };
    const casos: unknown[] = [
      { ...novoProjeto(), itens: [{ ...item, folga_largura_mm: 3_000_000_000 }] },
      { ...novoProjeto(), itens: [{ ...item, folga_altura_mm: 1.5 }] },
      { ...novoProjeto(), itens: [{ ...item, quantidade: 1e8 }] },
      { ...novoProjeto(), itens: [{ ...item, quantidade: 0 }] },
      { ...novoProjeto(), itens: [{ descricao: 'Kit', tipo: 'ferragem', produto_id: 3_000_000_000 }] },
    ];
    for (const body of casos) expect((await req('POST', '/', body)).statusCode, JSON.stringify(body)).toBe(400);
    const vaos: unknown[] = [
      { largura_vao_mm: 3_000_000_000, altura_vao_mm: 1900, vidro_produto_id: vt8 },
      { largura_vao_mm: 1500.5, altura_vao_mm: 1900, vidro_produto_id: vt8 },
      { largura_vao_mm: 1500, altura_vao_mm: 1900, quantidade: 1e9, vidro_produto_id: vt8 },
      { largura_vao_mm: 1500, altura_vao_mm: 1900, vidro_produto_id: 3_000_000_000 },
    ];
    for (const body of vaos) expect((await req('POST', `/${boxId}/simular`, body)).statusCode, JSON.stringify(body)).toBe(400);
    expect((await req('GET', '/99999999999')).statusCode).toBe(400);
  });

  it('projeto inativo ainda pode ser simulado (a inclusão em orçamento é que o recusa)', async () => {
    const criado = (await req('POST', '/', { ...novoProjeto(), ativo: false }, cookieVendedor)).json();
    const res = await req('POST', `/${criado.id}/simular`, { largura_vao_mm: 1000, altura_vao_mm: 1000, vidro_produto_id: vt8 });
    expect(res.statusCode).toBe(200);
    expect(res.json().pecas).toHaveLength(2);
  });

  it('perfil produção lê mas não escreve (403)', async () => {
    expect((await req('GET', '/', undefined, cookieProducao)).statusCode).toBe(200);
    expect((await req('POST', '/', novoProjeto(), cookieProducao)).statusCode).toBe(403);
    expect((await req('PUT', `/${boxId}`, novoProjeto(), cookieProducao)).statusCode).toBe(403);
    expect((await req('DELETE', `/${boxId}`, undefined, cookieProducao)).statusCode).toBe(403);
  });

  it('projeto usado em orçamento é desativado em vez de excluído', async () => {
    const cliente = (await queryOne<{ id: number }>(`select id from pessoa where tipo = 'cliente' limit 1`))!.id;
    const orc = (await queryOne<{ id: number }>(
      `insert into orcamento (filial_id, numero, cliente_id) values ((select min(id) from filial), 900, $1) returning id`,
      [cliente],
    ))!.id;
    await queryOne(
      `insert into orcamento_projeto (orcamento_id, projeto_id, largura_vao_mm, altura_vao_mm) values ($1, $2, 1000, 1000)`,
      [orc, boxId],
    );
    expect((await req('DELETE', `/${boxId}`)).statusCode).toBe(204);
    expect((await req('GET', `/${boxId}`)).json()).toMatchObject({ ativo: false });
    expect((await req('GET', '/?ativo=true')).json().items.some((p: { id: number }) => p.id === boxId)).toBe(false);
  });
});
