import { useEffect, useState } from 'react';
import { Alert, Input, Modal, Select, TextArea } from '../../../components/ui';
import { producaoApi, type Motivo, type OrdemDetalhe } from '../api';
import { medidas } from '../format';
import { marcacaoInicial, montarMarcacao, useEnvio, type MarcacaoForm } from '../hooks';

export interface ItemParaMarcar {
  id: number;
  descricao: string;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
  setor_atual_id: number | null;
}

/** Modal de marcação: setor, quantidade, defeito e motivo. */
export function MarcarModal({ ordemId, item, setores, motivos, defeito = false, onClose, onDone }: {
  ordemId: number;
  item: ItemParaMarcar | null;
  setores: { id: number; nome: string }[];
  motivos: Motivo[];
  defeito?: boolean;
  onClose: () => void;
  onDone: (ordem: OrdemDetalhe) => void;
}) {
  const [form, setForm] = useState<MarcacaoForm>(() => marcacaoInicial({ setor_atual_id: null, quantidade: 1 }));
  const envio = useEnvio();

  useEffect(() => {
    if (item) setForm(marcacaoInicial(item, defeito));
    envio.setError('');
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [item, defeito]);

  if (!item) return null;
  const set = (p: Partial<MarcacaoForm>) => setForm((f) => ({ ...f, ...p }));

  const salvar = async () => {
    const { erro, body } = montarMarcacao(form, item.quantidade);
    if (erro) return envio.setError(erro);
    const ordem = await envio.run(() => producaoApi.marcar(ordemId, item.id, body!));
    if (ordem) onDone(ordem);
  };

  return (
    <Modal
      title="Marcar peça"
      open
      onClose={onClose}
      footer={
        <>
          <button className="btn" onClick={onClose}>Cancelar</button>
          <button className={`btn ${form.defeito ? 'danger' : 'primary'}`} disabled={envio.busy} onClick={salvar}>
            {envio.busy ? 'Salvando…' : form.defeito ? 'Registrar defeito' : 'Marcar como concluída no setor'}
          </button>
        </>
      }
    >
      <p style={{ marginTop: 0 }}>
        <strong>{item.descricao}</strong> <span className="muted">— {medidas(item)} — {item.quantidade} peça(s)</span>
      </p>
      <Alert>{envio.error}</Alert>
      <div className="grid">
        <Select label="Setor" className="col-8" value={form.setor_id} onChange={(e) => set({ setor_id: Number(e.target.value) || '' })}>
          <option value="">Selecione…</option>
          {setores.map((s) => (
            <option key={s.id} value={s.id}>{s.nome}</option>
          ))}
        </Select>
        <Input label="Quantidade" className="col-4" inputMode="decimal" value={form.quantidade} onChange={(e) => set({ quantidade: e.target.value })} />
        <label className="col-12" style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
          <input type="checkbox" checked={form.defeito} onChange={(e) => set({ defeito: e.target.checked })} />
          Peça com defeito
        </label>
        {form.defeito && (
          <Select label="Motivo do defeito" className="col-12" value={form.motivo_id} onChange={(e) => set({ motivo_id: Number(e.target.value) || '' })}>
            <option value="">Selecione…</option>
            {motivos.map((m) => (
              <option key={m.id} value={m.id}>{m.descricao}</option>
            ))}
          </Select>
        )}
        <TextArea label="Observação" className="col-12" value={form.observacao} onChange={(e) => set({ observacao: e.target.value })} />
      </div>
    </Modal>
  );
}
