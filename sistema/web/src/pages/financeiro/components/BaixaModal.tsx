import { useEffect, useState } from 'react';
import { Alert, Input, Modal, Select } from '../../../components/ui';
import { decimal, money, today } from '../../../lib/format';
import type { Baixa, FormaPagamento } from '../api';
import { FORMAS_PAGAMENTO } from '../format';
import { lerNumero } from '../../../lib/numero';
import { useEnvio } from '../../../lib/useEnvio';

/** Modal de baixa (parcial ou total) de um título. */
export function BaixaModal({ titulo, descricao, aberto, onFechar, onConfirmar }: {
  titulo?: { saldo: number; forma_pagamento: FormaPagamento | null } | null;
  descricao?: string;
  aberto: boolean;
  onFechar: () => void;
  onConfirmar: (b: Baixa) => Promise<unknown>;
}) {
  const [valor, setValor] = useState('');
  const [data, setData] = useState(today());
  const [forma, setForma] = useState<FormaPagamento>('dinheiro');
  const { busy: enviando, error: erro, setError: setErro, run: executar } = useEnvio();

  useEffect(() => {
    if (!aberto || !titulo) return;
    setValor(decimal(titulo.saldo));
    setData(today());
    setForma(titulo.forma_pagamento && titulo.forma_pagamento !== 'a_prazo' ? titulo.forma_pagamento : 'dinheiro');
    setErro('');
  }, [aberto, titulo, setErro]);

  const v = lerNumero(valor) ?? 0;
  const invalido = !(v > 0) || (titulo ? v > titulo.saldo + 0.001 : true);
  const confirmar = async () => {
    if (invalido) return;
    const r = await executar(() => onConfirmar({ valor: v, data, forma_pagamento: forma }));
    if (r !== undefined) onFechar();
  };

  return (
    <Modal
      title="Baixar título"
      open={aberto}
      onClose={enviando ? () => undefined : onFechar}
      footer={
        <>
          <button className="btn" onClick={onFechar} disabled={enviando}>Cancelar</button>
          <button className="btn primary" onClick={confirmar} disabled={enviando || invalido}>{enviando ? 'Gravando…' : 'Confirmar baixa'}</button>
        </>
      }
    >
      <Alert>{erro}</Alert>
      {descricao && <p className="muted" style={{ marginTop: 0 }}>{descricao}</p>}
      <p style={{ marginTop: 0 }}>Saldo do título: <strong>{money(titulo?.saldo)}</strong></p>
      <div className="grid">
        <Input className="col-4" label="Valor" value={valor} onChange={(e) => setValor(e.target.value)} inputMode="decimal" autoFocus
          error={valor && invalido ? 'Informe um valor entre 0,01 e o saldo' : undefined}
          hint={titulo && v > 0 && v < titulo.saldo ? 'Baixa parcial' : undefined} />
        <Input className="col-4" label="Data" type="date" value={data} onChange={(e) => setData(e.target.value)} />
        <Select className="col-4" label="Forma de pagamento" value={forma} onChange={(e) => setForma(e.target.value as FormaPagamento)}>
          {FORMAS_PAGAMENTO.map((f) => <option key={f.value} value={f.value}>{f.label}</option>)}
        </Select>
      </div>
    </Modal>
  );
}
