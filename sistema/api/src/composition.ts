// Raiz de composição: único ponto que conhece as implementações concretas das portas.
// Ao converter um módulo para classe, troque aqui apenas a linha correspondente.
import type { Ports } from './shared/contracts.js';
import * as estoque from './modules/estoque/service.js';
import * as financeiro from './modules/financeiro/service.js';
import * as producao from './modules/producao/service.js';

export function criarPorts(): Ports {
  return {
    estoque: new estoque.EstoqueService(estoque.repositoriosEstoque), // linha do módulo Estoque
    financeiro: new financeiro.FinanceiroService(), // linha do módulo Financeiro
    producao: new producao.ProducaoService(producao.repositoriosProducao), // linha do módulo Produção
  };
}
