import { useState } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { Alert, Badge, Card, DataTable, Input, Modal, PageHeader, TextArea } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { date, dateTime, decimal } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { producaoApi, type ItemOrdem, type MarcacaoHistorico, type OrdemDetalhe } from './api';
import { MarcarModal } from './components/MarcarModal';
import { StatusItemBadge, StatusOrdemBadge } from './components/StatusBadges';
import { areaM2, itemMarcavel, medidas, ordemAberta, progresso, quantidade, saldoNoSetor } from './format';
import { useEnvio, useMotivos } from './hooks';

export function OrdemPage() {
  const id = Number(useParams().id);
  const navigate = useNavigate();
  const { user } = useAuth();
  const podeProduzir = can(user, 'producao');
  const { data: ordem, error, setData } = useAsync(() => producaoApi.ordem(id), [id]);
  const { data: motivos } = useMotivos();
  const [marcando, setMarcando] = useState<ItemOrdem | null>(null);
  const [editando, setEditando] = useState(false);
  const [cancelando, setCancelando] = useState(false);
  const envio = useEnvio();

  if (error) return <Alert>{error}</Alert>;
  if (!ordem) return <div className="muted">Carregando…</div>;

  const aberta = ordemAberta(ordem.status);
  const atualizar = (o: OrdemDetalhe) => {
    setData(o);
    setMarcando(null);
    setEditando(false);
    setCancelando(false);
  };
  const refazer = async (item: ItemOrdem) => {
    const o = await envio.run(() => producaoApi.refazer(ordem.id, item.id));
    if (o) setData(o);
  };

  return (
    <>
      <PageHeader
        title={`Ordem de produção nº ${ordem.numero}`}
        subtitle={<StatusOrdemBadge status={ordem.status} atrasada={ordem.atrasada} />}
        actions={
          <>
            <button className="btn" onClick={() => navigate('/producao/ordens')}>Voltar</button>
            <Link className="btn" to={`/producao/ordens/${ordem.id}/imprimir`}>Imprimir</Link>
            {podeProduzir && ordem.status !== 'cancelada' && <button className="btn" onClick={() => setEditando(true)}>Editar previsão</button>}
            {podeProduzir && aberta && <button className="btn danger" onClick={() => setCancelando(true)}>Cancelar ordem</button>}
          </>
        }
      />
      <Alert>{envio.error}</Alert>
      <div className="stats">
        <Stat label="Cliente" value={ordem.cliente_nome} />
        <Stat label="Orçamento" value={`nº ${ordem.orcamento_numero}`} />
        <Stat label="Previsão de entrega" value={date(ordem.previsao_entrega) || '—'} alerta={ordem.atrasada} />
        <Stat label="Itens concluídos" value={`${progresso(ordem).texto} (${progresso(ordem).pct}%)`} />
      </div>
      {ordem.observacoes && <Alert kind="info">{ordem.observacoes}</Alert>}

      <Card title="Peças">
        <DataTable<ItemOrdem>
          rows={ordem.itens}
          rowKey={(i) => i.id}
          columns={[
            { header: 'Código', render: (i) => i.produto_codigo, width: '80px' },
            { header: 'Descrição', render: (i) => <>{i.descricao}{i.ambiente && <div className="muted">{i.ambiente}</div>}</> },
            { header: 'Qtd', render: (i) => quantidade(i.quantidade), align: 'right' },
            { header: 'Medidas (L x A)', render: (i) => medidas(i) },
            { header: 'm²', render: (i) => { const a = areaM2(i); return a === null ? '—' : decimal(a, 3); }, align: 'right' },
            {
              header: 'Setor atual',
              render: (i) =>
                i.setor_atual_nome ? (
                  <>
                    {i.setor_atual_nome}
                    {i.processado_setor > 0 && <div className="muted">{quantidade(saldoNoSetor(i).processado)} de {quantidade(i.quantidade)} processada(s)</div>}
                  </>
                ) : '—',
            },
            { header: 'Status', render: (i) => <><StatusItemBadge status={i.status} />{i.defeitos > 0 && <> <Badge tone="orange">{i.defeitos} defeito(s)</Badge></>}</> },
            {
              header: '',
              align: 'right',
              render: (i) =>
                podeProduzir && aberta && (
                  itemMarcavel(i.status) ? (
                    <button className="btn small primary" onClick={() => setMarcando(i)}>Marcar</button>
                  ) : i.status === 'defeito' ? (
                    <button className="btn small" disabled={envio.busy} onClick={() => refazer(i)}>Refazer</button>
                  ) : null
                ),
            },
          ]}
        />
        <p className="hint">Roteiro: {ordem.setores.map((s) => s.nome).join(' → ')}</p>
      </Card>

      <Card title="Histórico de marcações">
        <DataTable<MarcacaoHistorico>
          rows={ordem.marcacoes}
          rowKey={(m) => m.id}
          empty="Nenhuma marcação ainda."
          columns={[
            { header: 'Data/hora', render: (m) => dateTime(m.criado_em) },
            { header: 'Peça', render: (m) => m.item_descricao },
            { header: 'Setor', render: (m) => m.setor_nome },
            { header: 'Qtd', render: (m) => quantidade(m.quantidade), align: 'right' },
            { header: 'Resultado', render: (m) => (m.defeito ? <Badge tone="red">Defeito: {m.motivo}</Badge> : <Badge tone="green">Concluída</Badge>) },
            { header: 'Observação', render: (m) => m.observacao ?? '' },
            { header: 'Usuário', render: (m) => m.usuario_nome ?? '' },
          ]}
        />
      </Card>

      <MarcarModal ordemId={ordem.id} item={marcando} setores={ordem.setores} motivos={motivos ?? []} onClose={() => setMarcando(null)} onDone={atualizar} />
      {editando && <EditarOrdemModal ordem={ordem} onClose={() => setEditando(false)} onDone={atualizar} />}
      {cancelando && <CancelarOrdemModal ordem={ordem} onClose={() => setCancelando(false)} onDone={atualizar} />}
    </>
  );
}

