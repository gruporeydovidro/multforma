import { Alert, Card, DataTable, PageHeader, type Column } from '../../components/ui';
import { date, decimal, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { relatoriosApi, type Agrupamento, type LinhaVenda, type RelatorioVendas } from './api';
import { AcoesRelatorio } from './components/AcoesRelatorio';
import { Indicador, Indicadores } from './components/Indicador';
import { PeriodoFiltro } from './components/PeriodoFiltro';
import { baixarCsv, gerarCsv, numeroCsv, type ColunaCsv } from './csv';
import { usePeriodoUrl } from './hooks';

const AGRUPAMENTOS: { value: Agrupamento; label: string; coluna: string }[] = [
  { value: 'dia', label: 'Por dia', coluna: 'Dia' },
  { value: 'vendedor', label: 'Por vendedor', coluna: 'Vendedor' },
  { value: 'cliente', label: 'Por cliente', coluna: 'Cliente' },
  { value: 'produto', label: 'Por produto', coluna: 'Produto' },
];

const rotulo = (agrupar: Agrupamento, l: LinhaVenda) => (agrupar === 'dia' ? date(l.rotulo) : l.rotulo);

function colunasCsv(agrupar: Agrupamento): ColunaCsv<LinhaVenda>[] {
  const g = AGRUPAMENTOS.find((a) => a.value === agrupar)!;
  return [
    { titulo: g.coluna, valor: (l) => rotulo(agrupar, l) },
    { titulo: agrupar === 'produto' ? 'Quantidade' : 'Orçamentos', valor: (l) => numeroCsv(l.quantidade, agrupar === 'produto' ? 3 : 0) },
    ...(agrupar === 'produto' ? [{ titulo: 'Medida cobrada', valor: (l: LinhaVenda) => `${numeroCsv(l.medida ?? 0, 4)} ${l.unidade ?? ''}`.trim() }] : []),
    { titulo: 'Total', valor: (l) => numeroCsv(l.total) },
    { titulo: 'Custo estimado', valor: (l) => numeroCsv(l.custo) },
    { titulo: 'Margem', valor: (l) => numeroCsv(l.margem) },
    { titulo: 'Margem %', valor: (l) => numeroCsv(l.margem_pct) },
  ];
}

function exportar(r: RelatorioVendas) {
  const t = r.totais;
  const rodape = ['Total', numeroCsv(t.quantidade, r.agrupar === 'produto' ? 3 : 0), ...(r.agrupar === 'produto' ? [''] : []),
    numeroCsv(t.total), numeroCsv(t.custo), numeroCsv(t.margem), numeroCsv(t.margem_pct)];
  baixarCsv(`vendas_${r.agrupar}_${r.de}_${r.ate}`, gerarCsv(colunasCsv(r.agrupar), r.linhas, rodape));
}

export function VendasPage() {
  const [periodo, setPeriodo, params, setParam] = usePeriodoUrl();
  const agrupar = (AGRUPAMENTOS.some((a) => a.value === params.get('agrupar')) ? params.get('agrupar') : 'dia') as Agrupamento;
  const { data, error } = useAsync(() => relatoriosApi.vendas(periodo, agrupar), [periodo.de, periodo.ate, agrupar]);
  const g = AGRUPAMENTOS.find((a) => a.value === agrupar)!;
  const ehProduto = agrupar === 'produto';

  const colunas: Column<LinhaVenda>[] = [
    { header: g.coluna, render: (l) => rotulo(agrupar, l) },
    { header: ehProduto ? 'Qtd.' : 'Orçamentos', align: 'right', render: (l) => decimal(l.quantidade, ehProduto ? 3 : 0) },
    ...(ehProduto ? [{ header: 'Medida', align: 'right' as const, render: (l: LinhaVenda) => `${decimal(l.medida, 2)} ${l.unidade ?? ''}` }] : []),
    { header: 'Total', align: 'right', render: (l) => money(l.total) },
    { header: 'Custo est.', align: 'right', render: (l) => money(l.custo) },
    { header: 'Margem', align: 'right', render: (l) => money(l.margem) },
    { header: 'Margem %', align: 'right', render: (l) => `${decimal(l.margem_pct)}%` },
  ];

  return (
    <>
      <PageHeader title="Relatório de vendas" subtitle={`Orçamentos fechados de ${date(periodo.de)} a ${date(periodo.ate)} — ${g.label.toLowerCase()}`}
        actions={<AcoesRelatorio onCsv={data ? () => exportar(data) : undefined} desabilitado={!data} />} />
      <PeriodoFiltro valor={periodo} onChange={setPeriodo}>
        <label className="field">
          <span className="field-label">Agrupar</span>
          <select value={agrupar} onChange={(e) => setParam('agrupar', e.target.value)}>
            {AGRUPAMENTOS.map((a) => <option key={a.value} value={a.value}>{a.label}</option>)}
          </select>
        </label>
      </PeriodoFiltro>
      <Alert>{error}</Alert>
      <Indicadores>
        <Indicador rotulo={ehProduto ? 'Total dos itens' : 'Total vendido'} valor={money(data?.totais.total)} />
        {!ehProduto && <Indicador rotulo="Orçamentos fechados" valor={decimal(data?.totais.quantidade, 0)} />}
        <Indicador rotulo="Custo estimado" valor={money(data?.totais.custo)} />
        <Indicador rotulo="Margem estimada" valor={money(data?.totais.margem)} detalhe={data && `${decimal(data.totais.margem_pct)}% sobre os itens`} tom="green" />
      </Indicadores>
      <Card>
        <DataTable columns={colunas} rows={data?.linhas} rowKey={(l) => l.chave} empty="Nenhuma venda no período."
          footer={data && data.linhas.length > 0 && (
            <tr>
              <td>Total</td>
              <td style={{ textAlign: 'right' }}>{decimal(data.totais.quantidade, ehProduto ? 3 : 0)}</td>
              {ehProduto && <td />}
              <td style={{ textAlign: 'right' }}>{money(data.totais.total)}</td>
              <td style={{ textAlign: 'right' }}>{money(data.totais.custo)}</td>
              <td style={{ textAlign: 'right' }}>{money(data.totais.margem)}</td>
              <td style={{ textAlign: 'right' }}>{decimal(data.totais.margem_pct)}%</td>
            </tr>
          )} />
        <p className="muted" style={{ fontSize: 12, marginBottom: 0 }}>
          Margem estimada = total do item − custo atual do produto × medida cobrada. {ehProduto ? '' : 'O total inclui descontos, acréscimos e frete do orçamento.'}
        </p>
      </Card>
    </>
  );
}
