import type { ContextoImportacao, Etapa } from './contexto.js';
import { formula, statusOrcamento } from './conversores.js';
import { ArredondamentosEtapa, FiliaisEtapa, GruposEtapa, TabelasPrecoEtapa } from './etapas/cadastros-basicos.js';
import { CaixaEtapa, ContasPagarEtapa, ContasReceberEtapa } from './etapas/financeiro.js';
import { OrcamentosEtapa } from './etapas/orcamentos.js';
import { FuncionariosEtapa, PessoasEtapa } from './etapas/pessoas.js';
import { EstoqueInicialEtapa, PrecosEtapa, ProdutosEtapa, ProjetosEtapa } from './etapas/produtos.js';
import { UsuariosEtapa } from './etapas/usuarios.js';

/** Tabelas e colunas da origem que a importação usa (conferidas no modo verificação). */
export const COLUNAS_ORIGEM: Record<string, string[]> = {
  filial: ['cd_filial', 'nm_filial', 'nr_documento', 'cd_tabela'],
  cidade: ['cd_cidade', 'nm_cidade', 'sg_estado'],
  emitente: ['cd_emitente', 'nm_emitente', 'tp_pessoa', 'nr_documento', 'nr_endereco'],
  emitente_endereco: ['cd_emitente', 'nr_endereco', 'ds_endereco', 'cd_cidade'],
  funcionario: ['cd_funcionario', 'nm_funcionario'],
  grupo: ['cd_grupo', 'nm_grupo', 'qt_areaminima'],
  arredondamento: ['cd_arredondamento', 'vl_arredondamento'],
  produto_tblpreco: ['cd_tabela', 'ds_tabela', 'fl_ativa'],
  produto: ['cd_produto', 'nm_produto', 'fl_produto', 'sg_venda', 'fl_ativo', 'cd_arredondamento'],
  produto_preco: ['cd_tabela', 'cd_produto', 'vl_venda', 'vl_custo'],
  projeto: ['cd_projeto', 'nm_projeto'],
  projeto_item: ['cd_projeto', 'nr_item', 'tp_item', 'cd_produto', 'ds_form_altura', 'ds_form_largura'],
  projeto_peca: ['cd_peca', 'ds_peca'],
  projeto_parte: ['cd_parte', 'ds_parte'],
  usuario: ['cd_usuario', 'nm_usuario'],
  usuario_filial: ['cd_usuario', 'cd_filial'],
  estoque_saldo: ['cd_filial', 'cd_produto', 'qt_saldo'],
  portador: ['cd_portador', 'fl_pagamento'],
  orcamento: ['cd_filial', 'nr_orcamento', 'dt_emissao', 'st_orcamento', 'dt_cancelamento', 'cd_emitente'],
  orcamento_total: ['cd_filial', 'nr_orcamento', 'vl_orcamento'],
  orcamento_item: ['cd_filial', 'nr_orcamento', 'nr_item', 'cd_produto', 'qt_item', 'vl_unitario'],
  orcamento_item_total: ['cd_filial', 'nr_orcamento', 'nr_item', 'vl_venda'],
  orcamento_parcela: ['cd_filial', 'nr_orcamento', 'nr_parcela', 'dt_vencimento', 'vl_parcela', 'cd_portador'],
  receber: ['cd_filial', 'nr_receber', 'dt_emissao', 'cd_emitente', 'dt_cancelamento'],
  receber_parcela: ['cd_filial', 'nr_receber', 'nr_parcela', 'dt_vencimento', 'vl_parcela', 'vl_recebido'],
  receber_historico: ['cd_filial', 'nr_receber', 'nr_parcela', 'tp_lancamento', 'dt_lancamento'],
  pagar: ['cd_filial', 'nr_pagar', 'dt_emissao', 'cd_emitente', 'ds_pagar', 'dt_cancelamento'],
  pagar_parcela: ['cd_filial', 'nr_pagar', 'nr_parcela', 'dt_vencimento', 'vl_parcela', 'vl_pago'],
  pagar_historico: ['cd_filial', 'nr_pagar', 'nr_parcela', 'tp_lancamento', 'dt_lancamento'],
  caixa: ['cd_filial', 'nr_lancamento', 'dt_lancamento', 'vl_lancamento'],
};

/** Orquestra as etapas na ordem de dependência, conforme o escopo escolhido. */
export class Importador {
  constructor(private readonly ctx: ContextoImportacao) {}

  etapas(): Etapa[] {
    const cadastros: Etapa[] = [
      new FiliaisEtapa(), new TabelasPrecoEtapa(), new GruposEtapa(), new ArredondamentosEtapa(), new PessoasEtapa(), new FuncionariosEtapa(),
      new ProdutosEtapa(), new PrecosEtapa(), new ProjetosEtapa(), new UsuariosEtapa(), new EstoqueInicialEtapa(),
    ];
    if (this.ctx.opcoes.escopo === 'cadastros') return cadastros;
    return [...cadastros, new OrcamentosEtapa(), new ContasReceberEtapa(), new ContasPagarEtapa(), new CaixaEtapa()];
  }

