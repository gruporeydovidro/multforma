import { useEffect, useRef, useState, type InputHTMLAttributes, type ReactNode, type SelectHTMLAttributes, type TextareaHTMLAttributes } from 'react';

export function PageHeader({ title, actions, subtitle }: { title: string; subtitle?: ReactNode; actions?: ReactNode }) {
  return (
    <div className="page-header">
      <div>
        <h1>{title}</h1>
        {subtitle && <div className="muted">{subtitle}</div>}
      </div>
      {actions && <div className="actions">{actions}</div>}
    </div>
  );
}

export function Card({ title, children, actions }: { title?: string; children: ReactNode; actions?: ReactNode }) {
  return (
    <section className="card">
      {(title || actions) && (
        <div className="card-header">
          {title && <h2>{title}</h2>}
          {actions && <div className="actions">{actions}</div>}
        </div>
      )}
      {children}
    </section>
  );
}

type FieldProps = { label: string; error?: string; hint?: string; className?: string };

export function Field({ label, error, hint, className, children }: FieldProps & { children: ReactNode }) {
  return (
    <label className={`field ${className ?? ''}`}>
      <span className="field-label">{label}</span>
      {children}
      {hint && !error && <span className="hint">{hint}</span>}
      {error && <span className="field-error">{error}</span>}
    </label>
  );
}

export function Input({ label, error, hint, className, ...rest }: FieldProps & InputHTMLAttributes<HTMLInputElement>) {
  return (
    <Field label={label} error={error} hint={hint} className={className}>
      <input {...rest} />
    </Field>
  );
}

export function Select({ label, error, hint, className, children, ...rest }: FieldProps & SelectHTMLAttributes<HTMLSelectElement>) {
  return (
    <Field label={label} error={error} hint={hint} className={className}>
      <select {...rest}>{children}</select>
    </Field>
  );
}

export function TextArea({ label, error, hint, className, ...rest }: FieldProps & TextareaHTMLAttributes<HTMLTextAreaElement>) {
  return (
    <Field label={label} error={error} hint={hint} className={className}>
      <textarea rows={3} {...rest} />
    </Field>
  );
}

export interface Column<T> {
  header: string;
  render: (row: T) => ReactNode;
  align?: 'left' | 'right' | 'center';
  width?: string;
}

