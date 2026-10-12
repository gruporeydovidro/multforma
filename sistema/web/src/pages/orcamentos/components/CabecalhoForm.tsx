import { useEffect, useState } from 'react';
import { AsyncSelect, Input, Select, TextArea } from '../../../components/ui';
import { addDays, today } from '../../../lib/format';
import { apoioApi, type Cabecalho, type Destino, type Opcao, type Orcamento } from '../api';
import { DESTINOS } from '../regras';

export type DadosCabecalho = Pick<
  Cabecalho,
  'cliente_id' | 'vendedor_id' | 'tabela_preco_id' | 'data_emissao' | 'validade' | 'prazo_entrega' | 'destino' | 'contato' | 'endereco_entrega' | 'observacoes'
>;

type Form = Omit<DadosCabecalho, 'cliente_id'> & { cliente_id: number | null };

const VALIDADE_PADRAO_DIAS = 15;

function inicial(o?: Orcamento): Form {
  if (!o) {
    const hoje = today();
    return {
      cliente_id: null, vendedor_id: null, tabela_preco_id: null, data_emissao: hoje, validade: addDays(hoje, VALIDADE_PADRAO_DIAS),
      prazo_entrega: null, destino: 'producao', contato: null, endereco_entrega: null, observacoes: null,
    };
  }
  const { cliente_id, vendedor_id, tabela_preco_id, data_emissao, validade, prazo_entrega, destino, contato, endereco_entrega, observacoes } = o;
  return { cliente_id, vendedor_id, tabela_preco_id, data_emissao, validade, prazo_entrega, destino, contato, endereco_entrega, observacoes };
}

const idOuNull = (v: string) => (v ? Number(v) : null);
/** Aplicado só ao enviar: durante a digitação o texto fica como está (inclusive espaços). */
const textoOuNull = (v: string | null) => (v?.trim() ? v.trim() : null);

/** Lista de apoio com a opção gravada, mesmo que tenha sido desativada depois. */
function comAtual(lista: Opcao[], id: number | null | undefined, nome: string | null | undefined): Opcao[] {
  if (!id || lista.some((x) => x.id === id)) return lista;
  return [...lista, { id, nome: `${nome ?? `#${id}`} (inativo)` }];
}

export const MSG_CLIENTE_OBRIGATORIO = 'Selecione o cliente: digite parte do nome e escolha uma opção da lista.';

/**
 * Cabeçalho do orçamento: cliente, vendedor, tabela de preço, datas, destino e observações.
 * `financeiroEditavel` = false trava cliente e tabela (orçamento aprovado).
 */
export function CabecalhoForm({ orcamento, vendedores, tabelas, editavel, financeiroEditavel, busy, onSalvar, rotuloSalvar = 'Salvar cabeçalho' }: {
  orcamento?: Orcamento;
  vendedores: Opcao[];
  tabelas: Opcao[];
  editavel: boolean;
  financeiroEditavel: boolean;
  busy: boolean;
  onSalvar: (dados: DadosCabecalho) => unknown;
  rotuloSalvar?: string;
}) {
  const [f, setF] = useState<Form>(() => inicial(orcamento));
  const [erro, setErro] = useState('');
  // Só reinicia quando o cabeçalho gravado muda (incluir itens não descarta edições em andamento).
  const gravado = JSON.stringify(inicial(orcamento));
  useEffect(() => setF(JSON.parse(gravado)), [gravado]);
  const set = <K extends keyof Form>(k: K, v: Form[K]) => setF((a) => ({ ...a, [k]: v }));

  const salvar = () => {
    if (!f.cliente_id) return setErro(MSG_CLIENTE_OBRIGATORIO);
    setErro('');
    onSalvar({
      ...f,
      cliente_id: f.cliente_id,
      contato: textoOuNull(f.contato),
      endereco_entrega: textoOuNull(f.endereco_entrega),
      observacoes: textoOuNull(f.observacoes),
    });
  };
  const listaVendedores = comAtual(vendedores, orcamento?.vendedor_id, orcamento?.vendedor_nome);
  const listaTabelas = comAtual(tabelas, orcamento?.tabela_preco_id, orcamento?.tabela_preco_nome);

  return (
    <>
      <div className="grid">
        {financeiroEditavel ? (
          <AsyncSelect
            className="col-6"
            label="Cliente"
            value={f.cliente_id}
            initialLabel={orcamento?.cliente?.nome}
            fetchOptions={apoioApi.buscarClientes}
            onChange={(v) => {
              set('cliente_id', v);
              if (v) setErro('');
            }}
            error={erro}
          />
        ) : (
          <Input className="col-6" label="Cliente" value={orcamento?.cliente?.nome ?? ''} disabled />
        )}
        <Select className="col-3" label="Vendedor" value={f.vendedor_id ?? ''} onChange={(e) => set('vendedor_id', idOuNull(e.target.value))} disabled={!editavel}>
          <option value="">—</option>
          {listaVendedores.map((v) => <option key={v.id} value={v.id}>{v.nome}</option>)}
        </Select>
        <Select className="col-3" label="Tabela de preço" value={f.tabela_preco_id ?? ''} onChange={(e) => set('tabela_preco_id', idOuNull(e.target.value))} disabled={!financeiroEditavel}
          hint="Vale para os próximos itens incluídos">
          <option value="">Preço de venda</option>
          {listaTabelas.map((t) => <option key={t.id} value={t.id}>{t.nome}</option>)}
        </Select>
        <Input className="col-3" label="Emissão" type="date" value={f.data_emissao} onChange={(e) => set('data_emissao', e.target.value)} disabled={!editavel} />
        <Input className="col-3" label="Validade" type="date" value={f.validade ?? ''} onChange={(e) => set('validade', e.target.value || null)} disabled={!editavel} />
        <Input className="col-3" label="Prazo de entrega" type="date" value={f.prazo_entrega ?? ''} onChange={(e) => set('prazo_entrega', e.target.value || null)} disabled={!editavel} />
        <Select className="col-3" label="Destino" value={f.destino} onChange={(e) => set('destino', e.target.value as Destino)} disabled={!editavel}>
          {Object.entries(DESTINOS).map(([v, l]) => <option key={v} value={v}>{l}</option>)}
        </Select>
        <Input className="col-4" label="Contato" value={f.contato ?? ''} onChange={(e) => set('contato', e.target.value)} disabled={!editavel} />
        <Input className="col-8" label="Endereço de entrega/instalação" value={f.endereco_entrega ?? ''} onChange={(e) => set('endereco_entrega', e.target.value)} disabled={!editavel} />
        <TextArea className="col-12" label="Observações" value={f.observacoes ?? ''} onChange={(e) => set('observacoes', e.target.value)} disabled={!editavel} />
      </div>
      {editavel && (
        <div className="actions" style={{ marginTop: 12, justifyContent: 'flex-end' }}>
          <button className="btn primary" onClick={salvar} disabled={busy}>{rotuloSalvar}</button>
        </div>
      )}
    </>
  );
}
