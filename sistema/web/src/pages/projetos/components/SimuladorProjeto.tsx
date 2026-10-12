import { Alert, AsyncSelect, DataTable, Input } from '../../../components/ui';
import { decimal } from '../../../lib/format';
import { projetosApi } from '../api';
import { useSimulador } from '../hooks';

/** Simula as peças do projeto (salvo) para um vão L x A, sem gravar. */
export function SimuladorProjeto({ projetoId }: { projetoId: number }) {
  const s = useSimulador(projetoId);
  const n = (v: string) => (v === '' ? 0 : Number(v));
  return (
    <>
      <Alert>{s.error}</Alert>
      <div className="grid">
        <Input className="col-2" label="Largura do vão (mm)" type="number" min={1} value={s.vao.largura_vao_mm} onChange={(e) => s.setVao({ ...s.vao, largura_vao_mm: n(e.target.value) })} />
        <Input className="col-2" label="Altura do vão (mm)" type="number" min={1} value={s.vao.altura_vao_mm} onChange={(e) => s.setVao({ ...s.vao, altura_vao_mm: n(e.target.value) })} />
        <Input className="col-2" label="Quantidade" type="number" min={1} value={s.vao.quantidade} onChange={(e) => s.setVao({ ...s.vao, quantidade: n(e.target.value) })} />
        <AsyncSelect className="col-4" label="Vidro" value={s.vao.vidro_produto_id} fetchOptions={projetosApi.buscarProdutos} onChange={(v) => s.setVao({ ...s.vao, vidro_produto_id: v })} />
        <div className="col-2" style={{ display: 'flex', alignItems: 'flex-end' }}>
          <button type="button" className="btn primary block" onClick={s.simular} disabled={s.busy}>Simular</button>
        </div>
      </div>
      {s.pecas && (
        <div style={{ marginTop: 12 }}>
          <DataTable
            rows={s.pecas}
            rowKey={(p) => `${p.projeto_item_id}-${p.descricao}`}
            columns={[
              { header: 'Peça', render: (p) => p.descricao },
              { header: 'Produto', render: (p) => `${p.produto_codigo} - ${p.produto_nome}` },
              { header: 'Un.', render: (p) => p.unidade },
              { header: 'Qtd.', align: 'right', render: (p) => decimal(p.quantidade, 3) },
              { header: 'Largura (mm)', align: 'right', render: (p) => p.largura_mm ?? '—' },
              { header: 'Altura (mm)', align: 'right', render: (p) => p.altura_mm ?? '—' },
            ]}
          />
        </div>
      )}
    </>
  );
}
