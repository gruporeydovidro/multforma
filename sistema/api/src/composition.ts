// Raiz de composição: único ponto que conhece as implementações concretas das portas entre módulos.
import type { Ports } from './shared/contracts.js';
import { CatalogoService } from './modules/cadastros/catalogo.service.js';
import { EstoqueService, repositoriosEstoque } from './modules/estoque/service.js';
import { FinanceiroService } from './modules/financeiro/service.js';
import { ProducaoService, repositoriosProducao } from './modules/producao/service.js';
import { ProjetoService } from './modules/projetos/projeto.service.js';

export function criarPorts(): Ports {
  return {
    estoque: new EstoqueService(repositoriosEstoque),
    financeiro: new FinanceiroService(),
    producao: new ProducaoService(repositoriosProducao),
    projetos: new ProjetoService(),
    catalogo: new CatalogoService(),
  };
}
