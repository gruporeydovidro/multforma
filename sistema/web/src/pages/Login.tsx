import { useState, type FormEvent } from 'react';
import { useAuth } from '../lib/auth';
import { Alert, Input } from '../components/ui';

export function Login() {
  const { login } = useAuth();
  const [form, setForm] = useState({ login: '', senha: '' });
  const [error, setError] = useState('');
  const [busy, setBusy] = useState(false);

  const submit = async (e: FormEvent) => {
    e.preventDefault();
    setBusy(true);
    setError('');
    try {
      await login(form.login, form.senha);
    } catch (err) {
      setError((err as Error).message);
    } finally {
      setBusy(false);
    }
  };

  return (
    <div className="login-page">
      <form className="login-card" onSubmit={submit}>
        <h1>VidroGest</h1>
        <p className="muted">Gestão para vidraçarias</p>
        <Alert>{error}</Alert>
        <Input label="Usuário" autoFocus value={form.login} onChange={(e) => setForm({ ...form, login: e.target.value })} />
        <Input label="Senha" type="password" value={form.senha} onChange={(e) => setForm({ ...form, senha: e.target.value })} />
        <button className="btn primary block" disabled={busy}>{busy ? 'Entrando…' : 'Entrar'}</button>
      </form>
    </div>
  );
}
