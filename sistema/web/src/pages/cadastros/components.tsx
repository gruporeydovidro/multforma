// Componentes reutilizáveis das telas de cadastro.
import { useState, type FormEvent, type ReactNode } from 'react';
import { Alert, Badge, Card, DataTable, Input, Modal, PageHeader, Pager, SearchBox, Select, type Column } from '../../components/ui';
import type { Paged } from '../../lib/api';
import type { Filtro, ResultadoExclusao } from './api';
import { excluirRegistro, useFormulario, useListagem, type Formulario } from './hooks';
import { doFormulario, paraFormulario, UFS, type ValoresForm } from './util';

export function Checkbox({ label, checked, onChange, className, disabled }: {
  label: string; checked: boolean; onChange: (v: boolean) => void; className?: string; disabled?: boolean;
}) {
  return (
    <label className={`field ${className ?? ''}`} style={{ flexDirection: 'row', alignItems: 'center', gap: 8, paddingTop: 20 }}>
      <input type="checkbox" checked={checked} disabled={disabled} onChange={(e) => onChange(e.target.checked)} />
      <span>{label}</span>
    </label>
  );
}

export function AtivoBadge({ ativo }: { ativo: boolean }) {
  return ativo ? <Badge tone="green">Ativo</Badge> : <Badge tone="red">Inativo</Badge>;
}

export function SimNao({ valor }: { valor: boolean }) {
  return valor ? <Badge tone="blue">Sim</Badge> : <span className="muted">Não</span>;
}

/** Filtro de lista apresentado como select; '' = todos. */
export interface FiltroLista {
  nome: string;
  rotulo: string;
  opcoes: { valor: string; rotulo: string }[];
}

export const FILTRO_ATIVO: FiltroLista = {
  nome: 'ativo',
  rotulo: 'Situação',
  opcoes: [{ valor: '', rotulo: 'Todos' }, { valor: 'true', rotulo: 'Ativos' }, { valor: 'false', rotulo: 'Inativos' }],
};

/** Página de listagem com busca, filtros, paginação e clique para abrir. */
export function ListaCadastro<T extends { id: number }>({ titulo, subtitulo, listar, fixos, filtros = [], colunas, onAbrir, acoes, busca = 'Pesquisar…', versao }: {
  titulo: string;
  subtitulo?: ReactNode;
  listar: (f: Filtro) => Promise<Paged<T>>;
  fixos?: Filtro;
  filtros?: FiltroLista[];
  colunas: Column<T>[];
  onAbrir?: (row: T) => void;
  acoes?: ReactNode;
  busca?: string;
  versao?: number;
}) {
  const lista = useListagem(listar, fixos, versao);
  return (
    <>
      <PageHeader title={titulo} subtitle={subtitulo} actions={acoes} />
      <Card>
        <div className="actions" style={{ marginBottom: 12 }}>
          <SearchBox value={lista.valor('q')} onChange={(v) => lista.definir('q', v)} placeholder={busca} />
          {filtros.map((f) => (
            <select key={f.nome} aria-label={f.rotulo} style={{ width: 'auto' }} value={lista.valor(f.nome)} onChange={(e) => lista.definir(f.nome, e.target.value)}>
              {f.opcoes.map((o) => <option key={o.valor} value={o.valor}>{f.rotulo}: {o.rotulo}</option>)}
            </select>
          ))}
        </div>
        <Alert>{lista.error}</Alert>
        <DataTable columns={colunas} rows={lista.data?.items} rowKey={(r) => r.id} onRowClick={onAbrir} />
        {lista.data && <Pager page={lista.page} pageSize={lista.pageSize} total={lista.data.total} onPage={(p) => lista.definir('page', String(p))} />}
      </Card>
    </>
  );
}

/** Moldura de formulário de cadastro: cabeçalho com Voltar/Excluir/Salvar, erro da API e envio por Enter. */
export function FormularioCadastro({ titulo, subtitulo, form, podeGravar, carregando, onSalvar, onExcluir, onVoltar, children }: {
  titulo: string;
  subtitulo?: ReactNode;
  form: Formulario;
  podeGravar: boolean;
  carregando?: boolean;
  onSalvar: () => void;
  onExcluir?: () => void;
  onVoltar: () => void;
  children: ReactNode;
}) {
  const submit = (e: FormEvent) => {
    e.preventDefault();
    if (podeGravar) onSalvar();
  };
  return (
    <form onSubmit={submit}>
      <PageHeader
        title={titulo}
        subtitle={subtitulo ?? (!podeGravar && 'Somente leitura')}
        actions={
          <>
            <button type="button" className="btn ghost" onClick={onVoltar}>Voltar</button>
            {podeGravar && onExcluir && <button type="button" className="btn danger" disabled={form.enviando} onClick={onExcluir}>Excluir</button>}
            {podeGravar && <button type="submit" className="btn primary" disabled={form.enviando || carregando}>{form.enviando ? 'Salvando…' : 'Salvar'}</button>}
          </>
        }
      />
      <Alert>{form.erro}</Alert>
      {carregando ? <div className="muted">Carregando…</div> : <fieldset disabled={!podeGravar} style={{ border: 0, padding: 0, margin: 0 }}>{children}</fieldset>}
    </form>
  );
}

