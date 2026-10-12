import { getPool, type Db } from '../../lib/db.js';
import { emTransacao } from './base/transacao.js';
import { ArredondamentoRepository } from './arredondamento.repository.js';
import { ArredondamentoService } from './arredondamento.service.js';
import { FilialRepository } from './filial.repository.js';
import { FilialService } from './filial.service.js';
import { FuncionarioRepository } from './funcionario.repository.js';
import { FuncionarioService } from './funcionario.service.js';
import { GrupoRepository } from './grupo.repository.js';
import { GrupoService } from './grupo.service.js';
import { PessoaRepository } from './pessoa.repository.js';
import { PessoaService } from './pessoa.service.js';
import { ProdutoRepository } from './produto.repository.js';
import { ProdutoService } from './produto.service.js';
import { TabelaPrecoRepository } from './tabela-preco.repository.js';
import { TabelaPrecoService } from './tabela-preco.service.js';
import { UsuarioRepository } from './usuario.repository.js';
import { UsuarioService } from './usuario.service.js';

export type ServicosCadastros = ReturnType<typeof criarServicosCadastros>;

/**
 * Monta os services do módulo: leituras com os repositórios ligados ao pool (ou a outro `db`) e gravações
 * com a fábrica `emTransacao`, que cria os repositórios com o client da transação.
 */
export function criarServicosCadastros(db: Db = getPool()) {
  return {
    pessoas: new PessoaService(new PessoaRepository(db), emTransacao((tx) => new PessoaRepository(tx))),
    produtos: new ProdutoService(new ProdutoRepository(db), emTransacao((tx) => new ProdutoRepository(tx))),
    funcionarios: new FuncionarioService(new FuncionarioRepository(db), emTransacao((tx) => new FuncionarioRepository(tx))),
    grupos: new GrupoService(new GrupoRepository(db), emTransacao((tx) => new GrupoRepository(tx))),
    arredondamentos: new ArredondamentoService(new ArredondamentoRepository(db), emTransacao((tx) => new ArredondamentoRepository(tx))),
    tabelasPreco: new TabelaPrecoService(new TabelaPrecoRepository(db), emTransacao((tx) => new TabelaPrecoRepository(tx))),
    filiais: new FilialService(new FilialRepository(db), emTransacao((tx) => new FilialRepository(tx))),
    usuarios: new UsuarioService(new UsuarioRepository(db), emTransacao((tx) => new UsuarioRepository(tx))),
  };
}
