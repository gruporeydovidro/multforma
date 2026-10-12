import { Alert, Card, DataTable, PageHeader } from '../../components/ui';
import { date, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { relatoriosApi, type ResumoFinanceiro } from './api';
import { AcoesRelatorio } from './components/AcoesRelatorio';
import { Indicador, Indicadores } from './components/Indicador';
import { PeriodoFiltro } from './components/PeriodoFiltro';
import { baixarCsv, gerarCsv, numeroCsv } from './csv';
import { usePeriodoUrl } from './hooks';

interface LinhaResumo { item: string; quantidade?: number; valor: number }

/** Linhas do quadro-resumo (também usadas no CSV). */
function linhasResumo(r: ResumoFinanceiro): LinhaResumo[] {
  return [
    { item: 'Vendas (orçamentos fechados)', quantidade: r.vendas.quantidade, valor: r.vendas.total },
    { item: 'Recebido', valor: r.recebido },
    { item: 'Pago', valor: r.pago },
    { item: 'Resultado (recebido − pago)', valor: r.resultado },
    { item: 'A receber (vencimento no período)', quantidade: r.a_receber.quantidade, valor: r.a_receber.total },
    { item: 'A pagar (vencimento no período)', quantidade: r.a_pagar.quantidade, valor: r.a_pagar.total },
    { item: 'Recebimentos vencidos (até hoje)', quantidade: r.vencidos.receber.quantidade, valor: r.vencidos.receber.total },
    { item: 'Pagamentos vencidos (até hoje)', quantidade: r.vencidos.pagar.quantidade, valor: r.vencidos.pagar.total },
    { item: 'Caixa: saldo anterior', valor: r.caixa.saldo_anterior },
    { item: 'Caixa: entradas', valor: r.caixa.entradas },
    { item: 'Caixa: saídas', valor: r.caixa.saidas },
    { item: 'Caixa: saldo final', valor: r.caixa.saldo_final },
  ];
}

function exportar(r: ResumoFinanceiro) {
  const csv = gerarCsv<LinhaResumo>(
    [
      { titulo: 'Item', valor: (l) => l.item },
      { titulo: 'Quantidade', valor: (l) => l.quantidade ?? '' },
      { titulo: 'Valor', valor: (l) => numeroCsv(l.valor) },
    ],
    [...linhasResumo(r), ...r.despesas_por_categoria.map((d): LinhaResumo => ({ item: `Despesa: ${d.categoria}`, valor: d.total }))],
  );
  baixarCsv(`resumo_financeiro_${r.de}_${r.ate}`, csv);
}

export function ResumoFinanceiroPage() {
  const [periodo, setPeriodo] = usePeriodoUrl();
  const { data: r, error } = useAsync(() => relatoriosApi.resumoFinanceiro(periodo), [periodo.de, periodo.ate]);

  return (
    <>
      <PageHeader title="Resumo financeiro" subtitle={`${date(periodo.de)} a ${date(periodo.ate)}`}
        actions={<AcoesRelatorio onCsv={r ? () => exportar(r) : undefined} desabilitado={!r} />} />
      <PeriodoFiltro valor={periodo} onChange={setPeriodo} />
      <Alert>{error}</Alert>
      <Indicadores>
        <Indicador rotulo="Recebido" valor={money(r?.recebido)} tom="green" />
        <Indicador rotulo="Pago" valor={money(r?.pago)} tom="red" />
        <Indicador rotulo="Resultado" valor={money(r?.resultado)} tom={r && r.resultado < 0 ? 'red' : 'green'} />
        <Indicador rotulo="Saldo de caixa" valor={money(r?.caixa.saldo_final)} />
      </Indicadores>
      <Indicadores>
        <Indicador rotulo="A receber no período" valor={money(r?.a_receber.total)} detalhe={r && `${r.a_receber.quantidade} título(s)`} />
        <Indicador rotulo="A pagar no período" valor={money(r?.a_pagar.total)} detalhe={r && `${r.a_pagar.quantidade} título(s)`} />
        <Indicador rotulo="Receber vencido" valor={money(r?.vencidos.receber.total)} tom={r?.vencidos.receber.total ? 'red' : undefined} detalhe={r && `${r.vencidos.receber.quantidade} título(s)`} />
        <Indicador rotulo="Pagar vencido" valor={money(r?.vencidos.pagar.total)} tom={r?.vencidos.pagar.total ? 'red' : undefined} detalhe={r && `${r.vencidos.pagar.quantidade} título(s)`} />
      </Indicadores>
      {r && (
        <div className="grid">
          <div className="col-6">
            <Card title="Quadro-resumo">
              <DataTable columns={[
                { header: 'Item', render: (l) => l.item },
                { header: 'Qtd.', align: 'right', render: (l) => l.quantidade ?? '' },
                { header: 'Valor', align: 'right', render: (l) => money(l.valor) },
              ]} rows={linhasResumo(r)} rowKey={(l) => l.item} />
            </Card>
          </div>
          <div className="col-6">
            <Card title="Despesas por categoria (saídas do caixa)">
              <DataTable columns={[
                { header: 'Categoria', render: (d) => d.categoria },
                { header: 'Total', align: 'right', render: (d) => money(d.total) },
              ]} rows={r.despesas_por_categoria} rowKey={(d) => d.categoria} empty="Nenhuma despesa no período."
                footer={r.despesas_por_categoria.length > 0 && (
                  <tr><td>Total</td><td style={{ textAlign: 'right' }}>{money(r.despesas_por_categoria.reduce((s, d) => s + d.total, 0))}</td></tr>
                )} />
            </Card>
          </div>
        </div>
      )}
    </>
  );
}
