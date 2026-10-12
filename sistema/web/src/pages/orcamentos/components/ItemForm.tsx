import { useRef, useState, type FormEvent } from 'react';
import { Alert, AsyncSelect, Input, Modal, type Option } from '../../../components/ui';
import { money } from '../../../lib/format';
import { useEnvio } from '../../../lib/useEnvio';
import { apoioApi, type ItemInput, type ItemOrcamento, type ProdutoOpcao } from '../api';
import { AMBIENTES, lerCamposItem, textoNumero, type CamposItem } from '../regras';

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
 * É um <form>: Enter envia uma vez só (envios concorrentes são ignorados e o botão fica desabilitado).
 */
export function ItemRapidoForm({ usaTabela, busy, onIncluir }: { usaTabela: boolean; busy: boolean; onIncluir: (it: ItemInput) => Promise<unknown> }) {
  const vazio: CamposItem = { ambiente: '', largura: '', altura: '', quantidade: '1', preco: '', desconto: '', descricao: '' };
  const [produto, setProduto] = useState<ProdutoOpcao | null>(null);
  // Ref: um Enter que chegue antes do re-render não reaproveita o produto já incluído.
  const produtoAtual = useRef<ProdutoOpcao | null>(null);
  const [c, setC] = useState<CamposItem>(vazio);
  const [chave, setChave] = useState(0); // recria o AsyncSelect para limpar o texto
  const [erro, setErro] = useState('');
  const envio = useEnvio();
  const set = (k: keyof CamposItem, v: string) => setC((a) => ({ ...a, [k]: v }));
  const porMedida = produto?.unidade_venda === 'M2' || produto?.unidade_venda === 'ML';

  const escolher = (_v: number | null, o?: Option) => {
    const p = (o as ProdutoOpcao | undefined) ?? null;
    produtoAtual.current = p;
    setProduto(p);
    set('preco', p && !usaTabela ? textoNumero(p.preco_venda) : '');
  };

  const incluir = (e: FormEvent) => {
    e.preventDefault();
    const p = produtoAtual.current;
    if (!p) return setErro('Escolha o produto na lista');
    const lido = lerCamposItem(c, { unidade: p.unidade_venda, precoObrigatorio: false });
    if ('erro' in lido) return setErro(lido.erro);
    setErro('');
    const { quantidade, largura_mm, altura_mm, preco_unitario } = lido.dados;
    return envio.run(async () => {
      const r = await onIncluir({ produto_id: p.value, ambiente: c.ambiente.trim() || null, largura_mm, altura_mm, quantidade, preco_unitario: preco_unitario ?? undefined });
      if (r) {
        produtoAtual.current = null;
        setProduto(null);
        setC({ ...vazio, ambiente: c.ambiente });
        setChave((k) => k + 1);
      }
    });
  };

  const ocupado = busy || envio.busy;
  return (
    <form onSubmit={incluir}>
      <Alert>{erro}</Alert>
      <div className="grid">
        <AsyncSelect key={chave} className="col-4" label="Produto" value={produto?.value ?? null} fetchOptions={apoioApi.buscarProdutos} onChange={escolher} />
        <Input className="col-2" label="Ambiente" list="ambientes-orcamento" value={c.ambiente} onChange={(e) => set('ambiente', e.target.value)} />
        <Input className="col-2" label="Largura (mm)" inputMode="numeric" value={c.largura} onChange={(e) => set('largura', e.target.value)} hint={porMedida ? 'obrigatória' : undefined} />
        <Input className="col-2" label="Altura (mm)" inputMode="numeric" value={c.altura} onChange={(e) => set('altura', e.target.value)} hint={porMedida ? 'obrigatória' : undefined} />
        <Input className="col-2" label="Quantidade" inputMode="decimal" value={c.quantidade} onChange={(e) => set('quantidade', e.target.value)} />
        <Input
          className="col-2"
          label={`Preço unit.${produto ? ` (${produto.unidade_venda})` : ''}`}
          inputMode="decimal"
          value={c.preco}
          placeholder={usaTabela ? 'Preço da tabela' : ''}
          onChange={(e) => set('preco', e.target.value)}
          hint={produto ? `Cadastro: ${money(produto.preco_venda)}` : undefined}
        />
        <div className="col-2" style={{ display: 'flex', alignItems: 'flex-start', paddingTop: 20 }}>
          <button type="submit" className="btn primary block" disabled={ocupado || !produto}>{envio.busy ? 'Incluindo…' : 'Incluir item'}</button>
        </div>
      </div>
    </form>
  );
}

