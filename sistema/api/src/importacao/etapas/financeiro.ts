import type { ContextoImportacao } from '../contexto.js';
import { dia, formaPortador, texto } from '../conversores.js';
import { r2 } from '../opcoes.js';
import { EtapaPorLote, type Conversao, type ConsultaOrigem } from './base.js';

/** Situação do título: cancelado pela data de cancelamento; pago quando o valor baixado cobre a parcela. */
function situacao(cancelado: unknown, valor: number, pago: number): 'aberto' | 'pago' | 'cancelado' {
  if (cancelado) return 'cancelado';
  return pago >= valor - 0.005 ? 'pago' : 'aberto';
}

abstract class TitulosEtapa extends EtapaPorLote<any> {
  protected formas = new Map<number, string>();
  protected async preparar(ctx: ContextoImportacao) {
    for (const p of await ctx.origem.consultar('select cd_portador, fl_pagamento from portador')) this.formas.set(Number(p.cd_portador), formaPortador(p.fl_pagamento));
  }
  protected chaveLegada(l: any) {
    return `${l.cd_filial}|${l.nr_titulo}|${l.nr_parcela}`;
  }
  /** Escopo recente: emitido desde o corte ou ainda com saldo em aberto. */
  protected filtroRecente(ctx: ContextoImportacao, alias: string, pago: string) {
    return ctx.opcoes.escopo === 'recente'
      ? { where: `where ${alias}.dt_emissao >= $1::date or (${alias}.dt_cancelamento is null and coalesce(p.${pago}, 0) < p.vl_parcela)`, params: [ctx.opcoes.desde] }
      : { where: '', params: [] };
  }
}

/**
 * Contas a receber: uma linha por parcela. A data de pagamento é a do último lançamento de baixa
 * (receber_historico com tp_lancamento = '2').
 */
export class ContasReceberEtapa extends TitulosEtapa {
  readonly nome = 'Contas a receber';
  readonly entidade = 'conta_receber';
  readonly tabela = 'conta_receber';
  readonly colunas = ['filial_id', 'cliente_id', 'orcamento_id', 'documento', 'parcela', 'emissao', 'vencimento', 'valor', 'valor_pago',
    'data_pagamento', 'forma_pagamento', 'status', 'observacao'];

  protected consulta(ctx: ContextoImportacao): ConsultaOrigem {
    const f = this.filtroRecente(ctx, 'r', 'vl_recebido');
    return {
      sql: `select p.cd_filial, p.nr_receber as nr_titulo, p.nr_parcela, p.dt_vencimento, p.vl_parcela, p.vl_recebido, p.cd_portador, p.mm_observacao,
                   r.dt_emissao, r.cd_emitente, r.nr_orcamento, r.ds_fatura, r.ds_receber, r.dt_cancelamento,
                   (select max(h.dt_lancamento) from receber_historico h where h.cd_filial = p.cd_filial and h.nr_receber = p.nr_receber
                       and h.nr_parcela = p.nr_parcela and h.tp_lancamento = '2') as dt_pagamento
              from receber_parcela p join receber r on r.cd_filial = p.cd_filial and r.nr_receber = p.nr_receber
             ${f.where}`,
      chave: ['cd_filial', 'nr_titulo', 'nr_parcela'],
      params: f.params,
    };
  }
  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    const filial = await ctx.mapa.id('filial', l.cd_filial);
    const cliente = await ctx.mapa.id('pessoa', l.cd_emitente);
    const valor = r2(l.vl_parcela);
    if (!filial || !cliente) return { ignorar: 'filial ou cliente não importados' };
    if (!(valor > 0)) return { ignorar: 'parcela com valor zero' };
    const vencimento = dia(l.dt_vencimento) ?? dia(l.dt_emissao);
    if (!vencimento) return { ignorar: 'sem vencimento' };
    const pago = Math.min(valor, Math.max(0, r2(l.vl_recebido)));
    const status = situacao(l.dt_cancelamento, valor, pago);
    const obs = [texto(l.ds_receber), texto(l.mm_observacao)].filter(Boolean).join('\n') || null;
    return {
      valores: [filial, cliente, l.nr_orcamento ? await ctx.mapa.id('orcamento', `${l.cd_filial}|${l.nr_orcamento}`) : null,
        texto(l.ds_fatura) ?? `REC ${l.nr_titulo}`, Number(l.nr_parcela ?? 1), dia(l.dt_emissao) ?? vencimento, vencimento, valor, pago,
        pago > 0 ? (dia(l.dt_pagamento) ?? vencimento) : null, this.formas.get(Number(l.cd_portador)) ?? null, status, obs],
    };
  }
}

/** Contas a pagar: uma linha por parcela; a descrição vem do título. */
export class ContasPagarEtapa extends TitulosEtapa {
  readonly nome = 'Contas a pagar';
  readonly entidade = 'conta_pagar';
  readonly tabela = 'conta_pagar';
  readonly colunas = ['filial_id', 'fornecedor_id', 'documento', 'descricao', 'parcela', 'emissao', 'vencimento', 'valor', 'valor_pago',
    'data_pagamento', 'forma_pagamento', 'status', 'observacao'];

