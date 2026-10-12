import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Alert, DataTable, Input, PageHeader, Pager, SearchBox, Select, Card } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { date } from '../../lib/format';
import type { OrdemResumo } from './api';
import { StatusOrdemBadge } from './components/StatusBadges';
import { NovaOrdemModal } from './components/NovaOrdemModal';
import { progresso, quantidade, STATUS_ORDEM } from './format';
import { useOrdens } from './hooks';

export function OrdensPage() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const { filtros, filtrar, setPage, data, error } = useOrdens();
  const [nova, setNova] = useState(false);

  return (
    <>
      <PageHeader
        title="Ordens de produção"
        actions={can(user, 'producao') && <button className="btn primary" onClick={() => setNova(true)}>Nova ordem</button>}
      />
      <Card>
        <div className="grid" style={{ alignItems: 'end' }}>
          <div className="col-4">
            <SearchBox value={filtros.q} onChange={(q) => filtrar({ q })} placeholder="Nº da ordem, do orçamento ou cliente" />
          </div>
          <Select label="Status" className="col-2" value={filtros.status} onChange={(e) => filtrar({ status: e.target.value })}>
            <option value="">Todos</option>
            {Object.entries(STATUS_ORDEM).map(([k, v]) => (
              <option key={k} value={k}>{v.label}</option>
            ))}
          </Select>
          <Input label="Criada de" type="date" className="col-2" value={filtros.de} onChange={(e) => filtrar({ de: e.target.value })} />
          <Input label="até" type="date" className="col-2" value={filtros.ate} onChange={(e) => filtrar({ ate: e.target.value })} />
          <label className="col-2" style={{ display: 'flex', gap: 8, alignItems: 'center', paddingBottom: 8 }}>
            <input type="checkbox" checked={filtros.atrasadas === '1'} onChange={(e) => filtrar({ atrasadas: e.target.checked ? '1' : '' })} />
            Só atrasadas
          </label>
        </div>
      </Card>
      <Alert>{error}</Alert>
      <DataTable<OrdemResumo>
        rows={data?.items}
        rowKey={(o) => o.id}
        onRowClick={(o) => navigate(`/producao/ordens/${o.id}`)}
        columns={[
          { header: 'Nº', render: (o) => <strong>{o.numero}</strong>, width: '70px' },
          { header: 'Orçamento', render: (o) => o.orcamento_numero, width: '90px' },
          { header: 'Cliente', render: (o) => o.cliente_nome },
          { header: 'Criada em', render: (o) => date(o.criado_em) },
          { header: 'Previsão', render: (o) => <span style={o.atrasada ? { color: 'var(--danger)', fontWeight: 600 } : undefined}>{date(o.previsao_entrega) || '—'}</span> },
          { header: 'Peças', render: (o) => quantidade(o.pecas_total), align: 'right' },
          { header: 'Itens concluídos', render: (o) => `${progresso(o).texto} (${progresso(o).pct}%)`, align: 'right' },
          { header: 'Status', render: (o) => <StatusOrdemBadge status={o.status} atrasada={o.atrasada} /> },
        ]}
      />
      {data && <Pager page={data.page} pageSize={data.pageSize} total={data.total} onPage={setPage} />}
      <NovaOrdemModal open={nova} onClose={() => setNova(false)} onCreated={(o) => navigate(`/producao/ordens/${o.id}`)} />
    </>
  );
}
