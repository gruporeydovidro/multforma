import type { ModuleDef } from '../../lib/module';
import { PainelPage } from './PainelPage';

const modulo: ModuleDef = {
  titulo: 'Início',
  menu: [{ label: 'Painel', path: '/' }],
  routes: [{ path: '', element: <PainelPage /> }],
};

export default modulo;
