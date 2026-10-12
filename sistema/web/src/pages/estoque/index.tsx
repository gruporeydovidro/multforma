import type { ModuleDef } from '../../lib/module';
import { MovimentoFormPage } from './MovimentoFormPage';
import { MovimentosPage } from './MovimentosPage';
import { SaldosPage } from './SaldosPage';

const modulo: ModuleDef = {
  titulo: 'Estoque',
  menu: [
    { label: 'Saldos', path: 'estoque/saldos' },
    { label: 'Movimentações', path: 'estoque/movimentos' },
    { label: 'Entrada', path: 'estoque/entrada', perfis: ['producao'] },
    { label: 'Saída', path: 'estoque/saida', perfis: ['producao'] },
    { label: 'Acerto', path: 'estoque/acerto', perfis: ['producao'] },
  ],
  routes: [
    { path: 'estoque/saldos', element: <SaldosPage /> },
    { path: 'estoque/movimentos', element: <MovimentosPage /> },
    { path: 'estoque/entrada', element: <MovimentoFormPage key="entrada" modo="entrada" /> },
    { path: 'estoque/saida', element: <MovimentoFormPage key="saida" modo="saida" /> },
    { path: 'estoque/acerto', element: <MovimentoFormPage key="acerto" modo="acerto" /> },
  ],
};

export default modulo;