function Stat({ label, value, alerta }: { label: string; value: string; alerta?: boolean }) {
  return (
    <div className="stat">
      <div className="label">{label}</div>
      <div className="value" style={{ fontSize: 17, color: alerta ? 'var(--danger)' : undefined }}>{value}</div>
    </div>
  );
}

function EditarOrdemModal({ ordem, onClose, onDone }: { ordem: OrdemDetalhe; onClose: () => void; onDone: (o: OrdemDetalhe) => void }) {
  const [previsao, setPrevisao] = useState(ordem.previsao_entrega ?? '');
  const [obs, setObs] = useState(ordem.observacoes ?? '');
  const envio = useEnvio();
  const salvar = async () => {
    const o = await envio.run(() => producaoApi.atualizarOrdem(ordem.id, { previsao_entrega: previsao || null, observacoes: obs.trim() || null }));
    if (o) onDone(o);
  };
  return (
    <Modal title="Previsão e observações" open onClose={onClose} footer={<><button className="btn" onClick={onClose}>Cancelar</button><button className="btn primary" disabled={envio.busy} onClick={salvar}>Salvar</button></>}>
      <Alert>{envio.error}</Alert>
      <div className="grid">
        <Input label="Previsão de entrega" type="date" className="col-6" value={previsao} onChange={(e) => setPrevisao(e.target.value)} />
        <TextArea label="Observações da produção" className="col-12" value={obs} onChange={(e) => setObs(e.target.value)} />
      </div>
    </Modal>
  );
}

function CancelarOrdemModal({ ordem, onClose, onDone }: { ordem: OrdemDetalhe; onClose: () => void; onDone: (o: OrdemDetalhe) => void }) {
  const [motivo, setMotivo] = useState('');
  const envio = useEnvio();
  const cancelar = async () => {
    const o = await envio.run(() => producaoApi.cancelarOrdem(ordem.id, motivo.trim()));
    if (o) onDone(o);
  };
  return (
    <Modal title={`Cancelar a ordem nº ${ordem.numero}`} open onClose={onClose} footer={<><button className="btn" onClick={onClose}>Voltar</button><button className="btn danger" disabled={envio.busy} onClick={cancelar}>Cancelar ordem</button></>}>
      <Alert>{envio.error}</Alert>
      <p>As peças deixam de aparecer no painel da produção. O orçamento poderá gerar uma nova ordem.</p>
      <TextArea label="Motivo (opcional)" value={motivo} onChange={(e) => setMotivo(e.target.value)} />
    </Modal>
  );
}
