-- Esquema reconstruído a partir das consultas e campos persistentes do SGVidros.exe
-- Tipos marcados com /*inferido*/ vêm de colunas homônimas ou do prefixo do nome; não são observados diretamente.
-- Chaves, índices e restrições NÃO estão no executável e não foram reconstruídos.

CREATE TABLE ACESSO (  -- usada em: 
  CD_ACESSO int /*inferido-prefixo*/,
  DS_ACESSO varchar(100) /*inferido-prefixo*/
);

CREATE TABLE APLICACAO_GRUPO (  -- usada em: TFRMAPLICACAO_GRUPO, TFRMAPLICACAO_GRUPO_FIND
  CD_GRUPO smallint,
  NM_GRUPO varchar(50)
);

CREATE TABLE APLICACAO_SUBGRUPO (  -- usada em: TFRMAPLICACAO_SUBGRUPO, TFRMAPLICACAO_SUBGRUPO_FIND, TFRMEMITENTE_SUBGRUPO
  CD_SUBGRUPO smallint,
  NM_SUBGRUPO varchar(50)
);

CREATE TABLE ARREDONDAMENTO (  -- usada em: TFRMARREDONDAMENTO, TFRMARREDONDAMENTO_FIND
  CD_ARREDONDAMENTO smallint,
  DS_ARREDONDAMENTO varchar(30),
  VL_ARREDONDAMENTO smallint
);

