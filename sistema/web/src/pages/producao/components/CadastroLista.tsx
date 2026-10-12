import type { ReactNode } from 'react';
import { Alert, Card, DataTable, PageHeader, type Column } from '../../../components/ui';

/** Moldura comum das telas de cadastro simples do módulo (setores e motivos). */
export function CadastroLista<T>({ titulo, podeEditar, onNovo, error, rows, rowKey, columns, children }: {
  titulo: string;
  podeEditar: boolean;
  onNovo: () => void;
  error?: string;
  rows: T[] | undefined;
  rowKey: (r: T) => number;
  columns: Column<T>[];
  children?: ReactNode;
}) {
  return (
    <>
      <PageHeader title={titulo} actions={podeEditar && <button className="btn primary" onClick={onNovo}>Novo</button>} />
      <Alert>{error}</Alert>
      <Card>
        <DataTable rows={rows} rowKey={rowKey} columns={columns} />
        {!podeEditar && <p className="hint">Somente o administrador altera este cadastro.</p>}
      </Card>
      {children}
    </>
  );
}
