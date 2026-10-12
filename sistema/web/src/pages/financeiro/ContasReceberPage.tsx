import { useState } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Alert, AsyncSelect, Card, DataTable, Input, PageHeader, Pager, SearchBox, Select, type Column } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { date, money } from '../../lib/format';
import { buscarPessoas, financeiroApi, type ContaReceber } from './api';
import { BaixaModal } from './components/BaixaModal';
import { ConfirmacaoModal } from './components/ConfirmacaoModal';
import { NovaContaReceberModal } from './components/NovaContaReceberModal';
import { SituacaoBadge } from './components/SituacaoBadge';
import { TotaisTitulos } from './components/TotaisTitulos';
import { TODAS, useListaTitulos } from './hooks';

const buscarClientes = buscarPessoas('cliente');
type Acao = { tipo: 'baixar' | 'cancelar' | 'estornar'; titulo: ContaReceber } | null;

export function ContasReceberPage() {
  const { user } = useAuth();
  const podeOperar = can(user, 'financeiro');
  const location = useLocation();
  const lista = useListaTitulos(financeiroApi.receber.listar);
  const { filtros, filtrar, pessoa } = lista;
  const [acao, setAcao] = useState<Acao>(null);
  const [novo, setNovo] = useState(false);
  const [aviso, setAviso] = useState<string>();
  const fechar = () => setAcao(null);
  const concluir = (msg: string) => { setAviso(msg); lista.reload(); };

  const colunas: Column<ContaReceber>[] = [
    { header: 'Vencimento', render: (t) => <>{date(t.vencimento)}{t.dias_atraso > 0 && <div className="muted" style={{ fontSize: 12 }}>{t.dias_atraso} dia(s) de atraso</div>}</> },
    { header: 'Cliente', render: (t) => t.cliente_nome },
    { header: 'Documento', render: (t) => <>{t.documento ?? '—'}{t.orcamento_numero && <div className="muted" style={{ fontSize: 12 }}>Orçamento {t.orcamento_numero}</div>}</> },
    { header: 'Parc.', align: 'center', render: (t) => t.parcela },
    { header: 'Valor', align: 'right', render: (t) => money(t.valor) },
    { header: 'Pago', align: 'right', render: (t) => (t.valor_pago ? money(t.valor_pago) : '—') },
    { header: 'Saldo', align: 'right', render: (t) => <strong>{money(t.saldo)}</strong> },
    { header: 'Situação', render: (t) => <SituacaoBadge titulo={t} /> },
    {
      header: '', align: 'right', render: (t) => (
        <div className="actions" style={{ justifyContent: 'flex-end' }}>
          {podeOperar && t.status === 'aberto' && <button className="btn small primary" onClick={() => setAcao({ tipo: 'baixar', titulo: t })}>Baixar</button>}
          {t.valor_pago > 0 && <Link className="btn small" to={`/financeiro/receber/${t.id}/recibo`} state={{ voltar: location.search }}>Recibo</Link>}
          {podeOperar && t.valor_pago > 0 && t.status !== 'cancelado' && <button className="btn small" onClick={() => setAcao({ tipo: 'estornar', titulo: t })}>Estornar</button>}
          {podeOperar && t.status === 'aberto' && t.valor_pago === 0 && <button className="btn small danger" onClick={() => setAcao({ tipo: 'cancelar', titulo: t })}>Cancelar</button>}
        </div>
      ),
    },
  ];

  const ref = acao ? `${acao.titulo.cliente_nome} — ${acao.titulo.documento ?? ''} parc. ${acao.titulo.parcela} (venc. ${date(acao.titulo.vencimento)})` : '';

  return (
    <>
      <PageHeader title="Contas a receber" subtitle="Títulos gerados nas vendas e lançamentos avulsos"
        actions={podeOperar && <button className="btn primary" onClick={() => setNovo(true)}>Novo lançamento</button>} />
      <Alert kind="success">{aviso}</Alert>
      <TotaisTitulos totais={lista.data?.totais} rotuloPago={filtros.de || filtros.ate ? 'Recebido no período' : 'Recebido (total)'} />
      <Card>
        <div className="grid" style={{ marginBottom: 12, alignItems: 'end' }}>
          <div className="col-3"><SearchBox value={filtros.q} onChange={(q) => filtrar({ q })} placeholder="Cliente ou documento…" /></div>
          <Select className="col-2" label="Situação" value={filtros.status} onChange={(e) => filtrar({ status: e.target.value })}>
            <option value={TODAS}>Todas</option>
            <option value="aberto">Em aberto</option>
            <option value="pago">Pagas</option>
            <option value="cancelado">Canceladas</option>
          </Select>
          <Input className="col-2" label="Vencimento de" type="date" value={filtros.de} onChange={(e) => filtrar({ de: e.target.value })} />
          <Input className="col-2" label="até" type="date" value={filtros.ate} onChange={(e) => filtrar({ ate: e.target.value })} />
          <AsyncSelect className="col-3" label="Cliente" {...pessoa('cliente')} fetchOptions={buscarClientes} placeholder="Todos" />
          <label className="col-3" style={{ display: 'flex', gap: 6, alignItems: 'center' }}>
            <input type="checkbox" checked={filtros.vencidas === '1'} onChange={(e) => filtrar({ vencidas: e.target.checked ? '1' : '' })} /> Somente vencidas
          </label>
        </div>
        <Alert>{lista.error}</Alert>
        <DataTable columns={colunas} rows={lista.data?.items} rowKey={(t) => t.id} />
        {lista.data && <Pager page={lista.data.page} pageSize={lista.data.pageSize} total={lista.data.total} onPage={lista.irPara} />}
      </Card>

      <NovaContaReceberModal aberto={novo} onFechar={() => setNovo(false)} onSalvo={() => concluir('Conta a receber lançada.')} />
      <BaixaModal aberto={acao?.tipo === 'baixar'} titulo={acao?.titulo} descricao={ref} onFechar={fechar}
        onConfirmar={async (b) => { const r = await financeiroApi.receber.baixar(acao!.titulo.id, b); concluir(r.status === 'pago' ? 'Título quitado.' : 'Baixa parcial registrada.'); return r; }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'estornar'} titulo="Estornar recebimento" rotulo="Estornar" perigo onFechar={fechar}
        mensagem={<>Estornar {money(acao?.titulo.valor_pago)} recebidos de <strong>{ref}</strong>? O título volta a ficar em aberto e será lançada uma saída no caixa.</>}
        onConfirmar={async () => { await financeiroApi.receber.estornar(acao!.titulo.id); concluir('Recebimento estornado.'); }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'cancelar'} titulo="Cancelar título" rotulo="Cancelar título" perigo comMotivo onFechar={fechar}
        mensagem={<>Cancelar o título <strong>{ref}</strong> de {money(acao?.titulo.valor)}?</>}
        onConfirmar={async (motivo) => { await financeiroApi.receber.cancelar(acao!.titulo.id, motivo); concluir('Título cancelado.'); }} />
    </>
  );
}
