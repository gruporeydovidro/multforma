import { useNavigate } from 'react-router-dom';
import { Alert, Badge, Card, DataTable, PageHeader, Pager, SearchBox } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { useProjetos } from './hooks';

export function ProjetosPage() {
  const nav = useNavigate();
  const { user } = useAuth();
  const l = useProjetos();
  return (
    <>
      <PageHeader
        title="Projetos"
        subtitle="Gabaritos de box, janelas e esquadrias com fórmulas por vão"
        actions={can(user, 'vendedor') && <button className="btn primary" onClick={() => nav('/projetos/novo')}>Novo projeto</button>}
      />
      <Card>
        <div className="actions" style={{ marginBottom: 12 }}>
          <SearchBox value={l.filtro.q ?? ''} onChange={(q) => l.setFiltro({ q })} placeholder="Pesquisar por nome…" />
          <select style={{ width: 160 }} value={l.filtro.ativo === undefined ? '' : String(l.filtro.ativo)} onChange={(e) => l.setFiltro({ ativo: e.target.value === '' ? undefined : e.target.value === 'true' })}>
            <option value="">Todos</option>
            <option value="true">Ativos</option>
            <option value="false">Inativos</option>
          </select>
        </div>
        <Alert>{l.error}</Alert>
        <DataTable
          rows={l.data?.items}
          rowKey={(p) => p.id}
          onRowClick={(p) => nav(`/projetos/${p.id}`)}
          columns={[
            { header: 'Nome', render: (p) => <b>{p.nome}</b> },
            { header: 'Descrição', render: (p) => <span className="muted">{p.descricao}</span> },
            { header: 'Itens', align: 'right', render: (p) => p.qtd_itens },
            { header: 'Situação', align: 'center', render: (p) => (p.ativo ? <Badge tone="green">Ativo</Badge> : <Badge>Inativo</Badge>) },
          ]}
        />
        {l.data && <Pager page={l.data.page} pageSize={l.data.pageSize} total={l.data.total} onPage={l.setPage} />}
      </Card>
    </>
  );
}
