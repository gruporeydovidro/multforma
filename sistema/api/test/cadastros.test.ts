import { beforeAll, describe, expect, it } from 'vitest';
import { getPool, query, queryOne } from '../src/lib/db.js';
import { CatalogoService } from '../src/modules/cadastros/catalogo.service.js';
import { login, useTestApp } from './helpers.js';

const BASE = '/api/cadastros';

describe('cadastros', () => {
  const t = useTestApp();
  let vendedor: string;
  let producao: string;

  const req = (method: 'GET' | 'POST' | 'PUT' | 'DELETE', url: string, payload?: unknown, cookie = t.cookie) =>
    t.app.inject({ method, url: `${BASE}${url}`, payload: payload as any, headers: { cookie } });

  beforeAll(async () => {
    vendedor = await login(t.app, 'vendedor');
    producao = await login(t.app, 'producao');
  });

  it('exige sessão', async () => {
    const res = await t.app.inject({ method: 'GET', url: `${BASE}/pessoas` });
    expect(res.statusCode).toBe(401);
  });

  describe('pessoas', () => {
    let clienteId: number;

    it('cria cliente com CPF válido e devolve o documento formatado', async () => {
      const res = await req('POST', '/pessoas', {
        tipo: 'cliente', natureza: 'F', nome: 'Maria Souza', cpf_cnpj: '52998224725', email: '', uf: 'sp', cidade: 'Campinas',
      }, vendedor);
      expect(res.statusCode).toBe(201);
      const p = res.json();
      expect(p).toMatchObject({ nome: 'Maria Souza', cpf_cnpj: '529.982.247-25', email: null, uf: 'SP', ativo: true, limite_credito: 0 });
      clienteId = p.id;
    });

    it('rejeita CPF e CNPJ inválidos com erro no campo', async () => {
      const cpf = await req('POST', '/pessoas', { nome: 'X', natureza: 'F', cpf_cnpj: '529.982.247-24' });
      expect(cpf.statusCode).toBe(400);
      expect(cpf.json()).toMatchObject({ error: 'CPF inválido', details: { fieldErrors: { cpf_cnpj: ['CPF inválido'] } } });

      const cnpj = await req('POST', '/pessoas', { nome: 'Y', natureza: 'J', cpf_cnpj: '11.222.333/0001-80' });
      expect(cnpj.statusCode).toBe(400);
      expect(cnpj.json().error).toBe('CNPJ inválido');

      const trocado = await req('POST', '/pessoas', { nome: 'Z', natureza: 'J', cpf_cnpj: '52998224725' });
      expect(trocado.statusCode).toBe(400);
    });

    it('rejeita CPF/CNPJ já cadastrado, com ou sem máscara', async () => {
      const res = await req('POST', '/pessoas', { nome: 'Outra', natureza: 'F', cpf_cnpj: '529.982.247-25' });
      expect(res.statusCode).toBe(409);
      expect(res.json().error).toMatch(/CPF\/CNPJ/);
    });

    it('valida campos obrigatórios', async () => {
      const res = await req('POST', '/pessoas', { nome: '  ' });
      expect(res.statusCode).toBe(400);
      expect(res.json().details.fieldErrors.nome).toBeDefined();
    });

    it('busca por nome, fantasia e CPF/CNPJ com ou sem máscara', async () => {
      await req('POST', '/pessoas', { tipo: 'ambos', natureza: 'J', nome: 'Alumínios Beta Ltda', fantasia: 'Beta Alumínio', cpf_cnpj: '11.444.777/0001-61' });

      const porNome = (await req('GET', '/pessoas?q=maria')).json();
      expect(porNome.items.map((p: any) => p.nome)).toEqual(['Maria Souza']);

      expect((await req('GET', '/pessoas?q=beta alum')).json().total).toBe(1);
      expect((await req('GET', '/pessoas?q=11444777')).json().items[0].nome).toBe('Alumínios Beta Ltda');
      expect((await req('GET', '/pessoas?q=529.982')).json().items[0].id).toBe(clienteId);
      expect((await req('GET', '/pessoas?q=%25')).json().total).toBe(0);
    });

    it('lista no formato do contrato, com tipo cliente/fornecedor incluindo ambos', async () => {
      const clientes = (await req('GET', '/pessoas?tipo=cliente&pageSize=2&page=1', undefined, producao)).json();
      expect(clientes).toMatchObject({ page: 1, pageSize: 2, total: 3 });
      expect(clientes.items).toHaveLength(2);
      for (const k of ['id', 'nome', 'fantasia', 'cpf_cnpj', 'tipo', 'telefone', 'cidade', 'uf', 'ativo']) expect(clientes.items[0]).toHaveProperty(k);

      const fornecedores = (await req('GET', '/pessoas?tipo=fornecedor')).json();
      expect(fornecedores.items.map((p: any) => p.tipo).sort()).toEqual(['ambos', 'fornecedor']);
      expect((await req('GET', '/pessoas?tipo=ambos')).json().total).toBe(1);
    });

    it('edita (parcialmente) e revalida o documento ao trocar a natureza', async () => {
      const ok = await req('PUT', `/pessoas/${clienteId}`, { telefone: '(19) 99999-0000' }, vendedor);
      expect(ok.statusCode).toBe(200);
      expect(ok.json()).toMatchObject({ telefone: '(19) 99999-0000', cpf_cnpj: '529.982.247-25' });

      const ruim = await req('PUT', `/pessoas/${clienteId}`, { natureza: 'J' });
      expect(ruim.statusCode).toBe(400);
    });

    it('filtra por ativo e desativa em vez de excluir quando há vínculo', async () => {
      const semVinculo = (await req('POST', '/pessoas', { nome: 'Temporário' })).json();
      expect((await req('DELETE', `/pessoas/${semVinculo.id}`)).statusCode).toBe(204);
      expect((await req('GET', `/pessoas/${semVinculo.id}`)).statusCode).toBe(404);

      await query(`insert into conta_receber (filial_id, cliente_id, vencimento, valor) values (1, $1, current_date, 10)`, [clienteId]);
      const del = await req('DELETE', `/pessoas/${clienteId}`, undefined, vendedor);
      expect(del.statusCode).toBe(200);
      expect(del.json()).toEqual({ desativado: true });
      expect((await req('GET', `/pessoas/${clienteId}`)).json().ativo).toBe(false);
      expect((await req('GET', '/pessoas?ativo=false')).json().items.map((p: any) => p.id)).toEqual([clienteId]);
    });

    it('perfil produção só lê', async () => {
      expect((await req('GET', `/pessoas/${clienteId}`, undefined, producao)).statusCode).toBe(200);
      expect((await req('POST', '/pessoas', { nome: 'Nada' }, producao)).statusCode).toBe(403);
    });
  });

  describe('produtos', () => {
    let produtoId: number;
    let tabelas: { id: number; nome: string }[];

    it('cria produto (vendedor pode) e devolve grupo e arredondamento', async () => {
      const grupo = (await req('GET', '/grupos?q=vidros')).json().items[0];
      const arr = (await req('GET', '/arredondamentos')).json().items.find((a: any) => a.valor_cm === 5);
      const res = await req('POST', '/produtos', {
        codigo: 'VL6', nome: 'Vidro laminado 6 mm', unidade_venda: 'M2', grupo_id: grupo.id, arredondamento_id: arr.id,
        espessura_mm: '6', preco_venda: 320, custo: 150, area_minima_m2: 0.25,
      }, vendedor);
      expect(res.statusCode).toBe(201);
      const p = res.json();
      expect(p).toMatchObject({ codigo: 'VL6', tipo: 'produto', espessura_mm: 6, grupo_nome: 'Vidros', arredondamento_valor_cm: 5, ativo: true });
      produtoId = p.id;
    });

    it('rejeita código duplicado (sem diferenciar maiúsculas) e referências inexistentes', async () => {
      expect((await req('POST', '/produtos', { codigo: 'vl6', nome: 'Outro' })).statusCode).toBe(409);
      const grupo = await req('POST', '/produtos', { codigo: 'NOVO', nome: 'Novo', grupo_id: 9999 });
      expect(grupo.statusCode).toBe(400);
      expect(grupo.json().details.fieldErrors.grupo_id).toEqual(['Grupo não encontrado']);
      expect((await req('POST', '/produtos', { codigo: 'NOVO', nome: 'Novo', unidade_venda: 'XX' })).statusCode).toBe(400);
    });

    it('busca por código e nome, com código exato primeiro, e filtra', async () => {
      const porCodigo = (await req('GET', '/produtos?q=vt8&ativo=true')).json();
      expect(porCodigo.items[0].codigo).toBe('VT8');
      for (const k of ['id', 'codigo', 'nome', 'tipo', 'unidade_venda', 'preco_venda', 'espessura_mm', 'ativo']) expect(porCodigo.items[0]).toHaveProperty(k);

      expect((await req('GET', '/produtos?q=laminado')).json().items.map((p: any) => p.codigo)).toEqual(['VL6']);
      const servicos = (await req('GET', '/produtos?tipo=servico')).json();
      expect(servicos.items.every((p: any) => p.tipo === 'servico')).toBe(true);
      expect(servicos.total).toBe(2);

      const grupo = (await req('GET', '/grupos?q=vidros')).json().items[0];
      expect((await req('GET', `/produtos?grupo=${grupo.id}`)).json().total).toBe(5);
      expect((await req('GET', `/produtos?grupo_id=${grupo.id}&q=espelho`)).json().total).toBe(1);
    });

    it('edita produto', async () => {
      const res = await req('PUT', `/produtos/${produtoId}`, { preco_venda: 330.5, grupo_id: null }, vendedor);
      expect(res.statusCode).toBe(200);
      expect(res.json()).toMatchObject({ preco_venda: 330.5, grupo_id: null, codigo: 'VL6' });
    });

    it('grava e lê preços por tabela', async () => {
      tabelas = (await req('GET', '/tabelas-preco')).json().items;
      const [a, b] = tabelas;
      expect((await req('GET', `/produtos/${produtoId}/precos`)).json()).toEqual([]);

      const put = await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: a.id, preco: 300 }, { tabela_preco_id: b.id, preco: 280.25 }], vendedor);
      expect(put.statusCode).toBe(200);
      expect(put.json().map((p: any) => [p.tabela_preco_id, p.preco]).sort()).toEqual([[a.id, 300], [b.id, 280.25]].sort());

      const troca = await req('PUT', `/produtos/${produtoId}/precos`, { precos: [{ tabela_preco_id: b.id, preco: 270 }] });
      expect(troca.json()).toEqual([{ tabela_preco_id: b.id, tabela_nome: b.nome, preco: 270 }]);
    });

    it('valida preços por tabela', async () => {
      const [a] = tabelas;
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: a.id, preco: 1 }, { tabela_preco_id: a.id, preco: 2 }])).statusCode).toBe(400);
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: 9999, preco: 1 }])).statusCode).toBe(400);
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: a.id, preco: -1 }])).statusCode).toBe(400);
      expect((await req('PUT', '/produtos/9999/precos', [])).statusCode).toBe(404);
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [], producao)).statusCode).toBe(403);
    });

    it('controla estoque por padrão só em produto; serviço nunca controla', async () => {
      const produto = await req('POST', '/produtos', { codigo: 'CE-P', nome: 'Produto padrão' });
      expect(produto.json().controla_estoque).toBe(true);
      const servico = await req('POST', '/produtos', { codigo: 'CE-S', nome: 'Serviço padrão', tipo: 'servico' });
      expect(servico.statusCode).toBe(201);
      expect(servico.json().controla_estoque).toBe(false);
      const semControle = await req('POST', '/produtos', { codigo: 'CE-P2', nome: 'Produto sem controle', controla_estoque: false });
      expect(semControle.json().controla_estoque).toBe(false);

      const recusado = await req('POST', '/produtos', { codigo: 'CE-S2', nome: 'Serviço com estoque', tipo: 'servico', controla_estoque: true });
      expect(recusado.statusCode).toBe(400);
      expect(recusado.json().details.fieldErrors.controla_estoque).toEqual(['Serviço não controla estoque']);
      expect((await req('GET', '/produtos?q=CE-S2')).json().total).toBe(0);
    });

    it('ao trocar o tipo sem informar controla_estoque, aplica o padrão do novo tipo', async () => {
      const p = (await req('POST', '/produtos', { codigo: 'CE-T', nome: 'Troca de tipo' })).json();
      const paraServico = await req('PUT', `/produtos/${p.id}`, { tipo: 'servico' });
      expect(paraServico.json()).toMatchObject({ tipo: 'servico', controla_estoque: false });
      expect((await req('PUT', `/produtos/${p.id}`, { controla_estoque: true })).statusCode).toBe(400);
      expect((await req('PUT', `/produtos/${p.id}`, { tipo: 'produto', controla_estoque: true })).json().controla_estoque).toBe(true);

      // Mesmo tipo: o valor atual é mantido.
      await req('PUT', `/produtos/${p.id}`, { controla_estoque: false });
      expect((await req('PUT', `/produtos/${p.id}`, { tipo: 'produto', nome: 'Renomeado' })).json().controla_estoque).toBe(false);
      await req('PUT', `/produtos/${p.id}`, { tipo: 'servico' });
      expect((await req('PUT', `/produtos/${p.id}`, { tipo: 'produto' })).json().controla_estoque).toBe(true);
    });

    it('recusa valores acima das colunas com 400 e erro no campo (não 500)', async () => {
      const campos: [string, unknown][] = [
        ['preco_venda', 1e10], ['custo', 1e12], ['estoque_minimo', 1e11], ['area_minima_m2', 1e6],
        ['espessura_mm', 1e5], ['perda_pct', 101], ['grupo_id', 3e9], ['arredondamento_id', 1.5],
      ];
      for (const [campo, valor] of campos) {
        const res = await req('POST', '/produtos', { codigo: 'OVF', nome: 'Overflow', [campo]: valor });
        expect(res.statusCode, campo).toBe(400);
        expect(res.json().details.fieldErrors[campo], campo).toBeDefined();
      }
      expect((await req('POST', '/produtos', { codigo: 'OVF', nome: 'No limite', preco_venda: 9_999_999_999, custo: 0.0001 })).statusCode).toBe(201);
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: tabelas[0].id, preco: 1e11 }])).statusCode).toBe(400);
      expect((await req('PUT', `/produtos/${produtoId}/precos`, [{ tabela_preco_id: 99_999_999_999, preco: 1 }])).statusCode).toBe(400);
      expect((await req('GET', '/produtos/99999999999')).statusCode).toBe(400);
      expect((await req('PUT', '/produtos/99999999999', { nome: 'x' })).statusCode).toBe(400);
    });

    it('catálogo (porta): atualiza o custo arredondado a 4 casas e recusa produto inexistente', async () => {
      const catalogo = new CatalogoService();
      await catalogo.atualizarCusto(getPool(), produtoId, 12.345678);
      expect((await queryOne('select custo from produto where id = $1', [produtoId])).custo).toBe(12.3457);
      await catalogo.atualizarCusto(getPool(), produtoId, 2.00005);
      expect((await queryOne('select custo from produto where id = $1', [produtoId])).custo).toBe(2.0001);

      await expect(catalogo.atualizarCusto(getPool(), 999_999, 10)).rejects.toMatchObject({ status: 404, message: 'Produto 999999 não encontrado' });
      await expect(catalogo.atualizarCusto(getPool(), produtoId, -1)).rejects.toMatchObject({ status: 400 });
      await expect(catalogo.atualizarCusto(getPool(), produtoId, Number.NaN)).rejects.toMatchObject({ status: 400 });
      await expect(catalogo.atualizarCusto(getPool(), produtoId, 1e12)).rejects.toMatchObject({ status: 400 });
    });

    it('exclui produto sem vínculo (preços vão junto) e desativa o que tem vínculo', async () => {
      expect((await req('DELETE', `/produtos/${produtoId}`)).statusCode).toBe(204);
      const kit = (await req('GET', '/produtos?q=KITBOX')).json().items[0];
      const del = await req('DELETE', `/produtos/${kit.id}`);
      expect(del.json()).toEqual({ desativado: true });
      expect((await req('GET', `/produtos/${kit.id}`)).json().ativo).toBe(false);
    });
  });

  describe('funcionários', () => {
    it('só admin grava; filtros vendedor e instalador', async () => {
      expect((await req('POST', '/funcionarios', { nome: 'João' }, vendedor)).statusCode).toBe(403);
      expect((await req('POST', '/funcionarios', { nome: 'Comissão alta', comissao_pct: 1000 })).statusCode).toBe(400);
      expect((await req('POST', '/pessoas', { nome: 'Limite alto', limite_credito: 1e13 })).statusCode).toBe(400);
      const res = await req('POST', '/funcionarios', { nome: 'João Instalador', instalador: true, comissao_pct: 2 });
      expect(res.statusCode).toBe(201);
      expect(res.json()).toMatchObject({ vendedor: false, instalador: true, comissao_pct: 2 });

      const vendedores = (await req('GET', '/funcionarios?vendedor=true', undefined, vendedor)).json();
      expect(vendedores.items.map((f: any) => f.nome)).toEqual(['Vendedor Padrão']);
      const instaladores = (await req('GET', '/funcionarios?instalador=true')).json();
      expect(instaladores.items.map((f: any) => f.nome)).toEqual(['João Instalador']);
      expect((await req('GET', '/funcionarios?vendedor=false&instalador=false')).json().total).toBe(0);

      const editado = await req('PUT', `/funcionarios/${res.json().id}`, { vendedor: true });
      expect(editado.json()).toMatchObject({ vendedor: true, instalador: true });
    });
  });

  describe('grupos, arredondamentos e tabelas de preço', () => {
    it('CRUD de grupo; exclusão com produtos vinculados é recusada', async () => {
      const novo = await req('POST', '/grupos', { nome: 'Perfis' });
      expect(novo.statusCode).toBe(201);
      expect(novo.json()).toMatchObject({ nome: 'Perfis', produtos: 0 });
      expect((await req('POST', '/grupos', { nome: 'Perfis' })).statusCode).toBe(409);
      expect((await req('PUT', `/grupos/${novo.json().id}`, { nome: 'Perfis de alumínio' })).json().nome).toBe('Perfis de alumínio');
      expect((await req('DELETE', `/grupos/${novo.json().id}`)).statusCode).toBe(204);

      const vidros = (await req('GET', '/grupos?q=vidros')).json().items[0];
      expect(vidros.produtos).toBeGreaterThan(0);
      const del = await req('DELETE', `/grupos/${vidros.id}`);
      expect(del.statusCode).toBe(409);
      expect(del.json().error).toBe('Grupo possui vínculos e não pode ser excluído');
      expect((await req('POST', '/grupos', { nome: 'X' }, vendedor)).statusCode).toBe(403);
    });

    it('arredondamento valida valor_cm', async () => {
      for (const valor_cm of [0, -5, 1.5, 100_000, 1e12]) {
        expect((await req('POST', '/arredondamentos', { descricao: 'Inválido', valor_cm })).statusCode, String(valor_cm)).toBe(400);
      }
      const res = await req('POST', '/arredondamentos', { descricao: 'Múltiplo de 3 cm', valor_cm: 3 });
      expect(res.statusCode).toBe(201);
      const lista = (await req('GET', '/arredondamentos')).json().items.map((a: any) => a.valor_cm);
      expect(lista).toEqual([1, 3, 5, 10]);
      expect((await req('GET', '/arredondamentos/9999')).statusCode).toBe(404);
    });

    it('tabela de preço no formato do contrato', async () => {
      const res = await req('POST', '/tabelas-preco', { nome: 'Construtoras' });
      expect(res.json()).toEqual({ id: expect.any(Number), nome: 'Construtoras', ativo: true });
      const lista = (await req('GET', '/tabelas-preco?ativo=true', undefined, vendedor)).json();
      expect(lista.items.map((t: any) => t.nome)).toEqual(['Construtoras', 'Padrão', 'Revenda']);
      expect((await req('PUT', `/tabelas-preco/${res.json().id}`, { ativo: false })).json().ativo).toBe(false);
      expect((await req('GET', '/tabelas-preco/9999')).json().error).toBe('Tabela de preço não encontrada');
    });
  });

  describe('filiais', () => {
    it('só admin cria; CNPJ validado e formatado', async () => {
      expect((await req('POST', '/filiais', { nome: 'Filial 2' }, vendedor)).statusCode).toBe(403);
      expect((await req('POST', '/filiais', { nome: 'Filial 2', cnpj: '123' })).statusCode).toBe(400);
      const res = await req('POST', '/filiais', { nome: 'Filial Campinas', cnpj: '11444777000161', uf: 'SP' });
      expect(res.statusCode).toBe(201);
      expect(res.json()).toMatchObject({ cnpj: '11.444.777/0001-61', ativo: true });
      expect((await req('GET', '/filiais', undefined, vendedor)).json().total).toBe(2);
    });

    it('não deixa desativar ou excluir a filial do usuário logado', async () => {
      expect((await req('PUT', '/filiais/1', { ativo: false })).statusCode).toBe(400);
      expect((await req('DELETE', '/filiais/1')).statusCode).toBe(400);
    });
  });

  describe('usuários', () => {
    let usuarioId: number;

    it('vendedor não lista nem cria usuário', async () => {
      expect((await req('GET', '/usuarios', undefined, vendedor)).statusCode).toBe(403);
      expect((await req('POST', '/usuarios', { nome: 'X', login: 'xxx', senha: '123456', perfil: 'admin' }, vendedor)).statusCode).toBe(403);
    });

    it('cria com login em minúsculas, sem expor senha_hash, e o novo usuário consegue entrar', async () => {
      const res = await req('POST', '/usuarios', { nome: 'Carla Financeiro', login: ' Carla.F ', senha: 'abc12345', perfil: 'financeiro' });
      expect(res.statusCode).toBe(201);
      const u = res.json();
      expect(u).toMatchObject({ login: 'carla.f', perfil: 'financeiro', filial_id: 1, filial_nome: 'Matriz', ativo: true });
      expect(u).not.toHaveProperty('senha_hash');
      expect(u).not.toHaveProperty('senha');
      usuarioId = u.id;

      const entrar = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'carla.f', senha: 'abc12345' } });
      expect(entrar.statusCode).toBe(200);

      const lista = (await req('GET', '/usuarios?q=carla')).json();
      expect(lista.total).toBe(1);
      expect(lista.items[0]).not.toHaveProperty('senha_hash');
    });

    it('rejeita login duplicado, login inválido, senha curta e filial inexistente', async () => {
      const dup = await req('POST', '/usuarios', { nome: 'Outra', login: 'CARLA.F', senha: 'abc12345', perfil: 'vendedor' });
      expect(dup.statusCode).toBe(409);
      expect(dup.json().error).toBe('Este login já está em uso');
      expect((await req('PUT', '/usuarios/1', { login: 'carla.f' })).statusCode).toBe(409);

      const invalido = await req('POST', '/usuarios', { nome: 'A', login: 'com espaço', senha: 'abc12345', perfil: 'vendedor' });
      expect(invalido.json().details.fieldErrors.login).toBeDefined();
      const curta = await req('POST', '/usuarios', { nome: 'A', login: 'novo', senha: '123', perfil: 'vendedor' });
      expect(curta.json().details.fieldErrors.senha).toBeDefined();
      const filial = await req('POST', '/usuarios', { nome: 'A', login: 'novo', senha: '123456', perfil: 'vendedor', filial_id: 999 });
      expect(filial.json().details.fieldErrors.filial_id).toEqual(['Filial não encontrada']);
      expect((await req('POST', '/usuarios', { nome: 'A', login: 'novo', senha: '123456', perfil: 'chefe' })).statusCode).toBe(400);
    });

    it('edita, ignora senha no PUT comum e redefine a senha pelo endpoint próprio', async () => {
      const edit = await req('PUT', `/usuarios/${usuarioId}`, { nome: 'Carla F.', perfil: 'vendedor', senha: 'ignorada' });
      expect(edit.json()).toMatchObject({ nome: 'Carla F.', perfil: 'vendedor' });

      expect((await req('PUT', `/usuarios/${usuarioId}/senha`, { senha: '12' })).statusCode).toBe(400);
      expect((await req('PUT', `/usuarios/${usuarioId}/senha`, { senha: 'nova123' }, vendedor)).statusCode).toBe(403);
      expect((await req('PUT', `/usuarios/${usuarioId}/senha`, { senha: 'nova123' })).json()).toEqual({ ok: true });
      const velha = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'carla.f', senha: 'abc12345' } });
      expect(velha.statusCode).toBe(401);
      const nova = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'carla.f', senha: 'nova123' } });
      expect(nova.statusCode).toBe(200);
    });

    it('admin não pode se desativar, perder o perfil nem se excluir', async () => {
      const desativar = await req('PUT', '/usuarios/1', { ativo: false });
      expect(desativar.statusCode).toBe(400);
      expect(desativar.json().error).toBe('Você não pode desativar o seu próprio usuário');
      expect((await req('PUT', '/usuarios/1', { perfil: 'vendedor' })).statusCode).toBe(400);
      expect((await req('DELETE', '/usuarios/1')).statusCode).toBe(400);
      expect((await req('PUT', '/usuarios/1', { nome: 'Administrador do sistema' })).statusCode).toBe(200);
    });

    it('exclui usuário sem vínculo e desativa outro usuário', async () => {
      const outro = (await req('POST', '/usuarios', { nome: 'Temp', login: 'temp', senha: '123456', perfil: 'producao' })).json();
      expect((await req('DELETE', `/usuarios/${outro.id}`)).statusCode).toBe(204);
      expect((await req('PUT', `/usuarios/${usuarioId}`, { ativo: false })).json().ativo).toBe(false);
      const entrar = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'carla.f', senha: 'nova123' } });
      expect(entrar.statusCode).toBe(401);
    });
  });

  describe('transação da gravação com o log', () => {
    /** Faz todo insert em log_sistema falhar enquanto fn roda. */
    async function comLogQuebrado(fn: () => Promise<void>) {
      await query(`create or replace function falha_log() returns trigger language plpgsql as $$ begin raise exception 'log indisponível'; end $$`);
      await query('create trigger falha_log before insert on log_sistema for each row execute function falha_log()');
      try {
        await fn();
      } finally {
        await query('drop trigger falha_log on log_sistema');
        await query('drop function falha_log()');
      }
    }
    const entrar = (login: string, senha: string) => t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login, senha } });

    it('grava o log da criação, da edição e da senha', async () => {
      const u = (await req('POST', '/usuarios', { nome: 'Com log', login: 'comlog', senha: '123456', perfil: 'vendedor' })).json();
      await req('PUT', `/usuarios/${u.id}`, { nome: 'Com log 2' });
      await req('PUT', `/usuarios/${u.id}/senha`, { senha: '654321' });
      const acoes = await query(`select acao from log_sistema where entidade = 'usuario' and entidade_id = $1 order by id`, [u.id]);
      expect(acoes.map((l) => l.acao)).toEqual(['usuario_criado', 'usuario_alterado', 'usuario_senha_redefinida']);
    });

    it('falha no log desfaz a criação, a edição e a troca de senha', async () => {
      const u = (await req('POST', '/usuarios', { nome: 'Original', login: 'txuser', senha: '123456', perfil: 'vendedor' })).json();
      const cookieU = await (async () => {
        const r = await entrar('txuser', '123456');
        return `vg_session=${r.cookies.find((c) => c.name === 'vg_session')!.value}`;
      })();

      await comLogQuebrado(async () => {
        expect((await req('POST', '/usuarios', { nome: 'Sem log', login: 'semlog', senha: '123456', perfil: 'vendedor' })).statusCode).toBe(500);
        expect((await req('PUT', `/usuarios/${u.id}`, { nome: 'Alterado' })).statusCode).toBe(500);
        expect((await req('PUT', `/usuarios/${u.id}/senha`, { senha: 'trocada1' })).statusCode).toBe(500);
        expect((await req('PUT', '/minha-senha', { senha_atual: '123456', nova_senha: 'trocada2' }, cookieU)).statusCode).toBe(500);
      });

      expect(await queryOne(`select 1 from usuario where login = 'semlog'`)).toBeUndefined();
      expect((await req('GET', `/usuarios/${u.id}`)).json().nome).toBe('Original');
      expect((await entrar('txuser', '123456')).statusCode).toBe(200);
      expect((await entrar('txuser', 'trocada1')).statusCode).toBe(401);
      expect((await entrar('txuser', 'trocada2')).statusCode).toBe(401);
    });
  });

  describe('minha senha', () => {
    it('confere a senha atual e troca a do próprio usuário', async () => {
      const errada = await req('PUT', '/minha-senha', { senha_atual: 'xxxxxx', nova_senha: 'outra123' }, vendedor);
      expect(errada.statusCode).toBe(400);
      expect(errada.json().details.fieldErrors.senha_atual).toEqual(['Senha atual incorreta']);

      const curta = await req('PUT', '/minha-senha', { senha_atual: 'senha123', nova_senha: '1' }, vendedor);
      expect(curta.json().details.fieldErrors.nova_senha).toBeDefined();

      expect((await req('PUT', '/minha-senha', { senha_atual: 'senha123', nova_senha: 'outra123' }, vendedor)).json()).toEqual({ ok: true });
      const entrar = await t.app.inject({ method: 'POST', url: '/api/auth/login', payload: { login: 'teste_vendedor', senha: 'outra123' } });
      expect(entrar.statusCode).toBe(200);
    });
  });
});
