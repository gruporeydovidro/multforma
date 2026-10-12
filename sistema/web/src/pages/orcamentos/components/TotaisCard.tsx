import { useEffect, useState } from 'react';
import { Input, Select } from '../../../components/ui';
import { money } from '../../../lib/format';
import type { Cabecalho, Orcamento } from '../api';

type Ajustes = Pick<Cabecalho, 'desconto_pct' | 'desconto_valor' | 'acrescimo_valor' | 'frete_valor'>;

/** Totais com desconto (% ou R$), acréscimo e frete. Os valores exibidos são os gravados pelo servidor. */
export function TotaisCard({ orcamento, busy, onSalvar }: { orcamento: Orcamento; busy: boolean; onSalvar: (a: Ajustes) => Promise<unknown> }) {
  const editavel = orcamento.status === 'aberto';
  const [modo, setModo] = useState<'pct' | 'valor'>(orcamento.desconto_pct > 0 ? 'pct' : 'valor');
  const [v, setV] = useState({ desconto: '', acrescimo: '', frete: '' });
  useEffect(() => {
    const pct = orcamento.desconto_pct > 0;
    setModo(pct ? 'pct' : 'valor');
    setV({
      desconto: String(pct ? orcamento.desconto_pct : orcamento.desconto_valor),
      acrescimo: String(orcamento.acrescimo_valor),
      frete: String(orcamento.frete_valor),
    });
  }, [orcamento.desconto_pct, orcamento.desconto_valor, orcamento.acrescimo_valor, orcamento.frete_valor]);

  const n = (s: string) => Number(s.replace(',', '.')) || 0;
  const aplicar = () =>
    onSalvar({
      desconto_pct: modo === 'pct' ? n(v.desconto) : 0,
      desconto_valor: modo === 'valor' ? n(v.desconto) : 0,
      acrescimo_valor: n(v.acrescimo),
      frete_valor: n(v.frete),
    });

  const t = orcamento.totais;
  const linha = (rotulo: string, valor: string, forte = false) => (
    <div style={{ display: 'flex', justifyContent: 'space-between', padding: '4px 0', fontSize: forte ? 18 : undefined, fontWeight: forte ? 700 : undefined }}>
      <span className={forte ? '' : 'muted'}>{rotulo}</span>
      <span>{valor}</span>
    </div>
  );

  return (
    <div className="grid">
      <div className="col-6">
        <div className="grid">
          <Select className="col-4" label="Desconto em" value={modo} onChange={(e) => setModo(e.target.value as 'pct' | 'valor')} disabled={!editavel}>
            <option value="valor">R$</option>
            <option value="pct">%</option>
          </Select>
          <Input className="col-8" label={modo === 'pct' ? 'Desconto (%)' : 'Desconto (R$)'} type="number" min={0} step="0.01" value={v.desconto} onChange={(e) => setV({ ...v, desconto: e.target.value })} disabled={!editavel} />
          <Input className="col-6" label="Acréscimo (R$)" type="number" min={0} step="0.01" value={v.acrescimo} onChange={(e) => setV({ ...v, acrescimo: e.target.value })} disabled={!editavel} />
          <Input className="col-6" label="Frete (R$)" type="number" min={0} step="0.01" value={v.frete} onChange={(e) => setV({ ...v, frete: e.target.value })} disabled={!editavel} />
          {editavel && (
            <div className="col-12">
              <button className="btn" onClick={aplicar} disabled={busy}>Aplicar</button>
            </div>
          )}
        </div>
      </div>
      <div className="col-6" style={{ alignSelf: 'end' }}>
        {linha('Subtotal', money(t.subtotal))}
        {linha(`Desconto${orcamento.desconto_pct > 0 ? ` (${orcamento.desconto_pct}%)` : ''}`, `− ${money(t.desconto)}`)}
        {linha('Acréscimo', money(t.acrescimo))}
        {linha('Frete', money(t.frete))}
        <hr style={{ border: 0, borderTop: '1px solid var(--border)' }} />
        {linha('Total', money(t.total), true)}
      </div>
    </div>
  );
}
