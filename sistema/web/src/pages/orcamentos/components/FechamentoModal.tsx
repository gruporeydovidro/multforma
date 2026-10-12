import { useEffect, useState } from 'react';
import { Alert, Input, Modal, Select } from '../../../components/ui';
import { addDays, money, today } from '../../../lib/format';
import type { FechamentoInput, FormaPagamento, ParcelaOrcamento } from '../api';
import { FORMAS, FORMAS_A_VISTA, gerarParcelas, parcelasConferem, somaParcelas } from '../regras';

/**
 * Fechamento: forma de pagamento e geração automática de N parcelas mensais, editáveis.
 * Só permite confirmar quando as parcelas somam o total (tolerância de R$ 0,01).
 */
export function FechamentoModal({ total, open, busy, error, onFechar, onConfirmar }: {
  total: number;
  open: boolean;
  busy: boolean;
  error?: string;
  onFechar: () => void;
  onConfirmar: (f: FechamentoInput) => Promise<unknown>;
}) {
  const [forma, setForma] = useState<FormaPagamento>('pix');
  const [qtd, setQtd] = useState('1');
  const [primeiro, setPrimeiro] = useState(today());
  const [parcelas, setParcelas] = useState<ParcelaOrcamento[]>([]);

  const gerar = (f = forma, n = qtd, p = primeiro) => setParcelas(gerarParcelas(total, Number(n) || 1, p, f));

  useEffect(() => {
    if (!open) return;
    setForma('pix');
    setQtd('1');
    setPrimeiro(today());
    setParcelas(gerarParcelas(total, 1, today(), 'pix'));
  }, [open, total]);

  const trocarForma = (f: FormaPagamento) => {
    const aVista = FORMAS_A_VISTA.includes(f);
    const n = aVista ? '1' : qtd;
    const p = aVista ? today() : primeiro === today() ? addDays(today(), 30) : primeiro;
    setForma(f);
    setQtd(n);
    setPrimeiro(p);
    gerar(f, n, p);
  };

  const editar = (i: number, patch: Partial<ParcelaOrcamento>) => setParcelas((ps) => ps.map((p, j) => (j === i ? { ...p, ...patch } : p)));
  const soma = somaParcelas(parcelas);
  const confere = parcelas.length > 0 && parcelasConferem(parcelas, total);

  const confirmar = () =>
    onConfirmar({
      forma_pagamento: forma,
      parcelas: parcelas.map((p) => ({ vencimento: p.vencimento, valor: Number(p.valor), forma_pagamento: p.forma_pagamento })),
    });

  return (
    <Modal
      title="Fechar orçamento"
      open={open}
      onClose={onFechar}
      wide
      footer={
        <>
          <button className="btn" onClick={onFechar}>Cancelar</button>
          <button className="btn primary" onClick={confirmar} disabled={busy || !confere}>Confirmar fechamento</button>
        </>
      }
    >
      <Alert>{error}</Alert>
      <Alert kind="info">
        O fechamento gera as contas a receber (formas à vista já baixadas no caixa), a saída de estoque e, se o destino for produção, a ordem de produção.
      </Alert>
      <div className="grid">
        <Select className="col-4" label="Forma de pagamento" value={forma} onChange={(e) => trocarForma(e.target.value as FormaPagamento)}>
          {Object.entries(FORMAS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
        </Select>
        <Input className="col-2" label="Parcelas" type="number" min={1} max={60} value={qtd} onChange={(e) => setQtd(e.target.value)} />
        <Input className="col-3" label="1º vencimento" type="date" value={primeiro} onChange={(e) => setPrimeiro(e.target.value)} />
        <div className="col-3" style={{ display: 'flex', alignItems: 'flex-end' }}>
          <button className="btn block" onClick={() => gerar()}>Gerar parcelas</button>
        </div>
      </div>
      <div className="table-wrap" style={{ marginTop: 14 }}>
        <table className="table">
          <thead>
            <tr>
              <th style={{ width: 50 }}>Nº</th>
              <th>Vencimento</th>
              <th>Forma</th>
              <th style={{ textAlign: 'right' }}>Valor</th>
            </tr>
          </thead>
          <tbody>
            {parcelas.map((p, i) => (
              <tr key={i}>
                <td>{i + 1}</td>
                <td><input type="date" value={p.vencimento} onChange={(e) => editar(i, { vencimento: e.target.value })} /></td>
                <td>
                  <select value={p.forma_pagamento} onChange={(e) => editar(i, { forma_pagamento: e.target.value as FormaPagamento })}>
                    {Object.entries(FORMAS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
                  </select>
                </td>
                <td><input type="number" min={0} step="0.01" style={{ textAlign: 'right' }} value={p.valor} onChange={(e) => editar(i, { valor: Number(e.target.value) })} /></td>
              </tr>
            ))}
          </tbody>
          <tfoot>
            <tr>
              <td colSpan={3} className="right">Soma das parcelas / total do orçamento</td>
              <td className="right" style={{ color: confere ? 'var(--success)' : 'var(--danger)' }}>{money(soma)} / {money(total)}</td>
            </tr>
          </tfoot>
        </table>
      </div>
      {!confere && parcelas.length > 0 && <div className="field-error" style={{ marginTop: 8 }}>As parcelas precisam somar o total do orçamento (diferença: {money(total - soma)}).</div>}
    </Modal>
  );
}
