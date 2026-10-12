import { Link, Outlet, useLocation } from 'react-router-dom';
import { can, useAuth } from '../lib/auth';
import { menuMaisProximo, type ModuleDef } from '../lib/module';

/** Caminho absoluto para o link (os módulos podem registrar com ou sem a barra inicial). */
const absoluto = (p: string) => (p.startsWith('/') ? p : `/${p}`);

/** Casca da aplicação: menu lateral montado a partir dos módulos recebidos. */
export function Layout({ modules }: { modules: ModuleDef[] }) {
  const { user, logout } = useAuth();
  const { pathname } = useLocation();
  const ativo = menuMaisProximo(pathname, modules.flatMap((m) => m.menu))?.path;
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
                  <Link key={i.path} to={absoluto(i.path)} className={i.path === ativo ? 'active' : ''}>
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
