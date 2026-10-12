-- VidroGest: esquema base (MVP).
-- Modelo inspirado nas entidades observadas na engenharia reversa (ver ../../../../engenharia-reversa/README.md),
-- redesenhado para PostgreSQL. Dinheiro em numeric(14,2); medidas em milímetros (integer).

create table filial (
  id serial primary key,
  nome text not null,
  cnpj text,
  inscricao_estadual text,
  telefone text,
  email text,
  cep text, logradouro text, numero text, complemento text, bairro text, cidade text, uf char(2),
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);

create table usuario (
  id serial primary key,
  nome text not null,
  login text not null unique,
  senha_hash text not null,
  perfil text not null check (perfil in ('admin','vendedor','producao','financeiro')),
  filial_id integer not null references filial(id),
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);

-- Emitente do sistema original: clientes e fornecedores no mesmo cadastro.
create table pessoa (
  id serial primary key,
  tipo text not null check (tipo in ('cliente','fornecedor','ambos')),
  natureza char(1) not null default 'F' check (natureza in ('F','J')),
  nome text not null,
  fantasia text,
  cpf_cnpj text,
  rg_ie text,
  email text,
  telefone text,
  celular text,
  cep text, logradouro text, numero text, complemento text, bairro text, cidade text, uf char(2),
  limite_credito numeric(14,2) not null default 0,
  observacoes text,
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);
create index pessoa_nome_idx on pessoa (lower(nome));
create unique index pessoa_cpf_cnpj_uq on pessoa (cpf_cnpj) where cpf_cnpj is not null and cpf_cnpj <> '';

create table funcionario (
  id serial primary key,
  nome text not null,
  cargo text,
  telefone text,
  email text,
  vendedor boolean not null default false,
  instalador boolean not null default false,
  comissao_pct numeric(6,3) not null default 0,
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);

create table grupo_produto (
  id serial primary key,
  nome text not null unique
);

-- Arredondamento: cada dimensão é arredondada para cima ao múltiplo de valor_cm.
create table arredondamento (
  id serial primary key,
  descricao text not null,
  valor_cm integer not null check (valor_cm > 0)
);

create table tabela_preco (
  id serial primary key,
  nome text not null unique,
  ativo boolean not null default true
);

-- unidade_venda: M2 (área), ML (metro linear/perímetro), UN (unidade), PC (peça), KG.
create table produto (
  id serial primary key,
  codigo text not null unique,
  nome text not null,
  tipo text not null default 'produto' check (tipo in ('produto','servico')),
  grupo_id integer references grupo_produto(id),
  unidade_venda text not null default 'UN' check (unidade_venda in ('M2','ML','UN','PC','KG')),
  espessura_mm numeric(6,2),
  perda_pct numeric(6,3) not null default 0,
  arredondamento_id integer references arredondamento(id),
  area_minima_m2 numeric(10,4) not null default 0,
  custo numeric(14,4) not null default 0,
  preco_venda numeric(14,4) not null default 0,
  estoque_minimo numeric(14,4) not null default 0,
  controla_estoque boolean not null default true,
  ncm text,
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);
create index produto_nome_idx on produto (lower(nome));

create table produto_preco (
  tabela_preco_id integer not null references tabela_preco(id) on delete cascade,
  produto_id integer not null references produto(id) on delete cascade,
  preco numeric(14,4) not null,
  primary key (tabela_preco_id, produto_id)
);

-- Projeto (gabarito de esquadria/box/janela). As fórmulas usam L e A (largura e altura do vão, em mm).
create table projeto (
  id serial primary key,
  nome text not null,
  descricao text,
  ativo boolean not null default true,
  criado_em timestamptz not null default now()
);

create table projeto_item (
  id serial primary key,
  projeto_id integer not null references projeto(id) on delete cascade,
  descricao text not null,
  tipo text not null default 'vidro' check (tipo in ('vidro','ferragem','acessorio','servico')),
  -- null em item do tipo vidro = usa o vidro escolhido no orçamento
  produto_id integer references produto(id),
  quantidade numeric(10,3) not null default 1,
  formula_largura text,
  formula_altura text,
  folga_largura_mm integer not null default 0,
  folga_altura_mm integer not null default 0,
  ordem integer not null default 0
);

create table orcamento (
  id serial primary key,
  filial_id integer not null references filial(id),
  numero integer not null,
  cliente_id integer not null references pessoa(id),
  vendedor_id integer references funcionario(id),
  tabela_preco_id integer references tabela_preco(id),
  data_emissao date not null default current_date,
  validade date,
  prazo_entrega date,
  status text not null default 'aberto' check (status in ('aberto','aprovado','fechado','cancelado')),
  destino text not null default 'producao' check (destino in ('producao','balcao','instalacao')),
  contato text,
  endereco_entrega text,
  observacoes text,
  subtotal numeric(14,2) not null default 0,
  desconto_pct numeric(6,3) not null default 0,
  desconto_valor numeric(14,2) not null default 0,
  acrescimo_valor numeric(14,2) not null default 0,
  frete_valor numeric(14,2) not null default 0,
  total numeric(14,2) not null default 0,
  forma_pagamento text,
  criado_por integer references usuario(id),
  criado_em timestamptz not null default now(),
  fechado_em timestamptz,
  unique (filial_id, numero)
);

create table orcamento_projeto (
  id serial primary key,
  orcamento_id integer not null references orcamento(id) on delete cascade,
  projeto_id integer not null references projeto(id),
  descricao text,
  ambiente text,
  largura_vao_mm integer not null,
  altura_vao_mm integer not null,
  quantidade integer not null default 1,
  vidro_produto_id integer references produto(id),
  total numeric(14,2) not null default 0
);

