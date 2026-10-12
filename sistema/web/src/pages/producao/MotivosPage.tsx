import { useState } from 'react';
import { Alert, Input, Modal } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { producaoApi, type Motivo } from './api';
import { CadastroLista } from './components/CadastroLista';
import { useEnvio, useMotivos } from './hooks';

export function MotivosPage() {
  const { user } = useAuth();
  const admin = can(user);
  const { data, error, reload } = useMotivos();
  const [edicao, setEdicao] = useState<{ id?: number; descricao: string } | null>(null);
  const envio = useEnvio();

  const salvar = async () => {
    if (!edicao) return;
    const { id, descricao } = edicao;
    const ok = await envio.run(() => (id ? producaoApi.atualizarMotivo(id, descricao) : producaoApi.criarMotivo(descricao)));
    if (ok) {
      setEdicao(null);
      reload();
    }
  };
  const excluir = async (m: Motivo) => {
    if (!window.confirm(`Excluir o motivo "${m.descricao}"?`)) return;
    await envio.run(() => producaoApi.excluirMotivo(m.id));
    reload();
  };

  return (
    <CadastroLista<Motivo>
      titulo="Motivos de defeito"
      podeEditar={admin}
      onNovo={() => setEdicao({ descricao: '' })}
      error={error || (!edicao ? envio.error : '')}
      rows={data}
      rowKey={(m) => m.id}
      columns={[
        { header: 'Descrição', render: (m) => m.descricao },
        {
          header: '',
          align: 'right',
          render: (m) =>
            admin && (
              <div className="actions" style={{ justifyContent: 'flex-end' }}>
                <button className="btn small" onClick={() => setEdicao({ ...m })}>Editar</button>
                <button className="btn small danger" onClick={() => excluir(m)}>Excluir</button>
              </div>
            ),
        },
      ]}
    >
      <Modal
        title={edicao?.id ? 'Editar motivo' : 'Novo motivo'}
        open={!!edicao}
        onClose={() => setEdicao(null)}
        footer={<><button className="btn" onClick={() => setEdicao(null)}>Cancelar</button><button className="btn primary" disabled={envio.busy} onClick={salvar}>Salvar</button></>}
      >
        {edicao && (
          <>
            <Alert>{envio.error}</Alert>
            <Input label="Descrição" autoFocus value={edicao.descricao} onChange={(e) => setEdicao({ ...edicao, descricao: e.target.value })} />
          </>
        )}
      </Modal>
    </CadastroLista>
  );
}