/** Campos de endereço comuns a clientes/fornecedores e filiais. */
export function CamposEndereco({ form }: { form: Formulario }) {
  return (
    <div className="grid">
      <Input label="CEP" className="col-2" {...form.campo('cep')} />
      <Input label="Logradouro" className="col-6" {...form.campo('logradouro')} />
      <Input label="Número" className="col-2" {...form.campo('numero')} />
      <Input label="Complemento" className="col-2" {...form.campo('complemento')} />
      <Input label="Bairro" className="col-4" {...form.campo('bairro')} />
      <Input label="Cidade" className="col-6" {...form.campo('cidade')} />
      <Select label="UF" className="col-2" {...form.campo('uf')}>
        <option value="" />
        {UFS.map((uf) => <option key={uf}>{uf}</option>)}
      </Select>
    </div>
  );
}

export const CAMPOS_ENDERECO = ['cep', 'logradouro', 'numero', 'complemento', 'bairro', 'cidade', 'uf'];

/** Campo de um cadastro simples editado em modal. */
export interface CampoSimples {
  nome: string;
  rotulo: string;
  tipo?: 'texto' | 'numero' | 'marca';
  className?: string;
  dica?: string;
}

interface RecursoSimples<T> {
  listar: (f: Filtro) => Promise<Paged<T>>;
  salvar: (id: number | null, dados: Record<string, unknown>) => Promise<T>;
  excluir: (id: number) => Promise<ResultadoExclusao>;
}

/** Cadastro pequeno (poucos campos): lista com busca e edição em modal. */
export function CadastroSimples<T extends { id: number }>({ titulo, subtitulo, recurso, colunas, campos, vazio, podeGravar, filtros, novo = 'Novo' }: {
  titulo: string;
  subtitulo?: ReactNode;
  recurso: RecursoSimples<T>;
  colunas: Column<T>[];
  campos: CampoSimples[];
  vazio: ValoresForm;
  podeGravar: boolean;
  filtros?: FiltroLista[];
  novo?: string;
}) {
  const [editando, setEditando] = useState<T | 'novo' | null>(null);
  const [versao, setVersao] = useState(0);
  const [aviso, setAviso] = useState<string>();
  const form = useFormulario(vazio);
  const nomes = campos.map((c) => c.nome);
  const numericos = campos.filter((c) => c.tipo === 'numero').map((c) => c.nome);
  const id = editando && editando !== 'novo' ? editando.id : null;

  const abrir = (registro: T | 'novo') => {
    form.setErro(undefined);
    form.setValores(registro === 'novo' ? vazio : paraFormulario(registro, nomes));
    setEditando(registro);
    setAviso(undefined);
  };
  const concluir = (mensagem?: string) => {
    setEditando(null);
    setVersao((v) => v + 1);
    setAviso(mensagem);
  };
  const salvar = async () => {
    if (await form.enviar(() => recurso.salvar(id, doFormulario(form.valores, numericos)))) concluir();
  };
  const excluir = async () => {
    if (id === null) return;
    const feito = await excluirRegistro(form, () => recurso.excluir(id));
    if (feito) concluir(feito.aviso);
  };

  return (
    <>
      {aviso && <Alert kind="info">{aviso}</Alert>}
      <ListaCadastro
        titulo={titulo}
        subtitulo={subtitulo}
        listar={recurso.listar}
        colunas={colunas}
        filtros={filtros}
        versao={versao}
        onAbrir={podeGravar ? abrir : undefined}
        acoes={podeGravar && <button className="btn primary" onClick={() => abrir('novo')}>{novo}</button>}
      />
      <Modal
        title={id ? `Editar ${titulo.toLowerCase()}` : `${novo} (${titulo.toLowerCase()})`}
        open={editando !== null}
        onClose={() => setEditando(null)}
        footer={
          <>
            {id !== null && <button className="btn danger" disabled={form.enviando} onClick={excluir}>Excluir</button>}
            <button className="btn ghost" onClick={() => setEditando(null)}>Cancelar</button>
            <button className="btn primary" disabled={form.enviando} onClick={salvar}>{form.enviando ? 'Salvando…' : 'Salvar'}</button>
          </>
        }
      >
        <Alert>{form.erro && !Object.keys(form.erros).length ? form.erro : undefined}</Alert>
        <form className="grid" onSubmit={(e) => { e.preventDefault(); salvar(); }}>
          {campos.map((c) =>
            c.tipo === 'marca' ? (
              <Checkbox key={c.nome} label={c.rotulo} className={c.className ?? 'col-12'} {...form.marca(c.nome)} />
            ) : (
              <Input key={c.nome} label={c.rotulo} hint={c.dica} className={c.className ?? 'col-12'} type={c.tipo === 'numero' ? 'number' : 'text'} {...form.campo(c.nome)} />
            ),
          )}
          <button type="submit" hidden />
        </form>
      </Modal>
    </>
  );
}
