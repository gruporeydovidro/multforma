import { Link } from 'react-router-dom';
import { Alert, Badge, Card, DataTable, PageHeader, Pager, SearchBox } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { money } from '../../lib/format';
import { estoqueApi, type FiltroSaldos, type SaldoProduto } from './api';
import { qtd } from './format';
import { useListaFiltrada } from './hooks';

export function SaldosPage() {
  const { user } = useAuth();
  const { filtro, setFiltro, setPage, data, error } = useListaFiltrada(estoqueApi.saldos, {} as FiltroSaldos);
  const valorPagina = (data?.items ?? []).reduce((s, i) => s + i.valor_estoque, 0);

  return (
    <>
      <PageHeader
        title="Saldos de estoque"
        actions={
          can(user, 'producao') && (
            <>
              <Link className="btn" to="/estoque/entrada">Entrada</Link>
              <Link className="btn" to="/estoque/saida">Saída</Link>
              <Link className="btn" to="/estoque/acerto">Acerto</Link>
            </>
          )
        }
      />
      <Card>
        <div className="actions">
          <SearchBox value={filtro.q ?? ''} onChange={(q) => setFiltro({ q })} placeholder="Código ou nome do produto" />
          <label style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
            <input type="checkbox" checked={!!filtro.abaixo_minimo} onChange={(e) => setFiltro({ abaixo_minimo: e.target.checked })} />
            Só abaixo do mínimo
          </label>
        </div>
      </Card>
      <Alert>{error}</Alert>
      <DataTable<SaldoProduto>
        rows={data?.items}
        rowKey={(s) => s.produto_id}
        columns={[
          { header: 'Código', render: (s) => s.codigo, width: '90px' },
          { header: 'Produto', render: (s) => <Link to={`/estoque/movimentos?produto_id=${s.produto_id}`}>{s.nome}</Link> },
          { header: 'Un.', render: (s) => s.unidade_venda },
          {
            header: 'Saldo',
            align: 'right',
            render: (s) => <strong style={{ color: s.abaixo_minimo ? 'var(--danger)' : undefined }}>{qtd(s.saldo)}</strong>,
          },
          { header: 'Mínimo', render: (s) => qtd(s.estoque_minimo), align: 'right' },
          { header: 'Custo médio', render: (s) => money(s.custo), align: 'right' },
          { header: 'Valor em estoque', render: (s) => money(s.valor_estoque), align: 'right' },
          { header: '', render: (s) => s.abaixo_minimo && <Badge tone="red">Abaixo do mínimo</Badge> },
        ]}
        footer={
          data && data.items.length > 0 ? (
            <tr>
              <td colSpan={6}>Valor em estoque (página)</td>
              <td style={{ textAlign: 'right' }}>{money(valorPagina)}</td>
              <td />
            </tr>
          ) : undefined
        }
      />
      {data && <Pager page={data.page} pageSize={data.pageSize} total={data.total} onPage={setPage} />}
    </>
  );
}
