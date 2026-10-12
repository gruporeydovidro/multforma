import { readFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { closePool, getPool, query } from '../src/lib/db.js';
import { Importador } from '../src/importacao/importador.js';
import { MapaLegado } from '../src/importacao/mapa-legado.js';
import { dataAnosAtras, type Escopo } from '../src/importacao/opcoes.js';
import { OrigemLegado } from '../src/importacao/origem.js';
import { Relatorio } from '../src/importacao/relatorio.js';
import { formula, statusOrcamento } from '../src/importacao/conversores.js';
import { resetDb } from './helpers.js';

const fixtures = join(dirname(fileURLToPath(import.meta.url)), 'fixtures');

/** Recria o banco de destino (com seed) e o schema "multforma" de origem, no mesmo banco de teste. */
async function prepararBancos() {
  await resetDb();
  const pool = getPool();
  await pool.query('drop schema if exists multforma cascade');
  await pool.query(readFileSync(join(fixtures, 'legado-estrutura.sql'), 'utf8'));
  await pool.query(readFileSync(join(fixtures, 'legado-dados.sql'), 'utf8'));
  await pool.query('set search_path = public');
}

async function importar(escopo: Escopo) {
  const origem = new OrigemLegado(process.env.DATABASE_URL!, 'multforma');
  const relatorio = new Relatorio();
  const ctx = { origem, destino: getPool(), mapa: new MapaLegado(getPool()), relatorio, log: () => {},
    opcoes: { escopo, desde: dataAnosAtras(2), schemaOrigem: 'multforma', tamanhoLote: 2 } };
  try {
    await new Importador(ctx).executar();
    return relatorio;
  } finally {
    await origem.fechar();
  }
}

const contar = async (tabela: string) => (await query(`select count(*)::int n from ${tabela}`))[0].n as number;

describe('conversores da importação', () => {
  it('converte fórmulas para L/A e recusa as inválidas', () => {
    expect(formula('LARGURA/2+25').texto).toBe('L/2+25');
    expect(formula('ALTURA - 10').texto).toBe('A - 10');
    expect(formula('L*1,5').texto).toBe('L*1.5');
    expect(formula('L*(1,5').texto).toBeNull();
    expect(formula('L*(1,5').aviso).toMatch(/não convertida/);
    expect(formula('').texto).toBeNull();
  });

  it('mapeia a situação do orçamento', () => {
    expect(statusOrcamento('9', null)).toBe('fechado');
    expect(statusOrcamento('3', null)).toBe('aprovado');
    expect(statusOrcamento('1', null)).toBe('aberto');
    expect(statusOrcamento('9', new Date())).toBe('cancelado');
  });
});

describe('importação do sistema anterior (escopo recente)', () => {
  let rel: Relatorio;
  beforeAll(async () => {
    await prepararBancos();
    rel = await importar('recente');
  });
  afterAll(async () => {
    await closePool();
  });

  it('importa filiais, assumindo a filial da instalação para a primeira', async () => {
    const f = await query('select id, nome, cnpj from filial order by id');
    expect(f).toHaveLength(2);
    expect(f[0]).toMatchObject({ id: 1, nome: 'Grupo Rey do Vidro Ltda', cnpj: '11.444.777/0001-61' });
  });

  it('importa pessoas com tipo, endereço principal e documentos tratados', async () => {
    const p = await query(`select p.nome, p.tipo, p.natureza, p.cpf_cnpj, p.logradouro, p.celular, p.observacoes
                             from pessoa p join legado_mapa m on m.entidade = 'pessoa' and m.id = p.id order by m.chave::int`);
    expect(p).toHaveLength(5);
    const [mariana, repetida, fornecedor, errado, duplicada] = p;
    expect(mariana).toMatchObject({ tipo: 'cliente', natureza: 'F', cpf_cnpj: '529.982.247-25', logradouro: 'Av. Ibirapuera', celular: '(11) 98765-4321' });
    expect(repetida.cpf_cnpj).toBeNull(); // já existia no seed
    expect(repetida.observacoes).toMatch(/repetido/);
    expect(fornecedor).toMatchObject({ tipo: 'fornecedor', natureza: 'J' });
    expect(errado.cpf_cnpj).toBeNull();
    expect(errado.observacoes).toMatch(/inválido/);
    expect(duplicada.cpf_cnpj).toBeNull();
  });

  it('importa produtos, preços, unidades e serviços', async () => {
    const pr = await query(`select codigo, tipo, unidade_venda, preco_venda, custo, area_minima_m2, controla_estoque, ativo, arredondamento_id
                              from produto where codigo in ('100','101','102') order by codigo`);
    expect(pr[0]).toMatchObject({ codigo: '100', tipo: 'produto', unidade_venda: 'M2', preco_venda: 300, custo: 120, area_minima_m2: 0.25, controla_estoque: true });
    expect(pr[0].arredondamento_id).not.toBeNull();
    expect(pr[1]).toMatchObject({ tipo: 'servico', controla_estoque: false });
    expect(pr[2].ativo).toBe(false);
    const precos = await query(`select t.nome, pp.preco from produto_preco pp join tabela_preco t on t.id = pp.tabela_preco_id
                                  join produto p on p.id = pp.produto_id where p.codigo = '100' order by pp.preco`);
    expect(precos.map((x) => x.preco)).toEqual([270, 300]);
    expect(precos.map((x) => x.nome)).toContain('Padrão (001)'); // nome já existia
  });

  it('importa projeto com fórmulas convertidas e registra as inválidas', async () => {
    const itens = await query(`select pi.descricao, pi.tipo, pi.produto_id, pi.formula_largura, pi.formula_altura
                                 from projeto_item pi join projeto p on p.id = pi.projeto_id where p.nome = 'Box 2 folhas' order by pi.ordem`);
    expect(itens).toHaveLength(3);
    expect(itens[0]).toMatchObject({ descricao: 'Folha fixa', tipo: 'vidro', produto_id: null, formula_largura: 'L/2+25', formula_altura: 'A-10' });
    expect(itens[1].tipo).toBe('ferragem');
    expect(itens[2].formula_largura).toBeNull();
    const [proj] = await query(`select descricao from projeto where nome = 'Box 2 folhas'`);
    expect(proj.descricao).toMatch(/L\*\(1,5/);
  });

  it('importa usuários inativos e não sobrescreve o admin', async () => {
    const u = await query(`select login, ativo, perfil, filial_id from usuario order by login`);
    expect(u.map((x) => x.login)).toEqual(['admin', 'maria']);
    expect(u[1]).toMatchObject({ ativo: false, perfil: 'vendedor', filial_id: 2 });
  });

  it('grava o saldo inicial só dos produtos que controlam estoque', async () => {
    const m = await query(`select quantidade, documento from estoque_movimento`);
    expect(m).toEqual([{ quantidade: 12.5, documento: 'SALDO INICIAL' }]);
  });

  it('no escopo recente traz só os orçamentos do período, com totais coerentes', async () => {
    const o = await query(`select numero, status, subtotal, desconto_valor, acrescimo_valor, frete_valor, total, forma_pagamento, destino
                             from orcamento order by numero`);
    expect(o.map((x) => [x.numero, x.status])).toEqual([[2, 'fechado']]);
    const o2 = o[0];
    expect(o2).toMatchObject({ subtotal: 938.9, frete_valor: 20, total: 950, forma_pagamento: 'a_prazo', destino: 'producao' });
    expect(o2.subtotal - o2.desconto_valor + o2.acrescimo_valor + o2.frete_valor).toBeCloseTo(o2.total, 2);
    const itens = await query(`select oi.descricao, oi.unidade, oi.quantidade, oi.medida_cobrada, oi.total, p.codigo
                                 from orcamento_item oi join produto p on p.id = oi.produto_id
                                 join orcamento o on o.id = oi.orcamento_id where o.numero = 2 order by oi.seq`);
    expect(itens[0]).toMatchObject({ unidade: 'M2', quantidade: 1, medida_cobrada: 2.563, total: 768.9 });
    expect(itens[2].codigo).toBe('LEGADO-ITEM');
    expect(await query(`select count(*)::int n from orcamento_parcela`)).toEqual([{ n: 2 }]);
  });

  it('importa contas a receber/pagar recentes ou em aberto, com situação e pagamento', async () => {
    const r = await query(`select parcela, valor, valor_pago, status, data_pagamento, orcamento_id is not null as tem_orc from conta_receber order by parcela`);
    expect(r).toHaveLength(2);
    expect(r[0]).toMatchObject({ valor: 475, valor_pago: 475, status: 'pago', tem_orc: true });
    expect(r[0].data_pagamento).not.toBeNull();
    expect(r[1]).toMatchObject({ valor_pago: 100, status: 'aberto' });
    const p = await query(`select descricao, valor, status, fornecedor_id is not null as tem_forn from conta_pagar`);
    expect(p).toEqual([{ descricao: 'Chapas de vidro', valor: 1000, status: 'aberto', tem_forn: true }]);
    expect(rel.dados().avisos['Contas a pagar']).toMatchObject({ 'parcela com valor zero': 1 });
  });

  it('importa o caixa com saldo anterior e sinais convertidos', async () => {
    const c = await query(`select tipo, valor, descricao, conta_receber_id is not null as vinc from caixa_lancamento order by data, id`);
    expect(c[0]).toMatchObject({ tipo: 'entrada', valor: 400 });
    expect(c[0].descricao).toMatch(/Saldo anterior/);
    expect(c.slice(1).map((x) => [x.tipo, x.valor, x.vinc])).toEqual([['entrada', 475, true], ['saida', 80, false]]);
  });

  it('pode ser executada de novo sem duplicar nada', async () => {
    const tabelas = ['filial', 'pessoa', 'funcionario', 'produto', 'produto_preco', 'projeto', 'projeto_item', 'usuario', 'estoque_movimento',
      'orcamento', 'orcamento_item', 'orcamento_parcela', 'conta_receber', 'conta_pagar', 'caixa_lancamento'];
    const antes = await Promise.all(tabelas.map(contar));
    await importar('recente');
    expect(await Promise.all(tabelas.map(contar))).toEqual(antes);
  });

  it('o escopo "tudo" completa o histórico sem repetir o que já veio', async () => {
    await importar('tudo');
    expect((await query(`select numero, status from orcamento order by numero`)).map((x) => [x.numero, x.status]))
      .toEqual([[1, 'fechado'], [2, 'fechado'], [3, 'aberto'], [4, 'cancelado']]);
    expect(await contar('conta_receber')).toBe(3);
    expect((await query(`select count(*)::int n from caixa_lancamento where descricao like 'Saldo anterior%'`))[0].n).toBe(1);
  });

  it('o modo verificação confere a estrutura e mostra a prévia sem gravar', async () => {
    const origem = new OrigemLegado(process.env.DATABASE_URL!, 'multforma');
    const antes = await contar('orcamento');
    const ctx = { origem, destino: getPool(), mapa: new MapaLegado(getPool()), relatorio: new Relatorio(), log: () => {},
      opcoes: { escopo: 'recente' as Escopo, desde: dataAnosAtras(2), schemaOrigem: 'multforma', tamanhoLote: 100 } };
    const r = await new Importador(ctx).verificar();
    await origem.fechar();
    expect(r.ok).toBe(true);
    expect(r.texto).toMatch(/Estrutura da origem: OK/);
    expect(r.texto).toMatch(/Fórmulas de projeto: 3 de 4 usos convertidos/);
    expect(r.texto).toMatch(/"L\*\(1,5" \(1x\)/);
    expect(r.texto).toMatch(/'MT'.*→ ML|'PÇ'.*→ PC/);
    expect(await contar('orcamento')).toBe(antes);
  });
});
