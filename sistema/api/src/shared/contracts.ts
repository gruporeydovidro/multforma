import type { Db } from '../lib/db.js';

// Portas entre módulos (inversão de dependência): um módulo depende destas interfaces,
// nunca da classe concreta de outro módulo. As implementações são ligadas em src/composition.ts.
// Todos os métodos recebem `db` para participar da transação de quem chama.

export interface MovimentoEstoqueInput {
  filial_id: number;
  produto_id: number;
  tipo: 'entrada' | 'saida' | 'acerto';
  origem: 'compra' | 'venda' | 'acerto' | 'producao' | 'manual';
  /** Sempre positiva para entrada/saída; em acerto, o sinal indica a direção. */
  quantidade: number;
  custo_unitario?: number | null;
  documento?: string | null;
  referencia_id?: number | null;
  observacao?: string | null;
  usuario_id?: number | null;
}

export interface EstoquePort {
  registrarMovimento(db: Db, m: MovimentoEstoqueInput): Promise<number>;
  saldo(db: Db, filialId: number, produtoId: number): Promise<number>;
}

export interface ParcelaInput {
  numero: number;
  vencimento: string; // YYYY-MM-DD
  valor: number;
  forma_pagamento: string;
}

export interface GerarContasReceberInput {
  filial_id: number;
  cliente_id: number;
  orcamento_id: number | null;
  documento: string;
  parcelas: ParcelaInput[];
}

export interface BaixaContaReceberInput {
  id: number;
  valor: number;
  data: string;
  forma_pagamento: string;
  usuario_id: number | null;
}

export interface FinanceiroPort {
  gerarContasReceber(db: Db, args: GerarContasReceberInput): Promise<number[]>;
  baixarContaReceber(db: Db, args: BaixaContaReceberInput): Promise<void>;
}

export interface ProducaoPort {
  /** Gera a ordem de produção de um orçamento fechado; null se não houver itens produzíveis. */
  criarOrdemProducao(db: Db, orcamentoId: number): Promise<number | null>;
}

/** Vão a que um projeto é aplicado no orçamento (mm). */
export interface VaoProjeto {
  largura_vao_mm: number;
  altura_vao_mm: number;
  quantidade: number;
  vidro_produto_id: number | null;
}

/** Peça gerada pela expansão de um projeto (sem preço). */
export interface PecaProjetoExpandida {
  descricao: string;
  tipo: string;
  produto_id: number;
  quantidade: number;
  largura_mm: number | null;
  altura_mm: number | null;
}

export interface ProjetosPort {
  /** Expande um gabarito para um vão, dentro da transação de quem chama. */
  expandir(db: Db, projetoId: number, vao: VaoProjeto): Promise<{ id: number; nome: string; pecas: PecaProjetoExpandida[] }>;
}

/** Operações de escrita no cadastro de produtos pedidas por outros módulos. */
export interface CatalogoPort {
  atualizarCusto(db: Db, produtoId: number, custo: number): Promise<void>;
}

export interface Ports {
  estoque: EstoquePort;
  financeiro: FinanceiroPort;
  producao: ProducaoPort;
  projetos: ProjetosPort;
  catalogo: CatalogoPort;
}

/** Opções recebidas por todo plugin de módulo em modules/index.ts. */
export interface ModuloOptions {
  ports: Ports;
}
