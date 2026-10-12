/** Botões de imprimir e exportar CSV (o CSV é gerado pelo chamador, no navegador). */
export function AcoesRelatorio({ onCsv, desabilitado }: { onCsv?: () => void; desabilitado?: boolean }) {
  return (
    <div className="actions no-print">
      <button type="button" className="btn" onClick={() => window.print()} disabled={desabilitado}>Imprimir</button>
      {onCsv && <button type="button" className="btn" onClick={onCsv} disabled={desabilitado}>Exportar CSV</button>}
    </div>
  );
}
