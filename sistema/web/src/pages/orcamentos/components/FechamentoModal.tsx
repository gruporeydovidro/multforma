import { useEffect, useState } from 'react';
import { Alert, Input, Modal, Select } from '../../../components/ui';
import { addDays, decimal, money, today } from '../../../lib/format';
import { lerNumero } from '../../../lib/numero';
import type { FechamentoInput, FormaPagamento, ParcelaOrcamento } from '../api';
import { FORMAS, FORMAS_A_VISTA, gerarParcelas, parcelasConferem, somaParcelas } from '../regras';

const MAX_PARCELAS = 60;

/** Parcela em edição: o valor fica como texto pt-BR ('1.234,56') até confirmar. */
type Linha = ParcelaOrcamento & { texto: string };

const linhas = (ps: ParcelaOrcamento[]): Linha[] => ps.map((p) => ({ ...p, texto: decimal(p.valor, 2) }));

/** Quantidade de parcelas digitada: inteiro de 1 a 60, ou null. */
function lerQuantidade(s: string): number | null {
  const n = lerNumero(s);
  return n !== null && Number.isInteger(n) && n >= 1 && n <= MAX_PARCELAS ? n : null;
}

/**
 * Fechamento: forma de pagamento e geração automática de N parcelas mensais, editáveis.
 * Mudar a forma, a quantidade ou o 1º vencimento recalcula a tabela na hora (não há mudança "pendente").
 * Só permite confirmar quando as parcelas são válidas e somam o total (tolerância de R$ 0,01).
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
  const [parcelas, setParcelas] = useState<Linha[]>([]);

  /** Regera a tabela com os parâmetros dados; parâmetros inválidos esvaziam a tabela (e bloqueiam a confirmação). */
  const gerar = (f: FormaPagamento, n: string, p: string) => {
    const quantidade = lerQuantidade(n);
    setParcelas(quantidade && p ? linhas(gerarParcelas(total, quantidade, p, f)) : []);
  };

  useEffect(() => {
    if (!open) return;
    setForma('pix');
    setQtd('1');
    setPrimeiro(today());
    setParcelas(linhas(gerarParcelas(total, 1, today(), 'pix')));
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
  const trocarQtd = (n: string) => {
    setQtd(n);
    gerar(forma, n, primeiro);
  };
  const trocarPrimeiro = (p: string) => {
    setPrimeiro(p);
    gerar(forma, qtd, p);
  };

  const editar = (i: number, patch: Partial<Linha>) => setParcelas((ps) => ps.map((p, j) => (j === i ? { ...p, ...patch } : p)));
  const valores = parcelas.map((p) => ({ ...p, valor: lerNumero(p.texto) }));
  const valoresValidos = valores.every((p) => p.valor !== null && p.valor > 0 && !!p.vencimento);
  const soma = somaParcelas(valores.map((p) => ({ valor: p.valor ?? 0 })));
  const quantidadeValida = lerQuantidade(qtd) !== null;
  const confere = quantidadeValida && parcelas.length > 0 && valoresValidos && parcelasConferem(valores.map((p) => ({ valor: p.valor ?? 0 })), total);

  const confirmar = () =>
    confere &&
    onConfirmar({
      forma_pagamento: forma,
      parcelas: valores.map((p) => ({ vencimento: p.vencimento, valor: p.valor!, forma_pagamento: p.forma_pagamento })),
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
        <Input
          className="col-2"
          label="Parcelas"
          inputMode="numeric"
          value={qtd}
          onChange={(e) => trocarQtd(e.target.value)}
          error={quantidadeValida ? undefined : `De 1 a ${MAX_PARCELAS}`}
        />
        <Input className="col-3" label="1º vencimento" type="date" value={primeiro} onChange={(e) => trocarPrimeiro(e.target.value)} error={primeiro ? undefined : 'Informe a data'} />
        <div className="col-3" style={{ display: 'flex', alignItems: 'flex-end' }}>
          <button className="btn block" onClick={() => gerar(forma, qtd, primeiro)} title="Desfaz as edições manuais das parcelas">Regerar parcelas</button>
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
                <td>
                  <input inputMode="decimal" style={{ textAlign: 'right' }} value={p.texto} onChange={(e) => editar(i, { texto: e.target.value })}
                    aria-invalid={valores[i].valor === null || valores[i].valor! <= 0} />
                </td>
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
      {!valoresValidos && <div className="field-error" style={{ marginTop: 8 }}>Cada parcela precisa de vencimento e de um valor maior que zero (ex.: 1.234,56).</div>}
      {valoresValidos && !confere && parcelas.length > 0 && (
        <div className="field-error" style={{ marginTop: 8 }}>As parcelas precisam somar o total do orçamento (diferença: {money(total - soma)}).</div>
      )}
    </Modal>
  );
}
