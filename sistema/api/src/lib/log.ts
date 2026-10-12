import { query, type Db } from './db.js';

export async function logAcao(db: Db, usuarioId: number | null, acao: string, entidade?: string, entidadeId?: number, detalhes?: unknown) {
  await query(
    'insert into log_sistema (usuario_id, acao, entidade, entidade_id, detalhes) values ($1,$2,$3,$4,$5)',
    [usuarioId, acao, entidade ?? null, entidadeId ?? null, detalhes ? JSON.stringify(detalhes) : null],
    db,
  );
}
