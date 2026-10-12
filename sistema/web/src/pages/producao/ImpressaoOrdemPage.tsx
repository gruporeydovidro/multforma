import { useNavigate, useParams } from 'react-router-dom';
import { Alert } from '../../components/ui';
import { date, dateTime, decimal } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { producaoApi } from './api';
import { areaM2, medidas, quantidade, STATUS_ORDEM } from './format';

const cel = { border: '1px solid #999', padding: '6px 8px' } as const;

/** Ordem de produção para impressão (window.print), com as medidas das peças e os setores para visto. */
export function ImpressaoOrdemPage() {
  const id = Number(useParams().id);
  const navigate = useNavigate();
  const { data: o, error } = useAsync(() => producaoApi.ordem(id), [id]);
  if (error) return <Alert>{error}</Alert>;
  if (!o) return <div className="muted">Carregando…</div>;
  const totalM2 = o.itens.reduce((s, i) => s + (areaM2(i) ?? 0), 0);

  return (
    <div style={{ background: '#fff', padding: 24, maxWidth: 1000 }}>
      <div className="no-print actions" style={{ marginBottom: 16 }}>
        <button className="btn" onClick={() => navigate(`/producao/ordens/${o.id}`)}>Voltar</button>
        <button className="btn primary" onClick={() => window.print()}>Imprimir</button>
      </div>
      <div style={{ display: 'flex', justifyContent: 'space-between', borderBottom: '2px solid #000', paddingBottom: 8 }}>
        <div>
          <h1>Ordem de produção nº {o.numero}</h1>
          <div>Orçamento nº {o.orcamento_numero} — emitido em {date(o.orcamento_data)}</div>
        </div>
        <div style={{ textAlign: 'right' }}>
          <div><strong>Previsão de entrega:</strong> {date(o.previsao_entrega) || '—'}</div>
          <div>Status: {STATUS_ORDEM[o.status].label}</div>
          <div className="muted">Impresso em {dateTime(new Date().toISOString())}</div>
        </div>
      </div>
      <div style={{ margin: '12px 0' }}>
        <div><strong>Cliente:</strong> {o.cliente_nome} {[o.cliente_telefone, o.cliente_celular].filter(Boolean).join(' / ')}</div>
        {o.contato && <div><strong>Contato:</strong> {o.contato}</div>}
        {o.endereco_entrega && <div><strong>Entrega:</strong> {o.endereco_entrega}</div>}
        {o.observacoes && <div><strong>Observações:</strong> {o.observacoes}</div>}
      </div>
      <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: 13 }}>
        <thead>
          <tr>
            <th style={cel}>#</th>
            <th style={{ ...cel, textAlign: 'left' }}>Peça</th>
            <th style={cel}>Qtd</th>
            <th style={cel}>Largura (mm)</th>
            <th style={cel}>Altura (mm)</th>
            <th style={cel}>m²</th>
            {o.setores.map((s) => <th key={s.id} style={cel}>{s.nome}</th>)}
          </tr>
        </thead>
        <tbody>
          {o.itens.map((i, n) => (
            <tr key={i.id}>
              <td style={cel}>{n + 1}</td>
              <td style={cel}>
                {i.produto_codigo} — {i.descricao}
                {i.ambiente && <div style={{ fontSize: 11 }}>{i.ambiente}</div>}
              </td>
              <td style={{ ...cel, textAlign: 'right' }}>{quantidade(i.quantidade)}</td>
              <td style={{ ...cel, textAlign: 'right', fontWeight: 700 }}>{i.largura_mm ?? '—'}</td>
              <td style={{ ...cel, textAlign: 'right', fontWeight: 700 }}>{i.altura_mm ?? '—'}</td>
              <td style={{ ...cel, textAlign: 'right' }}>{areaM2(i) === null ? '—' : decimal(areaM2(i), 3)}</td>
              {o.setores.map((s) => <td key={s.id} style={{ ...cel, width: 70 }} title={medidas(i)} />)}
            </tr>
          ))}
        </tbody>
        <tfoot>
          <tr>
            <td style={cel} colSpan={5}><strong>Total</strong></td>
            <td style={{ ...cel, textAlign: 'right' }}><strong>{decimal(totalM2, 3)}</strong></td>
            <td style={cel} colSpan={o.setores.length} />
          </tr>
        </tfoot>
      </table>
      <p style={{ fontSize: 12, marginTop: 24 }}>Visto de cada setor nas colunas à direita ao concluir a peça.</p>
    </div>
  );
}
