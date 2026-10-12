import { Link, useNavigate } from 'react-router-dom';
import { Alert, Badge, Card, DataTable, PageHeader } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { date, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { Indicador, Indicadores } from '../../components/Indicador';
import { inicioApi, type Painel } from './api';

const STATUS_ORC: Record<string, { label: string; tone: 'blue' | 'orange' | 'green' | 'neutral' }> = {
  aberto: { label: 'Aberto', tone: 'blue' },
  aprovado: { label: 'Aprovado', tone: 'orange' },
  fechado: { label: 'Fechado', tone: 'green' },
  cancelado: { label: 'Cancelado', tone: 'neutral' },
};

const qtd = (n: number, singular: string, plural: string) => `${n} ${n === 1 ? singular : plural}`;

function Atalhos() {
  const { user } = useAuth();
  return (
    <div className="actions" style={{ marginBottom: 16 }}>
      {can(user, 'vendedor') && <Link className="btn primary" to="/orcamentos/novo">Novo orçamento</Link>}
      {can(user, 'producao') && <Link className="btn" to="/producao">Ordens de produção</Link>}
      {can(user, 'financeiro', 'vendedor') && <Link className="btn" to="/financeiro/receber">Contas a receber</Link>}
    </div>
  );
}

function PainelIndicadores({ p }: { p: Painel }) {
  const { user } = useAuth();
  const financeiro = can(user, 'financeiro');
  return (
    <>
      <Indicadores>
        <Indicador rotulo="Vendas do mês" valor={money(p.vendas_mes.total)} detalhe={qtd(p.vendas_mes.quantidade, 'orçamento fechado', 'orçamentos fechados')} />
        <Indicador rotulo="Vendas de hoje" valor={money(p.vendas_hoje.total)} detalhe={qtd(p.vendas_hoje.quantidade, 'orçamento', 'orçamentos')} />
        <Indicador rotulo="Ticket médio (mês)" valor={money(p.ticket_medio)} />
        <Indicador rotulo="Orçamentos em aberto" valor={p.orcamentos_abertos.quantidade} detalhe={money(p.orcamentos_abertos.total)} />
        <Indicador rotulo="Orçamentos aprovados" valor={p.orcamentos_aprovados.quantidade} detalhe={`${money(p.orcamentos_aprovados.total)} a fechar`} tom={p.orcamentos_aprovados.quantidade ? 'orange' : undefined} />
      </Indicadores>
      <Indicadores>
        <Indicador rotulo="A receber vencido" valor={money(p.receber_vencido.total)} detalhe={qtd(p.receber_vencido.quantidade, 'título', 'títulos')} tom={p.receber_vencido.total ? 'red' : undefined} />
        {financeiro && <Indicador rotulo="A pagar nos próximos 7 dias" valor={money(p.pagar_7_dias.total)} detalhe={qtd(p.pagar_7_dias.quantidade, 'título', 'títulos')} tom={p.pagar_7_dias.total ? 'orange' : undefined} />}
        {financeiro && p.pagar_vencido.quantidade > 0 && <Indicador rotulo="A pagar vencido" valor={money(p.pagar_vencido.total)} detalhe={qtd(p.pagar_vencido.quantidade, 'título', 'títulos')} tom="red" />}
        <Indicador rotulo="Produção em andamento" valor={p.producao.em_andamento} detalhe={`${p.producao.aguardando} aguardando · ${p.producao.em_producao} em produção`} />
        <Indicador rotulo="Ordens atrasadas" valor={p.producao.atrasadas} tom={p.producao.atrasadas ? 'red' : 'green'} />
      </Indicadores>
    </>
  );
}

export function PainelPage() {
  const { user } = useAuth();
  const navigate = useNavigate();
  const temAcesso = can(user, 'vendedor', 'financeiro');
  const { data, error } = useAsync(() => (temAcesso ? inicioApi.painel() : Promise.resolve(undefined)), [temAcesso]);

  return (
    <>
      <PageHeader title={`Olá, ${user?.nome ?? ''}`} subtitle={data ? `Indicadores de ${date(data.hoje)}` : 'Painel'} />
      <Atalhos />
      <Alert>{error}</Alert>
      {!temAcesso && <Alert kind="info">Use o menu ao lado para acessar as ordens de produção.</Alert>}
      {temAcesso && !data && !error && <p className="muted">Carregando indicadores…</p>}
      {data && (
        <>
          <PainelIndicadores p={data} />
          <Card title="Últimos orçamentos" actions={<Link to="/orcamentos">Ver todos</Link>}>
            <DataTable
              columns={[
                { header: 'Número', render: (o) => <strong>{o.numero}</strong> },
                { header: 'Cliente', render: (o) => o.cliente_nome },
                { header: 'Emissão', render: (o) => date(o.data_emissao) },
                { header: 'Situação', render: (o) => { const s = STATUS_ORC[o.status] ?? { label: o.status, tone: 'neutral' as const }; return <Badge tone={s.tone}>{s.label}</Badge>; } },
                { header: 'Total', align: 'right', render: (o) => money(o.total) },
              ]}
              rows={data.ultimos_orcamentos}
              rowKey={(o) => o.id}
              onRowClick={(o) => navigate(`/orcamentos/${o.id}`)}
              empty="Nenhum orçamento cadastrado."
            />
          </Card>
        </>
      )}
    </>
  );
}
