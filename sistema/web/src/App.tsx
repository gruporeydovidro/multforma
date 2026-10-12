import type { ReactElement } from 'react';
import { BrowserRouter, Navigate, Route, Routes } from 'react-router-dom';
import { AuthProvider, can, useAuth, type Perfil } from './lib/auth';
import { perfisDaRota } from './lib/module';
import { Layout } from './components/Layout';
import { Alert } from './components/ui';
import { Login } from './pages/Login';
import { modules } from './pages/modules';

const menu = modules.flatMap((m) => m.menu);

/** Bloqueia a tela para quem não tem o perfil exigido (a API também recusa; aqui evita a tela quebrada). */
function ComPerfil({ perfis, children }: { perfis: Perfil[]; children: ReactElement }) {
  const { user } = useAuth();
  if (perfis.length && !can(user, ...perfis)) return <Alert>Você não tem permissão para acessar esta tela.</Alert>;
  return children;
}

function AppRoutes() {
  const { user, loading } = useAuth();
  if (loading) return <div className="center muted" style={{ padding: 40 }}>Carregando…</div>;
  if (!user) return <Login />;
  return (
    <Routes>
      <Route element={<Layout modules={modules} />}>
        {modules.flatMap((m) => m.routes).map((r) => (
          <Route key={r.path} path={r.path} element={<ComPerfil perfis={perfisDaRota(r, menu)}>{r.element}</ComPerfil>} />
        ))}
        <Route path="*" element={<Navigate to="/" replace />} />
      </Route>
    </Routes>
  );
}

export default function App() {
  return (
    <AuthProvider>
      <BrowserRouter>
        <AppRoutes />
      </BrowserRouter>
    </AuthProvider>
  );
}
