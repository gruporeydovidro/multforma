import { Alert, Card, DataTable, Input, PageHeader, Pager, Select } from '../../components/ui';
import { dateTime, money } from '../../lib/format';
import type { Movimento } from './api';
import { ProdutoSelect } from './components/ProdutoSelect';
import { TipoBadge } from './components/TipoBadge';
import { ORIGENS, qtd, TIPOS } from './format';
import { useMovimentos } from './hooks';

/** Movimentações de estoque: todos os filtros ficam na URL (clicar no menu limpa a lista). */
export function MovimentosPage() {
  const { filtros, filtrar, setPage, produto, data, error } = useMovimentos();

  return (
    <>
      <PageHeader title="Movimentações de estoque" />
      <Card>
        <div className="grid">
          <ProdutoSelect className="col-4" value={produto.value} onChange={produto.onChange} initialLabel={produto.initialLabel} />
          <Select label="Tipo" className="col-2" value={filtros.tipo} onChange={(e) => filtrar({ tipo: e.target.value })}>
            <option value="">Todos</option>
            {Object.entries(TIPOS).map(([k, v]) => <option key={k} value={k}>{v.label}</option>)}
          </Select>
          <Select label="Origem" className="col-2" value={filtros.origem} onChange={(e) => filtrar({ origem: e.target.value })}>
            <option value="">Todas</option>
            {Object.entries(ORIGENS).map(([k, v]) => <option key={k} value={k}>{v}</option>)}
          </Select>
          <Input label="De" type="date" className="col-2" value={filtros.de} onChange={(e) => filtrar({ de: e.target.value })} />
          <Input label="Até" type="date" className="col-2" value={filtros.ate} onChange={(e) => filtrar({ ate: e.target.value })} />
        </div>
      </Card>
      <Alert>{error}</Alert>
      <DataTable<Movimento>
        rows={data?.items}
        rowKey={(m) => m.id}
        columns={[
          { header: 'Data/hora', render: (m) => dateTime(m.criado_em) },
          { header: 'Produto', render: (m) => `${m.produto_codigo} — ${m.produto_nome}` },
          { header: 'Tipo', render: (m) => <TipoBadge tipo={m.tipo} /> },
          { header: 'Origem', render: (m) => ORIGENS[m.origem] },
          {
            header: 'Quantidade',
            align: 'right',
            render: (m) => <span style={{ color: m.quantidade < 0 ? 'var(--danger)' : 'var(--success)' }}>{m.quantidade > 0 ? '+' : ''}{qtd(m.quantidade)} {m.unidade_venda}</span>,
          },
          { header: 'Custo unit.', render: (m) => (m.custo_unitario == null ? '' : money(m.custo_unitario)), align: 'right' },
          { header: 'Documento', render: (m) => m.documento ?? '' },
          { header: 'Observação', render: (m) => m.observacao ?? '' },
          { header: 'Usuário', render: (m) => m.usuario_nome ?? '' },
        ]}
      />
      {data && <Pager page={data.page} pageSize={data.pageSize} total={data.total} onPage={setPage} />}
    </>
  );
}
