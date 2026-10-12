import { useEffect, useState } from 'react';
import { Alert, AsyncSelect, Field, Input, Modal, Select, TextArea } from '../../../components/ui';
import { decimal, today } from '../../../lib/format';
import { buscarPessoas, financeiroApi, type ContaPagar, type FormaPagamento } from '../api';
import { FORMAS_PAGAMENTO, lerValor } from '../format';
import { useAcao } from '../hooks';
import { PreviaParcelas } from './PreviaParcelas';

const buscarFornecedores = buscarPessoas('fornecedor');

export const CATEGORIAS_SUGERIDAS = ['Matéria-prima', 'Ferragens', 'Aluguel', 'Energia', 'Água', 'Telefone/Internet', 'Salários', 'Impostos', 'Combustível', 'Manutenção', 'Outros'];

interface Form {
  fornecedor_id: number | null;
  descricao: string;
  categoria: string;
  documento: string;
  valor: string;
  parcelas: number;
  vencimento: string;
  forma: FormaPagamento | '';
  observacao: string;
}

const vazio = (): Form => ({ fornecedor_id: null, descricao: '', categoria: '', documento: '', valor: '', parcelas: 1, vencimento: today(), forma: '', observacao: '' });

/** Formulário de conta a pagar: criação (com parcelas) ou edição de um título em aberto. */
export function ContaPagarModal({ aberto, titulo, onFechar, onSalvo }: { aberto: boolean; titulo?: ContaPagar | null; onFechar: () => void; onSalvo: () => void }) {
  const [f, setF] = useState<Form>(vazio);
  const { enviando, erro, setErro, executar } = useAcao();
  const editando = !!titulo;

  useEffect(() => {
    if (!aberto) return;
    setErro(undefined);
    setF(titulo ? {
      fornecedor_id: titulo.fornecedor_id, descricao: titulo.descricao, categoria: titulo.categoria ?? '', documento: titulo.documento ?? '',
      valor: decimal(titulo.valor), parcelas: 1, vencimento: titulo.vencimento, forma: titulo.forma_pagamento ?? '', observacao: titulo.observacao ?? '',
    } : vazio());
  }, [aberto, titulo, setErro]);

  const set = <K extends keyof Form>(k: K, v: Form[K]) => setF((atual) => ({ ...atual, [k]: v }));
  const total = lerValor(f.valor);
  const valido = f.descricao.trim() !== '' && total > 0 && !!f.vencimento;

  const salvar = async () => {
    const dados = {
      fornecedor_id: f.fornecedor_id, descricao: f.descricao.trim(), categoria: f.categoria.trim() || null, documento: f.documento.trim() || null,
      observacao: f.observacao.trim() || null, forma_pagamento: f.forma || null,
    };
    const r = await executar(() => editando
      ? financeiroApi.pagar.atualizar(titulo!.id, { ...dados, vencimento: f.vencimento, valor: total })
      : financeiroApi.pagar.criar({ ...dados, valor_total: total, parcelas: f.parcelas, primeiro_vencimento: f.vencimento }));
    if (r) { onSalvo(); onFechar(); }
  };

  return (
    <Modal title={editando ? 'Editar conta a pagar' : 'Nova conta a pagar'} open={aberto} onClose={onFechar} wide
      footer={<>
        <button className="btn" onClick={onFechar} disabled={enviando}>Cancelar</button>
        <button className="btn primary" onClick={salvar} disabled={enviando || !valido}>{enviando ? 'Gravando…' : 'Gravar'}</button>
      </>}
    >
      <Alert>{erro}</Alert>
      <div className="grid">
        <Input className="col-8" label="Descrição" value={f.descricao} onChange={(e) => set('descricao', e.target.value)} maxLength={200} autoFocus />
        <Field className="col-4" label="Categoria">
          <input list="categorias-pagar" value={f.categoria} onChange={(e) => set('categoria', e.target.value)} maxLength={60} />
          <datalist id="categorias-pagar">{CATEGORIAS_SUGERIDAS.map((c) => <option key={c} value={c} />)}</datalist>
        </Field>
        <AsyncSelect className="col-8" label="Fornecedor (opcional)" value={f.fornecedor_id} onChange={(v) => set('fornecedor_id', v)}
          fetchOptions={buscarFornecedores} initialLabel={titulo?.fornecedor_nome ?? undefined} />
        <Input className="col-4" label="Documento" value={f.documento} onChange={(e) => set('documento', e.target.value)} maxLength={60} />
        <Input className="col-3" label={editando ? 'Valor' : 'Valor total'} value={f.valor} onChange={(e) => set('valor', e.target.value)} inputMode="decimal" />
        {!editando && (
          <Input className="col-2" label="Parcelas" type="number" min={1} max={120} value={f.parcelas}
            onChange={(e) => set('parcelas', Math.max(1, Math.min(120, Number(e.target.value) || 1)))} />
        )}
        <Input className="col-3" label={editando ? 'Vencimento' : '1º vencimento'} type="date" value={f.vencimento} onChange={(e) => set('vencimento', e.target.value)} />
        <Select className="col-4" label="Forma de pagamento" value={f.forma} onChange={(e) => set('forma', e.target.value as FormaPagamento | '')}>
          <option value="">—</option>
          {FORMAS_PAGAMENTO.map((x) => <option key={x.value} value={x.value}>{x.label}</option>)}
        </Select>
        <TextArea className="col-12" label="Observação" value={f.observacao} onChange={(e) => set('observacao', e.target.value)} maxLength={500} />
      </div>
      {!editando && <PreviaParcelas total={total} quantidade={f.parcelas} primeiroVencimento={f.vencimento} />}
    </Modal>
  );
}
