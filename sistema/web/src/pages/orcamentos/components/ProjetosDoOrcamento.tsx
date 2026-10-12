import { DataTable } from '../../../components/ui';
import { money } from '../../../lib/format';
import type { Orcamento } from '../api';
import { medidas } from '../regras';

/** Projetos incluídos no orçamento; remover um projeto remove também os itens dele. */
export function ProjetosDoOrcamento({ orcamento, editavel, busy, onRemover }: {
  orcamento: Orcamento;
  /** Vendedor com o orçamento aberto (regras.permissoesOrcamento). */
  editavel: boolean;
  busy: boolean;
  onRemover: (projetoId: number) => Promise<unknown>;
}) {
  if (orcamento.projetos.length === 0) return null;
  return (
    <DataTable
      rows={orcamento.projetos}
      rowKey={(p) => p.id}
      columns={[
        { header: 'Projeto', render: (p) => <b>{p.descricao ?? p.projeto_nome}</b> },
        { header: 'Ambiente', render: (p) => p.ambiente },
        { header: 'Vão L x A (mm)', render: (p) => medidas(p.largura_vao_mm, p.altura_vao_mm) },
        { header: 'Qtd.', align: 'right', render: (p) => p.quantidade },
        { header: 'Vidro', render: (p) => p.vidro_nome ?? '—' },
        { header: 'Total', align: 'right', render: (p) => money(p.total) },
        {
          header: '',
          align: 'right',
          render: (p) =>
            editavel && (
              <button className="btn small danger" disabled={busy} onClick={() => window.confirm('Remover o projeto e todos os itens dele?') && onRemover(p.id)}>
                Remover
              </button>
            ),
        },
      ]}
    />
  );
}
