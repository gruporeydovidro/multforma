import { useState } from 'react';
import { Alert, Badge, Input, Modal } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { producaoApi, type Setor, type SetorInput } from './api';
import { CadastroLista } from './components/CadastroLista';
import { useEnvio, useSetores } from './hooks';

type Edicao = (SetorInput & { id?: number }) | null;

export function SetoresPage() {
  const { user } = useAuth();
  const admin = can(user);
  const { data, error, reload } = useSetores();
  const [edicao, setEdicao] = useState<Edicao>(null);
  const envio = useEnvio();

  const proximaOrdem = Math.max(0, ...(data ?? []).map((s) => s.ordem)) + 1;
  const salvar = async () => {
    if (!edicao) return;
    const { id, ...s } = edicao;
    const ok = await envio.run(() => (id ? producaoApi.atualizarSetor(id, s) : producaoApi.criarSetor(s)));
    if (ok) {
      setEdicao(null);
      reload();
    }
  };
  const excluir = async (s: Setor) => {
    if (!window.confirm(`Excluir o setor "${s.nome}"? Se ele já tiver marcações, desative-o em vez de excluir.`)) return;
    await envio.run(() => producaoApi.excluirSetor(s.id));
    reload();
  };

  return (
    <CadastroLista<Setor>
      titulo="Setores de produção"
      podeEditar={admin}
      onNovo={() => setEdicao({ nome: '', ordem: proximaOrdem, ativo: true })}
      error={error || (!edicao ? envio.error : '')}
      rows={data}
      rowKey={(s) => s.id}
      columns={[
        { header: 'Ordem', render: (s) => s.ordem, width: '80px' },
        { header: 'Setor', render: (s) => s.nome },
        { header: 'Situação', render: (s) => (s.ativo ? <Badge tone="green">Ativo</Badge> : <Badge>Inativo</Badge>) },
        {
          header: '',
          align: 'right',
          render: (s) =>
            admin && (
              <div className="actions" style={{ justifyContent: 'flex-end' }}>
                <button className="btn small" onClick={() => setEdicao({ ...s })}>Editar</button>
                <button className="btn small danger" onClick={() => excluir(s)}>Excluir</button>
              </div>
            ),
        },
      ]}
    >
      <Modal
        title={edicao?.id ? 'Editar setor' : 'Novo setor'}
        open={!!edicao}
        onClose={() => setEdicao(null)}
        footer={<><button className="btn" onClick={() => setEdicao(null)}>Cancelar</button><button className="btn primary" disabled={envio.busy} onClick={salvar}>Salvar</button></>}
      >
        {edicao && (
          <>
            <Alert>{envio.error}</Alert>
            <div className="grid">
              <Input label="Nome" className="col-8" autoFocus value={edicao.nome} onChange={(e) => setEdicao({ ...edicao, nome: e.target.value })} />
              <Input label="Ordem no roteiro" className="col-4" type="number" min={0} value={edicao.ordem} onChange={(e) => setEdicao({ ...edicao, ordem: Number(e.target.value) })} />
              <label className="col-12" style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
                <input type="checkbox" checked={edicao.ativo} onChange={(e) => setEdicao({ ...edicao, ativo: e.target.checked })} /> Ativo
              </label>
            </div>
          </>
        )}
      </Modal>
    </CadastroLista>
  );
}
