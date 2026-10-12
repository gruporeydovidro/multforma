import { Link } from 'react-router-dom';
import { Alert, Badge, Card, DataTable, PageHeader, Pager, SearchBox } from '../../components/ui';
import { qs } from '../../lib/api';
import { can, useAuth } from '../../lib/auth';
import { money } from '../../lib/format';
import { estoqueApi, type SaldoProduto } from './api';
import { qtd } from './format';
import { FILTROS_SALDOS_PADRAO, saldosParaApi, useListaUrl } from './hooks';

export function SaldosPage() {
  const { user } = useAuth();
  const { filtros, filtrar, setPage, data, error } = useListaUrl(FILTROS_SALDOS_PADRAO, saldosParaApi, estoqueApi.saldos);
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
          <SearchBox value={filtros.q} onChange={(q) => filtrar({ q })} placeholder="Código ou nome do produto" />
          <label style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
            <input type="checkbox" checked={filtros.abaixo_minimo === '1'} onChange={(e) => filtrar({ abaixo_minimo: e.target.checked ? '1' : '' })} />
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
          { header: 'Produto', render: (s) => <Link to={`/estoque/movimentos${qs({ produto_id: s.produto_id, produto_nome: `${s.codigo} — ${s.nome}` })}`}>{s.nome}</Link> },
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
