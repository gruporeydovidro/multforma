import { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { Alert, Card, Input, PageHeader, TextArea } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { ItensProjetoGrid } from './components/ItensProjetoGrid';
import { SimuladorProjeto } from './components/SimuladorProjeto';
import { useProjetoForm } from './hooks';

export function ProjetoPage() {
  const { id: param } = useParams();
  const id = param === 'novo' || !param ? null : Number(param);
  const nav = useNavigate();
  const { user } = useAuth();
  const podeEditar = can(user, 'vendedor');
  const f = useProjetoForm(id);
  const [ok, setOk] = useState('');

  const salvar = async () => {
    setOk('');
    const p = await f.salvar();
    if (!p) return;
    setOk('Projeto salvo.');
    if (id === null) nav(`/projetos/${p.id}`, { replace: true });
  };

  const excluir = async () => {
    if (id === null || !window.confirm('Excluir este projeto? Se já foi usado em orçamentos, ele será apenas desativado.')) return;
    if (await f.excluir()) nav('/projetos');
  };

  if (f.carregando) return <div className="muted">Carregando…</div>;

  return (
    <>
      <PageHeader
        title={id === null ? 'Novo projeto' : f.form.nome || 'Projeto'}
        actions={
          <>
            <button className="btn" onClick={() => nav('/projetos')}>Voltar</button>
            {podeEditar && id !== null && <button className="btn danger" onClick={excluir} disabled={f.busy}>Excluir</button>}
            {podeEditar && <button className="btn primary" onClick={salvar} disabled={f.busy}>Salvar</button>}
          </>
        }
      />
      <Alert>{f.error}</Alert>
      <Alert kind="success">{ok}</Alert>
      <Card title="Dados do projeto">
        <div className="grid">
          <Input className="col-6" label="Nome" value={f.form.nome} onChange={(e) => f.set('nome', e.target.value)} disabled={!podeEditar} />
          <label className="field col-2" style={{ justifyContent: 'flex-end' }}>
            <span className="field-label">Situação</span>
            <span><input type="checkbox" checked={f.form.ativo} onChange={(e) => f.set('ativo', e.target.checked)} disabled={!podeEditar} /> Ativo</span>
          </label>
          <TextArea className="col-12" label="Descrição" value={f.form.descricao ?? ''} onChange={(e) => f.set('descricao', e.target.value)} disabled={!podeEditar} />
        </div>
      </Card>
      <Card title="Itens do projeto">
        <ItensProjetoGrid itens={f.form.itens} onChange={f.setItem} onAdd={f.addItem} onRemove={f.removeItem} onMove={f.moveItem} disabled={!podeEditar} />
      </Card>
      <Card title="Simulador">
        {id === null ? <div className="muted">Salve o projeto para simular as peças.</div> : <SimuladorProjeto projetoId={id} />}
      </Card>
    </>
  );
}