/** Edição de um item existente (o servidor recalcula medidas e total). Renderize com key={item.id}. */
export function ItemEditModal({ item, busy, onFechar, onSalvar }: {
  item: ItemOrcamento;
  busy: boolean;
  onFechar: () => void;
  onSalvar: (patch: Partial<ItemInput>) => Promise<unknown>;
}) {
  const [c, setC] = useState<CamposItem>(() => ({
    ambiente: item.ambiente ?? '',
    largura: item.largura_mm?.toString() ?? '',
    altura: item.altura_mm?.toString() ?? '',
    quantidade: textoNumero(item.quantidade),
    preco: textoNumero(item.preco_unitario),
    desconto: textoNumero(item.desconto_valor),
    descricao: item.descricao,
  }));
  const [erro, setErro] = useState('');
  const envio = useEnvio();
  const set = (k: keyof CamposItem, v: string) => setC((a) => ({ ...a, [k]: v }));

  const salvar = (e: FormEvent) => {
    e.preventDefault();
    const lido = lerCamposItem(c, { unidade: item.unidade, precoObrigatorio: true });
    if ('erro' in lido) return setErro(lido.erro);
    setErro('');
    const d = lido.dados;
    return envio.run(async () => {
      const r = await onSalvar({
        descricao: c.descricao.trim() || null,
        ambiente: c.ambiente.trim() || null,
        largura_mm: d.largura_mm,
        altura_mm: d.altura_mm,
        quantidade: d.quantidade,
        preco_unitario: d.preco_unitario ?? undefined,
        desconto_valor: d.desconto_valor,
      });
      if (r) onFechar();
    });
  };

  return (
    <Modal
      title={`Editar item ${item.seq}`}
      open
      onClose={onFechar}
      footer={
        <>
          <button type="button" className="btn" onClick={onFechar}>Cancelar</button>
          <button type="submit" form={`item-edit-${item.id}`} className="btn primary" disabled={busy || envio.busy}>Salvar</button>
        </>
      }
    >
      <Alert>{erro}</Alert>
      <form id={`item-edit-${item.id}`} className="grid" onSubmit={salvar}>
        <Input className="col-12" label="Descrição" value={c.descricao} onChange={(e) => set('descricao', e.target.value)} />
        <Input className="col-6" label="Ambiente" list="ambientes-orcamento" value={c.ambiente} onChange={(e) => set('ambiente', e.target.value)} />
        <Input className="col-6" label="Quantidade" inputMode="decimal" value={c.quantidade} onChange={(e) => set('quantidade', e.target.value)} />
        <Input className="col-6" label="Largura (mm)" inputMode="numeric" value={c.largura} onChange={(e) => set('largura', e.target.value)} />
        <Input className="col-6" label="Altura (mm)" inputMode="numeric" value={c.altura} onChange={(e) => set('altura', e.target.value)} />
        <Input className="col-6" label={`Preço unitário (${item.unidade})`} inputMode="decimal" value={c.preco} onChange={(e) => set('preco', e.target.value)} />
        <Input className="col-6" label="Desconto do item (R$)" inputMode="decimal" value={c.desconto} onChange={(e) => set('desconto', e.target.value)} />
      </form>
    </Modal>
  );
}
