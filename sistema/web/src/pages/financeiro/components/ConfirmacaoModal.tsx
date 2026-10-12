import { useEffect, useState, type ReactNode } from 'react';
import { Alert, Input, Modal } from '../../../components/ui';
import { useEnvio } from '../../../lib/useEnvio';

/** Confirmação de ação (cancelar, estornar, excluir), com motivo opcional. */
export function ConfirmacaoModal({ titulo, mensagem, aberto, comMotivo, rotulo = 'Confirmar', perigo, onFechar, onConfirmar }: {
  titulo: string;
  mensagem: ReactNode;
  aberto: boolean;
  comMotivo?: boolean;
  rotulo?: string;
  perigo?: boolean;
  onFechar: () => void;
  onConfirmar: (motivo?: string) => Promise<unknown>;
}) {
  const [motivo, setMotivo] = useState('');
  const { busy: enviando, error: erro, setError: setErro, run: executar } = useEnvio();
  useEffect(() => {
    if (aberto) { setMotivo(''); setErro(''); }
  }, [aberto, setErro]);
  const confirmar = async () => {
    const ok = await executar(async () => { await onConfirmar(motivo.trim() || undefined); return true; });
    if (ok) onFechar();
  };
  return (
    <Modal
      title={titulo}
      open={aberto}
      onClose={enviando ? () => undefined : onFechar}
      footer={
        <>
          <button className="btn" onClick={onFechar} disabled={enviando}>Voltar</button>
          <button className={`btn ${perigo ? 'danger' : 'primary'}`} onClick={confirmar} disabled={enviando}>{enviando ? 'Aguarde…' : rotulo}</button>
        </>
      }
    >
      <Alert>{erro}</Alert>
      <div style={{ marginBottom: comMotivo ? 12 : 0 }}>{mensagem}</div>
      {comMotivo && <Input label="Motivo (opcional)" value={motivo} onChange={(e) => setMotivo(e.target.value)} maxLength={300} />}
    </Modal>
  );
}
