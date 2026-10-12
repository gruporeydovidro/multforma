-- Dados fictícios do sistema anterior para o teste da importação. Datas relativas a hoje.
set search_path = multforma;
insert into cidade (cd_cidade, nm_cidade, sg_estado) values (1, 'São Paulo', 'SP');
insert into filial (cd_filial, nm_filial, nr_documento, cd_cidade, cd_tabela) values
  (1, 'Grupo Rey do Vidro Ltda ', '11444777000161', 1, '001'), (2, 'REY DO VIDRO LTDA', null, 1, '001');
insert into emitente (cd_emitente, nm_emitente, tp_pessoa, nr_documento, nr_endereco, ds_email, mm_observacao) values
  (10, 'Mariana Souza', '1', '52998224725', 2, 'mariana@exemplo.com', 'Cliente antigo'),
  (11, 'Distribuidora Repetida', '2', '11222333000181', 1, null, null),
  (12, 'Fornecedor de Chapas', '2', '11444777000161', 1, null, null),
  (13, 'Documento Errado', '1', '12345678900', 1, null, null),
  (14, 'Mariana Duplicada', '1', '52998224725', 1, null, null);
insert into emitente_endereco (cd_emitente, nr_endereco, ds_endereco, ds_numero, nm_bairro, cd_cidade, nr_cep, nr_telefone_1, nr_celular_1) values
  (10, 1, 'Rua Antiga', '1', 'Centro', 1, '01001000', '1133334444', null),
  (10, 2, 'Av. Ibirapuera', '2100', 'Moema', 1, '04029000', null, '11987654321');
insert into funcionario (cd_funcionario, nm_funcionario, ds_cargo, pr_comissao) values (1, 'Ana Vendedora', 'Vendas', 3), (2, 'José Instalador', 'Instalação', 0);
insert into grupo (cd_grupo, nm_grupo, qt_areaminima) values (1, 'Vidros', 0.25), (2, 'Ferragens', 0);
insert into arredondamento (cd_arredondamento, ds_arredondamento, vl_arredondamento) values (1, '5 cm', 5), (2, 'Zerado', 0);
insert into produto_tblpreco (cd_tabela, ds_tabela, fl_ativa) values ('001', 'Padrão', '1'), ('002', 'Atacado', '0');
insert into produto (cd_produto, nm_produto, fl_produto, cd_grupo, sg_venda, cd_arredondamento, fl_ativo, qt_est_minimo, cd_emitente) values
  (100, 'VIDRO TEMPERADO 8MM', '1', 1, 'M2', 1, '1', 10, 12),
  (101, 'INSTALAÇÃO', '2', null, 'UN', null, '1', 0, null),
  (103, 'PERFIL ALUMÍNIO', '1', 2, 'MT', null, '1', 0, null),
  (104, 'PUXADOR', '1', 2, 'PÇ', null, '1', 0, null),
  (102, 'KIT BOX', '1', 2, 'UN', null, '0', 0, null);
insert into produto_preco (cd_tabela, cd_produto, vl_venda, vl_custo) values
  ('001', 100, 300, 120), ('002', 100, 270, 120), ('001', 101, 150, 0), ('001', 102, 200, 90), ('001', 999, 10, 1);
insert into projeto (cd_projeto, nm_projeto, mm_complemento) values (1, 'Box 2 folhas', 'Box frontal');
insert into projeto_peca (cd_peca, ds_peca) values ('FX', 'Folha fixa');
insert into projeto_item (cd_projeto, nr_item, tp_item, cd_produto, qt_item, ds_form_largura, ds_form_altura, cd_peca, nr_altura_folga, nr_largura_folga) values
  (1, 1, '0', null, 1, 'LARGURA/2+25', 'ALTURA-10', 'FX', 0, 0),
  (1, 2, '1', 102, 1, null, null, null, 0, 0),
  (1, 3, '0', null, 1, 'L*(1,5', 'A', null, 5, 0);
insert into usuario (cd_usuario, nm_usuario) values ('ADMIN', 'Administrador antigo'), ('MARIA', 'Maria Caixa');
insert into usuario_filial (cd_usuario, cd_filial) values ('MARIA', 2);
insert into estoque_saldo (cd_filial, cd_produto, qt_saldo) values (1, 100, 12.5), (1, 101, 3);
insert into portador (cd_portador, nm_portador, fl_pagamento) values (1, 'Caixa', '1'), (2, 'Banco', '3');

