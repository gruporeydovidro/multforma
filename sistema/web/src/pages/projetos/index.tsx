import type { ModuleDef } from '../../lib/module';
import { ProjetoPage } from './ProjetoPage';
import { ProjetosPage } from './ProjetosPage';

const modulo: ModuleDef = {
  titulo: 'Projetos',
  menu: [{ label: 'Projetos', path: 'projetos', perfis: ['vendedor'] }],
  routes: [
    { path: 'projetos', element: <ProjetosPage /> },
    { path: 'projetos/:id', element: <ProjetoPage /> },
  ],
};

export default modulo;
