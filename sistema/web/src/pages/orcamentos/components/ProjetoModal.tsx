import { useState } from 'react';
import { Alert, AsyncSelect, DataTable, Input, Modal, Select } from '../../../components/ui';
import { decimal, money } from '../../../lib/format';
import { apoioApi, orcamentosApi, type PreviaProjeto, type ProjetoInput } from '../api';
import { useEnvio, useProjetosAtivos } from '../hooks';
import { medidas } from '../regras';

/** Inclusão de projeto: escolha do gabarito, vão L x A, vidro, quantidade e prévia precificada pelo servidor. */
export function ProjetoModal({ orcamentoId, open, busy, error, onFechar, onIncluir }: {
  orcamentoId: number;
  open: boolean;
  busy: boolean;
  /** Erro da inclusão (vem do estado do orçamento). */
  error?: string;
  onFechar: () => void;
  onIncluir: (p: ProjetoInput) => Promise<unknown>;
}) {
  const projetos = useProjetosAtivos();
  const [p, setP] = useState({ projeto_id: '', ambiente: '', largura: '', altura: '', quantidade: '1', vidro: null as number | null });
  const [previa, setPrevia] = useState<PreviaProjeto>();
  const envio = useEnvio();
  const set = (k: keyof typeof p, v: string | number | null) => {
    setP((a) => ({ ...a, [k]: v }));
    setPrevia(undefined);
  };

  const dados = (): ProjetoInput => ({
    projeto_id: Number(p.projeto_id),
    ambiente: p.ambiente || null,
    largura_vao_mm: Number(p.largura),
    altura_vao_mm: Number(p.altura),
    quantidade: Number(p.quantidade) || 1,
    vidro_produto_id: p.vidro,
  });
  const completo = !!p.projeto_id && Number(p.largura) > 0 && Number(p.altura) > 0;

  const verPrevia = () => envio.run(async () => setPrevia(await orcamentosApi.previaProjeto(orcamentoId, dados())));
  const incluir = async () => {
    envio.setError('');
    const r = await onIncluir(dados());
    if (r) {
      setPrevia(undefined);
      onFechar();
    }
  };

  return (
    <Modal
      title="Incluir projeto"
      open={open}
      onClose={onFechar}
      wide
      footer={
        <>
          <button className="btn" onClick={onFechar}>Cancelar</button>
          <button className="btn" onClick={verPrevia} disabled={!completo || envio.busy}>Prévia</button>
          <button className="btn primary" onClick={incluir} disabled={!completo || envio.busy || busy}>Incluir no orçamento</button>
        </>
      }
    >
      <Alert>{envio.error || error || projetos.error}</Alert>
      <div className="grid">
        <Select className="col-6" label="Projeto" value={p.projeto_id} onChange={(e) => set('projeto_id', e.target.value)}>
          <option value="">Selecione…</option>
          {projetos.data?.map((x) => <option key={x.id} value={x.id}>{x.nome}</option>)}
        </Select>
        <Input className="col-6" label="Ambiente" list="ambientes-orcamento" value={p.ambiente} onChange={(e) => set('ambiente', e.target.value)} />
        <Input className="col-3" label="Largura do vão (mm)" type="number" min={1} value={p.largura} onChange={(e) => set('largura', e.target.value)} />
        <Input className="col-3" label="Altura do vão (mm)" type="number" min={1} value={p.altura} onChange={(e) => set('altura', e.target.value)} />
        <Input className="col-2" label="Quantidade" type="number" min={1} value={p.quantidade} onChange={(e) => set('quantidade', e.target.value)} />
        <AsyncSelect className="col-4" label="Vidro" value={p.vidro} fetchOptions={apoioApi.buscarProdutos} onChange={(v) => set('vidro', v)} placeholder="Vidro das peças sem produto" />
      </div>
      {previa && (
        <div style={{ marginTop: 14 }}>
          <DataTable
            rows={previa.itens}
            rowKey={(i) => `${i.descricao}-${i.produto_id}`}
            columns={[
              { header: 'Peça', render: (i) => i.descricao },
              { header: 'L x A (mm)', render: (i) => medidas(i.largura_mm, i.altura_mm) },
              { header: 'Qtd.', align: 'right', render: (i) => decimal(i.quantidade, i.quantidade % 1 ? 3 : 0) },
              { header: 'Cobrado', align: 'right', render: (i) => `${decimal(i.medida_cobrada, 4)} ${i.unidade}` },
              { header: 'Preço unit.', align: 'right', render: (i) => money(i.preco_unitario) },
              { header: 'Total', align: 'right', render: (i) => money(i.total) },
            ]}
            footer={
              <tr>
                <td colSpan={5} className="right">Total do projeto</td>
                <td className="right">{money(previa.total)}</td>
              </tr>
            }
          />
        </div>
      )}
    </Modal>
  );
}
