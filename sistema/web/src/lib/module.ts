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
}

/** Cada pasta em src/pages/<modulo>/index.tsx exporta um ModuleDef. */
export interface ModuleDef {
  titulo: string;
  menu: MenuItem[];
  routes: ModuleRoute[];
}
