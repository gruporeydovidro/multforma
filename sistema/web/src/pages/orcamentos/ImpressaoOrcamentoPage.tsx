import { useParams } from 'react-router-dom';
import { Alert } from '../../components/ui';
import { date, decimal, money } from '../../lib/format';
import type { Orcamento } from './api';
import { useNavegacaoOrcamentos, useOrcamento } from './hooks';
import { DESTINOS, enderecoLinha, FORMAS, medidas, STATUS } from './regras';

// Estilos só deste documento; a navegação some na impressão pelo @media print global.
const css = `
.doc-orc { background: #fff; color: #111; max-width: 900px; margin: 0 auto; padding: 28px 32px; border: 1px solid var(--border); border-radius: 8px; font-size: 13px; }
.doc-orc h1 { font-size: 18px; }
.doc-orc .topo { display: flex; justify-content: space-between; gap: 24px; border-bottom: 2px solid #111; padding-bottom: 12px; margin-bottom: 14px; }
.doc-orc .bloco { border: 1px solid #ccc; border-radius: 6px; padding: 10px 12px; margin-bottom: 14px; }
.doc-orc .bloco h3 { font-size: 11px; text-transform: uppercase; letter-spacing: .05em; color: #555; margin: 0 0 6px; }
.doc-orc .linhas { display: grid; grid-template-columns: repeat(3, 1fr); gap: 4px 16px; }
.doc-orc table { width: 100%; border-collapse: collapse; margin-bottom: 14px; }
.doc-orc th, .doc-orc td { border-bottom: 1px solid #ddd; padding: 5px 6px; text-align: left; vertical-align: top; }
.doc-orc th { font-size: 11px; color: #555; background: #f5f5f5; }
.doc-orc .r { text-align: right; }
.doc-orc .totais { margin-left: auto; width: 300px; }
.doc-orc .totais div { display: flex; justify-content: space-between; padding: 3px 0; }
.doc-orc .total { font-size: 16px; font-weight: 700; border-top: 2px solid #111; margin-top: 4px; padding-top: 6px !important; }
.doc-orc .assinatura { margin-top: 48px; display: flex; gap: 48px; }
.doc-orc .assinatura div { flex: 1; border-top: 1px solid #111; text-align: center; padding-top: 4px; font-size: 12px; }
@media print {
  .doc-orc { border: none; padding: 0; max-width: none; }
  .doc-orc tr { page-break-inside: avoid; }
}
`;

function Documento({ o }: { o: Orcamento }) {
  const f = o.filial;
  const c = o.cliente;
  const t = o.totais;
  return (
    <div className="doc-orc">
      <div className="topo">
        <div>
          <h1>{f.nome}</h1>
          <div>{[f.cnpj && `CNPJ ${f.cnpj}`, f.inscricao_estadual && `IE ${f.inscricao_estadual}`].filter(Boolean).join(' · ')}</div>
          <div>{enderecoLinha(f)}</div>
          <div>{[f.telefone, f.email].filter(Boolean).join(' · ')}</div>
        </div>
        <div style={{ textAlign: 'right' }}>
          <h1>Orçamento nº {o.numero}</h1>
          <div>Emissão: {date(o.data_emissao)}</div>
          {o.validade && <div>Válido até: {date(o.validade)}</div>}
          {o.prazo_entrega && <div>Prazo de entrega: {date(o.prazo_entrega)}</div>}
          <div>Situação: {STATUS[o.status].label}</div>
        </div>
      </div>

      <div className="bloco">
        <h3>Cliente</h3>
        <div><b>{c.nome}</b>{c.fantasia && ` (${c.fantasia})`}</div>
        <div className="linhas">
          {c.cpf_cnpj && <span>CPF/CNPJ: {c.cpf_cnpj}</span>}
          {(c.telefone || c.celular) && <span>Telefone: {[c.telefone, c.celular].filter(Boolean).join(' / ')}</span>}
          {c.email && <span>E-mail: {c.email}</span>}
        </div>
        {enderecoLinha(c) && <div>{enderecoLinha(c)}</div>}
        <div className="linhas" style={{ marginTop: 4 }}>
          {o.vendedor_nome && <span>Vendedor: {o.vendedor_nome}</span>}
          {o.contato && <span>Contato: {o.contato}</span>}
          <span>Destino: {DESTINOS[o.destino]}</span>
        </div>
        {o.endereco_entrega && <div>Local de entrega/instalação: {o.endereco_entrega}</div>}
      </div>

      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Descrição</th>
            <th>Ambiente</th>
            <th className="r">L x A (mm)</th>
            <th className="r">Qtd.</th>
            <th className="r">Cobrado</th>
            <th className="r">Unitário</th>
            <th className="r">Total</th>
          </tr>
        </thead>
        <tbody>
          {o.itens.map((i) => (
            <tr key={i.id}>
              <td>{i.seq}</td>
              <td>{i.descricao}{i.desconto_valor > 0 && <div style={{ fontSize: 11 }}>Desconto: {money(i.desconto_valor)}</div>}</td>
              <td>{i.ambiente}</td>
              <td className="r">{medidas(i.largura_mm, i.altura_mm)}</td>
              <td className="r">{decimal(i.quantidade, i.quantidade % 1 ? 3 : 0)}</td>
              <td className="r">{decimal(i.medida_cobrada, i.unidade === 'M2' || i.unidade === 'ML' ? 3 : 0)} {i.unidade}</td>
              <td className="r">{money(i.preco_unitario)}</td>
              <td className="r">{money(i.total)}</td>
            </tr>
          ))}
        </tbody>
      </table>

      <div className="totais">
        <div><span>Subtotal</span><span>{money(t.subtotal)}</span></div>
        {t.desconto > 0 && <div><span>Desconto{o.desconto_pct > 0 && ` (${o.desconto_pct}%)`}</span><span>− {money(t.desconto)}</span></div>}
        {t.acrescimo > 0 && <div><span>Acréscimo</span><span>{money(t.acrescimo)}</span></div>}
        {t.frete > 0 && <div><span>Frete</span><span>{money(t.frete)}</span></div>}
        <div className="total"><span>Total</span><span>{money(t.total)}</span></div>
      </div>

      {o.parcelas.length > 0 && (
        <div className="bloco" style={{ marginTop: 14 }}>
          <h3>Condições de pagamento</h3>
          {o.parcelas.map((p) => (
            <div key={p.numero}>{p.numero}ª parcela · {date(p.vencimento)} · {FORMAS[p.forma_pagamento]} · {money(p.valor)}</div>
          ))}
        </div>
      )}

      {o.observacoes && (
        <div className="bloco" style={{ marginTop: 14, whiteSpace: 'pre-wrap' }}>
          <h3>Observações</h3>
          {o.observacoes}
        </div>
      )}

      <div className="assinatura">
        <div>{f.nome}</div>
        <div>{c.nome}</div>
      </div>
    </div>
  );
}

/** Versão de impressão do orçamento (window.print). */
export function ImpressaoOrcamentoPage() {
  const { id } = useParams();
  const ir = useNavegacaoOrcamentos();
  const s = useOrcamento(Number(id));
  return (
    <>
      <style>{css}</style>
      <div className="actions no-print" style={{ marginBottom: 12 }}>
        <button className="btn" onClick={() => ir.abrir(Number(id))}>Voltar</button>
        <button className="btn primary" onClick={() => window.print()} disabled={!s.orcamento}>Imprimir</button>
      </div>
      <Alert>{s.error}</Alert>
      {s.orcamento ? <Documento o={s.orcamento} /> : !s.error && <div className="muted">Carregando…</div>}
    </>
  );
}
