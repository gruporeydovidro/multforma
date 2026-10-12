import { useState, type FormEvent } from 'react';
import { Alert, Card, Input, PageHeader } from '../../components/ui';
import { useAuth } from '../../lib/auth';
import { cadastrosApi } from './api';
import { useFormulario } from './hooks';
import { erroConfirmacao } from './util';

const VAZIO = { senha_atual: '', nova_senha: '', confirmacao: '' };

export function MinhaSenhaPage() {
  const { user } = useAuth();
  const form = useFormulario(VAZIO);
  const [sucesso, setSucesso] = useState(false);

  const salvar = async (e: FormEvent) => {
    e.preventDefault();
    setSucesso(false);
    const { senha_atual, nova_senha, confirmacao } = form.valores as typeof VAZIO;
    const confirmar = erroConfirmacao(nova_senha, confirmacao);
    if (confirmar) return form.setErro(confirmar);
    if (await form.enviar(() => cadastrosApi.alterarMinhaSenha(senha_atual, nova_senha))) {
      form.setValores(VAZIO);
      setSucesso(true);
    }
  };

  return (
    <>
      <PageHeader title="Minha senha" subtitle={user && `${user.nome} (${user.login})`} />
      <Card>
        <form onSubmit={salvar} className="grid" style={{ maxWidth: 520 }}>
          <div className="col-12">
            {sucesso && <Alert kind="success">Senha alterada com sucesso.</Alert>}
            <Alert>{form.erro && !Object.keys(form.erros).length ? form.erro : undefined}</Alert>
          </div>
          <Input label="Senha atual" className="col-12" type="password" autoComplete="current-password" required {...form.campo('senha_atual')} />
          <Input label="Nova senha" className="col-12" type="password" autoComplete="new-password" required hint="Mínimo de 6 caracteres" {...form.campo('nova_senha')} />
          <Input label="Confirmação da nova senha" className="col-12" type="password" autoComplete="new-password" required {...form.campo('confirmacao')} />
          <div className="col-12">
            <button type="submit" className="btn primary" disabled={form.enviando}>{form.enviando ? 'Salvando…' : 'Alterar senha'}</button>
          </div>
        </form>
      </Card>
    </>
  );
}
