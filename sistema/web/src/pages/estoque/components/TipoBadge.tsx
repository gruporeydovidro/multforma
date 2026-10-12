import { Badge } from '../../../components/ui';
import type { TipoMovimento } from '../api';
import { TIPOS } from '../format';

export function TipoBadge({ tipo }: { tipo: TipoMovimento }) {
  return <Badge tone={TIPOS[tipo].tom}>{TIPOS[tipo].label}</Badge>;
}
