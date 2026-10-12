import type { Db } from '../../lib/db.js';
import { emTransacao, type ContextoImportacao, type Etapa } from '../contexto.js';
import { inserirLinhas } from '../gravador.js';

export interface ConsultaOrigem {
  sql: string;
  chave: string[];
  params?: unknown[];
}

/** Linha convertida pronta para gravar, ou motivo para ignorar. */
export type Conversao = { valores: unknown[] } | { ignorar: string };

/**
 * Etapa padrão: lê a origem em lotes, pula o que já foi importado (legado_mapa), converte cada linha
 * e grava o lote numa transação junto com o mapeamento. Subclasses só descrevem a consulta e a conversão.
 */
export abstract class EtapaPorLote<L extends Record<string, any>> implements Etapa {
  abstract readonly nome: string;
  /** Nome da entidade em legado_mapa. */
  abstract readonly entidade: string;
  abstract readonly tabela: string;
  abstract readonly colunas: string[];

  protected abstract consulta(ctx: ContextoImportacao): ConsultaOrigem;
  protected abstract chaveLegada(linha: L): string;
  protected abstract converter(linha: L, ctx: ContextoImportacao): Promise<Conversao> | Conversao;

  /** Gancho para carregar dados de apoio antes de começar. */
  protected async preparar(_ctx: ContextoImportacao): Promise<void> {}
  /** Gancho para gravar dependentes do lote (ex.: itens do orçamento), na mesma transação. */
  protected async aposGravar(_db: Db, _linhas: L[], _ids: number[], _ctx: ContextoImportacao): Promise<void> {}

  async executar(ctx: ContextoImportacao): Promise<void> {
    await this.preparar(ctx);
    const jaImportados = await ctx.mapa.carregar(this.entidade);
    const q = this.consulta(ctx);
    for await (const lote of ctx.origem.lotes<L>(q.sql, q.chave, q.params ?? [], ctx.opcoes.tamanhoLote)) {
      ctx.relatorio.contar(this.nome, 'lidos', lote.length);
      const novos: L[] = [];
      const valores: unknown[][] = [];
      for (const linha of lote) {
        if (jaImportados.has(this.chaveLegada(linha))) continue;
        const c = await this.converter(linha, ctx);
        if ('ignorar' in c) {
          ctx.relatorio.contar(this.nome, 'ignorados');
          ctx.relatorio.avisar(this.nome, c.ignorar);
          continue;
        }
        novos.push(linha);
        valores.push(c.valores);
      }
      if (!novos.length) continue;
      await emTransacao(ctx.destino, async (db) => {
        const ids = await inserirLinhas(db, this.tabela, this.colunas, valores);
        await ctx.mapa.registrar(db, this.entidade, novos.map((l, i) => [this.chaveLegada(l), ids[i]]));
        await this.aposGravar(db, novos, ids, ctx);
      });
      ctx.relatorio.contar(this.nome, 'gravados', novos.length);
      ctx.log(`  ${this.nome}: ${ctx.relatorio.dados().etapas[this.nome]?.gravados ?? 0} gravados`);
    }
  }
}

/** Gera nomes únicos: se já existir, acrescenta o código do sistema anterior. */
export class NomesUnicos {
  private readonly usados: Set<string>;
  constructor(existentes: Iterable<string>) {
    this.usados = new Set([...existentes].map((n) => n.toLowerCase()));
  }
  reservar(nome: string, codigo: string): string {
    let n = nome;
    if (this.usados.has(n.toLowerCase())) n = `${nome} (${codigo})`;
    let i = 2;
    while (this.usados.has(n.toLowerCase())) n = `${nome} (${codigo}-${i++})`;
    this.usados.add(n.toLowerCase());
    return n;
  }
}