export function DataTable<T>({ columns, rows, rowKey, onRowClick, empty = 'Nenhum registro encontrado.', footer }: {
  columns: Column<T>[];
  rows: T[] | undefined;
  rowKey: (row: T) => string | number;
  onRowClick?: (row: T) => void;
  empty?: string;
  footer?: ReactNode;
}) {
  return (
    <div className="table-wrap">
      <table className="table">
        <thead>
          <tr>
            {columns.map((c, i) => (
              <th key={i} style={{ textAlign: c.align ?? 'left', width: c.width }}>{c.header}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {rows === undefined && (
            <tr><td colSpan={columns.length} className="muted center">Carregando…</td></tr>
          )}
          {rows?.length === 0 && (
            <tr><td colSpan={columns.length} className="muted center">{empty}</td></tr>
          )}
          {rows?.map((r) => (
            <tr key={rowKey(r)} onClick={onRowClick ? () => onRowClick(r) : undefined} className={onRowClick ? 'clickable' : undefined}>
              {columns.map((c, i) => (
                <td key={i} style={{ textAlign: c.align ?? 'left' }}>{c.render(r)}</td>
              ))}
            </tr>
          ))}
        </tbody>
        {footer && <tfoot>{footer}</tfoot>}
      </table>
    </div>
  );
}

export function Pager({ page, pageSize, total, onPage }: { page: number; pageSize: number; total: number; onPage: (p: number) => void }) {
  const pages = Math.max(1, Math.ceil(total / pageSize));
  return (
    <div className="pager">
      <span className="muted">{total} registro(s)</span>
      <button className="btn ghost" disabled={page <= 1} onClick={() => onPage(page - 1)}>‹ Anterior</button>
      <span>{page} / {pages}</span>
      <button className="btn ghost" disabled={page >= pages} onClick={() => onPage(page + 1)}>Próxima ›</button>
    </div>
  );
}

export function Modal({ title, open, onClose, children, footer, wide }: {
  title: string; open: boolean; onClose: () => void; children: ReactNode; footer?: ReactNode; wide?: boolean;
}) {
  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => e.key === 'Escape' && onClose();
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [open, onClose]);
  if (!open) return null;
  return (
    <div className="modal-backdrop" onMouseDown={onClose}>
      <div className={`modal ${wide ? 'wide' : ''}`} role="dialog" aria-label={title} onMouseDown={(e) => e.stopPropagation()}>
        <div className="modal-header">
          <h2>{title}</h2>
          <button className="btn ghost" onClick={onClose} aria-label="Fechar">✕</button>
        </div>
        <div className="modal-body">{children}</div>
        {footer && <div className="modal-footer">{footer}</div>}
      </div>
    </div>
  );
}

export function Alert({ kind = 'error', children }: { kind?: 'error' | 'success' | 'info'; children: ReactNode }) {
  if (!children) return null;
  return <div className={`alert ${kind}`}>{children}</div>;
}

export function Badge({ children, tone = 'neutral' }: { children: ReactNode; tone?: 'neutral' | 'green' | 'blue' | 'orange' | 'red' }) {
  return <span className={`badge ${tone}`}>{children}</span>;
}

export function SearchBox({ value, onChange, placeholder = 'Pesquisar…' }: { value: string; onChange: (v: string) => void; placeholder?: string }) {
  const [v, setV] = useState(value);
  const t = useRef<number>();
  useEffect(() => setV(value), [value]);
  // Sem isso, o timer pendente dispara depois que o usuário já saiu da lista e o leva de volta a ela.
  useEffect(() => () => window.clearTimeout(t.current), []);
  return (
    <input
      className="search"
      value={v}
      placeholder={placeholder}
      onChange={(e) => {
        setV(e.target.value);
        window.clearTimeout(t.current);
        t.current = window.setTimeout(() => onChange(e.target.value), 300);
      }}
    />
  );
}

export interface Option { value: number; label: string }

/**
 * Seleção com busca no servidor. fetchOptions recebe o texto digitado.
 * value/onChange trabalham com o id; initialLabel mostra o rótulo do valor atual.
 * Texto digitado sem escolher uma opção não conta como seleção: o valor vira null e,
 * ao sair do campo, o rótulo volta ao da seleção atual.
 */
export function AsyncSelect({ label, value, onChange, fetchOptions, initialLabel, placeholder = 'Digite para buscar…', error, className, disabled }: {
  label: string;
  value: number | null;
  onChange: (value: number | null, option?: Option) => void;
  fetchOptions: (q: string) => Promise<Option[]>;
  initialLabel?: string;
  placeholder?: string;
  error?: string;
  className?: string;
  disabled?: boolean;
}) {
  const [text, setText] = useState(initialLabel ?? '');
  const [selecionado, setSelecionado] = useState(initialLabel ?? '');
  const [opts, setOpts] = useState<Option[]>([]);
  const [open, setOpen] = useState(false);
  const t = useRef<number>();
  const seq = useRef(0);
  useEffect(() => {
    setText(initialLabel ?? '');
    setSelecionado(initialLabel ?? '');
  }, [initialLabel]);
  useEffect(() => () => window.clearTimeout(t.current), []);
  const search = (q: string) => {
    window.clearTimeout(t.current);
    const minha = ++seq.current;
    t.current = window.setTimeout(() => {
      // Descarta respostas fora de ordem: só a última busca atualiza a lista.
      fetchOptions(q)
        .then((o) => minha === seq.current && setOpts(o))
        .catch(() => minha === seq.current && setOpts([]));
    }, 250);
  };
  const escolher = (o: Option) => {
    onChange(o.value, o);
    setText(o.label);
    setSelecionado(o.label);
    setOpen(false);
  };
  return (
    <Field label={label} error={error} className={`async-select ${className ?? ''}`}>
      <input
        value={text}
        placeholder={placeholder}
        disabled={disabled}
        onFocus={() => { setOpen(true); search(text === selecionado ? '' : text); }}
        onBlur={() => window.setTimeout(() => {
          setOpen(false);
          if (value !== null) setText(selecionado);
        }, 150)}
        onChange={(e) => {
          setText(e.target.value);
          setOpen(true);
          search(e.target.value);
          if (value !== null && e.target.value !== selecionado) {
            onChange(null);
            setSelecionado('');
          }
        }}
      />
      {open && opts.length > 0 && (
        <ul className="dropdown">
          {opts.map((o) => (
            <li key={o.value} onMouseDown={() => escolher(o)} className={o.value === value ? 'active' : ''}>
              {o.label}
            </li>
          ))}
        </ul>
      )}
    </Field>
  );
}
