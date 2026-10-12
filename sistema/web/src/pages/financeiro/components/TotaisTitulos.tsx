import { money } from '../../../lib/format';
import { Indicador, Indicadores } from '../../../components/Indicador';
import type { TotaisTitulos as Totais } from '../api';

/** Totalizadores de uma lista de títulos (aberto, vencido e pago no período). */
export function TotaisTitulos({ totais, rotuloPago }: { totais?: Totais; rotuloPago: string }) {
  return (
    <Indicadores>
      <Indicador rotulo="Em aberto" valor={money(totais?.aberto)} />
      <Indicador rotulo="Vencido" valor={money(totais?.vencido)} tom={totais?.vencido ? 'red' : undefined} detalhe={totais ? `${totais.qtd_vencido} título(s)` : undefined} />
      <Indicador rotulo={rotuloPago} valor={money(totais?.pago_periodo)} tom="green" />
    </Indicadores>
  );
}
