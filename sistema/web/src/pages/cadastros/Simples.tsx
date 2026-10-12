// Cadastros pequenos editados em modal: grupos, arredondamentos e tabelas de preço.
import { can, useAuth } from '../../lib/auth';
import { cadastrosApi, type Arredondamento, type Grupo, type TabelaPreco } from './api';
import { AtivoBadge, CadastroSimples, FILTRO_ATIVO } from './components';

const somenteLeitura = 'Somente o administrador altera este cadastro.';

export function GruposPage() {
  const { user } = useAuth();
  return (
    <CadastroSimples<Grupo>
      titulo="Grupos de produto"
      subtitulo={!can(user) && somenteLeitura}
      novo="Novo grupo"
      recurso={cadastrosApi.grupos}
      podeGravar={can(user)}
      vazio={{ nome: '' }}
      campos={[{ nome: 'nome', rotulo: 'Nome' }]}
      colunas={[
        { header: 'Nome', render: (g) => g.nome },
        { header: 'Produtos', render: (g) => g.produtos, align: 'right', width: '120px' },
      ]}
    />
  );
}

export function ArredondamentosPage() {
  const { user } = useAuth();
  return (
    <CadastroSimples<Arredondamento>
      titulo="Arredondamentos"
      subtitulo="Cada medida é arredondada para cima ao múltiplo do valor informado."
      novo="Novo arredondamento"
      recurso={cadastrosApi.arredondamentos}
      podeGravar={can(user)}
      vazio={{ descricao: '', valor_cm: '' }}
      campos={[
        { nome: 'descricao', rotulo: 'Descrição', className: 'col-8' },
        { nome: 'valor_cm', rotulo: 'Múltiplo (cm)', tipo: 'numero', className: 'col-4', dica: 'Ex.: 5 = de 5 em 5 cm' },
      ]}
      colunas={[
        { header: 'Descrição', render: (a) => a.descricao },
        { header: 'Múltiplo', render: (a) => `${a.valor_cm} cm`, align: 'right', width: '120px' },
      ]}
    />
  );
}

export function TabelasPrecoPage() {
  const { user } = useAuth();
  return (
    <CadastroSimples<TabelaPreco>
      titulo="Tabelas de preço"
      subtitulo="Os preços de cada produto por tabela são informados no cadastro do produto."
      novo="Nova tabela"
      recurso={cadastrosApi.tabelasPreco}
      podeGravar={can(user)}
      filtros={[FILTRO_ATIVO]}
      vazio={{ nome: '', ativo: true }}
      campos={[
        { nome: 'nome', rotulo: 'Nome' },
        { nome: 'ativo', rotulo: 'Ativa', tipo: 'marca' },
      ]}
      colunas={[
        { header: 'Nome', render: (t) => t.nome },
        { header: 'Situação', render: (t) => <AtivoBadge ativo={t.ativo} />, width: '90px' },
      ]}
    />
  );
}
