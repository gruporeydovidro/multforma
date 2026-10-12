import type { ContextoImportacao } from '../contexto.js';
import { cep, documento, natureza, telefone, texto } from '../conversores.js';
import { r2 } from '../opcoes.js';
import { EtapaPorLote, type Conversao, type ConsultaOrigem } from './base.js';

/** Clientes e fornecedores (emitente + endereço principal). O tipo é deduzido do uso no sistema anterior. */
export class PessoasEtapa extends EtapaPorLote<any> {
  readonly nome = 'Clientes/fornecedores';
  readonly entidade = 'pessoa';
  readonly tabela = 'pessoa';
  readonly colunas = ['tipo', 'natureza', 'nome', 'fantasia', 'cpf_cnpj', 'rg_ie', 'email', 'telefone', 'celular', 'cep', 'logradouro', 'numero',
    'complemento', 'bairro', 'cidade', 'uf', 'limite_credito', 'observacoes', 'criado_em'];
  private fornecedores = new Set<number>();
  private clientes = new Set<number>();
  private documentos = new Set<string>();

  protected async preparar(ctx: ContextoImportacao) {
    const ids = async (sql: string) => new Set((await ctx.origem.consultar<{ id: number }>(sql)).map((r) => Number(r.id)));
    this.fornecedores = await ids('select distinct cd_emitente as id from pagar where cd_emitente is not null union select distinct cd_emitente from produto where cd_emitente is not null');
    this.clientes = await ids('select distinct cd_emitente as id from orcamento where cd_emitente is not null union select distinct cd_emitente from receber where cd_emitente is not null');
    this.documentos = new Set((await ctx.destino.query(`select cpf_cnpj from pessoa where cpf_cnpj is not null`)).rows.map((r) => r.cpf_cnpj));
  }

  protected consulta(): ConsultaOrigem {
    return {
      sql: `select e.cd_emitente, e.nm_emitente, e.nm_fantasia, e.tp_pessoa, e.nr_documento, e.nr_insc_estadual, e.nr_identidade, e.ds_email,
                   e.vl_limite_credito, e.mm_observacao, e.dt_cadastro,
                   en.ds_endereco, en.ds_numero, en.ds_complemento, en.nm_bairro, en.nr_cep, en.nr_telefone_1, en.nr_celular_1,
                   c.nm_cidade, c.sg_estado
              from emitente e
              left join lateral (
                select * from emitente_endereco x where x.cd_emitente = e.cd_emitente
                 order by (x.nr_endereco = e.nr_endereco) desc, x.nr_endereco limit 1
              ) en on true
              left join cidade c on c.cd_cidade = en.cd_cidade`,
      chave: ['cd_emitente'],
    };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_emitente);
  }
  protected converter(l: any, ctx: ContextoImportacao): Conversao {
    const id = Number(l.cd_emitente);
    const f = this.fornecedores.has(id);
    const c = this.clientes.has(id);
    const tipo = f && c ? 'ambos' : f ? 'fornecedor' : 'cliente';
    const doc = documento(l.nr_documento);
    const obs: string[] = [];
    if (texto(l.mm_observacao)) obs.push(texto(l.mm_observacao)!);
    if (doc.aviso) {
      obs.push(doc.aviso);
      ctx.relatorio.avisar(this.nome, 'documento inválido (gravado nas observações)');
    }
    let cpfCnpj = doc.valor;
    if (cpfCnpj && this.documentos.has(cpfCnpj)) {
      obs.push(`Documento repetido no sistema anterior: ${cpfCnpj}`);
      ctx.relatorio.avisar(this.nome, 'documento repetido (gravado nas observações)');
      cpfCnpj = null;
    }
    if (cpfCnpj) this.documentos.add(cpfCnpj);
    const nat = natureza(l.tp_pessoa);
    return {
      valores: [tipo, nat, texto(l.nm_emitente) ?? `Cadastro ${id}`, texto(l.nm_fantasia), cpfCnpj,
        texto(l.nr_insc_estadual) ?? (nat === 'F' ? texto(l.nr_identidade) : null), texto(l.ds_email),
        telefone(l.nr_telefone_1), telefone(l.nr_celular_1), cep(l.nr_cep), texto(l.ds_endereco), texto(l.ds_numero),
        texto(l.ds_complemento), texto(l.nm_bairro), texto(l.nm_cidade), texto(l.sg_estado, 2), Math.max(0, r2(l.vl_limite_credito)),
        obs.length ? obs.join('\n') : null, l.dt_cadastro ?? new Date()],
    };
  }
}

/** Funcionários. É vendedor quem aparece como vendedor em algum orçamento do sistema anterior. */
export class FuncionariosEtapa extends EtapaPorLote<any> {
  readonly nome = 'Funcionários';
  readonly entidade = 'funcionario';
  readonly tabela = 'funcionario';
  readonly colunas = ['nome', 'cargo', 'telefone', 'email', 'vendedor', 'comissao_pct'];
  private vendedores = new Set<number>();

  protected async preparar(ctx: ContextoImportacao) {
    this.vendedores = new Set(
      (await ctx.origem.consultar<{ id: number }>('select distinct cd_funcionario as id from orcamento where cd_funcionario is not null')).map((r) => Number(r.id)),
    );
  }
  protected consulta(): ConsultaOrigem {
    return { sql: 'select cd_funcionario, nm_funcionario, ds_cargo, nr_telefone, nr_celular, ds_email, pr_comissao from funcionario', chave: ['cd_funcionario'] };
  }
  protected chaveLegada(l: any) {
    return String(l.cd_funcionario);
  }
  protected converter(l: any): Conversao {
    const comissao = Math.min(100, Math.max(0, Number(l.pr_comissao ?? 0)));
    return {
      valores: [texto(l.nm_funcionario) ?? `Funcionário ${l.cd_funcionario}`, texto(l.ds_cargo), telefone(l.nr_celular) ?? telefone(l.nr_telefone),
        texto(l.ds_email), this.vendedores.has(Number(l.cd_funcionario)), comissao],
    };
  }
}