create table orcamento_item (
  id serial primary key,
  orcamento_id integer not null references orcamento(id) on delete cascade,
  orcamento_projeto_id integer references orcamento_projeto(id) on delete cascade,
  seq integer not null,
  produto_id integer not null references produto(id),
  descricao text not null,
  ambiente text,
  unidade text not null,
  quantidade numeric(12,3) not null default 1,
  largura_mm integer,
  altura_mm integer,
  largura_calc_mm integer,
  altura_calc_mm integer,
  medida_cobrada numeric(14,4) not null default 0,
  preco_unitario numeric(14,4) not null default 0,
  desconto_valor numeric(14,2) not null default 0,
  total numeric(14,2) not null default 0
);
create index orcamento_item_orc_idx on orcamento_item (orcamento_id);

create table orcamento_parcela (
  id serial primary key,
  orcamento_id integer not null references orcamento(id) on delete cascade,
  numero integer not null,
  vencimento date not null,
  valor numeric(14,2) not null,
  forma_pagamento text not null
);

create table setor_producao (
  id serial primary key,
  nome text not null unique,
  ordem integer not null default 0,
  ativo boolean not null default true
);

create table motivo_defeito (
  id serial primary key,
  descricao text not null unique
);

create table ordem_producao (
  id serial primary key,
  filial_id integer not null references filial(id),
  numero integer not null,
  orcamento_id integer not null references orcamento(id),
  status text not null default 'aguardando' check (status in ('aguardando','em_producao','concluida','cancelada')),
  previsao_entrega date,
  observacoes text,
  criado_em timestamptz not null default now(),
  iniciado_em timestamptz,
  concluido_em timestamptz,
  unique (filial_id, numero)
);

create table ordem_producao_item (
  id serial primary key,
  ordem_id integer not null references ordem_producao(id) on delete cascade,
  orcamento_item_id integer references orcamento_item(id),
  produto_id integer not null references produto(id),
  descricao text not null,
  quantidade numeric(12,3) not null,
  largura_mm integer,
  altura_mm integer,
  setor_atual_id integer references setor_producao(id),
  status text not null default 'pendente' check (status in ('pendente','em_producao','concluido','defeito'))
);

create table producao_marcacao (
  id serial primary key,
  ordem_item_id integer not null references ordem_producao_item(id) on delete cascade,
  setor_id integer not null references setor_producao(id),
  usuario_id integer references usuario(id),
  quantidade numeric(12,3) not null,
  defeito boolean not null default false,
  motivo_id integer references motivo_defeito(id),
  observacao text,
  criado_em timestamptz not null default now()
);

-- Quantidade com sinal: positiva entra, negativa sai. Saldo = soma por filial/produto.
create table estoque_movimento (
  id serial primary key,
  filial_id integer not null references filial(id),
  produto_id integer not null references produto(id),
  tipo text not null check (tipo in ('entrada','saida','acerto')),
  origem text not null check (origem in ('compra','venda','acerto','producao','manual')),
  quantidade numeric(14,4) not null,
  custo_unitario numeric(14,4),
  documento text,
  referencia_id integer,
  observacao text,
  usuario_id integer references usuario(id),
  criado_em timestamptz not null default now()
);
create index estoque_mov_prod_idx on estoque_movimento (filial_id, produto_id);

create view estoque_saldo as
  select filial_id, produto_id, sum(quantidade)::numeric(14,4) as saldo
  from estoque_movimento group by filial_id, produto_id;

create table conta_receber (
  id serial primary key,
  filial_id integer not null references filial(id),
  cliente_id integer not null references pessoa(id),
  orcamento_id integer references orcamento(id),
  documento text,
  parcela integer not null default 1,
  emissao date not null default current_date,
  vencimento date not null,
  valor numeric(14,2) not null check (valor > 0),
  valor_pago numeric(14,2) not null default 0,
  data_pagamento date,
  forma_pagamento text,
  status text not null default 'aberto' check (status in ('aberto','pago','cancelado')),
  observacao text,
  criado_em timestamptz not null default now()
);
create index conta_receber_venc_idx on conta_receber (filial_id, status, vencimento);

create table conta_pagar (
  id serial primary key,
  filial_id integer not null references filial(id),
  fornecedor_id integer references pessoa(id),
  documento text,
  descricao text not null,
  categoria text,
  parcela integer not null default 1,
  emissao date not null default current_date,
  vencimento date not null,
  valor numeric(14,2) not null check (valor > 0),
  valor_pago numeric(14,2) not null default 0,
  data_pagamento date,
  forma_pagamento text,
  status text not null default 'aberto' check (status in ('aberto','pago','cancelado')),
  observacao text,
  criado_em timestamptz not null default now()
);
create index conta_pagar_venc_idx on conta_pagar (filial_id, status, vencimento);

create table caixa_lancamento (
  id serial primary key,
  filial_id integer not null references filial(id),
  data date not null default current_date,
  tipo text not null check (tipo in ('entrada','saida')),
  valor numeric(14,2) not null check (valor > 0),
  descricao text not null,
  forma_pagamento text,
  conta_receber_id integer references conta_receber(id),
  conta_pagar_id integer references conta_pagar(id),
  usuario_id integer references usuario(id),
  criado_em timestamptz not null default now()
);

create table log_sistema (
  id bigserial primary key,
  usuario_id integer references usuario(id),
  acao text not null,
  entidade text,
  entidade_id integer,
  detalhes jsonb,
  criado_em timestamptz not null default now()
);
