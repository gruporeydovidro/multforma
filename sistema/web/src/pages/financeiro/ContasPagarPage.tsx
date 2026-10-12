import { useState } from 'react';
import { Alert, AsyncSelect, Card, DataTable, Input, PageHeader, Pager, SearchBox, Select, type Column } from '../../components/ui';
import { date, money } from '../../lib/format';
import { buscarPessoas, financeiroApi, type ContaPagar, type StatusTitulo } from './api';
import { AlertaVencimentos } from './components/AlertaVencimentos';
import { BaixaModal } from './components/BaixaModal';
import { ConfirmacaoModal } from './components/ConfirmacaoModal';
import { ContaPagarModal } from './components/ContaPagarModal';
import { SituacaoBadge } from './components/SituacaoBadge';
import { TotaisTitulos } from './components/TotaisTitulos';
import { useListaTitulos } from './hooks';

const buscarFornecedores = buscarPessoas('fornecedor');
type Acao = { tipo: 'baixar' | 'cancelar' | 'estornar' | 'excluir' | 'copiar'; titulo: ContaPagar } | null;

export function ContasPagarPage() {
  const lista = useListaTitulos(financeiroApi.pagar.listar, { status: 'aberto' });
  const { filtros, filtrar } = lista;
  const [acao, setAcao] = useState<Acao>(null);
  const [form, setForm] = useState<{ titulo: ContaPagar | null } | null>(null);
  const [aviso, setAviso] = useState<string>();
  const [versao, setVersao] = useState(0);
  const fechar = () => setAcao(null);
  const concluir = (msg: string) => { setAviso(msg); lista.reload(); setVersao((v) => v + 1); };

  const colunas: Column<ContaPagar>[] = [
    { header: 'Vencimento', render: (t) => <>{date(t.vencimento)}{t.dias_atraso > 0 && <div className="muted" style={{ fontSize: 12 }}>{t.dias_atraso} dia(s) de atraso</div>}</> },
    { header: 'Descrição', render: (t) => <>{t.descricao}{t.categoria && <div className="muted" style={{ fontSize: 12 }}>{t.categoria}</div>}</> },
    { header: 'Fornecedor', render: (t) => t.fornecedor_nome ?? '—' },
    { header: 'Doc.', render: (t) => <>{t.documento ?? '—'} <span className="muted">/{t.parcela}</span></> },
    { header: 'Valor', align: 'right', render: (t) => money(t.valor) },
    { header: 'Pago', align: 'right', render: (t) => (t.valor_pago ? money(t.valor_pago) : '—') },
    { header: 'Saldo', align: 'right', render: (t) => <strong>{money(t.saldo)}</strong> },
    { header: 'Situação', render: (t) => <SituacaoBadge titulo={t} /> },
    {
      header: '', align: 'right', render: (t) => (
        <div className="actions" style={{ justifyContent: 'flex-end' }}>
          {t.status === 'aberto' && <button className="btn small primary" onClick={() => setAcao({ tipo: 'baixar', titulo: t })}>Pagar</button>}
          {t.status === 'aberto' && <button className="btn small" onClick={() => setForm({ titulo: t })}>Editar</button>}
          <button className="btn small" onClick={() => setAcao({ tipo: 'copiar', titulo: t })}>Copiar</button>
          {t.valor_pago > 0 && t.status !== 'cancelado' && <button className="btn small" onClick={() => setAcao({ tipo: 'estornar', titulo: t })}>Estornar</button>}
          {t.status === 'aberto' && t.valor_pago === 0 && <button className="btn small danger" onClick={() => setAcao({ tipo: 'cancelar', titulo: t })}>Cancelar</button>}
          {t.valor_pago === 0 && <button className="btn small danger" onClick={() => setAcao({ tipo: 'excluir', titulo: t })}>Excluir</button>}
        </div>
      ),
    },
  ];

  const ref = acao ? `${acao.titulo.descricao}${acao.titulo.documento ? ` (${acao.titulo.documento})` : ''} — venc. ${date(acao.titulo.vencimento)}` : '';

  return (
    <>
      <PageHeader title="Contas a pagar" actions={<button className="btn primary" onClick={() => setForm({ titulo: null })}>Nova conta</button>} />
      <Alert kind="success">{aviso}</Alert>
      <AlertaVencimentos versao={versao} />
      <TotaisTitulos totais={lista.data?.totais} rotuloPago={filtros.de || filtros.ate ? 'Pago no período' : 'Pago (total)'} />
      <Card>
        <div className="grid" style={{ marginBottom: 12, alignItems: 'end' }}>
          <div className="col-3"><SearchBox value={filtros.q ?? ''} onChange={(q) => filtrar({ q })} placeholder="Descrição, documento…" /></div>
          <Select className="col-2" label="Situação" value={filtros.status ?? ''} onChange={(e) => filtrar({ status: e.target.value as StatusTitulo | '' })}>
            <option value="">Todas</option>
            <option value="aberto">Em aberto</option>
            <option value="pago">Pagas</option>
            <option value="cancelado">Canceladas</option>
          </Select>
          <Input className="col-2" label="Vencimento de" type="date" value={filtros.de ?? ''} onChange={(e) => filtrar({ de: e.target.value })} />
          <Input className="col-2" label="até" type="date" value={filtros.ate ?? ''} onChange={(e) => filtrar({ ate: e.target.value })} />
          <AsyncSelect className="col-3" label="Fornecedor" value={filtros.fornecedor_id ?? null} onChange={(v) => filtrar({ fornecedor_id: v })} fetchOptions={buscarFornecedores} placeholder="Todos" />
          <Input className="col-3" label="Categoria" value={filtros.categoria ?? ''} onChange={(e) => filtrar({ categoria: e.target.value })} />
          <label className="col-3" style={{ display: 'flex', gap: 6, alignItems: 'center' }}>
            <input type="checkbox" checked={!!filtros.vencidas} onChange={(e) => filtrar({ vencidas: e.target.checked })} /> Somente vencidas
          </label>
        </div>
        <Alert>{lista.error}</Alert>
        <DataTable columns={colunas} rows={lista.data?.items} rowKey={(t) => t.id} />
        {lista.data && <Pager page={lista.data.page} pageSize={lista.data.pageSize} total={lista.data.total} onPage={lista.irPara} />}
      </Card>

      <ContaPagarModal aberto={!!form} titulo={form?.titulo} onFechar={() => setForm(null)} onSalvo={() => concluir(form?.titulo ? 'Conta atualizada.' : 'Conta lançada.')} />
      <BaixaModal aberto={acao?.tipo === 'baixar'} titulo={acao?.titulo} descricao={ref} onFechar={fechar}
        onConfirmar={async (b) => { const r = await financeiroApi.pagar.baixar(acao!.titulo.id, b); concluir(r.status === 'pago' ? 'Conta quitada.' : 'Pagamento parcial registrado.'); return r; }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'estornar'} titulo="Estornar pagamento" rotulo="Estornar" perigo onFechar={fechar}
        mensagem={<>Estornar {money(acao?.titulo.valor_pago)} pagos em <strong>{ref}</strong>? O título volta a ficar em aberto e será lançada uma entrada no caixa.</>}
        onConfirmar={async () => { await financeiroApi.pagar.estornar(acao!.titulo.id); concluir('Pagamento estornado.'); }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'cancelar'} titulo="Cancelar conta" rotulo="Cancelar conta" perigo comMotivo onFechar={fechar}
        mensagem={<>Cancelar <strong>{ref}</strong> de {money(acao?.titulo.valor)}?</>}
        onConfirmar={async (motivo) => { await financeiroApi.pagar.cancelar(acao!.titulo.id, motivo); concluir('Conta cancelada.'); }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'excluir'} titulo="Excluir conta" rotulo="Excluir" perigo onFechar={fechar}
        mensagem={<>Excluir definitivamente <strong>{ref}</strong>?</>}
        onConfirmar={async () => { await financeiroApi.pagar.excluir(acao!.titulo.id); concluir('Conta excluída.'); }} />
      <ConfirmacaoModal aberto={acao?.tipo === 'copiar'} titulo="Copiar conta" rotulo="Copiar" onFechar={fechar}
        mensagem={<>Criar uma cópia de <strong>{ref}</strong> com vencimento no mês seguinte?</>}
        onConfirmar={async () => { const c = await financeiroApi.pagar.copiar(acao!.titulo.id); concluir(`Cópia criada com vencimento em ${date(c.vencimento)}.`); }} />
    </>
  );
}
