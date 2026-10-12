import { useParams } from 'react-router-dom';
import { Card, Input, Select, TextArea } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { money } from '../../lib/format';
import { cadastrosApi, type PessoaItem } from './api';
import { AtivoBadge, CAMPOS_ENDERECO, CamposEndereco, Checkbox, FILTRO_ATIVO, FormularioCadastro, ListaCadastro } from './components';
import { excluirRegistro, useEdicao, useNavegacaoCadastro } from './hooks';
import { doFormulario, paraFormulario, TIPOS_PESSOA, type ValoresForm } from './util';

type Papel = 'cliente' | 'fornecedor';

const PAPEIS: Record<Papel, { titulo: string; singular: string; rota: string }> = {
  cliente: { titulo: 'Clientes', singular: 'cliente', rota: 'cadastros/clientes' },
  fornecedor: { titulo: 'Fornecedores', singular: 'fornecedor', rota: 'cadastros/fornecedores' },
};

const CAMPOS = [
  'tipo', 'natureza', 'nome', 'fantasia', 'cpf_cnpj', 'rg_ie', 'email', 'telefone', 'celular',
  ...CAMPOS_ENDERECO, 'limite_credito', 'observacoes', 'ativo',
];

const vazio = (papel: Papel): ValoresForm => ({ ...paraFormulario({}, CAMPOS), tipo: papel, natureza: 'F', limite_credito: '0', ativo: true });

const podeGravar = (user: ReturnType<typeof useAuth>['user']) => can(user, 'vendedor', 'financeiro');

export function PessoasLista({ papel }: { papel: Papel }) {
  const { user } = useAuth();
  const cfg = PAPEIS[papel];
  const nav = useNavegacaoCadastro(cfg.rota);
  return (
    <ListaCadastro<PessoaItem>
      titulo={cfg.titulo}
      listar={cadastrosApi.pessoas.listar}
      fixos={{ tipo: papel }}
      filtros={[FILTRO_ATIVO]}
      busca="Nome, fantasia ou CPF/CNPJ"
      onAbrir={(p) => nav.abrir(p.id)}
      acoes={podeGravar(user) && <button className="btn primary" onClick={() => nav.abrir('novo')}>Novo {cfg.singular}</button>}
      colunas={[
        { header: 'Nome', render: (p) => <>{p.nome}{p.fantasia && <div className="muted">{p.fantasia}</div>}</> },
        { header: 'CPF/CNPJ', render: (p) => p.cpf_cnpj },
        { header: 'Telefone', render: (p) => p.telefone || p.celular },
        { header: 'Cidade', render: (p) => [p.cidade, p.uf].filter(Boolean).join(' / ') },
        { header: 'Tipo', render: (p) => TIPOS_PESSOA[p.tipo] },
        { header: 'Situação', render: (p) => <AtivoBadge ativo={p.ativo} />, width: '90px' },
      ]}
    />
  );
}

export function PessoaForm({ papel }: { papel: Papel }) {
  const { id: param } = useParams();
  const { user } = useAuth();
  const cfg = PAPEIS[papel];
  const nav = useNavegacaoCadastro(cfg.rota);
  const { id, form, registro, carregando } = useEdicao(param, cadastrosApi.pessoas.obter, vazio(papel), (p) => paraFormulario(p, CAMPOS));
  const juridica = form.valores.natureza === 'J';

  const salvar = async () => {
    if (await form.enviar(() => cadastrosApi.pessoas.salvar(id, doFormulario(form.valores, ['limite_credito'])))) nav.voltar();
  };
  const excluir = async () => {
    const feito = id && (await excluirRegistro(form, () => cadastrosApi.pessoas.excluir(id)));
    if (!feito) return;
    if (feito.aviso) window.alert(feito.aviso);
    nav.voltar();
  };

  return (
    <FormularioCadastro
      titulo={id ? registro?.nome ?? 'Carregando…' : `Novo ${cfg.singular}`}
      form={form}
      podeGravar={podeGravar(user)}
      carregando={carregando}
      onSalvar={salvar}
      onExcluir={id ? excluir : undefined}
      onVoltar={nav.voltar}
    >
      <Card title="Identificação">
        <div className="grid">
          <Select label="Tipo" className="col-4" {...form.campo('tipo')}>
            {Object.entries(TIPOS_PESSOA).map(([v, r]) => <option key={v} value={v}>{r}</option>)}
          </Select>
          <Select label="Natureza" className="col-4" {...form.campo('natureza')}>
            <option value="F">Pessoa física</option>
            <option value="J">Pessoa jurídica</option>
          </Select>
          <Checkbox label="Ativo" className="col-4" {...form.marca('ativo')} />
          <Input label={juridica ? 'Razão social' : 'Nome'} className="col-6" autoFocus required {...form.campo('nome')} />
          <Input label={juridica ? 'Nome fantasia' : 'Apelido'} className="col-6" {...form.campo('fantasia')} />
          <Input label={juridica ? 'CNPJ' : 'CPF'} className="col-4" hint="Opcional; validado pelo dígito verificador" {...form.campo('cpf_cnpj')} />
          <Input label={juridica ? 'Inscrição estadual' : 'RG'} className="col-4" {...form.campo('rg_ie')} />
          <Input label="Limite de crédito (R$)" className="col-4" type="number" min="0" step="0.01"
            hint={registro ? `Atual: ${money(registro.limite_credito)}` : undefined} {...form.campo('limite_credito')} />
        </div>
      </Card>
      <Card title="Contato">
        <div className="grid">
          <Input label="Telefone" className="col-4" {...form.campo('telefone')} />
          <Input label="Celular" className="col-4" {...form.campo('celular')} />
          <Input label="E-mail" className="col-4" type="email" {...form.campo('email')} />
        </div>
      </Card>
      <Card title="Endereço">
        <CamposEndereco form={form} />
      </Card>
      <Card title="Observações">
        <TextArea label="Observações" {...form.campo('observacoes')} />
      </Card>
    </FormularioCadastro>
  );
}
