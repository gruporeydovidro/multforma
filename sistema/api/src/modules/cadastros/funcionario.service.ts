import { CadastroService } from './base/cadastro.service.js';
import type { FuncionarioCriar, FuncionarioEditar, FuncionarioFiltro } from './cadastros.schemas.js';
import type { Funcionario, FuncionarioRepository } from './funcionario.repository.js';

/** Funcionários (vendedores e instaladores). */
export class FuncionarioService extends CadastroService<Funcionario, Funcionario, FuncionarioFiltro, FuncionarioCriar, FuncionarioEditar> {
  constructor(funcionarios: FuncionarioRepository) {
    super(funcionarios, { nome: 'Funcionário', genero: 'm' });
  }
}
