import { useState } from 'react';
import { useParams } from 'react-router-dom';
import { Alert, Card, Input, Modal, Select } from '../../components/ui';
import { useAuth } from '../../lib/auth';
import { useAsync } from '../../lib/useAsync';
import { cadastrosApi, type Usuario } from './api';
import { AtivoBadge, Checkbox, FILTRO_ATIVO, FormularioCadastro, ListaCadastro, type FiltroLista } from './components';
import { excluirRegistro, useEdicao, useFormulario, useNavegacaoCadastro } from './hooks';
import { doFormulario, erroConfirmacao, paraFormulario, PERFIS, type ValoresForm } from './util';

const ROTA = 'cadastros/usuarios';
const CAMPOS = ['nome', 'login', 'perfil', 'filial_id', 'ativo'];

const FILTRO_PERFIL: FiltroLista = {
  nome: 'perfil',
  rotulo: 'Perfil',
  opcoes: [{ valor: '', rotulo: 'Todos' }, ...Object.entries(PERFIS).map(([valor, rotulo]) => ({ valor, rotulo }))],
};

export function UsuariosLista() {
  const nav = useNavegacaoCadastro(ROTA);
  return (
    <ListaCadastro<Usuario>
      titulo="Usuários"
      listar={cadastrosApi.usuarios.listar}
      filtros={[FILTRO_PERFIL, FILTRO_ATIVO]}
      busca="Nome ou login"
      onAbrir={(u) => nav.abrir(u.id)}
      acoes={<button className="btn primary" onClick={() => nav.abrir('novo')}>Novo usuário</button>}
      colunas={[
        { header: 'Nome', render: (u) => u.nome },
        { header: 'Login', render: (u) => <code>{u.login}</code> },
        { header: 'Perfil', render: (u) => PERFIS[u.perfil] },
        { header: 'Filial', render: (u) => u.filial_nome },
        { header: 'Situação', render: (u) => <AtivoBadge ativo={u.ativo} />, width: '90px' },
      ]}
    />
  );
}

export function UsuarioForm() {
  const { id: param } = useParams();
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  const vazio: ValoresForm = { nome: '', login: '', perfil: 'vendedor', filial_id: String(user?.filial_id ?? ''), ativo: true, senha: '', confirmacao: '' };
  const { id, form, registro, carregando } = useEdicao(param, cadastrosApi.usuarios.obter, vazio, (u) => paraFormulario(u, CAMPOS));
  const filiais = useAsync(() => cadastrosApi.filiais.listar({ pageSize: 200 }));
  const [trocandoSenha, setTrocandoSenha] = useState(false);
  const [aviso, setAviso] = useState<string>();
  const proprio = id !== null && id === user?.id;

  const salvar = async () => {
    const { confirmacao, ...valores } = form.valores;
    const confirmar = id === null ? erroConfirmacao(String(valores.senha), String(confirmacao)) : undefined;
    if (confirmar) return form.setErro(confirmar);
    if (await form.enviar(() => cadastrosApi.usuarios.salvar(id, doFormulario(valores, ['filial_id'])))) nav.voltar();
  };
  const excluir = async () => {
    const feito = id && (await excluirRegistro(form, () => cadastrosApi.usuarios.excluir(id)));
    if (!feito) return;
    if (feito.aviso) window.alert(feito.aviso);
    nav.voltar();
  };

  return (
    <>
      <FormularioCadastro
        titulo={id ? registro?.nome ?? 'Carregando…' : 'Novo usuário'}
        subtitulo={proprio ? 'Este é o seu usuário' : undefined}
        form={form}
        podeGravar
        carregando={carregando}
        onSalvar={salvar}
        onExcluir={id && !proprio ? excluir : undefined}
        onVoltar={nav.voltar}
      >
        {aviso && <Alert kind="success">{aviso}</Alert>}
        <Card title="Acesso" actions={id && <button type="button" className="btn" onClick={() => setTrocandoSenha(true)}>Redefinir senha</button>}>
          <div className="grid">
            <Input label="Nome" className="col-6" required autoFocus {...form.campo('nome')} />
            <Input label="Login" className="col-4" required autoComplete="off" hint="Minúsculas, sem espaços" {...form.campo('login')} />
            <Checkbox label="Ativo" className="col-2" disabled={proprio} {...form.marca('ativo')} />
            <Select label="Perfil" className="col-6" disabled={proprio} {...form.campo('perfil')}>
              {Object.entries(PERFIS).map(([v, r]) => <option key={v} value={v}>{r}</option>)}
            </Select>
            <Select label="Filial" className="col-6" {...form.campo('filial_id')}>
              {filiais.data?.items.map((f) => <option key={f.id} value={f.id}>{f.nome}{!f.ativo && ' (inativa)'}</option>)}
            </Select>
            {id === null && (
              <>
                <Input label="Senha" className="col-6" type="password" autoComplete="new-password" required {...form.campo('senha')} />
                <Input label="Confirmação da senha" className="col-6" type="password" autoComplete="new-password" required {...form.campo('confirmacao')} />
              </>
            )}
          </div>
        </Card>
      </FormularioCadastro>
      {id !== null && (
        <RedefinirSenha
          usuarioId={id}
          aberto={trocandoSenha}
          onFechar={(ok) => {
            setTrocandoSenha(false);
            if (ok) setAviso('Senha redefinida.');
          }}
        />
      )}
    </>
  );
}

function RedefinirSenha({ usuarioId, aberto, onFechar }: { usuarioId: number; aberto: boolean; onFechar: (ok: boolean) => void }) {
  const form = useFormulario({ senha: '', confirmacao: '' });
  const salvar = async () => {
    const confirmar = erroConfirmacao(String(form.valores.senha), String(form.valores.confirmacao));
    if (confirmar) return form.setErro(confirmar);
    if (await form.enviar(() => cadastrosApi.usuarios.redefinirSenha(usuarioId, String(form.valores.senha)))) {
      form.setValores({ senha: '', confirmacao: '' });
      onFechar(true);
    }
  };
  return (
    <Modal
      title="Redefinir senha"
      open={aberto}
      onClose={() => onFechar(false)}
      footer={
        <>
          <button type="button" className="btn ghost" onClick={() => onFechar(false)}>Cancelar</button>
          <button type="button" className="btn primary" disabled={form.enviando} onClick={salvar}>{form.enviando ? 'Salvando…' : 'Redefinir'}</button>
        </>
      }
    >
      <Alert>{form.erro && !Object.keys(form.erros).length ? form.erro : undefined}</Alert>
      <form className="grid" onSubmit={(e) => { e.preventDefault(); salvar(); }}>
        <Input label="Nova senha" className="col-12" type="password" autoComplete="new-password" autoFocus {...form.campo('senha')} />
        <Input label="Confirmação" className="col-12" type="password" autoComplete="new-password" {...form.campo('confirmacao')} />
        <button type="submit" hidden />
      </form>
    </Modal>
  );
}
