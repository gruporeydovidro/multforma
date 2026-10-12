import { Badge } from '../../../components/ui';
import type { StatusItem, StatusOrdem } from '../api';
import { STATUS_ITEM, STATUS_ORDEM } from '../format';

export function StatusOrdemBadge({ status, atrasada }: { status: StatusOrdem; atrasada?: boolean }) {
  const s = STATUS_ORDEM[status];
  return (
    <>
      <Badge tone={s.tom}>{s.label}</Badge>
      {atrasada && <> <Badge tone="orange">Atrasada</Badge></>}
    </>
  );
}

export function StatusItemBadge({ status }: { status: StatusItem }) {
  const s = STATUS_ITEM[status];
  return <Badge tone={s.tom}>{s.label}</Badge>;
}