  protected consulta(ctx: ContextoImportacao): ConsultaOrigem {
    const f = this.filtroRecente(ctx, 'g', 'vl_pago');
    return {
      sql: `select p.cd_filial, p.nr_pagar as nr_titulo, p.nr_parcela, p.dt_vencimento, p.vl_parcela, p.vl_pago, p.cd_portador, p.nr_documento,
                   p.mm_observacao, g.dt_emissao, g.cd_emitente, g.ds_pagar, g.dt_cancelamento,
                   (select max(h.dt_lancamento) from pagar_historico h where h.cd_filial = p.cd_filial and h.nr_pagar = p.nr_pagar
                       and h.nr_parcela = p.nr_parcela and h.tp_lancamento = '2') as dt_pagamento
              from pagar_parcela p join pagar g on g.cd_filial = p.cd_filial and g.nr_pagar = p.nr_pagar
             ${f.where}`,
      chave: ['cd_filial', 'nr_titulo', 'nr_parcela'],
      params: f.params,
    };
  }
  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    const filial = await ctx.mapa.id('filial', l.cd_filial);
    const valor = r2(l.vl_parcela);
    if (!filial) return { ignorar: 'filial não importada' };
    if (!(valor > 0)) return { ignorar: 'parcela com valor zero' };
    const vencimento = dia(l.dt_vencimento) ?? dia(l.dt_emissao);
    if (!vencimento) return { ignorar: 'sem vencimento' };
    const pago = Math.min(valor, Math.max(0, r2(l.vl_pago)));
    return {
      valores: [filial, await ctx.mapa.id('pessoa', l.cd_emitente), texto(l.nr_documento), texto(l.ds_pagar) ?? `Conta a pagar nº ${l.nr_titulo}`,
        Number(l.nr_parcela ?? 1), dia(l.dt_emissao) ?? vencimento, vencimento, valor, pago, pago > 0 ? (dia(l.dt_pagamento) ?? vencimento) : null,
        this.formas.get(Number(l.cd_portador)) ?? null, situacao(l.dt_cancelamento, valor, pago), texto(l.mm_observacao)],
    };
  }
}

/**
 * Caixa. No sistema anterior o valor tem sinal (saídas negativas); aqui vira tipo + valor positivo.
 * No escopo recente, o movimento anterior ao corte entra como um lançamento de saldo anterior por filial.
 */
export class CaixaEtapa extends EtapaPorLote<any> {
  readonly nome = 'Caixa';
  readonly entidade = 'caixa';
  readonly tabela = 'caixa_lancamento';
  readonly colunas = ['filial_id', 'data', 'tipo', 'valor', 'descricao', 'conta_receber_id', 'conta_pagar_id', 'criado_em'];

  protected async preparar(ctx: ContextoImportacao) {
    if (ctx.opcoes.escopo !== 'recente') return;
    const feitos = await ctx.mapa.carregar('caixa');
    const saldos = await ctx.origem.consultar(
      `select cd_filial, sum(vl_lancamento) as saldo from caixa where dt_lancamento < $1::date group by cd_filial having sum(vl_lancamento) <> 0`,
      [ctx.opcoes.desde],
    );
    const dataSaldo = new Date(`${ctx.opcoes.desde}T12:00:00Z`);
    dataSaldo.setUTCDate(dataSaldo.getUTCDate() - 1);
    for (const s of saldos) {
      const chave = `saldo_anterior|${s.cd_filial}`;
      const filial = await ctx.mapa.id('filial', s.cd_filial);
      if (feitos.has(chave) || !filial) continue;
      const v = r2(s.saldo);
      const { rows } = await ctx.destino.query(
        `insert into caixa_lancamento (filial_id, data, tipo, valor, descricao) values ($1, $2, $3, $4, 'Saldo anterior (importado do sistema anterior)') returning id`,
        [filial, dataSaldo.toISOString().slice(0, 10), v >= 0 ? 'entrada' : 'saida', Math.abs(v)],
      );
      await ctx.mapa.registrar(ctx.destino, 'caixa', [[chave, rows[0].id]]);
    }
  }
  protected consulta(ctx: ContextoImportacao): ConsultaOrigem {
    const recente = ctx.opcoes.escopo === 'recente';
    return {
      sql: `select cd_filial, nr_lancamento, dt_lancamento, vl_lancamento, ds_lancamento, nr_documento, nr_receber, nr_receber_par, nr_pagar, nr_pagar_par
              from caixa ${recente ? 'where dt_lancamento >= $1::date' : ''}`,
      chave: ['cd_filial', 'nr_lancamento'],
      params: recente ? [ctx.opcoes.desde] : [],
    };
  }
  protected chaveLegada(l: any) {
    return `${l.cd_filial}|${l.nr_lancamento}`;
  }
  protected async converter(l: any, ctx: ContextoImportacao): Promise<Conversao> {
    const filial = await ctx.mapa.id('filial', l.cd_filial);
    const v = r2(l.vl_lancamento);
    if (!filial) return { ignorar: 'filial não importada' };
    if (v === 0) return { ignorar: 'lançamento com valor zero' };
    const data = dia(l.dt_lancamento);
    if (!data) return { ignorar: 'sem data' };
    const descricao = [texto(l.ds_lancamento), texto(l.nr_documento)].filter(Boolean).join(' - ') || `Lançamento nº ${l.nr_lancamento}`;
    return {
      valores: [filial, data, v > 0 ? 'entrada' : 'saida', Math.abs(v), descricao,
        l.nr_receber ? await ctx.mapa.id('conta_receber', `${l.cd_filial}|${l.nr_receber}|${l.nr_receber_par ?? 1}`) : null,
        l.nr_pagar ? await ctx.mapa.id('conta_pagar', `${l.cd_filial}|${l.nr_pagar}|${l.nr_pagar_par ?? 1}`) : null, l.dt_lancamento ?? new Date()],
    };
  }
}
