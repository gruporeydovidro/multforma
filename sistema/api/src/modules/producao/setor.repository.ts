import { query, queryOne, type Db } from '../../lib/db.js';
import { RoteiroProducao, type SetorRoteiro } from './domain/index.js';

export interface SetorDados {
  nome: string;
  ordem: number;
  ativo: boolean;
}

/** Acesso à tabela setor_producao. */
export class SetorRepository {
  constructor(private readonly db: Db) {}

  listar(ativo?: boolean): Promise<SetorRoteiro[]> {
    return query<SetorRoteiro>(
      'select id, nome, ordem, ativo from setor_producao where ($1::boolean is null or ativo = $1) order by ordem, id',
      [ativo ?? null],
      this.db,
    );
  }

  async roteiro(): Promise<RoteiroProducao> {
    return new RoteiroProducao(await this.listar());
  }

  criar(s: SetorDados): Promise<SetorRoteiro | undefined> {
    return queryOne<SetorRoteiro>('insert into setor_producao (nome, ordem, ativo) values ($1,$2,$3) returning id, nome, ordem, ativo', [s.nome, s.ordem, s.ativo], this.db);
  }

  atualizar(id: number, s: SetorDados): Promise<SetorRoteiro | undefined> {
    return queryOne<SetorRoteiro>(
      'update setor_producao set nome = $2, ordem = $3, ativo = $4 where id = $1 returning id, nome, ordem, ativo',
      [id, s.nome, s.ordem, s.ativo],
      this.db,
    );
  }

  async excluir(id: number): Promise<boolean> {
    return !!(await queryOne('delete from setor_producao where id = $1 returning id', [id], this.db));
  }
}
