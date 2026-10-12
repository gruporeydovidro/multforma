import { useParams } from 'react-router-dom';
import { Card, Input } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { cadastrosApi, type Filial } from './api';
import { AtivoBadge, CAMPOS_ENDERECO, CamposEndereco, Checkbox, FILTRO_ATIVO, FormularioCadastro, ListaCadastro } from './components';
import { confirmarDesativacao, excluirRegistro, useEdicao, useNavegacaoCadastro } from './hooks';
import { doFormulario, paraFormulario, type ValoresForm } from './util';

const ROTA = 'cadastros/filiais';
const CAMPOS = ['nome', 'cnpj', 'inscricao_estadual', 'telefone', 'email', ...CAMPOS_ENDERECO, 'ativo'];
const VAZIO: ValoresForm = { ...paraFormulario({}, CAMPOS), ativo: true };

export function FiliaisLista() {
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  return (
    <ListaCadastro<Filial>
      titulo="Filiais"
      listar={cadastrosApi.filiais.listar}
      filtros={[FILTRO_ATIVO]}
      busca="Nome, CNPJ ou cidade"
      onAbrir={(f) => nav.abrir(f.id)}
      acoes={can(user) && <button className="btn primary" onClick={() => nav.abrir('novo')}>Nova filial</button>}
      colunas={[
        { header: 'Nº', render: (f) => f.id, width: '60px' },
        { header: 'Nome', render: (f) => f.nome },
        { header: 'CNPJ', render: (f) => f.cnpj },
        { header: 'Cidade', render: (f) => [f.cidade, f.uf].filter(Boolean).join(' / ') },
        { header: 'Telefone', render: (f) => f.telefone },
        { header: 'Situação', render: (f) => <AtivoBadge ativo={f.ativo} />, width: '90px' },
      ]}
    />
  );
}

export function FilialForm() {
  const { id: param } = useParams();
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  const { id, form, registro, carregando } = useEdicao(param, cadastrosApi.filiais.obter, VAZIO, (f) => paraFormulario(f, CAMPOS));
  const atual = id !== null && id === user?.filial_id;

  const salvar = async () => {
    if (form.enviando || !confirmarDesativacao(registro, form.valores)) return;
    if (await form.enviar(() => cadastrosApi.filiais.salvar(id, doFormulario(form.valores)))) nav.voltar();
  };
  const excluir = async () => {
    const feito = id && (await excluirRegistro(form, () => cadastrosApi.filiais.excluir(id)));
    if (!feito) return;
    if (feito.aviso) window.alert(feito.aviso);
    nav.voltar();
  };

  return (
    <FormularioCadastro
      titulo={id ? registro?.nome ?? 'Carregando…' : 'Nova filial'}
      subtitulo={atual ? 'Filial em que você está logado' : undefined}
      form={form}
      podeGravar={can(user)}
      carregando={carregando}
      onSalvar={salvar}
      onExcluir={id && !atual ? excluir : undefined}
      onVoltar={nav.voltar}
    >
      <Card title="Identificação">
        <div className="grid">
          <Input label="Nome" className="col-6" required autoFocus {...form.campo('nome')} />
          <Input label="CNPJ" className="col-4" hint="Opcional; validado pelo dígito verificador" {...form.campo('cnpj')} />
          <Checkbox label="Ativa" className="col-2" disabled={atual} {...form.marca('ativo')} />
          <Input label="Inscrição estadual" className="col-4" {...form.campo('inscricao_estadual')} />
          <Input label="Telefone" className="col-4" {...form.campo('telefone')} />
          <Input label="E-mail" className="col-4" type="email" {...form.campo('email')} />
        </div>
      </Card>
      <Card title="Endereço">
        <CamposEndereco form={form} />
      </Card>
    </FormularioCadastro>
  );
}