-- Orçamentos: 1 antigo fechado, 2 recente fechado, 3 antigo em aberto, 4 antigo cancelado
insert into orcamento (cd_filial, nr_orcamento, dt_emissao, st_orcamento, dt_cancelamento, cd_emitente, cd_funcionario, cd_tabela, fl_formapagto,
                       vl_desconto, vl_pedido_frete, nr_validade, fl_producao, dt_confirmado) values
  (1, 1, now() - interval '9 years', '9', null, 10, 1, '001', '1', 0, 0, 15, '1', now() - interval '9 years'),
  (1, 2, now() - interval '30 days', '9', null, 10, 1, '001', '2', 10, 20, 15, '1', now() - interval '29 days'),
  (1, 3, now() - interval '8 years', '1', null, 11, 1, '001', '1', 0, 0, 15, '0', null),
  (1, 4, now() - interval '8 years', '1', now() - interval '8 years', 11, 1, '001', '1', 0, 0, 15, '0', null);
insert into orcamento_item (cd_filial, nr_orcamento, nr_item, cd_produto, nm_produto, sg_unidade, qt_item, vl_unitario, ds_ambiente) values
  (1, 1, 1, 100, 'VIDRO TEMPERADO 8MM', 'M2', 1.5, 300, 'Sala'),
  (1, 2, 1, 100, 'VIDRO TEMPERADO 8MM', 'M2', 2.563, 300, 'Banheiro'),
  (1, 2, 2, 101, 'INSTALAÇÃO', 'UN', 1, 150, null),
  (1, 2, 3, 555, 'PRODUTO APAGADO', 'UN', 2, 10, null),
  (1, 3, 1, 102, 'KIT BOX', 'UN', 1, 200, null),
  (1, 4, 1, 102, 'KIT BOX', 'UN', 1, 200, null);
insert into orcamento_item_total (cd_filial, nr_orcamento, nr_item, vl_venda)
  select cd_filial, nr_orcamento, nr_item, qt_item * vl_unitario from orcamento_item;
-- Total do orçamento 2 = 768,90 + 150 + 20 - 10 + 20 (frete) + 1,10 (acréscimo não explicado) = 950,00
insert into orcamento_total (cd_filial, nr_orcamento, vl_orcamento) values (1, 1, 450), (1, 2, 950), (1, 3, 200), (1, 4, 200);
insert into orcamento_parcela (cd_filial, nr_orcamento, nr_parcela, dt_vencimento, vl_parcela, cd_portador) values
  (1, 2, 1, now(), 475, 2), (1, 2, 2, now() + interval '30 days', 475, 2);

-- Contas a receber: 1 antiga paga (fora do recente), 2 recente com 1ª parcela paga e 2ª parcial
insert into receber (cd_filial, nr_receber, dt_emissao, cd_emitente, nr_orcamento, ds_fatura, dt_cancelamento) values
  (1, 1, now() - interval '9 years', 10, 1, 'NF 10', null),
  (1, 2, now() - interval '29 days', 10, 2, 'NF 20', null);
insert into receber_parcela (cd_filial, nr_receber, nr_parcela, dt_vencimento, vl_parcela, vl_recebido, cd_portador) values
  (1, 1, 1, now() - interval '9 years', 450, 450, 1),
  (1, 2, 1, now() - interval '20 days', 475, 475, 2),
  (1, 2, 2, now() + interval '10 days', 475, 100, 2);
insert into receber_historico (cd_filial, nr_receber, nr_parcela, nr_lancamento, tp_lancamento, dt_lancamento, vl_lancamento) values
  (1, 2, 1, 1, '1', now() - interval '29 days', 475), (1, 2, 1, 2, '2', now() - interval '19 days', 475), (1, 2, 2, 2, '2', now() - interval '2 days', 100);
insert into pagar (cd_filial, nr_pagar, dt_emissao, cd_emitente, ds_pagar, dt_cancelamento) values (1, 1, now() - interval '10 days', 12, 'Chapas de vidro', null);
insert into pagar_parcela (cd_filial, nr_pagar, nr_parcela, dt_vencimento, vl_parcela, vl_pago, cd_portador) values
  (1, 1, 1, now() + interval '20 days', 1000, 0, 2), (1, 1, 2, now() + interval '50 days', 0, 0, 2);
-- Caixa: valores com sinal; 2 lançamentos antigos (viram saldo anterior) e 3 recentes
insert into caixa (cd_filial, nr_lancamento, dt_lancamento, tp_lancamento, vl_lancamento, ds_lancamento, nr_receber, nr_receber_par) values
  (1, 1, now() - interval '9 years', '1', 450, 'Recebimento antigo', null, null),
  (1, 2, now() - interval '9 years', '2', -50, 'Despesa antiga', null, null),
  (1, 3, now() - interval '19 days', '1', 475, 'Recebimento NF 20', 2, 1),
  (1, 4, now() - interval '5 days', '2', -80, 'Combustível', null, null),
  (1, 5, now() - interval '4 days', '1', 0, 'Zerado', null, null);
