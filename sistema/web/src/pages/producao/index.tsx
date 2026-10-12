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
    // A API só aceita escrita do admin: o menu fica com ele; a tela continua acessível (só leitura) a quem lê a produção.
    { label: 'Setores', path: 'producao/setores', perfis: ['admin'] },
    { label: 'Motivos de defeito', path: 'producao/motivos', perfis: ['admin'] },
  ],
  routes: [
    { path: 'producao/ordens', element: <OrdensPage /> },
    { path: 'producao/ordens/:id', element: <OrdemPage /> },
    { path: 'producao/ordens/:id/imprimir', element: <ImpressaoOrdemPage /> },
    { path: 'producao/painel', element: <PainelPage /> },
    { path: 'producao/relatorios', element: <RelatoriosPage /> },
    { path: 'producao/setores', element: <SetoresPage />, perfis: [...leitura] },
    { path: 'producao/motivos', element: <MotivosPage />, perfis: [...leitura] },
  ],
};

export default modulo;
