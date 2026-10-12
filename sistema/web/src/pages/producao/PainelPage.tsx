import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Alert, Badge, Card, PageHeader } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { date } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { producaoApi, type ItemPainel } from './api';
import { MarcarModal, type ItemParaMarcar } from './components/MarcarModal';
import { medidas, quantidade, saldoNoSetor } from './format';
import { useEnvio, useMotivos } from './hooks';

const CHAVE_SETOR = 'vg.producao.painel.setor';
const ATUALIZAR_MS = 30_000;

const lerSetor = () => {
  try {
    return Number(localStorage.getItem(CHAVE_SETOR)) || null;
  } catch {
    return null;
  }
};
const guardarSetor = (id: number) => {
  try {
    localStorage.setItem(CHAVE_SETOR, String(id));
  } catch {
    /* sem armazenamento local: só não lembra o setor */
  }
};

const paraMarcar = (i: ItemPainel): ItemParaMarcar & { ordem_id: number } => ({
  id: i.item_id,
  ordem_id: i.ordem_id,
  descricao: i.descricao,
  quantidade: i.quantidade,
  largura_mm: i.largura_mm,
  altura_mm: i.altura_mm,
  setor_atual_id: i.setor_atual_id,
  processado_setor: i.processado_setor,
});

const botaoGrande = { fontSize: 18, padding: '14px 22px', minWidth: 150 } as const;

/** Painel do chão de fábrica: escolhe o setor e marca as peças com botões grandes. */
export function PainelPage() {
  const { user } = useAuth();
  const podeMarcar = can(user, 'producao');
  const painel = useAsync(() => producaoApi.painel(), []);
  const { data: motivos } = useMotivos();
  const [setorId, setSetorId] = useState<number | null>(lerSetor);
  /** Item aberto no modal de marcação: com defeito ou marcação parcial. */
  const [marcando, setMarcando] = useState<{ item: ItemParaMarcar & { ordem_id: number }; defeito: boolean } | null>(null);
  const [aviso, setAviso] = useState('');
  const envio = useEnvio();

  useEffect(() => {
    const t = window.setInterval(() => painel.reload(), ATUALIZAR_MS);
    return () => window.clearInterval(t);
  }, [painel.reload]);

  const setores = painel.data?.setores ?? [];
  const atual = setores.find((s) => s.id === setorId) ?? setores[0];
  const escolher = (id: number) => {
    setSetorId(id);
    guardarSetor(id);
    setAviso('');
  };

  /** Marca as peças restantes no setor (o item avança para o próximo). */
  const concluir = async (i: ItemPainel) => {
    const { restante } = saldoNoSetor(i);
    const ok = await envio.run(() => producaoApi.marcar(i.ordem_id, i.item_id, { setor_id: i.setor_atual_id!, quantidade: restante }));
    if (ok) {
      setAviso(`Ordem ${i.ordem_numero}: "${i.descricao}" concluída em ${atual?.nome}.`);
      painel.reload();
    }
  };
  const refazer = async (i: ItemPainel) => {
    const ok = await envio.run(() => producaoApi.refazer(i.ordem_id, i.item_id));
    if (ok) painel.reload();
  };

  return (
    <>
      <PageHeader title="Painel da produção" subtitle="Atualiza sozinho a cada 30 segundos" actions={<button className="btn" onClick={() => painel.reload()}>Atualizar</button>} />
      <Alert>{painel.error || envio.error}</Alert>
      <Alert kind="success">{aviso}</Alert>
      <div className="actions" style={{ marginBottom: 16 }}>
        {setores.map((s) => (
          <button key={s.id} className={`btn ${s.id === atual?.id ? 'primary' : ''}`} style={botaoGrande} onClick={() => escolher(s.id)}>
            {s.nome}
            <div style={{ fontSize: 13, opacity: 0.85 }}>{s.total_itens} item(ns) · {quantidade(s.total_pecas)} pç</div>
          </button>
        ))}
      </div>

      {atual && (
        <Card title={`Peças em ${atual.nome}`}>
          {atual.itens.length === 0 && <p className="muted">Nenhuma peça aguardando neste setor.</p>}
          <div style={{ display: 'grid', gap: 12 }}>
            {atual.itens.map((i) => (
              <div key={i.item_id} style={{ display: 'flex', gap: 16, alignItems: 'center', justifyContent: 'space-between', flexWrap: 'wrap', border: '1px solid var(--border)', borderRadius: 8, padding: 12 }}>
                <div>
                  <div style={{ fontSize: 18, fontWeight: 700 }}>{medidas(i)} <span className="muted" style={{ fontWeight: 400 }}>× {quantidade(i.quantidade)} pç</span></div>
                  <div>{i.descricao}</div>
                  {i.processado_setor > 0 && (
                    <div><Badge tone="blue">{quantidade(i.processado_setor)} de {quantidade(i.quantidade)} feitas</Badge> faltam {quantidade(saldoNoSetor(i).restante)}</div>
                  )}
                  <div className="muted">
                    <Link to={`/producao/ordens/${i.ordem_id}`}>Ordem {i.ordem_numero}</Link> · {i.cliente_nome} · entrega {date(i.previsao_entrega) || '—'}{' '}
                    {i.atrasada && <Badge tone="orange">Atrasada</Badge>}
                  </div>
                </div>
                {podeMarcar && (
                  <div className="actions">
                    <button className="btn danger" style={botaoGrande} disabled={envio.busy} onClick={() => setMarcando({ item: paraMarcar(i), defeito: true })}>Defeito</button>
                    {i.quantidade > 1 && (
                      <button className="btn" style={botaoGrande} disabled={envio.busy} onClick={() => setMarcando({ item: paraMarcar(i), defeito: false })}>Parcial…</button>
                    )}
                    <button className="btn primary" style={botaoGrande} disabled={envio.busy} onClick={() => concluir(i)}>
                      ✓ Concluir{i.processado_setor > 0 ? ` (${quantidade(saldoNoSetor(i).restante)})` : ''}
                    </button>
                  </div>
                )}
              </div>
            ))}
          </div>
        </Card>
      )}

      {!!painel.data?.defeitos.length && (
        <Card title="Peças com defeito (aguardando refazer)">
          <div style={{ display: 'grid', gap: 8 }}>
            {painel.data.defeitos.map((i) => (
              <div key={i.item_id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: 12, flexWrap: 'wrap' }}>
                <span>
                  <Badge tone="red">Defeito</Badge> <strong>{medidas(i)}</strong> × {quantidade(i.quantidade)} — {i.descricao} — ordem {i.ordem_numero} ({i.setor_atual_nome})
                </span>
                {podeMarcar && <button className="btn" style={{ fontSize: 16, padding: '10px 18px' }} disabled={envio.busy} onClick={() => refazer(i)}>Refazer</button>}
              </div>
            ))}
          </div>
        </Card>
      )}

      {marcando && (
        <MarcarModal
          ordemId={marcando.item.ordem_id}
          item={marcando.item}
          defeito={marcando.defeito}
          setores={setores}
          motivos={motivos ?? []}
          onClose={() => setMarcando(null)}
          onDone={() => {
            setAviso(marcando.defeito ? 'Defeito registrado.' : 'Marcação registrada.');
            setMarcando(null);
            painel.reload();
          }}
        />
      )}
    </>
  );
}
