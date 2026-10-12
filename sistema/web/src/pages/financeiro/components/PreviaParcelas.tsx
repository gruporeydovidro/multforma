import { date, money } from '../../../lib/format';
import { previaParcelas } from '../format';

/** Tabela com a prévia das parcelas mensais que serão geradas. */
export function PreviaParcelas({ total, quantidade, primeiroVencimento }: { total: number; quantidade: number; primeiroVencimento: string }) {
  const parcelas = previaParcelas(total, quantidade, primeiroVencimento);
  if (parcelas.length <= 1) return null;
  return (
    <div className="table-wrap" style={{ maxHeight: 200, overflowY: 'auto', marginTop: 12 }}>
      <table className="table">
        <thead><tr><th>Parcela</th><th>Vencimento</th><th style={{ textAlign: 'right' }}>Valor</th></tr></thead>
        <tbody>
          {parcelas.map((p) => (
            <tr key={p.numero}><td>{p.numero}/{parcelas.length}</td><td>{date(p.vencimento)}</td><td style={{ textAlign: 'right' }}>{money(p.valor)}</td></tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
