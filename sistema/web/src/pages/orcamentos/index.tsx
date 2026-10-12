import type { ModuleDef } from '../../lib/module';
import { ImpressaoOrcamentoPage } from './ImpressaoOrcamentoPage';
import { OrcamentoPage } from './OrcamentoPage';
import { OrcamentosPage } from './OrcamentosPage';

const modulo: ModuleDef = {
  titulo: 'Vendas',
  menu: [
    { label: 'Orçamentos', path: 'orcamentos', perfis: ['vendedor', 'financeiro'] },
    { label: 'Novo orçamento', path: 'orcamentos/novo', perfis: ['vendedor'] },
  ],
  routes: [
    { path: 'orcamentos', element: <OrcamentosPage /> },
    { path: 'orcamentos/:id', element: <OrcamentoPage /> },
    { path: 'orcamentos/:id/imprimir', element: <ImpressaoOrcamentoPage /> },
  ],
};

export default modulo;
