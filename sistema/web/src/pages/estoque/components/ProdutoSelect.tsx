import { AsyncSelect, type Option } from '../../../components/ui';
import { estoqueApi } from '../api';

const buscar = async (q: string): Promise<Option[]> =>
  (await estoqueApi.buscarProdutos(q)).filter((p) => p.tipo === 'produto').map((p) => ({ value: p.id, label: `${p.codigo} — ${p.nome}` }));

/** Seleção de produto (ativo) pelo código ou nome. */
export function ProdutoSelect({ value, onChange, initialLabel, className, label = 'Produto' }: {
  value: number | null;
  onChange: (id: number | null) => void;
  initialLabel?: string;
  className?: string;
  label?: string;
}) {
  return <AsyncSelect label={label} value={value} onChange={(v) => onChange(v)} fetchOptions={buscar} initialLabel={initialLabel} className={className} placeholder="Código ou nome do produto" />;
}
