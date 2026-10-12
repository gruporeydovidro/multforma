import { Alert, Card, DataTable, Input, PageHeader, Pager, SearchBox, Select } from '../../components/ui';
import { date, money } from '../../lib/format';
import { StatusBadge } from './components/StatusBadge';
import { useApoio, useNavegacaoOrcamentos, useOrcamentos, usePermissoesOrcamento } from './hooks';
import { DESTINOS, STATUS } from './regras';

export function OrcamentosPage() {
  const ir = useNavegacaoOrcamentos();
  const pode = usePermissoesOrcamento(null);
  const l = useOrcamentos();
  const { vendedores } = useApoio();
  const f = l.filtro;

  return (
    <>
      <PageHeader
        title="Orçamentos"
        subtitle="Atendimentos, aprovações e vendas fechadas"
        actions={pode.financeiro && <button className="btn primary" onClick={() => ir.abrir('novo')}>Novo orçamento</button>}
      />
      <Card>
        <div className="grid" style={{ marginBottom: 12, alignItems: 'end' }}>
          <div className="col-4">
            <span className="field-label">Pesquisar</span>
            <SearchBox value={f.q} onChange={(q) => l.setFiltro({ q })} placeholder="Número ou cliente…" />
          </div>
          <Select className="col-2" label="Status" value={f.status} onChange={(e) => l.setFiltro({ status: e.target.value })}>
            <option value="">Todos</option>
            {Object.entries(STATUS).map(([v, s]) => <option key={v} value={v}>{s.label}</option>)}
          </Select>
          <Input className="col-2" label="Emissão de" type="date" value={f.data_ini} onChange={(e) => l.setFiltro({ data_ini: e.target.value })} />
          <Input className="col-2" label="até" type="date" value={f.data_fim} onChange={(e) => l.setFiltro({ data_fim: e.target.value })} />
          <Select className="col-2" label="Vendedor" value={f.vendedor_id} onChange={(e) => l.setFiltro({ vendedor_id: e.target.value })}>
            <option value="">Todos</option>
            {vendedores.map((v) => <option key={v.id} value={v.id}>{v.nome}</option>)}
          </Select>
        </div>
        <Alert>{l.error}</Alert>
        <DataTable
          rows={l.data?.items}
          rowKey={(o) => o.id}
          onRowClick={(o) => ir.abrir(o.id)}
          columns={[
            { header: 'Nº', width: '70px', render: (o) => <b>{o.numero}</b> },
            { header: 'Emissão', render: (o) => date(o.data_emissao) },
            { header: 'Cliente', render: (o) => o.cliente_nome },
            { header: 'Vendedor', render: (o) => o.vendedor_nome ?? '—' },
            { header: 'Destino', render: (o) => DESTINOS[o.destino] },
            { header: 'Validade', render: (o) => date(o.validade) },
            { header: 'Status', align: 'center', render: (o) => <StatusBadge status={o.status} /> },
            { header: 'Total', align: 'right', render: (o) => money(o.total) },
          ]}
        />
        {l.data && <Pager page={l.data.page} pageSize={l.data.pageSize} total={l.data.total} onPage={l.setPage} />}
      </Card>
    </>
  );
}
