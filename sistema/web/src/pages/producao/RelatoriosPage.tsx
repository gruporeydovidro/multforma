import { useState } from 'react';
import { Link } from 'react-router-dom';
import { Alert, Card, DataTable, Input, PageHeader } from '../../components/ui';
import { date, dateTime, decimal, today } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { producaoApi, type OrdemResumo, type Periodo, type ProducaoSetorLinha, type RelatorioDefeitos } from './api';
import { StatusOrdemBadge } from './components/StatusBadges';
import { medidas, progresso, quantidade } from './format';

const inicioDoMes = () => `${today().slice(0, 7)}-01`;

/** Relatórios: produção por setor, problemas na produção e previsão de entrega. */
export function RelatoriosPage() {
  const [periodo, setPeriodo] = useState<Periodo>({ de: inicioDoMes(), ate: today() });
  const chave = JSON.stringify(periodo);
  const porSetor = useAsync(() => producaoApi.producaoPorSetor(periodo), [chave]);
  const defeitos = useAsync(() => producaoApi.defeitos(periodo), [chave]);
  const previsao = useAsync(() => producaoApi.previsaoEntrega({ ate: periodo.ate }), [periodo.ate]);

  return (
    <>
      <PageHeader title="Relatórios da produção" actions={<button className="btn no-print" onClick={() => window.print()}>Imprimir</button>} />
      <Card>
        <div className="grid">
          <Input label="De" type="date" className="col-3" value={periodo.de ?? ''} onChange={(e) => setPeriodo({ ...periodo, de: e.target.value || undefined })} />
          <Input label="Até" type="date" className="col-3" value={periodo.ate ?? ''} onChange={(e) => setPeriodo({ ...periodo, ate: e.target.value || undefined })} />
        </div>
      </Card>
      <Alert>{porSetor.error || defeitos.error || previsao.error}</Alert>

      <Card title="Produção por setor">
        <DataTable<ProducaoSetorLinha>
          rows={porSetor.data?.items}
          rowKey={(r) => r.setor_id}
          columns={[
            { header: 'Setor', render: (r) => r.setor_nome },
            { header: 'Marcações', render: (r) => r.marcacoes, align: 'right' },
            { header: 'Peças concluídas', render: (r) => quantidade(r.pecas), align: 'right' },
            { header: 'm² concluídos', render: (r) => decimal(r.m2, 3), align: 'right' },
            { header: 'Defeitos', render: (r) => r.defeitos, align: 'right' },
            { header: 'Peças com defeito', render: (r) => quantidade(r.pecas_defeito), align: 'right' },
          ]}
        />
      </Card>

      <ProblemasCard rel={defeitos.data} />

      <Card title={`Previsão de entrega (ordens em aberto até ${date(periodo.ate) || 'qualquer data'})`}>
        <DataTable<OrdemResumo>
          rows={previsao.data}
          rowKey={(o) => o.id}
          empty="Nenhuma ordem em aberto no período."
          columns={[
            { header: 'Previsão', render: (o) => date(o.previsao_entrega) || '—' },
            { header: 'Ordem', render: (o) => <Link to={`/producao/ordens/${o.id}`}>{o.numero}</Link> },
            { header: 'Cliente', render: (o) => o.cliente_nome },
            { header: 'Itens concluídos', render: (o) => progresso(o).texto, align: 'right' },
            { header: 'Status', render: (o) => <StatusOrdemBadge status={o.status} atrasada={o.atrasada} /> },
          ]}
        />
      </Card>
    </>
  );
}

function ProblemasCard({ rel }: { rel: RelatorioDefeitos | undefined }) {
  return (
    <Card title="Problemas na produção">
      <div className="grid">
        <div className="col-6">
          <DataTable
            rows={rel?.por_motivo}
            rowKey={(r) => r.motivo_id ?? 0}
            empty="Nenhum defeito no período."
            columns={[
              { header: 'Motivo', render: (r) => r.motivo },
              { header: 'Ocorrências', render: (r) => r.ocorrencias, align: 'right' },
              { header: 'Peças', render: (r) => quantidade(r.pecas), align: 'right' },
            ]}
          />
        </div>
        <div className="col-6">
          <DataTable
            rows={rel?.por_setor}
            rowKey={(r) => r.setor_id}
            empty="Nenhum defeito no período."
            columns={[
              { header: 'Setor', render: (r) => r.setor_nome },
              { header: 'Ocorrências', render: (r) => r.ocorrencias, align: 'right' },
              { header: 'Peças', render: (r) => quantidade(r.pecas), align: 'right' },
            ]}
          />
        </div>
        <div className="col-12">
          <DataTable
            rows={rel?.ocorrencias}
            rowKey={(r) => r.id}
            empty="Sem ocorrências."
            columns={[
              { header: 'Data/hora', render: (r) => dateTime(r.criado_em) },
              { header: 'Ordem', render: (r) => <Link to={`/producao/ordens/${r.ordem_id}`}>{r.ordem_numero}</Link> },
              { header: 'Peça', render: (r) => `${r.item_descricao} (${medidas(r)})` },
              { header: 'Setor', render: (r) => r.setor_nome },
              { header: 'Motivo', render: (r) => r.motivo ?? '' },
              { header: 'Qtd', render: (r) => quantidade(r.quantidade), align: 'right' },
              { header: 'Observação', render: (r) => r.observacao ?? '' },
              { header: 'Usuário', render: (r) => r.usuario_nome ?? '' },
            ]}
          />
        </div>
      </div>
    </Card>
  );
}
