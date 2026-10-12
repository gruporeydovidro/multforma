import { useEffect, useState } from 'react';
import { Alert, AsyncSelect, Input, Modal, Select, TextArea } from '../../../components/ui';
import { today } from '../../../lib/format';
import { buscarPessoas, financeiroApi, type FormaPagamento } from '../api';
import { FORMAS_PAGAMENTO } from '../format';
import { lerNumero } from '../../../lib/numero';
import { useEnvio } from '../../../lib/useEnvio';
import { PreviaParcelas } from './PreviaParcelas';

const buscarClientes = buscarPessoas('cliente');

/** Lançamento avulso de conta a receber em N parcelas mensais. */
export function NovaContaReceberModal({ aberto, onFechar, onSalvo }: { aberto: boolean; onFechar: () => void; onSalvo: () => void }) {
  const [clienteId, setClienteId] = useState<number | null>(null);
  const [valor, setValor] = useState('');
  const [parcelas, setParcelas] = useState(1);
  const [vencimento, setVencimento] = useState(today());
  const [forma, setForma] = useState<FormaPagamento>('boleto');
  const [documento, setDocumento] = useState('');
  const [observacao, setObservacao] = useState('');
  const { busy: enviando, error: erro, setError: setErro, run: executar } = useEnvio();

  useEffect(() => {
    if (!aberto) return;
    setClienteId(null); setValor(''); setParcelas(1); setVencimento(today()); setForma('boleto'); setDocumento(''); setObservacao(''); setErro('');
  }, [aberto, setErro]);

  const total = lerNumero(valor) ?? 0;
  const valido = !!clienteId && total > 0 && parcelas >= 1 && !!vencimento;
  const salvar = async () => {
    if (!valido) return;
    const r = await executar(() => financeiroApi.receber.criar({
      cliente_id: clienteId!, valor_total: total, parcelas, primeiro_vencimento: vencimento,
      forma_pagamento: forma, documento: documento || null, observacao: observacao || null,
    }));
    if (r) { onSalvo(); onFechar(); }
  };

  return (
    <Modal title="Nova conta a receber" open={aberto} onClose={enviando ? () => undefined : onFechar} wide
      footer={<>
        <button className="btn" onClick={onFechar} disabled={enviando}>Cancelar</button>
        <button className="btn primary" onClick={salvar} disabled={enviando || !valido}>{enviando ? 'Gravando…' : 'Gravar'}</button>
      </>}
    >
      <Alert>{erro}</Alert>
      <div className="grid">
        <AsyncSelect className="col-8" label="Cliente" value={clienteId} onChange={(v) => setClienteId(v)} fetchOptions={buscarClientes} />
        <Input className="col-4" label="Documento" value={documento} onChange={(e) => setDocumento(e.target.value)} maxLength={60} placeholder="AVULSO" />
        <Input className="col-3" label="Valor total" value={valor} onChange={(e) => setValor(e.target.value)} inputMode="decimal" />
        <Input className="col-2" label="Parcelas" type="number" min={1} max={120} value={parcelas} onChange={(e) => setParcelas(Math.max(1, Math.min(120, Number(e.target.value) || 1)))} />
        <Input className="col-3" label="1º vencimento" type="date" value={vencimento} onChange={(e) => setVencimento(e.target.value)} />
        <Select className="col-4" label="Forma de pagamento" value={forma} onChange={(e) => setForma(e.target.value as FormaPagamento)}>
          {FORMAS_PAGAMENTO.map((f) => <option key={f.value} value={f.value}>{f.label}</option>)}
        </Select>
        <TextArea className="col-12" label="Observação" value={observacao} onChange={(e) => setObservacao(e.target.value)} maxLength={500} />
      </div>
      <PreviaParcelas total={total} quantidade={parcelas} primeiroVencimento={vencimento} />
    </Modal>
  );
}
