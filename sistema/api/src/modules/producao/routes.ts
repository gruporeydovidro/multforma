import type { FastifyInstance } from 'fastify';
import { z } from 'zod';
import { requirePerfil } from '../../lib/auth.js';
import { getPool, query, queryOne, withTx, type Db } from '../../lib/db.js';
import { badRequest, conflict, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import { listQuery, offset } from '../../lib/paging.js';
import { criarOrdemProducao, marcarItem, refazerItem } from './service.js';

const ler = requirePerfil('producao', 'vendedor');
const escrever = requirePerfil('producao');
const somenteAdmin = requirePerfil();

const idParam = z.object({ id: z.coerce.number().int().positive() });
const itemParam = idParam.extend({ itemId: z.coerce.number().int().positive() });
const data = z.string().regex(/^\d{4}-\d{2}-\d{2}$/, 'Data no formato AAAA-MM-DD');
const bool = z.enum(['true', 'false']).transform((v) => v === 'true');
const periodo = z.object({ de: data.optional(), ate: data.optional() });

const setorBody = z.object({
  nome: z.string().trim().min(1).max(60),
  ordem: z.coerce.number().int().min(0).default(0),
  ativo: z.boolean().default(true),
});
const motivoBody = z.object({ descricao: z.string().trim().min(1).max(120) });

const ordensQuery = listQuery.extend({
  status: z.enum(['aguardando', 'em_producao', 'concluida', 'cancelada']).optional(),
  cliente_id: z.coerce.number().int().positive().optional(),
  atrasadas: bool.optional(),
  de: data.optional(),
  ate: data.optional(),
});
const ordemCreate = z.object({ orcamento_id: z.coerce.number().int().positive() });
const ordemUpdate = z.object({
  previsao_entrega: data.nullable().optional(),
  observacoes: z.string().trim().max(2000).nullable().optional(),
});
const cancelarBody = z.object({ motivo: z.string().trim().max(500).optional() }).default({});
const marcarBody = z.object({
  setor_id: z.coerce.number().int().positive(),
  quantidade: z.coerce.number().positive().optional(),
  defeito: z.boolean().default(false),
  motivo_id: z.coerce.number().int().positive().nullable().optional(),
  observacao: z.string().trim().max(500).nullable().optional(),
});

/** Ordem atrasada: previsão vencida e ainda não concluída. */
const ATRASADA = `(o.previsao_entrega < current_date and o.status in ('aguardando','em_producao'))`;

const ORDEM_RESUMO = `
  select o.id, o.numero, o.status, o.previsao_entrega, o.observacoes, o.criado_em, o.iniciado_em, o.concluido_em,
         o.orcamento_id, orc.numero as orcamento_numero, orc.cliente_id, c.nome as cliente_nome,
         ${ATRASADA} as atrasada,
         (select count(*)::int from ordem_producao_item i where i.ordem_id = o.id) as itens_total,
         (select count(*)::int from ordem_producao_item i where i.ordem_id = o.id and i.status = 'concluido') as itens_concluidos,
         (select count(*)::int from ordem_producao_item i where i.ordem_id = o.id and i.status = 'defeito') as itens_defeito,
         (select coalesce(sum(i.quantidade), 0) from ordem_producao_item i where i.ordem_id = o.id) as pecas_total
    from ordem_producao o
    join orcamento orc on orc.id = o.orcamento_id
    join pessoa c on c.id = orc.cliente_id`;

async function detalheOrdem(db: Db, filialId: number, id: number) {
  const ordem = await queryOne(
    `select r.*, c.telefone as cliente_telefone, c.celular as cliente_celular, orc.endereco_entrega, orc.contato,
            orc.observacoes as orcamento_observacoes, orc.data_emissao as orcamento_data
       from (${ORDEM_RESUMO} where o.id = $1 and o.filial_id = $2) r
       join orcamento orc on orc.id = r.orcamento_id
       join pessoa c on c.id = r.cliente_id`,
    [id, filialId],
    db,
  );
  if (!ordem) throw notFound('Ordem de produção');
  const itens = await query(
    `select i.id, i.orcamento_item_id, i.produto_id, p.codigo as produto_codigo, p.espessura_mm, oi.ambiente,
            i.descricao, i.quantidade, i.largura_mm, i.altura_mm, i.status, i.setor_atual_id, s.nome as setor_atual_nome,
            (select count(*)::int from producao_marcacao m where m.ordem_item_id = i.id and m.defeito) as defeitos
       from ordem_producao_item i
       join produto p on p.id = i.produto_id
       left join orcamento_item oi on oi.id = i.orcamento_item_id
       left join setor_producao s on s.id = i.setor_atual_id
      where i.ordem_id = $1
      order by oi.seq nulls last, i.id`,
    [id],
    db,
  );
  const marcacoes = await query(
    `select m.id, m.ordem_item_id, i.descricao as item_descricao, m.setor_id, s.nome as setor_nome, m.quantidade,
            m.defeito, m.motivo_id, md.descricao as motivo, m.observacao, m.usuario_id, u.nome as usuario_nome, m.criado_em
       from producao_marcacao m
       join ordem_producao_item i on i.id = m.ordem_item_id
       join setor_producao s on s.id = m.setor_id
       left join motivo_defeito md on md.id = m.motivo_id
       left join usuario u on u.id = m.usuario_id
      where i.ordem_id = $1
      order by m.criado_em desc, m.id desc`,
    [id],
    db,
  );
  const setores = await query('select id, nome, ordem from setor_producao where ativo order by ordem, id', [], db);
  return { ...ordem, itens, marcacoes, setores };
}

/** Intervalo padrão: do 1º dia do mês corrente até hoje. */
function intervalo(p: { de?: string; ate?: string }): [string | null, string | null] {
  return [p.de ?? null, p.ate ?? null];
}
const DE = (n: number) => `coalesce($${n}::date, date_trunc('month', current_date)::date)`;
const ATE = (n: number) => `coalesce($${n}::date, current_date)`;

export default async function producaoRoutes(app: FastifyInstance) {
  // ---------- Setores ----------
  app.get('/setores', { preHandler: ler }, async (req) => {
    const { ativo } = z.object({ ativo: bool.optional() }).parse(req.query);
    const items = await query(
      `select s.id, s.nome, s.ordem, s.ativo from setor_producao s
        where ($1::boolean is null or s.ativo = $1) order by s.ordem, s.id`,
      [ativo ?? null],
    );
    return { items };
  });

  app.post('/setores', { preHandler: somenteAdmin }, async (req, reply) => {
    const b = setorBody.parse(req.body);
    const row = await queryOne('insert into setor_producao (nome, ordem, ativo) values ($1,$2,$3) returning *', [b.nome, b.ordem, b.ativo]);
    return reply.status(201).send(row);
  });

  app.put('/setores/:id', { preHandler: somenteAdmin }, async (req) => {
    const { id } = idParam.parse(req.params);
    const b = setorBody.parse(req.body);
    const row = await queryOne('update setor_producao set nome = $2, ordem = $3, ativo = $4 where id = $1 returning *', [id, b.nome, b.ordem, b.ativo]);
    if (!row) throw notFound('Setor');
    return row;
  });

  app.delete('/setores/:id', { preHandler: somenteAdmin }, async (req, reply) => {
    const { id } = idParam.parse(req.params);
    const row = await queryOne('delete from setor_producao where id = $1 returning id', [id]);
    if (!row) throw notFound('Setor');
    return reply.status(204).send();
  });

  // ---------- Motivos de defeito ----------
  app.get('/motivos', { preHandler: ler }, async () => {
    const items = await query('select id, descricao from motivo_defeito order by descricao');
    return { items };
  });

  app.post('/motivos', { preHandler: somenteAdmin }, async (req, reply) => {
    const b = motivoBody.parse(req.body);
    const row = await queryOne('insert into motivo_defeito (descricao) values ($1) returning *', [b.descricao]);
    return reply.status(201).send(row);
  });

  app.put('/motivos/:id', { preHandler: somenteAdmin }, async (req) => {
    const { id } = idParam.parse(req.params);
    const b = motivoBody.parse(req.body);
    const row = await queryOne('update motivo_defeito set descricao = $2 where id = $1 returning *', [id, b.descricao]);
    if (!row) throw notFound('Motivo');
    return row;
  });

  app.delete('/motivos/:id', { preHandler: somenteAdmin }, async (req, reply) => {
    const { id } = idParam.parse(req.params);
    const row = await queryOne('delete from motivo_defeito where id = $1 returning id', [id]);
    if (!row) throw notFound('Motivo');
    return reply.status(204).send();
  });

  // ---------- Ordens ----------
  /** Orçamentos fechados da filial ainda sem ordem ativa (para gerar a ordem manualmente). */
  app.get('/orcamentos-disponiveis', { preHandler: escrever }, async (req) => {
    const { q } = z.object({ q: z.string().trim().optional() }).parse(req.query);
    const items = await query(
      `select orc.id, orc.numero, orc.data_emissao, orc.prazo_entrega, orc.total, c.nome as cliente_nome
         from orcamento orc join pessoa c on c.id = orc.cliente_id
        where orc.filial_id = $1 and orc.status = 'fechado'
          and not exists (select 1 from ordem_producao o where o.orcamento_id = orc.id and o.status <> 'cancelada')
          and ($2::text is null or orc.numero::text = $2 or c.nome ilike '%' || $2 || '%')
        order by orc.fechado_em desc nulls last, orc.id desc
        limit 20`,
      [req.user.filial_id, q || null],
    );
    return { items };
  });

  app.get('/ordens', { preHandler: ler }, async (req) => {
    const f = ordensQuery.parse(req.query);
    const params: unknown[] = [req.user.filial_id];
    const conds = ['o.filial_id = $1'];
    const add = (sql: (n: number) => string, v: unknown) => {
      params.push(v);
      conds.push(sql(params.length));
    };
    if (f.status) add((n) => `o.status = $${n}`, f.status);
    if (f.cliente_id) add((n) => `orc.cliente_id = $${n}`, f.cliente_id);
    if (f.de) add((n) => `o.criado_em::date >= $${n}::date`, f.de);
    if (f.ate) add((n) => `o.criado_em::date <= $${n}::date`, f.ate);
    if (f.q) add((n) => `(o.numero::text = $${n} or orc.numero::text = $${n} or c.nome ilike '%' || $${n} || '%')`, f.q);
    if (f.atrasadas) conds.push(ATRASADA);
    const where = conds.join(' and ');
    const total = await queryOne<{ n: number }>(
      `select count(*)::int as n from ordem_producao o join orcamento orc on orc.id = o.orcamento_id join pessoa c on c.id = orc.cliente_id where ${where}`,
      params,
    );
    const items = await query(
      `${ORDEM_RESUMO} where ${where}
        order by ${f.atrasadas ? 'o.previsao_entrega, o.numero' : 'o.numero desc'}
        limit $${params.length + 1} offset $${params.length + 2}`,
      [...params, f.pageSize, offset(f.page, f.pageSize)],
    );
    return { items, total: total!.n, page: f.page, pageSize: f.pageSize };
  });

  app.get('/ordens/:id', { preHandler: ler }, async (req) => {
    const { id } = idParam.parse(req.params);
    return detalheOrdem(getPool(), req.user.filial_id, id);
  });

  app.post('/ordens', { preHandler: escrever }, async (req, reply) => {
    const { orcamento_id } = ordemCreate.parse(req.body);
    const ordem = await withTx(async (db) => {
      const orc = await queryOne<{ status: string }>(
        'select status from orcamento where id = $1 and filial_id = $2 for update',
        [orcamento_id, req.user.filial_id],
        db,
      );
      if (!orc) throw notFound('Orçamento');
      if (orc.status !== 'fechado') throw conflict('Só orçamentos fechados podem ir para a produção');
      const ativa = await queryOne<{ numero: number }>(
        `select numero from ordem_producao where orcamento_id = $1 and status <> 'cancelada' limit 1`,
        [orcamento_id],
        db,
      );
      if (ativa) throw conflict(`O orçamento já possui a ordem de produção nº ${ativa.numero}`);
      const id = await criarOrdemProducao(db, orcamento_id);
      if (!id) throw badRequest('O orçamento não possui itens para produção');
      await logAcao(db, req.user.id, 'producao.criar', 'ordem_producao', id, { orcamento_id });
      return detalheOrdem(db, req.user.filial_id, id);
    });
    return reply.status(201).send(ordem);
  });

  app.put('/ordens/:id', { preHandler: escrever }, async (req) => {
    const { id } = idParam.parse(req.params);
    const b = ordemUpdate.parse(req.body);
    return withTx(async (db) => {
      const o = await queryOne<{ status: string }>('select status from ordem_producao where id = $1 and filial_id = $2 for update', [id, req.user.filial_id], db);
      if (!o) throw notFound('Ordem de produção');
      if (o.status === 'cancelada') throw conflict('Ordem de produção cancelada');
      await query(
        `update ordem_producao set
           previsao_entrega = case when $2 then $3::date else previsao_entrega end,
           observacoes = case when $4 then $5 else observacoes end
         where id = $1`,
        [id, b.previsao_entrega !== undefined, b.previsao_entrega ?? null, b.observacoes !== undefined, b.observacoes ?? null],
        db,
      );
      return detalheOrdem(db, req.user.filial_id, id);
    });
  });

  app.post('/ordens/:id/cancelar', { preHandler: escrever }, async (req) => {
    const { id } = idParam.parse(req.params);
    const { motivo } = cancelarBody.parse(req.body ?? {});
    return withTx(async (db) => {
      const o = await queryOne<{ status: string }>('select status from ordem_producao where id = $1 and filial_id = $2 for update', [id, req.user.filial_id], db);
      if (!o) throw notFound('Ordem de produção');
      if (o.status === 'cancelada') throw conflict('Ordem de produção já cancelada');
      if (o.status === 'concluida') throw conflict('Ordem de produção concluída não pode ser cancelada');
      await query(`update ordem_producao set status = 'cancelada' where id = $1`, [id], db);
      await logAcao(db, req.user.id, 'producao.cancelar', 'ordem_producao', id, { motivo: motivo ?? null });
      return detalheOrdem(db, req.user.filial_id, id);
    });
  });

  app.post('/ordens/:id/itens/:itemId/marcar', { preHandler: escrever }, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    const b = marcarBody.parse(req.body);
    return withTx(async (db) => {
      await marcarItem(db, { filialId: req.user.filial_id, usuarioId: req.user.id }, id, itemId, b);
      return detalheOrdem(db, req.user.filial_id, id);
    });
  });

  app.post('/ordens/:id/itens/:itemId/refazer', { preHandler: escrever }, async (req) => {
    const { id, itemId } = itemParam.parse(req.params);
    return withTx(async (db) => {
      await refazerItem(db, { filialId: req.user.filial_id, usuarioId: req.user.id }, id, itemId);
      return detalheOrdem(db, req.user.filial_id, id);
    });
  });

  // ---------- Painel do chão de fábrica ----------
  app.get('/painel', { preHandler: ler }, async (req) => {
    const setores = await query<{ id: number; nome: string; ordem: number }>('select id, nome, ordem from setor_producao where ativo order by ordem, id');
    const itens = await query(
      `select i.id as item_id, i.ordem_id, o.numero as ordem_numero, c.nome as cliente_nome, i.descricao, i.quantidade,
              i.largura_mm, i.altura_mm, i.status, i.setor_atual_id, o.previsao_entrega, ${ATRASADA} as atrasada
         from ordem_producao_item i
         join ordem_producao o on o.id = i.ordem_id
         join orcamento orc on orc.id = o.orcamento_id
         join pessoa c on c.id = orc.cliente_id
        where o.filial_id = $1 and o.status in ('aguardando','em_producao') and i.status in ('pendente','em_producao','defeito')
        order by o.previsao_entrega nulls last, o.numero, i.id`,
      [req.user.filial_id],
    );
    const ativos = itens.filter((i) => i.status !== 'defeito');
    return {
      setores: setores.map((s) => {
        const lista = ativos.filter((i) => i.setor_atual_id === s.id);
        return { ...s, total_itens: lista.length, total_pecas: lista.reduce((a, i) => a + i.quantidade, 0), itens: lista };
      }),
      defeitos: itens.filter((i) => i.status === 'defeito'),
    };
  });

  // ---------- Relatórios ----------
  app.get('/relatorios/producao-setor', { preHandler: ler }, async (req) => {
    const [de, ate] = intervalo(periodo.parse(req.query));
    const items = await query(
      `select s.id as setor_id, s.nome as setor_nome, s.ordem,
              count(m.id) filter (where not m.defeito)::int as marcacoes,
              coalesce(sum(m.quantidade) filter (where not m.defeito), 0) as pecas,
              round(coalesce(sum(m.quantidade * m.largura_mm * m.altura_mm / 1e6) filter (where not m.defeito), 0)::numeric, 4) as m2,
              count(m.id) filter (where m.defeito)::int as defeitos,
              coalesce(sum(m.quantidade) filter (where m.defeito), 0) as pecas_defeito
         from setor_producao s
         left join (
           select m.*, coalesce(i.largura_mm, 0) as largura_mm, coalesce(i.altura_mm, 0) as altura_mm
             from producao_marcacao m
             join ordem_producao_item i on i.id = m.ordem_item_id
             join ordem_producao o on o.id = i.ordem_id
            where o.filial_id = $1 and m.criado_em::date between ${DE(2)} and ${ATE(3)}
         ) m on m.setor_id = s.id
        group by s.id
        order by s.ordem, s.id`,
      [req.user.filial_id, de, ate],
    );
    return { items };
  });

  app.get('/relatorios/defeitos', { preHandler: ler }, async (req) => {
    const [de, ate] = intervalo(periodo.parse(req.query));
    const base = `from producao_marcacao m
        join ordem_producao_item i on i.id = m.ordem_item_id
        join ordem_producao o on o.id = i.ordem_id
        join setor_producao s on s.id = m.setor_id
        left join motivo_defeito md on md.id = m.motivo_id
       where m.defeito and o.filial_id = $1 and m.criado_em::date between ${DE(2)} and ${ATE(3)}`;
    const params = [req.user.filial_id, de, ate];
    const porMotivo = await query(
      `select md.id as motivo_id, coalesce(md.descricao, '(sem motivo)') as motivo, count(*)::int as ocorrencias, sum(m.quantidade) as pecas
         ${base} group by md.id, md.descricao order by pecas desc, motivo`,
      params,
    );
    const porSetor = await query(
      `select s.id as setor_id, s.nome as setor_nome, count(*)::int as ocorrencias, sum(m.quantidade) as pecas
         ${base} group by s.id, s.nome, s.ordem order by s.ordem, s.id`,
      params,
    );
    const ocorrencias = await query(
      `select m.id, m.criado_em, o.id as ordem_id, o.numero as ordem_numero, i.descricao as item_descricao, i.largura_mm, i.altura_mm,
              s.nome as setor_nome, md.descricao as motivo, m.quantidade, m.observacao, u.nome as usuario_nome
         ${base.replace('left join motivo_defeito', 'left join usuario u on u.id = m.usuario_id left join motivo_defeito')}
        order by m.criado_em desc, m.id desc limit 500`,
      params,
    );
    return { por_motivo: porMotivo, por_setor: porSetor, ocorrencias };
  });

  /** Ordens em aberto com previsão de entrega no período (sem período: todas as abertas). */
  app.get('/relatorios/previsao-entrega', { preHandler: ler }, async (req) => {
    const p = periodo.parse(req.query);
    const items = await query(
      `${ORDEM_RESUMO}
        where o.filial_id = $1 and o.status in ('aguardando','em_producao')
          and ($2::date is null or o.previsao_entrega >= $2::date)
          and ($3::date is null or o.previsao_entrega <= $3::date)
        order by o.previsao_entrega nulls last, o.numero`,
      [req.user.filial_id, p.de ?? null, p.ate ?? null],
    );
    return { items };
  });
}
