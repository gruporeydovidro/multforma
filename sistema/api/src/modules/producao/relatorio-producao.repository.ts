import { query, type Db } from '../../lib/db.js';

/** Período já resolvido (datas AAAA-MM-DD). */
export interface Periodo {
  de: string;
  ate: string;
}

const DEFEITOS_NO_PERIODO = `
    from producao_marcacao m
    join ordem_producao_item i on i.id = m.ordem_item_id
    join ordem_producao o on o.id = i.ordem_id
    join setor_producao s on s.id = m.setor_id
    left join motivo_defeito md on md.id = m.motivo_id
    left join usuario u on u.id = m.usuario_id
   where m.defeito and o.filial_id = $1 and m.criado_em::date between $2::date and $3::date`;

/** Consultas agregadas da produção (somente leitura). */
export class RelatorioProducaoRepository {
  constructor(private readonly db: Db) {}

  producaoPorSetor(filialId: number, p: Periodo) {
    return query(
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
            where o.filial_id = $1 and m.criado_em::date between $2::date and $3::date
         ) m on m.setor_id = s.id
        group by s.id
        order by s.ordem, s.id`,
      [filialId, p.de, p.ate],
      this.db,
    );
  }

  defeitosPorMotivo(filialId: number, p: Periodo) {
    return query(
      `select md.id as motivo_id, coalesce(md.descricao, '(sem motivo)') as motivo, count(*)::int as ocorrencias, sum(m.quantidade) as pecas
         ${DEFEITOS_NO_PERIODO}
        group by md.id, md.descricao order by pecas desc, motivo`,
      [filialId, p.de, p.ate],
      this.db,
    );
  }

  defeitosPorSetor(filialId: number, p: Periodo) {
    return query(
      `select s.id as setor_id, s.nome as setor_nome, count(*)::int as ocorrencias, sum(m.quantidade) as pecas
         ${DEFEITOS_NO_PERIODO}
        group by s.id, s.nome, s.ordem order by s.ordem, s.id`,
      [filialId, p.de, p.ate],
      this.db,
    );
  }

  ocorrenciasDeDefeito(filialId: number, p: Periodo, limite = 500) {
    return query(
      `select m.id, m.criado_em, o.id as ordem_id, o.numero as ordem_numero, i.descricao as item_descricao, i.largura_mm, i.altura_mm,
              s.nome as setor_nome, md.descricao as motivo, m.quantidade, m.observacao, u.nome as usuario_nome
         ${DEFEITOS_NO_PERIODO}
        order by m.criado_em desc, m.id desc limit $4`,
      [filialId, p.de, p.ate, limite],
      this.db,
    );
  }
}
