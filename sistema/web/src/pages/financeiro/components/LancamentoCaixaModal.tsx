import { useEffect, useState } from 'react';
import { Alert, Input, Modal, Select } from '../../../components/ui';
import { today } from '../../../lib/format';
import { financeiroApi, type FormaPagamento, type TipoLancamento } from '../api';
import { FORMAS_PAGAMENTO } from '../format';
import { lerNumero } from '../../../lib/numero';
import { useEnvio } from '../../../lib/useEnvio';

/** Naturezas de lançamento manual e o sentido no caixa. */
export const NATUREZAS: { value: string; label: string; tipo: TipoLancamento }[] = [
  { value: 'suprimento', label: 'Suprimento (entrada de troco)', tipo: 'entrada' },
  { value: 'sangria', label: 'Sangria (retirada)', tipo: 'saida' },
  { value: 'despesa', label: 'Despesa', tipo: 'saida' },
  { value: 'entrada', label: 'Outra entrada', tipo: 'entrada' },
  { value: 'saida', label: 'Outra saída', tipo: 'saida' },
];

const prefixo: Record<string, string> = { suprimento: 'Suprimento', sangria: 'Sangria', despesa: 'Despesa' };

/** Lançamento manual no caixa (sangria, suprimento, despesa). */
export function LancamentoCaixaModal({ aberto, onFechar, onSalvo }: { aberto: boolean; onFechar: () => void; onSalvo: () => void }) {
  const [natureza, setNatureza] = useState('despesa');
  const [valor, setValor] = useState('');
  const [descricao, setDescricao] = useState('');
  const [data, setData] = useState(today());
  const [forma, setForma] = useState<FormaPagamento>('dinheiro');
  const { busy: enviando, error: erro, setError: setErro, run: executar } = useEnvio();

  useEffect(() => {
    if (aberto) { setNatureza('despesa'); setValor(''); setDescricao(''); setData(today()); setForma('dinheiro'); setErro(''); }
  }, [aberto, setErro]);

  const n = NATUREZAS.find((x) => x.value === natureza)!;
  const v = lerNumero(valor) ?? 0;
  const texto = [prefixo[natureza], descricao.trim()].filter(Boolean).join(': ');
  const valido = v > 0 && texto !== '';

  const salvar = async () => {
    if (!valido) return;
    const r = await executar(() => financeiroApi.caixa.lancar({ tipo: n.tipo, valor: v, descricao: texto, data, forma_pagamento: forma }));
    if (r) { onSalvo(); onFechar(); }
  };

  return (
    <Modal title="Lançamento manual no caixa" open={aberto} onClose={enviando ? () => undefined : onFechar}
      footer={<>
        <button className="btn" onClick={onFechar} disabled={enviando}>Cancelar</button>
        <button className="btn primary" onClick={salvar} disabled={enviando || !valido}>{enviando ? 'Gravando…' : 'Lançar'}</button>
      </>}
    >
      <Alert>{erro}</Alert>
      <div className="grid">
        <Select className="col-6" label="Natureza" value={natureza} onChange={(e) => setNatureza(e.target.value)}>
          {NATUREZAS.map((x) => <option key={x.value} value={x.value}>{x.label}</option>)}
        </Select>
        <Input className="col-6" label="Data" type="date" value={data} onChange={(e) => setData(e.target.value)} />
        <Input className="col-12" label="Descrição" value={descricao} onChange={(e) => setDescricao(e.target.value)} maxLength={180}
          hint={texto ? `Será gravado como: ${texto}` : undefined} />
        <Input className="col-6" label="Valor" value={valor} onChange={(e) => setValor(e.target.value)} inputMode="decimal" />
        <Select className="col-6" label="Forma" value={forma} onChange={(e) => setForma(e.target.value as FormaPagamento)}>
          {FORMAS_PAGAMENTO.map((x) => <option key={x.value} value={x.value}>{x.label}</option>)}
        </Select>
      </div>
    </Modal>
  );
}
