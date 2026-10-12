import { Badge } from '../../../components/ui';
import type { StatusTitulo } from '../api';
import { situacaoTitulo } from '../format';

export function SituacaoBadge({ titulo }: { titulo: { status: StatusTitulo; vencida: boolean; valor_pago: number } }) {
  const s = situacaoTitulo(titulo);
  return <Badge tone={s.tone}>{s.label}</Badge>;
}
