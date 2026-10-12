import { conflict } from '../../lib/http.js';
import type { Dados } from './base/cadastro.repository.js';
import { CadastroService } from './base/cadastro.service.js';
import type { EmTransacao } from './base/transacao.js';
import type { PessoaCriar, PessoaEditar, PessoaFiltro } from './cadastros.schemas.js';
import { DocumentoDaPessoa, type Natureza } from './domain/pessoa.js';
import type { Pessoa, PessoaItem, PessoaRepository } from './pessoa.repository.js';

/** Clientes e fornecedores: CPF/CNPJ validado conforme a natureza e único no cadastro. */
export class PessoaService extends CadastroService<Pessoa, PessoaItem, PessoaFiltro, PessoaCriar, PessoaEditar> {
  constructor(private readonly pessoas: PessoaRepository, transacao: EmTransacao<PessoaRepository>) {
    super(pessoas, { nome: 'Cliente/fornecedor', genero: 'm' }, transacao);
  }

  protected async prepararCriacao(dados: PessoaCriar): Promise<Dados> {
    return { ...dados, cpf_cnpj: await this.documento(dados.natureza, dados.cpf_cnpj) };
  }

  protected async prepararEdicao(dados: PessoaEditar, atual: Pessoa): Promise<Dados> {
    if (dados.natureza === undefined && dados.cpf_cnpj === undefined) return dados;
    const documento = dados.cpf_cnpj !== undefined ? dados.cpf_cnpj : atual.cpf_cnpj;
    return { ...dados, cpf_cnpj: await this.documento(dados.natureza ?? atual.natureza, documento, atual.id) };
  }

  private async documento(natureza: Natureza, documento: string | null | undefined, excetoId?: number): Promise<string | null> {
    const normalizado = DocumentoDaPessoa.normalizar(natureza, documento);
    if (normalizado && (await this.pessoas.documentoEmUso(normalizado, excetoId))) {
      throw conflict('Já existe um cadastro com este CPF/CNPJ');
    }
    return normalizado;
  }
}
