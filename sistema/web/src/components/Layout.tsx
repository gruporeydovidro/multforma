import { Link, Outlet, useLocation } from 'react-router-dom';
import { can, useAuth } from '../lib/auth';
import { modules } from '../pages/modules';

/** Item do menu ativo: o de caminho mais longo que é prefixo da URL atual. */
const absoluto = (p: string) => (p.startsWith('/') ? p : `/${p}`);

function caminhoAtivo(pathname: string, paths: string[]): string | undefined {
  return paths
    .map(absoluto)
    .filter((p) => (p === '/' ? pathname === '/' : pathname === p || pathname.startsWith(`${p}/`)))
    .sort((a, b) => b.length - a.length)[0];
}

export function Layout() {
  const { user, logout } = useAuth();
  const { pathname } = useLocation();
  const ativo = caminhoAtivo(pathname, modules.flatMap((m) => m.menu.map((i) => i.path)));
  return (
    <div className="shell">
      <aside className="sidebar">
        <div className="brand">VidroGest</div>
        <nav>
          {modules.map((m) => {
            const items = m.menu.filter((i) => !i.perfis?.length || can(user, ...i.perfis));
            if (!items.length) return null;
            return (
              <div key={m.titulo} className="nav-group">
                <div className="nav-title">{m.titulo}</div>
                {items.map((i) => (
                  <Link key={i.path} to={absoluto(i.path)} className={absoluto(i.path) === ativo ? 'active' : ''}>
                    {i.label}
                  </Link>
                ))}
              </div>
            );
          })}
        </nav>
      </aside>
      <div className="main">
        <header className="topbar">
          <span className="muted">Filial {user?.filial_id}</span>
          <span>{user?.nome} <span className="muted">({user?.perfil})</span></span>
          <button className="btn ghost" onClick={logout}>Sair</button>
        </header>
        <main className="content">
          <Outlet />
        </main>
      </div>
    </div>
  );
}
