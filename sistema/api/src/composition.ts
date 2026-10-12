// Raiz de composição: único ponto que conhece as implementações concretas das portas entre módulos.
import type { Ports } from './shared/contracts.js';
import { getPool } from './lib/db.js';
import { AuthService } from './modules/auth/auth.service.js';
import { CredenciaisRepository } from './modules/auth/credenciais.repository.js';
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

/** Serviço de autenticação único (usado pelo hook de sessão e pelas rotas de login). */
export function criarAuth(): AuthService {
  return new AuthService(new CredenciaisRepository(getPool()));
}
