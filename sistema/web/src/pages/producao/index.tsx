import type { ModuleDef } from '../../lib/module';
import { ImpressaoOrdemPage } from './ImpressaoOrdemPage';
import { MotivosPage } from './MotivosPage';
import { OrdemPage } from './OrdemPage';
import { OrdensPage } from './OrdensPage';
import { PainelPage } from './PainelPage';
import { RelatoriosPage } from './RelatoriosPage';
import { SetoresPage } from './SetoresPage';

const leitura = ['producao', 'vendedor'] as const;

const modulo: ModuleDef = {
  titulo: 'Produção',
  menu: [
    { label: 'Ordens de produção', path: 'producao/ordens', perfis: [...leitura] },
    { label: 'Painel por setor', path: 'producao/painel', perfis: [...leitura] },
    { label: 'Relatórios', path: 'producao/relatorios', perfis: [...leitura] },
    { label: 'Setores', path: 'producao/setores', perfis: ['producao'] },
    { label: 'Motivos de defeito', path: 'producao/motivos', perfis: ['producao'] },
  ],
  routes: [
    { path: 'producao/ordens', element: <OrdensPage /> },
    { path: 'producao/ordens/:id', element: <OrdemPage /> },
    { path: 'producao/ordens/:id/imprimir', element: <ImpressaoOrdemPage /> },
    { path: 'producao/painel', element: <PainelPage /> },
    { path: 'producao/relatorios', element: <RelatoriosPage /> },
    { path: 'producao/setores', element: <SetoresPage /> },
    { path: 'producao/motivos', element: <MotivosPage /> },
  ],
};

export default modulo;
