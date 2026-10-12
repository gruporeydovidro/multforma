import { useParams } from 'react-router-dom';
import { Card, Input } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { decimal } from '../../lib/format';
import { cadastrosApi, type Funcionario } from './api';
import { AtivoBadge, Checkbox, FILTRO_ATIVO, FormularioCadastro, ListaCadastro, SimNao, type FiltroLista } from './components';
import { confirmarDesativacao, excluirRegistro, useEdicao, useNavegacaoCadastro } from './hooks';
import { doFormulario, paraFormulario, type ValoresForm } from './util';

const ROTA = 'cadastros/funcionarios';
const CAMPOS = ['nome', 'cargo', 'telefone', 'email', 'vendedor', 'instalador', 'comissao_pct', 'ativo'];
const VAZIO: ValoresForm = { ...paraFormulario({}, CAMPOS), vendedor: false, instalador: false, comissao_pct: '0', ativo: true };

const simNao = (nome: string, rotulo: string): FiltroLista => ({
  nome,
  rotulo,
  opcoes: [{ valor: '', rotulo: 'Todos' }, { valor: 'true', rotulo: 'Sim' }, { valor: 'false', rotulo: 'Não' }],
});

export function FuncionariosLista() {
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  return (
    <ListaCadastro<Funcionario>
      titulo="Funcionários"
      listar={cadastrosApi.funcionarios.listar}
      filtros={[simNao('vendedor', 'Vendedor'), simNao('instalador', 'Instalador'), FILTRO_ATIVO]}
      busca="Nome ou cargo"
      onAbrir={(f) => nav.abrir(f.id)}
      acoes={can(user) && <button className="btn primary" onClick={() => nav.abrir('novo')}>Novo funcionário</button>}
      colunas={[
        { header: 'Nome', render: (f) => f.nome },
        { header: 'Cargo', render: (f) => f.cargo },
        { header: 'Telefone', render: (f) => f.telefone },
        { header: 'Vendedor', render: (f) => <SimNao valor={f.vendedor} />, align: 'center' },
        { header: 'Instalador', render: (f) => <SimNao valor={f.instalador} />, align: 'center' },
        { header: 'Comissão', render: (f) => `${decimal(f.comissao_pct, 2)}%`, align: 'right' },
        { header: 'Situação', render: (f) => <AtivoBadge ativo={f.ativo} />, width: '90px' },
      ]}
    />
  );
}

export function FuncionarioForm() {
  const { id: param } = useParams();
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  const { id, form, registro, carregando } = useEdicao(param, cadastrosApi.funcionarios.obter, VAZIO, (f) => paraFormulario(f, CAMPOS));

  const salvar = async () => {
    if (form.enviando || !confirmarDesativacao(registro, form.valores)) return;
    if (await form.enviar(() => cadastrosApi.funcionarios.salvar(id, doFormulario(form.valores, ['comissao_pct'])))) nav.voltar();
  };
  const excluir = async () => {
    const feito = id && (await excluirRegistro(form, () => cadastrosApi.funcionarios.excluir(id)));
    if (!feito) return;
    if (feito.aviso) window.alert(feito.aviso);
    nav.voltar();
  };

  return (
    <FormularioCadastro
      titulo={id ? registro?.nome ?? 'Carregando…' : 'Novo funcionário'}
      form={form}
      podeGravar={can(user)}
      carregando={carregando}
      onSalvar={salvar}
      onExcluir={id ? excluir : undefined}
      onVoltar={nav.voltar}
    >
      <Card>
        <div className="grid">
          <Input label="Nome" className="col-6" required autoFocus {...form.campo('nome')} />
          <Input label="Cargo" className="col-4" {...form.campo('cargo')} />
          <Checkbox label="Ativo" className="col-2" {...form.marca('ativo')} />
          <Input label="Telefone" className="col-4" {...form.campo('telefone')} />
          <Input label="E-mail" className="col-4" type="email" {...form.campo('email')} />
          <Input label="Comissão (%)" className="col-4" inputMode="decimal" {...form.campo('comissao_pct')} />
          <Checkbox label="É vendedor (aparece nos orçamentos)" className="col-6" {...form.marca('vendedor')} />
          <Checkbox label="É instalador" className="col-6" {...form.marca('instalador')} />
        </div>
      </Card>
    </FormularioCadastro>
  );
}
