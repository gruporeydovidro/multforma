import { query, queryOne, type Db } from '../../lib/db.js';

export interface MotivoDefeito {
  id: number;
  descricao: string;
}

/** Acesso à tabela motivo_defeito. */
export class MotivoRepository {
  constructor(private readonly db: Db) {}

  listar(): Promise<MotivoDefeito[]> {
    return query<MotivoDefeito>('select id, descricao from motivo_defeito order by descricao', [], this.db);
  }

  async existe(id: number): Promise<boolean> {
    return !!(await queryOne('select 1 from motivo_defeito where id = $1', [id], this.db));
  }

  criar(descricao: string): Promise<MotivoDefeito | undefined> {
    return queryOne<MotivoDefeito>('insert into motivo_defeito (descricao) values ($1) returning id, descricao', [descricao], this.db);
  }

  atualizar(id: number, descricao: string): Promise<MotivoDefeito | undefined> {
    return queryOne<MotivoDefeito>('update motivo_defeito set descricao = $2 where id = $1 returning id, descricao', [id, descricao], this.db);
  }

  async excluir(id: number): Promise<boolean> {
    return !!(await queryOne('delete from motivo_defeito where id = $1 returning id', [id], this.db));
  }
}
