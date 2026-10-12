import { useState } from 'react';
import { Link } from 'react-router-dom';
import { Alert, Card, Input, PageHeader, TextArea } from '../../components/ui';
import { money } from '../../lib/format';
import { estoqueApi, type ResultadoMovimento } from './api';
import { ProdutoSelect } from './components/ProdutoSelect';
import { numero, previaCustoMedio, qtd } from './format';
import { useEnvio, useSaldoProduto } from './hooks';
import { formVazio, montarRequisicao, TITULOS, type ModoMovimento, type MovimentoForm } from './movimento-form';

function enviar(r: Exclude<ReturnType<typeof montarRequisicao>, { erro: string }>): Promise<ResultadoMovimento> {
  if (r.modo === 'entrada') return estoqueApi.entrada(r.body);
  if (r.modo === 'saida') return estoqueApi.saida(r.body);
  return estoqueApi.acerto(r.body);
}

/** Tela de entrada, saída ou acerto de estoque. */
export function MovimentoFormPage({ modo }: { modo: ModoMovimento }) {
  const [form, setForm] = useState<MovimentoForm>(formVazio);
  const [sucesso, setSucesso] = useState('');
  const envio = useEnvio();
  const saldo = useSaldoProduto(form.produto_id);
  const p = saldo.data;
  const t = TITULOS[modo];
  const set = (patch: Partial<MovimentoForm>) => setForm((f) => ({ ...f, ...patch }));

  const quantidade = numero(form.quantidade);
  const custo = numero(form.custo_unitario);
  const contado = numero(form.saldo_contado);

  const salvar = async () => {
    setSucesso('');
    const r = montarRequisicao(modo, form);
    if ('erro' in r) return envio.setError(r.erro);
    const res = await envio.run(() => enviar(r));
    if (!res) return;
    const extra = res.diferenca !== undefined ? ` Diferença: ${res.diferenca > 0 ? '+' : ''}${qtd(res.diferenca)}.` : '';
    setSucesso(`${t.sucesso} Saldo atual: ${qtd(res.saldo)}. Custo médio: ${money(res.custo)}.${extra}`);
    setForm(formVazio(form.produto_id));
    saldo.reload();
  };

  return (
    <>
      <PageHeader title={t.titulo} actions={<Link className="btn" to="/estoque/saldos">Saldos</Link>} />
      <Alert kind="success">{sucesso}</Alert>
      <Alert>{envio.error}</Alert>
      <Card>
        <div className="grid">
          <ProdutoSelect className="col-6" value={form.produto_id} onChange={(produto_id) => set({ produto_id })} />
          <div className="col-6">
            {p && (
              <div className="stats" style={{ marginBottom: 0 }}>
                <div className="stat"><div className="label">Saldo atual</div><div className="value" style={{ color: p.abaixo_minimo ? 'var(--danger)' : undefined }}>{qtd(p.saldo)} {p.unidade_venda}</div></div>
                <div className="stat"><div className="label">Mínimo</div><div className="value">{qtd(p.estoque_minimo)}</div></div>
                <div className="stat"><div className="label">Custo médio</div><div className="value">{money(p.custo)}</div></div>
              </div>
            )}
            {p && !p.controla_estoque && <Alert>Este produto não controla estoque.</Alert>}
          </div>

          {modo === 'acerto' ? (
            <Input
              label="Saldo contado"
              className="col-3"
              inputMode="decimal"
              value={form.saldo_contado}
              onChange={(e) => set({ saldo_contado: e.target.value })}
              hint={p && contado !== null ? `Diferença: ${contado - p.saldo > 0 ? '+' : ''}${qtd(contado - p.saldo)}` : undefined}
            />
          ) : (
            <Input label="Quantidade" className="col-3" inputMode="decimal" value={form.quantidade} onChange={(e) => set({ quantidade: e.target.value })} />
          )}
          {modo === 'entrada' && (
            <Input
              label="Custo unitário (opcional)"
              className="col-3"
              inputMode="decimal"
              value={form.custo_unitario}
              onChange={(e) => set({ custo_unitario: e.target.value })}
              hint={p && quantidade && custo !== null ? `Novo custo médio: ${money(previaCustoMedio(p.saldo, p.custo, quantidade, custo))}` : 'Sem custo, o custo médio não muda.'}
            />
          )}
          {modo !== 'acerto' && <Input label="Documento" className="col-3" value={form.documento} onChange={(e) => set({ documento: e.target.value })} placeholder={modo === 'entrada' ? 'Nº da nota fiscal' : ''} />}
          <TextArea label="Observação" className="col-12" value={form.observacao} onChange={(e) => set({ observacao: e.target.value })} />
        </div>
        <div className="actions" style={{ marginTop: 12, justifyContent: 'flex-end' }}>
          <button className="btn primary" disabled={envio.busy} onClick={salvar}>{envio.busy ? 'Salvando…' : t.botao}</button>
        </div>
      </Card>
    </>
  );
}
