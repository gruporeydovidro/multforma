import type { FiltroBase } from './base/consulta.js';
import { CadastroService } from './base/cadastro.service.js';
import type { ArredondamentoCriar, ArredondamentoEditar } from './cadastros.schemas.js';
import type { Arredondamento, ArredondamentoRepository } from './arredondamento.repository.js';

/** Arredondamentos de medida usados no cálculo de vidros. */
export class ArredondamentoService extends CadastroService<Arredondamento, Arredondamento, FiltroBase, ArredondamentoCriar, ArredondamentoEditar> {
  constructor(arredondamentos: ArredondamentoRepository) {
    super(arredondamentos, { nome: 'Arredondamento', genero: 'm' });
  }
}
