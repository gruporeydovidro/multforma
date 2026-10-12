import type { SessionUser } from '../../lib/auth.js';
import type { Dados } from './base/cadastro.repository.js';
import { CadastroService } from './base/cadastro.service.js';
import type { FiltroComAtivo, FilialCriar, FilialEditar } from './cadastros.schemas.js';
import { CpfCnpj } from './domain/cpf-cnpj.js';
import { ErroDeValidacao } from './domain/erros.js';
import type { Filial, FilialRepository } from './filial.repository.js';

/** Filiais: CNPJ validado quando informado; o usuário não pode desativar a filial em que está logado. */
export class FilialService extends CadastroService<Filial, Filial, FiltroComAtivo, FilialCriar, FilialEditar> {
  constructor(filiais: FilialRepository) {
    super(filiais, { nome: 'Filial', genero: 'f' });
  }

  protected prepararCriacao(dados: FilialCriar): Dados {
    return { ...dados, cnpj: this.cnpj(dados.cnpj) };
  }

  protected prepararEdicao(dados: FilialEditar, atual: Filial, autor: SessionUser): Dados {
    if (dados.ativo === false && atual.id === autor.filial_id) {
      throw new ErroDeValidacao('ativo', 'Você não pode desativar a filial em que está logado');
    }
    return dados.cnpj === undefined ? dados : { ...dados, cnpj: this.cnpj(dados.cnpj) };
  }

  protected antesDeExcluir(id: number, autor: SessionUser): void {
    if (id === autor.filial_id) throw new ErroDeValidacao('id', 'Você não pode excluir a filial em que está logado');
  }

  private cnpj(valor: string | null | undefined): string | null {
    return valor ? CpfCnpj.exigir(valor, 'cnpj', 'cnpj').formatado : null;
  }
}
