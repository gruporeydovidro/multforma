import { Badge } from '../../../components/ui';
import type { StatusOrcamento } from '../api';
import { STATUS } from '../regras';

export function StatusBadge({ status }: { status: StatusOrcamento }) {
  const s = STATUS[status];
  return <Badge tone={s.tone}>{s.label}</Badge>;
}
