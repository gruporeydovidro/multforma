import { CadastroService } from './base/cadastro.service.js';
import type { EmTransacao } from './base/transacao.js';
import type { FiltroComAtivo, TabelaPrecoCriar, TabelaPrecoEditar } from './cadastros.schemas.js';
import type { TabelaPreco, TabelaPrecoRepository } from './tabela-preco.repository.js';

/** Tabelas de preço; os preços por produto ficam no agregado produto. */
export class TabelaPrecoService extends CadastroService<TabelaPreco, TabelaPreco, FiltroComAtivo, TabelaPrecoCriar, TabelaPrecoEditar> {
  constructor(tabelas: TabelaPrecoRepository, transacao: EmTransacao<TabelaPrecoRepository>) {
    super(tabelas, { nome: 'Tabela de preço', genero: 'f' }, transacao);
  }
}
