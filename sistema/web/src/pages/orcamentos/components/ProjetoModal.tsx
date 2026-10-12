import { useEffect, useState } from 'react';
import { Alert, AsyncSelect, DataTable, Input, Modal, Select } from '../../../components/ui';
import { decimal, money } from '../../../lib/format';
import { lerNumero } from '../../../lib/numero';
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
  const vazio = { projeto_id: '', ambiente: '', largura: '', altura: '', quantidade: '1', vidro: null as number | null };
  const [p, setP] = useState(vazio);
  const [previa, setPrevia] = useState<PreviaProjeto>();
  const [chave, setChave] = useState(0); // recria o AsyncSelect do vidro para limpar o texto
  const envio = useEnvio();
  const { setError } = envio;
  // Limpa ao fechar (depois de incluir ou cancelar) e ao abrir: a reabertura nunca mostra dados antigos.
  useEffect(() => {
    setP(vazio);
    setPrevia(undefined);
    setError('');
    setChave((k) => k + 1);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [open, setError]);
  const set = (k: keyof typeof p, v: string | number | null) => {
    setP((a) => ({ ...a, [k]: v }));
    setPrevia(undefined);
  };

  const inteiroPositivo = (s: string) => {
    const n = lerNumero(s);
    return n !== null && Number.isInteger(n) && n > 0 ? n : null;
  };
  const largura = inteiroPositivo(p.largura);
  const altura = inteiroPositivo(p.altura);
  const quantidade = inteiroPositivo(p.quantidade);
  const dados = (): ProjetoInput => ({
    projeto_id: Number(p.projeto_id),
    ambiente: p.ambiente.trim() || null,
    largura_vao_mm: largura!,
    altura_vao_mm: altura!,
    quantidade: quantidade!,
    vidro_produto_id: p.vidro,
  });
  const completo = !!p.projeto_id && largura !== null && altura !== null && quantidade !== null;
  const invalido = (s: string, n: number | null) => (s.trim() && n === null ? 'Número inteiro maior que zero' : undefined);

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
        <Input className="col-3" label="Largura do vão (mm)" inputMode="numeric" value={p.largura} onChange={(e) => set('largura', e.target.value)} error={invalido(p.largura, largura)} />
        <Input className="col-3" label="Altura do vão (mm)" inputMode="numeric" value={p.altura} onChange={(e) => set('altura', e.target.value)} error={invalido(p.altura, altura)} />
        <Input className="col-2" label="Quantidade" inputMode="numeric" value={p.quantidade} onChange={(e) => set('quantidade', e.target.value)}
          error={p.quantidade.trim() ? invalido(p.quantidade, quantidade) : 'Informe a quantidade'} />
        <AsyncSelect key={chave} className="col-4" label="Vidro" value={p.vidro} fetchOptions={apoioApi.buscarProdutos} onChange={(v) => set('vidro', v)} placeholder="Vidro das peças sem produto" />
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
