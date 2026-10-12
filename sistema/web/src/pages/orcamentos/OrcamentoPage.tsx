import { useState } from 'react';
import { useParams } from 'react-router-dom';
import { Alert, Card, DataTable, PageHeader } from '../../components/ui';
import { date, dateTime, money } from '../../lib/format';
import type { Orcamento } from './api';
import { CabecalhoForm, type DadosCabecalho } from './components/CabecalhoForm';
import { FechamentoModal } from './components/FechamentoModal';
import { ItensGrid } from './components/ItensGrid';
import { ProjetoModal } from './components/ProjetoModal';
import { ProjetosDoOrcamento } from './components/ProjetosDoOrcamento';
import { StatusBadge } from './components/StatusBadge';
import { TotaisCard } from './components/TotaisCard';
import { useApoio, useNavegacaoOrcamentos, useNovoOrcamento, useOrcamento, usePermissoesOrcamento } from './hooks';
import { FORMAS, type PermissoesOrcamento } from './regras';

/** Rota orcamentos/novo: só o cabeçalho; ao salvar, segue para a tela completa. */
function NovoOrcamento() {
  const ir = useNavegacaoOrcamentos();
  const pode = usePermissoesOrcamento(null);
  const apoio = useApoio();
  const envio = useNovoOrcamento();
  const criar = async (d: DadosCabecalho) => {
    const o = await envio.criar(d);
    if (o) ir.nav(`/orcamentos/${o.id}`, { replace: true, state: ir.estado });
  };
  return (
    <>
      <PageHeader title="Novo orçamento" actions={<button className="btn" onClick={ir.voltar}>Voltar</button>} />
      <Alert>{envio.error}</Alert>
      {!pode.financeiro && <Alert kind="info">Seu perfil só consulta orçamentos.</Alert>}
      <Card title="Cabeçalho">
        <CabecalhoForm {...apoio} editavel={pode.cabecalho} financeiroEditavel={pode.financeiro} busy={envio.busy} onSalvar={criar} rotuloSalvar="Criar orçamento" />
      </Card>
    </>
  );
}

function Acoes({ o, s, pode, onFechar, onProjeto }: {
  o: Orcamento;
  s: ReturnType<typeof useOrcamento>;
  pode: PermissoesOrcamento;
  onFechar: () => void;
  onProjeto: () => void;
}) {
  const ir = useNavegacaoOrcamentos();
  const confirmar = (msg: string, fn: () => unknown) => window.confirm(msg) && fn();
  const duplicar = async () => {
    const copia = await s.duplicar();
    if (copia) ir.abrir(copia.id);
  };
  return (
    <>
      <button className="btn" onClick={ir.voltar}>Voltar</button>
      <button className="btn" onClick={() => ir.imprimir(o.id)}>Imprimir</button>
      {pode.duplicar && <button className="btn" onClick={duplicar} disabled={s.busy}>Duplicar</button>}
      {pode.itens && <button className="btn" onClick={onProjeto} disabled={s.busy}>Incluir projeto</button>}
      {pode.cancelar && (
        <button className="btn danger" onClick={() => confirmar(`Cancelar o orçamento nº ${o.numero}?`, s.cancelar)} disabled={s.busy}>Cancelar</button>
      )}
      {pode.aprovar && (
        <button className="btn primary" onClick={() => confirmar('Aprovar o orçamento? Depois disso os itens e valores não podem mais ser alterados.', s.aprovar)} disabled={s.busy || o.itens.length === 0}>
          Aprovar
        </button>
      )}
      {pode.fechar && <button className="btn primary" onClick={onFechar} disabled={s.busy}>Fechar venda</button>}
    </>
  );
}

function OrcamentoExistente({ id }: { id: number }) {
  const s = useOrcamento(id);
  const apoio = useApoio();
  const [fechando, setFechando] = useState(false);
  const [incluindoProjeto, setIncluindoProjeto] = useState(false);
  const o = s.orcamento;
  const pode = usePermissoesOrcamento(o?.status ?? null);
  const podeItens = pode.itens && !!o?.itens_editaveis;

  if (s.carregando && !o) return <div className="muted">Carregando…</div>;
  if (!o) return <Alert>{s.error || 'Orçamento não encontrado'}</Alert>;

  const abrir = (fn: (v: boolean) => void) => () => {
    s.setError('');
    fn(true);
  };

  return (
    <>
      <PageHeader
        title={`Orçamento nº ${o.numero}`}
        subtitle={
          <>
            <StatusBadge status={o.status} /> {o.cliente?.nome} · emitido em {date(o.data_emissao)}
            {o.fechado_em && <> · fechado em {dateTime(o.fechado_em)}</>}
          </>
        }
        actions={<Acoes o={o} s={s} pode={pode} onFechar={abrir(setFechando)} onProjeto={abrir(setIncluindoProjeto)} />}
      />
      <Alert>{!fechando && !incluindoProjeto && s.error}</Alert>

      <Card title="Cabeçalho">
        <CabecalhoForm
          orcamento={o}
          {...apoio}
          editavel={pode.cabecalho}
          financeiroEditavel={pode.financeiro}
          busy={s.busy}
          onSalvar={(d) => s.salvarCabecalho(d)}
        />
      </Card>

      <Card title="Itens" actions={podeItens && <button className="btn small" onClick={abrir(setIncluindoProjeto)}>+ Projeto</button>}>
        <ItensGrid
          orcamento={o}
          editavel={podeItens}
          busy={s.busy}
          onAdicionar={(it) => s.adicionarItem(it)}
          onAtualizar={(itemId, patch) => s.atualizarItem(itemId, patch)}
          onRemover={(itemId) => s.removerItem(itemId)}
        />
      </Card>

      {o.projetos.length > 0 && (
        <Card title="Projetos">
          <ProjetosDoOrcamento orcamento={o} editavel={podeItens} busy={s.busy} onRemover={(pid) => s.removerProjeto(pid)} />
        </Card>
      )}

      <Card title="Totais">
        <TotaisCard orcamento={o} editavel={pode.financeiro} busy={s.busy} onSalvar={(a) => s.salvarCabecalho(a)} />
      </Card>

      {o.parcelas.length > 0 && (
        <Card title={`Pagamento${o.forma_pagamento ? ` · ${FORMAS[o.forma_pagamento]}` : ''}`}>
          <DataTable
            rows={o.parcelas}
            rowKey={(p) => p.numero}
            columns={[
              { header: 'Parcela', render: (p) => p.numero },
              { header: 'Vencimento', render: (p) => date(p.vencimento) },
              { header: 'Forma', render: (p) => FORMAS[p.forma_pagamento] },
              { header: 'Valor', align: 'right', render: (p) => money(p.valor) },
            ]}
          />
        </Card>
      )}

      <ProjetoModal
        orcamentoId={o.id}
        open={incluindoProjeto && podeItens}
        busy={s.busy}
        error={incluindoProjeto ? s.error : ''}
        onFechar={() => setIncluindoProjeto(false)}
        onIncluir={(p) => s.adicionarProjeto(p)}
      />
      <FechamentoModal
        total={o.total}
        open={fechando && pode.fechar}
        busy={s.busy}
        error={fechando ? s.error : ''}
        onFechar={() => setFechando(false)}
        onConfirmar={async (f) => {
          if (await s.fechar(f)) setFechando(false);
        }}
      />
    </>
  );
}

export function OrcamentoPage() {
  const { id } = useParams();
  if (!id || id === 'novo') return <NovoOrcamento />;
  return <OrcamentoExistente key={id} id={Number(id)} />;
}
