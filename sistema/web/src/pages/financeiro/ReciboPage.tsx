import { Link, useLocation, useParams } from 'react-router-dom';
import { Alert, PageHeader } from '../../components/ui';
import { useAuth } from '../../lib/auth';
import { date, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { financeiroApi } from './api';
import { rotuloForma, valorPorExtenso } from './format';

/** Recibo de pagamento de um título a receber (impressão pelo navegador). */
export function ReciboPage() {
  const { id } = useParams();
  const { user } = useAuth();
  // Volta à lista com os mesmos filtros (a lista passa a sua query string no state do link).
  const voltar = (useLocation().state as { voltar?: string } | null)?.voltar ?? '';
  const { data: t, error } = useAsync(() => financeiroApi.receber.obter(Number(id)), [id]);
  const recebimentos = t?.pagamentos?.filter((p) => p.tipo === 'entrada') ?? [];
  const ultimo = recebimentos[recebimentos.length - 1];

  return (
    <>
      <div className="no-print">
        <PageHeader title="Recibo de pagamento" actions={<>
          <Link className="btn" to={`/financeiro/receber${voltar}`}>Voltar</Link>
          <button className="btn primary" onClick={() => window.print()} disabled={!t || !t.valor_pago}>Imprimir</button>
        </>} />
      </div>
      <Alert>{error}</Alert>
      {t && !t.valor_pago && <Alert kind="info">Este título não possui pagamento.</Alert>}
      {t && t.valor_pago > 0 && (
        <section className="card" style={{ maxWidth: 760, margin: '0 auto', padding: 32 }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'baseline', borderBottom: '2px solid var(--text)', paddingBottom: 8 }}>
            <h1>RECIBO</h1>
            <div style={{ fontSize: 22, fontWeight: 700 }}>{money(t.valor_pago)}</div>
          </div>
          <p style={{ lineHeight: 1.8, fontSize: 15, marginTop: 24 }}>
            Recebemos de <strong>{t.cliente_nome}</strong>{t.cliente_cpf_cnpj ? <>, CPF/CNPJ {t.cliente_cpf_cnpj}</> : null}, a importância de{' '}
            <strong>{money(t.valor_pago)}</strong> ({valorPorExtenso(t.valor_pago)}), referente
            {t.orcamento_numero ? <> ao orçamento nº {t.orcamento_numero}</> : <> ao documento {t.documento ?? '—'}</>}, parcela {t.parcela}, com vencimento em {date(t.vencimento)}
            {t.status === 'pago' ? ', dando plena quitação desta parcela.' : `, restando o saldo de ${money(t.saldo)}.`}
          </p>
          {recebimentos.length > 0 && (
            <table className="table" style={{ marginTop: 16 }}>
              <thead><tr><th>Data</th><th>Forma</th><th style={{ textAlign: 'right' }}>Valor</th></tr></thead>
              <tbody>
                {recebimentos.map((p) => (
                  <tr key={p.id}><td>{date(p.data)}</td><td>{rotuloForma(p.forma_pagamento)}</td><td style={{ textAlign: 'right' }}>{money(p.valor)}</td></tr>
                ))}
              </tbody>
            </table>
          )}
          <p style={{ marginTop: 40 }}>Data: {date(t.data_pagamento ?? ultimo?.data)}</p>
          <div style={{ marginTop: 60, textAlign: 'center' }}>
            <div style={{ borderTop: '1px solid var(--text)', width: 320, margin: '0 auto', paddingTop: 6 }}>{user?.nome}</div>
            <div className="muted">Emitente</div>
          </div>
        </section>
      )}
    </>
  );
}
