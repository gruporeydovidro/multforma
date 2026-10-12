import { useState } from 'react';
import { Alert, AsyncSelect, Modal } from '../../../components/ui';
import { date, money } from '../../../lib/format';
import { producaoApi, type OrdemDetalhe } from '../api';
import { useEnvio } from '../hooks';

/** Gera manualmente a ordem de um orçamento fechado que ainda não foi para a produção. */
export function NovaOrdemModal({ open, onClose, onCreated }: { open: boolean; onClose: () => void; onCreated: (o: OrdemDetalhe) => void }) {
  const [orcamentoId, setOrcamentoId] = useState<number | null>(null);
  const envio = useEnvio();

  const buscar = async (q: string) =>
    (await producaoApi.orcamentosDisponiveis(q)).map((o) => ({
      value: o.id,
      label: `Orçamento nº ${o.numero} — ${o.cliente_nome} — ${money(o.total)}${o.prazo_entrega ? ` — entrega ${date(o.prazo_entrega)}` : ''}`,
    }));

  const gerar = async () => {
    if (!orcamentoId) return envio.setError('Selecione o orçamento.');
    const o = await envio.run(() => producaoApi.gerarOrdem(orcamentoId));
    if (o) onCreated(o);
  };

  return (
    <Modal
      title="Nova ordem de produção"
      open={open}
      onClose={onClose}
      footer={
        <>
          <button className="btn" onClick={onClose}>Cancelar</button>
          <button className="btn primary" disabled={envio.busy} onClick={gerar}>{envio.busy ? 'Gerando…' : 'Gerar ordem'}</button>
        </>
      }
    >
      <Alert>{envio.error}</Alert>
      <AsyncSelect label="Orçamento fechado" value={orcamentoId} onChange={(v) => setOrcamentoId(v)} fetchOptions={buscar} placeholder="Número do orçamento ou nome do cliente" />
      <p className="hint">Só aparecem orçamentos fechados sem ordem de produção ativa.</p>
    </Modal>
  );
}
