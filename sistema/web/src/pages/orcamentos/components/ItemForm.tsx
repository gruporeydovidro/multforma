import { useState } from 'react';
import { AsyncSelect, Input, Modal, type Option } from '../../../components/ui';
import { money } from '../../../lib/format';
import { apoioApi, type ItemInput, type ItemOrcamento, type ProdutoOpcao } from '../api';
import { AMBIENTES } from '../regras';

/** Campos de item como texto (permitem vazio enquanto o usuário digita). */
interface CamposItem {
  ambiente: string;
  largura: string;
  altura: string;
  quantidade: string;
  preco: string;
  desconto: string;
  descricao: string;
}

const numOuNull = (s: string) => (s.trim() === '' ? null : Number(s.replace(',', '.')));

export function AmbientesDatalist() {
  return (
    <datalist id="ambientes-orcamento">
      {AMBIENTES.map((a) => <option key={a} value={a} />)}
    </datalist>
  );
}

/**
 * Inclusão rápida de item avulso. Sem tabela de preço, sugere o preço de venda do cadastro;
 * com tabela, deixa em branco para o servidor aplicar o preço da tabela. O total é sempre calculado no servidor.
 */
export function ItemRapidoForm({ usaTabela, busy, onIncluir }: { usaTabela: boolean; busy: boolean; onIncluir: (it: ItemInput) => Promise<unknown> }) {
  const vazio: CamposItem = { ambiente: '', largura: '', altura: '', quantidade: '1', preco: '', desconto: '', descricao: '' };
  const [produto, setProduto] = useState<ProdutoOpcao | null>(null);
  const [c, setC] = useState<CamposItem>(vazio);
  const [chave, setChave] = useState(0); // recria o AsyncSelect para limpar o texto
  const set = (k: keyof CamposItem, v: string) => setC((a) => ({ ...a, [k]: v }));
  const porMedida = produto?.unidade_venda === 'M2' || produto?.unidade_venda === 'ML';

  const escolher = (_v: number | null, o?: Option) => {
    const p = (o as ProdutoOpcao | undefined) ?? null;
    setProduto(p);
    set('preco', p && !usaTabela ? String(p.preco_venda) : '');
  };

  const incluir = async () => {
    if (!produto) return;
    const r = await onIncluir({
      produto_id: produto.value,
      ambiente: c.ambiente || null,
      largura_mm: numOuNull(c.largura),
      altura_mm: numOuNull(c.altura),
      quantidade: numOuNull(c.quantidade) ?? 1,
      preco_unitario: numOuNull(c.preco) ?? undefined,
    });
    if (r) {
      setProduto(null);
      setC({ ...vazio, ambiente: c.ambiente });
      setChave((k) => k + 1);
    }
  };

  return (
    <div className="grid" onKeyDown={(e) => e.key === 'Enter' && produto && incluir()}>
      <AsyncSelect key={chave} className="col-4" label="Produto" value={produto?.value ?? null} fetchOptions={apoioApi.buscarProdutos} onChange={escolher} />
      <Input className="col-2" label="Ambiente" list="ambientes-orcamento" value={c.ambiente} onChange={(e) => set('ambiente', e.target.value)} />
      <Input className="col-2" label="Largura (mm)" type="number" min={1} value={c.largura} onChange={(e) => set('largura', e.target.value)} hint={porMedida ? 'obrigatória' : undefined} />
      <Input className="col-2" label="Altura (mm)" type="number" min={1} value={c.altura} onChange={(e) => set('altura', e.target.value)} hint={porMedida ? 'obrigatória' : undefined} />
      <Input className="col-2" label="Quantidade" type="number" min={0} step="any" value={c.quantidade} onChange={(e) => set('quantidade', e.target.value)} />
      <Input
        className="col-2"
        label={`Preço unit.${produto ? ` (${produto.unidade_venda})` : ''}`}
        type="number"
        min={0}
        step="0.01"
        value={c.preco}
        placeholder={usaTabela ? 'Preço da tabela' : ''}
        onChange={(e) => set('preco', e.target.value)}
        hint={produto ? `Cadastro: ${money(produto.preco_venda)}` : undefined}
      />
      <div className="col-2" style={{ display: 'flex', alignItems: 'flex-start', paddingTop: 20 }}>
        <button className="btn primary block" onClick={incluir} disabled={busy || !produto}>Incluir item</button>
      </div>
    </div>
  );
}

/** Edição de um item existente (o servidor recalcula medidas e total). */
export function ItemEditModal({ item, busy, onFechar, onSalvar }: {
  item: ItemOrcamento | null;
  busy: boolean;
  onFechar: () => void;
  onSalvar: (patch: Partial<ItemInput>) => Promise<unknown>;
}) {
  const de = (it: ItemOrcamento): CamposItem => ({
    ambiente: it.ambiente ?? '',
    largura: it.largura_mm?.toString() ?? '',
    altura: it.altura_mm?.toString() ?? '',
    quantidade: String(it.quantidade),
    preco: String(it.preco_unitario),
    desconto: String(it.desconto_valor),
    descricao: it.descricao,
  });
  const [c, setC] = useState<CamposItem | null>(null);
  const [editando, setEditando] = useState<number | null>(null);
  if (item && editando !== item.id) {
    setEditando(item.id);
    setC(de(item));
  }
  if (!item && editando !== null) setEditando(null);
  const set = (k: keyof CamposItem, v: string) => setC((a) => (a ? { ...a, [k]: v } : a));

  const salvar = async () => {
    if (!c) return;
    const r = await onSalvar({
      descricao: c.descricao || null,
      ambiente: c.ambiente || null,
      largura_mm: numOuNull(c.largura),
      altura_mm: numOuNull(c.altura),
      quantidade: numOuNull(c.quantidade) ?? 1,
      preco_unitario: numOuNull(c.preco) ?? 0,
      desconto_valor: numOuNull(c.desconto) ?? 0,
    });
    if (r) onFechar();
  };

  return (
    <Modal
      title={`Editar item ${item?.seq ?? ''}`}
      open={!!item && !!c}
      onClose={onFechar}
      footer={
        <>
          <button className="btn" onClick={onFechar}>Cancelar</button>
          <button className="btn primary" onClick={salvar} disabled={busy}>Salvar</button>
        </>
      }
    >
      {c && (
        <div className="grid">
          <Input className="col-12" label="Descrição" value={c.descricao} onChange={(e) => set('descricao', e.target.value)} />
          <Input className="col-6" label="Ambiente" list="ambientes-orcamento" value={c.ambiente} onChange={(e) => set('ambiente', e.target.value)} />
          <Input className="col-6" label="Quantidade" type="number" min={0} step="any" value={c.quantidade} onChange={(e) => set('quantidade', e.target.value)} />
          <Input className="col-6" label="Largura (mm)" type="number" min={1} value={c.largura} onChange={(e) => set('largura', e.target.value)} />
          <Input className="col-6" label="Altura (mm)" type="number" min={1} value={c.altura} onChange={(e) => set('altura', e.target.value)} />
          <Input className="col-6" label={`Preço unitário (${item?.unidade})`} type="number" min={0} step="0.01" value={c.preco} onChange={(e) => set('preco', e.target.value)} />
          <Input className="col-6" label="Desconto do item (R$)" type="number" min={0} step="0.01" value={c.desconto} onChange={(e) => set('desconto', e.target.value)} />
        </div>
      )}
    </Modal>
  );
}
