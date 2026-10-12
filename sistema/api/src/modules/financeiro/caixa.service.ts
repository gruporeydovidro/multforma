import type { SessionUser } from '../../lib/auth.js';
import { badRequest, notFound } from '../../lib/http.js';
import { logAcao } from '../../lib/log.js';
import { LancamentoCaixa, ResumoCaixa } from './domain/caixa.js';
import type { NovoLancamentoInput } from './financeiro.schemas.js';
import { ServicoFinanceiro } from './servico-base.js';

/** Casos de uso do caixa: consulta por período, lançamento manual e exclusão. */
export class CaixaService extends ServicoFinanceiro {
  /** Sem datas, mostra o dia corrente; com só uma delas, o período de um dia. */
  consultar(filialId: number, periodo: { de?: string; ate?: string }) {
    return this.leitura(async ({ caixa, apoio }) => {
      const hoje = await apoio.hoje();
      const de = periodo.de ?? periodo.ate ?? hoje;
      const ate = periodo.ate ?? (periodo.de && periodo.de > hoje ? periodo.de : hoje);
      if (de > ate) throw badRequest('Data inicial maior que a final');
      const resumo = new ResumoCaixa(await caixa.saldoAntesDe(filialId, de), await caixa.listarPeriodo(filialId, de, ate));
      return {
        de,
        ate,
        saldo_anterior: resumo.saldoAnterior,
        entradas: resumo.entradas,
        saidas: resumo.saidas,
        saldo_final: resumo.saldoFinal,
        lancamentos: resumo.linhas.map((l) => ({ ...l, manual: LancamentoCaixa.ehManual(l) })),
        resumo_saidas: await caixa.resumoSaidas(filialId, de, ate),
      };
    });
  }

  /** Lançamento manual (sangria, suprimento, despesa avulsa...). */
  lancar(u: SessionUser, b: NovoLancamentoInput) {
    return this.emTransacao(async ({ caixa }, db) => {
      const l = await caixa.inserir({ ...b, filial_id: u.filial_id, usuario_id: u.id });
      await logAcao(db, u.id, 'lancar_caixa', 'caixa_lancamento', l.id, { tipo: b.tipo, valor: b.valor });
      return { ...l, manual: true };
    });
  }

  excluir(u: SessionUser, id: number) {
    return this.emTransacao(async ({ caixa }, db) => {
      const l = await caixa.travar(id, u.filial_id);
      if (!l) throw notFound('Lançamento');
      LancamentoCaixa.exigirExcluivel(l);
      await caixa.excluir(id);
      await logAcao(db, u.id, 'excluir_lancamento_caixa', 'caixa_lancamento', id, { tipo: l.tipo, valor: l.valor });
    });
  }
}
