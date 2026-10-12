import { useState } from 'react';
import { Alert, Badge, Card, DataTable, PageHeader, type Column } from '../../components/ui';
import { date, money, today } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { AcoesRelatorio } from '../relatorios/components/AcoesRelatorio';
import { Indicador, Indicadores } from '../relatorios/components/Indicador';
import { PeriodoFiltro } from '../relatorios/components/PeriodoFiltro';
import { baixarCsv, gerarCsv, numeroCsv } from '../relatorios/csv';
import type { Periodo } from '../relatorios/periodo';
import { financeiroApi, type Caixa, type LancamentoCaixa } from './api';
import { ConfirmacaoModal } from './components/ConfirmacaoModal';
import { LancamentoCaixaModal } from './components/LancamentoCaixaModal';
import { rotuloForma } from './format';

const ORIGEM: Record<LancamentoCaixa['origem'], { label: string; tone: 'blue' | 'orange' | 'neutral' }> = {
  receber: { label: 'Recebimento', tone: 'blue' },
  pagar: { label: 'Pagamento', tone: 'orange' },
  manual: { label: 'Manual', tone: 'neutral' },
};

function exportar(c: Caixa) {
  const csv = gerarCsv<LancamentoCaixa>(
    [
      { titulo: 'Data', valor: (l) => date(l.data) },
      { titulo: 'Descrição', valor: (l) => l.descricao },
      { titulo: 'Origem', valor: (l) => ORIGEM[l.origem].label },
      { titulo: 'Forma', valor: (l) => rotuloForma(l.forma_pagamento) },
      { titulo: 'Entrada', valor: (l) => (l.tipo === 'entrada' ? numeroCsv(l.valor) : '') },
      { titulo: 'Saída', valor: (l) => (l.tipo === 'saida' ? numeroCsv(l.valor) : '') },
      { titulo: 'Saldo', valor: (l) => numeroCsv(l.saldo) },
    ],
    c.lancamentos,
    ['', 'Totais', '', '', numeroCsv(c.entradas), numeroCsv(c.saidas), numeroCsv(c.saldo_final)],
  );
  baixarCsv(`caixa_${c.de}_${c.ate}`, csv);
}

export function CaixaPage() {
  const [periodo, setPeriodo] = useState<Periodo>({ de: today(), ate: today() });
  const { data, error, reload } = useAsync(() => financeiroApi.caixa.consultar(periodo.de, periodo.ate), [periodo.de, periodo.ate]);
  const [novo, setNovo] = useState(false);
  const [excluir, setExcluir] = useState<LancamentoCaixa | null>(null);

  const colunas: Column<LancamentoCaixa>[] = [
    { header: 'Data', render: (l) => date(l.data) },
    { header: 'Descrição', render: (l) => <>{l.descricao}{l.usuario_nome && <div className="muted" style={{ fontSize: 12 }}>{l.usuario_nome}</div>}</> },
    { header: 'Origem', render: (l) => <Badge tone={ORIGEM[l.origem].tone}>{ORIGEM[l.origem].label}</Badge> },
    { header: 'Forma', render: (l) => rotuloForma(l.forma_pagamento) },
    { header: 'Entrada', align: 'right', render: (l) => (l.tipo === 'entrada' ? <span style={{ color: 'var(--success)' }}>{money(l.valor)}</span> : '') },
    { header: 'Saída', align: 'right', render: (l) => (l.tipo === 'saida' ? <span style={{ color: 'var(--danger)' }}>{money(l.valor)}</span> : '') },
    { header: 'Saldo', align: 'right', render: (l) => money(l.saldo) },
    { header: '', align: 'right', render: (l) => l.manual && <button className="btn small danger no-print" onClick={() => setExcluir(l)}>Excluir</button> },
  ];

  return (
    <>
      <PageHeader title="Caixa" subtitle={data && `${date(data.de)} a ${date(data.ate)}`}
        actions={<><AcoesRelatorio onCsv={data ? () => exportar(data) : undefined} desabilitado={!data} />
          <button className="btn primary no-print" onClick={() => setNovo(true)}>Lançamento manual</button></>} />
      <PeriodoFiltro valor={periodo} onChange={setPeriodo} />
      <Alert>{error}</Alert>
      <Indicadores>
        <Indicador rotulo="Saldo anterior" valor={money(data?.saldo_anterior)} />
        <Indicador rotulo="Entradas" valor={money(data?.entradas)} tom="green" />
        <Indicador rotulo="Saídas" valor={money(data?.saidas)} tom="red" />
        <Indicador rotulo="Saldo final" valor={money(data?.saldo_final)} tom={data && data.saldo_final < 0 ? 'red' : undefined} />
      </Indicadores>
      <Card title="Lançamentos">
        <DataTable columns={colunas} rows={data?.lancamentos} rowKey={(l) => l.id} empty="Nenhum lançamento no período."
          footer={data && data.lancamentos.length > 0 && (
            <tr>
              <td colSpan={4}>Totais do período</td>
              <td style={{ textAlign: 'right' }}>{money(data.entradas)}</td>
              <td style={{ textAlign: 'right' }}>{money(data.saidas)}</td>
              <td style={{ textAlign: 'right' }}>{money(data.saldo_final)}</td>
              <td />
            </tr>
          )} />
      </Card>
      {data && data.resumo_saidas.length > 0 && (
        <Card title="Resumo das saídas">
          <DataTable columns={[
            { header: 'Grupo', render: (r) => r.grupo },
            { header: 'Lançamentos', align: 'right', render: (r) => r.quantidade },
            { header: 'Total', align: 'right', render: (r) => money(r.total) },
          ]} rows={data.resumo_saidas} rowKey={(r) => r.grupo} />
        </Card>
      )}
      <LancamentoCaixaModal aberto={novo} onFechar={() => setNovo(false)} onSalvo={reload} />
      <ConfirmacaoModal aberto={!!excluir} titulo="Excluir lançamento" rotulo="Excluir" perigo onFechar={() => setExcluir(null)}
        mensagem={<>Excluir o lançamento <strong>{excluir?.descricao}</strong> de {money(excluir?.valor)}?</>}
        onConfirmar={async () => { await financeiroApi.caixa.excluir(excluir!.id); reload(); }} />
    </>
  );
}
