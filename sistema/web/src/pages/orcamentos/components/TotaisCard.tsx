import { useEffect, useState, type FormEvent } from 'react';
import { Input, Select } from '../../../components/ui';
import { money } from '../../../lib/format';
import { lerNumero } from '../../../lib/numero';
import type { Cabecalho, Orcamento } from '../api';
import { textoNumero } from '../regras';

type Ajustes = Pick<Cabecalho, 'desconto_pct' | 'desconto_valor' | 'acrescimo_valor' | 'frete_valor'>;
type Campos = { desconto: string; acrescimo: string; frete: string };

const gravados = (o: Orcamento): { modo: 'pct' | 'valor'; v: Campos } => {
  const pct = o.desconto_pct > 0;
  return {
    modo: pct ? 'pct' : 'valor',
    v: { desconto: textoNumero(pct ? o.desconto_pct : o.desconto_valor), acrescimo: textoNumero(o.acrescimo_valor), frete: textoNumero(o.frete_valor) },
  };
};

/**
 * Totais com desconto (% ou R$), acréscimo e frete. Os valores exibidos são os gravados pelo servidor.
 * Enquanto o usuário edita os ajustes, recálculos dos totais (ex.: incluir item) não descartam o que foi digitado;
 * os campos voltam a refletir o gravado depois de aplicar ou descartar.
 */
export function TotaisCard({ orcamento, editavel, busy, onSalvar }: {
  orcamento: Orcamento;
  /** Vendedor com o orçamento aberto (calculado em regras.permissoesOrcamento). */
  editavel: boolean;
  busy: boolean;
  onSalvar: (a: Ajustes) => Promise<unknown>;
}) {
  const [modo, setModo] = useState<'pct' | 'valor'>(() => gravados(orcamento).modo);
  const [v, setV] = useState<Campos>(() => gravados(orcamento).v);
  const [editando, setEditando] = useState(false);
  const [erro, setErro] = useState('');

  const chaveGravada = JSON.stringify(gravados(orcamento));
  useEffect(() => {
    if (editando) return;
    const g = JSON.parse(chaveGravada) as ReturnType<typeof gravados>;
    setModo(g.modo);
    setV(g.v);
  }, [chaveGravada, editando]);

  const mudar = (patch: Partial<Campos>) => {
    setEditando(true);
    setV((a) => ({ ...a, ...patch }));
  };
  const descartar = () => {
    setErro('');
    setEditando(false);
  };

  const aplicar = async (e?: FormEvent) => {
    e?.preventDefault();
    const desconto = lerNumero(v.desconto) ?? (v.desconto.trim() ? null : 0);
    const acrescimo = lerNumero(v.acrescimo) ?? (v.acrescimo.trim() ? null : 0);
    const frete = lerNumero(v.frete) ?? (v.frete.trim() ? null : 0);
    if (desconto === null || acrescimo === null || frete === null) return setErro('Valor inválido: use números, ex.: 1.234,56');
    if (desconto < 0 || acrescimo < 0 || frete < 0) return setErro('Os valores não podem ser negativos');
    if (modo === 'pct' && desconto > 100) return setErro('O desconto não pode passar de 100%');
    setErro('');
    const r = await onSalvar({
      desconto_pct: modo === 'pct' ? desconto : 0,
      desconto_valor: modo === 'valor' ? desconto : 0,
      acrescimo_valor: acrescimo,
      frete_valor: frete,
    });
    if (r) setEditando(false);
  };

  const t = orcamento.totais;
  const linha = (rotulo: string, valor: string, forte = false) => (
    <div style={{ display: 'flex', justifyContent: 'space-between', padding: '4px 0', fontSize: forte ? 18 : undefined, fontWeight: forte ? 700 : undefined }}>
      <span className={forte ? '' : 'muted'}>{rotulo}</span>
      <span>{valor}</span>
    </div>
  );

  return (
    <div className="grid">
      <form className="col-6" onSubmit={aplicar}>
        <div className="grid">
          <Select className="col-4" label="Desconto em" value={modo} onChange={(e) => { setEditando(true); setModo(e.target.value as 'pct' | 'valor'); }} disabled={!editavel}>
            <option value="valor">R$</option>
            <option value="pct">%</option>
          </Select>
          <Input className="col-8" label={modo === 'pct' ? 'Desconto (%)' : 'Desconto (R$)'} inputMode="decimal" value={v.desconto} onChange={(e) => mudar({ desconto: e.target.value })} disabled={!editavel} error={erro} />
          <Input className="col-6" label="Acréscimo (R$)" inputMode="decimal" value={v.acrescimo} onChange={(e) => mudar({ acrescimo: e.target.value })} disabled={!editavel} />
          <Input className="col-6" label="Frete (R$)" inputMode="decimal" value={v.frete} onChange={(e) => mudar({ frete: e.target.value })} disabled={!editavel} />
          {editavel && (
            <div className="col-12 actions">
              <button type="submit" className="btn" disabled={busy}>Aplicar</button>
              {editando && <button type="button" className="btn ghost" onClick={descartar} disabled={busy}>Descartar alterações</button>}
            </div>
          )}
        </div>
      </form>
      <div className="col-6" style={{ alignSelf: 'end' }}>
        {linha('Subtotal', money(t.subtotal))}
        {linha(`Desconto${orcamento.desconto_pct > 0 ? ` (${textoNumero(orcamento.desconto_pct)}%)` : ''}`, `− ${money(t.desconto)}`)}
        {linha('Acréscimo', money(t.acrescimo))}
        {linha('Frete', money(t.frete))}
        <hr style={{ border: 0, borderTop: '1px solid var(--border)' }} />
        {linha('Total', money(t.total), true)}
      </div>
    </div>
  );
}
