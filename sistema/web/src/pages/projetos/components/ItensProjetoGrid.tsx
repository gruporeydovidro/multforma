import { AsyncSelect } from '../../../components/ui';
import { projetosApi, TIPOS_ITEM, type ItemProjeto, type TipoItem } from '../api';

/** Grade editável dos itens do projeto (gabarito). */
export function ItensProjetoGrid({ itens, onChange, onAdd, onRemove, onMove, disabled }: {
  itens: ItemProjeto[];
  onChange: (i: number, patch: Partial<ItemProjeto>) => void;
  onAdd: () => void;
  onRemove: (i: number) => void;
  onMove: (i: number, delta: -1 | 1) => void;
  disabled?: boolean;
}) {
  return (
    <>
      <div className="table-wrap">
        <table className="table">
          <thead>
            <tr>
              <th style={{ width: 40 }}>#</th>
              <th>Descrição</th>
              <th style={{ width: 120 }}>Tipo</th>
              <th style={{ minWidth: 220 }}>Produto</th>
              <th style={{ width: 80 }}>Qtd.</th>
              <th style={{ width: 130 }}>Fórmula largura</th>
              <th style={{ width: 130 }}>Fórmula altura</th>
              <th style={{ width: 85 }}>Folga L (mm)</th>
              <th style={{ width: 85 }}>Folga A (mm)</th>
              <th style={{ width: 110 }} />
            </tr>
          </thead>
          <tbody>
            {itens.length === 0 && (
              <tr><td colSpan={10} className="muted center">Nenhum item. Inclua as peças, ferragens e serviços do projeto.</td></tr>
            )}
            {itens.map((it, i) => (
              <tr key={i}>
                <td className="muted">{i + 1}</td>
                <td>
                  <input value={it.descricao} placeholder="Ex.: Folha fixa" onChange={(e) => onChange(i, { descricao: e.target.value })} disabled={disabled} />
                </td>
                <td>
                  <select value={it.tipo} onChange={(e) => onChange(i, { tipo: e.target.value as TipoItem })} disabled={disabled}>
                    {TIPOS_ITEM.map((t) => <option key={t.value} value={t.value}>{t.label}</option>)}
                  </select>
                </td>
                <td>
                  <AsyncSelect
                    label=""
                    value={it.produto_id}
                    initialLabel={it.produto_nome ?? ''}
                    placeholder={it.tipo === 'vidro' ? 'Vidro escolhido no orçamento' : 'Buscar produto…'}
                    fetchOptions={projetosApi.buscarProdutos}
                    onChange={(v, o) => onChange(i, { produto_id: v, produto_nome: o?.label ?? null })}
                    disabled={disabled}
                  />
                </td>
                <td>
                  <input type="number" min={0} step="any" value={it.quantidade} onChange={(e) => onChange(i, { quantidade: Number(e.target.value) })} disabled={disabled} />
                </td>
                <td>
                  <input value={it.formula_largura ?? ''} placeholder="Ex.: L/2 + 25" onChange={(e) => onChange(i, { formula_largura: e.target.value })} disabled={disabled} />
                </td>
                <td>
                  <input value={it.formula_altura ?? ''} placeholder="Ex.: A" onChange={(e) => onChange(i, { formula_altura: e.target.value })} disabled={disabled} />
                </td>
                <td>
                  <input type="number" step={1} value={it.folga_largura_mm} onChange={(e) => onChange(i, { folga_largura_mm: Number(e.target.value) })} disabled={disabled} />
                </td>
                <td>
                  <input type="number" step={1} value={it.folga_altura_mm} onChange={(e) => onChange(i, { folga_altura_mm: Number(e.target.value) })} disabled={disabled} />
                </td>
                <td className="right">
                  <button type="button" className="btn small ghost" title="Subir" onClick={() => onMove(i, -1)} disabled={disabled || i === 0}>↑</button>
                  <button type="button" className="btn small ghost" title="Descer" onClick={() => onMove(i, 1)} disabled={disabled || i === itens.length - 1}>↓</button>
                  <button type="button" className="btn small danger" title="Remover" onClick={() => onRemove(i)} disabled={disabled}>✕</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <div className="actions" style={{ marginTop: 10, justifyContent: 'space-between' }}>
        <button type="button" className="btn" onClick={onAdd} disabled={disabled}>+ Incluir item</button>
        <span className="hint">
          Fórmulas: números, <b>L</b> (largura do vão) e <b>A</b> (altura do vão), + − × ÷, parênteses, min() e max(). Medidas em mm; a folga é subtraída do resultado.
          Sem fórmula, o item usa só a quantidade.
        </span>
      </div>
    </>
  );
}