CREATE TABLE BALCAO (  -- usada em: 
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_BALCAO int /*inferido-prefixo*/,
  NR_ECF int /*inferido-prefixo*/,
  DT_FATURA datetime /*inferido*/,
  FL_FORMAPAGTO char(1) /*inferido-prefixo*/,
  NM_COMPRADOR varchar(60) /*inferido-prefixo*/,
  PR_CUSTO numeric(7,2) /*inferido*/,
  PR_DESCONTO numeric(9,3) /*inferido*/,
  VL_CUSTO numeric(12,2) /*inferido*/,
  VL_DESCONTO numeric(12,2) /*inferido*/,
  VL_PEDIDO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE BALCAO_ITEM (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_BALCAO int /*inferido-prefixo*/,
  NR_ITEM smallint /*inferido*/,
  FL_CONFIRMADO char(1) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE BANCO (  -- usada em: TFRMBANCO, TFRMBANCO_FIND
  CD_BANCO varchar(4),
  NM_BANCO varchar(50),
  SG_BANCO varchar(20)
);

CREATE TABLE BOLETO (  -- usada em: TDMMASTER, TFRMEMITENTE_LICENCA_FILE, TFRMRECEBER_SUPORTE_BOLETO
  CD_AGENCIA varchar(4) /*inferido*/,
  CD_BANCO varchar(4) /*inferido*/,
  CD_CARTEIRA smallint /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_CONTA varchar(10) /*inferido*/,
  NR_DOCTOBANCO varchar(25) /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_FATURA smallint /*inferido*/,
  NR_INSC_ESTADUAL int /*inferido-prefixo*/,
  NR_MF int /*inferido-prefixo*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_PEDIDO_EMITENTE varchar(30) /*inferido*/,
  NR_RECEBER int /*inferido*/,
  NR_SEPARADOR int /*inferido-prefixo*/,
  DP_CIDADE varchar(65) /*inferido*/,
  DP_CONTA sql_variant /*inferido-prefixo*/,
  DP_DOCTOBANCO sql_variant /*inferido-prefixo*/,
  DP_ENDERECO sql_variant /*inferido-prefixo*/,
  DP_FATURA sql_variant /*inferido-prefixo*/,
  DP_MF sql_variant /*inferido-prefixo*/,
  DP_SACADO_1 sql_variant /*inferido-prefixo*/,
  DP_SACADO_2 sql_variant /*inferido-prefixo*/,
  DP_SACADO_3 sql_variant /*inferido-prefixo*/,
  DP_SACADO_4 sql_variant /*inferido-prefixo*/,
  DS_ASBASE varchar(100) /*inferido-prefixo*/,
  DS_BARRA varchar(100) /*inferido-prefixo*/,
  DS_BOLETO varchar(100) /*inferido-prefixo*/,
  DS_CARTEIRA varchar(20) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_DIGITAVEL varchar(100) /*inferido-prefixo*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  DS_LIVRE varchar(30) /*inferido*/,
  DS_LOCALPAGAMENTO varchar(100) /*inferido-prefixo*/,
  DS_NUMERO varchar(10) /*inferido*/,
  DT_ALTERACAO datetime /*inferido-prefixo*/,
  DT_EMISSAO datetime /*inferido*/,
  DT_PUBLICACAO datetime,
  DT_VENCIMENTO datetime /*inferido*/,
  FL_ENTREGA char(1) /*inferido-prefixo*/,
  MM_BOLETO text,
  MM_INSTRUCAO sql_variant /*inferido-prefixo*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_EMITENTE varchar(50) /*inferido*/,
  NM_PORTADOR varchar(50) /*inferido*/,
  PR_MULTA numeric(7,2) /*inferido*/,
  PR_TAXAJUROS numeric(18,2) /*inferido*/,
  TP_COBRANCA varchar(1) /*inferido*/,
  VL_PARCELA numeric(12,2) /*inferido*/
);

CREATE TABLE CAIXA (  -- usada em: TFRMCAIXA, TFRMCAIXA_REPORT, TFRMCAIXA_RESUMODESPESAS, TFRMCCORRENTE_LANCTO_REPORT
  CD_FILIAL smallint,
  CD_GRUPO smallint,
  CD_HISTORICO smallint /*inferido*/,
  CD_SUBGRUPO smallint,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_BALCAO int /*inferido-prefixo*/,
  NR_DOCUMENTO varchar(50),
  NR_ESTORNO int /*inferido-prefixo*/,
  NR_LANCAMENTO int,
  NR_ORCAMENTO int /*inferido*/,
  NR_PAGAR int /*inferido-prefixo*/,
  NR_PAGAR_LANCTO int /*inferido-prefixo*/,
  NR_PAGAR_PAR int /*inferido-prefixo*/,
  NR_RECEBER int /*inferido*/,
  NR_RECEBER_LANCTO int /*inferido-prefixo*/,
  NR_RECEBER_PAR int /*inferido-prefixo*/,
  DS_LANCAMENTO varchar(80),
  DT_END datetime,
  DT_LANCAMENTO datetime,
  DT_START datetime,
  TP_LANCAMENTO varchar(1),
  VL_LANCAMENTO numeric(12,2)
);

CREATE TABLE CARGA (  -- usada em: TFRMCARGA
  CD_FILIAL smallint /*inferido*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_PLACA varchar(7) /*inferido*/,
  NR_ROMANEIO int,
  CP_VEICULO sql_variant /*inferido-prefixo*/,
  DS_ROMANEIO varchar(100) /*inferido-prefixo*/,
  DT_CARGA datetime /*inferido-prefixo*/,
  DT_PREVISTA datetime /*inferido-prefixo*/,
  DT_RETORNO datetime /*inferido-prefixo*/,
  DT_SAIDA datetime /*inferido-prefixo*/,
  PS_ALOCADO numeric(18,4) /*inferido-prefixo*/,
  QT_ORCAMENTO numeric(18,4) /*inferido-prefixo*/,
  ST_CARGA char(1) /*inferido-prefixo*/,
  VL_FRETE numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE CARGA_DETALHE (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_DETALHE smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_ROMANEIO int /*inferido*/,
  QT_ITEM numeric(12,4) /*inferido*/
);

CREATE TABLE CARGA_ITEM (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_ROMANEIO int /*inferido*/,
  QT_ITEM numeric(12,4) /*inferido*/
);

CREATE TABLE CARGA_ORCAMENTO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_ORDEM smallint /*inferido*/,
  NR_ROMANEIO int /*inferido*/,
  PS_CARGA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE CCORRENTE (  -- usada em: TFRMCCORRENTE, TFRMCCORRENTE_FIND
  CD_AGENCIA varchar(4) /*inferido*/,
  CD_BANCO varchar(4) /*inferido*/,
  NR_CONTA varchar(10) /*inferido*/,
  DS_CONTA varchar(50),
  DT_ABERTURA datetime /*inferido-prefixo*/,
  FL_RESUMO char(1) /*inferido-prefixo*/,
  ID_CONTA smallint,
  VL_BLOQUEADO numeric(28,6) /*inferido*/,
  VL_LIMITE numeric(18,4) /*inferido-prefixo*/,
  VL_SALDO numeric(28,6) /*inferido*/
);

CREATE TABLE CCORRENTE_LANCTO (  -- usada em: TFRMCCORRENTE, TFRMCCORRENTE_LANCTO, TFRMRECEBER_RESUMO
  CD_HISTORICO smallint /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_LANCAMENTO int,
  NR_RESUMO int /*inferido*/,
  DS_LANCAMENTO varchar(80) /*inferido*/,
  DT_LANCAMENTO datetime /*inferido*/,
  FL_BLOQUEADO char(1) /*inferido-prefixo*/,
  FL_COMPENSADO char(1) /*inferido-prefixo*/,
  ID_CONTA smallint,
  TP_LANCAMENTO varchar(1) /*inferido*/,
  VL_BLOQUEADO numeric(28,6),
  VL_LANCAMENTO numeric(12,2) /*inferido*/,
  VL_SALDO numeric(28,6)
);

CREATE TABLE CEP_LOGRADOURO (  -- usada em: TFRMCEP
  CD_CIDADE int /*inferido*/,
  NR_CEP varchar(8),
  NM_BAIRRO varchar(65),
  NM_LOGRADOURO varchar(72)
);

CREATE TABLE CFOP (  -- usada em: TFRMCFOP, TFRMCFOP_FIND, TFRMSPED_CONTRIBUICOES, TFRMSPED_FISCAL
  CD_CFOP varchar(4),
  CD_CFOPPRODUTO varchar(4),
  DP_ESTOQUE varchar(3),
  DP_OPERACAO varchar(22),
  DP_SINTEGRA varchar(3),
  DP_TERCEIROS varchar(3),
  DS_CFOP varchar(50),
  FL_IMPOSTO varchar(1),
  FL_INVENTARIO varchar(1),
  FL_SINTEGRA varchar(1),
  FL_TERCEIROS varchar(1),
  FL_VALORES varchar(1),
  TP_CFOP varchar(1),
  TP_OPERACAO varchar(1)
);

CREATE TABLE CHEQUE (  -- usada em: TFRMCHEQUE, TFRMORCAMENTO_FATURA
  CD_AGENCIA varchar(4) /*inferido*/,
  CD_BANCO varchar(4) /*inferido*/,
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  NR_CHEQUE int /*inferido*/,
  NR_CONTA varchar(10) /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  DT_EMISSAO datetime /*inferido*/,
  DT_VENCIMENTO datetime /*inferido*/,
  FL_CHEQUE char(1) /*inferido-prefixo*/,
  ID_CHEQUE int,
  NM_CLIENTE varchar(50) /*inferido*/,
  VL_CHEQUE numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE CHEQUE_BORDERO (  -- usada em: TFRMCHEQUE_BORDERO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_PORTADOR smallint /*inferido*/,
  NR_BORDERO int,
  DT_BORDERO datetime /*inferido-prefixo*/,
  DT_DEPOSITO datetime /*inferido-prefixo*/,
  FL_BORDERO char(1) /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  PR_TAXA numeric(9,4) /*inferido-prefixo*/,
  TP_BORDERO char(1) /*inferido-prefixo*/
);

CREATE TABLE CHEQUE_DEPOSITO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_BORDERO int /*inferido*/,
  DT_COMPENSACAO datetime /*inferido-prefixo*/,
  DT_DEVOLUCAO datetime /*inferido-prefixo*/,
  ID_CHEQUE int /*inferido*/
);

CREATE TABLE CIDADE (  -- usada em: TFRMCEP, TFRMCIDADE, TFRMEMITENTE, TFRMEMITENTE_CONSULTACNPJ, TFRMENTRADA_NFE
  CD_CIDADE int,
  CD_IBGE int /*inferido-prefixo*/,
  CD_PAIS int /*inferido-prefixo*/,
  NR_CEP varchar(8) /*inferido*/,
  NM_CIDADE varchar(60),
  NM_PAIS varchar(60) /*inferido-prefixo*/,
  SG_ESTADO varchar(2)
);

CREATE TABLE CLASSE (  -- usada em: TDMCHECK, TFRMCLASSE, TFRMCLASSE_FIND
  CD_CLASSE smallint,
  IM_CLASSE image,
  NM_CLASSE varchar(50),
  PR_COMISSAO numeric(7,2)
);

CREATE TABLE COMISSAO (  -- usada em: TFRMCOMISSAO, TFRMCOMISSAO_PAGAR
  CD_FILIAL smallint /*inferido*/,
  CD_HISTORICO smallint /*inferido*/,
  CD_PORTADOR smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_COMISSAO smallint,
  DT_COMISSAO datetime /*inferido-prefixo*/,
  DT_INICIO datetime /*inferido*/,
  DT_PAGAMENTO datetime /*inferido-prefixo*/,
  DT_TERMINO datetime /*inferido*/,
  ST_COMISSAO char(1) /*inferido-prefixo*/,
  TP_APURACAO char(1) /*inferido-prefixo*/,
  VL_APURADO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE COMISSAO_FAIXA (  -- usada em: TFRMCOMISSAO_FAIXA, TFRMCOMISSAO_FAIXA_FIND
  CD_FAIXA smallint,
  DS_FAIXA varchar(50),
  PR_COMISSAO numeric(9,3),
  PR_DESCONTO numeric(9,3),
  PR_PERDA numeric(9,3),
  VL_FINAL numeric(12,3),
  VL_INICIAL numeric(12,3)
);

CREATE TABLE COMISSAO_FUNCIONARIO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_COMISSAO smallint /*inferido*/,
  VL_APURADO numeric(18,4) /*inferido-prefixo*/,
  VL_COMISSIONADO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE COMISSAO_ITEM (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_CAIXA int /*inferido-prefixo*/,
  NR_COMISSAO smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_LANCAMENTO int /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_RECEBER int /*inferido*/,
  ID_CHEQUE int /*inferido*/,
  VL_APURADO numeric(18,4) /*inferido-prefixo*/,
  VL_COMISSIONADO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE COMPOSTO (  -- usada em: TFRMCOMPOSTO, TFRMCOMPOSTO_FIND
  CD_COMPOSTO smallint,
  NM_COMPOSTO varchar(50)
);

CREATE TABLE COMPRA (  -- usada em: TFRMCOMPRA, TFRMCOMPRA_FIND
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  NR_COMPRA int,
  NR_PEDIDO_EMITENTE varchar(30),
  NR_PRAZOENTREGA int /*inferido-prefixo*/,
  DT_EMISSAO datetime,
  MM_OBSERVACAO text /*inferido*/,
  NM_CONTATO varchar(50) /*inferido*/,
  PR_CUSTO numeric(7,2),
  PR_DESCONTO numeric(7,2),
  ST_COMPRA char(1) /*inferido-prefixo*/,
  VL_COMPRA numeric(18,4) /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2),
  VL_DESCONTO numeric(12,2),
  VL_FRETE numeric(18,4) /*inferido-prefixo*/,
  VL_OUTROS numeric(18,4) /*inferido-prefixo*/,
  VL_SEGURO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE COMPRA_FORNECEDOR (  -- usada em: TFRMCOMPRA_EXPORTA
  ID_FORNECEDOR varchar(15)
);

CREATE TABLE COMPRA_ITEM (  -- usada em: TFRMCOMPRA_ITEM, TFRMCOMPRA_ITEM_SELECT
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_COMPRA int /*inferido*/,
  NR_ITEM smallint,
  NEWITEM smallint,
  NM_PRODUTO varchar(120) /*inferido*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PR_IPI numeric(9,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  QT_RECEBIDA numeric(18,4) /*inferido-prefixo*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE COMPRA_PRAZO (  -- usada em: TFRMCOMPRA, TFRMCOMPRA_PRAZO
  CD_FILIAL smallint,
  NR_COMPRA int,
  NR_PRAZO smallint
);

CREATE TABLE CONTADOR (  -- usada em: 
  CD_CIDADE int /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_CNPJ int /*inferido-prefixo*/,
  NR_CPF int /*inferido-prefixo*/,
  NR_CRC int /*inferido-prefixo*/,
  NR_FAX varchar(10) /*inferido*/,
  NR_INSCESTADUAL int /*inferido-prefixo*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_EMAIL varchar(50) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  DS_NUMERO varchar(10) /*inferido*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_CONTADOR varchar(60) /*inferido-prefixo*/
);

CREATE TABLE CONTATO (  -- usada em: TFRMCONTATO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_OCORRENCIA smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_CONTATO int,
  NR_ORCAMENTO int /*inferido*/,
  DT_CONTATO datetime /*inferido-prefixo*/,
  DT_NOVOCONTATO datetime /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_CONTATO varchar(50) /*inferido*/,
  ST_CONTATO char(1) /*inferido-prefixo*/,
  TP_CONTATO char(1) /*inferido-prefixo*/
);

CREATE TABLE CONTATO_OCORRENCIA (  -- usada em: TDMMASTER, TFRMCONTATO_OCORRENCIA, TFRMCONTATO_OCORRENCIA_FIND, TFRMRECEBER_COBRANCA
  CD_COLOR int,
  CD_OCORRENCIA smallint,
  DS_OCORRENCIA varchar(50),
  FL_ATIVO varchar(1),
  IM_OCORRENCIA image
);

CREATE TABLE DFE_IMPORTAR (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_ORIGEM int /*inferido*/,
  ID_DFE sql_variant /*inferido-prefixo*/,
  ID_ESTACAO sql_variant /*inferido-prefixo*/
);

CREATE TABLE DFE_ITEM (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  ID_DFE sql_variant /*inferido-prefixo*/,
  ID_ESTACAO sql_variant /*inferido-prefixo*/,
  QT_PRODUTO numeric(32,3) /*inferido*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE DFE_ITEM_VW (  -- usada em: TFRMNFCE_REPORT
  CD_CFOPPRODUTO varchar(4),
  DP_SITUACAO varchar(24),
  VL_LIQUIDO numeric(38,2),
  VL_TOTAL numeric(38,2)
);

CREATE TABLE DFE_VW (  -- usada em: TFRMNFE_RECUPERAXML
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  NR_CHNFE varchar(44),
  NR_DFE int /*inferido-prefixo*/,
  DP_SITUACAO varchar(24) /*inferido*/,
  DS_DHRECBTO varchar(100) /*inferido-prefixo*/,
  DT_DFE datetime /*inferido-prefixo*/,
  FL_CONTRIBUINTE char(1) /*inferido-prefixo*/,
  ID_DFE sql_variant /*inferido-prefixo*/,
  ID_ESTACAO sql_variant /*inferido-prefixo*/,
  MM_XML text,
  NM_EMITENTE varchar(50) /*inferido*/,
  SG_ESTADO varchar(2) /*inferido*/,
  ST_DFE char(1) /*inferido-prefixo*/,
  VL_DFE numeric(18,4) /*inferido-prefixo*/,
  VL_DFE_LIQUIDO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE EMITENTE (  -- usada em: TFRMEMALADIRETA, TFRMEMITENTE, TFRMEMITENTE_LICENCA, TFRMEMITENTE_MS, TFRMEMITENTE_RAPIDO, TFRMORCAMENTO_XMLRTO, TFRMTA
  CD_CFOP varchar(4) /*inferido*/,
  CD_CREDITO int /*inferido-prefixo*/,
  CD_EMITENTE int,
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_GRUPO smallint /*inferido*/,
  CD_PORTADOR smallint /*inferido*/,
  CD_SERIE int /*inferido-prefixo*/,
  CD_SUBGRUPO smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_COMPUTADOR smallint,
  NR_CONTATO smallint,
  NR_DOCUMENTO varchar(14),
  NR_ENDCOBRANCA int /*inferido-prefixo*/,
  NR_ENDERECO int /*inferido*/,
  NR_ENTRADA int /*inferido*/,
  NR_FATURA smallint /*inferido*/,
  NR_IDENTIDADE int /*inferido-prefixo*/,
  NR_INSC_ESTADUAL int /*inferido-prefixo*/,
  NR_INSC_MUNICIPAL int /*inferido-prefixo*/,
  NR_PAGAMENTO smallint,
  DS_EMAIL varchar(150),
  DS_EMAILCOB varchar(150),
  DS_EMAILNFE varchar(100) /*inferido-prefixo*/,
  DS_EMAIL_CONTATO varchar(150),
  DS_EMCOBRANCA varchar(150),
  DS_EMCONTATO varchar(150),
  DS_NATURALIDADE varchar(100) /*inferido-prefixo*/,
  DS_SITE varchar(100) /*inferido-prefixo*/,
  DT_ALTERACAO datetime /*inferido-prefixo*/,
  DT_ATIVIDADE datetime /*inferido-prefixo*/,
  DT_CADASTRO datetime /*inferido-prefixo*/,
  DT_EMISSAO_ID datetime /*inferido-prefixo*/,
  DT_LANCAMENTO datetime /*inferido*/,
  DT_NASCIMENTO datetime /*inferido*/,
  DT_NASCIMENTO_CONJUJE datetime /*inferido-prefixo*/,
  FL_BLOQUEARACESSO varchar(1),
  FL_CONFINAL char(1) /*inferido-prefixo*/,
  FL_CONTRIBUINTE char(1) /*inferido-prefixo*/,
  FL_DEDICADO varchar(1),
  FL_EMAILCOB varchar(1),
  FL_ENVIAR varchar(1),
  FL_ESTADO_CIVIL char(1) /*inferido-prefixo*/,
  FL_EXPORTADOR char(1) /*inferido-prefixo*/,
  FL_GRAU_INSTRUCAO char(1) /*inferido-prefixo*/,
  FL_PAGAMENTO char(1) /*inferido-prefixo*/,
  FL_SQL varchar(1),
  ID_EMITENTE int identity,
  ID_MSN varchar(150),
  ID_SKYPE varchar(50),
  MM_NOTA sql_variant /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  MM_OBSSUPORTE text,
  MM_RESTRICAO text /*inferido*/,
  NM_CONJUJE varchar(60) /*inferido-prefixo*/,
  NM_CONTATO varchar(50),
  NM_EMITENTE varchar(50),
  NM_FANTASIA varchar(30) /*inferido*/,
  NM_MAE varchar(60) /*inferido-prefixo*/,
  NM_ORGAO_EMISSOR varchar(60) /*inferido-prefixo*/,
  NM_PAI varchar(60) /*inferido-prefixo*/,
  NM_PROPRIETARIO varchar(50),
  NM_SERVIDOR varchar(50),
  PR_DESCONTO numeric(9,3) /*inferido*/,
  SG_ESTADO_EMISSOR varchar(3) /*inferido-prefixo*/,
  ST_ENTRADA char(1) /*inferido-prefixo*/,
  ST_GRAU_INSTRUCAO char(1) /*inferido-prefixo*/,
  TP_PESSOA char(1) /*inferido-prefixo*/,
  VL_LIMITE_CREDITO numeric(12,2)
);

CREATE TABLE EMITENTE_CONTATO (  -- usada em: TFRMCONTATO_SELECT, TFRMEMITENTE, TFRMEMITENTE_CONTATO, TFRMEMITENTE_REPORT
  CD_EMITENTE int,
  NR_CELULAR varchar(10),
  NR_CONTATO smallint,
  NR_FAX varchar(10),
  NR_RAMAL smallint,
  NR_TELEFONE varchar(10),
  DS_CARGO varchar(30),
  DS_EMAIL varchar(50),
  DT_NASCIMENTO datetime,
  NM_CONTATO varchar(50)
);

CREATE TABLE EMITENTE_CREDITO (  -- usada em: TFRMEMITENTE, TFRMEMITENTE_CREDITO
  CD_EMITENTE int,
  CD_USUARIO varchar(15),
  NR_LANCAMENTO smallint,
  DS_LANCAMENTO varchar(100),
  DT_LANCAMENTO datetime,
  TP_LANCAMENTO varchar(1),
  VL_LANCAMENTO numeric(12,2)
);

CREATE TABLE EMITENTE_ENDERECO (  -- usada em: TFRMEMITENTE, TFRMEMITENTE_ENDERECO
  CD_CIDADE int /*inferido*/,
  CD_EMITENTE int /*inferido*/,
  CD_ROTA smallint /*inferido*/,
  NR_CELULAR_1 varchar(11) /*inferido*/,
  NR_CELULAR_2 varchar(11) /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_ENDERECO int,
  NR_FAX varchar(10) /*inferido*/,
  NR_ORDEM smallint /*inferido*/,
  NR_TELEFONE_1 varchar(10) /*inferido*/,
  NR_TELEFONE_2 varchar(10) /*inferido*/,
  NR_TELEFONE_3 varchar(10) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  DS_NUMERO varchar(10) /*inferido*/,
  DS_TITULO varchar(100) /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_BAIRRO varchar(65) /*inferido*/
);

CREATE TABLE EMITENTE_GAS (  -- usada em: 
  CD_EMITENTE int /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_CONTRATO int /*inferido-prefixo*/,
  DT_CONTRATO datetime /*inferido-prefixo*/,
  DT_VALIDADE datetime /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  VL_PRODUTO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE EMITENTE_GRUPO (  -- usada em: TFRMEMITENTE_GRUPO, TFRMEMITENTE_GRUPO_FIND
  CD_GRUPO smallint,
  NM_GRUPO varchar(50)
);

CREATE TABLE EMITENTE_LABORATORIO (  -- usada em: 
  CD_EMITENTE int /*inferido*/,
  CD_LABORATORIO smallint /*inferido*/,
  ID_LABORATORIO sql_variant /*inferido-prefixo*/
);

CREATE TABLE EMITENTE_SUBGRUPO (  -- usada em: TFRMEMITENTE_SUBGRUPO, TFRMEMITENTE_SUBGRUPO_FIND
  CD_SUBGRUPO smallint,
  CD_TABELA varchar(10),
  NM_SUBGRUPO varchar(50)
);

CREATE TABLE EMITENTE_TERCEIROS (  -- usada em: 
  CD_EMITENTE int /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  QT_ITEM numeric(12,4) /*inferido*/
);

CREATE TABLE ENTRADA (  -- usada em: TFRMENTRADA, TFRMENTRADA_PRODRURAL, TFRMESTOQUE_ACERTO, TFRMEXPORTA_ENTRADASAIDA, TFRMFUNCIONARIO_PRODUTO, TFRMPAGAR, TFRMRECEBER
  CD_CFOP varchar(4) /*inferido*/,
  CD_EMITENTE int,
  CD_FILIAL smallint /*inferido*/,
  CD_MODELOFISCAL varchar(2) /*inferido*/,
  CD_OPERACAO int /*inferido-prefixo*/,
  CD_SERIE int /*inferido-prefixo*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  NR_CHNFE varchar(255),
  NR_CUPOMFISCAL int /*inferido*/,
  NR_ENTRADA int,
  NR_FATURA smallint /*inferido*/,
  NR_PLACA varchar(7) /*inferido*/,
  NR_SEQUENCIA int,
  DS_ESPECIE varchar(100) /*inferido-prefixo*/,
  DS_MARCA varchar(100) /*inferido-prefixo*/,
  DS_QUANTIDADE varchar(100) /*inferido-prefixo*/,
  DT_EMISSAO datetime,
  DT_LANCAMENTO datetime /*inferido*/,
  FINNFE sql_variant /*inferido-prefixo*/,
  FL_CONFINAL char(1) /*inferido-prefixo*/,
  FL_EMITENTE char(1) /*inferido-prefixo*/,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  FL_FRETE char(1) /*inferido-prefixo*/,
  FL_PRODUTORRURAL char(1) /*inferido-prefixo*/,
  MM_NOTA sql_variant /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NATOP sql_variant /*inferido-prefixo*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PS_LIQUIDO numeric(18,4) /*inferido-prefixo*/,
  PS_NOTA numeric(18,4) /*inferido-prefixo*/,
  ST_COMPRA char(1) /*inferido-prefixo*/,
  ST_ENTRADA char(1) /*inferido-prefixo*/,
  VL_BASEICMS numeric(18,4) /*inferido-prefixo*/,
  VL_BASESUBST numeric(18,4) /*inferido-prefixo*/,
  VL_COFINS numeric(18,4) /*inferido-prefixo*/,
  VL_DESCONTO numeric(12,2) /*inferido*/,
  VL_DESPESA numeric(18,4) /*inferido-prefixo*/,
  VL_FRETE numeric(18,4) /*inferido-prefixo*/,
  VL_ICMS numeric(18,4) /*inferido-prefixo*/,
  VL_IPI numeric(18,4) /*inferido-prefixo*/,
  VL_NOTA numeric(18,4) /*inferido-prefixo*/,
  VL_PIS numeric(18,4) /*inferido-prefixo*/,
  VL_PRODUTO numeric(18,4) /*inferido-prefixo*/,
  VL_SEGURO numeric(18,4) /*inferido-prefixo*/,
  VL_SUBSTITUICAO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ENTRADAIMP (  -- usada em: TFRMENTRADA_IMPORTA
  CD_PRODUTO int /*inferido*/,
  CD_PRODUTO_EMITENTE int /*inferido-prefixo*/,
  NR_ITEM smallint /*inferido*/,
  NM_PRODUTO varchar(120) /*inferido*/,
  QT_COMPRA numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADA numeric(18,4) /*inferido-prefixo*/,
  QT_PEDIDO numeric(18,4) /*inferido-prefixo*/,
  QT_RECEBIDA numeric(18,4) /*inferido-prefixo*/,
  SG_COMPRA varchar(3) /*inferido-prefixo*/,
  SG_ENTRADA varchar(3) /*inferido-prefixo*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ENTRADANFEITEM (  -- usada em: 
  CD_BARRA int /*inferido-prefixo*/,
  CD_CEST varchar(7) /*inferido*/,
  CD_CFOP varchar(4) /*inferido*/,
  CD_CST varchar(5) /*inferido*/,
  CD_NCM int /*inferido-prefixo*/,
  CD_PRODUTO int /*inferido*/,
  CD_PRODUTO_NFE int /*inferido-prefixo*/,
  CD_TRIBUTACAO smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_LOTE int /*inferido-prefixo*/,
  DT_FABRICACAO datetime /*inferido-prefixo*/,
  DT_VALIDADE datetime /*inferido-prefixo*/,
  FL_INVENTARIO varchar(1) /*inferido*/,
  NM_PRODUTO_NFE varchar(60) /*inferido-prefixo*/,
  PR_COFINS numeric(9,4) /*inferido-prefixo*/,
  PR_DESCONTO numeric(9,3) /*inferido*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PR_IPI numeric(9,4) /*inferido-prefixo*/,
  PR_MVA numeric(9,4) /*inferido-prefixo*/,
  PR_PIS numeric(9,4) /*inferido-prefixo*/,
  QT_ESTOQUE numeric(18,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  SG_UNIDADE_NFE varchar(3) /*inferido-prefixo*/,
  VL_COFINS numeric(18,4) /*inferido-prefixo*/,
  VL_ICMS numeric(18,4) /*inferido-prefixo*/,
  VL_IPI numeric(18,4) /*inferido-prefixo*/,
  VL_PIS numeric(18,4) /*inferido-prefixo*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ENTRADA_ITEM (  -- usada em: TFRMENTRADA_ITEM, TFRMENTRADA_ITEM_SELECT
  CD_CFOP varchar(4) /*inferido*/,
  CD_CST varchar(5) /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  CD_TRIBUTACAO smallint /*inferido*/,
  NR_ENTRADA int /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_LOTE int /*inferido-prefixo*/,
  DT_FABRICACAO datetime /*inferido-prefixo*/,
  DT_VALIDADE datetime /*inferido-prefixo*/,
  FL_INVENTARIO varchar(1) /*inferido*/,
  NEWITEM smallint,
  NM_PRODUTO varchar(120) /*inferido*/,
  PR_COFINS numeric(9,4) /*inferido-prefixo*/,
  PR_DESCONTO numeric(9,3) /*inferido*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PR_IPI numeric(9,4) /*inferido-prefixo*/,
  PR_MVA numeric(9,4) /*inferido-prefixo*/,
  PR_PIS numeric(9,4) /*inferido-prefixo*/,
  QT_ESTOQUE numeric(18,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_COFINS numeric(18,4) /*inferido-prefixo*/,
  VL_ICMS numeric(18,4) /*inferido-prefixo*/,
  VL_IPI numeric(18,4) /*inferido-prefixo*/,
  VL_PIS numeric(18,4) /*inferido-prefixo*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ESTACAO (  -- usada em: TFRMESTACAO, TFRMESTACAO_FIND
  CD_MODELOFISCAL varchar(2),
  NR_ORDEM smallint,
  NR_PORTAIFISCAL varchar(1),
  NR_SERIE varchar(20),
  DS_ESTACAO varchar(50),
  DS_PATH_PRN varchar(100),
  DS_PRNBOLETO varchar(200),
  DS_PRNDANFE varchar(200),
  DS_PRNDUPLICATA varchar(200),
  DS_PRNETIQUETA varchar(200),
  DS_PRNNFCE varchar(200),
  DS_PRNNFE varchar(200),
  DS_PRNNOTA varchar(200),
  DS_PRNOESTOQUE varchar(200),
  DS_PRNORCAMENTO varchar(200),
  DS_PRNOSERVICO varchar(200),
  FL_PRNBOLETO varchar(1),
  FL_PRNDANFE varchar(1),
  FL_PRNDUPLICATA varchar(1),
  FL_PRNETIQUETA varchar(1),
  FL_PRNNFCE varchar(200),
  FL_PRNNFE varchar(1),
  FL_PRNNOTA varchar(1),
  FL_PRNOESTOQUE varchar(1),
  FL_PRNORCAMENTO varchar(1),
  FL_PRNOSERVICO varchar(1),
  FL_PROMOCIONAL varchar(1),
  FL_TELA varchar(1),
  MM_PROMOCIONAL text,
  NM_ESTACAO varchar(70),
  TP_IFISCAL varchar(1)
);

CREATE TABLE ESTACAO_ALIQUOTA (  -- usada em: TFRMESTACAO, TFRMESTACAO_ALIQUOTA
  CD_ALIQUOTA varchar(15),
  NM_ESTACAO varchar(70),
  PR_ALIQUOTA numeric(9,2),
  TP_ALIQUOTA varchar(1)
);

CREATE TABLE ESTADO (  -- usada em: TFRMESTADO
  CD_IBGE int /*inferido-prefixo*/,
  NM_ESTADO varchar(60) /*inferido-prefixo*/,
  SG_ESTADO varchar(2)
);

CREATE TABLE ESTADO_ALIQUOTA (  -- usada em: 
  PR_CONTRIBUINTE numeric(9,4) /*inferido-prefixo*/,
  PR_NAOCONTRIB numeric(7,2) /*inferido*/,
  SG_DESTINO varchar(3) /*inferido-prefixo*/,
  SG_ORIGEM varchar(3) /*inferido-prefixo*/
);

CREATE TABLE ESTOQUE (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  QT_BALCAO numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADA numeric(18,4) /*inferido-prefixo*/,
  QT_ORCAMENTO numeric(18,4) /*inferido-prefixo*/,
  QT_RESERVA numeric(18,4) /*inferido-prefixo*/,
  QT_SAIDA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ESTOQUE_SALDO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  QT_BALCAO numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADA numeric(18,4) /*inferido-prefixo*/,
  QT_LIQUIDO numeric(18,4) /*inferido-prefixo*/,
  QT_LIQUIDO_VENDA numeric(18,4) /*inferido-prefixo*/,
  QT_ORCAMENTO numeric(18,4) /*inferido-prefixo*/,
  QT_RESERVA numeric(18,4) /*inferido-prefixo*/,
  QT_SAIDA numeric(18,4) /*inferido-prefixo*/,
  QT_SALDO numeric(18,4) /*inferido-prefixo*/,
  QT_SALDO_VENDA numeric(18,4) /*inferido-prefixo*/,
  SG_ESTOQUE varchar(2) /*inferido*/,
  SG_VENDA varchar(3) /*inferido-prefixo*/
);

CREATE TABLE FILIAL (  -- usada em: TFRMFILIAL, TFRMRECIBO, TFRMSINTEGRA_NOVO
  CD_CFOP_IN int /*inferido-prefixo*/,
  CD_CFOP_OUT int /*inferido-prefixo*/,
  CD_CIDADE int /*inferido*/,
  CD_CST_COFINS int /*inferido-prefixo*/,
  CD_CST_PIS int /*inferido-prefixo*/,
  CD_FILIAL smallint,
  CD_GRUPO_EMITENTE int /*inferido-prefixo*/,
  CD_HISTORICOCARTAO int /*inferido-prefixo*/,
  CD_HISTORICODEBITO int /*inferido-prefixo*/,
  CD_HISTORICOPIX int /*inferido-prefixo*/,
  CD_HISTORICO_BALCAO int /*inferido-prefixo*/,
  CD_PORTADOR smallint /*inferido*/,
  CD_PORTADORCARTAO int /*inferido-prefixo*/,
  CD_PORTADORDEBITO int /*inferido-prefixo*/,
  CD_PORTADORPIX int /*inferido-prefixo*/,
  CD_SUBGRUPO_EMITENTE int /*inferido-prefixo*/,
  CD_TABELA varchar(10) /*inferido*/,
  NR_AREA_DECIMAL int /*inferido-prefixo*/,
  NR_CELULAR varchar(11) /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_COMPRA int /*inferido*/,
  NR_CORFUNDO int /*inferido-prefixo*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_DUPLICATA int /*inferido-prefixo*/,
  NR_ECF_DECIMAL int /*inferido-prefixo*/,
  NR_FAX varchar(10) /*inferido*/,
  NR_INSCESTADUAL int /*inferido-prefixo*/,
  NR_LICENCA int /*inferido-prefixo*/,
  NR_PAF_PORTA int /*inferido-prefixo*/,
  NR_PORTA_EM int /*inferido-prefixo*/,
  NR_PRAZOENTREGA int /*inferido-prefixo*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_CUSTO varchar(100) /*inferido-prefixo*/,
  DS_EMAIL varchar(50) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  DS_NUMERO varchar(10) /*inferido*/,
  DS_ORCAMENTO varchar(100) /*inferido-prefixo*/,
  DS_PAF_SENHA varchar(100) /*inferido-prefixo*/,
  DS_SITE varchar(100) /*inferido-prefixo*/,
  DS_TITULO_EM varchar(100) /*inferido-prefixo*/,
  DS_VALID varchar(20) /*inferido*/,
  FL_1PROJPAGINA char(1) /*inferido-prefixo*/,
  FL_ANALISACREDITO char(1) /*inferido-prefixo*/,
  FL_COMISSAOJUNCAO char(1) /*inferido-prefixo*/,
  FL_CONJUNTO char(1) /*inferido-prefixo*/,
  FL_CRIPTOGRAFIA char(1) /*inferido-prefixo*/,
  FL_DETALHE char(1) /*inferido-prefixo*/,
  FL_ENDCOBRANCA char(1) /*inferido-prefixo*/,
  FL_ENDENTREGA char(1) /*inferido-prefixo*/,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  FL_ETIQUETAPRODUCAO char(1) /*inferido-prefixo*/,
  FL_FIGURA char(1) /*inferido-prefixo*/,
  FL_FORMULARIO char(1) /*inferido-prefixo*/,
  FL_FRETE char(1) /*inferido-prefixo*/,
  FL_FUSOHORARIO char(1) /*inferido-prefixo*/,
  FL_IMPTOTALAMBIENTE char(1) /*inferido-prefixo*/,
  FL_INTERVALO char(1) /*inferido-prefixo*/,
  FL_LOGO char(1) /*inferido-prefixo*/,
  FL_MARGEM char(1) /*inferido-prefixo*/,
  FL_MEDIDA varchar(1) /*inferido*/,
  FL_MEIAPAGINA char(1) /*inferido-prefixo*/,
  FL_NFE char(1) /*inferido-prefixo*/,
  FL_PAF_CLIENTE char(1) /*inferido-prefixo*/,
  FL_PAF_PRODUTO char(1) /*inferido-prefixo*/,
  FL_PRAZOENTREGA char(1) /*inferido-prefixo*/,
  FL_REGIME char(1) /*inferido-prefixo*/,
  FL_REMOVELINHAS char(1) /*inferido-prefixo*/,
  FL_REPRESENTANTE char(1) /*inferido-prefixo*/,
  FL_SIMPLES char(1) /*inferido-prefixo*/,
  FL_SINTEGRAINDUSTRIA varchar(1),
  FL_SOMAST char(1) /*inferido-prefixo*/,
  FL_TAMFIGURA char(1) /*inferido-prefixo*/,
  FL_TRANSPORTADOR char(1) /*inferido-prefixo*/,
  ID_CLIENTE varchar(20) /*inferido*/,
  IM_CABECALHO image /*inferido-prefixo*/,
  IM_CARIMBO image /*inferido-prefixo*/,
  IM_DUPMERCANTIL image,
  IM_LOGO image /*inferido*/,
  MM_MENSAGEM_EM sql_variant /*inferido-prefixo*/,
  MM_RODAPE sql_variant /*inferido-prefixo*/,
  MM_SIMPLES sql_variant /*inferido-prefixo*/,
  NM_ABREVIADO varchar(60) /*inferido-prefixo*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_CONTATO varchar(50) /*inferido*/,
  NM_FILIAL varchar(60) /*inferido-prefixo*/,
  NM_PAF_BANCO varchar(60) /*inferido-prefixo*/,
  NM_PAF_SERVER varchar(60) /*inferido-prefixo*/,
  NM_PAF_USUARIO varchar(60) /*inferido-prefixo*/,
  NM_SMTP_EM varchar(60) /*inferido-prefixo*/,
  NM_USUARIO_EM varchar(60) /*inferido-prefixo*/,
  PR_COFINS numeric(9,4) /*inferido-prefixo*/,
  PR_MARGEM numeric(9,4) /*inferido-prefixo*/,
  PR_PIS numeric(9,4) /*inferido-prefixo*/,
  PR_SIMPLES numeric(9,4) /*inferido-prefixo*/,
  QT_AREA_MINIMA numeric(18,4) /*inferido-prefixo*/,
  SH_USUARIO_EM sql_variant /*inferido-prefixo*/,
  VL_DOLAR numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE FOTO (  -- usada em: TFRMFOTO_FIND
  CD_FOTO smallint,
  CD_GRUPO smallint /*inferido*/,
  DS_FOTO varchar(50),
  IM_FOTO image /*inferido-prefixo*/
);

CREATE TABLE FOTO_GRUPO (  -- usada em: TFRMFOTO_GRUPO, TFRMFOTO_GRUPO_FIND
  CD_GRUPO smallint,
  NM_GRUPO varchar(50)
);

CREATE TABLE FUNCIONARIO (  -- usada em: TFRMFUNCIONARIO_FIND, TFRMOPAF_EXPORTA, TFRMORCAMENTO_XMLRTO
  CD_CIDADE int /*inferido*/,
  CD_EMITENTE int /*inferido*/,
  CD_FUNCIONARIO smallint,
  NR_CELULAR varchar(11) /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_CTPS int /*inferido-prefixo*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_HABILITACAO int /*inferido-prefixo*/,
  NR_IDENTIDADE int /*inferido-prefixo*/,
  NR_PIS int /*inferido-prefixo*/,
  NR_RESERVISTA int /*inferido-prefixo*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  NR_TITULO_ELEITOR int /*inferido-prefixo*/,
  DS_CARGO varchar(30) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_EMAIL varchar(50) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  DS_SETOR varchar(100) /*inferido-prefixo*/,
  DS_TIPO_SANGUINEO varchar(100) /*inferido-prefixo*/,
  DT_ADMISSAO datetime /*inferido-prefixo*/,
  DT_NASCIMENTO datetime /*inferido*/,
  IM_ASSINATURA image /*inferido-prefixo*/,
  IM_FOTO image /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_FUNCIONARIO varchar(50),
  NM_ORGAO_EMISSOR varchar(60) /*inferido-prefixo*/,
  PR_COMISSAO numeric(7,2) /*inferido*/,
  SG_ESTADO_EMISSOR varchar(3) /*inferido-prefixo*/,
  VL_SALARIO_ATUAL numeric(18,4) /*inferido-prefixo*/,
  VL_SALARIO_INI numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE FUNCIONARIO_FAIXA (  -- usada em: 
  CD_FAIXA smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/
);

CREATE TABLE FUNCIONARIO_PRODUTO (  -- usada em: 
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  PR_COMISSAO numeric(7,2) /*inferido*/
);

CREATE TABLE FUNCIONARIO_PRODUTO_FAIXA (  -- usada em: 
  CD_FAIXA smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/
);

CREATE TABLE GRUPO (  -- usada em: TFRMGRUPO, TFRMGRUPO_FIND
  CD_CEST varchar(7),
  CD_CLASFISCAL varchar(10),
  CD_GRUPO smallint,
  FL_INVENTARIO varchar(1),
  FL_MOLDURA varchar(1),
  NM_GRUPO varchar(50),
  PR_COMISSAO numeric(7,2),
  QT_AREAMINIMA numeric(9,3)
);

CREATE TABLE HISTORICO (  -- usada em: TFRMHISTORICO, TFRMHISTORICO_FIND
  CD_HISTORICO smallint,
  DP_TIPO varchar(8190),
  DS_HISTORICO varchar(30),
  TP_HISTORICO varchar(1)
);

CREATE TABLE IBPTAX (  -- usada em: TDMMASTER, TFRMDOWNLOAD, TFRMNFE
  CD_EX int /*inferido-prefixo*/,
  CD_NCM int /*inferido-prefixo*/,
  CD_TABELA varchar(10) /*inferido*/,
  PR_ESTADUAL numeric(7,3),
  PR_IMPORTADO numeric(7,3),
  PR_MUNICIPAL numeric(7,3),
  PR_NACIONAL numeric(7,3)
);

CREATE TABLE INSTALACAO (  -- usada em: TFRMINSTALACAO
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_INSTALACAO int,
  NR_ORCAMENTO int /*inferido*/,
  DT_AGENDA datetime /*inferido*/,
  DT_EMISSAO datetime /*inferido*/,
  ST_INSTALACAO varchar(1) /*inferido*/
);

CREATE TABLE INSTALACAOVW (  -- usada em: TFRMINSTALACAO, TFRMINSTALACAO_ESPELHO
  CD_EMITENTE int,
  CD_FILIAL smallint,
  NR_CELULAR_1 varchar(11),
  NR_CELULAR_2 varchar(11),
  NR_CEP varchar(8),
  NR_ENTREGA smallint,
  NR_INSTALACAO int,
  NR_ORCAMENTO int,
  NR_TELEFONE_1 varchar(10),
  NR_TELEFONE_2 varchar(10),
  NR_TELEFONE_3 varchar(10),
  DP_CIDADE varchar(65),
  DP_EMITENTE varchar(97),
  DP_SITUACAO varchar(10),
  DS_COMPLEMENTO varchar(30),
  DS_ENDERECO varchar(50),
  DS_NUMERO varchar(10),
  DT_AGENDA datetime,
  DT_EMISSAO datetime,
  DT_ENTREGA datetime,
  DT_INSTALACAO datetime,
  MM_OBSENDERECO text,
  MM_OBSERVACAO text,
  NM_BAIRRO varchar(30),
  NM_CIDADE varchar(60),
  NM_CONTATO varchar(100),
  NM_EMITENTE varchar(50),
  NM_FANTASIA varchar(30),
  SG_ESTADO varchar(2),
  ST_INSTALACAO varchar(1),
  VL_COMISSAO numeric(32,2),
  VL_MATERIAL numeric(32,6),
  VL_SERVICO numeric(32,2)
);

CREATE TABLE INSTALACAO_INSTALADOR (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_INSTALACAO int /*inferido*/,
  VL_COMISSAO numeric(32,2) /*inferido*/
);

CREATE TABLE INSTALACAO_MATERIALVW (  -- usada em: TFRMINSTALACAO, TFRMINSTALACAO_ESPELHO
  CD_FILIAL smallint,
  CD_PRODUTO int,
  NR_INSTALACAO int,
  NR_MATERIAL smallint,
  NM_PRODUTO varchar(120),
  QT_MATERIAL numeric(12,4),
  VL_MATERIAL numeric(12,2),
  VL_TOTAL numeric(25,6)
);

CREATE TABLE INSTALACAO_SERVICOVW (  -- usada em: TFRMINSTALACAO, TFRMINSTALACAO_ESPELHO
  CD_FILIAL smallint,
  CD_PRODUTO int,
  NR_INSTALACAO int,
  NR_SERVICO smallint,
  NM_PRODUTO varchar(120),
  QT_SERVICO smallint,
  VL_SERVICO numeric(12,2),
  VL_TOTAL numeric(18,2)
);

CREATE TABLE INVENTARIO (  -- usada em: TFRMINVENTARIO_ANUAL
  CD_FILIAL smallint,
  NR_ANO smallint,
  DT_INVENTARIO datetime,
  ST_INVENTARIO varchar(1),
  VL_INVENTARIO numeric(15,3)
);

CREATE TABLE INVENTARIO_MENSAL (  -- usada em: TFRMINVENTARIO_MENSAL
  CD_FILIAL smallint,
  CD_PERIODO varchar(6),
  DT_INVENTARIO datetime,
  ST_INVENTARIO varchar(1),
  VL_INVENTARIO numeric(15,3)
);

CREATE TABLE INVENTARIO_MENSAL_PRODUTO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PERIODO varchar(6) /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  QT_ANTERIOR numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADAS numeric(18,4) /*inferido-prefixo*/,
  QT_SAIDAS numeric(18,4) /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2) /*inferido*/
);

CREATE TABLE INVENTARIO_PRODUTO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_ANO smallint /*inferido*/,
  FL_INVENTARIO varchar(1) /*inferido*/,
  QT_ANTERIOR numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADAS numeric(18,4) /*inferido-prefixo*/,
  QT_SAIDAS numeric(18,4) /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2) /*inferido*/
);

CREATE TABLE INVENTARIO_TRIMESTRAL (  -- usada em: TFRMINVENTARIO_TRIMESTRAL
  CD_FILIAL smallint,
  NR_ANO varchar(5),
  DT_INVENTARIO datetime,
  ST_INVENTARIO varchar(1),
  VL_INVENTARIO numeric(15,3)
);

CREATE TABLE INVENTARIO_TRIMESTRAL_PRODUTO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_ANO smallint /*inferido*/,
  FL_INVENTARIO varchar(1) /*inferido*/,
  QT_ANTERIOR numeric(18,4) /*inferido-prefixo*/,
  QT_ENTRADAS numeric(18,4) /*inferido-prefixo*/,
  QT_SAIDAS numeric(18,4) /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2) /*inferido*/
);

CREATE TABLE LABORATORIO (  -- usada em: TFRMCOMPRA_ORCAMENTO, TFRMLABORATORIO
  CD_CIDADE int /*inferido*/,
  CD_LABORATORIO smallint,
  NR_CELULAR varchar(11) /*inferido*/,
  NR_CEP varchar(8) /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_FAX varchar(10) /*inferido*/,
  NR_INSCESTADUAL int /*inferido-prefixo*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_EMAIL varchar(50) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_COMERCIAL varchar(60) /*inferido-prefixo*/,
  NM_CONTATO varchar(50) /*inferido*/,
  NM_FINANCEIRO varchar(60) /*inferido-prefixo*/,
  NM_LABORATORIO varchar(50),
  PR_COMISSAO numeric(7,2) /*inferido*/
);

CREATE TABLE LOCALIZACAO (  -- usada em: TFRMLOCALIZACAO, TFRMLOCALIZACAO_FIND
  CD_LOCALIZACAO smallint,
  DS_LOCALIZACAO varchar(50)
);

CREATE TABLE LOGHISTORY (  -- usada em: TDMMASTER
  NM_HOST varchar(255)
);

CREATE TABLE LOGSISTEMA (  -- usada em: TFRMLOGSISTEMA
  CD_FILIAL smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_ORIGEM int,
  DS_ORIGEM varchar(50),
  DT_OCORRENCIA datetime /*inferido-prefixo*/,
  ID_LOG sql_variant /*inferido-prefixo*/,
  MM_HISTORICO sql_variant /*inferido-prefixo*/
);

CREATE TABLE MOTIVO (  -- usada em: TFRMMOTIVO, TFRMMOTIVO_FIND
  CD_MOTIVO smallint,
  DS_MOTIVO varchar(50)
);

CREATE TABLE NFE (  -- usada em: TDMMASTER, TFRMEXPORTA_ENTRADASAIDA, TFRMNFE
  CD_FILIAL smallint /*inferido*/,
  NR_CHNFE varchar(255),
  NR_CNF int /*inferido-prefixo*/,
  NR_CSTAT int /*inferido-prefixo*/,
  NR_NPROT varchar(255) /*inferido*/,
  NR_ORIGEM int /*inferido*/,
  NR_RECIBO int /*inferido-prefixo*/,
  NR_SITUACAO int /*inferido-prefixo*/,
  DS_JUSTIFICATIVA varchar(255) /*inferido*/,
  DS_LOTE varchar(100) /*inferido-prefixo*/,
  DS_MOTIVO varchar(50) /*inferido*/,
  DS_XMOTIVO varchar(255) /*inferido*/,
  DT_DHRECBTO datetime /*inferido*/,
  DT_NFE datetime,
  FL_GERAR char(1) /*inferido-prefixo*/,
  FL_ORIGEM varchar(1) /*inferido*/,
  FL_VALIDACAO char(1) /*inferido-prefixo*/,
  ID_LOTE sql_variant /*inferido-prefixo*/,
  ID_ORIGEM smallint /*inferido*/,
  MM_NFE sql_variant /*inferido-prefixo*/,
  MM_VALIDACAO sql_variant /*inferido-prefixo*/,
  NEWLOTE int,
  NM_ARQUIVO varchar(60) /*inferido-prefixo*/,
  ST_NFE varchar(1)
);

CREATE TABLE NFE_CCE (  -- usada em: TFRMNFE_CCE
  CD_FILIAL smallint,
  NR_NPROT varchar(255),
  NR_ORIGEM int,
  NR_SEQEVENTO smallint,
  DS_XMOTIVO varchar(255),
  DT_DHEVENTO datetime,
  FL_ORIGEM varchar(1),
  ID_ORIGEM smallint,
  MM_CCE text,
  MM_XCONDUSO text,
  MM_XCORRECAO text
);

CREATE TABLE NFE_CFG (  -- usada em: TFRMEMITENTE, TFRMNFE
  CD_FILIAL smallint,
  NR_CERTIFICADO varchar(100),
  NR_COPIA smallint,
  NR_DECIMAIS smallint,
  NR_INTERVALO smallint,
  NR_LARGURACODIGO smallint,
  DS_ASSUNTO varchar(100),
  DS_CONTINGENCIA varchar(256),
  DS_PATHCANCELAR varchar(255),
  DS_PATHDPEC varchar(255),
  DS_PATHINU varchar(255),
  DS_PATHNFE varchar(255),
  DS_PATHPDF varchar(255),
  DS_PATHSALVAR varchar(255),
  DS_PATHSCHEMAS varchar(255),
  DT_CONTINGENCIA datetime,
  FL_AMBIENTE varchar(1),
  FL_FONTE varchar(1),
  FL_FORMAEMISSAO varchar(1),
  FL_PASTAMENSAL varchar(1),
  IM_LOGO image,
  MM_CERTIFICADO text,
  MM_EMAIL text,
  NM_DANFE varchar(255),
  NM_LOGOMARCA varchar(255),
  SH_CERTIFICADO varchar(100),
  TP_DANFE varchar(1)
);

CREATE TABLE NFE_INUTILIZA (  -- usada em: TFRMNFE, TFRMSINTEGRA_NOVO
  CD_FILIAL smallint,
  NR_ANO smallint,
  NR_FINAL int,
  NR_INICIAL int,
  NR_NPROT varchar(255),
  NR_SERIE smallint,
  DS_JUSTIFICATIVA varchar(255),
  DS_XMOTIVO varchar(255),
  DT_DHRECBTO datetime
);

CREATE TABLE NOTA_CFG (  -- usada em: TFRMNOTA, TFRMNOTA_CFG
  CD_NOTA smallint,
  NR_ADICIONAL smallint,
  NR_ALTURA_ITEM smallint,
  NR_FATURA smallint,
  NR_FONTE smallint,
  NR_FORMULARIO smallint,
  DS_NOTA varchar(50),
  NM_FONTE varchar(50),
  TP_NOTA varchar(1),
  TP_SERVICO varchar(1)
);

CREATE TABLE NOTA_CFG_CAMPO (  -- usada em: TFRMNOTA, TFRMNOTA_CFG
  CD_CAMPO smallint,
  CD_GRUPO smallint,
  CD_NOTA smallint,
  NR_COLUNA smallint,
  NR_LINHA smallint,
  NR_SIZE smallint,
  NR_WIDTH smallint,
  DS_FORMAT varchar(30),
  FL_POS varchar(1),
  FL_SUPRESSNULL varchar(1),
  NM_CAMPO varchar(50),
  NM_FIELD varchar(50),
  ST_CAMPO varchar(1)
);

CREATE TABLE OMEDICAO (  -- usada em: TFRMOMEDICAO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_MEDIDOR int /*inferido-prefixo*/,
  CD_VENDEDOR int /*inferido-prefixo*/,
  NR_ENDERECO int /*inferido*/,
  NR_MEDICAO int,
  NR_ORCAMENTO int /*inferido*/,
  DT_AGENDA datetime /*inferido*/,
  DT_EMISSAO datetime /*inferido*/,
  IM_CLIENTE image /*inferido-prefixo*/,
  IM_PROJETO image /*inferido*/,
  MM_MEDICAO sql_variant /*inferido-prefixo*/,
  NM_CONTATO varchar(50) /*inferido*/,
  ST_MEDICAO char(1) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO (  -- usada em: TFRMCONTATO, TFRMCONTATO_VIEW, TFRMORCAMENTO, TFRMORCAMENTO_CONJUNTO_REPORT, TFRMORCAMENTO_COPIA, TFRMORCAMENTO_DIVISAO, TFRMORCAMENTO_FATURA_INFORMA, TFRMORCAMENTO_FECHAMENTO, TFRMORCAMENTO_NEW, TFRMORCAMENTO_REPORT, TFRMORCAMENTO_REPVM, TFRMORCAMENTO_XMLRTO, TFRMRECEBER_SUPORTE
  CD_CFOP varchar(4) /*inferido*/,
  CD_EMITENTE int,
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_SERIE int /*inferido-prefixo*/,
  CD_TABELA varchar(10) /*inferido*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/,
  NR_ECF int /*inferido-prefixo*/,
  NR_ENDERECO int /*inferido*/,
  NR_ENTREGA smallint /*inferido*/,
  NR_FATURA smallint /*inferido*/,
  NR_JUNCAO int /*inferido-prefixo*/,
  NR_ORCAMENTO int,
  NR_PEDIDO_EMITENTE varchar(30) /*inferido*/,
  NR_PLACA varchar(7) /*inferido*/,
  NR_VALIDADE int /*inferido-prefixo*/,
  DS_ESPECIE varchar(100) /*inferido-prefixo*/,
  DS_MARCA varchar(100) /*inferido-prefixo*/,
  DS_QUANTIDADE varchar(100) /*inferido-prefixo*/,
  DT_CANCELAMENTO datetime /*inferido-prefixo*/,
  DT_CONFIRMADO datetime /*inferido-prefixo*/,
  DT_CONJUNTO datetime /*inferido-prefixo*/,
  DT_EMISSAO datetime /*inferido*/,
  DT_FATURA datetime /*inferido*/,
  DT_SAIDA datetime /*inferido-prefixo*/,
  FINNFE sql_variant /*inferido-prefixo*/,
  FL_CONFINAL char(1) /*inferido-prefixo*/,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  FL_FORMAPAGTO char(1) /*inferido-prefixo*/,
  FL_FRETE char(1) /*inferido-prefixo*/,
  FL_IMPRESSO char(1) /*inferido-prefixo*/,
  FL_PRODUCAO char(1) /*inferido-prefixo*/,
  MG_COLETA sql_variant /*inferido-prefixo*/,
  MG_PEDIDO numeric(12,2) /*inferido*/,
  MM_NOTA sql_variant /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NATOP sql_variant /*inferido-prefixo*/,
  NEW int,
  NM_CONTATO varchar(50) /*inferido*/,
  PR_CUSTO numeric(7,2) /*inferido*/,
  PR_DESCONTO numeric(9,3) /*inferido*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PS_COLETA numeric(18,4) /*inferido-prefixo*/,
  PS_LIQUIDO numeric(18,4) /*inferido-prefixo*/,
  PS_PEDIDO numeric(18,4) /*inferido-prefixo*/,
  ST_ORCAMENTO varchar(1) /*inferido*/,
  TP_CARGA char(1) /*inferido-prefixo*/,
  VL_BASEICMS numeric(18,4) /*inferido-prefixo*/,
  VL_BASEST numeric(18,4) /*inferido-prefixo*/,
  VL_COLETA numeric(18,4) /*inferido-prefixo*/,
  VL_COLETA_FRETE numeric(18,4) /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2) /*inferido*/,
  VL_DESCONTO numeric(12,2) /*inferido*/,
  VL_DESCRITIVO numeric(18,4) /*inferido-prefixo*/,
  VL_ICMS numeric(18,4) /*inferido-prefixo*/,
  VL_IPI numeric(18,4) /*inferido-prefixo*/,
  VL_ISS numeric(18,4) /*inferido-prefixo*/,
  VL_PEDIDO numeric(18,4) /*inferido-prefixo*/,
  VL_PEDIDO_FRETE numeric(18,4) /*inferido-prefixo*/,
  VL_PRODUTO numeric(18,4) /*inferido-prefixo*/,
  VL_SERVICO numeric(32,2) /*inferido*/,
  VL_STB numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_BLOQUEIO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  ST_BLOQUEIO char(1) /*inferido-prefixo*/,
  TP_BLOQUEIO char(1) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_COMISSAO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/
);

CREATE TABLE ORCAMENTO_CONJUNTO (  -- usada em: TFRMORCAMENTO_DESCACRES
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NM_PRODUTO varchar(120) /*inferido*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_CONJUNTO_TOTAL (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  QT_VENDIDO numeric(18,4) /*inferido-prefixo*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_VENDA numeric(28,6) /*inferido*/
);

CREATE TABLE ORCAMENTO_DESCRITIVO (  -- usada em: TFRMORCAMENTO_DESCRITIVO
  CD_FILIAL smallint,
  NR_ITEM smallint,
  NR_ORCAMENTO int,
  DS_ITEM text,
  IM_ITEM image,
  QT_ITEM numeric(18,3),
  SG_UNIDADE varchar(2),
  VL_ITEM numeric(12,3),
  VL_TOTAL numeric(31,6)
);

CREATE TABLE ORCAMENTO_DETALHE (  -- usada em: TFRMORCAMENTO_NEW, TFRMORCAMENTO_OS, TFRMORCAMENTO_REPVM, TFRMOSERVICO_ORCAMENTO, TFRMPRODUCAO_ORCAMENTO
  CD_FILIAL smallint,
  NR_ALTURA numeric(12,4),
  NR_COMPRIMENTO numeric(12,4),
  NR_DETALHE smallint,
  NR_ITEM smallint,
  NR_LARGURA numeric(12,4),
  NR_ORCAMENTO int,
  DS_DETALHE varchar(30),
  QT_ITEM smallint
);

CREATE TABLE ORCAMENTO_ITEM (  -- usada em: TFRMORCAMENTO_AMBIENTE, TFRMORCAMENTO_DESCACRES, TFRMORCAMENTO_DESCRITIVO, TFRMORCAMENTO_DETALHE, TFRMORCAMENTO_ESTOQUE_ITEM, TFRMORCAMENTO_ITEM, TFRMORCAMENTO_PERIMETRO, TFRMORCAMENTO_QUANTIDADE, TFRMOSERVICO_ORCAMENTO
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  CD_SUBPRODUTO smallint /*inferido*/,
  CD_TRIBUTACAO smallint /*inferido*/,
  NR_ITEM smallint,
  NR_LOTE int /*inferido-prefixo*/,
  NR_ORCAMENTO int /*inferido*/,
  DS_AMBIENTE varchar(50),
  DT_FABRICACAO datetime /*inferido-prefixo*/,
  DT_VALIDADE datetime /*inferido-prefixo*/,
  FL_CONFIRMADO char(1) /*inferido-prefixo*/,
  FL_MEDIDA varchar(1),
  FL_ORDEMSERVICO char(1) /*inferido-prefixo*/,
  FL_STB char(1) /*inferido-prefixo*/,
  IM_SUBPRODUTO image,
  NEWITEM smallint,
  NITEMPED sql_variant /*inferido-prefixo*/,
  NM_PRODUTO varchar(120),
  PR_MARGEM numeric(9,4) /*inferido-prefixo*/,
  PR_REDUCAO numeric(9,4) /*inferido-prefixo*/,
  PS_PRODUTO numeric(18,4) /*inferido-prefixo*/,
  QT_AGREGADO numeric(18,4) /*inferido-prefixo*/,
  QT_ESTOQUE numeric(18,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  QT_VENDA numeric(18,4) /*inferido-prefixo*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  SG_VENDA varchar(3) /*inferido-prefixo*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/,
  XPED sql_variant /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_ITEM_TOTAL (  -- usada em: TFRMORCAMENTO_REPORT_EMITIDO
  CD_FILIAL smallint,
  CD_PRODUTO int,
  NR_ITEM smallint,
  NR_ORCAMENTO int,
  FL_CONFIRMADO char(1) /*inferido-prefixo*/,
  NM_PRODUTO varchar(120),
  QT_ESTOQUE numeric(18,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,3),
  SG_ESTOQUE varchar(2) /*inferido*/,
  SG_UNIDADE varchar(2),
  VL_UNITARIOVENDA numeric(18,4) /*inferido-prefixo*/,
  VL_VENDA numeric(28,6)
);

CREATE TABLE ORCAMENTO_MOLDURA (  -- usada em: TFRMORCAMENTO_OS, TFRMORCAMENTO_REPVM
  CD_FILIAL smallint,
  NR_ALTURA numeric(7,2),
  NR_FOLGA numeric(7,2),
  NR_ITEM smallint,
  NR_LARGURA numeric(7,2),
  NR_MOLDURA smallint,
  NR_ORCAMENTO int,
  QT_MOLDURA smallint
);

CREATE TABLE ORCAMENTO_PAGAMENTO (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_LABORATORIO smallint /*inferido*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  DS_CONDICAO varchar(100) /*inferido-prefixo*/,
  DT_CONF_EMITENTE datetime /*inferido-prefixo*/,
  DT_CONF_REPRESENTADA datetime /*inferido-prefixo*/,
  DT_SAIDA_REPRESENTADA datetime /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  TP_FRETE char(1) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_PARCELA (  -- usada em: 
  CD_AGENCIA varchar(4) /*inferido*/,
  CD_BANCO varchar(4) /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_PORTADOR smallint /*inferido*/,
  NR_CHEQUE int /*inferido*/,
  NR_CONTA varchar(10) /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_PRAZO smallint /*inferido*/,
  NR_TELEFONE varchar(10) /*inferido*/,
  DT_EMISSAO datetime /*inferido*/,
  DT_VENCIMENTO datetime /*inferido*/,
  FL_PARCELA varchar(1) /*inferido*/,
  NM_CLIENTE varchar(50) /*inferido*/,
  VL_PARCELA numeric(12,2) /*inferido*/
);

CREATE TABLE ORCAMENTO_PROJETO (  -- usada em: TFRMORCAMENTO_DESCACRES, TFRMORCAMENTO_PROJETO
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  CD_PROJETO int /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PRAZOENTREGA int /*inferido-prefixo*/,
  NR_PROJETO smallint,
  DS_AMBIENTE varchar(50) /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  QT_PROJETO numeric(18,4) /*inferido-prefixo*/,
  VL_PROJETO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_PROJETO_ITEM (  -- usada em: TFRMORCAMENTO_DESCACRES, TFRMORCAMENTO_PROJETO_ITEM
  CD_FILIAL smallint /*inferido*/,
  CD_PARTE smallint,
  CD_PECA varchar(10),
  CD_PRODUTO int,
  NR_ALTURA int,
  NR_ALTURA_DIREITA int /*inferido-prefixo*/,
  NR_ALTURA_FOLGA smallint,
  NR_ITEM smallint /*inferido*/,
  NR_ITEM_PROJETO int /*inferido-prefixo*/,
  NR_LARGURA int,
  NR_LARGURA_DIREITA int /*inferido-prefixo*/,
  NR_LARGURA_FOLGA smallint,
  NR_ORCAMENTO int /*inferido*/,
  NR_PROJETO smallint /*inferido*/,
  NEWITEM smallint,
  QT_ITEM numeric(12,4),
  SG_UNIDADE varchar(2),
  TP_ITEM char(1) /*inferido-prefixo*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ORCAMENTO_PROJETO_PARTE (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PARTE smallint /*inferido*/,
  NR_ALTURA numeric(12,4) /*inferido*/,
  NR_LARGURA numeric(12,4) /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PROJETO smallint /*inferido*/
);

CREATE TABLE ORCAMENTO_TOTAL (  -- usada em: TFRMCARGA_ALOCACAO, TFRMORCAMENTO_CARGA, TFRMORCAMENTO_JUNCAO_VENDA, TFRMORCAMENTO_REPORT_MARGEM, TFRMOSERVICO, TFRMPRODUCAO_ORCAMENTO
  CD_EMITENTE int,
  CD_FILIAL smallint,
  CD_FUNCIONARIO smallint,
  CD_SERIE int /*inferido-prefixo*/,
  NR_ECF int /*inferido-prefixo*/,
  NR_ENDERECO int /*inferido*/,
  NR_FATURA int,
  NR_ORCAMENTO int,
  NR_PEDIDO_EMITENTE varchar(30) /*inferido*/,
  DT_CONFIRMADO datetime /*inferido-prefixo*/,
  DT_EMISSAO datetime,
  DT_FATURA datetime,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  FL_FORMAPAGTO char(1) /*inferido-prefixo*/,
  FL_JUNCAO varchar(1),
  MG_PEDIDO numeric(12,2),
  NM_CIDADE varchar(60) /*inferido*/,
  NM_EMITENTE varchar(50),
  NM_FANTASIA varchar(30) /*inferido*/,
  NM_FUNCIONARIO varchar(50),
  PR_DESCONTO numeric(9,3) /*inferido*/,
  PS_PEDIDO numeric(18,4) /*inferido-prefixo*/,
  ST_ORCAMENTO varchar(1),
  VL_ORCAMENTO numeric(12,3),
  VL_PEDIDO_FRETE numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE OSERVICO (  -- usada em: TFRMOSERVICO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_OS int,
  DT_ENTREGA datetime /*inferido*/,
  DT_INICIO datetime /*inferido*/,
  DT_OS datetime /*inferido-prefixo*/,
  DT_TERMINO datetime /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  ST_OS char(1) /*inferido-prefixo*/
);

CREATE TABLE OSERVICO_ITEM (  -- usada em: TFRMOSERVICO_ITEM, TFRMOSERVICO_ORCAMENTO
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  NR_HEIGHT smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_OS int /*inferido*/,
  NR_WIDTH smallint /*inferido*/,
  IM_DRAW image /*inferido-prefixo*/,
  IM_ITEM image /*inferido*/,
  MM_OBSITEM sql_variant /*inferido-prefixo*/,
  NEWITEM smallint,
  NM_PRODUTO varchar(120) /*inferido*/
);

CREATE TABLE PAGAR (  -- usada em: TFRMCOMISSAO_PAGAR, TFRMENTRADA_IMPORTA, TFRMPAGAR, TFRMPAGAR_ATUALIZAVENCTO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_GRUPO smallint /*inferido*/,
  CD_SUBGRUPO smallint /*inferido*/,
  NR_COMISSAO smallint /*inferido*/,
  NR_ENTRADA int /*inferido*/,
  NR_PAGAR int /*inferido-prefixo*/,
  DS_PAGAR varchar(100) /*inferido-prefixo*/,
  DT_CANCELAMENTO datetime /*inferido-prefixo*/,
  DT_EMISSAO datetime /*inferido*/,
  ST_PAGAR char(1) /*inferido-prefixo*/,
  VL_DUPLICATA numeric(18,4) /*inferido-prefixo*/,
  VL_PAGO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE PAGAR_HISTORICO (  -- usada em: TFRMCOMISSAO_PAGAR, TFRMPAGAR, TFRMPAGAR_ATUALIZAVENCTO
  CD_FILIAL smallint /*inferido*/,
  CD_USUARIO varchar(15),
  NR_DOCTOBAIXA varchar(50),
  NR_LANCAMENTO int /*inferido*/,
  NR_PAGAR int /*inferido-prefixo*/,
  NR_PARCELA smallint /*inferido*/,
  DT_LANCAMENTO datetime /*inferido*/,
  TP_LANCAMENTO varchar(1) /*inferido*/,
  VL_LANCAMENTO numeric(12,2) /*inferido*/
);

CREATE TABLE PAGAR_PARCELA (  -- usada em: TFRMCOMISSAO_PAGAR, TFRMPAGAR_ATUALIZAVENCTO
  CD_FILIAL smallint /*inferido*/,
  CD_PORTADOR smallint /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_PAGAR int /*inferido-prefixo*/,
  NR_PARCELA smallint /*inferido*/,
  DT_VENCIMENTO datetime /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  PR_MORA numeric(9,4) /*inferido-prefixo*/,
  VL_MORA numeric(18,4) /*inferido-prefixo*/,
  VL_PAGO numeric(18,4) /*inferido-prefixo*/,
  VL_PARCELA numeric(12,2) /*inferido*/
);

CREATE TABLE PORTADOR (  -- usada em: TFRMORCAMENTO_FECHAMENTO, TFRMPORTADOR, TFRMPORTADOR_FIND, TFRMRECEBER_REMESSA, TFRMRECEBER_SUPORTE
  CD_AGENCIA varchar(4),
  CD_BANCO varchar(3),
  CD_CARTEIRA smallint,
  CD_EMITENTE int,
  CD_PORTADOR smallint,
  NR_CHEQUE int,
  NR_CONTA varchar(10),
  NR_DATALIMITE int /*inferido-prefixo*/,
  NR_DOCTOBANCO varchar(25),
  NR_DOCUMENTO varchar(14),
  NR_INDICADOR int /*inferido-prefixo*/,
  NR_ORCAMENTO int,
  NR_PARINTERNA smallint,
  NR_PRAZO smallint,
  NR_PRAZO_PROTESTO smallint,
  NR_RECEBER int,
  NR_REMESSA smallint,
  NR_SEPARADOR int /*inferido-prefixo*/,
  NR_SUPORTE smallint,
  NR_TELEFONE varchar(10),
  NR_UNIDADE int /*inferido-prefixo*/,
  CAUT varchar(20),
  CLIENTEID sql_variant /*inferido-prefixo*/,
  CLIENTESECRET sql_variant /*inferido-prefixo*/,
  DP_PAGAMENTO varchar(8190),
  DS_BOLETO varchar(100) /*inferido-prefixo*/,
  DS_CARTEIRA varchar(20),
  DS_COBRANCA varchar(30),
  DS_LIVRE varchar(30),
  DS_LOCALPAGAMENTO varchar(100) /*inferido-prefixo*/,
  DT_EMISSAO datetime,
  DT_VENCIMENTO datetime,
  FL_ENTREGA char(1) /*inferido-prefixo*/,
  FL_IMPRIMIR varchar(1),
  FL_PAGAMENTO char(1) /*inferido-prefixo*/,
  FL_PARCELA varchar(1),
  IM_LOGO image /*inferido*/,
  MM_INSTRUCAO sql_variant /*inferido-prefixo*/,
  MM_RESTRICAO text,
  NM_CLIENTE varchar(50),
  NM_EMITENTE varchar(50),
  NM_FANTASIA varchar(30),
  NM_PORTADOR varchar(50),
  PR_MULTA numeric(7,2),
  PR_TAXAJUROS numeric(18,2),
  PR_TXADMCARTAO numeric(9,4) /*inferido-prefixo*/,
  TP_COBRANCA varchar(1),
  TP_MODELO varchar(1),
  VL_PARCELA numeric(12,2),
  VL_SUPORTE numeric(12,2),
  VL_TARIFA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE PRODUCAO (  -- usada em: TFRMPRODUCAO, TFRMPRODUCAO_FIND
  CD_FILIAL smallint,
  CD_USUARIO varchar(15),
  NR_PRODUCAO int,
  DT_INICIO datetime,
  DT_PREVISTO datetime,
  DT_PRODUCAO datetime,
  DT_TERMINO datetime,
  MM_OBSERVACAO text,
  ST_PRODUCAO varchar(1)
);

CREATE TABLE PRODUCAO_ITEM (  -- usada em: TFRMPRODUCAO_ETIQUETA, TFRMPRODUCAO_MARCACAO, TFRMPRODUCAO_MARCACAO_DEFEITO, TFRMPRODUCAO_SERVICO
  CD_FILIAL smallint /*inferido*/,
  CD_MOTIVO smallint /*inferido*/,
  NR_ALTURA numeric(12,4) /*inferido*/,
  NR_COMPRIMENTO numeric(12,4) /*inferido*/,
  NR_DETALHE smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_ITEM_PROJETO int /*inferido-prefixo*/,
  NR_LARGURA numeric(12,4) /*inferido*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_PRODUCAO int /*inferido*/,
  NR_PROJETO smallint /*inferido*/,
  DT_MOTIVO datetime /*inferido-prefixo*/,
  IDPRODUCAO smallint,
  ID_PRODUCAO smallint,
  ID_REPRODUCAO sql_variant /*inferido-prefixo*/,
  ID_TERMINO smallint,
  NEWID smallint
);

CREATE TABLE PRODUCAO_SETOR (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_SETOR smallint /*inferido*/,
  NR_PRODUCAO int /*inferido*/,
  DT_INICIO datetime /*inferido*/,
  DT_TERMINO datetime /*inferido*/,
  FL_SETOR char(1) /*inferido-prefixo*/,
  ID_PRODUCAO smallint /*inferido*/
);

CREATE TABLE PRODUTO (  -- usada em: TFRMCOMPRA_ITEM_SELECT, TFRMCOMPRA_ORCAMENTO, TFRMENTRADA_ITEM_SELECT, TFRMENTRADA_NFEITEM_PRODUTO, TFRMORCAMENTO_MOLDURA, TFRMPRODUTO, TFRMRECEBER_SUPORTE, TFRMSAIDA_ITEM_SELECT
  CD_ARREDONDAMENTO smallint /*inferido*/,
  CD_BAIXA int /*inferido-prefixo*/,
  CD_BARRA int /*inferido-prefixo*/,
  CD_CEST varchar(7) /*inferido*/,
  CD_CLASFISCAL varchar(10),
  CD_CLASSE smallint /*inferido*/,
  CD_CPRODANP int /*inferido-prefixo*/,
  CD_EMITENTE int /*inferido*/,
  CD_FABRICANTE int /*inferido-prefixo*/,
  CD_GRUPO smallint /*inferido*/,
  CD_LABORATORIO smallint /*inferido*/,
  CD_LOCALIZACAO smallint /*inferido*/,
  CD_PRODUTO int,
  CD_SUBGRUPO smallint /*inferido*/,
  CD_TRIBUTACAO smallint /*inferido*/,
  NR_MOLDESPESSURA numeric(9,2),
  NR_MOLDPERDA numeric(9,2),
  NR_PRAZO smallint /*inferido*/,
  NR_REG_FEDERAL int /*inferido-prefixo*/,
  NR_SEQUENCIA int /*inferido*/,
  DS_DESCANP varchar(100) /*inferido-prefixo*/,
  DT_ALTERACAO datetime /*inferido-prefixo*/,
  DT_CADASTRO datetime /*inferido-prefixo*/,
  FL_ATIVO varchar(1) /*inferido*/,
  FL_ESTRUTURA char(1) /*inferido-prefixo*/,
  FL_IMGCLASSE char(1) /*inferido-prefixo*/,
  FL_LOTE char(1) /*inferido-prefixo*/,
  FL_ORIGEM varchar(1) /*inferido*/,
  FL_PERECIVEL char(1) /*inferido-prefixo*/,
  FL_PRODUTO char(1) /*inferido-prefixo*/,
  FL_PSICOTROPICO char(1) /*inferido-prefixo*/,
  IM_PRODUTO image,
  NM_ABREVIADO varchar(60) /*inferido-prefixo*/,
  NM_PRODUTO varchar(120),
  PR_COMISSAO numeric(7,2) /*inferido*/,
  PR_GERENTE numeric(9,4) /*inferido-prefixo*/,
  PR_IPI numeric(9,4) /*inferido-prefixo*/,
  PR_LUCRO numeric(9,4) /*inferido-prefixo*/,
  PR_REDUZ_CONTRIB numeric(9,4) /*inferido-prefixo*/,
  PR_REDUZ_NAOCONTRIB numeric(9,4) /*inferido-prefixo*/,
  PR_VENDEDOR numeric(9,4) /*inferido-prefixo*/,
  PS_PRODUTO numeric(18,4) /*inferido-prefixo*/,
  QT_EST_MAXIMO numeric(18,4) /*inferido-prefixo*/,
  QT_EST_MINIMO numeric(18,4) /*inferido-prefixo*/,
  QT_PRODUTO numeric(32,3),
  SG_ESTOQUE varchar(2),
  SG_UNIDADE varchar(2),
  SG_VENDA varchar(3) /*inferido-prefixo*/,
  TP_PRECO varchar(1),
  VL_MVA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE PRODUTO_COMPOSICAO (  -- usada em: 
  CD_COMPOSTO smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/
);

CREATE TABLE PRODUTO_CONJUNTO (  -- usada em: 
  CD_PRODUTO int /*inferido*/,
  CD_PRODUTO_CJ int /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/
);

CREATE TABLE PRODUTO_FORNECEDOR (  -- usada em: TFRMENTRADA_ITEM, TFRMPRODUTO_FORNECEDOR_INSERT
  CD_EMITENTE int /*inferido*/,
  CD_PRODUTO int,
  CD_PRODUTO_EMITENTE int /*inferido-prefixo*/,
  NR_FATOR_DISTRIBUIDOR int /*inferido-prefixo*/,
  NR_FATOR_FORNECEDOR int /*inferido-prefixo*/
);

CREATE TABLE PRODUTO_PRAZO (  -- usada em: TFRMPRODUTO_PRAZO, TFRMPRODUTO_PRAZO_FIND
  NR_PRAZO smallint,
  PR_ACRES_PRAZO numeric(9,2),
  PR_AVISTA numeric(9,2),
  PR_DECRES_PRAZO numeric(9,2)
);

CREATE TABLE PRODUTO_PRECO (  -- usada em: 
  CD_PRODUTO int /*inferido*/,
  CD_TABELA varchar(10) /*inferido*/,
  DT_ALTERACAO datetime /*inferido-prefixo*/,
  VL_CUSTO numeric(12,2) /*inferido*/,
  VL_PROMOCAO numeric(18,4) /*inferido-prefixo*/,
  VL_REPOSICAO numeric(18,4) /*inferido-prefixo*/,
  VL_VENDA numeric(28,6) /*inferido*/
);

CREATE TABLE PRODUTO_TBLPRECO (  -- usada em: TFRMPRODUTO_TABELA, TFRMPRODUTO_TABELA_VIEW
  CD_TABELA varchar(10),
  NR_ENTREGA smallint,
  DS_TABELA varchar(30),
  DT_INICIO datetime,
  DT_TERMINO datetime,
  FL_ATIVA varchar(1)
);

CREATE TABLE PRODUTO_UNIDADE (  -- usada em: TFRMORCAMENTO, TFRMORCAMENTO_DETALHE, TFRMORCAMENTO_NEW, TFRMORCAMENTO_PERIMETRO
  CD_PRODUTO int /*inferido*/,
  NR_FATOR numeric(18,3),
  NR_INDICE numeric(9,4),
  SG_UNIDADE varchar(2)
);

CREATE TABLE PROJETO (  -- usada em: TFRMPROJETO, TFRMPROJETO_FIND
  CD_PRODUTO int /*inferido*/,
  CD_PROJETO int,
  NR_HEIGHT smallint,
  NR_WIDTH smallint,
  DESENHOPROJETO image,
  IM_PROJETO image,
  MM_COMPLEMENTO sql_variant /*inferido-prefixo*/,
  NM_PROJETO varchar(100)
);

CREATE TABLE PROJETO_ITEM (  -- usada em: TFRMPROJETO_ITEM
  CD_PARTE smallint,
  CD_PECA varchar(10),
  CD_PRODUTO int,
  CD_PROJETO int /*inferido*/,
  NR_ALTURA_FOLGA smallint,
  NR_ITEM smallint /*inferido*/,
  NR_LARGURA_FOLGA smallint,
  DS_FORM_ALTURA varchar(30),
  DS_FORM_LARGURA varchar(30),
  QT_ITEM numeric(12,4),
  SG_UNIDADE varchar(2),
  TP_ITEM char(1) /*inferido-prefixo*/
);

CREATE TABLE PROJETO_ITEM_POSICAO (  -- usada em: 
  CD_PROJETO int /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_LEFT int /*inferido-prefixo*/,
  NR_POSICAO int /*inferido-prefixo*/,
  NR_TOP int /*inferido-prefixo*/
);

CREATE TABLE PROJETO_PARTE (  -- usada em: TFRMPROJETO_PARTE, TFRMPROJETO_PARTE_FIND
  CD_PARTE smallint,
  DS_PARTE varchar(30)
);

CREATE TABLE PROJETO_PARTE_POSICAO (  -- usada em: 
  CD_PARTE smallint /*inferido*/,
  CD_PROJETO int /*inferido*/,
  NR_LEFT int /*inferido-prefixo*/,
  NR_TOP int /*inferido-prefixo*/,
  FL_DIMENSAO char(1) /*inferido-prefixo*/
);

CREATE TABLE PROJETO_PECA (  -- usada em: TFRMORCAMENTO_PROJETO_ITEM, TFRMPROJETO_ITEM, TFRMPROJETO_PECA, TFRMPROJETO_PECA_FIND
  CD_PECA varchar(10),
  DS_PECA varchar(50)
);

CREATE TABLE RECEBER (  -- usada em: TFRMORCAMENTO_FATURA, TFRMRECEBER, TFRMRECEBER_ATUALIZAVENCTO
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  NR_BALCAO int /*inferido-prefixo*/,
  NR_ORCAMENTO int /*inferido*/,
  NR_RECEBER int,
  DS_FATURA varchar(100) /*inferido-prefixo*/,
  DS_RECEBER varchar(100) /*inferido-prefixo*/,
  DT_CANCELAMENTO datetime /*inferido-prefixo*/,
  DT_EMISSAO datetime /*inferido*/,
  NEWRECEBER int,
  ST_RECEBER char(1) /*inferido-prefixo*/,
  VL_DUPLICATA numeric(18,4) /*inferido-prefixo*/,
  VL_RECEBIDO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE RECEBER_HISTORICO (  -- usada em: TFRMRECEBER, TFRMRECEBER_ATUALIZAVENCTO
  CD_FILIAL smallint,
  CD_USUARIO varchar(15),
  NR_DOCTOBAIXA varchar(50),
  NR_LANCAMENTO smallint,
  NR_PARCELA smallint,
  NR_RECEBER int,
  NR_RESUMO int,
  DT_LANCAMENTO datetime,
  TP_LANCAMENTO varchar(1),
  VL_LANCAMENTO numeric(10,4)
);

CREATE TABLE RECEBER_PARCELA (  -- usada em: TFRMRECEBER_ATUALIZAVENCTO, TFRMRECEBER_RESUMO
  CD_ENVIO int /*inferido-prefixo*/,
  CD_FILIAL smallint,
  CD_PORTADOR smallint /*inferido*/,
  NR_DOCTOBANCO varchar(25) /*inferido*/,
  NR_PARCELA smallint,
  NR_RECEBER int,
  DT_ENVIOBANCO datetime /*inferido-prefixo*/,
  DT_GERACAO datetime /*inferido-prefixo*/,
  DT_VENCIMENTO datetime /*inferido*/,
  ID_PARCELA sql_variant /*inferido-prefixo*/,
  MM_BOLETO text /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  VL_PARCELA numeric(12,2) /*inferido*/,
  VL_RECEBIDO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE RECEBER_PARCELAVW (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_RECEBER int /*inferido*/,
  DP_PORTADOR sql_variant /*inferido-prefixo*/,
  DT_RECEBIMENTO datetime /*inferido-prefixo*/,
  DT_VENCIMENTO datetime /*inferido*/,
  VL_PARCELA numeric(12,2) /*inferido*/,
  VL_RECEBIDO numeric(18,4) /*inferido-prefixo*/,
  VL_SALDO numeric(28,6) /*inferido*/
);

CREATE TABLE RECEBER_RESUMO (  -- usada em: 
  CD_PORTADOR smallint /*inferido*/,
  NR_RESUMO int /*inferido*/,
  DT_PROCESSAMENTO datetime /*inferido-prefixo*/,
  DT_RESUMO datetime /*inferido-prefixo*/,
  FL_PROCESSO char(1) /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_ARQUIVO varchar(60) /*inferido-prefixo*/,
  VL_RESUMO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE RECEBER_RESUMO_DADOS (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_OCORRENCIA smallint /*inferido*/,
  NR_DOCTOBANCO varchar(25) /*inferido*/,
  NR_LINHA smallint /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_RECEBER int /*inferido*/,
  NR_RESUMO int /*inferido*/,
  DS_MOTIVO varchar(50) /*inferido*/,
  DT_OCORRENCIA datetime /*inferido-prefixo*/,
  FL_BAIXA char(1) /*inferido-prefixo*/,
  VL_ABATIMENTO numeric(18,4) /*inferido-prefixo*/,
  VL_COBRADO numeric(18,4) /*inferido-prefixo*/,
  VL_CREDITOS numeric(18,4) /*inferido-prefixo*/,
  VL_DESCONTO numeric(12,2) /*inferido*/,
  VL_DESPESAS numeric(18,4) /*inferido-prefixo*/,
  VL_JUROS numeric(18,4) /*inferido-prefixo*/,
  VL_JUROSCARTORIO numeric(18,4) /*inferido-prefixo*/,
  VL_MULTA numeric(18,4) /*inferido-prefixo*/,
  VL_PARCELA numeric(12,2) /*inferido*/,
  VL_TARIFACOBRANCA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE RECEBER_RESUMO_DADOSVW (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_OCORRENCIA smallint /*inferido*/,
  NR_PARCELA smallint /*inferido*/,
  NR_RECEBER int /*inferido*/,
  NR_RESUMO int /*inferido*/,
  DP_OCORRENCIA sql_variant /*inferido-prefixo*/,
  VL_COBRADO numeric(18,4) /*inferido-prefixo*/,
  VL_PARCELA numeric(12,2) /*inferido*/
);

CREATE TABLE REDUCAODIARIA (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  NR_CRO int /*inferido-prefixo*/,
  NR_CRZ int /*inferido-prefixo*/,
  NR_PRIMEIRO_COO int /*inferido-prefixo*/,
  NR_SERIE varchar(20) /*inferido*/,
  NR_ULTIMO_COO int /*inferido-prefixo*/,
  DT_REDUCAO datetime /*inferido-prefixo*/,
  VL_TOTALGERAL numeric(18,4) /*inferido-prefixo*/,
  VL_VENDABRUTA numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE REDUCAODIARIA_ALIQUOTA (  -- usada em: 
  CD_ALIQUOTA varchar(15) /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  NR_SERIE varchar(20) /*inferido*/,
  DT_REDUCAO datetime /*inferido-prefixo*/,
  VL_ALIQUOTA numeric(18,4) /*inferido-prefixo*/,
  VL_BASE numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE ROTA (  -- usada em: TFRMROTA, TFRMROTA_FIND
  CD_ROTA smallint,
  DS_ROTA varchar(50)
);

CREATE TABLE SAIDA (  -- usada em: TFRMNFE, TFRMORCAMENTO_TERCEIROS, TFRMSAIDA
  CD_CFOP varchar(4) /*inferido*/,
  CD_EMITENTE int /*inferido*/,
  CD_FILIAL smallint /*inferido*/,
  CD_MODELOFISCAL varchar(2) /*inferido*/,
  CD_SERIE int /*inferido-prefixo*/,
  CD_TRANSPORTADOR smallint /*inferido*/,
  NR_CHAVE varchar(44),
  NR_CUPOMFISCAL int,
  NR_ECF int /*inferido-prefixo*/,
  NR_FATURA smallint /*inferido*/,
  NR_PLACA varchar(7) /*inferido*/,
  NR_SAIDA int,
  DS_ESPECIE varchar(100) /*inferido-prefixo*/,
  DS_MARCA varchar(100) /*inferido-prefixo*/,
  DS_QUANTIDADE varchar(100) /*inferido-prefixo*/,
  DT_EMISSAO datetime /*inferido*/,
  DT_LANCAMENTO datetime /*inferido*/,
  FINNFE sql_variant /*inferido-prefixo*/,
  FL_CONFINAL char(1) /*inferido-prefixo*/,
  FL_ESTOQUE char(1) /*inferido-prefixo*/,
  FL_FRETE char(1) /*inferido-prefixo*/,
  MM_NOTA sql_variant /*inferido-prefixo*/,
  MM_OBSERVACAO text /*inferido*/,
  NATOP sql_variant /*inferido-prefixo*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PS_LIQUIDO numeric(18,4) /*inferido-prefixo*/,
  PS_NOTA numeric(18,4) /*inferido-prefixo*/,
  REFNFE sql_variant /*inferido-prefixo*/,
  ST_COMPRA char(1) /*inferido-prefixo*/,
  ST_SAIDA char(1) /*inferido-prefixo*/,
  VL_BASEICMS numeric(18,4) /*inferido-prefixo*/,
  VL_BASESUBST numeric(18,4) /*inferido-prefixo*/,
  VL_DESCONTO numeric(12,2) /*inferido*/,
  VL_DESPESA numeric(18,4) /*inferido-prefixo*/,
  VL_FRETE numeric(18,4) /*inferido-prefixo*/,
  VL_ICMS numeric(18,4) /*inferido-prefixo*/,
  VL_IPI numeric(18,4) /*inferido-prefixo*/,
  VL_NOTA numeric(18,4) /*inferido-prefixo*/,
  VL_PRODUTO numeric(18,4) /*inferido-prefixo*/,
  VL_SEGURO numeric(18,4) /*inferido-prefixo*/,
  VL_SUBSTITUICAO numeric(18,4) /*inferido-prefixo*/
);

CREATE TABLE SAIDA_ITEM (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_PRODUTO int /*inferido*/,
  CD_TRIBUTACAO smallint /*inferido*/,
  NR_ITEM smallint /*inferido*/,
  NR_LOTE int /*inferido-prefixo*/,
  NR_SAIDA int /*inferido*/,
  DT_FABRICACAO datetime /*inferido-prefixo*/,
  DT_VALIDADE datetime /*inferido-prefixo*/,
  NITEMPED sql_variant /*inferido-prefixo*/,
  NM_PRODUTO varchar(120) /*inferido*/,
  PR_ICMS numeric(9,4) /*inferido-prefixo*/,
  PR_IPI numeric(9,4) /*inferido-prefixo*/,
  QT_ESTOQUE numeric(18,4) /*inferido-prefixo*/,
  QT_ITEM numeric(12,4) /*inferido*/,
  SG_UNIDADE varchar(2) /*inferido*/,
  VL_UNITARIO numeric(18,4) /*inferido-prefixo*/,
  XPED sql_variant /*inferido-prefixo*/
);

CREATE TABLE SAIDA_PARCELA (  -- usada em: TFRMNOTA, TFRMSAIDA
  CD_FILIAL smallint,
  CD_FORMAPAGAMENTO varchar(2),
  NR_DOCUMENTO varchar(12),
  NR_SAIDA int,
  DT_VENCIMENTO datetime,
  VL_PARCELA numeric(12,3)
);

CREATE TABLE SETOR (  -- usada em: TFRMPRODUCAO_SERVICO, TFRMSETOR, TFRMSETOR_FIND
  CD_SETOR smallint,
  NR_SPID int,
  FL_ATIVO varchar(1),
  ID_PRODUCAO smallint,
  NM_SETOR varchar(50),
  SG_SETOR varchar(15)
);

CREATE TABLE SOLICITACAO (  -- usada em: TFRMSOLICITACAO_ITEM
  CD_EMITENTE int /*inferido*/,
  CD_RESPONSAVEL int /*inferido-prefixo*/,
  CD_SOLICITANTE int /*inferido-prefixo*/,
  NR_ITEM smallint,
  NR_PRIORIDADE int /*inferido-prefixo*/,
  DS_SOLICITACAO varchar(100) /*inferido-prefixo*/,
  DT_INCLUSAO datetime /*inferido-prefixo*/,
  DT_INICIO datetime /*inferido*/,
  DT_PREVISTA datetime /*inferido-prefixo*/,
  DT_TERMINO datetime /*inferido*/,
  FL_SITUACAO char(1) /*inferido-prefixo*/,
  ID_SOFTWARE sql_variant /*inferido-prefixo*/,
  MM_SOLICITACAO sql_variant /*inferido-prefixo*/
);

CREATE TABLE SUBGRUPO (  -- usada em: TFRMSUBGRUPO, TFRMSUBGRUPO_FIND
  CD_NATUREZARECEITA varchar(3),
  CD_SUBGRUPO smallint,
  NM_SUBGRUPO varchar(50),
  PR_COMISSAO numeric(7,2)
);

CREATE TABLE SUBPRODUTO (  -- usada em: TFRMORCAMENTO_DETALHE, TFRMORCAMENTO_PERIMETRO, TFRMSUBPRODUTO, TFRMSUBPRODUTO_FIND
  CD_SUBPRODUTO smallint,
  FL_ATIVO varchar(1),
  IM_SUBPRODUTO image,
  NM_SUBPRODUTO varchar(50),
  PR_CUSTO numeric(9,3)
);

CREATE TABLE TRANSPORTADOR (  -- usada em: TFRMTRANSPORTADOR
  CD_CIDADE int /*inferido*/,
  CD_TRANSPORTADOR smallint,
  NR_CAPACIDADE numeric(12,3),
  NR_CELULAR varchar(11),
  NR_CEP varchar(8) /*inferido*/,
  NR_DOCUMENTO varchar(14) /*inferido*/,
  NR_INSCESTADUAL int /*inferido-prefixo*/,
  NR_PLACA varchar(7),
  NR_TELEFONE varchar(10),
  DS_COMPLEMENTO varchar(30) /*inferido*/,
  DS_EMAIL varchar(50) /*inferido*/,
  DS_ENDERECO varchar(50) /*inferido*/,
  MM_OBSERVACAO text /*inferido*/,
  NM_BAIRRO varchar(65) /*inferido*/,
  NM_TRANSPORTADOR varchar(50)
);

CREATE TABLE TRANSPORTADOR_CONTATO (  -- usada em: TFRMTRANSPORTADOR, TFRMTRANSPORTADOR_CONTATO
  CD_TRANSPORTADOR smallint /*inferido*/,
  NR_CELULAR varchar(11),
  NR_CONTATO smallint,
  NR_RAMAL smallint,
  NR_TELEFONE varchar(11),
  DS_CARGO varchar(30),
  DS_EMAIL varchar(50),
  DT_NASCIMENTO datetime,
  NM_CONTATO varchar(50)
);

CREATE TABLE TRIBUTACAO (  -- usada em: TFRMNOTA, TFRMTRIBUTACAO
  CD_CFOPDENTRO int /*inferido-prefixo*/,
  CD_CFOPFORA int /*inferido-prefixo*/,
  CD_CST varchar(5),
  CD_CST_COFINS int /*inferido-prefixo*/,
  CD_CST_FORA int /*inferido-prefixo*/,
  CD_CST_FORA_NC int /*inferido-prefixo*/,
  CD_CST_NC int /*inferido-prefixo*/,
  CD_CST_PIS int /*inferido-prefixo*/,
  CD_ENTRADA int /*inferido-prefixo*/,
  CD_TRIBUTACAO smallint,
  DS_CBENEFICIO varchar(100) /*inferido-prefixo*/,
  DS_TRIBUTACAO varchar(30),
  FL_ISSRETIDO char(1) /*inferido-prefixo*/,
  MM_OBSNOTA text,
  PR_COFINS numeric(9,4) /*inferido-prefixo*/,
  PR_CONTRIB numeric(7,2),
  PR_ECF numeric(9,4) /*inferido-prefixo*/,
  PR_MVA_DENTRO numeric(9,4) /*inferido-prefixo*/,
  PR_MVA_FORA numeric(9,4) /*inferido-prefixo*/,
  PR_NAOCONTRIB numeric(7,2),
  PR_PFCPST numeric(9,4) /*inferido-prefixo*/,
  PR_PIS numeric(9,4) /*inferido-prefixo*/,
  TP_TRIBUTACAO char(1) /*inferido-prefixo*/
);

CREATE TABLE UNIDADE (  -- usada em: TDMMASTER, TFRMSPED_CONTRIBUICOES, TFRMSPED_FISCAL, TFRMUNIDADE, TFRMUNIDADE_FIND
  DP_UNIDADE varchar(254),
  DS_UNIDADE varchar(30),
  ID_UNIDADE sql_variant /*inferido-prefixo*/,
  NEW smallint,
  SG_UNIDADE varchar(2)
);

CREATE TABLE USUARIO (  -- usada em: TFRMUSUARIO, TFRMUSUARIO_FIND, TFRMUSUARIO_GRUPO, TFRMUSUARIO_SENHA
  CD_FUNCIONARIO smallint /*inferido*/,
  CD_GRUPO smallint /*inferido*/,
  CD_USUARIO varchar(15),
  NR_FRENTE int /*inferido-prefixo*/,
  NR_FUNDO int /*inferido-prefixo*/,
  NR_PANEL int /*inferido-prefixo*/,
  NR_TELA int /*inferido-prefixo*/,
  DS_EMAIL varchar(50) /*inferido*/,
  NM_USUARIO varchar(50),
  SH_USUARIO sql_variant /*inferido-prefixo*/
);

CREATE TABLE USUARIO_FILIAL (  -- usada em: 
  CD_FILIAL smallint /*inferido*/,
  CD_USUARIO varchar(15) /*inferido*/
);

CREATE TABLE USUARIO_GRUPO (  -- usada em: TFRMUSUARIO_GRUPO, TFRMUSUARIO_GRUPO_FIND
  CD_GRUPO smallint,
  NM_GRUPO varchar(50)
);

CREATE TABLE USUARIO_GRUPO_ACESSO (  -- usada em: 
  CD_ACESSO int /*inferido-prefixo*/,
  CD_GRUPO smallint /*inferido*/
);

CREATE TABLE VALIDACAO (  -- usada em: TDMMASTER
  NR_COMPUTADORES varchar(10),
  NR_CONEXOES smallint,
  DS_VALID varchar(20),
  DT_ULTIMOENVIO datetime,
  DT_VALIDACAO datetime,
  ID_CLIENTE varchar(20)
);
