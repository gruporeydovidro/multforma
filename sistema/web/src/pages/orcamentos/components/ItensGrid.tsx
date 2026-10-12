import { useState } from 'react';
import { Badge, DataTable } from '../../../components/ui';
import { decimal, money } from '../../../lib/format';
import type { ItemInput, ItemOrcamento, Orcamento } from '../api';
import { medidas, medidasCalculadas } from '../regras';
import { AmbientesDatalist, ItemEditModal, ItemRapidoForm } from './ItemForm';

/** Grade de itens com inclusão rápida, edição e remoção. Valores calculados pelo servidor. */
export function ItensGrid({ orcamento, editavel, busy, onAdicionar, onAtualizar, onRemover }: {
  orcamento: Orcamento;
  /** Vendedor com o orçamento aberto (regras.permissoesOrcamento). */
  editavel: boolean;
  busy: boolean;
  onAdicionar: (it: ItemInput) => Promise<unknown>;
  onAtualizar: (itemId: number, patch: Partial<ItemInput>) => Promise<unknown>;
  onRemover: (itemId: number) => Promise<unknown>;
}) {
  const [editando, setEditando] = useState<ItemOrcamento | null>(null);
  const projetoNome = (id: number | null) => orcamento.projetos.find((p) => p.id === id)?.descricao ?? 'Projeto';

  return (
    <>
      <AmbientesDatalist />
      {editavel && (
        <div style={{ marginBottom: 12 }}>
          <ItemRapidoForm usaTabela={orcamento.tabela_preco_id !== null} busy={busy} onIncluir={onAdicionar} />
        </div>
      )}
      <DataTable
        rows={orcamento.itens}
        rowKey={(i) => i.id}
        empty="Nenhum item. Inclua produtos avulsos ou um projeto."
        columns={[
          { header: '#', width: '40px', render: (i) => i.seq },
          {
            header: 'Descrição',
            render: (i) => (
              <>
                <div>{i.descricao}</div>
                <div className="muted" style={{ fontSize: 12 }}>
                  {i.produto_codigo}
                  {i.orcamento_projeto_id && <> · <Badge tone="blue">{projetoNome(i.orcamento_projeto_id)}</Badge></>}
                </div>
              </>
            ),
          },
          { header: 'Ambiente', render: (i) => i.ambiente },
          {
            header: 'L x A (mm)',
            render: (i) => (
              <>
                {medidas(i.largura_mm, i.altura_mm)}
                {medidasCalculadas(i) && <div className="muted" style={{ fontSize: 12 }}>calc. {medidasCalculadas(i)}</div>}
              </>
            ),
          },
          { header: 'Qtd.', align: 'right', render: (i) => decimal(i.quantidade, i.quantidade % 1 ? 3 : 0) },
          { header: 'Cobrado', align: 'right', render: (i) => `${decimal(i.medida_cobrada, i.unidade === 'M2' || i.unidade === 'ML' ? 4 : 3)} ${i.unidade}` },
          { header: 'Preço unit.', align: 'right', render: (i) => money(i.preco_unitario) },
          { header: 'Desc.', align: 'right', render: (i) => (i.desconto_valor ? money(i.desconto_valor) : '') },
          { header: 'Total', align: 'right', render: (i) => <b>{money(i.total)}</b> },
          {
            header: '',
            align: 'right',
            render: (i) =>
              editavel && (
                <span style={{ whiteSpace: 'nowrap' }}>
                  <button className="btn small" onClick={() => setEditando(i)} disabled={busy}>Editar</button>{' '}
                  <button className="btn small danger" onClick={() => window.confirm(`Remover o item ${i.seq}?`) && onRemover(i.id)} disabled={busy}>✕</button>
                </span>
              ),
          },
        ]}
      />
      {editando && (
        <ItemEditModal key={editando.id} item={editando} busy={busy} onFechar={() => setEditando(null)} onSalvar={(patch) => onAtualizar(editando.id, patch)} />
      )}
    </>
  );
}
