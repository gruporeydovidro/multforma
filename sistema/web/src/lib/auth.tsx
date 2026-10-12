import { createContext, useCallback, useContext, useEffect, useState, type ReactNode } from 'react';
import { api } from './api';

export type Perfil = 'admin' | 'vendedor' | 'producao' | 'financeiro';
export interface User {
  id: number;
  nome: string;
  login: string;
  perfil: Perfil;
  filial_id: number;
}

interface AuthCtx {
  user: User | null;
  loading: boolean;
  login: (login: string, senha: string) => Promise<void>;
  logout: () => Promise<void>;
}

const Ctx = createContext<AuthCtx>(null!);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    api
      .get<{ user: User }>('/auth/me')
      .then((r) => setUser(r.user))
      .catch(() => setUser(null))
      .finally(() => setLoading(false));
    const onUnauthorized = () => setUser(null);
    window.addEventListener('vg:unauthorized', onUnauthorized);
    return () => window.removeEventListener('vg:unauthorized', onUnauthorized);
  }, []);

  const login = useCallback(async (login: string, senha: string) => {
    const r = await api.post<{ user: User }>('/auth/login', { login, senha });
    setUser(r.user);
  }, []);

  const logout = useCallback(async () => {
    await api.post('/auth/logout');
    setUser(null);
  }, []);

  return <Ctx.Provider value={{ user, loading, login, logout }}>{children}</Ctx.Provider>;
}

export const useAuth = () => useContext(Ctx);

/** true se o usuário tem algum dos perfis (admin sempre pode). */
export function can(user: User | null, ...perfis: Perfil[]) {
  return !!user && (user.perfil === 'admin' || perfis.includes(user.perfil));
}
