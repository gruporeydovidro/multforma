import { useState } from 'react';
import { Alert, Card, Select } from '../../../components/ui';
import { date, money } from '../../../lib/format';
import { useAsync } from '../../../lib/useAsync';
import { financeiroApi } from '../api';

/** Quadro de alerta: contas a pagar vencidas e a vencer nos próximos N dias. */
export function AlertaVencimentos({ versao }: { versao: number }) {
  const [dias, setDias] = useState(7);
  const { data, error } = useAsync(() => financeiroApi.pagar.alerta(dias), [dias, versao]);
  if (data && !data.vencidas.length && !data.a_vencer.length) return null;
  const linhas = [...(data?.vencidas ?? []), ...(data?.a_vencer ?? [])];
  return (
    <Card title="Alerta de vencimentos" actions={
      <Select label="" value={dias} onChange={(e) => setDias(Number(e.target.value))} aria-label="Dias">
        {[3, 7, 15, 30].map((d) => <option key={d} value={d}>Próximos {d} dias</option>)}
      </Select>
    }>
      <Alert>{error}</Alert>
      {data && (
        <>
          <p style={{ marginTop: 0 }}>
            {data.vencidas.length > 0 && <span style={{ color: 'var(--danger)' }}><strong>{data.vencidas.length}</strong> vencida(s): <strong>{money(data.total_vencido)}</strong>. </span>}
            {data.a_vencer.length > 0 && <span><strong>{data.a_vencer.length}</strong> a vencer em até {data.dias} dias: <strong>{money(data.total_a_vencer)}</strong>.</span>}
          </p>
          <ul style={{ margin: 0, paddingLeft: 18, maxHeight: 160, overflowY: 'auto' }}>
            {linhas.map((t) => (
              <li key={t.id} style={{ color: t.vencida ? 'var(--danger)' : undefined }}>
                {date(t.vencimento)} — {t.descricao}{t.fornecedor_nome ? ` (${t.fornecedor_nome})` : ''}: {money(t.saldo)}
              </li>
            ))}
          </ul>
        </>
      )}
    </Card>
  );
}
