import type { ReactElement } from 'react';
import type { Perfil } from './auth';

export interface MenuItem {
  label: string;
  path: string;
  perfis?: Perfil[]; // vazio = todos
}

export interface ModuleRoute {
  path: string; // relativo à raiz, ex.: 'cadastros/clientes/:id'
  element: ReactElement;
  /** Perfis com acesso. Se omitido, herda os do item de menu de caminho mais próximo. */
  perfis?: Perfil[];
}

const absoluto = (p: string) => `/${p.replace(/^\/+/, '')}`;

/** Item de menu de caminho mais longo que é prefixo de `path` (ou igual a ele). */
export function menuMaisProximo(path: string, menu: MenuItem[]): MenuItem | undefined {
  const alvo = absoluto(path);
  return menu
    .filter((i) => {
      const p = absoluto(i.path);
      return p === '/' ? alvo === '/' : alvo === p || alvo.startsWith(`${p}/`);
    })
    .sort((a, b) => absoluto(b.path).length - absoluto(a.path).length)[0];
}

/** Perfis exigidos por uma rota (explícitos ou herdados do menu). Vazio = qualquer usuário. */
export function perfisDaRota(r: ModuleRoute, menu: MenuItem[]): Perfil[] {
  return r.perfis ?? menuMaisProximo(r.path, menu)?.perfis ?? [];
}

/** Cada pasta em src/pages/<modulo>/index.tsx exporta um ModuleDef. */
export interface ModuleDef {
  titulo: string;
  menu: MenuItem[];
  routes: ModuleRoute[];
}
