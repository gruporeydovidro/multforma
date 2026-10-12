import type { FiltroBase } from './base/consulta.js';
import { CadastroService } from './base/cadastro.service.js';
import type { GrupoCriar, GrupoEditar } from './cadastros.schemas.js';
import type { Grupo, GrupoRepository } from './grupo.repository.js';

/** Grupos de produto. Sem `ativo`: com produtos vinculados, a exclusão é recusada (409). */
export class GrupoService extends CadastroService<Grupo, Grupo, FiltroBase, GrupoCriar, GrupoEditar> {
  constructor(grupos: GrupoRepository) {
    super(grupos, { nome: 'Grupo', genero: 'm' });
  }
}
