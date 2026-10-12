import bcrypt from 'bcryptjs';
import { fileURLToPath } from 'node:url';
import type pg from 'pg';
import { closePool, getPool } from '../lib/db.js';
import { migrate } from './migrate.js';

/** Dados iniciais para uso e demonstração. Idempotente: não roda se já existir filial. */
export async function seed(pool: pg.Pool = getPool(), opts: { senhaAdmin?: string } = {}) {
  const { rows } = await pool.query('select count(*)::int as n from filial');
  if (rows[0].n > 0) return false;
  const client = await pool.connect();
  try {
    await client.query('begin');
    const q = (sql: string, p: unknown[] = []) => client.query(sql, p);
    const filial = (await q(`insert into filial (nome, cidade, uf) values ('Matriz', 'São Paulo', 'SP') returning id`)).rows[0].id;
    const hash = await bcrypt.hash(opts.senhaAdmin ?? process.env.ADMIN_PASSWORD ?? 'admin123', 10);
    await q(`insert into usuario (nome, login, senha_hash, perfil, filial_id) values ('Administrador', 'admin', $1, 'admin', $2)`, [hash, filial]);

    await q(`insert into arredondamento (descricao, valor_cm) values ('Sem arredondamento (1 cm)', 1), ('Múltiplo de 5 cm', 5), ('Múltiplo de 10 cm', 10)`);
    await q(`insert into tabela_preco (nome) values ('Padrão'), ('Revenda')`);
    await q(`insert into grupo_produto (nome) values ('Vidros'), ('Ferragens'), ('Acessórios'), ('Serviços')`);
    await q(`insert into setor_producao (nome, ordem) values ('Corte', 1), ('Lapidação', 2), ('Têmpera', 3), ('Expedição', 4)`);
    await q(`insert into motivo_defeito (descricao) values ('Quebra no corte'), ('Lascado na lapidação'), ('Medida errada'), ('Quebra na têmpera')`);

    const g = async (nome: string) => (await q('select id from grupo_produto where nome = $1', [nome])).rows[0].id;
    const arr5 = (await q(`select id from arredondamento where valor_cm = 5`)).rows[0].id;
    const prods: [string, string, string, string, number | null, number, number, number | null, number][] = [
      // codigo, nome, tipo, unidade, espessura, custo, preço, arredondamento, area mínima
      ['VT8', 'Vidro temperado incolor 8 mm', 'produto', 'M2', 8, 120, 280, arr5, 0.25],
      ['VT10', 'Vidro temperado incolor 10 mm', 'produto', 'M2', 10, 150, 340, arr5, 0.25],
      ['VC4', 'Vidro comum incolor 4 mm', 'produto', 'M2', 4, 45, 110, arr5, 0.1],
      ['ESP4', 'Espelho prata 4 mm', 'produto', 'M2', 4, 70, 190, arr5, 0.1],
      ['LAP', 'Lapidação reta', 'servico', 'ML', null, 3, 12, null, 0],
      ['KITBOX', 'Kit box frontal (roldanas, trilho e puxador)', 'produto', 'UN', null, 90, 210, null, 0],
      ['INST', 'Instalação', 'servico', 'UN', null, 0, 150, null, 0],
    ];
    for (const [codigo, nome, tipo, un, esp, custo, preco, arr, amin] of prods) {
      const grupo = await g(tipo === 'servico' ? 'Serviços' : un === 'M2' ? 'Vidros' : 'Ferragens');
      await q(
        `insert into produto (codigo, nome, tipo, grupo_id, unidade_venda, espessura_mm, custo, preco_venda, arredondamento_id, area_minima_m2, controla_estoque)
         values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)`,
        [codigo, nome, tipo, grupo, un, esp, custo, preco, arr, amin, tipo === 'produto'],
      );
    }
    await q(`insert into produto_preco (tabela_preco_id, produto_id, preco)
             select t.id, p.id, round(p.preco_venda * 0.85, 2) from tabela_preco t, produto p where t.nome = 'Revenda'`);

    const proj = (await q(`insert into projeto (nome, descricao) values ('Box frontal 2 folhas', 'Uma folha fixa e uma móvel; vão L x A') returning id`)).rows[0].id;
    const kit = (await q(`select id from produto where codigo = 'KITBOX'`)).rows[0].id;
    await q(
      `insert into projeto_item (projeto_id, descricao, tipo, produto_id, quantidade, formula_largura, formula_altura, folga_largura_mm, folga_altura_mm, ordem) values
       ($1, 'Folha fixa', 'vidro', null, 1, 'L/2 + 25', 'A', 0, 10, 1),
       ($1, 'Folha móvel', 'vidro', null, 1, 'L/2 + 25', 'A', 0, 30, 2),
       ($1, 'Kit de ferragens', 'ferragem', $2, 1, null, null, 0, 0, 3)`,
      [proj, kit],
    );

    await q(`insert into pessoa (tipo, natureza, nome, cpf_cnpj, telefone, cidade, uf) values
             ('cliente', 'F', 'Consumidor Final', null, null, 'São Paulo', 'SP'),
             ('fornecedor', 'J', 'Distribuidora de Vidros Exemplo Ltda', '11.222.333/0001-81', '(11) 3000-0000', 'São Paulo', 'SP')`);
    await q(`insert into funcionario (nome, cargo, vendedor, comissao_pct) values ('Vendedor Padrão', 'Vendedor', true, 3)`);
    await q('commit');
    return true;
  } catch (err) {
    await client.query('rollback');
    throw err;
  } finally {
    client.release();
  }
}

if (process.argv[1] && fileURLToPath(import.meta.url) === process.argv[1]) {
  migrate()
    .then(() => seed())
    .then((done) => console.log(done ? 'Seed aplicado (login: admin)' : 'Banco já possui dados; seed ignorado'))
    .finally(closePool);
}
