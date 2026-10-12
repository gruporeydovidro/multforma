import { query, queryOne, type Db } from '../../lib/db.js';
import { proximoNumero } from '../../lib/numeracao.js';
import { ItemProducao, OrdemProducao, type ItemPlanejado, type Marcacao, type StatusItem, type StatusOrdem } from './domain/index.js';

export interface FiltroOrdens {
  status?: StatusOrdem;
  cliente_id?: number;
  atrasadas?: boolean;
  de?: string;
  ate?: string;
  q?: string;
  limite: number;
  deslocamento: number;
}

export interface NovaOrdem {
  filial_id: number;
  orcamento_id: number;
  previsao_entrega: string | null;
}

/** Ordem atrasada: previsão vencida e ainda não concluída. */
const ATRASADA = `(o.previsao_entrega < current_date and o.status in ('aguardando','em_producao'))`;

const RESUMO = `
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

const FILTRO = `
   where o.filial_id = $1
     and ($2::text is null or o.status = $2)
     and ($3::int is null or orc.cliente_id = $3)
     and ($4::date is null or o.criado_em::date >= $4::date)
     and ($5::date is null or o.criado_em::date <= $5::date)
     and ($6::text is null or o.numero::text = $6 or orc.numero::text = $6 or c.nome ilike '%' || $6 || '%')
     and (not $7::boolean or ${ATRASADA})`;

/** Acesso às ordens de produção, seus itens e marcações. */
export class OrdemProducaoRepository {
  constructor(private readonly db: Db) {}

  // ----- escrita -----

  async criar(o: NovaOrdem, itens: ItemPlanejado[]): Promise<number> {
    const numero = await proximoNumero(this.db, 'ordem_producao', o.filial_id);
    const r = await queryOne<{ id: number }>(
      'insert into ordem_producao (filial_id, numero, orcamento_id, previsao_entrega) values ($1,$2,$3,$4) returning id',
      [o.filial_id, numero, o.orcamento_id, o.previsao_entrega],
      this.db,
    );
    for (const it of itens) {
      await query(
        `insert into ordem_producao_item (ordem_id, orcamento_item_id, produto_id, descricao, quantidade, largura_mm, altura_mm, setor_atual_id)
         values ($1,$2,$3,$4,$5,$6,$7,$8)`,
        [r!.id, it.orcamento_item_id, it.produto_id, it.descricao, it.quantidade, it.largura_mm, it.altura_mm, it.setor_atual_id],
        this.db,
      );
    }
    return r!.id;
  }

  /** Carrega o agregado travando a ordem e os itens (para alteração). */
  async carregarParaAlteracao(filialId: number, id: number): Promise<OrdemProducao | undefined> {
    const o = await queryOne<{ id: number; status: StatusOrdem }>(
      'select id, status from ordem_producao where id = $1 and filial_id = $2 for update',
      [id, filialId],
      this.db,
    );
    if (!o) return undefined;
    const itens = await query<{ id: number; quantidade: number; setor_atual_id: number | null; status: StatusItem }>(
      'select id, quantidade, setor_atual_id, status from ordem_producao_item where ordem_id = $1 order by id for update',
      [id],
      this.db,
    );
    return new OrdemProducao(o.id, o.status, itens.map((i) => new ItemProducao(i.id, i.quantidade, i.setor_atual_id, i.status)));
  }

  /** Grava o status da ordem (com as datas dos eventos) e o estado do item alterado. */
  async salvar(ordem: OrdemProducao, item?: ItemProducao): Promise<void> {
    if (item) {
      await query('update ordem_producao_item set setor_atual_id = $2, status = $3 where id = $1 and ordem_id = $4', [item.id, item.setorAtualId, item.status, ordem.id], this.db);
    }
    await query(
      `update ordem_producao set status = $2,
              iniciado_em = case when $3 then now() else iniciado_em end,
              concluido_em = case when $4 then now() else concluido_em end
        where id = $1`,
      [ordem.id, ordem.status, ordem.eventos.iniciou, ordem.eventos.concluiu],
      this.db,
    );
  }

  async registrarMarcacao(m: Marcacao, usuarioId: number): Promise<void> {
    await query(
      `insert into producao_marcacao (ordem_item_id, setor_id, usuario_id, quantidade, defeito, motivo_id, observacao)
       values ($1,$2,$3,$4,$5,$6,$7)`,
      [m.itemId, m.setorId, usuarioId, m.quantidade, m.defeito, m.motivoId, m.observacao],
      this.db,
    );
  }

  async atualizarDados(id: number, d: { previsao_entrega?: string | null; observacoes?: string | null }): Promise<void> {
    await query(
      `update ordem_producao set
         previsao_entrega = case when $2 then $3::date else previsao_entrega end,
         observacoes = case when $4 then $5 else observacoes end
       where id = $1`,
      [id, d.previsao_entrega !== undefined, d.previsao_entrega ?? null, d.observacoes !== undefined, d.observacoes ?? null],
      this.db,
    );
  }

  // ----- leitura -----

  ativaDoOrcamento(orcamentoId: number): Promise<{ id: number; numero: number } | undefined> {
    return queryOne(`select id, numero from ordem_producao where orcamento_id = $1 and status <> 'cancelada' order by id limit 1`, [orcamentoId], this.db);
  }

  async listar(filialId: number, f: FiltroOrdens) {
    const params = [filialId, f.status ?? null, f.cliente_id ?? null, f.de ?? null, f.ate ?? null, f.q || null, !!f.atrasadas];
    const total = await queryOne<{ n: number }>(
      `select count(*)::int as n from ordem_producao o join orcamento orc on orc.id = o.orcamento_id join pessoa c on c.id = orc.cliente_id ${FILTRO}`,
      params,
      this.db,
    );
    const items = await query(
      `${RESUMO} ${FILTRO}
        order by case when $7 then o.previsao_entrega end, o.numero desc
        limit $8 offset $9`,
      [...params, f.limite, f.deslocamento],
      this.db,
    );
    return { items, total: total!.n };
  }

  /** Ordens em aberto com previsão de entrega no período (sem período: todas as abertas). */
  previsaoEntrega(filialId: number, de?: string, ate?: string) {
    return query(
      `${RESUMO}
        where o.filial_id = $1 and o.status in ('aguardando','em_producao')
          and ($2::date is null or o.previsao_entrega >= $2::date)
          and ($3::date is null or o.previsao_entrega <= $3::date)
        order by o.previsao_entrega nulls last, o.numero`,
      [filialId, de ?? null, ate ?? null],
      this.db,
    );
  }

  async detalhe(filialId: number, id: number) {
    const ordem = await queryOne(
      `select r.*, c.telefone as cliente_telefone, c.celular as cliente_celular, orc.endereco_entrega, orc.contato,
              orc.observacoes as orcamento_observacoes, orc.data_emissao as orcamento_data
         from (${RESUMO} where o.id = $1 and o.filial_id = $2) r
         join orcamento orc on orc.id = r.orcamento_id
         join pessoa c on c.id = r.cliente_id`,
      [id, filialId],
      this.db,
    );
    if (!ordem) return undefined;
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
      this.db,
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
      this.db,
    );
    return { ...ordem, itens, marcacoes };
  }

  /** Itens em aberto (inclusive com defeito) das ordens ativas da filial, para o painel. */
  itensEmAberto(filialId: number) {
    return query(
      `select i.id as item_id, i.ordem_id, o.numero as ordem_numero, c.nome as cliente_nome, i.descricao, i.quantidade,
              i.largura_mm, i.altura_mm, i.status, i.setor_atual_id, s.nome as setor_atual_nome, o.previsao_entrega, ${ATRASADA} as atrasada
         from ordem_producao_item i
         join ordem_producao o on o.id = i.ordem_id
         join orcamento orc on orc.id = o.orcamento_id
         join pessoa c on c.id = orc.cliente_id
         left join setor_producao s on s.id = i.setor_atual_id
        where o.filial_id = $1 and o.status in ('aguardando','em_producao') and i.status <> 'concluido'
        order by o.previsao_entrega nulls last, o.numero, i.id`,
      [filialId],
      this.db,
    );
  }
}
