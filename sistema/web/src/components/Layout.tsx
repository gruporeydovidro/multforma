import { NavLink, Outlet } from 'react-router-dom';
import { can, useAuth } from '../lib/auth';
import { modules } from '../pages/modules';

export function Layout() {
  const { user, logout } = useAuth();
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
                  <NavLink key={i.path} to={i.path} end={i.path === '/'} className={({ isActive }) => (isActive ? 'active' : '')}>
                    {i.label}
                  </NavLink>
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
