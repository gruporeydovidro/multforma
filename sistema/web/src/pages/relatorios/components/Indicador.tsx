import type { ReactNode } from 'react';

/** Cartão de indicador (classes `stats`/`stat` do CSS global). */
export function Indicador({ rotulo, valor, detalhe, tom }: { rotulo: string; valor: ReactNode; detalhe?: ReactNode; tom?: 'red' | 'green' | 'orange' }) {
  const cor = tom === 'red' ? 'var(--danger)' : tom === 'green' ? 'var(--success)' : tom === 'orange' ? 'var(--warning)' : undefined;
  return (
    <div className="stat">
      <div className="label">{rotulo}</div>
      <div className="value" style={cor ? { color: cor } : undefined}>{valor}</div>
      {detalhe && <div className="muted" style={{ fontSize: 12, marginTop: 2 }}>{detalhe}</div>}
    </div>
  );
}

export function Indicadores({ children }: { children: ReactNode }) {
  return <div className="stats">{children}</div>;
}
