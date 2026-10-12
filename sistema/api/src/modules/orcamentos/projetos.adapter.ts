import type { ModuloOptions } from '../../shared/contracts.js';
import type { ProjetosPort } from './ports.js';
// Único ponto do módulo que conhece a implementação de Projetos. Pendência: incluir `projetos: ProjetosPort`
// em shared/contracts.ts (Ports) e ligar `new ProjetoService()` em composition.ts; então este arquivo
// passa a só devolver opts.ports.projetos e o import abaixo sai.
import { ProjetoService } from '../projetos/projeto.service.js';

/** Obtém a porta de Projetos: a da composição, se existir; senão a implementação padrão. */
export function criarProjetosPort(opts: ModuloOptions): ProjetosPort {
  const daComposicao = (opts.ports as { projetos?: ProjetosPort }).projetos;
  return daComposicao ?? new ProjetoService();
}
