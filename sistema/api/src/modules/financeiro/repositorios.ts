import { queryOne, type Db } from '../../lib/db.js';
import { CaixaRepository } from './caixa.repository.js';
import { ContaPagarRepository, ContaReceberRepository } from './titulo.repository.js';

/** Consultas de apoio (somente leitura) a tabelas de outros módulos e ao relógio do banco. */
export class ApoioRepository {
  constructor(private readonly db: Db) {}

  /** Data corrente do banco (evita divergência de fuso entre API e PostgreSQL). */
  async hoje(): Promise<string> {
    const r = await queryOne<{ d: string }>('select current_date as d', [], this.db);
    return r!.d;
  }

  /** Tipo cadastral da pessoa ('cliente' | 'fornecedor' | 'ambos'), ou undefined se não existir. */
  async tipoPessoa(id: number): Promise<string | undefined> {
    return (await queryOne<{ tipo: string }>('select tipo from pessoa where id = $1', [id], this.db))?.tipo;
  }
}

export interface RepositoriosFinanceiro {
  receber: ContaReceberRepository;
  pagar: ContaPagarRepository;
  caixa: CaixaRepository;
  apoio: ApoioRepository;
}

/** Cria os repositórios ligados a uma conexão/transação. */
export type FabricaRepositorios = (db: Db) => RepositoriosFinanceiro;

export const criarRepositorios: FabricaRepositorios = (db) => ({
  receber: new ContaReceberRepository(db),
  pagar: new ContaPagarRepository(db),
  caixa: new CaixaRepository(db),
  apoio: new ApoioRepository(db),
});
