import type { ModuleDef } from '../../lib/module';
import { RankingsPage } from './RankingsPage';
import { ResumoFinanceiroPage } from './ResumoFinanceiroPage';
import { VendasPage } from './VendasPage';

const modulo: ModuleDef = {
  titulo: 'Relatórios',
  menu: [
    { label: 'Vendas', path: '/relatorios/vendas', perfis: ['vendedor', 'financeiro'] },
    { label: 'Rankings', path: '/relatorios/rankings', perfis: ['vendedor', 'financeiro'] },
    { label: 'Resumo financeiro', path: '/relatorios/resumo-financeiro', perfis: ['vendedor', 'financeiro'] },
  ],
  routes: [
    { path: 'relatorios/vendas', element: <VendasPage /> },
    { path: 'relatorios/rankings', element: <RankingsPage /> },
    { path: 'relatorios/resumo-financeiro', element: <ResumoFinanceiroPage /> },
  ],
};

export default modulo;
