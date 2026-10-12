-- Rastreabilidade da importação do sistema anterior (SG-Vidros).
-- Cada registro importado guarda a chave original, o que permite rodar a importação de novo sem duplicar.
create table legado_mapa (
  entidade text not null,
  chave text not null,
  id integer not null,
  importado_em timestamptz not null default now(),
  primary key (entidade, chave)
);
create index legado_mapa_id_idx on legado_mapa (entidade, id);
