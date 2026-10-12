import type { ContextoImportacao } from '../contexto.js';
import { cep, documento, flag, telefone, texto } from '../conversores.js';
import { EtapaPorLote, NomesUnicos, type Conversao, type ConsultaOrigem } from './base.js';

/** Filiais. A primeira filial do sistema anterior assume a "Matriz" criada na instalação, se ela ainda não tiver vínculo. */
export class FiliaisEtapa extends EtapaPorLote<any> {
  readonly nome = 'Filiais';
  readonly entidade = 'filial';
  readonly tabela = 'filial';
  readonly colunas = ['nome', 'cnpj', 'inscricao_estadual', 'telefone', 'email', 'cep', 'logradouro', 'numero', 'complemento', 'bairro', 'cidade', 'uf'];

  protected consulta(): ConsultaOrigem {
    return {
      sql: `select f.cd_filial, f.nm_filial, f.nr_documento, f.nr_inscestadual, f.nr_telefone, f.ds_email, f.nr_cep, f.ds_endereco,
                   f.ds_numero, f.ds_complemento, f.nm_bairro, c.nm_cidade, c.sg_estado
              from filial f left join cidade c on c.cd_cidade = f.cd_cidade`,
      chave: ['cd_filial'],
    };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_filial);
  }
  private valores(l: any): unknown[] {
    return [texto(l.nm_filial) ?? `Filial ${l.cd_filial}`, documento(l.nr_documento).valor, texto(l.nr_inscestadual), telefone(l.nr_telefone), texto(l.ds_email),
      cep(l.nr_cep), texto(l.ds_endereco), texto(l.ds_numero), texto(l.ds_complemento), texto(l.nm_bairro), texto(l.nm_cidade), texto(l.sg_estado, 2)];
  }
  protected converter(l: any): Conversao {
    return { valores: this.valores(l) };
  }

  /** Antes do lote padrão: vincula a filial de instalação à primeira do legado. */
  protected async preparar(ctx: ContextoImportacao) {
    const mapa = await ctx.mapa.carregar(this.entidade);
    if (mapa.size) return;
    const [instalacao] = (await ctx.destino.query(`select id from filial where id not in (select id from legado_mapa where entidade = 'filial') order by id limit 1`)).rows;
    const [primeira] = await ctx.origem.consultar(`${this.consulta().sql} order by f.cd_filial limit 1`);
    if (!instalacao || !primeira) return;
    const v = this.valores(primeira);
    await ctx.destino.query(
      `update filial set nome=$2, cnpj=$3, inscricao_estadual=$4, telefone=$5, email=$6, cep=$7, logradouro=$8, numero=$9, complemento=$10, bairro=$11, cidade=$12, uf=$13 where id=$1`,
      [instalacao.id, ...v],
    );
    await ctx.mapa.registrar(ctx.destino, this.entidade, [[String(primeira.cd_filial), instalacao.id]]);
  }
}

export class TabelasPrecoEtapa extends EtapaPorLote<any> {
  readonly nome = 'Tabelas de preço';
  readonly entidade = 'tabela_preco';
  readonly tabela = 'tabela_preco';
  readonly colunas = ['nome', 'ativo'];
  private nomes!: NomesUnicos;

  protected async preparar(ctx: ContextoImportacao) {
    this.nomes = new NomesUnicos((await ctx.destino.query('select nome from tabela_preco')).rows.map((r) => r.nome));
  }
  protected consulta(): ConsultaOrigem {
    return { sql: 'select cd_tabela, ds_tabela, fl_ativa from produto_tblpreco', chave: ['cd_tabela'] };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_tabela).trim();
  }
  protected converter(l: any): Conversao {
    const codigo = String(l.cd_tabela).trim();
    return { valores: [this.nomes.reservar(texto(l.ds_tabela) ?? codigo, codigo), flag(l.fl_ativa, true)] };
  }
}

export class GruposEtapa extends EtapaPorLote<any> {
  readonly nome = 'Grupos de produto';
  readonly entidade = 'grupo_produto';
  readonly tabela = 'grupo_produto';
  readonly colunas = ['nome'];
  private nomes!: NomesUnicos;

  protected async preparar(ctx: ContextoImportacao) {
    this.nomes = new NomesUnicos((await ctx.destino.query('select nome from grupo_produto')).rows.map((r) => r.nome));
  }
  protected consulta(): ConsultaOrigem {
    return { sql: 'select cd_grupo, nm_grupo from grupo', chave: ['cd_grupo'] };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_grupo);
  }
  protected converter(l: any): Conversao {
    return { valores: [this.nomes.reservar(texto(l.nm_grupo) ?? `Grupo ${l.cd_grupo}`, String(l.cd_grupo))] };
  }
}

export class ArredondamentosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Arredondamentos';
  readonly entidade = 'arredondamento';
  readonly tabela = 'arredondamento';
  readonly colunas = ['descricao', 'valor_cm'];

  protected consulta(): ConsultaOrigem {
    return { sql: 'select cd_arredondamento, ds_arredondamento, vl_arredondamento from arredondamento', chave: ['cd_arredondamento'] };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_arredondamento);
  }
  protected converter(l: any): Conversao {
    const cm = Math.trunc(Number(l.vl_arredondamento));
    if (!(cm > 0)) return { ignorar: 'arredondamento com valor zero ou inválido' };
    return { valores: [texto(l.ds_arredondamento) ?? `${cm} cm`, Math.min(cm, 1000)] };
  }
}
