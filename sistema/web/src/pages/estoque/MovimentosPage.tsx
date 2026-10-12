import { useSearchParams } from 'react-router-dom';
import { Alert, Card, DataTable, Input, PageHeader, Pager, Select } from '../../components/ui';
import { dateTime, money } from '../../lib/format';
import { estoqueApi, type FiltroMovimentos, type Movimento, type OrigemMovimento, type TipoMovimento } from './api';
import { ProdutoSelect } from './components/ProdutoSelect';
import { TipoBadge } from './components/TipoBadge';
import { ORIGENS, qtd, TIPOS } from './format';
import { useListaFiltrada, useSaldoProduto } from './hooks';

export function MovimentosPage() {
  const [params] = useSearchParams();
  const inicial: FiltroMovimentos = { produto_id: Number(params.get('produto_id')) || null };
  const { filtro, setFiltro, setPage, data, error } = useListaFiltrada(estoqueApi.movimentos, inicial);
  const { data: produtoInicial } = useSaldoProduto(inicial.produto_id ?? null);

  return (
    <>
      <PageHeader title="Movimentações de estoque" />
      <Card>
        <div className="grid">
          <ProdutoSelect className="col-4" value={filtro.produto_id ?? null} onChange={(produto_id) => setFiltro({ produto_id })} initialLabel={produtoInicial ? `${produtoInicial.codigo} — ${produtoInicial.nome}` : undefined} />
          <Select label="Tipo" className="col-2" value={filtro.tipo ?? ''} onChange={(e) => setFiltro({ tipo: e.target.value as TipoMovimento | '' })}>
            <option value="">Todos</option>
            {Object.entries(TIPOS).map(([k, v]) => <option key={k} value={k}>{v.label}</option>)}
          </Select>
          <Select label="Origem" className="col-2" value={filtro.origem ?? ''} onChange={(e) => setFiltro({ origem: e.target.value as OrigemMovimento | '' })}>
            <option value="">Todas</option>
            {Object.entries(ORIGENS).map(([k, v]) => <option key={k} value={k}>{v}</option>)}
          </Select>
          <Input label="De" type="date" className="col-2" value={filtro.de ?? ''} onChange={(e) => setFiltro({ de: e.target.value })} />
          <Input label="Até" type="date" className="col-2" value={filtro.ate ?? ''} onChange={(e) => setFiltro({ ate: e.target.value })} />
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
