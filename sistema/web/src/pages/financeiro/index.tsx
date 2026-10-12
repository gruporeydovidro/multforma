import type { ModuleDef } from '../../lib/module';
import { CaixaPage } from './CaixaPage';
import { ContasPagarPage } from './ContasPagarPage';
import { ContasReceberPage } from './ContasReceberPage';
import { ReciboPage } from './ReciboPage';

const modulo: ModuleDef = {
  titulo: 'Financeiro',
  menu: [
    { label: 'Contas a receber', path: '/financeiro/receber', perfis: ['financeiro', 'vendedor'] },
    { label: 'Contas a pagar', path: '/financeiro/pagar', perfis: ['financeiro'] },
    { label: 'Caixa', path: '/financeiro/caixa', perfis: ['financeiro'] },
  ],
  routes: [
    { path: 'financeiro/receber', element: <ContasReceberPage /> },
    { path: 'financeiro/receber/:id/recibo', element: <ReciboPage /> },
    { path: 'financeiro/pagar', element: <ContasPagarPage /> },
    { path: 'financeiro/caixa', element: <CaixaPage /> },
  ],
};

export default modulo;
