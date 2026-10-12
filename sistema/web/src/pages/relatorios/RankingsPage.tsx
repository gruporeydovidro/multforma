import { Alert, Card, DataTable, PageHeader, type Column } from '../../components/ui';
import { date, decimal, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { relatoriosApi, type PosicaoRanking, type RelatorioRanking, type TipoRanking } from './api';
import { AcoesRelatorio } from './components/AcoesRelatorio';
import { PeriodoFiltro } from './components/PeriodoFiltro';
import { baixarCsv, gerarCsv, numeroCsv } from './csv';
import { usePeriodoUrl } from './hooks';

const TIPOS: { value: TipoRanking; label: string; coluna: string; qtd: string }[] = [
  { value: 'clientes', label: 'Clientes', coluna: 'Cliente', qtd: 'Orçamentos' },
  { value: 'produtos', label: 'Produtos', coluna: 'Produto', qtd: 'Qtd.' },
  { value: 'vendedores', label: 'Vendedores', coluna: 'Vendedor', qtd: 'Orçamentos' },
];
const LIMITES = [5, 10, 20, 50, 100];

function exportar(r: RelatorioRanking) {
  const t = TIPOS.find((x) => x.value === r.tipo)!;
  const csv = gerarCsv<PosicaoRanking>(
    [
      { titulo: 'Posição', valor: (i) => i.posicao },
      { titulo: t.coluna, valor: (i) => i.nome },
      { titulo: t.qtd, valor: (i) => numeroCsv(i.quantidade, r.tipo === 'produtos' ? 3 : 0) },
      { titulo: 'Total', valor: (i) => numeroCsv(i.total) },
      { titulo: 'Margem', valor: (i) => numeroCsv(i.margem) },
      { titulo: 'Participação %', valor: (i) => numeroCsv(i.participacao_pct) },
    ],
    r.items,
    ['', 'Total geral do período', '', numeroCsv(r.total_geral), '', ''],
  );
  baixarCsv(`ranking_${r.tipo}_${r.de}_${r.ate}`, csv);
}

export function RankingsPage() {
  const [periodo, setPeriodo, params, setParam] = usePeriodoUrl();
  const tipo = (TIPOS.some((t) => t.value === params.get('tipo')) ? params.get('tipo') : 'clientes') as TipoRanking;
  const limite = Number(params.get('limite')) || 10;
  const { data, error } = useAsync(() => relatoriosApi.ranking(tipo, periodo, limite), [tipo, periodo.de, periodo.ate, limite]);
  const t = TIPOS.find((x) => x.value === tipo)!;

  const colunas: Column<PosicaoRanking>[] = [
    { header: '#', width: '50px', render: (i) => <strong>{i.posicao}º</strong> },
    { header: t.coluna, render: (i) => i.nome },
    { header: t.qtd, align: 'right', render: (i) => decimal(i.quantidade, tipo === 'produtos' ? 3 : 0) },
    { header: 'Total', align: 'right', render: (i) => money(i.total) },
    { header: 'Margem', align: 'right', render: (i) => money(i.margem) },
    {
      header: 'Participação', align: 'right', width: '200px', render: (i) => (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, justifyContent: 'flex-end' }}>
          <div style={{ flex: 1, maxWidth: 110, height: 8, background: 'var(--border)', borderRadius: 4 }}>
            <div style={{ width: `${Math.min(100, i.participacao_pct)}%`, height: '100%', background: 'var(--primary)', borderRadius: 4 }} />
          </div>
          {decimal(i.participacao_pct)}%
        </div>
      ),
    },
  ];

  return (
    <>
      <PageHeader title={`Ranking de ${t.label.toLowerCase()}`} subtitle={`${date(periodo.de)} a ${date(periodo.ate)}`}
        actions={<AcoesRelatorio onCsv={data ? () => exportar(data) : undefined} desabilitado={!data} />} />
      <div className="actions no-print" style={{ marginBottom: 12 }}>
        {TIPOS.map((x) => (
          <button key={x.value} className={`btn ${x.value === tipo ? 'primary' : ''}`} onClick={() => setParam('tipo', x.value)}>{x.label}</button>
        ))}
      </div>
      <PeriodoFiltro valor={periodo} onChange={setPeriodo}>
        <label className="field">
          <span className="field-label">Mostrar</span>
          <select value={limite} onChange={(e) => setParam('limite', e.target.value)}>
            {LIMITES.map((l) => <option key={l} value={l}>Top {l}</option>)}
          </select>
        </label>
      </PeriodoFiltro>
      <Alert>{error}</Alert>
      <Card>
        <DataTable columns={colunas} rows={data?.items} rowKey={(i) => `${i.posicao}-${i.id}`} empty="Nenhuma venda no período."
          footer={data && data.items.length > 0 && (
            <tr>
              <td colSpan={3}>Total geral do período</td>
              <td style={{ textAlign: 'right' }}>{money(data.total_geral)}</td>
              <td colSpan={2} />
            </tr>
          )} />
      </Card>
    </>
  );
}