  async executar(): Promise<void> {
    for (const etapa of this.etapas()) {
      this.ctx.log(`> ${etapa.nome}`);
      await etapa.executar(this.ctx);
    }
  }

  /** Só leitura: confere a estrutura da origem e mostra o que seria importado. Não grava nada. */
  async verificar(): Promise<{ ok: boolean; texto: string }> {
    const { origem, opcoes } = this.ctx;
    const out: string[] = [];
    let ok = true;
    for (const [tabela, cols] of Object.entries(COLUNAS_ORIGEM)) {
      const existentes = await origem.colunas(tabela);
      const faltando = cols.filter((c) => !existentes.has(c));
      if (!existentes.size || faltando.length) {
        ok = false;
        out.push(`FALTA ${tabela}: ${existentes.size ? faltando.join(', ') : '(tabela não encontrada)'}`);
      }
    }
    if (!ok) return { ok, texto: out.join('\n') };
    out.push('Estrutura da origem: OK', '');

    const um = async (sql: string, params: unknown[] = []) => (await origem.consultar(sql, params))[0];
    const recente = opcoes.escopo === 'recente';
    const contagens: [string, string, unknown[]][] = [
      ['Filiais', 'select count(*) n from filial', []],
      ['Clientes/fornecedores', 'select count(*) n from emitente', []],
      ['Produtos', 'select count(*) n from produto', []],
      ['Projetos', 'select count(*) n from projeto', []],
      ['Usuários', 'select count(*) n from usuario', []],
    ];
    if (opcoes.escopo !== 'cadastros') {
      contagens.push(
        ['Orçamentos', `select count(*) n from orcamento o ${recente ? `where o.dt_emissao >= $1::date or (o.dt_cancelamento is null and coalesce(o.st_orcamento,'') not in ('9','2','5'))` : ''}`, recente ? [opcoes.desde] : []],
        ['Parcelas a receber', `select count(*) n from receber_parcela p join receber r using (cd_filial, nr_receber) ${recente ? 'where r.dt_emissao >= $1::date or (r.dt_cancelamento is null and coalesce(p.vl_recebido,0) < p.vl_parcela)' : ''}`, recente ? [opcoes.desde] : []],
        ['Parcelas a pagar', `select count(*) n from pagar_parcela p join pagar g using (cd_filial, nr_pagar) ${recente ? 'where g.dt_emissao >= $1::date or (g.dt_cancelamento is null and coalesce(p.vl_pago,0) < p.vl_parcela)' : ''}`, recente ? [opcoes.desde] : []],
        ['Lançamentos de caixa', `select count(*) n from caixa ${recente ? 'where dt_lancamento >= $1::date' : ''}`, recente ? [opcoes.desde] : []],
      );
    }
    out.push(`Escopo: ${opcoes.escopo}${recente ? ` (desde ${opcoes.desde}, mais o que está em aberto)` : ''}`);
    for (const [nome, sql, params] of contagens) out.push(`  ${nome.padEnd(24)} ${(await um(sql, params)).n}`);

    out.push('', 'Situação dos orçamentos (código → como será importado):');
    for (const r of await origem.consultar(`select st_orcamento, (dt_cancelamento is not null) cancelado, count(*) n from orcamento group by 1, 2 order by 1, 2`)) {
      out.push(`  '${r.st_orcamento ?? ''}'${r.cancelado ? ' + data de cancelamento' : ''}: ${r.n} → ${statusOrcamento(r.st_orcamento, r.cancelado)}`);
    }
    out.push('', 'Tipo de produto (fl_produto):');
    for (const r of await origem.consultar(`select fl_produto, count(*) n from produto group by 1 order by 1`)) out.push(`  '${r.fl_produto ?? ''}': ${r.n}`);
    out.push('', 'Unidade de venda (sg_venda):');
    for (const r of await origem.consultar(`select sg_venda, count(*) n from produto group by 1 order by 2 desc`)) out.push(`  '${r.sg_venda ?? ''}': ${r.n}`);
    out.push('', 'Fórmulas de projeto (amostra) → convertida:');
    const formulas = await origem.consultar(
      `select f, count(*) n from (select ds_form_largura f from projeto_item union all select ds_form_altura from projeto_item) x where coalesce(trim(f), '') <> '' group by f order by 2 desc limit 15`,
    );
    for (const r of formulas) {
      const c = formula(r.f);
      out.push(`  "${r.f}" (${r.n}x) → ${c.texto ?? `NÃO CONVERTIDA: ${c.aviso}`}`);
    }
    return { ok, texto: out.join('\n') };
  }
}
