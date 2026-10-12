import { useEffect, useState, type ReactNode } from 'react';
import { atalhosPeriodo, periodoValido, type Periodo } from '../lib/periodo';

/**
 * Filtro de período reutilizável: datas de/até, atalhos e botão Aplicar.
 * `children` permite acrescentar campos (ex.: agrupamento) na mesma linha.
 */
export function PeriodoFiltro({ valor, onChange, children, rotuloAplicar = 'Aplicar' }: {
  valor: Periodo;
  onChange: (p: Periodo) => void;
  children?: ReactNode;
  rotuloAplicar?: string;
}) {
  const [rascunho, setRascunho] = useState(valor);
  useEffect(() => setRascunho(valor), [valor.de, valor.ate]);
  const valido = periodoValido(rascunho);
  return (
    <form
      className="periodo-filtro no-print"
      style={{ display: 'flex', gap: 12, alignItems: 'flex-end', flexWrap: 'wrap', marginBottom: 16 }}
      onSubmit={(e) => {
        e.preventDefault();
        if (valido) onChange(rascunho);
      }}
    >
      <label className="field">
        <span className="field-label">De</span>
        <input type="date" value={rascunho.de} onChange={(e) => setRascunho({ ...rascunho, de: e.target.value })} required />
      </label>
      <label className="field">
        <span className="field-label">Até</span>
        <input type="date" value={rascunho.ate} onChange={(e) => setRascunho({ ...rascunho, ate: e.target.value })} required />
      </label>
      {children}
      <button type="submit" className="btn primary" disabled={!valido}>{rotuloAplicar}</button>
      <div className="actions">
        {atalhosPeriodo().map((a) => (
          <button key={a.rotulo} type="button" className="btn small ghost" onClick={() => { setRascunho(a.periodo); onChange(a.periodo); }}>
            {a.rotulo}
          </button>
        ))}
      </div>
      {!valido && rascunho.de && rascunho.ate && <span className="field-error">A data inicial deve ser anterior à final.</span>}
    </form>
  );
}
