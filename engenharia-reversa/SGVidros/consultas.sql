-- ===== TDMCHECK.ADODsClasse
-- Classe de Produto
select
  Cd_Classe, Nm_Classe, Im_Classe

from
  Classe

where
  Cd_Classe = :Cd_Classe

-- ===== TDMCHECK.ADODsProduto
-- Produto
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Fl_Lote, PP.Vl_Custo, PU.Nr_Fator,
  A.Vl_Arredondamento, P.Fl_Ativo, P.Sg_Venda, P.Fl_Produto, PP.Vl_Venda, PP.Vl_Reposicao

from
  Produto P

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Estoque
  
left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

where
  P.Cd_Produto = :Cd_Produto

-- ===== TDMMASTER.ADODsUsuario
select
  U.Cd_Usuario, U.Nm_Usuario, U.Sh_Usuario, U.Cd_Grupo, U.Nr_Tela,
  U.Nr_Fundo, U.Nr_Frente, U.Nr_Panel, U.Cd_Funcionario, 
  F.Nm_Funcionario, U.Ds_EMail

from
  Usuario U

left join
  Funcionario F
on
  F.Cd_Funcionario = U.Cd_Funcionario

where
  U.Cd_usuario = :Cd_Usuario

-- ===== TDMMASTER.ADODsUsuarioAcesso
select
  Cd_Grupo

from
  Usuario_Grupo_Acesso

where
  Cd_Grupo  = :Cd_Grupo and
  Cd_Acesso = :Cd_Acesso

-- ===== TDMMASTER.ADODsFilial
select
  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,
  F.Ds_endereco, F.nm_bairro, F.Ds_Complemento, F.Cd_Cidade, C.Nm_Cidade,
  E.Sg_Estado, F.Nr_CEP, F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular,
  F.Ds_EMail, F.Ds_Site, F.Cd_Tabela, F.Nr_Licenca,
  Cast( E.sg_estado as VarChar ) + ' - ' + E.Nm_Estado as Dp_Estado,
  F.Fl_Estoque, F.Cd_Portador, P.Nm_Portador, F.Im_Logo, F.Mm_Rodape,
  F.Cd_Historico_Balcao, HB.Ds_Historico as Ds_Historico_Balcao,
  F.Cd_Grupo_Emitente, F.Cd_SubGrupo_Emitente, 
  F.Nr_Compra, F.Cd_CFOP_In, CFIn.Ds_CFOP as Ds_CFOP_In,
  F.Cd_CFOP_Out, CFOut.Ds_CFOP as Ds_CFOP_Out, F.Ds_Valid, F.Id_Cliente,
  F.Fl_Simples, F.Mm_Simples, F.Im_Cabecalho, F.Pr_Margem,
  F.Nm_Smtp_EM, F.Nm_Usuario_EM, F.Sh_Usuario_EM, F.Nr_Porta_EM,
  F.Ds_Titulo_EM, F.Mm_Mensagem_EM, F.Fl_Figura, F.Fl_TamFigura,
  F.Fl_Detalhe, F.Fl_MeiaPagina, F.Fl_Transportador, F.Fl_EndCobranca,
  F.Fl_EndEntrega, F.Fl_Margem, F.Fl_RemoveLinhas, F.Fl_Logo, F.Fl_Medida,
  F.Nr_Area_Decimal, F.Qt_Area_Minima, F.Vl_Dolar, F.Ds_Orcamento,
  F.Fl_Representante, F.Fl_PrazoEntrega, F.Ds_Custo, F.Fl_SomaST,
  F.Fl_Formulario, C.Cd_IBGE, F.Fl_Conjunto, F.Fl_NFe,
  F.Cd_CST_Pis, F.Pr_PIS, F.Cd_CST_Cofins, F.Pr_Cofins,
  E.Cd_IBGE as Cd_IBGE_UF, F.Ds_Numero, F.Fl_ComissaoJuncao,
  F.Nr_PrazoEntrega, F.Fl_EtiquetaProducao, F.Cd_PortadorCartao,
  F.Cd_HistoricoCartao, F.Fl_AnalisaCredito,
  F.Fl_FusoHorario, F.Fl_ImpTotalAmbiente, F.Fl_Regime, F.Nr_CorFundo,

  F.Cd_PortadorDebito, F.Cd_PortadorPIX, F.Cd_HistoricoDebito, F.Cd_HistoricoPIX

from
  Filial F

inner join
  cidade c
on
  C.cd_cidade = F.cd_cidade

inner join
  estado E
on
  E.sg_estado = C.sg_estado

left join
  Portador P
on
  P.Cd_Portador = F.Cd_Portador

left join
  Historico HB
on
  HB.Cd_Historico = F.Cd_Historico_Balcao

left join
  CFOP CFIn
on
  CFIn.Cd_CFOP = F.Cd_CFOP_In

left join
  CFOP CFOut
on
  CFOut.Cd_CFOP = F.Cd_CFOP_Out

where
  F.Cd_Filial = :Cd_Filial

-- ===== TDMMASTER.ADODsUnidade
select
  A.Sg_Unidade, A.Ds_Unidade,
  A.Sg_Unidade + ' - ' + A.Ds_Unidade as Dp_Unidade

from
  Unidade A

order by
  A.Sg_Unidade

-- ===== TDMMASTER.ADODsEstacao
select
  E.Nm_Estacao, E.Tp_IFiscal, E.Nr_PortaIFiscal, EA.Cd_Aliquota,
  EA.Pr_Aliquota, EA.Tp_Aliquota, E.Fl_Promocional, E.Fl_Tela, 
  E.Mm_Promocional, E.Ds_Path_PRN, E.Nr_Serie, E.Nr_Ordem,
  E.Cd_ModeloFiscal, Ds_PrnNota, Ds_PrnDuplicata, Ds_PrnBoleto, 
  Ds_PrnDanfe, Ds_PrnNFe, Ds_PrnOEstoque, Ds_PrnOServico, Ds_PrnOrcamento,
  Fl_PrnNota, Fl_PrnDuplicata, Fl_PrnBoleto, Fl_PrnDanfe, Fl_PrnNFe,
  Fl_PrnOEstoque, Fl_PrnOServico, Fl_PrnOrcamento, Ds_PrnEtiqueta, Fl_PrnEtiqueta

from
  Estacao E

left join
  Estacao_Aliquota EA
on
  EA.Nm_Estacao = E.Nm_Estacao

where
  E.Nm_Estacao = :Nm_Estacao

-- ===== TDMMASTER.ADODsECFBalcao
select
  B.Cd_Filial, B.Nr_Balcao, B.Cd_Emitente, BI.Nr_Item, BI.Cd_Produto,
  P.Nm_Produto, P.Nm_Abreviado, BI.Vl_Unitario, BI.Qt_Item, T.Tp_Tributacao,
  T.Pr_Contrib, T.Pr_NaoContrib, B.Pr_Desconto, B.Vl_Desconto, B.Pr_Custo,
  B.Vl_Custo, B.Nr_ECF, B.Fl_FormaPagto, P.Fl_Produto, E.Fl_Contribuinte, 
  B.Vl_Pedido, B.Nm_Comprador, BI.Sg_Unidade, B.Cd_Funcionario,
  F.Nm_Funcionario, B.Dt_Fatura

from
  Balcao B

inner join
  Balcao_Item BI
on
  BI.Cd_Filial     = B.Cd_Filial and
  BI.Nr_Balcao     = B.Nr_Balcao and
  BI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = BI.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  Funcionario F
on
  F.Cd_Funcionario = B.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = B.Cd_Emitente

where
  B.Cd_Filial = :Cd_Filial and
  B.Nr_Balcao = :Nr_Balcao

order by
  BI.Nr_Item

-- ===== TDMMASTER.ADODsEmitente
select
  E.Cd_Emitente, E.Nm_Emitente, E.Tp_Pessoa, E.Nr_Documento,
  E.Nr_Insc_Estadual, E.Fl_Contribuinte, E.Fl_Exportador, EE.Ds_Endereco,
  EE.Nm_Bairro, EE.Ds_Complemento, EE.Cd_Cidade, C.Sg_Estado,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  EE.Nr_Cep, EE.Nr_Telefone_1

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TDMMASTER.ADODsOrcamento
select
  A.Cd_Emitente, B.Nm_Emitente, B.Tp_Pessoa, B.Nr_Documento,
  B.Nr_Insc_Estadual, A.Vl_Pedido_Frete, A.Vl_Pedido, B.Fl_Contribuinte, 
  B.Fl_Exportador, EA.Pr_Contribuinte, EA.Pr_NaoContrib, 
  A.Fl_FormaPagto, A.Nr_Endereco, A.Nm_Contato,
  A.Pr_Desconto, A.Vl_Desconto, A.Pr_Custo, A.Vl_Custo, A.Vl_IPI,
  A.Cd_Funcionario, F.Nm_Funcionario, A.Nr_Orcamento

from
  Orcamento A

inner join
  Funcionario F
on
  F.Cd_Funcionario = A.Cd_Funcionario

left join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

left join
  Emitente_Endereco C
on
  C.Cd_Emitente = A.Cd_Emitente and
  C.Nr_Endereco = A.Nr_Endereco

left join
  Cidade D
on
  D.Cd_Cidade = C.Cd_Cidade

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem = :Sg_Origem and
  EA.Sg_Destino = D.Sg_Estado

where
  A.Cd_Filial    = :Cd_Filial and
  A.Nr_Orcamento = :Nr_Orcamento

-- ===== TDMMASTER.ADODsOrcamentoItem
select
  A.Cd_Produto, A.Nm_Produto, A.Sg_Unidade, A.Qt_Item,
  A.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib, B.Fl_Produto,
  T.Tp_Tributacao, A.Qt_Estoque, A.Qt_Agregado, B.Sg_Estoque,
  case
    when B.Cd_Produto is null then Substring( A.Nm_Produto, 1, 40 )
    else B.Nm_Abreviado
  end as Nm_Abreviado,
  T.Pr_ECF, B.Cd_Barra, B.Cd_ClasFiscal

from
  Orcamento_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Tributacao T
on
  T.Cd_Tributacao = B.Cd_Tributacao

where
  A.Cd_Filial     = :Cd_Filial and
  A.Nr_Orcamento  = :Nr_Orcamento and
  A.Fl_Confirmado = '1'

order by
  A.Nr_Item

-- ===== TDMMASTER.ADODsOcorrencia
select
  Cd_Ocorrencia, Ds_Ocorrencia

from
  Contato_Ocorrencia

where
  Fl_Ativo = '1'

order by
  Ds_Ocorrencia

-- ===== TDMMASTER.MyQryBoletoFind
select
  Nr_Receber

from
  Boleto

where
  Nr_Receber = :Nr_Receber and
  Nr_Parcela = :Nr_Parcela

-- ===== TDMMASTER.MyQryBoleto
insert into Boleto( Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,
    Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,
    Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,
    Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,
    Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,
    mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,
    Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,
    Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,
    Ds_Numero, Dt_Alteracao )

values( :Nm_Portador, :Cd_Banco, :Nr_Receber, :Nr_Parcela, :Cd_Carteira,
    :Dt_Vencimento, :Cd_Agencia, :Nr_Conta, :Nr_DoctoBanco, :Vl_Parcela,
    :Nm_Emitente, :Nr_MF, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,
    :Dp_Cidade, :DP_MF, :Dp_Endereco, :Dp_DoctoBanco, :Dp_Conta, :Nr_Documento,
    :Ds_Barra, :Dt_Emissao, :Ds_Digitavel, :Tp_Cobranca, :Ds_Asbase, :Ds_Boleto,
    :Nr_Fatura, :Dp_Fatura, :mm_instrucao, :ds_livre, :ds_carteira, :Dp_Sacado_1,
    :Dp_Sacado_2, :Dp_Sacado_3, :Dp_Sacado_4, :pr_taxajuros, :pr_multa,
    :Nr_Separador, :Fl_Entrega, :Nr_Insc_Estadual, :Nr_Pedido_Emitente,
    :Nr_Orcamento, :Ds_LocalPagamento, :Ds_Numero, :Dt_Alteracao )

-- ===== TDMMASTER.ADODsNFe
--------------- Verifica se ja existe a NFe para ser processada
select
  Dt_NFe, St_NFe

from
  NFe

where
  Cd_Filial = :Cd_Filial and
  Fl_Origem = :Fl_Origem and
  Nr_Origem = :Nr_Origem

order by
  Dt_NFe desc

-- ===== TDMMASTER.ADODsCliente
select
  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro,
  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,
  E.Fl_Contribuinte, E.Fl_Exportador, E.Ds_EMail, E.Ds_Site,
  E.Dt_Nascimento, E.Nr_Identidade, E.Nm_Orgao_emissor, E.Dt_Emissao_ID, 
  E.Fl_Estado_Civil,  E.Sg_Estado_Emissor, E.Nr_Insc_Municipal,

  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento,
  EE.Cd_Cidade, C.Sg_Estado, EE.Nr_Cep, EE.Nr_Telefone_1, EE.Nr_Telefone_2,
  EE.Nr_Celular_1, EE.Ds_Numero, 

  C.Nm_Cidade, C.Cd_IBGE, UF.Cd_IBGE as Cd_IBGE_UF

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

inner join
  Estado UF
on
  UF.Sg_Estado = C.Sg_Estado

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TDMMASTER.ADODsProduto
select
  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Classe, C.Im_Classe,
  P.Cd_ClasFiscal, P.Sg_Estoque, P.Sg_Venda, UV.Ds_Unidade as Ds_UnidVenda, 
  P.Fl_Estrutura, P.Nm_Abreviado, P.Fl_Ativo, P.Qt_Est_Minimo, P.Fl_Perecivel, 
  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, 
  P.Im_Produto, P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse, 
  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto, 
  P.Pr_Lucro, P.Cd_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,
  PP.Vl_Reposicao, P.Vl_MVA, 

  UV.Id_Unidade,

  SG.Cd_NaturezaReceita,

  T.Pr_PIS, T.Pr_Cofins, T.Pr_ECF, T.Cd_CST_NC, T.Tp_Tributacao

from
  Produto P

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

where
  P.Cd_Produto = :Cd_Produto

-- ===== TDMMASTER.ADODsIBPTax
select
  Pr_Nacional, Pr_Importado, Pr_Estadual, Pr_Municipal

from
  IBPTax

where
  Cd_NCM = :Cd_NCM and
  Cd_Ex    = ''

-- ===== TDMMASTER.ADODsConexao
declare
  @Nr_Versao VarChar( 100 ),
  @Nm_DataBase VarChar( 100 )

select
  @Nr_Versao = Convert( VarChar( 100 ), SERVERPROPERTY('productversion') ),
  @Nm_DataBase = :Nm_DataBase

select
  db_name(dbid) as Nm_Banco,
  login_time as Hr_Login,
  Open_tran as Nr_TransacoesAbertas,
  nt_username as Nt_Usuario,
  Hostname as Nm_EstacaoTrabalho,
  program_name as Nm_Aplicacao,
  Status,
  cmd as Ds_Comando,
  Loginame, spid, Convert( VarChar( 20 ), Net_Address ) as Net_Address,
  @Nr_Versao as Nr_Versao

from 
  master..sysProcesses 

where
  Program_Name like '%Multforma%' and
  db_name(dbid) = @Nm_DataBase

order by
  db_name(dbid), Hostname, Login_Time desc

-- ===== TDMMASTER.ADODsValidacao
select
  Id_Cliente, Dt_Validacao, Nr_Computadores, Ds_Valid,
  Nr_Conexoes, Dt_UltimoEnvio

from
  Validacao

-- ===== TDMMASTER.ADODsConectadoMes
select distinct
  Nm_Host

from
  LogHistory

where
  Hr_Login > DateAdd( Month, -1, GetDate() )

order by
  Nm_Host

-- ===== TDMMASTER.ADODsNotaOrigem
-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Orçamento - Faturados
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

--------------- Orçamento - Cancelados
union
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '2' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

-------------------- Notas de Saídas - Saida
union
select
  '2' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  S.Cd_Filial   = @Cd_Filial and
  S.Fl_Estoque  = '1' and
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End and
  S.St_Saida   >= '2'             ----- Somente Cancelado/Fechado

-------------------- Notas de Entradas - Entrada
union

select
  '3' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  E.Cd_Filial      = @Cd_Filial and
  E.Fl_Estoque     = '1' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End and
  E.St_Entrada    >= '2'             ----- Somente Cancelado/Fechado

-- ===== TDMORCAMENTO.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,
  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,
  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,
  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Nr_Fatura, O.Vl_IPI,
  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, E.Fl_Contribuinte, O.Dt_Fatura,
  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Vl_STB,
  O.Fl_Impresso, O.Nr_Juncao, 
  O.Vl_Baseicms, O.Pr_Icms, O.Vl_Icms, O.Vl_BaseST, O.Cd_Cfop, O.Cd_Transportador,
  O.Mm_Nota, O.Nr_Entrega, E.Nm_Fantasia, O.Mm_Observacao

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Receber R
on
  R.Cd_Filial     = O.Cd_Filial and
  R.Nr_Orcamento = O.Nr_Orcamento and
  R.St_Receber   < '4'

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TDMORCAMENTO.ADODsItem
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,
  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,
  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,
  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,
  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,
  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,
  P.Fl_Perecivel, G.Fl_Moldura

from
  Orcamento_Item OI

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

order by
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item desc

-- ===== TFRMACESSO.ADOCheckAccess
select
  UGA.Cd_Grupo, U.Sh_Usuario

from
  Usuario U

inner join
  Usuario_Grupo_Acesso UGA
on
  UGA.Cd_Grupo   = U.Cd_Grupo and
  UGA.Cd_Acesso = :Cd_Acesso 

where
  U.Cd_Usuario = :Cd_Usuario

-- ===== TFRMAPLICACAO_GRUPO.ADODsDados
select
  cd_grupo, nm_grupo

from
  aplicacao_grupo

where
  cd_grupo = :Cd_Grupo

-- ===== TFRMAPLICACAO_GRUPO.ADODsNavegar
select top 1
  A.Cd_Grupo + 1 as Cd_Grupo

from
  aplicacao_grupo A

where
  not exists( 
  select
    B.Cd_Grupo

  from
    aplicacao_grupo  B

  where
    B.Cd_Grupo = A.Cd_Grupo + 1

  )
order by
  A.Cd_Grupo

-- ===== TFRMAPLICACAO_GRUPO.ADODsReport
select
  cd_grupo, nm_grupo

from
  aplicacao_grupo

order by
  nm_grupo

-- ===== TFRMAPLICACAO_GRUPO_FIND.ADODsFind
select
  cd_grupo, nm_grupo

from
  aplicacao_grupo

where
  nm_grupo like :find 

order by
  nm_grupo

-- ===== TFRMAPLICACAO_SUBGRUPO.ADODsDados
select
  cd_subgrupo, nm_subgrupo

from
  aplicacao_subgrupo

where
  cd_subgrupo = :Cd_SubGrupo

-- ===== TFRMAPLICACAO_SUBGRUPO.ADODsNavegar
-- First
select top 1
  cd_subgrupo

from
  aplicacao_subgrupo

order by
  cd_subgrupo

-- ===== TFRMAPLICACAO_SUBGRUPO.ADODsReport
select
  cd_subgrupo, nm_subgrupo

from
  aplicacao_subgrupo

order by
  nm_subgrupo

-- ===== TFRMAPLICACAO_SUBGRUPO_FIND.ADODsFind
select
  cd_subgrupo, nm_subgrupo

from
  aplicacao_subgrupo

where
  nm_subgrupo like :find 

order by
  nm_subgrupo

-- ===== TFRMAPURAR_IMPOSTO.ADODsReport
declare @Cd_Filial SmallInt
declare @Dt_Start SmallDateTime
declare @Dt_End SmallDateTime

set @Cd_Filial  = :Cd_Filial
set @Dt_Start   = :Dt_Start
set @Dt_End     = :Dt_End

if Object_ID( 'TempDB..#ApurarImposto' ) is not null
  truncate table #ApurarImposto

else
  create table #ApurarImposto
    (
    Dt_Imposto SmallDateTime,
    Vl_BaseICMS_sai Numeric( 12, 3 ),
    Vl_ICMS_sai numeric( 12, 3 ),
    Vl_IPI_sai numeric( 12, 3 ),
    Vl_STB_sai numeric( 12, 3 ),
    Vl_BaseICMS_ent Numeric( 12, 3 ),
    Vl_ICMS_ent numeric( 12, 3 ),
    Vl_IPI_ent numeric( 12, 3 ),
    Vl_STB_ent numeric( 12, 3 )
    )

-- Vendas
insert into #ApurarImposto
  select
    Cast( Cast( Dt_Fatura as Char( 11 ) ) as SmallDateTime ),
    sum( O.Vl_BaseICMS ) as Vl_BaseICMS,
    sum( O.Vl_ICMS ) as Vl_ICMS, Sum( O.Vl_IPI ) as Vl_IPI,
    sum( O.Vl_STB ) as Vl_STB, 0, 0, 0, 0

  from
    Orcamento O

  where
    O.Cd_Filial    = @Cd_Filial and
    O.St_Orcamento = '9' and
    O.Dt_Fatura   >= @Dt_Start and
    O.Dt_Fatura    < @Dt_End

  group by
    Cast( Cast( O.Dt_Fatura as Char( 11 ) ) as SmallDateTime )

-- Saidas
insert into #ApurarImposto
  select
    Cast( Cast( Dt_Lancamento as Char( 11 ) ) as SmallDateTime ),
    sum( S.Vl_BaseICMS ) as Vl_BaseICMS,
    sum( S.Vl_ICMS ) as Vl_ICMS, Sum( S.Vl_IPI ) as Vl_IPI,
    sum( S.Vl_Substituicao ) as Vl_STB, 0, 0, 0, 0

  from
    Saida S

  where
    S.Cd_Filial      = @Cd_Filial and
    S.St_Saida       = '2' and
    S.Dt_Lancamento >= @Dt_Start and
    S.Dt_Lancamento  < @Dt_End

  group by
    Cast( Cast( S.Dt_Lancamento as Char( 11 ) ) as SmallDateTime )

-- Entradas
insert into #ApurarImposto
  select
    Cast( Cast( Dt_Lancamento as Char( 11 ) ) as SmallDateTime ),
    0, 0, 0, 0, sum( E.Vl_BaseICMS ) as Vl_BaseICMS,
    sum( E.Vl_ICMS ) as Vl_ICMS, Sum( E.Vl_IPI ) as Vl_IPI,
    sum( E.Vl_Substituicao ) as Vl_STB

  from
    Entrada E

  where
    E.Cd_Filial      = @Cd_Filial and
    E.St_Entrada       = '2' and
    E.Dt_Lancamento >= @Dt_Start and
    E.Dt_Lancamento  < @Dt_End

  group by
    Cast( Cast( E.Dt_Lancamento as Char( 11 ) ) as SmallDateTime )

-- Resultado
select
  Dt_Imposto,
  sum( Vl_BaseICMS_sai ) as Vl_BaseICMS_sai,
  sum( Vl_ICMS_sai )     as Vl_ICMS_sai,
  sum( Vl_IPI_sai )      as Vl_IPI_sai,
  sum( Vl_STB_sai )      as Vl_STB_sai,
  sum( Vl_BaseICMS_ent ) as Vl_BaseICMS_ent,
  sum( Vl_ICMS_ent )     as Vl_ICMS_ent,
  sum( Vl_IPI_ent )      as Vl_IPI_ent,
  sum( Vl_STB_ent )      as Vl_STB_ent

from
  #ApurarImposto

group by
  Dt_Imposto

order by
  Dt_Imposto

-- ===== TFRMARREDONDAMENTO.ADODsDados
select
  Cd_Arredondamento, Ds_Arredondamento, Vl_Arredondamento

from
  Arredondamento

where
  Cd_Arredondamento = :Cd_Arredondamento

-- ===== TFRMARREDONDAMENTO.ADODsNavegar
-- First
select top 1
  Cd_Arredondamento

from
  Arredondamento

order by
  Cd_Arredondamento

-- ===== TFRMARREDONDAMENTO.ADODsReport
select
  Cd_Arredondamento, Ds_Arredondamento, Vl_Arredondamento

from
  Arredondamento

order by
  Ds_Arredondamento

-- ===== TFRMARREDONDAMENTO_FIND.ADODsFind
select
  Cd_Arredondamento, Ds_Arredondamento, Vl_Arredondamento

from
  Arredondamento

where
  Ds_Arredondamento like :find

order by
  Ds_Arredondamento

-- ===== TFRMBANCO.ADODsDados
select
  Cd_Banco, Nm_Banco, Sg_Banco

from
  Banco

where
  Cd_Banco = :Cd_Banco

-- ===== TFRMBANCO.ADODsNavegar
-- First
select top 1
  Cd_Banco

from
  Banco

order by
  Cd_Banco

-- ===== TFRMBANCO.ADODsReport
select
  Cd_Banco, Nm_Banco, Sg_Banco

from
  Banco

order by
  Cd_Banco

-- ===== TFRMBANCO_FIND.ADODsFind
select
  Cd_Banco, Nm_Banco, Sg_Banco

from
  Banco

where
  Sg_Banco like :find

order by
  Sg_Banco

-- ===== TFRMCAIXA.ADODsDados
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Vl_Lancamento, C.Ds_Lancamento, C.Cd_Historico, H.Ds_Historico,
  C.Cd_Grupo, G.Nm_Grupo, C.Cd_SubGrupo, SG.Nm_SubGrupo, C.Nr_Documento,
  C.Nr_Estorno, C.Nr_Orcamento, C.Nr_Receber, C.Nr_Receber_Par, C.Nr_Receber_Lancto,
  C.Nr_Pagar, C.Nr_Pagar_Par, C.Nr_Pagar_Lancto, C.Nr_Balcao, C.Cd_Usuario

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

left join
  Aplicacao_Grupo G
on
  G.Cd_Grupo = C.Cd_Grupo

left join
  Aplicacao_SubGrupo SG
on
  SG.Cd_SubGrupo = C.Cd_SubGrupo

where
  C.Cd_Filial     = :Cd_Filial and
  C.Nr_Lancamento = :Nr_Lancamento

-- ===== TFRMCAIXA.ADODsNavegar
-- First
select top 1
  Nr_Lancamento

from
  Caixa

order by
  Nr_Lancamento

-- ===== TFRMCAIXA.ADODsEstorno
select
  Tp_Lancamento, Vl_Lancamento

from
  Caixa

where
  Cd_Filial     = :Cd_Filial and
  Nr_Lancamento = :Nr_Lancamento

-- ===== TFRMCAIXA_FIND.ADODsLancto
select top 50
  C.Cd_Filial,  C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,
  C.Nr_Documento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial     = :Cd_Filial and
  C.Nr_Lancamento >= :Nr_Lancamento

order by
  C.Nr_Lancamento

-- ===== TFRMCAIXA_FIND.ADODsData
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,
  C.Nr_Documento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial     = :Cd_Filial and
  C.Dt_Lancamento >= :Dt_Start and
  C.Dt_Lancamento   < :Dt_End

order by
  C.Nr_Lancamento

-- ===== TFRMCAIXA_FIND.ADODsValor
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,
  C.Nr_Documento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial     = :Cd_Filial and
  C.Vl_Lancamento >= :Vl_Start and
  C.Vl_Lancamento <= :Vl_End

order by
  C.Nr_Lancamento

-- ===== TFRMCAIXA_FIND.ADODsDocto
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,
  C.Nr_Documento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial     = :Cd_Filial and
  C.Nr_Documento like :Nr_Documento

order by
  C.Nr_Documento

-- ===== TFRMCAIXA_FIND.ADODsDescricao
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,
  C.Nr_Documento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial     = :Cd_Filial and
  C.Ds_Lancamento like :Ds_Lancamento

order by
  C.Nr_Lancamento

-- ===== TFRMCAIXA_REPORT.ADODsReport
select
  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,
  C.Vl_Lancamento, C.Ds_Lancamento, C.Cd_Historico, H.Ds_Historico,
  H.Tp_Historico, C.Nr_Documento, C.Nr_Estorno, C.Nr_Orcamento, C.Nr_Receber,
  C.Nr_Receber_Par, C.Nr_Receber_Lancto, C.Nr_Pagar, C.Nr_Pagar_Par,
  C.Nr_Pagar_Lancto, C.Nr_Balcao, R.Nr_Orcamento as Nr_OrcReceber,
  OT.Cd_Emitente as Cd_Cliente, OT.Nm_Emitente as Nm_Cliente,
  P.Cd_Emitente as Cd_Fornecedor, E.NM_Emitente as Nm_Fornecedor

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

left join
  Receber R
on
  R.Cd_Filial  = C.Cd_Filial and
  R.Nr_Receber = C.Nr_Receber

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = C.Cd_Filial and
  OT.Nr_Orcamento = C.Nr_Orcamento

left join
  Pagar P
on
  P.Cd_Filial = C.Cd_Filial and
  P.Nr_Pagar  = C.Nr_Pagar

left join
  Emitente E
on
  E.Cd_Emitente = P.Cd_Emitente

where
  C.Cd_Filial  = :Cd_Filial

-- ===== TFRMCAIXA_REPORT.ADODsSaldoAnterior
select
  sum( Vl_Lancamento ) as Vl_Lancamento

from
  Caixa

where
  Cd_Filial     = :Cd_Filial and
  Dt_Lancamento < :Dt_Lancamento

-- ===== TFRMCAIXA_REPORT.ADODsSintetico
select
  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,
  Sum( C.Vl_Lancamento ) as Vl_Lancamento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial  = :Cd_Filial 

group by
    C.Cd_Historico, H.Ds_Historico, H.Tp_Historico

-- ===== TFRMCAIXA_REPORT.ADODsPortador
--------------- Contas Recebidas
select
  'Contas Recebidas' as Ds_Origem, RP.Cd_Portador, P.Nm_Portador,
  Sum( C.Vl_Lancamento ) as Vl_Lancamento

from
  Caixa C

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial  = C.Cd_Filial and
  RP.Nr_Receber = C.Nr_Receber and
  RP.Nr_Parcela = C.Nr_Receber_Par

inner join
  Portador P
on
  P.Cd_Portador = RP.Cd_Portador

where
  C.Cd_Filial  = 1 

group by
RP.Cd_Portador, P.Nm_Portador

union

--------------- Contas Pagas
select
  'Contas Pagas' as Ds_Origem, PP.Cd_Portador, P.Nm_Portador,
  Sum( C.Vl_Lancamento ) as Vl_Lancamento

from
  Caixa C

inner join
  Pagar_Parcela PP
on
  PP.Cd_Filial  = C.Cd_Filial and
  PP.Nr_Pagar   = C.Nr_Pagar and
  PP.Nr_Parcela = C.Nr_Pagar_Par

inner join
  Portador P
on
  P.Cd_Portador = PP.Cd_Portador

where
  C.Cd_Filial  = 1

group by
  PP.Cd_Portador, P.Nm_Portador
  
order by
  1, 2, 3

-- ===== TFRMCAIXA_REPORT.ADODsSaldoAtual
select
  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,
  Sum( C.Vl_Lancamento ) as Vl_Lancamento

from
  Caixa C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial  = :Cd_Filial 

group by
    C.Cd_Historico, H.Ds_Historico, H.Tp_Historico

-- ===== TFRMCAIXA_RESUMODESPESAS.ADODsResDespesa
select
  C.Cd_Grupo, C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo,
  sum( C.Vl_Lancamento ) as Vl_Lancamento

from
  Caixa C

inner join
  Aplicacao_Grupo AG
on
  AG.Cd_Grupo = C.Cd_Grupo

inner join
  Aplicacao_SubGrupo ASG
on
  ASG.Cd_SubGrupo = C.Cd_SubGrupo

group by
  C.Cd_Grupo, C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo

-- ===== TFRMCAIXA_RESUMODESPESAS.ADODsAnalitico
------------------------- Dados do Caixa
declare
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Dt_Start = :Dt_Start,
  @Dt_End   = :Dt_End

select
  Ori.Cd_Filial, Ori.Cd_Grupo, Ori.Cd_SubGrupo, Ori.Vl_Lancamento, Ori.Ds_Lancamento, Ori.Nr_Documento,
  Ori.Dt_Lancamento, @Dt_Start as Dt_Start, @Dt_End as Dt_End

from
  Caixa Ori

where
  Ori.Cd_Filial = :Cd_Filial and
  /* Cd_Historico */
  Ori.Cd_Grupo       = :Cd_Grupo and
  Ori.Cd_SubGrupo    = :Cd_SubGrupo and
  Ori.Dt_Lancamento >= @Dt_Start and
  Ori.Dt_Lancamento  < @Dt_End

-- ===== TFRMCARGA.ADODsDados
select
  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,
  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,
  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,
  C.Ps_Alocado, C.Ds_Romaneio

from
  Carga C

left join
  Transportador T
on
  T.Cd_Transportador = C.Cd_Transportador

where
  C.Cd_Filial   = :Cd_Filial and
  C.Nr_Romaneio = :Nr_Romaneio

-- ===== TFRMCARGA.ADODsNavegar
-- First
select top 1
  Nr_Romaneio

from
  Carga

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Romaneio

-- ===== TFRMCARGA.ADODsOrcSel
select
  CO.Cd_Filial, CO.Nr_Orcamento, CO.Nr_Romaneio, CO.Nr_Ordem, OT.Nm_Emitente,
  OT.Nr_Fatura, OT.Vl_Orcamento, OT.Dt_Fatura, CO.Ps_Carga,
  C.Nm_Cidade + '/' + C.Sg_Estado + ' ' + Coalesce( R.Ds_Rota, '' ) as Dp_Localidade,
  OT.Vl_Pedido_Frete, OT.Nm_Funcionario,
    EE.Ds_Endereco + ' ' + Coalesce( EE.Ds_Numero, '' ) + ' ' + EE.Nm_Bairro + ' ' + EE.Ds_Complemento + ' ' + Char( 13 ) +
    C.Nm_Cidade + '/' + C.Sg_Estado + ' ' + Coalesce( R.Ds_Rota, '' ) as Dp_Endereco,
    EE.Nr_Telefone_1 + case when EE.Nr_Telefone_2 <> '' then Char( 13 ) else '' end +
    EE.Nr_Telefone_2 + case when EE.Nr_Telefone_3 <> '' then Char( 13 ) else '' end +
    EE.Nr_Telefone_3 + case when EE.Nr_Celular_1 <> '' then Char( 13 ) else '' end +
    EE.Nr_Celular_1 + case when EE.Nr_Celular_2 <> '' then Char( 13 ) else '' end +
    EE.Nr_Celular_2 + case when EE.Nr_Fax <> '' then Char( 13 ) else '' end +
    EE.Nr_Fax as Dp_Telefone, OT.Nr_Pedido_Emitente,
    EE.Mm_Observacao as Mm_ObsEntrega,

  Qt_Pecas =
    coalesce( 
    (select
      sum( CD.Qt_Item )

    from
      Carga_Item CI

    inner join
      Carga_Detalhe CD
    on
      CD.Cd_Filial    = CI.Cd_Filial and
      CD.Nr_Romaneio  = CI.Nr_Romaneio and
      CD.Nr_Orcamento = CI.Nr_Orcamento and
      CD.Nr_Item      = CI.Nr_Item

    where
      CI.Cd_Filial    = CO.Cd_Filial and
      CI.Nr_Romaneio  = CO.Nr_Romaneio and
      CI.Nr_Orcamento = CO.Nr_Orcamento
    ), 0.0 ) +
    coalesce( (
    select
      sum( CI.Qt_Item )

    from
      Carga_Item CI

    where
      CI.Cd_Filial    = CO.Cd_Filial and
      CI.Nr_Romaneio  = CO.Nr_Romaneio and
      CI.Nr_Orcamento = CO.Nr_Orcamento and
      not exists(
        select
          CD.Cd_Filial

        from
          Carga_Detalhe CD

        where
          CD.Cd_Filial    = CI.Cd_Filial and
          CD.Nr_Romaneio  = CI.Nr_Romaneio and
          CD.Nr_Orcamento = CI.Nr_Orcamento and
          CD.Nr_Item      = CI.Nr_Item
        ) ), 0.0 )
    

from
  Carga_Orcamento CO

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = CO.Cd_Filial and
  OT.Nr_Orcamento = CO.Nr_Orcamento

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = OT.Cd_Emitente and
  EE.Nr_Endereco = OT.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

where
  CO.Cd_Filial   = :Cd_Filial and
  CO.Nr_Romaneio = :Nr_Romaneio

order by
  CO.Nr_Ordem

-- ===== TFRMCARGA.ADODsItem
select
  CI.Cd_Filial, CI.Nr_Romaneio, CI.Nr_Orcamento, CI.Nr_Item, CI.Qt_Item,
  OI.Cd_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, P.Nm_Produto,
  OI.Fl_Medida, dbo.SGRound( P.Ps_Produto * CI.Qt_Item * IsNull( PU.Nr_Fator, 1.0 ) ) as Ps_Item,
  Qt_Pecas =
    case
      when not exists(
        select
          CD.Cd_Filial

        from
          Carga_Detalhe CD

        where
          CD.Cd_Filial    = CI.Cd_Filial and
          CD.Nr_Romaneio  = CI.Nr_Romaneio and
          CD.Nr_Orcamento = CI.Nr_Orcamento and
          CD.Nr_Item      = CI.Nr_Item
        ) then CI.Qt_Item
      else
        (
        select
          sum( CD.Qt_Item )

        from
          Carga_Detalhe CD

        where
          CD.Cd_Filial    = CI.Cd_Filial and
          CD.Nr_Romaneio  = CI.Nr_Romaneio and
          CD.Nr_Orcamento = CI.Nr_Orcamento and
          CD.Nr_Item      = CI.Nr_Item
        )
        
    end

from
  Carga_Item CI

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial    = CI.Cd_Filial and
  OI.Nr_Orcamento = CI.Nr_Orcamento and
  OI.Nr_Item      = CI.Nr_Item

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = OI.Cd_Produto and
  PU.Sg_Unidade = OI.Sg_Unidade

where
  CI.Cd_Filial    = :Cd_Filial and
  CI.Nr_Romaneio  = :Nr_Romaneio and
  CI.Nr_Orcamento = :Nr_Orcamento

order by
  CI.Nr_Item

-- ===== TFRMCARGA.ADODsDetalhe
select
  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe,
  CD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe

from
  Carga_Detalhe CD

inner join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = CD.Cd_Filial and
  OD.Nr_Orcamento = CD.Nr_Orcamento and
  OD.Nr_Item      = CD.Nr_Item and
  OD.Nr_Detalhe   = CD.Nr_Detalhe

where
  CD.Cd_Filial    = :Cd_Filial and
  CD.Nr_Romaneio  = :Nr_Romaneio and
  CD.Nr_Orcamento = :Nr_Orcamento and
  CD.Nr_Item      = :Nr_Item

order by
  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe

-- ===== TFRMCARGA_ALOCACAO.ADODsOrcamento
/*
-- Cria/Limpa table
if Object_ID( 'TempDB..##CargaAlocar' ) is null
  create table ##CargaAlocar
    (
    Cd_Filial SmallInt,
    Nr_Romaneio SmallInt,
    Nr_Ordem SmallInt,
    Nr_Orcamento Int,
    Nm_Emitente varchar( 50 ),
    Nr_Fatura Int,
    Dp_Localidade VarChar( 120 ),
    Ps_Alocar numeric( 12, 2 ),
    Fl_Alocar Char( 1 )
    )
else
  delete from
    ##CargaAlocar
*/

select
    Cd_Filial, Nr_Romaneio, Nr_Ordem, Nr_Orcamento, Nm_Emitente, Nr_Fatura,
    Dp_Localidade, Ps_Alocar, Fl_Alocar

from
  ##CargaAlocar

where
  Nr_Romaneio = :Nr_Romaneio

order by
  Nr_Ordem

-- ===== TFRMCARGA_ALOCACAO.ADODsItem
/*
  create table ##CargaAlocarItem
    (
    Cd_Filial SmallInt,
    Nr_Romaneio SmallInt,
    Nr_Orcamento Int,
    Nr_Item SmallInt,
    Nm_Produto varchar( 120 ),
    Sg_Unidade Char( 2 ),
    Fl_Medida Char( 1 ),
    Qt_Item numeric( 12, 2 ),
    Qt_Alocado numeric( 12, 2 ),
    Qt_Alocar numeric( 12, 2 ),
    Vl_Arredondamento SmallInt,
    Fl_Detalhe char( 1 ),
    Ps_Produto numeric( 12, 3 ),
    Cd_Produto Int
    )
*/

select
  Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item, Nm_Produto, Sg_Unidade, 
  Fl_Medida, Qt_Item, Qt_Alocado, Qt_Alocar, Fl_Detalhe, Vl_Arredondamento,
  Ps_Produto, Cd_Produto

from
  ##CargaAlocarItem

where
  Cd_Filial    = :Cd_Filial and
  Nr_Romaneio  = :Nr_Romaneio and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMCARGA_ALOCACAO.ADODsDetalhe
/*
  create table ##CargaAlocarDetalhe
    (
    Cd_Filial SmallInt,
    Nr_Romaneio SmallInt,
    Nr_Orcamento Int,
    Nr_Item SmallInt,
    Nr_Detalhe SmallInt,
    Qt_Item SmallInt,
    Qt_Alocado SmallInt,
    Qt_Alocar SmallInt,
    Nr_Altura numeric( 12, 4 ),
    Nr_Largura numeric( 12, 4 ),
    Nr_Comprimento numeric( 12, 4 ),
    Ds_Detalhe VarChar( 30 )
    )
*/

select
  Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item, Nr_Detalhe, Qt_Item,
  Nr_Altura, Nr_Largura, Nr_Comprimento, Ds_Detalhe, Qt_Alocar, Qt_Alocado

from
  ##CargaAlocarDetalhe

where
  Cd_Filial    = :Cd_Filial and
  Nr_Romaneio  = :Nr_Romaneio and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item      = :Nr_Item

-- ===== TFRMCARGA_ALOCACAO.ADODsOrcSelect
select
  Nm_Emitente, Nm_Funcionario, St_Orcamento

from
  Orcamento_Total OT

where
  OT.Cd_Filial    = :Cd_Filial and
  OT.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMCARGA_FIND.ADODsFind
select
  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,
  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,
  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,
  C.Ps_Alocado, C.Ds_Romaneio

from
  Carga C

left join
  Transportador T
on
  T.Cd_Transportador = C.Cd_Transportador

where
  C.Cd_Filial   = :Cd_Filial

-- ===== TFRMCARGA_REPORT.ADODsReport
select
  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto,
  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade,
  sum( CI.Qt_Item ) as Qt_Entregue, OI.Vl_Unitario,

  OT.Nm_Emitente

from
  Carga_Item CI

inner join
  Carga C
on
  C.Cd_Filial   = CI.Cd_Filial and
  C.Nr_Romaneio = CI.Nr_Romaneio
  /* Cd_Transportador */
  /* Dt_Start */
  /* Dt_End */

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial    = CI.Cd_Filial and
  OI.Nr_Orcamento = CI.Nr_Orcamento and
  OI.Nr_Item      = CI.Nr_Item

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = OI.Cd_Filial and
  OT.Nr_Orcamento = OI.Nr_Orcamento

  /* Cd_Emitente */

where
  CI.Cd_Filial    = :Cd_Filial

  /* Nr_Romaneio */
  /* Nr_Orcamento */

group by
  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto,
  P.Nm_Produto, OI.Qt_Item, OI.Sg_Unidade, OI.Vl_Unitario,

  OT.Nm_Emitente

order by
  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto

-- ===== TFRMCCORRENTE.ADODsDados
select
  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta,
  CC.Dt_Abertura, CC.Vl_Limite, CC.Vl_Bloqueado, CC.Vl_Saldo, CC.Fl_Resumo

from
  CCorrente CC

inner join
  Banco B
on
  B.Cd_Banco = CC.Cd_Banco

where
  CC.Id_Conta = :Id_Conta

-- ===== TFRMCCORRENTE.ADODsNavegar
-- First
select top 1
  Id_Conta

from
  CCorrente

order by
  Id_Conta

-- ===== TFRMCCORRENTE.ADODsReport
select
  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta,
  CC.Dt_Abertura, CC.Vl_Limite, CC.Vl_Bloqueado, CC.Vl_Saldo

from
  CCorrente CC

inner join
  Banco B
on
  B.Cd_Banco = CC.Cd_Banco

order by
  CC.Id_Conta

-- ===== TFRMCCORRENTE.ADODsSaldo
select
  sum(
    case
      when Tp_Lancamento <= '3' then Vl_Lancamento
      else -1 * Vl_Lancamento
    end ) as Vl_Saldo,

  sum(
    case
      when Fl_Bloqueado = '1' then Vl_Lancamento
      else 0
    end ) as Vl_Bloqueado

from
  CCorrente_Lancto

where
  Id_Conta      = :Id_Conta and
  Fl_Compensado = '1'

-- ===== TFRMCCORRENTE.ADODsLancto
select top 50
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado, CL.Fl_Compensado, CL.Nr_Resumo

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta      = :Id_Conta 

order by
  CL.Id_Conta, CL.Nr_Lancamento desc

-- ===== TFRMCCORRENTE_FIND.ADODsFind
select
  Id_Conta, Ds_Conta

from
  CCorrente

where
  Ds_Conta like :find

order by
  Ds_Conta

-- ===== TFRMCCORRENTE_LANCTO.ADODsDados
select
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado, CL.Fl_Compensado, CL.Nr_Resumo

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta      = :Id_Conta and
  CL.Nr_Lancamento = :Nr_Lancamento

-- ===== TFRMCCORRENTE_LANCTO.ADODsConta
select
  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta

from
  CCorrente CC

inner join
  Banco B
on
  B.Cd_Banco = CC.Cd_Banco

where
  CC.Id_Conta = :Id_Conta

-- ===== TFRMCCORRENTE_LANCTO.ADODsNavegar
-- First
select top 1
  Nr_Lancamento

from
  CCorrente_Lancto

where
  Id_Conta   = :Id_Conta
  
order by
  Nr_Lancamento

-- ===== TFRMCCORRENTE_LANCTO_FIND.ADODsDocto
select
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta       = :Id_Conta and
  CL.Nr_Documento like :Nr_Documento

order by
  CL.Nr_Documento

-- ===== TFRMCCORRENTE_LANCTO_FIND.ADODsData
select
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta       = :Id_Conta and
  CL.Dt_Lancamento = :Dt_Lancamento

order by
  CL.Nr_Lancamento

-- ===== TFRMCCORRENTE_LANCTO_FIND.ADODsLancto
select top 50
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta       = :Id_Conta and
  CL.Nr_Lancamento >= :Nr_Lancamento

order by
  CL.Nr_Lancamento

-- ===== TFRMCCORRENTE_LANCTO_FIND.ADODsValor
select
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta       = :Id_Conta and
  CL.Vl_Lancamento >= :Vl_Start and
  CL.Vl_Lancamento <= :Vl_End

order by
  CL.Nr_Lancamento

-- ===== TFRMCCORRENTE_LANCTO_REPORT.ADODsReport
select
  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,
  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,
  CL.Nr_Documento, CL.Fl_Bloqueado

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta      = :Id_Conta

-- ===== TFRMCCORRENTE_LANCTO_REPORT.ADODsSaldoAnterior
select
  sum( Vl_Lancamento ) as Vl_Lancamento

from
  Caixa

where
  Cd_Filial     = :Cd_Filial and
  Dt_Lancamento < :Dt_Lancamento

-- ===== TFRMCCORRENTE_LANCTO_REPORT.ADODsConta
select
  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia,
  CC.Nr_Conta, CC.Vl_Limite

from
  CCorrente CC

inner join
  Banco B
on
  B.Cd_Banco = CC.Cd_Banco

where
  CC.Id_Conta = :Id_Conta

-- ===== TFRMCCORRENTE_LANCTO_REPORT.ADODsSintetico
select
  H.Tp_Historico, CL.Cd_Historico, H.Ds_Historico,
  sum( CL.Vl_Lancamento ) as Vl_Lancamento

from
  CCorrente_Lancto CL

inner join
  Historico H
on
  H.Cd_Historico = Cl.Cd_Historico

where
  CL.Id_Conta      = :Id_Conta

group by
  H.Tp_Historico, CL.Cd_Historico, H.Ds_Historico

-- ===== TFRMCCORRENTE_SALDOS.ADODsSaldos
select
  C.Id_Conta,
  Convert( VarChar( 7 ), C.Dt_Lancamento, 102 ) as Cd_Mes,
  Sum( ( case when H.Tp_Historico = '1' then C.Vl_Lancamento else 0.0 end ) ) as Vl_Debito,
  Sum( ( case when H.Tp_Historico = '2' then C.Vl_Lancamento else 0.0 end ) ) as Vl_Credito,
  Vl_SaldoAnterior = 
    (
	  select
	    Sum( OldC.Vl_Lancamento * ( case when OldH.Tp_Historico = '1' then -1 else 1 end ) )

	  from
	    CCorrente_Lancto OldC

	  inner join
	    Historico OldH
   	on
	    OldH.Cd_Historico = OldC.Cd_Historico

	  where
	    OldC.Id_Conta = C.Id_Conta and
  	    Convert( VarChar( 7 ), OldC.Dt_Lancamento, 102 ) < Convert( VarChar( 7 ), C.Dt_Lancamento, 102 )
	),
  Vl_Diferenca =
    Sum( ( case when H.Tp_Historico = '2' then C.Vl_Lancamento else 0.0 end ) ) -
    Sum( ( case when H.Tp_Historico = '1' then C.Vl_Lancamento else 0.0 end ) ) 

from
  CCorrente_Lancto C

inner join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico
  
where
  C.Id_Conta = :Id_Conta

group by
  C.Id_Conta, Convert( VarChar( 7 ), C.Dt_Lancamento, 102 )

order by
  2 desc

-- ===== TFRMCEP.ADODsLogradouro
select
  L.Nm_Bairro, L.Nr_CEP, L.Nm_Logradouro

from
  CEP_Logradouro L

where
  L.Cd_Cidade = :Cd_Cidade and
  L.Nm_Logradouro like :Find

order by
  L.Nm_Logradouro

-- ===== TFRMCEP.ADODsCEP
select
  L.Nr_CEP, L.Nm_Bairro, L.Cd_Cidade, L.Nm_Logradouro,
  C.Nm_Cidade + ' - ' + Cast( C.SG_Estado as VarChar( 2 ) ) as Dp_Cidade

from
  CEP_Logradouro L

inner join
  Cidade C
on
  C.Cd_Cidade = L.Cd_Cidade

where
  L.Nr_CEP like :Find
  
order by
  L.Nr_CEP

-- ===== TFRMCEP.ADODsBairro
select
  L.Nm_Bairro, L.Nr_CEP, L.Nm_Logradouro

from
  CEP_Logradouro L

where
  L.Cd_Cidade = :Cd_Cidade and
  L.Nm_Bairro like :Find

order by
  L.Nm_Logradouro

-- ===== TFRMCEP.ADODsCidade
select
  Cd_Cidade

from
  Cidade

where
  Cd_IBGE = :Cd_IBGE

-- ===== TFRMCFOP.ADODsDados
select
  Cd_CFOP, Ds_CFOP, Tp_CFOP, Fl_Terceiros, 
  Tp_Operacao, Fl_Valores, Fl_Sintegra, Fl_Imposto,
  Fl_Inventario

from
  CFOP

where
  Cd_CFOP = :Cd_CFOP

-- ===== TFRMCFOP.ADODsNavegar
-- First
select top 1
  Cd_CFOP

from
  CFOP

order by
  Cd_CFOP

-- ===== TFRMCFOP.ADODsReport
select
  Cd_CFOP, Ds_CFOP

from
  CFOP

order by
  Cd_CFOP

-- ===== TFRMCFOP_FIND.ADODsFind
select
  Cd_CFOP, Ds_CFOP,
  Dp_Estoque   = case when Tp_CFOP      = '1' then 'Sim' end,
  Dp_Terceiros = case when Fl_Terceiros = '1' then 'Sim' end,
  Dp_Sintegra  = case when Fl_Sintegra  = '1' then 'Sim' end,
  Dp_Operacao  = 
    case Tp_Operacao
      when '1' then 'Entrada / Saida Normal' 
      when '2' then 'Devolução'
      when '3' then 'Simples Remessa'
      when '4' then 'Acerto de Estoque'
    end

from
  CFOP

where
  Ds_CFOP like :find

order by
  Ds_CFOP

-- ===== TFRMCHEQUE.ADODsDados
select
  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,
  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,
  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,
  C.Nr_Telefone, B.Sg_Banco, C.Nr_Orcamento,

  Dp_Bordero =
    (
    select top 1
      'Bordero Nº ' + Convert( VarChar( 5 ), CB.Nr_Bordero ) + ' - ' +
        case
          when CB.Cd_Portador is not null then ' Portador: ' + Convert( VarChar( 5 ), CB.Cd_Portador ) + ' - ' + P.Nm_Portador
          else ' Fornecedor ' + Convert( VarChar( 8 ), CB.Cd_Emitente ) + ' - ' + E.Nm_Emitente
        end

    from
      Cheque_Deposito CD

    inner join
      Cheque_Bordero CB
    on
      CB.Cd_Filial  = CD.Cd_Filial and
      CB.Nr_Bordero = CD.Nr_Bordero

    left join
      Portador P
    on
      P.Cd_Portador = CB.Cd_Portador

    left join
      Emitente E
    on
      E.Cd_Emitente = CB.Cd_Emitente

    where
      CD.Cd_Filial = C.Cd_Filial and
      CD.Id_Cheque = C.Id_Cheque

    order by
      1 desc
    )

from
  Cheque C

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

inner join
  Banco B
on
  B.Cd_Banco = C.Cd_Banco

where
  C.Cd_Filial = :Cd_Filial and
  C.Id_Cheque = :Id_Cheque

-- ===== TFRMCHEQUE.ADODsNavegar
-- First
select top 1
  Id_Cheque

from
  Cheque

where
  Cd_Filial = :Cd_Filial

order by
  Id_Cheque

-- ===== TFRMCHEQUE_BORDERO.ADODsDados
select
  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Fl_Bordero, CB.Tp_Bordero,
  CB.Dt_Deposito, CB.Cd_Portador, P.Nm_Portador, CB.Cd_Emitente, E.Nm_Emitente,
  CB.Pr_Taxa, CB.Mm_Observacao

from
  Cheque_Bordero CB

left join
  Portador P
on
  P.Cd_Portador = CB.Cd_Portador

left join
  Emitente E
on
  E.Cd_Emitente = CB.Cd_Emitente

where
  Cd_Filial  = :Cd_Filial and
  Nr_Bordero = :Nr_Bordero

-- ===== TFRMCHEQUE_BORDERO.ADODsNavegar
-- First
select top 1
  Nr_Bordero

from
  Cheque_Bordero

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Bordero

-- ===== TFRMCHEQUE_BORDERO.ADODsCheques
select
  C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,
  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Vl_Cheque,
  C.Dt_Emissao, C.Dt_Vencimento, B.Sg_Banco, C.Nm_Cliente,
  Nr_Documento = 
    case
      when C.Nr_Documento = null or C.Nr_Documento = '' then E.Nr_Documento
      else C.Nr_Documento
    end

from
  Cheque_Deposito CD

inner join
  Cheque C
on
  C.Cd_Filial = CD.Cd_Filial and
  C.Id_Cheque = CD.Id_Cheque

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

inner join
  Banco B
on
  B.Cd_Banco = C.Cd_Banco

where
  CD.Cd_Filial  = :Cd_Filial and
  CD.Nr_Bordero = :Nr_Bordero

order by
  CD.Id_Cheque

-- ===== TFRMCHEQUE_BORDERO_FIND.ADODsNumero
select top 50
  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, CB.Tp_Bordero,
  P.Nm_Portador, E.Nm_Emitente

from
  Cheque_Bordero CB

left join
  Portador P
on
  P.Cd_Portador = CB.Cd_Portador

left join
  Emitente E
on
  E.Cd_Emitente = CB.Cd_Emitente

where
  CB.Cd_Filial   = :Cd_Filial and
  CB.Nr_Bordero >= :Nr_Bordero

order by
  CB.Nr_Bordero

-- ===== TFRMCHEQUE_BORDERO_FIND.ADODsEmitente
select
  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, E.Nm_Emitente, CB.Pr_Taxa

from
  Cheque_Bordero CB

inner join
  Emitente E
on
  E.Cd_Emitente = CB.Cd_Emitente

where
  CB.Cd_Filial   = :Cd_Filial and
  CB.Cd_Emitente = :Cd_Emitente

order by
  CB.Nr_Bordero

-- ===== TFRMCHEQUE_BORDERO_FIND.ADODsPortador
select
  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, P.Nm_Portador

from
  Cheque_Bordero CB

inner join
  Portador P
on
  P.Cd_Portador = CB.Cd_Portador

where
  CB.Cd_Filial   = :Cd_Filial and
  CB.Cd_Portador = :Cd_Portador

order by
  CB.Nr_Bordero

-- ===== TFRMCHEQUE_BORDERO_FIND.ADODsCheque
select distinct
  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, CB.Tp_Bordero,
  P.Nm_Portador, E.Nm_Emitente
  
from
  Cheque C
  
inner join
  Cheque_Deposito CD
on
  CD.Cd_Filial = C.Cd_Filial and
  CD.Id_Cheque = C.Id_Cheque
  
inner join
  Cheque_Bordero CB
on
  CB.Cd_Filial  = CD.Cd_Filial and
  CB.Nr_Bordero = CD.Nr_Bordero
  
left join
  Portador P
on
  P.Cd_Portador = CB.Cd_Portador

left join
  Emitente E
on
  E.Cd_Emitente = CB.Cd_Emitente

where
  C.Cd_Filial = :Cd_Filial and
  C.Nr_Cheque = :Nr_Cheque

order by
  CB.Nr_Bordero

-- ===== TFRMCHEQUE_FIND.ADODsFind
select 
  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,
  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,
  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,
  C.Nr_Telefone

from
  Cheque C

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

where
  C.Cd_Filial  = :Cd_Filial and
  C.Nr_Cheque = :Nr_Cheque

order by
  C.Nr_Cheque

-- ===== TFRMCHEQUE_REPORT.ADODsEmitido
select
  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,
  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,
  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,
  C.Nr_Telefone, B.Sg_Banco,

  Dp_Bordero =
    (
    select top 1
      'Bordero Nº ' + Convert( VarChar( 5 ), CB.Nr_Bordero ) + ' - ' +
        case
          when CB.Cd_Portador is not null then ' Portador: ' + Convert( VarChar( 5 ), CB.Cd_Portador ) + ' - ' + P.Nm_Portador
          else ' Fornecedor ' + Convert( VarChar( 8 ), CB.Cd_Emitente ) + ' - ' + E.Nm_Emitente
        end

    from
      Cheque_Deposito CD

    inner join
      Cheque_Bordero CB
    on
      CB.Cd_Filial  = CD.Cd_Filial and
      CB.Nr_Bordero = CD.Nr_Bordero

    left join
      Portador P
    on
      P.Cd_Portador = CB.Cd_Portador

    left join
      Emitente E
    on
      E.Cd_Emitente = CB.Cd_Emitente

    where
      CD.Cd_Filial = C.Cd_Filial and
      CD.Id_Cheque = C.Id_Cheque

    order by
      1 desc
    )

from
  Cheque C

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

inner join
  Banco B
on
  B.Cd_Banco = C.Cd_Banco

-- ===== TFRMCHEQUE_SELECAO.ADODsSelect
select
  C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco, C.Cd_Agencia,
  C.Nr_Conta, C.Nr_Cheque, C.Vl_Cheque, C.Dt_Emissao, C.Dt_Vencimento,
  B.Sg_Banco, TC.Pr_Taxa, C.Nr_Documento, C.Nm_Cliente, C.Nr_Telefone,
  C.Fl_Cheque

from
  Cheque C

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

inner join
  Banco B
on
  B.Cd_Banco = C.Cd_Banco

left join
  #TmpCheque TC

on
  TC.Cd_Filial = C.Cd_Filial and
  TC.Id_Cheque = C.Id_Cheque

-- ===== TFRMCIDADE.ADODsDados
select
  C.cd_cidade, C.nm_cidade, C.Cd_IBGE, Nm_Pais, Cd_Pais,
  C.sg_estado + ' - ' + E.nm_estado as Dp_Estado

from
  cidade C

inner join
  estado E
on
  E.sg_estado = C.sg_estado

where
  C.cd_cidade = :Cd_Cidade

-- ===== TFRMCIDADE.ADODsNavegar
-- First
select top 1
  cd_cidade

from
  cidade

order by
  cd_cidade

-- ===== TFRMCIDADE.ADODsReport
select
  C.cd_cidade, C.nm_cidade, C.Cd_IBGE,
  C.sg_estado + ' - ' + E.nm_estado as Dp_Estado

from
  cidade C

inner join
  estado E
on
  E.sg_estado = C.sg_estado

order by
  C.sg_estado + ' - ' + E.nm_estado, 
  nm_cidade

-- ===== TFRMCIDADE.ADODsEstado
select
  sg_estado + ' - ' + nm_estado

from
  estado

-- ===== TFRMCIDADE_FIND.ADODsFind
select
  C.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado, C.Nr_CEP,
  C.Sg_Estado + ' - ' + E.Nm_Estado as Dp_Estado,
  C.Nm_Pais, C.Cd_Pais, C.Cd_IBGE

from
  Cidade C

inner join
  Estado E
on
  E.Sg_Estado = C.Sg_Estado

where
  C.Nm_Cidade like :find

order by
  C.Nm_Cidade

-- ===== TFRMCLASSE.ADODsDados
select
  Cd_Classe, Nm_Classe, Im_Classe, Pr_Comissao

from
  Classe

where
  Cd_Classe = :Cd_Classe

-- ===== TFRMCLASSE.ADODsNavegar
-- First
select top 1
  Cd_Classe

from
  Classe

order by
  Cd_Classe

-- ===== TFRMCLASSE.ADODsReport
select
  Cd_Classe, Nm_Classe, Im_Classe, Pr_Comissao

from
  Classe

order by
  Nm_Classe

-- ===== TFRMCLASSE_FIND.ADODsFind
select
  Cd_Classe, Nm_Classe

from
  Classe

where
  Nm_Classe like :find

order by
  Nm_Classe

-- ===== TFRMCOMISSAO.ADODsDados
select
  C.Cd_Filial, C.Nr_Comissao, C.Dt_Comissao, C.St_Comissao, C.Cd_Usuario,
  C.Dt_Inicio, C.Dt_Termino, C.Tp_Apuracao, C.Dt_Pagamento,
  C.Cd_Portador, P.Nm_Portador, C.Cd_Historico, H.Ds_Historico,
  C.Vl_Apurado, Vl_Comissionado

from
  Comissao C

left join
  Portador P
on
  P.Cd_Portador = C.Cd_Portador

left join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial   = :Cd_Filial and
  C.Nr_Comissao = :Nr_Comissao

-- ===== TFRMCOMISSAO.ADODsNavegar
-- Prior
select top 1
  Nr_Comissao

from
  Comissao

where
  Cd_Filial  = :Cd_Filial and
  Nr_Comissao < :Nr_Comissao

order by
  Nr_Comissao desc

-- ===== TFRMCOMISSAO.ADODsFuncionario
select
  CF.Cd_Filial, CF.Nr_Comissao, CF.Cd_Funcionario, F.Nm_Funcionario,
  CF.Vl_Apurado, CF.Vl_Comissionado,
  Nr_Item =
  (
  select
    count( * ) 

  from
    Comissao_Item CI

  where
    CI.Cd_Filial   = CF.Cd_Filial and
    CI.Nr_Comissao = CF.Nr_Comissao and
    CI.Cd_Funcionario = CF.Cd_Funcionario
  )

from
  Comissao_Funcionario CF

inner join
  Funcionario F
on
  F.Cd_Funcionario = CF.Cd_Funcionario

where
  CF.Cd_Filial   = :Cd_Filial and
  CF.Nr_Comissao = :Nr_Comissao

order by
  F.Nm_Funcionario

-- ===== TFRMCOMISSAO.ADODsItens
select
  CI.Cd_Filial, CI.Nr_Comissao, CI.Cd_Funcionario, CI.Nr_Item, CI.Nr_Receber,
  CI.Nr_Parcela, CI.Nr_Lancamento, CI.Nr_Caixa, CI.Nr_Orcamento,
  CI.Vl_Apurado, CI.Vl_Comissionado, CI.Id_Cheque,
  IsNull( OT.Nm_Emitente, IsNull( ER.Nm_Emitente, IsNull( ECX.Nm_Emitente, EC.Nm_Emitente ) ) ) as Nm_Emitente,
  IsNull( OT.Dt_Fatura, IsNull( RH.Dt_Lancamento, IsNull( CX.Dt_Lancamento, CD.Dt_Compensacao ) ) ) as Dt_Pagamento,
  Nr_MaxParcela =
    (
    select
      Max( RPMax.Nr_Parcela )

    from
      Receber_Parcela RPMax

    where
      RPMax.Cd_Filial     = CI.Cd_Filial and
      RPMax.Nr_Receber    = CI.Nr_Receber
    ),
    
  R.Nr_Orcamento as Nr_OrcamentoCR

from
  Comissao_Item CI

--------------- Cliente do Orçamento
left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = CI.Cd_Filial and
  OT.Nr_Orcamento = CI.Nr_Orcamento
  
--------------- Cliente do CR
left join
  Receber R
on
  R.Cd_Filial    = CI.Cd_Filial and
  R.Nr_Receber   = CI.Nr_Receber
  
left join
  Emitente ER
on
  ER.Cd_Emitente = R.Cd_Emitente

left join
  Receber_Historico RH
on
  RH.Cd_Filial     = CI.Cd_Filial and
  RH.Nr_Receber    = CI.Nr_Receber and
  RH.Nr_Parcela    = CI.Nr_Parcela and
  RH.Nr_Lancamento = CI.Nr_Lancamento

--------------- Cliente do Caixa
left join
  Caixa CX
on
  CX.Cd_Filial     = CI.Cd_Filial and
  CX.Nr_Lancamento = CI.Nr_Caixa

left join
  Receber RCX
on
  RCX.Cd_Filial    = CX.Cd_Filial and
  RCX.Nr_Receber   = CX.Nr_Receber

left join
  Emitente ECX
on
  ECX.Cd_Emitente = RCX.Cd_Emitente

--------------- Cliente do Cheque
left join
  Cheque C
on
  C.Cd_Filial = CI.Cd_Filial and
  C.Id_Cheque = CI.Id_Cheque

left join
  Emitente EC
on
  EC.Cd_Emitente = C.Cd_Emitente

left join
  Cheque_Deposito CD
on
  CD.Cd_Filial = CI.Cd_Filial and
  CD.Id_Cheque = CI.Id_Cheque and
  CD.Dt_Devolucao is null

where
  CI.Cd_Filial      = :Cd_Filial and
  CI.Nr_Comissao    = :Nr_Comissao and
  CI.Cd_Funcionario = :Cd_Funcionario

order by
  CI.Cd_Filial, CI.Nr_Comissao, CI.Cd_Funcionario, CI.Nr_Item

-- ===== TFRMCOMISSAO_FAIXA.ADODsDados
select
  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, 
  Pr_Perda

from
  Comissao_Faixa

where
  Cd_Faixa = :Cd_Faixa

-- ===== TFRMCOMISSAO_FAIXA.ADODsReport
select
  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, 
  Pr_Perda

from
  Comissao_Faixa

order by
  Cd_Faixa

-- ===== TFRMCOMISSAO_FAIXA_FIND.ADODsFind
select
  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, 
  Pr_Perda

from
  Comissao_Faixa

where
  Ds_Faixa like :find

order by
  Ds_Faixa

-- ===== TFRMCOMISSAO_FIND.ADODsFind
select
  C.Cd_Filial, C.Nr_Comissao, C.Dt_Comissao, C.St_Comissao, C.Cd_Usuario,
  C.Dt_Inicio, C.Dt_Termino, C.Tp_Apuracao, C.Dt_Pagamento,
  C.Cd_Portador, P.Nm_Portador, C.Cd_Historico, H.Ds_Historico,
  C.Vl_Apurado, Vl_Comissionado

from
  Comissao C

left join
  Portador P
on
  P.Cd_Portador = C.Cd_Portador

left join
  Historico H
on
  H.Cd_Historico = C.Cd_Historico

where
  C.Cd_Filial   = :Cd_Filial

-- ===== TFRMCOMISSAO_PAGAR.ADOCmdComissao
-------------------- Declara Variaveis
declare
  @Cd_Filial SmallInt,
  @Nr_Comissao SmallInt,
  @Nr_Pagar Int

select
  @Cd_Filial   = :Cd_Filial,
  @Nr_Comissao = :Nr_Comissao

set @Nr_Pagar =
  (
  select
    max( A.Nr_Pagar )

  from
    Pagar A

  where
    Cd_Filial = @Cd_Filial
  )

set @Nr_Pagar = Coalesce( @Nr_Pagar, 0 ) + 1

-------------------- Inclusão do CP
insert into Pagar( Cd_Filial, Dt_Emissao, St_Pagar, Cd_Emitente, Cd_Grupo,
  Cd_SubGrupo, Vl_Duplicata, Vl_Pago, Nr_Comissao, Nr_Pagar )
select
  CF.Cd_Filial, :Dt_Emissao, '1', F.Cd_Emitente, :Cd_Grupo, :Cd_SubGrupo,
  CF.Vl_Comissionado, 0, @Nr_Comissao,
  @Nr_Pagar + (
  select
    Count( * )

  from
    Comissao_Funcionario CNT

  where
    CNT.Cd_Filial       = CF.Cd_Filial and
    CNT.Nr_Comissao     = CF.Nr_Comissao and
    CNT.Cd_Funcionario <= CF.Cd_Funcionario
  )

from
  Comissao_Funcionario CF

inner join
  Funcionario F
on
  F.Cd_Funcionario = CF.Cd_Funcionario

inner join
  Emitente E
on
  E.Cd_Emitente = F.Cd_Emitente

where
  CF.Cd_Filial   = @Cd_Filial and
  CF.Nr_Comissao = @Nr_Comissao

-------------------- Inclusão da parcela
insert into Pagar_Parcela( Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento,
   Vl_Parcela, Cd_Portador, Nr_Documento, Mm_Observacao, Vl_Mora, Pr_Mora )
select
  P.Cd_Filial, P.Nr_Pagar, 1, :Dt_Vencimento, P.Vl_Duplicata,
  :Cd_Portador, '', '', 0, 0

from
  Pagar P

where
  P.Cd_Filial   = @Cd_Filial and
  P.Nr_Comissao = @Nr_Comissao

-------------------- Incluir Histórico
insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,
   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento )

select
  P.Cd_Filial, P.Nr_Pagar, 1, 1, '1', P.Dt_Emissao, P.Vl_Duplicata

from
  Pagar P

where
  P.Cd_Filial   = @Cd_Filial and
  P.Nr_Comissao = @Nr_Comissao

-------------------- Atualiza a Comissão
update
  Comissao

set
  St_Comissao = '3'

where
  Cd_Filial   = @Cd_Filial and
  Nr_Comissao = @Nr_Comissao

-- ===== TFRMCOMISSAO_REPORT.ADODsSintetico
select
  BC.Cd_Funcionario, BC.Nm_Funcionario,
  count( distinct BC.Id_Comissao ) as Nr_Atendimento,
  sum( BC.Vl_Item ) as Vl_Venda,
  sum(
    case
      when BC.Pr_Classe      > 0 then BC.Vl_Item / 100.0 * BC.Pr_Classe
      when BC.Pr_SubGrupo    > 0 then BC.Vl_Item / 100.0 * BC.Pr_SubGrupo
      when BC.Pr_Grupo       > 0 then BC.Vl_Item / 100.0 * BC.Pr_Grupo
      when BC.Pr_Produto     > 0 then BC.Vl_Item / 100.0 * BC.Pr_Produto
      when BC.Pr_Funcionario > 0 then BC.Vl_Item / 100.0 * BC.Pr_Funcionario
      else 0
    end ) as Vl_Comissao

from
  #TblComissao BC

group by
  BC.Cd_Funcionario, BC.Nm_Funcionario
  
order by
  BC.Nm_Funcionario

-- ===== TFRMCOMISSAO_REPORT.ADODsAnalitico
select
  BC.Cd_Funcionario, BC.Nm_Funcionario, BC.Cd_Classe, BC.Nm_Classe, BC.Pr_Classe,
  sum( BC.Vl_Item ) as Vl_Venda,
  sum(
    case
      when BC.Pr_Classe      > 0 then BC.Vl_Item / 100.0 * BC.Pr_Classe
      when BC.Pr_SubGrupo    > 0 then BC.Vl_Item / 100.0 * BC.Pr_SubGrupo
      when BC.Pr_Grupo       > 0 then BC.Vl_Item / 100.0 * BC.Pr_Grupo
      when BC.Pr_Produto     > 0 then BC.Vl_Item / 100.0 * BC.Pr_Produto
      when BC.Pr_Funcionario > 0 then BC.Vl_Item / 100.0 * BC.Pr_Funcionario
      else 0
    end ) as Vl_Comissao

from
  #TblComissao BC

group by
  BC.Cd_Funcionario, BC.Nm_Funcionario, BC.Cd_Classe, BC.Nm_Classe, BC.Pr_Classe
  
order by
  BC.Nm_Funcionario

-- ===== TFRMCOMPOSTO.ADODsDados
select
  Cd_Composto, Nm_Composto

from
  Composto

where
  Cd_Composto = :Cd_Composto

-- ===== TFRMCOMPOSTO.ADODsNavegar
-- First
select top 1
  Cd_Composto

from
  Composto

order by
  Cd_Composto

-- ===== TFRMCOMPOSTO.ADODsReport
select
  Cd_Composto, Nm_Composto

from
  Composto

order by
  Nm_Composto

-- ===== TFRMCOMPOSTO_FIND.ADODsFind
select
  Cd_Composto, Nm_Composto

from
  Composto

where
  Nm_Composto like :find

order by
  Nm_Composto

-- ===== TFRMCOMPRA.ADODsDados
select
  C.Cd_Filial, C.Nr_Compra, C.Dt_Emissao, C.St_Compra, C.Cd_Emitente,
  E.Nm_Emitente, C.Nr_Pedido_Emitente, C.Nm_Contato, C.Vl_Compra,
  C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo, C.Mm_Observacao,
  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros, C.Cd_Transportador, T.Nm_Transportador,
  C.Cd_Funcionario, F.Nm_Funcionario, F.Im_Assinatura, C.Nr_PrazoEntrega

from
  Compra C

left join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

left join
  Transportador T
on
  T.Cd_Transportador = C.Cd_Transportador

left join
  Funcionario F
on
  F.Cd_Funcionario = C.Cd_Funcionario

where
  C.Cd_Filial = :Cd_Filial and
  C.Nr_Compra = :Nr_Compra

-- ===== TFRMCOMPRA.ADODsNavegar
-- First
select top 1
  Nr_Compra

from
  Compra

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Compra

-- ===== TFRMCOMPRA.ADODsProduto
select
  A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,
  A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente, B.Nm_Produto, A.Nm_Produto as Nm_ProdChange,
  A.Vl_Unitario * A.Qt_Item as Vl_Total, A.Qt_Recebida, A.Pr_ICMS, A.Pr_IPI,
  B.Cd_Fabricante  

from
  Compra_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto = A.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Compra = :Nr_Compra

order by
  A.Nr_Item

-- ===== TFRMCOMPRA.ADODsPrazo
select
  Cd_Filial, Nr_Compra, Nr_Prazo

from
  Compra_Prazo

where
  Cd_Filial = :Cd_Filial and
  Nr_Compra = :Nr_Compra

order by
  Nr_Prazo

-- ===== TFRMCOMPRA.ADODsFornecedor
select
  E.Nm_Emitente, E.Nr_Documento, E.Ds_Email, EE.Cd_Emitente, EE.Nr_Endereco,
  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado  as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_FAX, E.Nr_Insc_Estadual,
  Convert( VarChar( 7 ), E.Cd_Emitente ) + ' - ' + E.Nm_Emitente as Dp_Emitente,
  EE.Ds_Numero

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TFRMCOMPRA.ADODsTransportador
select
  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,
  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,
  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  T.Nr_Placa, T.Nr_InscEstadual 

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Cd_Transportador = :Cd_Transportador

-- ===== TFRMCOMPRA_ESTOQUEMINIMO.ADODsEstoque
select
  Cd_Produto, Nm_Produto, Qt_Estoque, Qt_Minimo, Fl_Select, Nr_Item,
  Qt_Comprar

from
  #Estoque_Minimo

order by
  Nm_Produto

-- ===== TFRMCOMPRA_EXPORTA.ADODsItem
select
  CI.Cd_Produto, CI.Qt_Item, PF.Cd_Produto_Emitente

from
  Compra_Item CI

inner join
  Produto_Fornecedor PF
on
  PF.Cd_Produto  = CI.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  CI.Cd_Filial = :Cd_Filial and
  CI.Nr_Compra = :Nr_Compra

order by
  CI.Nr_Item

-- ===== TFRMCOMPRA_EXPORTA.ADODsID
select
  Id_Fornecedor

from
  Compra_Fornecedor

where
  Cd_Filial = :Cd_Filial and
  Cd_Fornecedor = :Cd_Fornecedor

-- ===== TFRMCOMPRA_FALTA.ADODsProdFalta
select
  A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,
  A.Vl_Unitario, B.Fl_Lote, A.Vl_Unitario * A.Qt_Item as Vl_Total,
  case
    when A.Cd_Produto is not null then B.Nm_Produto
    else A.Nm_Produto

  end as Nm_Produto

from
  Compra_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Compra = :Nr_Compra

order by
  A.Nr_Item

-- ===== TFRMCOMPRA_FIND.ADODsNumero
select
  A.Nr_Compra, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Nr_Pedido_Emitente

from
  Compra A

left join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Compra >= :Nr_Compra

order by
  A.Nr_Compra

-- ===== TFRMCOMPRA_FIND.ADODsEmitente
select
  A.Nr_Compra, A.Dt_Emissao, A.Pr_Desconto, A.Vl_Desconto, A.Pr_Custo,
  A.Vl_Custo, A.Nr_Pedido_Emitente

from
  Compra A

where
  A.Cd_Filial   = :Cd_Filial and
  A.Cd_Emitente = :Cd_Emitente

order by
  A.Nr_Compra desc

-- ===== TFRMCOMPRA_ITEM.ADODsPrimary
select
  max( Nr_Item ) as NewItem

from
  Compra_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Compra = :Nr_Compra

-- ===== TFRMCOMPRA_ITEM.ADODsCheck
select
  Nr_Item

from
  Compra_Item

where
  Cd_Filial  = :Cd_Filial and
  Nr_Compra = :Nr_Compra and
  Cd_Produto = :Cd_Produto

-- ===== TFRMCOMPRA_ITEM_SELECT.ADODsPrimary
select
  max( Nr_Item ) as NewItem

from
  Compra_Item

where
  Cd_Filial  = :Cd_Filial and
  Nr_Compra = :Nr_Compra

-- ===== TFRMCOMPRA_ITEM_SELECT.ADODsFind
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque

from
  Produto P

-- ===== TFRMCOMPRA_MAPA.ADODsMapaCompra
select
  MC.Cd_Produto, MC.Nm_Produto, MC.Sg_Estoque, MC.Qt_Mes1, MC.Qt_Mes2,
  MC.Qt_Mes3, MC.Qt_Mes4, MC.Qt_Media, MC.Qt_Estoque, MC.Qt_Rotatividade,
  MC.Qt_Pendencia, MC.Qt_Sugestao,
  P.Cd_Grupo, Cast( P.Cd_Grupo as VarChar( 5 ) ) + ' - ' + G.Nm_Grupo as Dp_Grupo,
  P.Cd_SubGrupo, Cast( P.Cd_SubGrupo as VarChar( 5 ) ) + ' - ' + SG.Nm_SubGrupo as Dp_SubGrupo,
  P.Cd_Classe, Cast( P.Cd_Classe as VarChar( 5 ) ) + ' - ' + C.Nm_Classe as Dp_Classe

from
  #MapaCompra MC

inner join
  Produto P
on
  P.Cd_Produto = MC.Cd_Produto

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

where
  MC.Qt_Sugestao > 0

order by
  P.Cd_Grupo, P.Cd_SubGrupo, P.Cd_Classe, MC.Nm_Produto

-- ===== TFRMCOMPRA_ORCAMENTO.ADODsOrcamento
select
  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,
  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,

  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota

from
  Orcamento O             

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMCOMPRA_ORCAMENTO.ADODsFabricante
/*
  create table ##CompraOrca
    (
    Nr_SPID Int,
    Cd_Produto Int,
    Cd_Laboratorio SmallInt,
    Qt_Produto Numeric( 12, 3 ),
    Sg_Unidade Char( 2 )
    )
*/
select distinct
  CO.Cd_Laboratorio,
  Coalesce( L.Nm_Laboratorio, '<< Não Identificado >>' ) as Nm_Laboratorio

from
  ##CompraOrca CO

left join
  Laboratorio L
on
  L.Cd_Laboratorio = CO.Cd_Laboratorio

where
  CO.Nr_SPID = @@SPID

order by
  2

-- ===== TFRMCOMPRA_ORCAMENTO.ADODsProduto
/*
  create table ##CompraOrca
    (
    Nr_SPID Int,
    Cd_Produto Int,
    Cd_Laboratorio SmallInt,
    Qt_Produto Numeric( 12, 3 ),
    Sg_Unidade Char( 2 )
    )
*/
select
  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade, sum( Qt_Produto ) as Qt_Produto

from
  ##CompraOrca CO

inner join
  Produto P
on
  P.Cd_Produto = CO.Cd_Produto

where
  CO.Nr_SPID = @@SPID and
  CO.Cd_Laboratorio = :Cd_Laboratorio

group by
  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade

order by
  1

-- ===== TFRMCOMPRA_PENDENCIA.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

-------------------- Incluir itens do pedido de compra
select
  C.Cd_Filial, C.Nr_Compra, C.Cd_Emitente, E.Nm_Emitente, C.St_Compra,
  C.Dt_Emissao,

  CI.Nr_Item, CI.Cd_Produto, P.Nm_Produto, PF.Cd_Produto_Emitente,
  CI.Qt_Item as Qt_Compra, CI.Qt_Item as Qt_Pedido, CI.Vl_Unitario,
  CI.Qt_Item - CI.Qt_Recebida as Qt_Restante, CI.Qt_Recebida,
  CI.Sg_Unidade,

  C.Vl_Compra, C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo,
  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros

from
  Compra C

inner join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

inner join
  Compra_Item CI
on
  CI.Cd_Filial = C.Cd_Filial and
  CI.Nr_Compra = C.Nr_Compra and
  CI.Qt_Item - CI.Qt_Recebida > 0.0

inner join
  Produto P
on
  P.Cd_Produto = CI.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto  = CI.Cd_Produto and
  PF.Cd_Emitente = C.Cd_Emitente

where
  C.Cd_Filial   = @Cd_Filial and
  /* Cd_Fornecedor */
  /* St_Compra */
  C.Dt_Emissao >= @Dt_Start and
  C.Dt_Emissao  < @Dt_End

order by
  C.Cd_Filial, C.Cd_Emitente, CI.Nr_Item

-- ===== TFRMCOMPRA_PRAZO.ADODsPrazoFind
select
  Nr_Prazo

from
  Compra_Prazo

where
  Cd_Filial = :Cd_Filial and
  Nr_Compra = :Nr_Compra and
  Nr_Prazo  = :Nr_Prazo

-- ===== TFRMCOMPRA_PRAZO.ADOCmdPrazo
insert into Compra_Prazo( Cd_Filial, Nr_Compra, Nr_Prazo )
values( :Cd_Filial, :Nr_Compra, :Nr_Prazo )

-- ===== TFRMCOMPRA_REPORT.ADODsReport
select
  C.Cd_Filial, C.Nr_Compra, C.Dt_Emissao, C.St_Compra, C.Cd_Emitente,
  E.Nm_Emitente, C.Nr_Pedido_Emitente, C.Nm_Contato, C.Vl_Compra,
  C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo, C.Mm_Observacao, 
  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros

from
  Compra C

left join
  Emitente E
on
  E.Cd_Emitente = C.Cd_Emitente

where
  C.Cd_Filial = :Cd_Filial and
  C.Dt_Emissao >= :Dt_Start and
  C.Dt_Emissao  < :Dt_End
  /* C.Cd_Emitente */ 

order by
  C.Nr_Compra

-- ===== TFRMCOMPRA_REPORT.ADODsProduto
select
  A.Cd_Filial, A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,
  A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente, B.Nm_Produto, A.Nm_Produto as Nm_ProdChange,
  A.Vl_Unitario * A.Qt_Item as Vl_Total, PF.Cd_Emitente

from
  Compra_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto = A.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Compra = :Nr_Compra

order by
  A.Nr_Item

-- ===== TFRMCONTATO.ADODsOrcamento
select
  Cd_Emitente

from
  Orcamento

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMCONTATO.ADODsContato
select
  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia, B.Ds_Ocorrencia,
  A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario, A.Mm_Observacao, A.Nr_Orcamento,
  A.Tp_Contato

from
  Contato A

inner join
  Contato_Ocorrencia B
on
  B.Cd_Ocorrencia = A.Cd_Ocorrencia

where
  A.Cd_Emitente = :Cd_Emitente and
  A.Nr_Contato  = :Nr_Contato

-- ===== TFRMCONTATO.ADODsContatoNovo
select
  max( Nr_Contato ) as Nr_Contato

from
  Contato

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMCONTATO_OCORRENCIA.ADODsDados
select
  Cd_Ocorrencia, Ds_Ocorrencia, Im_Ocorrencia, Cd_Color, Fl_Ativo

from
  Contato_Ocorrencia

where
  Cd_Ocorrencia = :Cd_Ocorrencia

-- ===== TFRMCONTATO_OCORRENCIA.ADODsNavegar
-- First
select top 1
  Cd_Ocorrencia

from
  Contato_Ocorrencia

order by
  Cd_Ocorrencia

-- ===== TFRMCONTATO_OCORRENCIA.ADODsReport
select
  Cd_Ocorrencia, Ds_Ocorrencia, Fl_Ativo

from
  Contato_Ocorrencia

order by
  Ds_Ocorrencia

-- ===== TFRMCONTATO_OCORRENCIA_FIND.ADODsFind
select
  Cd_Ocorrencia, Ds_Ocorrencia

from
  Contato_Ocorrencia

where
  Ds_Ocorrencia like :find

order by
  Ds_Ocorrencia

-- ===== TFRMCONTATO_SELECT.ADODsSelContato
select
  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,
  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular

from
  Emitente_Contato A

where
  A.Cd_Emitente = :Cd_Emitente

order by
  A.Cd_Emitente, A.Nm_Contato

-- ===== TFRMCONTATO_VIEW.ADODsContato
select
  A.Cd_Emitente, A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,
  C.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,
  A.Mm_Observacao, A.Cd_Filial, A.Nr_Orcamento,
  Cast( A.Cd_Emitente as VarChar( 5 ) ) + ' - ' + B.Nm_Emitente as Dp_Emitente,
  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + ' - ' + C.Ds_Ocorrencia as Dp_Ocorrencia,
    case A.St_Contato
      when '1' then 'Aberto'
      when '2' then 'Encerrado'
    end as Dp_Contato,
  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX, B.Nm_Fantasia,
  D.Nr_Celular_1

from
  Contato A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

inner join
  Contato_Ocorrencia C
on
  C.Cd_Ocorrencia = A.Cd_Ocorrencia

left join
  Emitente_Endereco D
on
  D.Cd_Emitente = B.Cd_Emitente and
  D.Nr_Endereco = B.Nr_Endereco

-- ===== TFRMCONTATO_VIEW.ADODsOrcamento
select
  Cd_Emitente

from
  Orcamento

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMDOWNLOAD.ADOCmdIBPTax
declare
  @Cd_NCM VarChar( 9 ),
  @Cd_Ex Char( 1 ),
  @Cd_Tabela Char( 1 ),
  @Pr_Nacional numeric( 7, 3 ),
  @Pr_Importado Numeric( 7, 3 ),
  @Pr_Estadual Numeric( 7, 3 ),
  @Pr_Municipal Numeric( 7, 3 )

select
  @Cd_NCM       = :Cd_NCM,
  @Cd_Ex        = :Cd_Ex,
  @Cd_Tabela    = :Cd_Tabela,
  @Pr_Nacional  = :Pr_Nacional,
  @Pr_Importado = :Pr_Importado,
  @Pr_Estadual  = :Pr_Estadual,
  @Pr_Municipal = :Pr_Municipal

if not Exists( 
   select 
     Cd_NCM 
	 
   from 
     IBPTax
	 
   where
     Cd_NCM = @Cd_NCM and
     Cd_Ex  = @Cd_Ex
   ) 
  insert into IBPTax( Cd_NCM, Cd_Ex, Cd_Tabela, Pr_Nacional, Pr_Importado, Pr_Estadual, Pr_Municipal )
  values( @Cd_NCM, @Cd_Ex, @Cd_Tabela, @Pr_Nacional, @Pr_Importado, @Pr_Estadual, @Pr_Municipal )
  
else
  update
    IBPTax
	
  set
    Cd_Tabela    = @Cd_Tabela,
    Pr_Nacional  = @Pr_Nacional,
    Pr_Importado = @Pr_Importado,
    Pr_Estadual  = @Pr_Estadual,
    Pr_Municipal = @Pr_Municipal
	
  where
    Cd_NCM       = @Cd_NCM and
    Cd_Ex        = @Cd_Ex

-- ===== TFRMEMALADIRETA.ADODsSelect
-------------------- Cria table temporaria
if Object_ID( 'TempDB..##EmalaDireta' ) is null
  create table ##EmalaDireta
    (
    Id_Emitente Integer identity( 1, 1 ),
    Cd_Emitente Integer,
    Nm_Emitente VarChar( 50 ),
    Ds_Email VarChar( 100 ),
    Fl_Enviar Char( 1 ),
    Nr_Contato SmallInt,
    Nm_Contato VarChar( 50 ),
    Ds_EMContato VarChar( 100 ),
    Ds_EMCobranca VarChar( 100 )
    )

else
  truncate table ##EmalaDireta

-------------------- Todos os registros
insert into ##EmalaDireta( Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar,
    Nr_Contato, Nm_Contato, Ds_EMContato, Ds_EMCobranca )

select
  E.Cd_Emitente, E.Nm_Emitente, E.Ds_Email, '1', null, null, null, null

from
  Emitente E
where
  E.Ds_EMail <> ''

-------------------- Todos os registros
select
  Id_Emitente, Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar, Nr_Contato,
  Nm_Contato, Ds_EMContato, Ds_EMCobranca

from
  ##EmalaDireta

order by
  Nm_Emitente

-- ===== TFRMEMITENTE.ADODsDados
select
  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro, E.Dt_Alteracao,
  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,
  E.Cd_Credito, EC.Nm_Emitente as Nm_Credito, E.Cd_Grupo, EG.Nm_Grupo, E.Cd_SubGrupo,
  ES.Nm_SubGrupo, E.Fl_Contribuinte, E.Fl_Exportador, E.Ds_EMail, E.Ds_Site,
  E.Cd_Usuario, E.Cd_Portador, P.Nm_Portador, E.Dt_Nascimento, E.Nr_Identidade,
  E.Nm_Orgao_emissor, E.Dt_Emissao_ID, E.Nm_Pai, E.Nm_Mae, E.Fl_Grau_Instrucao,
  E.St_Grau_Instrucao, E.Ds_Naturalidade, E.Fl_Estado_Civil, E.Nm_Conjuje,
  E.Dt_Nascimento_conjuje, E.Mm_Observacao, E.Mm_Restricao,
  Cast( E.Sg_Estado_Emissor as VarChar( 2 ) ) + ' - ' + ET.Nm_Estado as Dp_Estado_Emissor,
  E.Nr_Endereco, E.Nr_EndCobranca, E.Fl_Pagamento, E.Nr_Pagamento,
  E.Cd_Funcionario, F.Nm_Funcionario, E.Nr_Insc_Municipal, E.Dt_Atividade, E.Mm_Nota,
  E.Ds_EMailCob, E.Pr_Desconto, E.Ds_EMailNFe, E.Fl_ConFinal

from
  Emitente E

left join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

inner join
  Emitente_Grupo EG
on
  EG.Cd_Grupo = E.Cd_Grupo

inner join
  Emitente_SubGrupo ES
on
  ES.Cd_SubGrupo = E.Cd_SubGrupo

left join
  Portador P
on
  P.Cd_Portador = E.Cd_Portador

left join
  Estado ET
on
  ET.Sg_Estado = E.Sg_Estado_Emissor

left join
  Funcionario F
on
  F.Cd_Funcionario = E.Cd_Funcionario

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE.ADODsNavegar
-- First
select top 1
  Cd_Emitente

from
  Emitente

order by
  Cd_Emitente

-- ===== TFRMEMITENTE.ADODsEndereco
select
  dbo.IntToStrZero( EE.Nr_Endereco, 2 ) + ' - ' + EE.Ds_Titulo as Dp_Titulo,
  EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento,
  EE.Cd_Cidade, C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  EE.Nr_Cep, EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3,
  EE.Nr_Celular_1, EE.Nr_Celular_2, EE.Nr_Fax, EE.Mm_Observacao,
  EE.Cd_Rota, R.Ds_Rota, EE.Nr_Ordem, EE.Ds_Endereco, EE.Ds_Numero

from
  Emitente_Endereco EE

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

where
  EE.Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE.ADODsEndNovo
select top 1
  A.Nr_Endereco + 1 as Nr_Endereco

from
  Emitente_Endereco A

where
  A.Cd_Emitente = :Cd_Emitente and
  not exists(
  select
    B.Nr_Endereco

  from
    Emitente_Endereco B

  where
    B.Cd_Emitente = A.Cd_Emitente and
    B.Nr_Endereco = A.Nr_Endereco + 1
  )

order by
  A.Nr_Endereco

-- ===== TFRMEMITENTE.ADODsAgenda
select
  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,
  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,
  A.Mm_Observacao, A.Nr_Orcamento,
  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + ' - ' + B.Ds_Ocorrencia as Dp_Ocorrencia,
  case A.St_Contato
    when '1' then 'Aberto'
    when '2' then 'Encerrado'
  end as Dp_Contato

from
  Contato A

inner join
  Contato_Ocorrencia B
on
  B.Cd_Ocorrencia = A.Cd_Ocorrencia

where
  A.Cd_Emitente = :Cd_Emitente 

order by
  Nr_Contato desc

-- ===== TFRMEMITENTE.ADODsContato
select
  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,
  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular, A.Nr_Fax

from
  Emitente_Contato A

where
  A.Cd_Emitente = :Cd_Emitente

order by
  A.Cd_Emitente, A.Nm_Contato

-- ===== TFRMEMITENTE.ADODsDuplicata
select
  R.Cd_Filial, F.Nm_Abreviado, R.Nr_Receber, R.Dt_Emissao, R.Nr_Orcamento,
  R.St_Receber, RP.Nr_Parcela, RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido,
  FO.Nm_Funcionario, O.Nr_Fatura,
  RP.Dp_Portador,
  RP.Dt_Recebimento, RP.Vl_Saldo

from
  Receber R

inner join
  Filial F
on
  F.Cd_Filial = R.Cd_Filial

inner join
  Receber_ParcelaVw RP
on
  RP.Cd_Filial  = R.Cd_Filial and
  RP.Nr_Receber = R.Nr_Receber

left join
  Orcamento O
on
  O.Cd_Filial    = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

left join
  Funcionario FO
on
  FO.Cd_Funcionario = O.Cd_Funcionario

where
  R.Cd_Emitente = :Cd_Emitente and
  R.St_Receber < '4'

order by
  R.Cd_Emitente, RP.Dt_Vencimento desc

    -- R.Cd_Filial, R.Nr_Receber desc, RP.Nr_Parcela desc

-- ===== TFRMEMITENTE.ADODsCFG
select
  Cd_Filial, Fl_PastaMensal, Ds_PathCancelar, Nr_Intervalo, Nm_LogoMarca,
  Ds_PathDPEC, Ds_PathInu, Ds_PathNFe, Nr_Certificado, Sh_Certificado,
  Ds_PathSalvar, Ds_PathSchemas, Fl_Ambiente, Tp_DANFe, Ds_PathPDF,
  Nm_DANFe, Nr_Decimais, Ds_Assunto, Mm_EMail, Fl_FormaEmissao, Nr_Copia,
  Dt_Contingencia, Ds_Contingencia

from
  NFe_CFG

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMEMITENTE.ADODsCidade
select
  Cd_Cidade, Nm_Cidade, Sg_Estado

from
  Cidade

where
  Cd_IBGE = :Cd_IBGE

-- ===== TFRMEMITENTE.ADODsCredito
select
  Cd_Emitente, Nr_Lancamento, Dt_Lancamento, Tp_Lancamento, Vl_Lancamento, 
  Ds_Lancamento, Cd_Usuario

from
  Emitente_Credito 

where
  Cd_Emitente = :Cd_Emitente

order by
  Cd_Emitente, Nr_Lancamento desc

-- ===== TFRMEMITENTE_CHANGE.ADOCmdEmitente
execute EmitenteChange :Cd_Old, :Cd_New

-- ===== TFRMEMITENTE_CONSULTACNPJ.ADODsCidade
--------------- Consulta pela Cidade
select
  Cd_Cidade

from
  Cidade

where
  Sg_Estado = :Sg_Estado and
  Nm_Cidade = :Nm_Cidade

-- ===== TFRMEMITENTE_CONTATO.ADODsContatoNovo
select
  max( Nr_Contato ) as Nr_Contato

from
  Emitente_Contato

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_CREDITO.ADODsNew
select
  Max( Nr_Lancamento ) as Nr_Lancamento

from
  Emitente_Credito 

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_CREDITO.ADODsFind
select
  Cd_Emitente, Nr_Lancamento, Dt_Lancamento, Tp_Lancamento, Vl_Lancamento, 
  Ds_Lancamento, Cd_Usuario

from
  Emitente_Credito 

where
  Cd_Emitente   = :Cd_Emitente and
  Nr_Lancamento = :Nr_Lancamento

-- ===== TFRMEMITENTE_ENDERECO.ADODsPrimary
select top 1
  A.Nr_Endereco + 1 as Nr_Endereco

from
  Emitente_Endereco A

where
  A.Cd_Emitente = :Cd_Emitente and
  not exists(
  select
    B.Nr_Endereco

  from
    Emitente_Endereco B

  where
    B.Cd_Emitente = A.Cd_Emitente and
    B.Nr_Endereco = A.Nr_Endereco + 1
  )

order by
  A.Nr_Endereco

-- ===== TFRMEMITENTE_ENDERECO_VIEW.ADODsEndView
select
  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,
  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,
  B.Nm_Cidade + ' - ' + B.Sg_Estado  as Dp_Cidade,
  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao, 
  Cast( A.Cd_Rota as VarChar ) + ' - ' + C.Ds_Rota as Dp_Rota,
  A.Ds_Numero

from
  Emitente_Endereco A

inner join
  Cidade B
on
  B.Cd_Cidade = A.Cd_Cidade

left join
  Rota C
on
  C.Cd_Rota = A.Cd_Rota

where
  A.Cd_Emitente = :Cd_Emitente

order by
  A.Nr_Endereco

-- ===== TFRMEMITENTE_EXPORTA.ADODsEmitente
select
  E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP,
  C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1, E.Nr_Insc_Estadual,
  EA.Pr_Contribuinte

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem = :Sg_Origem and
  EA.Sg_Destino = C.Sg_Estado

/* Where */

order by
  E.Nm_Emitente

-- ===== TFRMEMITENTE_FATURAMENTOANUAL.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

if Object_ID( 'TempDB..##ProdAnual' ) is not null
  delete from ##ProdAnual where Nr_SPID = @@SPID

else
  create table ##ProdAnual
    (
    Nr_SPID Int,
    Cd_Emitente Int,
    Cd_Produto Int,
    Qt_Mes_00 numeric( 12, 2 ),
    Vl_Mes_00 numeric( 12, 2 ),
    Vl_Venda_00 numeric( 12, 2 ),
    Qt_Mes_01 numeric( 12, 2 ),
    Vl_Mes_01 numeric( 12, 2 ),
    Vl_Venda_01 numeric( 12, 2 ),
    Qt_Mes_02 numeric( 12, 2 ),
    Vl_Mes_02 numeric( 12, 2 ),
    Vl_Venda_02 numeric( 12, 2 ),
    Qt_Mes_03 numeric( 12, 2 ),
    Vl_Mes_03 numeric( 12, 2 ),
    Vl_Venda_03 numeric( 12, 2 ),
    Qt_Mes_04 numeric( 12, 2 ),
    Vl_Mes_04 numeric( 12, 2 ),
    Vl_Venda_04 numeric( 12, 2 ),
    Qt_Mes_05 numeric( 12, 2 ),
    Vl_Mes_05 numeric( 12, 2 ),
    Vl_Venda_05 numeric( 12, 2 ),
    Qt_Mes_06 numeric( 12, 2 ),
    Vl_Mes_06 numeric( 12, 2 ),
    Vl_Venda_06 numeric( 12, 2 ),
    Qt_Mes_07 numeric( 12, 2 ),
    Vl_Mes_07 numeric( 12, 2 ),
    Vl_Venda_07 numeric( 12, 2 ),
    Qt_Mes_08 numeric( 12, 2 ),
    Vl_Mes_08 numeric( 12, 2 ),
    Vl_Venda_08 numeric( 12, 2 ),
    Qt_Mes_09 numeric( 12, 2 ),
    Vl_Mes_09 numeric( 12, 2 ),
    Vl_Venda_09 numeric( 12, 2 ),
    Qt_Mes_10 numeric( 12, 2 ),
    Vl_Mes_10 numeric( 12, 2 ),
    Vl_Venda_10 numeric( 12, 2 ),
    Qt_Mes_11 numeric( 12, 2 ),
    Vl_Mes_11 numeric( 12, 2 ),
    Vl_Venda_11 numeric( 12, 2 ),
    Qt_Mes_12 numeric( 12, 2 ),
    Vl_Mes_12 numeric( 12, 2 ),
    Vl_Venda_12 numeric( 12, 2 )
    )

select
  Qt_Total =
     ( PA.Qt_Mes_01 + PA.Qt_Mes_02 + PA.Qt_Mes_03 + PA.Qt_Mes_04 + PA.Qt_Mes_05 + PA.Qt_Mes_06 +
       PA.Qt_Mes_07 + PA.Qt_Mes_08 + PA.Qt_Mes_09 + PA.Qt_Mes_10 + PA.Qt_Mes_11 + PA.Qt_Mes_12 ),
  Vl_Total =
     ( PA.Vl_Mes_01 + PA.Vl_Mes_02 + PA.Vl_Mes_03 + PA.Vl_Mes_04 + PA.Vl_Mes_05 + PA.Vl_Mes_06 +
       PA.Vl_Mes_07 + PA.Vl_Mes_08 + PA.Vl_Mes_09 + PA.Vl_Mes_10 + PA.Vl_Mes_11 + PA.Vl_Mes_12 ),

  PA.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, PA.Cd_Produto, P.Nm_Produto,
  Dp_Cidade = C.Nm_Cidade + ' - ' + C.Sg_Estado, EE.Nm_Bairro,
  PA.Qt_Mes_00, PA.Vl_Mes_00, PA.Vl_Venda_00,
  PA.Qt_Mes_01, PA.Vl_Mes_01, PA.Vl_Venda_01,
  PA.Qt_Mes_02, PA.Vl_Mes_02, PA.Vl_Venda_02,
  PA.Qt_Mes_03, PA.Vl_Mes_03, PA.Vl_Venda_03,
  PA.Qt_Mes_04, PA.Vl_Mes_04, PA.Vl_Venda_04,
  PA.Qt_Mes_05, PA.Vl_Mes_05, PA.Vl_Venda_05,
  PA.Qt_Mes_06, PA.Vl_Mes_06, PA.Vl_Venda_06,
  PA.Qt_Mes_07, PA.Vl_Mes_07, PA.Vl_Venda_07,
  PA.Qt_Mes_08, PA.Vl_Mes_08, PA.Vl_Venda_08,
  PA.Qt_Mes_09, PA.Vl_Mes_09, PA.Vl_Venda_09,
  PA.Qt_Mes_10, PA.Vl_Mes_10, PA.Vl_Venda_10,
  PA.Qt_Mes_11, PA.Vl_Mes_11, PA.Vl_Venda_11,
  PA.Qt_Mes_12, PA.Vl_Mes_12, PA.Vl_Venda_12

from
  ##ProdAnual PA

inner join
  Emitente E
on
  E.Cd_Emitente = PA.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

inner join
  Produto P
on
  P.Cd_Produto = PA.Cd_Produto

where
  PA.Nr_SPID = @@SPID

order by
  PA.Cd_Emitente, PA.Cd_Produto

-- ===== TFRMEMITENTE_FIND.ADODsContato
select top 50
  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,
  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,
  A.Mm_Observacao, A.Nr_Orcamento,
  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + ' - ' + B.Ds_Ocorrencia as Dp_Ocorrencia,
  case A.St_Contato
    when '1' then 'Aberto'
    when '2' then 'Encerrado'
  end as Dp_Contato

from
  Contato A

inner join
  Contato_Ocorrencia B
on
  B.Cd_Ocorrencia = A.Cd_Ocorrencia

where
  A.Cd_Emitente = :Cd_Emitente 

order by
  Nr_Contato desc

-- ===== TFRMEMITENTE_FIND.ADODsFind
--------------- Base da consulta
select
  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,
  EE.Ds_Endereco + ' ' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo

from
  Emitente E

inner join
  Emitente_Grupo EG
on
  EG.Cd_Grupo = E.Cd_Grupo

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

-- ===== TFRMEMITENTE_FREQUENCIAVENDA.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

select
  E.Cd_Emitente, E.Nm_Emitente,
  sum( OT.Vl_Orcamento ) as Vl_Vendido,
  max( OT.Dt_Fatura ) as Dt_UltimaVenda,
  min( OT.Dt_Fatura ) as Dt_PrimeiraVenda,
  min( OT.Vl_Orcamento ) as Vl_MenorVenda,
  max( OT.Vl_Orcamento ) as Vl_MaiorVenda,
  count( OT.Vl_Orcamento ) as Nr_Vendas

from
  Emitente E

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = @Cd_Filial and
  OT.Cd_Emitente  = E.Cd_Emitente and
  OT.St_Orcamento = '9' and
  OT.Dt_Fatura    < @Dt_End

where
  /* Cd_Grupo */
  /* Cd_SubGrupo */

  -------------------- Verifica se não fez compra
  not Exists(
    -------------------- Faturado
    select
      Cd_Filial

    from
      Orcamento O

    where
      O.Cd_Filial    = @Cd_Filial and
      O.Cd_Emitente  = E.Cd_Emitente and
      O.St_Orcamento = '9' and
      O.Dt_Fatura   >= @Dt_Start and
      O.Dt_Fatura    < @Dt_End

    union
    -------------------- Reservado
    select
      Cd_Filial

    from
      Orcamento O

    where
      O.Cd_Filial    = @Cd_Filial and
      O.Cd_Emitente  = E.Cd_Emitente and
      O.St_Orcamento = '5' and
      O.Dt_Fatura   >= @Dt_Start and
      O.Dt_Fatura    < @Dt_End
    )

  /* Condicao */

group by
  E.Cd_Emitente, E.Nm_Emitente

-- ===== TFRMEMITENTE_GAS.ADODsGas
select
  EG.Cd_Emitente, EG.Nr_Contrato, EG.Dt_Contrato, EG.Dt_Validade, EG.Cd_Produto, 
  P.Nm_Produto, EG.Vl_Produto, EG.Mm_Observacao

from
  Emitente_Gas EG

inner join
  Produto P
on
  P.Cd_Produto = EG.Cd_Produto

where
  EG.Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_GRUPO.ADODsDados
select
  cd_grupo, nm_grupo

from
  emitente_grupo

where
  cd_grupo = :Cd_Grupo

-- ===== TFRMEMITENTE_GRUPO.ADODsNavegar
-- First
select top 1
  cd_grupo

from
  emitente_grupo

order by
  cd_grupo

-- ===== TFRMEMITENTE_GRUPO.ADODsReport
select
  cd_grupo, nm_grupo

from
  emitente_grupo

order by
  nm_grupo

-- ===== TFRMEMITENTE_GRUPO_FIND.ADODsFind
select
  cd_grupo, nm_grupo

from
  emitente_grupo

where
  nm_grupo like :find

order by
  nm_grupo

-- ===== TFRMEMITENTE_LICENCA.ADODsDados
select
  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,
  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,
  Fl_EMailCob, Ds_EmailCob

from
  Emitente

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_LICENCA_FILE.ADODsEmitente
select
  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, E.Nm_Fantasia, E.Nr_Pagamento,
  E.Nr_Computador,
  Cd_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then E.Cd_Credito end ),
  Nm_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then EC.Nm_Emitente end ),
  (
  select
    min( RP.Dt_Vencimento )

  from
    Receber R

  inner join
    Receber_Parcela RP

  on
    RP.Cd_Filial   = R.Cd_Filial and
    RP.Nr_Receber  = R.Nr_Receber and
    RP.Vl_Parcela >= RP.Vl_Recebido

  where
    R.Cd_Emitente = E.Cd_Credito and
    R.St_Receber <= '2'
  ) as Dt_Vencido

from
  Emitente E

inner join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

where
  E.Cd_Grupo in ( 3, 5 ) 

order by
  E.Nr_Pagamento, E.Nm_Emitente

-- ===== TFRMEMITENTE_LICENCA_FILE.MyQryValida
insert into Boleto( Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,
    Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,
    Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,
    Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,
    Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,
    mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,
    Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,
    Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,
    Ds_Numero, Dt_Alteracao )

values( :Nm_Portador, :Cd_Banco, :Nr_Receber, :Nr_Parcela, :Cd_Carteira,
    :Dt_Vencimento, :Cd_Agencia, :Nr_Conta, :Nr_DoctoBanco, :Vl_Parcela,
    :Nm_Emitente, :Nr_MF, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,
    :Dp_Cidade, :DP_MF, :Dp_Endereco, :Dp_DoctoBanco, :Dp_Conta, :Nr_Documento,
    :Ds_Barra, :Dt_Emissao, :Ds_Digitavel, :Tp_Cobranca, :Ds_Asbase, :Ds_Boleto,
    :Nr_Fatura, :Dp_Fatura, :mm_instrucao, :ds_livre, :ds_carteira, :Dp_Sacado_1,
    :Dp_Sacado_2, :Dp_Sacado_3, :Dp_Sacado_4, :pr_taxajuros, :pr_multa,
    :Nr_Separador, :Fl_Entrega, :Nr_Insc_Estadual, :Nr_Pedido_Emitente,
    :Nr_Orcamento, :Ds_LocalPagamento, :Ds_Numero, :Dt_Alteracao )

-- ===== TFRMEMITENTE_LICENCA_FILE.MyQryFind
select
  Nr_Documento

from
  Validacao

where
  Nr_Documento = :Nr_Documento

-- ===== TFRMEMITENTE_MS.ADODsEmitente
select
  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,
  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,
  Fl_EMailCob, Vl_Limite_Credito, Ds_EmailCob, Nr_Pagamento,
  Fl_BloquearAcesso

from
  Emitente

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_RANKING.ADODsRanking
select
  O.Cd_Emitente, O.Nm_Emitente, E.Nm_Fantasia, 
  sum( Vl_Orcamento ) as Vl_Orcamento,
  count( * ) as Nr_Orcamentos

from
  Orcamento_Total O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  
where
  O.Cd_Filial    = :Cd_Filial and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End
  
group by
  O.Cd_Emitente, O.Nm_Emitente, E.Nm_Fantasia

order by
  3 desc

-- ===== TFRMEMITENTE_RAPIDO.ADODsEmitente
select top 1
  A.Cd_Emitente + 1 as Cd_Emitente

from
  Emitente A

where
  not exists( 
  select
    B.Cd_Emitente

  from
    Emitente  B

  where
    B.Cd_Emitente = A.Cd_Emitente + 1
  )

order by
  A.Cd_Emitente

-- ===== TFRMEMITENTE_REPORT.MSCliente
select
  A.Cd_Emitente, A.Nm_Emitente, A.Nm_Fantasia, A.Dt_Cadastro, A.Dt_Alteracao,
  A.Tp_Pessoa,
  case A.Tp_Pessoa
    when '1' then 'Física'
    else 'Jurídica'
  end as Dp_Pessoa,
  A.Nr_Documento, A.Nr_Insc_Estadual, A.Vl_Limite_Credito,
  Cast( A.Cd_Credito  as VarChar( 5 ) ) + ' - ' + B.Nm_Emitente as Dp_Credito,
  Cast( A.Cd_Grupo    as VarChar( 3 ) ) + ' - ' + C.Nm_Grupo as Dp_Grupo,
  Cast( A.Cd_SubGrupo as VarChar( 3 ) ) + ' - ' + ESG.Nm_SubGrupo as Dp_SubGrupo,
  Cast( A.Cd_Portador as VarChar( 5 ) ) + ' - ' + F.Nm_Portador as Dp_Portador,
  case A.Fl_Contribuinte when '1' then 'Sim' else 'Não' end as Dp_Contribuinte,
  case A.Fl_Exportador   when '1' then 'Sim' else 'Não' end as Dp_Exportador,
  A.Ds_EMail, A.Ds_Site, A.Mm_Observacao, A.Mm_Restricao,
  D.Ds_Titulo, D.Ds_Endereco, D.Nm_Bairro, D.Ds_Complemento, D.Nr_CEP,
  Cast( D.Cd_Cidade as VarChar ) + ' - ' +
    E.Nm_Cidade + ' - ' + Cast( E.Sg_Estado as VarChar( 2 ) ) as Dp_Cidade,
  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX,
  D.Mm_Observacao as Mm_ObsEntrega,
  E.Nm_Cidade + ' - ' + E.Sg_Estado as Dp_CidEtiqueta,
  EC.Nm_Contato, D.Ds_Numero, A.Nr_Pagamento

from
  Emitente A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Credito

inner join
  Emitente_Grupo C
on
  C.Cd_Grupo = A.Cd_Grupo

inner join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = A.Cd_SubGrupo

inner join
  Emitente_Endereco D
on
  D.Cd_Emitente = A.Cd_Emitente and
  D.Nr_Endereco = A.Nr_Endereco

inner join
  Cidade E
on
  E.Cd_Cidade = D.Cd_Cidade

inner join
  Emitente_Contato EC
on
  EC.Cd_Emitente = A.Cd_Emitente

left join
  Portador F
on
  F.Cd_Portador = A.Cd_Portador

order by
  A.Nm_Emitente

-- ===== TFRMEMITENTE_REPORT.ADODsContato
select
  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,
  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular

from
  Emitente_Contato A

where
  A.Cd_Emitente = :Cd_Emitente

order by
  A.Cd_Emitente, A.Nm_Contato

-- ===== TFRMEMITENTE_REPRESENTANTE.ADODsDados
select
  EL.Cd_Emitente, EL.Cd_Laboratorio, L.Nm_Laboratorio, EL.Id_Laboratorio

from
  Emitente_Laboratorio EL

inner join
  Laboratorio l
on
  L.Cd_Laboratorio = EL.Cd_Laboratorio

where
  EL.Cd_Emitente = :Cd_Emitente

-- ===== TFRMEMITENTE_REPRESENTANTE_ITEM.ADODsCheck
select
  EL.Id_Laboratorio

from
  Emitente_Laboratorio EL

where
  EL.Cd_Emitente = :Cd_Emitente and
  EL.Cd_Laboratorio = :Cd_Laboratorio

-- ===== TFRMEMITENTE_SUBGRUPO.ADODsDados
select
  cd_subgrupo, nm_subgrupo, Cd_Tabela

from
  emitente_subgrupo

where
  cd_subgrupo = :Cd_SubGrupo

-- ===== TFRMEMITENTE_SUBGRUPO.ADODsNavegar
-- First
select top 1
  cd_subgrupo

from
  aplicacao_subgrupo

order by
  cd_subgrupo

-- ===== TFRMEMITENTE_SUBGRUPO.ADODsReport
select
  cd_subgrupo, nm_subgrupo, Cd_Tabela

from
  emitente_subgrupo

order by
  nm_subgrupo

-- ===== TFRMEMITENTE_SUBGRUPO_FIND.ADODsFind
select
  cd_subgrupo, nm_subgrupo

from
  emitente_subgrupo

where
  nm_subgrupo like :find

order by
  nm_subgrupo

-- ===== TFRMEMITENTE_TERCEIROS.ADODsDados
----- Verifica se a tabela temporaria existe
if Object_ID( 'TempDB..#estoque_proter' ) is not null
  truncate table #estoque_proter

else
  create table #estoque_proter
    (
    cd_produto int,
    qt_envio numeric( 12, 3 ),
    qt_vendido numeric( 12, 3 ),
    qt_devolvido numeric( 12, 3 )
    );

-- Mercadorias enviadas
insert into #Estoque_ProTer( Cd_Produto, Qt_Envio )
select
  SI.Cd_Produto, sum( SI.Qt_Estoque ) as Qt_Envio

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP      = S.Cd_CFOP and
  CF.Fl_Terceiros = '1'

inner join
  Saida_Item SI
on
  SI.Cd_Filial = S.Cd_Filial and
  SI.Nr_Saida  = S.Nr_Saida

where
  S.Cd_Filial   = 1 and
  S.Cd_Emitente = 1 and
  S.St_Saida  = '2'

group by
  SI.Cd_Produto;

-- Devolvido
insert into #Estoque_ProTer( Cd_Produto, Qt_Devolvido )
select
  EI.Cd_Produto, sum( EI.Qt_Estoque ) as Qt_Envio

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP      = E.Cd_CFOP and
  CF.Fl_Terceiros = '1'

inner join
  Entrada_Item EI
on
  EI.Cd_Filial  = E.Cd_Filial and
  EI.Nr_Entrada = E.Nr_Entrada

where
  E.Cd_Filial   = 1 and
  E.Cd_Emitente = 1

group by
  EI.Cd_Produto;

-- Mercadorias Vendidas
insert into #Estoque_ProTer( Cd_Produto, Qt_Vendido )
select
  OI.Cd_Produto, sum( OI.Qt_Estoque ) as Qt_Vendido

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP      = O.Cd_CFOP and
  CF.Fl_Terceiros = '1'

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

where
  O.Cd_Filial    = 1 and
  O.Cd_Emitente  = 1 and
  O.St_Orcamento  = '9'

group by
  OI.Cd_Produto;

-- Cria o Result Set
select
  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante,
  sum( ET.Qt_Envio ) as Qt_Envio,  
  sum( ET.Qt_Vendido ) as Qt_Vendido, 
  sum( ET.Qt_Devolvido ) as  Qt_Devolvido

from
  Emitente_Terceiros T

inner join
  Produto P
on
  P.Cd_Produto = T.Cd_Produto

left join
  #Estoque_ProTer ET
on
  ET.Cd_Produto = T.Cd_Produto

where
  T.Cd_Emitente = 1

group by
  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante

order by
  P.Nm_Produto

-- ===== TFRMEMITENTE_TERCEIROS_ITEM.ADODsCheck
select
  ET.Qt_Item

from
  Emitente_Terceiros ET

where
  ET.Cd_Emitente = :Cd_Emitente and
  ET.Cd_Produto  = :Cd_Produto

-- ===== TFRMENTRADA.ADODsDados
select
  A.Nr_Entrada, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,
  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Entrada,
  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto, 
  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Vl_BaseSubst, A.Vl_Substituicao, 
  A.Vl_Seguro, A.Vl_Despesa, A.Ps_Nota, C.Nr_Pagar, A.Mm_Observacao, 
  A.Cd_Transportador, T.Nm_Transportador, A.Ds_Quantidade, A.Ds_Especie, 
  A.Ds_Marca, A.Mm_Nota, A.Fl_Frete, A.Cd_ModeloFiscal, A.Ps_Liquido,
  A.Vl_Desconto, Coalesce( A.Fl_Emitente, '1' ) as Fl_Emitente, A.Nr_Placa,
  B.Nm_Fantasia, A.Vl_PIS, A.Vl_Cofins, A.Nr_chNFe, A.Nr_CupomFiscal,
  A.Fl_ConFinal, A.finNFe, A.natOp

from
  Entrada A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

left join
  Pagar C
on
  C.Cd_Filial    = A.Cd_Filial and
  C.Nr_Entrada = A.Nr_Entrada

left join
  CFOP D
on
  D.Cd_CFOP = A.Cd_CFOP

left join
  Transportador T
on
  T.Cd_Transportador = A.Cd_Transportador

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Entrada = :Nr_Entrada

-- ===== TFRMENTRADA.ADODsNavegar
-- First
select top 1
  Nr_Entrada

from
  Entrada

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Entrada

-- ===== TFRMENTRADA.ADODsProduto
--------------- Itens da Entrada
select
  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto,
  case
    when A.Cd_Produto is null or ( B.Nm_Produto <> A.Nm_Produto ) then A.Nm_Produto
    else B.Nm_Produto
  end as Nm_Produto, A.Sg_Unidade,
  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, B.Fl_Lote,
  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, PF.Cd_Produto_Emitente,
  dbo.SGRound( ( A.Vl_Unitario -
    case
      when A.Pr_Desconto = 0 then 0
      else A.Vl_Unitario / 100.0 * A.Pr_Desconto
    end ) * A.Qt_Item ) as Vl_Total, A.Pr_Desconto,
  A.Pr_ICMS, A.Vl_ICMS, A.Pr_IPI, A.Vl_IPI, A.Cd_CST,
  A.Cd_CFOP, CF.Ds_CFOP, A.Fl_Inventario,
  A.Pr_Pis, A.Vl_Pis,
  A.Pr_Cofins, A.Vl_Cofins, B.Cd_Barra, B.Cd_Fabricante,
  L.Nm_Laboratorio, A.Pr_MVA, Loc.Ds_Localizacao,

  A.Cd_Tributacao, T.Ds_Tributacao,

  PP.Vl_Venda * IsNull( PU.Nr_Fator, 1.0 ) as Vl_Venda

from
  Entrada_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto  = B.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

left join
  CFOP CF
on
  CF.Cd_CFOP = A.Cd_CFOP

left join
  Laboratorio L
on
  L.Cd_Laboratorio = B.Cd_Laboratorio

left join
  Localizacao Loc
on
  Loc.Cd_Localizacao = B.Cd_Localizacao

left join
  Tributacao T
on
  T.Cd_Tributacao = A.Cd_Tributacao

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = A.Cd_Produto and
  PU.Sg_Unidade = B.Sg_Venda

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = A.Cd_Produto

where
  A.Cd_Filial   = :Cd_Filial and
  A.Nr_Entrada = :Nr_Entrada

order by
  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item

-- ===== TFRMENTRADA.ADODsTributacao
select
  T.Cd_Entrada, TE.Ds_Tributacao as Ds_Entrada,

  Cd_CST =
    case
      when E.Fl_Contribuinte = '1' then T.Cd_CST
      else T.Cd_CST_NC

    end,

  Cd_CFOP =
    case
      when :Sg_Filial = C.Sg_Estado then T.Cd_CFOPDentro
      else T.Cd_CFOPFora

    end

from
  Produto P

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  Tributacao TE
on
  TE.Cd_Tributacao = T.Cd_Entrada

inner join
  Emitente E
on 
  E.Cd_Emitente = :Cd_Emitente 

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco 

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMENTRADA.ADODsSaida
select
  A.Nr_Saida, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,
  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Saida,
  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto,
  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Ps_Nota, A.Mm_Observacao,
  B.Fl_Contribuinte, C.Sg_Estado, A.Vl_BaseSubst, A.Vl_Substituicao,
  A.Vl_Seguro, A.Vl_Despesa, A.Cd_Transportador, T.Nm_Transportador,
  A.Ds_Quantidade, A.Ds_Especie, A.Ds_Marca, A.Mm_Nota, A.Fl_Frete,
  A.Cd_ModeloFiscal, A.Ps_Liquido, A.Vl_Desconto, A.Nr_Placa, B.Nm_Fantasia,
  A.refNFe, A.Nr_ECF

from
  Saida A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

left join
  CFOP D
on
  D.Cd_CFOP = A.Cd_CFOP

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = A.Cd_Emitente and
  EE.Nr_Endereco = B.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Transportador T
on
  T.Cd_Transportador = A.Cd_Transportador

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Saida  = :Nr_Saida

-- ===== TFRMENTRADA_ETIQUETA.ADODsEtiqueta
select
  P.Cd_Produto, P.Nm_Produto, P.Nm_Abreviado, P.Cd_Barra, EI.Qt_Item, 
  PP.Vl_Venda * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Venda
  
from
  Entrada E

inner join
  Entrada_Item EI
on
  EI.Cd_Filial  = E.Cd_Filial and
  EI.Nr_Entrada = E.Nr_Entrada
  
inner join
  Produto P
on
  P.Cd_Produto = EI.Cd_Produto
  
inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto
  
inner join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda
  
where
  E.Cd_Filial  = :Cd_Filial and
  E.Nr_Entrada = :Nr_Entrada
  
order by
  EI.Nr_Item

-- ===== TFRMENTRADA_FIND.ADODsFind
select top 50
  A.Nr_Entrada, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Dt_Lancamento,
  A.Vl_Nota, A.Nr_Fatura

from
  Entrada A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

where
  A.Cd_Filial  =:Cd_Filial and
  A.Nr_Entrada >= :Nr_Entrada

order by
  A.Nr_Entrada

-- ===== TFRMENTRADA_IMPORTA.ADODsProduto
/*
create table ##TblEntrada
  (
  nr_item smallint,
  cd_produto int,
  cd_produto_emitente varchar( 20 ),
  nm_produto varchar( 120 ),
  qt_compra numeric( 12, 3 ),
  sg_compra char( 2 ),
  qt_pedido numeric( 12, 3 ),
  vl_unitario numeric( 12, 3 ),
  sg_entrada char( 2 ),
  qt_entrada numeric( 12, 3 ),
  qt_recebida numeric( 12, 3 )
  )
*/

select
  TE.Nr_Item, TE.Cd_Produto, TE.Cd_Produto_Emitente, TE.Qt_Compra, TE.Qt_Pedido,
  TE.Vl_Unitario, TE.Qt_Entrada, TE.Nm_Produto, L.Nm_Laboratorio,
  P.Sg_Estoque, PU.Nr_Fator, TE.Sg_Compra, TE.Sg_Entrada,
  TE.Qt_Recebida

from
  EntradaIMP TE

left join
  Produto P
on
  P.Cd_Produto = TE.Cd_Produto

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = TE.Sg_Entrada

where
  Nr_SPID = @@SPID

order by
  TE.Nr_Item

-- ===== TFRMENTRADA_IMPORTA.ADODsCheck
select
  PF.Cd_Produto, P.Nm_Produto, CI.Nr_Item, CI.Qt_Item

from
  Produto_Fornecedor PF

left join
  Produto P
on
  P.Cd_Produto = PF.Cd_Produto

left join
  Compra_Item CI
on
  CI.Cd_Filial  = :Cd_Filial and
  CI.Nr_Compra  = :Nr_Compra and
  CI.Cd_Produto = PF.Cd_Produto

where
  PF.Cd_Emitente         = :Cd_Emitente and
  PF.Cd_Produto_Emitente = :Cd_Produto_Emitente

-- ===== TFRMENTRADA_IMPORTA.ADODsParcela
select
  Nr_Duplicata, Dt_Vencimento, Vl_Duplicata

from
  ##TblPagar

order by
  Nr_Duplicata

-- ===== TFRMENTRADA_IMPORTA.ADODsPagar
select
  max( A.Nr_Pagar ) + 1 as Nr_Pagar

from
  Pagar A

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMENTRADA_IMPORTA.ADODsRestante
select top 1
  Cd_Filial

from
  Compra_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Compra = :Nr_Compra and
  Qt_Item   > Qt_Recebida

-- ===== TFRMENTRADA_IMPORTA.ADODsImporta
-------------------- Incluir itens do pedido de compra
insert into EntradaIMP( Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,
   Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,
   Sg_Compra, Sg_Entrada )

select
  CI.Nr_Item, CI.Cd_Produto, P.Nm_Produto, PF.Cd_Produto_Emitente,
  CI.Qt_Item as Qt_Compra, CI.Qt_Item as Qt_Pedido, CI.Vl_Unitario,
  CI.Qt_Item - CI.Qt_Recebida as Qt_Entrada, CI.Qt_Recebida,
  CI.Sg_Unidade, CI.Sg_Unidade

from
  Compra_Item CI

inner join
  Produto P
on
  P.Cd_Produto = CI.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto  = CI.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  CI.Cd_Filial = :Cd_Filial and
  CI.Nr_Compra = :Nr_Compra

select
  Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,
  Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,
  Sg_Compra, Sg_Entrada 

from
  EntradaIMP

where
  Nr_SPID = @@SPID

-- ===== TFRMENTRADA_IMPORTA.ADODsCreateTable
---------------- Cria tabela temporaria
if Object_ID( 'EntradaIMP' ) is not null
  delete from EntradaIMP where Nr_SPID = @@SPID

else
  create table EntradaIMP
    (
    nr_item smallint,
    cd_produto int,
    cd_produto_emitente varchar( 20 ),
    nm_produto varchar( 120 ),
    qt_compra numeric( 12, 3 ),
    sg_compra char( 2 ),
    qt_pedido numeric( 12, 3 ),
    vl_unitario numeric( 12, 3 ),
    sg_entrada char( 2 ),
    qt_entrada numeric( 12, 3 ),
    qt_recebida numeric( 12, 3 ),
    Nr_SPID int default @@SPID
    )

select
  Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,
  Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,
  Sg_Compra, Sg_Entrada 

from
  EntradaIMP

-- ===== TFRMENTRADA_ITEM.ADODsPrimary
select
  max( Nr_Item ) as NewItem

from
  Entrada_Item

where
  Cd_Filial  = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMENTRADA_ITEM.ADODsFornecedor
select
  Cd_Produto

from
  Produto_Fornecedor

where
  Cd_Emitente         = :Cd_Emitente and
  Cd_Produto_Emitente = :Cd_Produto_Emitente

-- ===== TFRMENTRADA_ITEM_SELECT.ADODsPrimary
select
  max( Nr_Item ) as NewItem

from
  Entrada_Item

where
  Cd_Filial  = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMENTRADA_ITEM_SELECT.ADODsFind
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque

from
  Produto P

-- ===== TFRMENTRADA_NFE.ADODsEmitente
select top 1
  A.Cd_Emitente + 1 as Cd_Emitente

from
  Emitente A

where
  not exists( 
  select
    B.Cd_Emitente

  from
    Emitente  B

  where
    B.Cd_Emitente = A.Cd_Emitente + 1
  )

order by
  A.Cd_Emitente

-- ===== TFRMENTRADA_NFE.ADODsCidade
select
  Cd_Cidade

from
  Cidade
where
  Cd_IBGE = :Cd_IBGE

-- ===== TFRMENTRADA_NFE.ADODsNFeItem
select distinct
  E.Nr_Item, E.Qt_Item, E.Vl_Unitario, E.Pr_Desconto,
  E.Pr_Icms, E.Vl_Icms, E.Pr_Ipi, E.Vl_Ipi, E.Pr_Pis, E.Vl_Pis, E.Pr_Cofins,
  E.Vl_Cofins, E.Cd_Produto_NFe, E.Nm_Produto_NFe, E.Sg_Unidade_NFe, E.Cd_Barra,
  E.Cd_NCM, E.Cd_CST, E.Cd_CFOP, CF.Ds_CFOP,
  Cd_Produto = Coalesce( E.Cd_Produto, PFor.Cd_Produto, PFab.Cd_Produto ),
  Nm_Produto = Coalesce( PE.Nm_Produto, PFor.Nm_Produto, PFab.Nm_Produto ),
  E.Sg_Unidade,  E.Qt_Estoque,
  Fl_Inventario = Coalesce( E.Fl_Inventario, CF.Fl_Inventario ), 
  E.Dt_Fabricacao, E.Dt_Validade, E.Nr_Lote, E.Pr_MVA,

  E.Cd_Tributacao, T.Ds_Tributacao, E.Cd_CEST

from
  EntradaNFeItem E

--------------- Caso ja tenha informado o produto na edição
left join
  Produto PE
on
  PE.Cd_Produto = E.Cd_Produto

--------------- Tenta pela associação pelo codigo em tabela auxiliar
left join
  Produto_Fornecedor PF
on
  PF.Cd_Emitente         = :Cd_Emitente and
  PF.Cd_Produto_Emitente = E.Cd_Produto_NFe

left join
  Produto PFor
on
  PFor.Cd_Produto = PF.Cd_Produto

--------------- Tenta pelo codigo do fabricante na table Produto
left join
  Produto PFab
on
  PFab.Cd_Fabricante = E.Cd_Produto_NFe
  
--------------- Testa a unidade do produto
left join
  Produto_Unidade PU
on
  PU.Cd_Produto = Coalesce( E.Cd_Produto, PFor.Cd_Produto, PFab.Cd_Produto ) and
  PU.Sg_Unidade = E.Sg_Unidade_NFe

left join
  CFOP CF
on
  CF.Cd_CFOP = E.Cd_CFOP

left join
  Tributacao T
on
  T.Cd_Tributacao = E.Cd_Tributacao

where
  Nr_SPID = @@SPID

order by
  Nr_Item

-- ===== TFRMENTRADA_NFEITEM_PRODUTO.ADODsProduto
-- ------------ Sequencia
select top 1
  max( A.Nr_Sequencia ) as Cd_Produto

from
  Produto A

-- ===== TFRMENTRADA_PRECO.ADODsProduto
select
  Cd_Produto, Nm_Produto, Pr_Lucro, Pr_Icms, Pr_Ipi, Pr_Comissao, Vl_Custo,
  Vl_Oldcusto, Fl_Atualiza

from
  #Entrada_Preco

order by
  Cd_Produto

-- ===== TFRMENTRADA_PRECO.ADODsCheck
select
  Cd_Produto

from
  Produto_Preco

where
  Cd_Tabela = :Cd_Tabela and
  Cd_Produto = :Cd_Produto

-- ===== TFRMENTRADA_PRODRURAL.ADOCmdRural
update
  Entrada

set
  Cd_Serie         = :Cd_Serie,
  Nr_Fatura        = :Nr_Fatura,
  Fl_ProdutorRural = '1',
  Mm_Nota          = :Mm_Nota,
  Vl_Produto       = :Vl_Produto,
  Vl_Nota          = :Vl_Nota

where
  Cd_Filial  = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMENTRADA_REPORT.ADODsReport
select
  E.Cd_Filial, E.Nr_Entrada, E.Dt_Emissao, E.St_Entrada, E.Cd_Emitente,
  F.Nm_Emitente, E.Vl_Produto, E.Vl_Nota, E.Mm_Observacao, E.Dt_Lancamento,
  E.Cd_Serie, E.Nr_Fatura

from
  Entrada E

left join
  Emitente F /* Fornecedor */
on
  F.Cd_Emitente = E.Cd_Emitente

where
  E.Cd_Filial   = :Cd_Filial and
  E.Dt_Emissao >= :Dt_Start and
  E.Dt_Emissao  < :Dt_End
  /* E.Cd_Emitente */
  /* E.St_Compra */

order by
  E.Nr_Entrada

-- ===== TFRMENTRADA_REPORT.ADODsProduto
select
  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade,
  B.Sg_Estoque, A.Qt_Item, A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente,
  case 
    when A.Cd_Produto is null then A.Nm_Produto 
    else B.NM_Produto 
  end as Nm_Produto, 
  A.Vl_Unitario * A.Qt_Item as Vl_Total, PF.Cd_Emitente

from
  Entrada_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto = A.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Entrada = :Nr_Entrada

order by
  A.Nr_Item

-- ===== TFRMENTRADA_REPORT.ADODsProdSintetico
select
  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,
  sum( EI.Qt_Estoque ) as Qt_Estoque,
  sum( EI.Qt_Item * EI.Vl_Unitario ) as Vl_Total

from
  Entrada E

inner join
  Entrada_Item EI
on
  EI.Cd_Filial  = E.Cd_Filial and
  EI.Nr_Entrada = E.Nr_Entrada

inner join
  Produto P
on
  P.Cd_Produto = EI.Cd_Produto
  /* Cd_Grupo */

where
  E.Cd_Filial      = :Cd_Filial and
  E.Dt_Lancamento >= :Dt_Start and
  E.Dt_Lancamento  < :Dt_End
  /* E.Cd_Emitente */
  /* E.Cd_CFOP */
  /* E.St_Entrada */

group by
  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque

order by
  EI.Cd_Produto

-- ===== TFRMESTACAO.ADODsDados
select
  Nm_Estacao, Ds_Estacao, Tp_IFiscal, Nr_PortaIFiscal, Fl_Promocional,
  Fl_Tela, Mm_Promocional, Ds_Path_PRN, Nr_Serie, Nr_Ordem,
  Cd_ModeloFiscal, Ds_PrnNota, Ds_PrnDuplicata, Ds_PrnBoleto, 
  Ds_PrnDanfe, Ds_PrnNFe, Ds_PrnOEstoque, Ds_PrnOServico, Ds_PrnOrcamento,
  Fl_PrnNota, Fl_PrnDuplicata, Fl_PrnBoleto, Fl_PrnDanfe, Fl_PrnNFe,
  Fl_PrnOEstoque, Fl_PrnOServico, Fl_PrnOrcamento, Ds_PrnNFCe,
  Fl_PrnNFCe, Ds_PrnEtiqueta, Fl_PrnEtiqueta

from
  Estacao

where
  Nm_Estacao = :Nm_Estacao

-- ===== TFRMESTACAO.ADODsNavegar
-- First
select top 1
  Nm_Estacao

from
  Estacao

order by
  Nm_Estacao

-- ===== TFRMESTACAO.ADODsReport
select
  Nm_Estacao, Ds_Estacao, Tp_IFiscal, Nr_PortaIFiscal

from
  Estacao

order by
  Nm_Estacao

-- ===== TFRMESTACAO.ADODsAliquota
select
  Nm_Estacao, Cd_Aliquota, Pr_Aliquota, Tp_Aliquota

from
  Estacao_Aliquota

where
  Nm_Estacao = :Nm_Estacao

order by
  Cd_Aliquota

-- ===== TFRMESTACAO_ALIQUOTA.ADOCmdAliquota
insert into Estacao_Aliquota( Nm_Estacao, Cd_Aliquota, Pr_Aliquota, Tp_Aliquota )
values( :Nm_Estacao, :Cd_Aliquota, :Pr_Aliquota, :Tp_Aliquota )

-- ===== TFRMESTACAO_ALIQUOTA.ADODsAliquota
select
  Cd_Aliquota

from
  Estacao_Aliquota

where
  Nm_Estacao = :Nm_Estacao and
  Cd_Aliquota = :Cd_Aliquota

-- ===== TFRMESTACAO_FIND.ADODsFind
select
  Nm_Estacao, Ds_Estacao, Nr_Serie

from
  Estacao

where
  Nm_Estacao like :find

order by
  Nm_Estacao

-- ===== TFRMESTADO.ADODsDados
select
  E.Sg_Estado, E.Nm_Estado, EA.Pr_Contribuinte, EA.Pr_NaoContrib

from
  Estado E

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem  = :Sg_Origem and
  EA.Sg_Destino = E.Sg_Estado

where
  E.Sg_Estado = :Sg_Estado

-- ===== TFRMESTADO.ADOCmdDados
select EstadoInsert( :Sg_Estado, :Nm_Estado, :Sg_Origem, :Pr_Contribuinte,
   :Pr_NaoContrib );

-- ===== TFRMESTADO.ADODsNavegar
-- First
select top 1
  sg_estado

from
  estado

order by
  sg_estado

-- ===== TFRMESTADO.ADODsReport
select
  E.Sg_Estado, E.Nm_Estado, EA.Pr_Contribuinte, EA.Pr_NaoContrib

from
  Estado E

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem  = E.Sg_Estado

order by
  EA.Sg_Destino, E.Sg_Estado

-- ===== TFRMESTADO_FIND.ADODsFind
select
  E.sg_estado, E.nm_estado, EA.pr_contribuinte, EA.pr_naocontrib

from
  estado E

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem  = :Sg_Origem and
  EA.Sg_Destino = E.Sg_Estado

where
  nm_estado like :find

order by
  nm_estado

-- ===== TFRMESTOQUE_ACERTO.ADODsSelect
select
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,
  ES.Qt_Reserva, ES.Qt_Saldo, ES.Qt_Liquido, L.Nm_Laboratorio

from
  Produto P

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  P.Nm_Produto like :Nm_Produto

order by
  P.Nr_Sequencia

-- ===== TFRMESTOQUE_ACERTO.ADODsSelected
/*if Object_ID( 'TempDB..##AcertoEstoque' ) is null
  create table ##AcertoEstoque
    (
    Nr_ID Int,
    Cd_Produto Int,
    Qt_Saida Numeric( 12, 3 ),
    Qt_Entrada Numeric( 12, 3 )
    )

else
  delete from
    ##AcertoEstoque

  where
    Nr_ID = @@SPID
*/

select
  AE.Cd_Produto, P.Nm_Produto, AE.Qt_Saida, AE.Qt_Entrada, ES.Qt_Liquido,
  P.Nr_Sequencia, P.Sg_Estoque

from
  ##AcertoEstoque AE

inner join
  Produto P
on
  P.Cd_Produto = AE.Cd_Produto

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

order by
  P.Nm_Produto

-- ===== TFRMESTOQUE_ACERTO.ADODsSequencia
------------------------- Sequencia da Entrada
select
  max( A.Nr_Entrada ) + 1 as Nr_Sequencia

from
  Entrada A

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMESTOQUE_MOVIMENTO.ADODsMovimento
select
  A.Nr_Entrada as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,
  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,
  'Ent' as Fl_Movimento

from
  Entrada A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

inner join
  Entrada_Item C
on
  C.Cd_Filial  = A.Cd_Filial and
  C.Nr_Entrada = A.Nr_Entrada and
  C.Cd_Produto = 1

where
  A.Cd_Filial     = 1 and
  A.St_Entrada    = '2'

-- ===== TFRMESTOQUE_VIEW.ADODsUnidade
select
  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade,
  E.Qt_Liquido / PU.Nr_Fator as Qt_Estoque,
  :Vl_Venda * PU.Nr_Fator * PU.Nr_Indice as Vl_Unitario

from
  Estoque_Saldo E

inner join
  Produto_Unidade PU
on
  PU.Cd_Produto = E.Cd_Produto

inner join
  Unidade U
on
  U.Sg_Unidade = PU.Sg_Unidade

where
  E.Cd_Filial  = :Cd_Filial and
  
  E.Cd_Produto = :Cd_Produto

order by
  PU.Sg_Unidade

-- ===== TFRMESTOQUE_VIEW.ADODsEstoque
select
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,
  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,
  sum( ES.Qt_Entrada ) as Qt_Entrada,
  sum( ES.Qt_Saida ) as Qt_Saida,
  sum( ES.Qt_Orcamento ) as Qt_Orcamento,
  sum( ES.Qt_Balcao ) as Qt_Balcao,
  sum( ES.Qt_Reserva ) as Qt_Reserva,
  sum( ES.Qt_Saldo ) as Qt_Saldo,
  sum( ES.Qt_Liquido ) as Qt_Liquido,

  case
    when PP.Vl_Promocao > 0 then PP.Vl_Promocao
    else PP.Vl_Venda
  end as Vl_Venda

from
  Produto P

inner join
  Classe CS
on
  CS.Cd_Classe = P.Cd_Classe

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

where
  P.Nm_Produto like '%'

group by
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,
  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,

  case
    when PP.Vl_Promocao > 0 then PP.Vl_Promocao
    else PP.Vl_Venda
  end

-- ===== TFRMESTOQUE_VIEW.ADODsFilial
select
  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto,
  sum( ES.Qt_Liquido ) as Qt_Liquido
  
from
  Filial F
  
left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = F.Cd_Filial and
  ES.Cd_Produto = :Cd_Produto
  /* Fl_Estoque */
  
where
  F.Cd_Filial <> :Cd_Filial
  
group by
  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto

order by
  F.Cd_Filial

-- ===== TFRMESTOQUE_VIEW_TERCEIROS.ADODsTerceiros
-- Cria tabela temporaria
if Object_ID( 'TempDB..#estoque_terceiros' ) is null
  create table #estoque_terceiros
    (
    cd_emitente int,
    qt_envio numeric( 12, 3 ),
    qt_vendido numeric( 12, 3 ),
    qt_devolvido numeric( 12, 3 )
    )

else
  truncate table #estoque_terceiros;

-- Mercadorias enviadas
insert into #Estoque_Terceiros( Cd_Emitente, Qt_Envio )
select
  S.Cd_Emitente, sum( SI.Qt_Estoque ) as Qt_Envio

from
  Saida_Item SI

inner join
  Saida S
on
  S.Cd_Filial = SI.Cd_Filial and
  S.Nr_Saida  = SI.Nr_Saida and
  S.St_Saida  = '2'

inner join
  CFOP CF
on
  CF.Cd_CFOP      = S.Cd_CFOP and
  CF.Fl_Terceiros = '1'

where
  SI.Cd_Filial  = 1 and
  SI.Cd_Produto = 3
  
group by
  S.Cd_Emitente;

-- Devolvido
insert into #Estoque_Terceiros( Cd_Emitente, Qt_Devolvido )
select
  E.Cd_Emitente, sum( EI.Qt_Estoque ) as Qt_Envio

from
  Entrada_Item EI

inner join
  Entrada E
on
  E.Cd_Filial  = EI.Cd_Filial and
  E.Nr_Entrada = EI.Nr_Entrada and
  E.St_Entrada = '2'

inner join
  CFOP CF
on
  CF.Cd_CFOP      = E.Cd_CFOP and
  CF.Fl_Terceiros = '1'

where
  EI.Cd_Filial  = 1 and
  EI.Cd_Produto = 3
  
group by
  E.Cd_Emitente;

-- Mercadorias Vendidas
insert into #Estoque_Terceiros( Cd_Emitente, Qt_Vendido )
select
  O.Cd_Emitente, sum( OI.Qt_Estoque ) as Qt_Vendido

from
  Orcamento_Item OI

inner join
  Orcamento O
on
  O.Cd_Filial     = OI.Cd_Filial and
  O.Nr_Orcamento  = OI.Nr_Orcamento and
  O.St_Orcamento  = '9'

inner join
  CFOP CF
on
  CF.Cd_CFOP      = O.Cd_CFOP and
  CF.Fl_Terceiros = '1'

where
  OI.Cd_Filial     = 1 and
  OI.Cd_Produto    = 3 and
  OI.Fl_Confirmado = '1'

group by
  O.Cd_Emitente;

select
  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item,
  sum( ET.Qt_Envio ) as Qt_Envio,  
  sum( ET.Qt_Vendido ) as Qt_Vendido, 
  sum( ET.Qt_Devolvido ) as  Qt_Devolvido

from
  #Estoque_Terceiros ET

inner join
  Emitente E
on
  E.Cd_Emitente = ET.Cd_Emitente

left join
  Emitente_Terceiros EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Cd_Produto  = 3

group by
  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item

order by
  E.Nm_Emitente

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntradaOLD
select
  E.Cd_Filial, E.Nr_Entrada, EM.Nr_Documento, E.Dt_Emissao, E.Dt_Lancamento,
  E.Nr_Fatura, E.Cd_Serie, E.Vl_BaseICMS, E.Vl_ICMS,
  E.Vl_Substituicao, E.Vl_IPI, E.Pr_ICMS, E.Vl_Nota, EM.Nr_Insc_Estadual,
  E.Cd_CFOP, E.Cd_ModeloFiscal, E.Fl_Frete, E.Nr_chNFe,

  Vl_Produto = case when E.Vl_Produto = 0 then E.Vl_Nota else E.Vl_Produto end
  
from
  Entrada E
  
inner join
  Emitente EM
on
  EM.Cd_Emitente = E.Cd_Emitente
  
where
  E.Cd_Filial      = :Cd_Filial and
  E.St_Entrada = '2' and
  E.Dt_Lancamento >= :Dt_Start and
  E.Dt_Lancamento  < :Dt_End
  
order by
  E.Nr_Entrada

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntradaItemOLD
select
  EI.Cd_Filial, EI.Nr_Entrada, EI.Nr_Item, EI.Cd_Produto, EI.Sg_Unidade,
  T.Cd_CST, EI.Qt_Item, EI.Vl_Unitario, EI.Pr_Desconto, EI.Pr_IPI, EI.Vl_IPI,
  EI.Pr_ICMS, EI.Vl_ICMS, T.Tp_Tributacao, P.Nm_Produto, P.Cd_ClasFiscal,
  T.Pr_Contrib, P.Pr_IPI as Pr_IPIProduto

from
  Entrada_Item EI

inner join
  Produto P
on
  P.Cd_Produto = EI.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  EI.Cd_Filial  = :Cd_Filial and
  EI.Nr_Entrada = :Nr_Entrada

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsSaidaOLD
-- Orçamentos
select
  '1' as Fl_Origem, O.Cd_Filial, O.Nr_Orcamento, Cast( Null as Int ) as Nr_Saida,
  O.Cd_Serie, O.Nr_Fatura, O.Dt_Saida, O.Vl_Pedido, O.Vl_Desconto, O.Vl_Custo,
  O.Pr_Custo, O.Vl_Produto, O.Vl_BaseICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB,
  O.Pr_ICMS, E.Nr_Documento, C.Sg_Estado, O.Fl_FormaPagto, O.Dt_Fatura,
  O.Cd_CFOP, O.Nr_ECF, O.Vl_Pedido_Frete, O.Pr_Desconto, CF.Tp_CFOP, 
  E.Fl_Contribuinte, '01' as Cd_ModeloFiscal

from
  Orcamento O
  
left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  
left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco
  
left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  CFOP CF
on
  CF.Cd_CFOP = O.Cd_CFOP
  
where
  O.Cd_Filial    = 1 and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= '01/01/2005' and
  O.Dt_Fatura    < '01/01/2006'

union

-- Saídas
select
  '2' as Fl_Origem, S.Cd_Filial, Cast( Null as Int ) as Nr_Orcamento, S.Nr_Saida,
  S.Cd_Serie, S.Nr_Fatura, S.Dt_Emissao, S.Vl_Nota, 0.0 as Vl_Desconto,
  0.0 as Vl_Custo, 0.0 as Pr_Custo, S.Vl_Produto, S.Vl_BaseICMS, S.Vl_ICMS,
  S.Vl_IPI, S.Vl_Substituicao as Vl_STB, S.Pr_ICMS, E.Nr_Documento,
  C.Sg_Estado, '0' as Fl_FormaPagto, S.Dt_Emissao as Dt_Fatura, S.Cd_CFOP,
  Cast( Null as Int ) as Nr_ECF, 0.0 as Vl_Pedido_Frete, 0.0 as Pr_Desconto, CF.Tp_CFOP, 
  E.Fl_Contribuinte, S.Cd_ModeloFiscal

from
  Saida S
  
left join
  Emitente E
on
  E.Cd_Emitente = S.Cd_Emitente
  
left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco
  
left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  CFOP CF
on
  CF.Cd_CFOP = S.Cd_CFOP

where
  S.Cd_Filial   = 1 and
  S.St_Saida    = '2' and
  S.Dt_Emissao >= '01/01/2001' and
  S.Dt_Emissao  < '01/01/2006'
  
order by
  Nr_Fatura

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsSaidaItemOLD
select
  OI.Nr_Item, OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, P.Nm_Produto,
  P.Cd_ClasFiscal, P.Pr_IPI, P.Nm_Abreviado, T.Pr_Contrib, T.Pr_NaoContrib, T.Cd_CST, T.Tp_Tributacao, OI.Cd_Produto
  
from
  Orcamento_Item OI
  
inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto and
  P.Fl_Produto < '3'                  -- Somente produto e serviço
  
inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao
  
where
  OI.Cd_Filial     = :Cd_Filial and
  OI.Nr_Orcamento  = :Nr_Orcamento and
  OI.Fl_Confirmado = '1'

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsOrigem
-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Orçamento - Faturados
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

--------------- Orçamento - Cancelados
union
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '2' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

-------------------- Notas de Saídas - Saida
union
select
  '2' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  S.Cd_Filial   = @Cd_Filial and
  S.Fl_Estoque  = '1' and
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End and
  S.St_Saida   >= '2'             ----- Somente Cancelado/Fechado

-------------------- Notas de Entradas - Entrada
union

select
  '3' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  E.Cd_Filial      = @Cd_Filial and
  E.Fl_Estoque     = '1' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End and
  E.St_Entrada    >= '2'             ----- Somente Cancelado/Fechado

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsProduto
if Object_ID( 'TempDB..#ProdProsoft' ) is not null
  drop table #ProdProsoft

declare 
  @Cd_FIlial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime,
  @Cd_Tabela VarChar( 10 )

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End,
  @Cd_Tabela = :Cd_Tabela

--------------- Produtos Alterados 
select
  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,
  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,
  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, 
  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,
  P.Sg_Estoque + ' - ' + UE.Ds_Unidade as Dp_Estoque,
  P.Sg_Venda + ' - ' + UV.Ds_Unidade as Dp_Venda,
  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,
  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,
  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,
  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,
  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, 
  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,
  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,
  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, 
  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,

  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST

into
  #ProdProsoft

from
  Produto P

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Unidade UE
on
  UE.Sg_Unidade = P.Sg_Estoque

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = @Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

left join
  Produto PB
on
  PB.Cd_Produto = P.Cd_Baixa

where
  P.Dt_Alteracao >= @Dt_Start and
  P.Dt_Alteracao  < @Dt_End

--------------- Produtos em entrada
insert into #ProdProsoft
select
  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,
  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,
  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, 
  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,
  P.Sg_Estoque + ' - ' + UE.Ds_Unidade as Dp_Estoque,
  P.Sg_Venda + ' - ' + UV.Ds_Unidade as Dp_Venda,
  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,
  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,
  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,
  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,
  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, 
  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,
  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,
  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, 
  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,

  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST

from
  Entrada E

inner join
  Entrada_Item EI
on
  EI.Cd_Filial  = E.Cd_Filial and
  EI.Nr_Entrada = E.Nr_Entrada

inner join
  Produto P
on
  P.Cd_Produto = EI.Cd_Produto 

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Unidade UE
on
  UE.Sg_Unidade = P.Sg_Estoque

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = @Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

left join
  Produto PB
on
  PB.Cd_Produto = P.Cd_Baixa

where
  E.Cd_Filial      = @Cd_Filial and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End

--------------- Produtos em Saida
insert into #ProdProsoft
select
  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,
  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,
  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, 
  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,
  P.Sg_Estoque + ' - ' + UE.Ds_Unidade as Dp_Estoque,
  P.Sg_Venda + ' - ' + UV.Ds_Unidade as Dp_Venda,
  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,
  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,
  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,
  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,
  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, 
  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,
  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,
  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, 
  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,

  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST

from
  Saida S

inner join
  Saida_Item SI
on
  SI.Cd_Filial = S.Cd_Filial and
  SI.Nr_Saida  = S.Nr_Saida

inner join
  Produto P
on
  P.Cd_Produto = SI.Cd_Produto 

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Unidade UE
on
  UE.Sg_Unidade = P.Sg_Estoque

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = @Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

left join
  Produto PB
on
  PB.Cd_Produto = P.Cd_Baixa

where
  S.Cd_Filial      = @Cd_Filial and
  S.Dt_Lancamento >= @Dt_Start and
  S.Dt_Lancamento  < @Dt_End

select 
  Cd_Produto, Nm_Produto, Nr_Sequencia, Cd_Grupo, Nm_Grupo,
  Cd_SubGrupo, Nm_SubGrupo, Cd_Classe, Nm_Classe, Im_Classe,
  Cd_Localizacao, Ds_Localizacao, Cd_ClasFiscal, 
  Nr_Prazo, Sg_Estoque, Sg_Venda, Fl_Estrutura, Nm_Abreviado,
  Dp_Estoque,
  Dp_Venda,
  Fl_Ativo, Pr_Gerente, Pr_Vendedor, Qt_Est_Minimo, Fl_Perecivel,
  Qt_Est_Maximo, Dt_Cadastro, Dt_Alteracao, Pr_IPI, Ps_Produto, Im_Produto,
  Cd_Fabricante, Cd_Barra, Tp_Preco, Fl_ImgClasse,
  Fl_Origem, Nr_Reg_Federal, Fl_Psicotropico, Fl_Lote, Fl_Produto,
  Pr_Lucro, Pr_Comissao, Cd_Laboratorio, Nm_Laboratorio, 
  Cd_Tributacao, Ds_Tributacao, Vl_Venda, Vl_Custo, Vl_Promocao,
  Vl_Reposicao, Cd_Arredondamento, Ds_Arredondamento,
  Dt_AltPreco, Nr_MoldEspessura, Nr_MoldPerda, 
  Fl_Moldura, Vl_MVA, Cd_Baixa, Nm_Baixa,

  Pr_Contrib, Cd_CST, Tp_Tributacao, Cd_CEST
  
from 
  #ProdProsoft

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntradaItem
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,
  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,
  Vl_DescItem, Fl_Imposto, Dt_Fatura, Vl_Unitario, Dt_Saida,
  Vl_Substituicao = Vl_ST_Item,

  Vl_IPI_Item,
  Pr_Aliquota =
    ( case when ( Vl_ICMS_Item > 0.0 ) and ( Cd_CST <> '060' ) then Pr_Item_ICMS_Real end ),

  Pr_ICMS =
    ( case when ( Cd_CST <> '060' ) then Pr_ICMS end ),

  Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item, Nr_Item, Pr_Reducao,
  Pr_IPI, Vl_ICMS_Item, Tp_Tributacao,

  Vl_Isento = (
    ( case
        when ( Cd_CST in ( '040', '041', '030', '110', '210', '070', '170', '270', '520' ) ) or ( ( Cd_CST = '010' ) and ( Fl_Origem <> '3' ) and ( Pr_Contrib > 0 ) ) then
          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )

	      else
          0.0
      end
    ) +

    -------------------- No caso de redução a diferença da base de calculo compoe o Isento - 31/10/2012
    ( case
        when ( Cd_CST in ( '020', '520' ) ) then
          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )
        else
          0.0
      end
    ) ),

  Vl_Outras =
    case
      when Cd_CST in ( '020', '000' ) then 0.0
      when
        ( Cd_CST in ( '060', '050', '090', '102', '160', '260', '290', '010', '360' ) or
        ( Vl_ICMS_Item = 0.0 and Cd_CST = '000' ) ) or
        ( Cd_CST = '100' and Vl_ICMS_Item = 0.0 ) or
        ( Cd_CST = '500' and Cd_CFOP in ( '5405', '1403' ) ) or
        ( Cd_CST in ( '101', '040' ) and Cd_CFOP in ( '1102' ) ) then
        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )

    end

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem   = '3' and
  -------------------------------------------------------------- Cd_Produto > 0 and
  St_Nota = 'N' and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '58' )
  ) and
  not Cd_CFOPProduto in ( '5929', '6929' )  

order by
  Nr_Documento, Cd_Serie, Nr_Fatura, Cd_CST

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsTerceiros
select
  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro, E.Dt_Alteracao,
  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,
  E.Cd_Credito, EC.Nm_Emitente as Nm_Credito, E.Fl_Contribuinte, E.Ds_EMail, E.Ds_Site,
  E.Dt_Nascimento, E.Nr_Identidade, E.Nm_Orgao_emissor, E.Dt_Emissao_ID, 
  E.Sg_Estado_Emissor, E.Nr_Endereco, E.Nr_EndCobranca, E.Fl_Pagamento, E.Nr_Pagamento,
  E.Nr_Insc_Municipal, E.Dt_Atividade, E.Ds_EMailCob, E.Pr_Desconto, E.Ds_EMailNFe,

  EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,
  C.Nm_Cidade, C.Cd_IBGE, C.Cd_Pais, C.Sg_Estado,
 EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,
  EE.Ds_Numero

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

left join
  Estado ET
on
  ET.Sg_Estado = E.Sg_Estado_Emissor

where
  E.Dt_Alteracao >= :Dt_Start and
  E.Dt_Alteracao   < :Dt_End

order by
  E.Nm_Emitente

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsSaida
select
  Fl_Origem, Vl_STB, Cd_CST,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,

  Pr_ICMS =
    ( case
        when Cd_CST = '060' then 0.0
        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    ),

  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) as Vl_Nota,
  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,
  sum( Vl_ICMS_Item ) as Vl_ICMS,

  Vl_ST =
    sum(
      (

      case
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '060' ) ) then 0.0
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '010', '110', '210', '070', '170', '270' ) ) then Vl_ST_Item
        else Vl_ST_Item
      end

/* Vl_ST_Item */ )
      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),

  Vl_NaoTributado =
    sum(
      case
        -- when Vl_ICMS = 0.0 and ( Fl_Origem = '3' ) then Vl_Total_Item
        when Tp_Tributacao = '3' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )

      end ),

  sum( Vl_IPI_Item ) as Vl_IPI,

  Vl_Outras = sum(
    case when 
               ( Cd_CST in ( '060', '050', '090', '102' ) or 
               ( Vl_ICMS_Item = 0.0 and Cd_CST = '000' ) ) or
               ( Cd_CST = '100' and Vl_ICMS_Item = 0.0 ) or 
               ( Cd_CST = '500' and Cd_CFOP in ( '5405', '1403' ) ) or
               ( Cd_CST in ( '101', '040' ) and Cd_CFOP in ( '1102' ) ) then
     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) 

    end ),

  Vl_Isento = sum(
    ( case when ( Cd_CST in ( '040', '041', '030', '110', '210', '070', '170', '270' ) ) or ( ( Cd_CST = '010' ) and ( Fl_Origem <> '3' ) and ( Pr_Contrib > 0 ) ) then
                ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) 
	  else 0.0 end ) +

    -------------------- No caso de redução a diferença da base de calculo compoe o Isento - 31/10/2012
    ( case when ( Cd_CST in ( '020' ) ) then
     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item ) 
    else 0.0 end )
    ),

  Vl_Desconto = sum( Vl_DescItem )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem    <= '2' and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '57' )
  )

group by
  Fl_Origem, Vl_STB, Cd_CST,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,

    ( case
        when Cd_CST = '060' then 0.0
        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    )

order by
   Fl_Origem, Cd_Serie, Nr_Fatura, Cd_CST

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsSaidaItem
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,
  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,
  Vl_DescItem, Fl_Imposto, Dt_Fatura, Vl_Unitario,
  Vl_Substituicao = Vl_ST_Item,

  Vl_IPI_Item,
  Pr_Aliquota =
    ( case when ( Vl_ICMS_Item > 0.0 ) and ( Cd_CST <> '060' ) then Pr_Item_ICMS_Real end ),

  Pr_ICMS = 
    ( case when ( Cd_CST <> '060' ) then Pr_ICMS end ),

  Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item, Nr_Item, Pr_Reducao,
  Pr_IPI, Vl_ICMS_Item, Tp_Tributacao,

  Vl_Isento = (
    ( case when ( Cd_CST in ( '040', '041', '030', '110', '210', '070', '170', '270' ) ) or ( ( Cd_CST = '010' ) and ( Fl_Origem <> '3' ) and ( Pr_Contrib > 0 ) ) then
                ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) 
	  else 0.0 end ) +

    -------------------- No caso de redução a diferença da base de calculo compoe o Isento - 31/10/2012
    ( case when ( Cd_CST in ( '020' ) ) then
     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item ) 
    else 0.0 end )
    ),

  Vl_Outras = 
    case 
      when Cd_CST = '020' then 0.0
      when 
        ( Cd_CST in ( '060', '050', '090', '102', '160' ) or 
        ( Vl_ICMS_Item = 0.0 and Cd_CST = '000' ) ) or
        ( Cd_CST = '100' and Vl_ICMS_Item = 0.0 ) or 
        ( Cd_CST = '500' and Cd_CFOP in ( '5405', '1403' ) ) or
        ( Cd_CST in ( '101', '040' ) and Cd_CFOP in ( '1102' ) ) then
        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) 

    end

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem   <= '2' and
  Cd_Produto > 0 and
  St_Nota = 'N' and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '57' )
  ) and
  not Cd_CFOPProduto in ( '5929', '6929' )  

order by
  Cd_Serie, Nr_Fatura, Cd_CST

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsNrChNFe
select
  Nr_chNFe

from
  NFe N

where
  N.Cd_Filial = :Cd_Filial and
  N.Fl_Origem = :Fl_Origem and
  N.Nr_Origem = :Nr_Origem and
  N.St_NFe     > '1'

order by
  Id_Origem desc

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntrada
select
  Fl_Origem, Vl_STB, Cd_CST, Fl_Frete,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,

  Pr_ICMS =
    ( case
        when Cd_CST = '060' then 0.0
        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    ),

  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) as Vl_Nota,
  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,
  sum( Vl_ICMS_Item ) as Vl_ICMS,

  Vl_ST =
    sum(
      (
      case
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '060' ) ) then 0.0
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '010', '110', '210', '070', '170', '270', '160' ) ) then Vl_ST_Item
        else Vl_ST_Item
      end

/* Vl_ST_Item */ )
      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),

  Vl_NaoTributado =
    sum(
      case
        -- when Vl_ICMS = 0.0 and ( Fl_Origem = '3' ) then Vl_Total_Item
        when Tp_Tributacao = '3' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )

      end ),

  sum( Vl_IPI_Item ) as Vl_IPI,

  Vl_Outras = sum(
    case
      when Cd_CST in ( '020', '000' ) then 0.0
      when ( Cd_CST in ( '060', '050', '090', '102', '160', '260', '290', '010', '360' ) or
           ( Vl_ICMS_Item = 0.0 and Cd_CST = '000' ) ) or
           ( Cd_CST = '100' and Vl_ICMS_Item = 0.0 ) or
           ( Cd_CST = '500' and Cd_CFOP in ( '5405', '1403' ) ) or
           ( Cd_CST in ( '101', '040' ) and Cd_CFOP in ( '1102' ) ) then
        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )

    end ),

  Vl_Isento = sum(
    ( case
	      when ( Cd_CST in ( '040', '041', '030', '110', '210', '070', '170', '270' ) ) or ( ( Cd_CST = '010' ) and ( Fl_Origem <> '3' ) and ( Pr_Contrib > 0 ) ) then
          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )
	    else
	      0.0
	    end ) +

    -------------------- No caso de redução a diferença da base de calculo compoe o Isento - 31/10/2012
    ( case
        when ( Cd_CST in ( '020' ) ) then
         ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )
      else
	       0.0
	    end )
    ),

  Vl_Desconto = sum( Vl_DescItem ),

  Dt_Saida

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem    = '3' and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '58' )
  )

group by
  Fl_Origem, Vl_STB, Cd_CST, Fl_Frete,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,

    ( case
        when Cd_CST = '060' then 0.0
        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    ),

  Dt_Saida

order by
   Fl_Origem, Cd_Serie, Nr_Fatura, Cd_CST

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntEmissao
select
  Dt_Emissao

from
  Entrada

where
  Cd_Filial = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMEXPORTA_ENTRADASAIDA.ADODsEntradaChave
select
  Nr_chNFe

from
  Entrada

where
  Cd_Filial = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMFILIAL.ADODsDados
select
  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,
  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,
  F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular, F.Ds_Email, F.Ds_Site,
  F.Im_Carimbo, F.Im_Logo, F.Cd_Tabela, F.Fl_Estoque, F.Cd_Portador,
  P.Nm_Portador, F.Mm_Rodape, F.Nr_Licenca,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  F.Cd_Historico_Balcao, HB.Ds_Historico as Ds_Historico_Balcao,
  F.Cd_Grupo_Emitente, EG.Nm_Grupo as Nm_Grupo_Emitente,
  F.Cd_SubGrupo_Emitente, ESG.Nm_SubGrupo as Nm_SubGrupo_Emitente,
  F.Nr_Compra, F.Cd_CFOP_In, CFIn.Ds_CFOP as Ds_CFOP_In,
  F.Cd_CFOP_Out, CFOut.Ds_CFOP as Ds_CFOP_Out, F.Im_DupMercantil,
  F.Fl_Simples, F.Mm_Simples, F.Im_Cabecalho, F.Pr_Margem,
  F.Nm_Smtp_EM, F.Nm_Usuario_EM, F.Sh_Usuario_EM, F.Nr_Porta_EM,
  F.Ds_Titulo_EM, F.Mm_Mensagem_EM, F.Fl_Figura, F.Fl_TamFigura, 
  F.Fl_Detalhe, F.Fl_MeiaPagina, F.Fl_Transportador, F.Fl_EndCobranca, 
  F.Fl_EndEntrega, F.Fl_Margem, F.Fl_RemoveLinhas, F.Fl_Logo, F.Fl_Medida,
  F.Nr_Area_Decimal, F.Qt_Area_Minima, F.Vl_Dolar, F.Ds_Orcamento,
  F.Ds_Custo, F.Fl_Representante, F.Fl_PrazoEntrega, F.Fl_SomaST,
  F.Fl_Formulario, F.Fl_Conjunto, F.Fl_NFe,
  F.Cd_CST_Pis, F.Pr_PIS, F.Cd_CST_Cofins, F.Pr_Cofins,
  F.Ds_Numero, F.Fl_ComissaoJuncao, F.Nr_PrazoEntrega, 
  F.Fl_EtiquetaProducao, F.Fl_Regime, F.Nr_Duplicata,
  F.Nr_ECF_Decimal, F.Fl_1ProjPagina, F.Fl_Frete, 
  F.Cd_PortadorCartao, PC.Nm_Portador as Nm_PortadorCartao,
  F.Cd_HistoricoCartao, HC.Ds_Historico as Ds_HistoricoCartao,
  F.Pr_Simples,

  F.Nm_PAF_Server, F.Nm_PAF_Usuario, F.Ds_PAF_Senha, F.Nm_PAF_Banco, F.Nr_PAF_Porta, 
  F.Fl_PAF_Cliente, F.Fl_PAF_Produto, F.Fl_Intervalo, F.Fl_AnalisaCredito, F.Fl_Criptografia,
  F.Fl_ImpTotalAmbiente, F.Nr_CorFundo,

  F.Cd_PortadorDebito, PD.Nm_Portador as Nm_PortadorDebito,
  F.Cd_PortadorPIX, PP.Nm_Portador as Nm_PortadorPIX,

  F.Cd_HistoricoDebito, HD.Ds_Historico as Ds_HistoricoDebito,
  F.Cd_HistoricoPIX, HP.Ds_Historico as Ds_HistoricoPIX

from
  Filial F

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

left join
  Portador P
on
  P.Cd_Portador = F.Cd_Portador

--------------- Incluido em 05/11/2012
left join
  Portador PC
on
  PC.Cd_Portador = F.Cd_PortadorCartao

--------------- Incluido em 03/09/2024
left join
  Portador PD
on
  PD.Cd_Portador = F.Cd_PortadorDebito

left join
  Portador PP
on
  PP.Cd_Portador = F.Cd_PortadorPIX

left join
  Historico HB
on
  HB.Cd_Historico = F.Cd_Historico_Balcao

left join
  Historico HC
on
  HC.Cd_Historico = F.Cd_HistoricoCartao

left join
  Historico HD
on
  HD.Cd_Historico = F.Cd_HistoricoDebito

left join
  Historico HP
on
  HP.Cd_Historico = F.Cd_HistoricoPIX

left join
  Emitente_Grupo EG
on
  EG.Cd_Grupo = F.Cd_Grupo_Emitente

left join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = F.Cd_SubGrupo_Emitente

left join
  CFOP CFIn
on
  CFIn.Cd_CFOP = F.Cd_CFOP_In

left join
  CFOP CFOut
on
  CFOut.Cd_CFOP = F.Cd_CFOP_Out

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMFILIAL.ADODsNavegar
-- First
select top 1
  Cd_Filial

from
  Filial

order by
  Cd_Filial

-- ===== TFRMFILIAL.ADODsReport
select
  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,
  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,
  F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular, F.Ds_Email, F.Ds_Site, 
  F.Cd_Tabela, F.Nr_Licenca, F.Cd_Grupo_Emitente, EG.Nm_Grupo,
  F.Cd_SubGrupo_Emitente, ESG.Nm_SubGrupo

from
  Filial F

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

left join
  Emitente_Grupo EG
on
  EG.Cd_Grupo = F.Cd_Grupo_Emitente

left join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = F.Cd_SubGrupo_Emitente

order by
  Cd_Filial

-- ===== TFRMFILIAL_FIND.ADODsFind
select
  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Filial F

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

where
  F.Nm_Filial like :find

order by
  F.Nm_Filial

-- ===== TFRMFILIAL_RANKING.ADODsRanking
select /* Limit */
  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado,
  sum( Vl_Orcamento ) as Vl_Orcamento,
  count( * ) as Nr_Orcamentos

from
  Usuario_Filial UF

inner join
  Filial F
on
  F.Cd_Filial = UF.Cd_Filial

inner join
  Orcamento_Total O
on
  O.Cd_Filial    = F.Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */

where
  UF.Cd_Usuario = :Cd_Usuario

group by
  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado

order by
  4 desc

-- ===== TFRMFILIAL_SELECT.ADODsSelect
select
  F.Cd_Filial, F.Nm_Abreviado, F.Nm_Contato, F.Nr_Telefone,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Usuario_Filial UF

inner join
  Filial F
on
  F.Cd_Filial = UF.Cd_Filial

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

where
  UF.Cd_Usuario = :Cd_Usuario

order by
  UF.Cd_Filial

-- ===== TFRMFILIAL_VENDEDOR_REPORT.ADODsReport
select
  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario,
  Fu.Pr_Comissao,
  sum( O.Vl_Orcamento ) as Vl_Orcamento,
  count( * ) as Nr_Orcamentos

from
  Usuario_Filial UF

inner join
  Filial F
on
  F.Cd_Filial = UF.Cd_Filial

inner join
  Orcamento_Total O
on
  O.Cd_Filial    = F.Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

inner join
  Funcionario Fu
on
  Fu.Cd_Funcionario = O.Cd_Funcionario

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */

where
  UF.Cd_Usuario = :Cd_Usuario

group by
  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario, Fu.Pr_Comissao

order by
  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Nm_Funcionario, O.Cd_Funcionario

-- ===== TFRMFOTO.ADODsDados
select
  F.Cd_Foto, F.Ds_Foto, F.Im_Foto, F.Cd_Grupo, FG.Nm_Grupo

from
  Foto F

inner join
  Foto_Grupo FG
on
  FG.Cd_Grupo = F.Cd_Grupo

where
  F.Cd_Foto = :Cd_Foto

-- ===== TFRMFOTO.ADODsReport
select
  F.Cd_Foto, F.Ds_Foto, F.Im_Foto, 
  Cast( F.Cd_Grupo as VarChar( 5 ) ) + ' - ' + FG.Nm_Grupo as Dp_Grupo

from
  Foto F

inner join
  Foto_Grupo FG
on
  FG.Cd_Grupo = F.Cd_Grupo

order by
  F.Cd_Grupo, F.Ds_Foto

-- ===== TFRMFOTO_FIND.ADODsFind
select
  Cd_Foto, Ds_Foto

from
  Foto

where
  Ds_Foto like :find

order by
  Ds_Foto

-- ===== TFRMFOTO_GRUPO.ADODsDados
select
  cd_grupo, nm_grupo

from
  foto_grupo

where
  cd_grupo = :Cd_Grupo

-- ===== TFRMFOTO_GRUPO.ADODsReport
select
  cd_grupo, nm_grupo

from
  foto_grupo

order by
  nm_grupo

-- ===== TFRMFOTO_GRUPO_FIND.ADODsFind
select
  cd_grupo, nm_grupo

from
  foto_grupo

where
  nm_grupo like :find

order by
  nm_grupo

-- ===== TFRMFUNCIONARIO.ADODsDados
select
  F.Cd_Funcionario, F.Nm_Funcionario, F.Nr_Documento,
  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,
  F.Nr_Telefone, F.Nr_Celular, F.Ds_Email, F.Ds_Setor, F.Ds_Cargo, F.Im_Foto,
  F.Dt_Nascimento, F.Dt_Admissao, F.Ds_Tipo_Sanguineo, F.Nr_Identidade,
  F.Nm_Orgao_Emissor, F.Sg_Estado_Emissor, F.Nr_CTPS, F.Nr_Titulo_Eleitor,
  F.Nr_PIS, F.Nr_Habilitacao, F.Nr_Reservista, F.Vl_Salario_Ini,
  F.Vl_Salario_Atual, F.Mm_Observacao, F.Pr_Comissao, F.Im_Assinatura,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  F.Sg_Estado_Emissor + ' - ' + E.Nm_Estado as Dp_Estado_Emissor,
  F.Cd_Emitente, EM.Nm_Emitente

from
  Funcionario F

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

left join
  Estado E
on
  E.Sg_Estado = F.Sg_Estado_Emissor

left join
  Emitente EM
on
  EM.Cd_Emitente = F.Cd_Emitente

where
  F.Cd_Funcionario = :Cd_Funcionario

-- ===== TFRMFUNCIONARIO.ADODsReport
select
  F.Cd_Funcionario, F.Nm_Funcionario, F.Nr_Documento,
  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,
  F.Nr_Telefone, F.Nr_Celular, F.Ds_Email, F.Ds_Setor, F.Ds_Cargo, F.Im_Foto,
  F.Dt_Nascimento, F.Dt_Admissao, F.Ds_Tipo_Sanguineo, F.Nr_Identidade,
  F.Nm_Orgao_Emissor, F.Sg_Estado_Emissor, F.Nr_CTPS, F.Nr_Titulo_Eleitor,
  F.Nr_PIS, F.Nr_Habilitacao, F.Nr_Reservista, F.Vl_Salario_Ini,
  F.Vl_Salario_Atual, F.Mm_Observacao, F.Im_Assinatura,
  F.Cd_Emitente, E.Nm_Emitente

from
  Funcionario F

inner join
  Cidade C
on
  C.Cd_Cidade = F.Cd_Cidade

left join
  Emitente E
on
  E.Cd_Emitente = F.Cd_Emitente

order by
  F.Nm_Funcionario

-- ===== TFRMFUNCIONARIO.ADODsFaixa
select
  FF.Cd_Funcionario, FF.Cd_Faixa, CF.Ds_Faixa

from
  Funcionario_Faixa FF

inner join
  Comissao_Faixa CF
on
  CF.Cd_Faixa = FF.Cd_Faixa

where
  FF.Cd_Funcionario = :Cd_Funcionario

-- ===== TFRMFUNCIONARIO_FIND.ADODsFind
select
  F.Cd_Funcionario, F.Nm_Funcionario
from
  Funcionario F

where
  F.Nm_Funcionario like :find

order by
  F.Nm_Funcionario

-- ===== TFRMFUNCIONARIO_PRODUTO.ADODsProduto
select
  P.Cd_Produto, P.Nm_Produto, FP.Pr_Comissao

from
  Produto P

left join
  Funcionario_Produto FP
on
  FP.Cd_Funcionario = :Cd_Funcionario and
  FP.Cd_Produto     = P.Cd_Produto

where
  P.Nm_Produto like :Nm_Produto

order by
  P.Nm_Produto

-- ===== TFRMFUNCIONARIO_PRODUTO.ADODsSequencia
------------------------- Sequencia da Entrada
select
  max( A.Nr_Entrada ) + 1 as Nr_Sequencia

from
  Entrada A

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMFUNCIONARIO_PRODUTO.ADODsFaixa
select
  FPF.Cd_Funcionario, FPF.Cd_Produto, FPF.Cd_Faixa, CF.Ds_Faixa,
  CF.Pr_Comissao, CF.Vl_Inicial, CF.Vl_Final, CF.Pr_Desconto, CF.Pr_Perda

from
  Funcionario_Produto_Faixa FPF

inner join
  Comissao_Faixa CF
on
  CF.Cd_Faixa = FPF.Cd_Faixa

where
  FPF.Cd_Funcionario = :Cd_Funcionario and
  FPF.Cd_Produto     = :Cd_Produto

order by
  FPF.Cd_Faixa

-- ===== TFRMFUNCIONARIO_RANKING.ADODsRanking
select
  O.Cd_Funcionario, O.Nm_Funcionario, 
  sum( Vl_Orcamento ) as Vl_Orcamento,
   count( * ) as Nr_Orcamentos

from
  Orcamento_Total O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */
  
where
  O.Cd_Filial    = :Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End
  
group by
  O.Cd_Funcionario, O.Nm_Funcionario

order by
  3 desc

/* Limit */

-- ===== TFRMGRUPO.ADODsDados
select
  cd_grupo, nm_grupo, pr_comissao, Cd_ClasFiscal, Fl_Moldura,
  Fl_Inventario, Qt_AreaMinima, Cd_CEST

from
  grupo

where
  cd_grupo = :Cd_Grupo

-- ===== TFRMGRUPO.ADODsReport
select
  cd_grupo, nm_grupo, pr_comissao, Cd_ClasFiscal

from
  grupo

order by
  nm_grupo

-- ===== TFRMGRUPO_FIND.ADODsFind
select
  cd_grupo, nm_grupo, Cd_ClasFiscal

from
  grupo

where
  nm_grupo like :find

order by
  nm_grupo

-- ===== TFRMHISTORICO.ADODsDados
select
  cd_historico, ds_historico, tp_historico

from
  historico

where
  cd_historico = :Cd_Historico

-- ===== TFRMHISTORICO.ADODsReport
-- Todos os Históricos
select
  cd_historico, ds_historico, 
  case tp_historico
    when '1' then 'Débito'
    when '2' then 'Crédito'
  end as Dp_Tipo

from
  historico

order by
  ds_historico

-- ===== TFRMHISTORICO_FIND.ADODsFind
-- Todos os Históricos
select
  cd_historico, ds_historico, tp_historico,
  case tp_historico
    when '1' then 'Débito'
    when '2' then 'Crédito'
  end as Dp_Tipo

from
  historico

where
  ds_historico like :find

order by
  ds_historico

-- ===== TFRMINSTALACAO.ADODsDados
select
  I.Cd_Filial, I.Nr_Instalacao, I.Dt_Emissao, I.St_Instalacao, I.Nr_Orcamento, I.Dt_Agenda,
  I.Nm_Contato, I.Mm_Observacao, I.Dt_Instalacao, I.Vl_Comissao, I.Vl_Servico, I.Vl_Material,

  I.Cd_Emitente, I.Nm_Emitente, I.Nm_Fantasia,

  I.Ds_Endereco, I.Ds_Numero, I.Ds_Complemento, I.Nm_Bairro, I.Nm_Cidade, I.Sg_Estado,
  I.Nr_CEP, I.Nr_Telefone_1, I.Nr_Telefone_2, I.Nr_Telefone_3, I.Nr_Celular_1,
  I.Nr_Celular_2,

  I.Nr_Entrega, I.Dt_Entrega, I.Dp_Situacao

from
  InstalacaoVw I

where
  I.Cd_Filial     = :Cd_Filial and
  I.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO.ADODsNavegar
-- Prior
select top 1
  Nr_Instalacao

from
  Instalacao

where
  Cd_Filial      = :Cd_Filial and
  Nr_Instalacao = :Nr_Instalacao

order by
  Nr_Instalacao desc

-- ===== TFRMINSTALACAO.ADODsOrcaFind
select
  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Dt_Confirmado, O.Dt_Fatura, 
  O.Nr_Fatura, O.Nr_Entrega, O.St_Orcamento

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMINSTALACAO.ADODsInstalador
select
  II.Cd_Filial, II.Nr_Instalacao, II.Cd_Funcionario, F.Nm_Funcionario, II.Vl_Comissao

from
  Instalacao_Instalador II

inner join
  Funcionario F
on
  F.Cd_Funcionario = II.Cd_Funcionario

where
  II.Cd_Filial      = :Cd_Filial and
  II.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO.ADODsServico
select
  InS.Cd_Filial, InS.Nr_Instalacao, InS.Nr_Servico, InS.Cd_Produto, InS.Nm_Produto,
  InS.Qt_Servico, InS.Vl_Servico, InS.Vl_Total

from
  Instalacao_ServicoVw InS

where
  Ins.Cd_Filial     = :Cd_Filial and
  Ins.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO.ADODsMaterial
select
  IM.Cd_Filial, IM.Nr_Instalacao, IM.Nr_Material, IM.Cd_Produto, IM.Nm_Produto,
  IM.Qt_Material, IM.Vl_Material, IM.Vl_Total

from
  Instalacao_MaterialVw IM

where
  IM.Cd_Filial     = :Cd_Filial and
  IM.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO_ESPELHO.ADODsInstalacao
select
  I.Cd_Filial, I.Nr_Instalacao, I.Dt_Emissao, I.St_Instalacao, I.Nr_Orcamento, I.Dt_Agenda,
  I.Nm_Contato, I.Mm_Observacao, I.Dt_Instalacao, I.Vl_Comissao, I.Vl_Servico, I.Vl_Material,

  Dp_Emitente = Concat( I.Cd_Emitente, ' - ',  I.Nm_Emitente, '(' + I.Nm_Fantasia + ')' ),

  I.Ds_Endereco, I.Ds_Numero, I.Ds_Complemento, I.Nm_Bairro, 
  Dp_Cidade = I.Nm_Cidade + ' - ' + I.Sg_Estado,
  I.Nr_CEP, I.Nr_Telefone_1, I.Nr_Telefone_2, I.Nr_Telefone_3, I.Nr_Celular_1,
  I.Nr_Celular_2, I.Mm_ObsEndereco,

  I.Nr_Entrega, I.Dt_Entrega, I.Dp_Situacao

from
  InstalacaoVw I

where
  I.Cd_Filial     = :Cd_Filial and
  I.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO_ESPELHO.ADODsInstalador
select
  II.Cd_Filial, II.Nr_Instalacao, II.Cd_Funcionario, F.Nm_Funcionario, II.Vl_Comissao

from
  Instalacao_Instalador II

inner join
  Funcionario F
on
  F.Cd_Funcionario = II.Cd_Funcionario

where
  II.Cd_Filial      = :Cd_Filial and
  II.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO_ESPELHO.ADODsServico
select
  InS.Cd_Filial, InS.Nr_Instalacao, InS.Nr_Servico, InS.Cd_Produto, InS.Nm_Produto,
  InS.Qt_Servico, InS.Vl_Servico, InS.Vl_Total

from
  Instalacao_ServicoVw InS

where
  Ins.Cd_Filial     = :Cd_Filial and
  Ins.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO_ESPELHO.ADODsMaterial
select
  IM.Cd_Filial, IM.Nr_Instalacao, IM.Nr_Material, IM.Cd_Produto, IM.Nm_Produto,
  IM.Qt_Material, IM.Vl_Material, IM.Vl_Total

from
  Instalacao_MaterialVw IM

where
  IM.Cd_Filial     = :Cd_Filial and
  IM.Nr_Instalacao = :Nr_Instalacao

-- ===== TFRMINSTALACAO_FIND.ADODsFind
select
  I.Cd_Filial, I.Nr_Instalacao, I.St_Instalacao, I.Dt_Emissao, O.Cd_Emitente,
  E.Nm_Emitente, I.Cd_Funcionario, F.Nm_Funcionario, I.Dt_Agenda

from
  Instalacao I

inner join
  Orcamento O
on
  O.Cd_Filial    = I.Cd_Filial and
  O.Nr_Orcamento = I.Nr_Orcamento

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Funcionario F
on
  F.Cd_Funcionario = I.Cd_Funcionario

/* Instalacao */

where
  I.Cd_Filial     = :Cd_Filial

-- ===== TFRMINVENTARIO_ANUAL.ADODsDados
select
  Cd_Filial, Nr_Ano, Dt_Inventario, St_Inventario, Vl_Inventario

from
   Inventario

where
  Cd_Filial = :Cd_Filial and
  Nr_Ano    = :Nr_Ano

-- ===== TFRMINVENTARIO_ANUAL.ADODsNavegar
-- First
select top 1
  Nr_Ano

from
  Inventario

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Ano

-- ===== TFRMINVENTARIO_ANUAL.ADODsProdutos
select
  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia, IP.Fl_Inventario,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas * IP.Vl_Custo as Vl_Total

from
  Inventario_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto
  /* Nm_Produto */

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

order by
  P.Nm_Produto

-- ===== TFRMINVENTARIO_ANUAL.ADODsReport
select
  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia, P.Cd_ClasFiscal, U.Ds_Unidade,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,
  P.Cd_Grupo, G.Nm_Grupo, IP.Fl_Inventario, T.Ds_Tributacao,

    (
    case
      when T.Tp_Tributacao = '1' then 'Tributado'
      when T.Tp_Tributacao = '2' then 'Substituição Tributária'
      when T.Tp_Tributacao = '3' then 'Isento'
      when T.Tp_Tributacao = '4' then 'Serviço (ISS)'
      when T.Tp_Tributacao = '5' then 'Não Incidência'
    end
    ) as Dp_Tributacao,

  (
  select top 1
    EI.Pr_ICMS
  from
    Entrada_Item EI

  inner join
    Entrada E
  on
    E.Cd_Filial  = EI.Cd_Filial and
    E.Nr_Entrada = EI.Nr_Entrada

  where
    EI.Cd_Filial  = IP.Cd_Filial and
    EI.Cd_Produto = IP.Cd_Produto

  order by
    E.Dt_Lancamento desc
  ) as Pr_AliquotaEntrada

from
  Inventario_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto and
  P.Fl_Produto = '1'

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  Unidade U
on
  U.Sg_Unidade = P.Sg_Estoque

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

order by
  IP.Fl_Inventario

-- ===== TFRMINVENTARIO_MENSAL.ADODsDados
select
  Cd_Filial, Cd_Periodo, Dt_Inventario, St_Inventario, Vl_Inventario

from
   Inventario_Mensal

where
  Cd_Filial = :Cd_Filial and
  Cd_Periodo    = :Cd_Periodo

-- ===== TFRMINVENTARIO_MENSAL.ADODsNavegar
-- First
select top 1
  Cd_Periodo

from
  Inventario_Mensal

where
  Cd_Filial = :Cd_Filial

order by
  Cd_Periodo

-- ===== TFRMINVENTARIO_MENSAL.ADODsProdutos
select
  IP.Cd_Filial, IP.Cd_Periodo, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas * IP.Vl_Custo as Vl_Total

from
  Inventario_Mensal_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto
  /* Nm_Produto */

where
  IP.Cd_Filial  = :Cd_Filial and
  IP.Cd_Periodo = :Cd_Periodo

order by
  P.Nm_Produto

-- ===== TFRMINVENTARIO_MENSAL.ADODsReport
select
  IP.Cd_Filial, IP.Cd_Periodo, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia, P.Cd_ClasFiscal, U.Ds_Unidade,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,
  P.Cd_Grupo, G.Nm_Grupo, G.Fl_Inventario, U.Ds_Unidade,    
  (
    case
      when T.Tp_Tributacao = '1' then 'Tributado'
      when T.Tp_Tributacao = '2' then 'Substituição Tributária'
      when T.Tp_Tributacao = '3' then 'Isento'
      when T.Tp_Tributacao = '4' then 'Serviço (ISS)'
      when T.Tp_Tributacao = '5' then 'Não Incidência'
    end
    ) as Dp_Tributacao,

  (
  select top 1
    EI.Pr_ICMS
  from
    Entrada_Item EI

  inner join
    Entrada E
  on
    E.Cd_Filial  = EI.Cd_Filial and
    E.Nr_Entrada = EI.Nr_Entrada

  where
    EI.Cd_Filial  = IP.Cd_Filial and
    EI.Cd_Produto = IP.Cd_Produto

  order by
    E.Dt_Lancamento desc
  ) as Pr_AliquotaEntrada

from
  Inventario_Mensal_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto and
  P.Fl_Produto = '1'

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  Unidade U
on
  U.Sg_Unidade = P.Sg_Estoque

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  IP.Cd_Filial  = :Cd_Filial and
  IP.Cd_Periodo = :Cd_Periodo

order by
  P.Nm_Produto

-- ===== TFRMINVENTARIO_TRIMESTRAL.ADODsDados
select
  Cd_Filial, Nr_Ano, Dt_Inventario, St_Inventario, Vl_Inventario

from
   Inventario_Trimestral

where
  Cd_Filial = :Cd_Filial and
  Nr_Ano    = :Nr_Ano

-- ===== TFRMINVENTARIO_TRIMESTRAL.ADODsNavegar
-- First
select top 1
  Nr_Ano

from
  Inventario_Trimestral

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Ano

-- ===== TFRMINVENTARIO_TRIMESTRAL.ADODsProdutos
select
  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia, IP.Fl_Inventario,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas * IP.Vl_Custo as Vl_Total

from
  Inventario_Trimestral_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto
  /* Nm_Produto */

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

order by
  P.Nm_Produto

-- ===== TFRMINVENTARIO_TRIMESTRAL.ADODsReport
select
  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Nr_Sequencia, P.Cd_ClasFiscal, U.Ds_Unidade,
  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,
  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,
  P.Cd_Grupo, G.Nm_Grupo, IP.Fl_Inventario, T.Ds_Tributacao,
    (
    case
      when T.Tp_Tributacao = '1' then 'Tributado'
      when T.Tp_Tributacao = '2' then 'Substituição Tributária'
      when T.Tp_Tributacao = '3' then 'Isento'
      when T.Tp_Tributacao = '4' then 'Serviço (ISS)'
      when T.Tp_Tributacao = '5' then 'Não Incidência'
    end
    ) as Dp_Tributacao,

  (
  select top 1
    EI.Pr_ICMS
  from
    Entrada_Item EI

  inner join
    Entrada E
  on
    E.Cd_Filial  = EI.Cd_Filial and
    E.Nr_Entrada = EI.Nr_Entrada

  where
    EI.Cd_Filial  = IP.Cd_Filial and
    EI.Cd_Produto = IP.Cd_Produto

  order by
    E.Dt_Lancamento desc
  ) as Pr_AliquotaEntrada

from
  Inventario_Trimestral_Produto IP

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto and
  P.Fl_Produto = '1'

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  Unidade U
on
  U.Sg_Unidade = P.Sg_Estoque

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

order by
  IP.Fl_Inventario

-- ===== TFRMLABORATORIO.ADODsDados
select
  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,
  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,
  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, 
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  L.Nr_InscEstadual, L.Nm_Comercial, L.Nm_Financeiro, L.Pr_Comissao

from
  Laboratorio L

inner join
  Cidade C
on
  C.Cd_Cidade = L.Cd_Cidade

where
  L.Cd_Laboratorio = :Cd_Laboratorio

-- ===== TFRMLABORATORIO.ADODsReport
select
  cd_laboratorio, nm_laboratorio

from
  Laboratorio

order by
  nm_laboratorio

-- ===== TFRMLABORATORIO_FIND.ADODsFind
select
  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Telefone, L.Nm_Contato,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Laboratorio L

inner join
  Cidade C
on
  C.Cd_Cidade = L.Cd_Cidade

where
  L.Nm_Laboratorio like :find

order by
  L.Nm_Laboratorio

-- ===== TFRMLCONTABIL_APURACAO.ADODsLivro
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

-------------------- Elimina table temporaria
if Object_ID( 'TempDB..##TmpLvApuracao' ) is not null
  drop table ##TmpLvApuracao

-------------------- Entradas
select
  '1' as Fl_Tipo, E.Cd_CFOP, C.Sg_Estado,
  sum( E.Vl_Nota ) as Vl_Contabil, 
  sum( E.Vl_BaseICMS ) as Vl_BaseCalculo, 
  sum( E.Vl_ICMS ) as Vl_Imposto, 
  sum( E.Vl_Substituicao ) as Vl_Isento
  
into
  ##TmpLvApuracao

from
  Entrada E

inner join
  Emitente ET
on
  ET.Cd_Emitente = E.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = Et.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Cd_Filial      = @Cd_Filial and
  E.St_Entrada     = '2' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End

group by
  E.Cd_CFOP, C.Sg_Estado
  
-------------------- Saidas - Table Saida
insert into ##TmpLvApuracao
select
  '2' as Fl_Tipo, S.Cd_CFOP, C.Sg_Estado,
  sum( S.Vl_Nota ) as Vl_Contabil, 
  sum( S.Vl_BaseICMS ) as Vl_BaseCalculo, 
  sum( S.Vl_ICMS ) as Vl_Imposto, 
  sum( S.Vl_Substituicao ) as Vl_Isento
  
from
  Saida S

inner join
  Emitente ET
on
  ET.Cd_Emitente = S.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = Et.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  S.Cd_Filial      = @Cd_Filial and
  S.St_Saida       = '2' and
  S.Dt_Lancamento >= @Dt_Start and
  S.Dt_Lancamento  < @Dt_End

group by
  S.Cd_CFOP, C.Sg_Estado

-------------------- Saidas - Table Orçamento/Vendas
insert into ##TmpLvApuracao
select
  '2' as Fl_Tipo, O.Cd_CFOP, C.Sg_Estado,
  sum( OT.Vl_Orcamento ) as Vl_Contabil, 
  sum( O.Vl_BaseICMS ) as Vl_BaseCalculo, 
  sum( O.Vl_ICMS ) as Vl_Imposto, 
  sum( O.Vl_STB ) as Vl_Isento
  
from
  Orcamento_Total OT

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento

inner join
  Emitente ET
on
  ET.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = Et.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  OT.Cd_Filial    = @Cd_Filial and
  OT.St_Orcamento = '9' and
  OT.Dt_Fatura   >= @Dt_Start and
  OT.Dt_Fatura    < @Dt_End
  
group by
  O.Cd_CFOP, C.Sg_Estado

-------------------- Gera a table com os dados finais
select
  Fl_Tipo, Cd_CFOP, 
  sum( Vl_Contabil ) as Vl_Contabil, 
  sum( Vl_BaseCalculo ) as Vl_BaseCalculo, 
  sum( Vl_Imposto ) as Vl_Imposto, 
  sum( Vl_Isento ) as Vl_Isento
  
from
  ##TmpLvApuracao

group by
  Fl_Tipo, Cd_CFOP

order by
  Fl_Tipo, Cd_CFOP

-- ===== TFRMLCONTABIL_APURACAO.ADODsTotais
select
  sum( Vl_Contabil ) as Vl_Contabil,
  sum( Vl_BaseCalculo ) as Vl_BaseCalculo,
  sum( Vl_Imposto ) as Vl_Imposto,
  sum( Vl_Isento ) as Vl_Isento

from
  ##TmpLvApuracao

where
  Fl_Tipo   = :Fl_Tipo and
  Sg_Estado = :Sg_Estado

-- ===== TFRMLCONTABIL_ENTRADAS.ADODsLivro
select
  E.Dt_Lancamento, E.Cd_Serie, E.Nr_Fatura, E.Dt_Emissao, ET.Nr_Documento,
  ET.Nm_Emitente, C.Sg_Estado, ET.Nr_Insc_Estadual, E.Vl_Nota,
  0 as Cd_Operacao, E.Cd_CFOP, E.Vl_BaseICMS, E.Pr_ICMS, E.Vl_ICMS, 0.0 as Vl_Outros,
  E.Vl_Produto as Vl_BaseRE,
  E.Vl_Produto + E.Vl_IPI as Vl_ContabilRE

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente ET
on
  ET.Cd_Emitente = E.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = ET.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Cd_Filial      = :Cd_Filial and
  E.St_Entrada     = '2' and                   -- Fechado
  E.Dt_Lancamento >= :Dt_Start and
  E.Dt_Lancamento  < :Dt_End
  -- E.Cd_Operacao not in ( 45 )

order by
  E.Dt_Lancamento, ET.Nr_Documento, E.Dt_Emissao, E.Nr_Fatura

-- ===== TFRMLCONTABIL_PE.ADODsLivro
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime,
  @Sg_Origem Char( 2 )

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End,
  @Sg_Origem = :Sg_Origem
  
--------------- Entradas
select
  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,
  E.Cd_Serie, E.Nr_Fatura, E.Dt_Lancamento,
  0 as Cd_Operacao, EI.Cd_CFOP as Cd_Fiscal,
  'E' as Fl_Operacao, EI.Qt_Item, EI.Qt_Item * EI.Vl_Unitario as Vl_Produto, 
  EI.Vl_IPI, EI.Qt_Estoque

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Entrada_Item EI
on
  EI.Cd_Filial  = E.Cd_Filial and
  EI.Nr_Entrada = E.Nr_Entrada
  
inner join
  Produto P
on
  P.Cd_Produto = EI.Cd_Produto
  
where
  E.Cd_Filial      = @Cd_Filial and
  E.St_Entrada     = '2' and                   -- Fechado
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End
  
--------------- Saidas
union
select
  SI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,
  S.Cd_Serie, S.Nr_Fatura, S.Dt_Lancamento,
  0 as Cd_Operacao, 
  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,  
  'S' as Fl_Operacao, SI.Qt_Item, SI.Qt_Item * SI.Vl_Unitario as Vl_Produto, 
  Vl_IPI = case when P.Pr_IPI > 0 then SI.Qt_Item * SI.Vl_Unitario / 100.0 * P.Pr_IPI end,  
  SI.Qt_Estoque

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente E
on
  E.Cd_Emitente = S.Cd_Emitente
  
inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco
  
inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade
  
inner join
  Saida_Item SI
on
  SI.Cd_Filial = S.Cd_Filial and
  SI.Nr_Saida  = S.Nr_Saida
  
inner join
  Produto P
on
  P.Cd_Produto = SI.Cd_Produto
  
inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao
  
where
  S.Cd_Filial      = @Cd_Filial and
  S.St_Saida       = '2' and                   -- Fechado
  S.Dt_Lancamento >= @Dt_Start and
  S.Dt_Lancamento  < @Dt_End
    
--------------- Orçamentos - Itens
union
select
  OI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,
  O.Cd_Serie, O.Nr_Fatura, Dt_Lancamento = O.Dt_Fatura,
  Cd_Operacao = 0, 
  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,  
  'S' as Fl_Operacao, OI.Qt_Item, OI.Qt_Item * OI.Vl_Unitario as Vl_Produto, 
  Vl_IPI = case when P.Pr_IPI > 0 then OI.Qt_Item * OI.Vl_Unitario / 100.0 * P.Pr_IPI end,  
  OI.Qt_Estoque

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  
inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco
  
inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade
  
inner join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'
  
inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  
inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao
  
where
  O.Cd_Filial      = @Cd_Filial and
  O.St_Orcamento   = '9' and                   -- Fechado
  O.Dt_Fatura     >= @Dt_Start and
  O.Dt_Fatura      < @Dt_End
        
--------------- Orçamentos - Projetos
union
select
  OPI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,
  O.Cd_Serie, O.Nr_Fatura, Dt_Lancamento = O.Dt_Emissao,
  0 as Cd_Operacao,
  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,
  'S' as Fl_Operacao, Qt_Item = OPI.Qt_Item * OP.Qt_Projeto,
  Vl_Produto = OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario, 
  Vl_IPI = case when P.Pr_IPI > 0 then OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario / 100.0 * P.Pr_IPI end,  
  Qt_Estoque = OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 )

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente
  
inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco
  
inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade
  
inner join
  Orcamento_Projeto OP
on
  OP.Cd_Filial     = O.Cd_Filial and
  OP.Nr_Orcamento  = O.Nr_Orcamento 

inner join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = OP.Cd_Filial and
  OPI.Nr_Orcamento = OP.Nr_Orcamento and
  OPI.Nr_Projeto   = OP.Nr_Projeto 
  
inner join 
  Produto_Unidade PU
on
  PU.Cd_Produto = OPI.Cd_Produto and
  PU.Sg_Unidade = OPI.Sg_Unidade
  
inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto
  
inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao
  
where
  O.Cd_Filial      = @Cd_Filial and
  O.St_Orcamento   = '9' and                   -- Fechado
  O.Dt_Fatura     >= @Dt_Start and
  O.Dt_Fatura      < @Dt_End
                
order by
  1 --Cd_Produto

-- ===== TFRMLCONTABIL_SAIDAS.ADODsLivro
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

-------------------- Table SAIDA
select
  S.Cd_Filial, S.Nr_Fatura, S.Dt_Emissao, S.Cd_Serie, CF.Tp_Operacao,
  S.Vl_Nota, S.Cd_CFOP, 0 as Cd_Operacao, S.Vl_BaseICMS, S.Pr_ICMS,
  S.Vl_ICMS, S.Vl_Substituicao, C.Sg_Estado

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente ET
on
  ET.Cd_Emitente = S.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = ET.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  S.Cd_Filial   = @Cd_Filial and
  S.St_Saida    = '2' and          -- Fechada
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End

union

-------------------- Table Orcamento
select
  O.Cd_Filial, O.Nr_Fatura, O.Dt_Fatura, O.Cd_Serie, CF.Tp_Operacao,
  OT.Vl_Orcamento as Vl_Nota, O.Cd_CFOP, 0 as Cd_Operacao, O.Vl_BaseICMS, 
  O.Pr_ICMS, O.Vl_ICMS, O.Vl_STB, C.Sg_Estado

from
  Orcamento_Total OT

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Tp_Operacao < '4'            -- Acerto de Estoque

inner join
  Emitente ET
on
  ET.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = ET.Cd_Emitente and
  EE.Nr_Endereco = ET.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  OT.Cd_Filial    = @Cd_Filial and
  OT.St_Orcamento = '9' and          -- Fechada
  OT.Dt_Fatura   >= @Dt_Start and
  OT.Dt_Fatura    < @Dt_End

order by
  1, 2, 3

-- ===== TFRMLOCALIZACAO.ADODsDados
select
  Cd_Localizacao, Ds_Localizacao

from
  Localizacao

where
  Cd_Localizacao = :Cd_Localizacao

-- ===== TFRMLOCALIZACAO.ADODsReport
select
  Cd_Localizacao, Ds_Localizacao

from
  Localizacao

order by
  Ds_Localizacao

-- ===== TFRMLOCALIZACAO_FIND.ADODsFind
select
  Cd_Localizacao, Ds_Localizacao

from
  Localizacao

where
  Ds_Localizacao like :find

order by
  Ds_Localizacao

-- ===== TFRMLOGSISTEMA.ADODsLog
select
  L.Cd_Filial, L.Ds_Origem, L.Id_Log, L.Cd_Usuario, U.Nm_Usuario, L.Dt_Ocorrencia, L.Mm_Historico

from
  LogSistema L

inner join
  Usuario U
on
  U.Cd_Usuario = L.Cd_Usuario

where
  Ds_Origem = :Ds_Origem and
  Id_Log       = :Id_Log

-- ===== TFRMLOGSISTEMA.ADODsOrigem
select
  Ds_Origem, Count(*) as Nr_Origem

from
  LogSistema

group by
  Ds_Origem

order by
  Ds_Origem

-- ===== TFRMMOTIVO.ADODsDados
select
  Cd_Motivo, Ds_Motivo

from
  Motivo

where
  Cd_Motivo = :Cd_Motivo

-- ===== TFRMMOTIVO.ADODsReport
select
  Cd_Motivo, Ds_Motivo

from
  Motivo

order by
  Ds_Motivo

-- ===== TFRMMOTIVO_FIND.ADODsFind
select
  Cd_Motivo, Ds_Motivo

from
  Motivo

where
  Ds_Motivo like :find

order by
  Ds_Motivo

-- ===== TFRMNFCE_REPORT.ADODsReport
select
  Dp_Situacao, Nr_DFe, 
  Dp_Emitente = 
    case
      when D.Cd_Emitente is not null then Convert( VarChar( 7 ), D.Cd_Emitente ) + ' - ' + D.Nm_Emitente 
    end,
  Ds_dhRecbto, DI.Nr_Origem, D.Vl_DFe, D.Vl_DFe_Liquido,

  D.Cd_Filial, D.Id_Estacao, D.Id_DFe, D.Sg_Estado, D.Fl_Contribuinte

from  
  DFe_Vw D

left join
  DFe_Importar DI
on
  DI.Cd_Filial  = D.Cd_Filial and
  DI.Id_Estacao = D.Id_Estacao and
  DI.Id_DFe     = D.Id_DFe

where
  D.Cd_Filial = :Cd_Filial and
  D.Dt_Dfe   >= :Dt_Start and
  D.Dt_DFe    < :Dt_End

order by
  D.Dp_Situacao, D.Ds_dhRecbto

-- ===== TFRMNFCE_REPORT.ADODsItem
declare
  @Sg_Estado Char( 2 ),
  @Sg_Filial Char( 2 ),
  @Fl_Contribuinte Char( 1 )

select
  @Sg_Estado       = :Sg_Estado,
  @Sg_Filial       = :Sg_Filial,
  @Fl_Contribuinte = :Fl_Contribuinte

select
  DI.Cd_Filial, DI.Id_Estacao, DI.Id_DFe, DI.Nr_Item, DI.Cd_Produto,
  P.Nm_Abreviado, P.Sg_Venda, DI.Qt_Produto, DI.Vl_Unitario,
  Vl_Total = DI.Qt_Produto * DI.Vl_Unitario,

  P.Cd_Barra, P.Nm_Produto, P.Cd_ClasFiscal, P.Cd_CEST, P.Vl_MVA,

  Fl_OriProduto = P.Fl_Origem,

  Cd_CFOPProduto = case when ( @Sg_Estado = @Sg_Filial ) then T.Cd_CFOPDentro else T.Cd_CFOPFora end,

  Cd_CST  =
    case
      when ( @Fl_Contribuinte = '1' )  and ( @Sg_Estado  = @Sg_Filial ) then T.Cd_CST
      when ( @Fl_Contribuinte = '1' )  and ( @Sg_Estado <> @Sg_Filial ) then T.Cd_CST_Fora
      when ( @Fl_Contribuinte >= '2' ) and ( @Sg_Estado  = @Sg_Filial ) then T.Cd_CST_NC
      when ( @Fl_Contribuinte >= '2' ) and ( @Sg_Estado <> @Sg_Filial ) then T.Cd_CST_Fora_NC

    end,

  Pr_MVA =
    (
    case
      when ( @Sg_Estado  = @Sg_Filial ) then T.Pr_MVA_Dentro
      when ( @Sg_Estado <> @Sg_Filial ) then T.pr_MVA_Fora

    end
    )

from
  DFe_Item DI

inner join
  Produto P
on
  P.Cd_Produto = DI.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  DI.Cd_Filial  = :Cd_Filial and
  DI.Id_Estacao = :Id_Estacao and
  DI.Id_DFe     = :Id_DFe

order by
  DI.Cd_Filial, DI.Id_Estacao, DI.Id_DFe, DI.Nr_Item

-- ===== TFRMNFCE_REPORT.ADODsCFOP
select
  Dp_Situacao, Cd_CFOPProduto, 
  sum( Vl_Total ) as Vl_Total,
  sum( Vl_Liquido ) as Vl_Liquido

from
  DFe_Item_Vw

where
  Cd_Filial = :Cd_Filial and
  Dt_DFe >= :Dt_Start and
  Dt_DFe  < :Dt_End
  
group by
  Dp_Situacao, Cd_CFOPProduto

order by
  Dp_Situacao, Cd_CFOPProduto

-- ===== TFRMNFE.ADODsCFG
select
  Cd_Filial, Fl_PastaMensal, Ds_PathCancelar, Nr_Intervalo, Nm_LogoMarca,
  Ds_PathDPEC, Ds_PathInu, Ds_PathNFe, Nr_Certificado, Sh_Certificado,
  Ds_PathSalvar, Ds_PathSchemas, Fl_Ambiente, Tp_DANFe, Ds_PathPDF,
  Nm_DANFe, Nr_Decimais, Ds_Assunto, Mm_EMail, Fl_FormaEmissao, Nr_Copia,
  Dt_Contingencia, Ds_Contingencia, Fl_Fonte, Nr_LarguraCodigo, Mm_Certificado,
  Im_Logo

from
  NFe_CFG

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMNFE.ADODsOrigem
select
 N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,
 N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,
 N.Fl_Gerar, N.Fl_Validacao, N.Mm_Validacao, EM.Nm_Emitente, EM.Ds_EMailNFe,
 EM.Cd_Emitente, N.Nr_chNFe, N.Nr_cNF,

 Nr_Fatura =
   case N.Fl_Origem
     when '1' then OT.Nr_Fatura
     when '2' then S.Nr_Fatura
     when '3' then E.Nr_Fatura

   end,

 Vl_Fatura =
   case N.Fl_Origem
     when '1' then OT.Vl_Orcamento
     when '2' then S.Vl_Nota
     when '3' then E.Vl_Nota

   end

from
  NFe N

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = N.Cd_Filial and
  OT.Nr_Orcamento = N.Nr_Origem

left join
  Saida S
on
  S.Cd_Filial    = N.Cd_Filial and
  S.Nr_Saida     = N.Nr_Origem

left join
  Entrada E
on
  E.Cd_Filial    = N.Cd_Filial and
  E.Nr_Entrada   = N.Nr_Origem

left join
  Emitente EM
on
  EM.Cd_Emitente =
   case N.Fl_Origem
     when '1' then OT.Cd_Emitente
     when '2' then S.Cd_Emitente
     when '3' then E.Cd_Emitente

   end

where
  N.Cd_Filial = :Cd_Filial and
  N.St_NFe    = '1' and
  N.Dt_NFe   >= :Dt_Start and
  N.Dt_NFe    < :Dt_End

order by
  N.Dt_NFe

-- ===== TFRMNFE.ADODsGerado
select
  N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,
  N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,
  N.Fl_Gerar, N.Nr_chNFe, N.Nr_nProt, N.Nr_cStat, N.Ds_xMotivo,
  N.Dt_DhRecbto, N.Mm_NFe, N.Ds_Justificativa, EM.Nm_Emitente, EM.Ds_EMailNFe,
  EM.Cd_Emitente,

  Nr_Fatura =
    case N.Fl_Origem
      when '1' then OT.Nr_Fatura
      when '2' then S.Nr_Fatura
      when '3' then E.Nr_Fatura

    end,

  Vl_Fatura =
    case N.Fl_Origem
      when '1' then OT.Vl_Orcamento
      when '2' then S.Vl_Nota
      when '3' then E.Vl_Nota

    end,

  Cd_Serie =
    case N.Fl_Origem
      when '1' then OT.Cd_Serie
      when '2' then S.Cd_Serie
      when '3' then E.Cd_Serie

    end

from
  NFe N

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = N.Cd_Filial and
  OT.Nr_Orcamento = N.Nr_Origem

left join
  Saida S
on
  S.Cd_Filial    = N.Cd_Filial and
  S.Nr_Saida     = N.Nr_Origem

left join
  Entrada E
on
  E.Cd_Filial    = N.Cd_Filial and
  E.Nr_Entrada   = N.Nr_Origem

left join
  Emitente EM
on
  EM.Cd_Emitente =
   case N.Fl_Origem
     when '1' then OT.Cd_Emitente
     when '2' then S.Cd_Emitente
     when '3' then E.Cd_Emitente

   end

where
  N.Cd_Filial = :Cd_Filial and
  N.St_NFe    > '1' and
  N.Dt_NFe   >= :Dt_Start and
  N.Dt_NFe    < :Dt_End

order by
  N.Dt_DhRecbto desc

-- ===== TFRMNFE.ADODsLote
select
  Max( Id_Lote ) as NewLote

from
  NFe

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMNFE.ADODsInutiliza
select
  Cd_Filial, Nr_Ano, Nr_Serie, Nr_Inicial, Nr_Final, Ds_Justificativa,
  Nr_nProt, Ds_xMotivo, Dt_DhRecbto

from
  NFe_Inutiliza

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Inicial desc

-- ===== TFRMNFE.ADODsIBPTax
select
  Cd_NCM, Cd_Ex, Cd_Tabela, Pr_Nacional, Pr_Importado, 
  Pr_Estadual

from
  IBPTax

where
  Cd_NCM       = :Cd_NCM and
  Cd_Ex        = :Cd_Ex

-- ===== TFRMNFE.ADOCmdCFG
update
  NFe_CFG

set
  NM_LogoMarca = :NM_LogoMarca

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMNFE.ADODsDevolucao
select
  refNFe as Nr_Chave, Convert( Int, 0 ) as Nr_CupomFiscal

from
  Saida

where
  Cd_Filial = :Cd_Filial and
  Nr_Saida  = :Nr_Saida

-- ===== TFRMNFE.ADODsContador
select
  C.Nm_Contador, C.Nr_CPF, C.Nr_CNPJ, C.Nr_CRC, C.Nr_InscEstadual,
  C.Ds_Endereco, C.Nm_Bairro, C.Ds_Complemento, C.Cd_Cidade, C.Nr_Cep,
  C.Nr_Telefone, C.Nr_Fax, C.Ds_Email, CI.Nm_Cidade, CI.Sg_Estado,
  CI.Cd_IBGE, C.Ds_Numero

from
  Contador C

inner join
  Cidade CI
on
  CI.Cd_Cidade = C.Cd_Cidade

-- ===== TFRMNFE_CCE.ADODsCCe
select
  Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem, Nr_SeqEvento, 
  Dt_dhEvento, Mm_xCorrecao, Mm_CCe, Ds_xMotivo, Nr_nProt,
  Mm_xCondUso

from
  NFe_CCe

where
  Cd_Filial = :Cd_Filial and
  Fl_Origem = :Fl_Origem and
  Nr_Origem = :Nr_Origem and
  Id_Origem = :Id_Origem

order by
  Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem,  Nr_SeqEvento desc

-- ===== TFRMNFE_CCE.ADOCmdCCe
insert into NFe_CCe( Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem, Nr_SeqEvento,
  Dt_dhEvento, Mm_xCorrecao, Mm_xCondUso, Mm_CCe, Nr_nProt, Ds_xMotivo )

values( :Cd_Filial, :Fl_Origem, :Nr_Origem, :Id_Origem, :Nr_SeqEvento,
  :Dt_dhEvento, :Mm_xCorrecao, :Mm_xCondUso, :Mm_CCe, :Nr_nProt, :Ds_xMotivo )

-- ===== TFRMNFE_RECUPERAXML.ADODsGeradoNFCe
select
  Nr_chNFe, Mm_XML

from
  DFe_Vw

where
  Cd_Filial = :Cd_Filial and
  Dt_DFe   >= :Dt_Start and
  Dt_DFe    < :Dt_End and
  Nr_chNFe <> ''

-- ===== TFRMNFE_REPORT.ADODsReport
select
  N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,
  N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,
  N.Fl_Gerar, N.Nr_chNFe, N.Nr_nProt, N.Nr_cStat, N.Ds_xMotivo,
  N.Dt_DhRecbto, N.Mm_NFe, N.Ds_Justificativa, EM.Nm_Emitente, EM.Ds_EMailNFe,
  EM.Cd_Emitente,

  Nr_Fatura =
    case N.Fl_Origem
      when '1' then OT.Nr_Fatura
      when '2' then S.Nr_Fatura
      when '3' then E.Nr_Fatura

    end,

  Vl_Fatura =
    case N.Fl_Origem
      when '1' then OT.Vl_Orcamento
      when '2' then S.Vl_Nota
      when '3' then E.Vl_Nota

    end

from
  NFe N

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = N.Cd_Filial and
  OT.Nr_Orcamento = N.Nr_Origem

left join
  Saida S
on
  S.Cd_Filial    = N.Cd_Filial and
  S.Nr_Saida     = N.Nr_Origem

left join
  Entrada E
on
  E.Cd_Filial    = N.Cd_Filial and
  E.Nr_Entrada   = N.Nr_Origem

left join
  Emitente EM
on
  EM.Cd_Emitente =
   case N.Fl_Origem
     when '1' then OT.Cd_Emitente
     when '2' then S.Cd_Emitente
     when '3' then E.Cd_Emitente

   end

where
  N.Cd_Filial = :Cd_Filial and
  N.St_NFe    > '1' and
  N.St_NFe    < '9' and
  N.Dt_NFe   >= :Dt_Start and
  N.Dt_NFe    < :Dt_End

order by
  N.St_NFe, N.Dt_DhRecbto desc

-- ===== TFRMNOTA.ADODsCampos
select
  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, 
  Nr_Size, St_Campo, Nm_Field, Ds_Format, Fl_Pos, Nr_Width,
  Fl_SupressNull

from
  Nota_CFG_Campo

where
  Cd_Nota = :Cd_Nota and
  St_Campo = '1'

order by
  Cd_Grupo, Cd_Campo

-- ===== TFRMNOTA.ADODsSize
select
  max( Nr_Linha ) as Nr_Linha

from
  Nota_CFG_Campo

where
  Cd_Nota  = :Cd_Nota and
  Cd_Grupo = :Cd_Grupo

-- ===== TFRMNOTA.ADODsNota
/* Somente produtos e serviços */
select
  '1' as Fl_Origem, OI.Nr_Item, O.St_Orcamento as St_Nota,
  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,
  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,
  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,
  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,
  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,
  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,
  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,

  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item,
  OI.Vl_Unitario, OI.Qt_Agregado, OI.Fl_STB, T.Mm_ObsNota,

  case
    when T.Cd_CST is not null then T.Cd_CST
    else
      case
        when ( E.Fl_Contribuinte = '2' ) or ( C.Sg_Estado <> 'ES' ) then '000'
        when ( ( E.Fl_Contribuinte = '1' ) or ( C.Sg_Estado = 'ES' ) ) and
             ( O.Pr_ICMS > OI.Pr_Reducao ) then '020'
        else '000'

      end

    end as Cd_CST,

  T.Pr_Contrib, T.Pr_NaoContrib, T.Tp_Tributacao, P.Fl_Produto, P.Fl_Origem as Fl_OriProduto,
  OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade, P.Cd_Fabricante, P.Pr_IPI,

  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,
  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,

  /* Transportador */
  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,
  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,
  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,
  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,
  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,
  TP.Nr_Placa, OI.Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,
  F.Nm_Funcionario, P.Cd_ClasFiscal, O.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador,
  O.Vl_BaseST, P.Vl_MVA, P.Cd_Barra, E.Tp_Pessoa,
  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, 0.0 as Vl_Despesa, P.Cd_Tributacao,
  Cd_CFOPProduto =
    (
    case
      when ( C.Sg_Estado  = 'ES' ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro
      when ( C.Sg_Estado <> 'ES' ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora
      else O.Cd_CFOP
    end
    ),

  Fl_Emitente = '1', Cd_ModeloFiscal = '01', Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,

  Pr_MVA =
    (
    case
      when ( C.Sg_Estado  = 'ES' ) then T.Pr_MVA_Dentro
      when ( C.Sg_Estado <> 'ES' ) then T.pr_MVA_Fora
    end
    ),
  T.Fl_ISSRetido, OI.xPed, OI.nItemPed, P.Cd_CEST,

  Convert( Int, 0 ) as Nr_CupomFiscal,

  P.Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,

  T.Ds_cBeneficio, T.Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '' ) as refNFe

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Transportador TP
on
  TP.Cd_Transportador = O.Cd_Transportador

left join
  Cidade CT
on
  CT.Cd_Cidade = TP.Cd_Cidade

left join
  CFOP CF
on
  CF.Cd_CFOP = O.Cd_CFOP

where
  O.Cd_Filial    = 1 and
  O.Nr_Orcamento = 1

-- ===== TFRMNOTA.ADODsReceber
declare
  @Cd_Filial SmallInt,
  @Nr_Orcamento Int

select
  @Cd_Filial    = :Cd_Filial,
  @Nr_Orcamento = :Nr_Orcamento

select
  R.Nr_Receber, RP.Nr_Parcela, R.Dt_Emissao, RP.Dt_Vencimento, RP.Vl_Parcela,
  R.Vl_Duplicata, P.Fl_Pagamento

from
  Receber R

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial = R.Cd_Filial and
  RP.Nr_Receber = R.Nr_Receber

inner join
  Portador P
on
  P.Cd_Portador = RP.Cd_Portador

where
  R.Cd_Filial    = @Cd_Filial and
  R.Nr_Orcamento = @Nr_Orcamento and
  R.St_Receber   <> '4'

union

select
  C.Nr_Cheque, 1 as Nr_Parcela, C.Dt_Emissao, C.Dt_Vencimento, C.Vl_Cheque, 
  C.Vl_Cheque, '2' as Fl_Pagamento

from
  Cheque C

where
  C.Cd_Filial    = @Cd_Filial and
  C.Nr_Orcamento = @Nr_Orcamento

order by
  4

-- ===== TFRMNOTA.ADODsTributoAvulso
select
  Mm_ObsNota, Cd_CST

from
  Tributacao

where
  Pr_Contrib = :Pr_Tributo

-- ===== TFRMNOTA.ADODsSaidaParcela
select
  Cd_Filial, Nr_Saida, Nr_Documento, Dt_Vencimento, Vl_Parcela,
  Cd_FormaPagamento

from
  Saida_Parcela

where
  Cd_Filial  = :Cd_Filial and
  Nr_Saida = :Nr_Saida

order by
  Dt_Vencimento

-- ===== TFRMNOTA.ADODsNotaCFG
select
  Cd_Nota, Ds_Nota, Nm_Fonte, Nr_Fonte, Nr_Fatura, Nr_Adicional,
  Nr_Formulario, Nr_Altura_Item, Tp_Nota, Tp_Servico

from
  Nota_CFG

where
  Cd_Nota = :Cd_Nota

-- ===== TFRMNOTA.ADODsPagTotal
declare
  @Cd_Filial SmallInt,
  @Nr_Orcamento Int

select
  @Cd_Filial    = :Cd_Filial,
  @Nr_Orcamento = :Nr_Orcamento

select
  Vl_Dinheiro =
    (
    select 
      sum( Vl_Parcela )

    from
      Orcamento_Parcela

    where
      Cd_Filial    = @Cd_Filial and
      Nr_Orcamento = @Nr_Orcamento and
      Fl_Parcela   = '1'
    ),

  Vl_Boleto =
    (
    select 
      sum( OP.Vl_Parcela )

    from
      Orcamento_Parcela OP

    inner join
      Portador P
    on
      P.Cd_Portador = OP.Cd_Portador and
      P.Fl_Pagamento = '3'                 ----- Boleto

    where
      OP.Cd_Filial    = @Cd_Filial and
      OP.Nr_Orcamento = @Nr_Orcamento and
      OP.Fl_Parcela   = '2'
    ),

  Vl_Duplicata =
    (
    select 
      sum( OP.Vl_Parcela )

    from
      Orcamento_Parcela OP

    inner join
      Portador P
    on
      P.Cd_Portador = OP.Cd_Portador and
      P.Fl_Pagamento = '9'                 ----- Duplicata

    where
      OP.Cd_Filial    = @Cd_Filial and
      OP.Nr_Orcamento = @Nr_Orcamento and
      OP.Fl_Parcela   = '2'
    ),

  Vl_Cartao =
    (
    select 
      sum( Vl_Parcela )

    from
      Orcamento_Parcela

    where
      Cd_Filial    = @Cd_Filial and
      Nr_Orcamento = @Nr_Orcamento and
      Fl_Parcela   = '3'
    ),

  Vl_Cheque =
    (
    select 
      sum( Vl_Parcela )

    from
      Orcamento_Parcela

    where
      Cd_Filial    = @Cd_Filial and
      Nr_Orcamento = @Nr_Orcamento and
      Fl_Parcela   = '4'
    )

-- ===== TFRMNOTA.ADODsPagOrcamento
select
  OP.Cd_Filial, OP.Nr_Orcamento,
  OP.Nr_Prazo, OP.Dt_Vencimento, OP.Vl_Parcela, OP.Fl_Parcela, 
  OP.Nr_Parcela as Nr_ParInterna,
  P.Fl_Pagamento, 

 E.Nr_Documento

from
  Orcamento_Parcela OP
  
left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

left join
  Emitente E
on
  E.Cd_Emitente = P.Cd_Emitente

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMNOTA_CFG.ADODsCampos
select
  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, Nr_Size, St_Campo, Nm_Field

from
  Nota_CFG_Campo

where
  Cd_Nota = :Cd_Nota

order by
  Cd_Grupo, Nm_Campo

-- ===== TFRMNOTA_CFG.ADODsNota
select
  Cd_Nota, Ds_Nota, Nm_Fonte, Nr_Fonte, Nr_Fatura, Nr_Adicional,
  Nr_Formulario, Nr_Altura_Item, Tp_Nota, Tp_Servico

from
  Nota_CFG

where
  Cd_Nota = :Cd_Nota

-- ===== TFRMNOTA_CFG.ADODsSelect
select
  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, Nr_Size, St_Campo, Nm_Field

from
  Nota_CFG_Campo

where
  Cd_Nota  = :Cd_Nota and
  Cd_Campo = :Cd_Campo

-- ===== TFRMOMEDICAO.ADODsDados
select
  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.St_Medicao, OM.Dt_Agenda, OM.Cd_Emitente,
  E.Nm_Emitente, OM.Nr_Endereco, EE.Ds_Titulo, OM.Nm_Contato, OM.Cd_Vendedor, 
  FV.Nm_Funcionario as Nm_Vendedor, OM.Cd_Medidor, FM.Nm_Funcionario as Nm_Medidor,
  OM.Mm_Medicao, OM.Im_Cliente, OM.Im_Projeto, OM.Nr_Orcamento,
  E.Nm_Fantasia

from
  OMedicao OM

inner join
  Emitente E
on
  E.Cd_Emitente = OM.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = OM.Cd_Emitente and
  EE.Nr_Endereco = OM.Nr_Endereco

inner join
  Funcionario FV
on
  FV.Cd_Funcionario = OM.Cd_Vendedor

left join
  Funcionario FM
on
  FM.Cd_Funcionario = OM.Cd_Medidor

where
  OM.Cd_Filial = :Cd_Filial and
  OM.Nr_Medicao = :Nr_Medicao

-- ===== TFRMOMEDICAO.ADODsNavegar
-- Prior
select top 1
  Nr_Medicao

from
  OMedicao

where
  Cd_Filial   = :Cd_Filial and
  Nr_Medicao= :Nr_Medicao

order by
  Nr_Medicao desc

-- ===== TFRMOMEDICAO.ADODsEndView
select
  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,
  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,
  B.Nm_Cidade + ' - ' + B.Sg_Estado  as Dp_Cidade,
  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Nr_Celular_1,
  A.Nr_Celular_2, A.Mm_Observacao, 
  Cast( A.Cd_Rota as VarChar ) + ' - ' + C.Ds_Rota as Dp_Rota,
  A.Ds_Numero

from
  Emitente_Endereco A

inner join
  Cidade B
on
  B.Cd_Cidade = A.Cd_Cidade

left join
  Rota C
on
  C.Cd_Rota = A.Cd_Rota

where
  A.Cd_Emitente = :Cd_Emitente and
  A.Nr_Endereco = :Nr_Endereco

-- ===== TFRMOMEDICAO_FIND.ADODsFind
select
  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.Dt_Agenda, OM.St_Medicao,
  E.Nm_Emitente, OM.Nm_Contato

from
  OMedicao OM

inner join
  Emitente E
on
  E.Cd_Emitente = OM.Cd_Emitente

-- ===== TFRMOMEDICAO_REPORT.ADODsReport
select
  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.St_Medicao, OM.Dt_Agenda, OM.Cd_Emitente,
  E.Nm_Emitente, OM.Nr_Endereco, EE.Ds_Titulo, OM.Nm_Contato, OM.Cd_Vendedor,
  FV.Nm_Funcionario as Nm_Vendedor, OM.Cd_Medidor, FM.Nm_Funcionario as Nm_Medidor,
  OM.Mm_Medicao, EE.Cd_Rota, R.Ds_Rota

from
  OMedicao OM

inner join
  Emitente E
on
  E.Cd_Emitente = OM.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = OM.Cd_Emitente and
  EE.Nr_Endereco = OM.Nr_Endereco
  /* Cd_Rota */

inner join
  Funcionario FV
on
  FV.Cd_Funcionario = OM.Cd_Vendedor

left join
  Funcionario FM
on
  FM.Cd_Funcionario = OM.Cd_Medidor

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

where
  OM.Cd_Filial = :Cd_Filial

-- ===== TFRMOPAF_EXPORTA.ADODsUsuario
select top 5
  U.Cd_Usuario, U.Sh_Usuario,
  case 
    when Exists( select UGA.Cd_Grupo from Usuario_Grupo_Acesso UGA where UGA.Cd_Grupo = U.Cd_Grupo and UGA.Cd_Acesso = 'OPA01' ) then 'A'
    else 'I'
    
  end as Fl_Status,
  
  case 
    when Exists( select UGA.Cd_Grupo from Usuario_Grupo_Acesso UGA where UGA.Cd_Grupo = U.Cd_Grupo and UGA.Cd_Acesso = 'OPA02' ) then '1'
    else '2'
    
  end as Fl_Nivel

from
  Usuario U

-- ===== TFRMOPAF_EXPORTA.ADODsVendedor
select top 5
  Cd_Funcionario, Nm_Funcionario

from
  Funcionario

-- ===== TFRMOPAF_EXPORTA.ADODsCliente
select
  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Numero,
  EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1,
  E.Ds_EMail, EE.Nr_CEP, E.Nr_Insc_Estadual,  C.Cd_IBGE, E.Ds_EMailNFe,
  E.Vl_Limite_Credito

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Nr_Documento > ''

  /* Cd_Grupo */
  /* Cd_SubGrupo */

-- ===== TFRMOPAF_EXPORTA.ADODsProduto
select
  P.Cd_Produto, P.Nm_Produto, P.Nm_Abreviado, P.Sg_Venda,

  case when P.Fl_Ativo = '1' then 'A' else 'I' end as Fl_Status,

  T.Cd_CST,

  case
    when T.Tp_Tributacao = '1' then 'T'
    when T.Tp_Tributacao = '2' then 'F'
    when T.Tp_Tributacao = '3' then 'I'
    when T.Tp_Tributacao = '4' then 'N'

  end as Fl_Tributacao,

  T.Pr_Contrib, 'P' as Fl_IPPT, PP.Vl_Custo, 'U' as Fl_Pesavel,
  'F' as Tp_Produto,

  case when P.Fl_Produto = '2' then ' ' else 'S' end as Fl_Servico,

  case
    when P.Fl_Origem = '1' then '0'
    when P.Fl_Origem = '2' then '1'
    when P.Fl_Origem = '3' then '2'

  end as Fl_Origem,

  P.Cd_ClasFiscal

from
  Produto P

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

-- ===== TFRMOPAF_EXPORTA.ADODsPreco
select
  PT.Cd_Tabela, PP.Cd_Produto, PP.Vl_Venda

from
  Produto_TblPreco PT

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela = PT.Cd_Tabela and
  PP.Vl_Venda > 0.0

inner join 
  Produto P
on
  P.Cd_Produto = PP.Cd_Produto and
  P.Cd_Grupo = 1088

where
  PT.Fl_Ativa = '1' and
  (
  PT.Dt_Termino is null or
  PT.Dt_Termino < :Dt_Atual
  )

order by
  PT.Cd_Tabela, PP.Cd_Produto

-- ===== TFRMOPAF_EXPORTA.ADODsCondicao
select 1 as Cd_Condicao, 'A Vista' as Ds_Condicao
union
select 2 as Cd_Condicao, 'A Prazo' as Ds_Condicao
union
select 3 as Cd_Condicao, 'Cartão' as Ds_Condicao
union
select 4 as Cd_Condicao, 'Cheque' as Ds_Condicao

-- ===== TFRMOPAF_EXPORTA.ADODsForma
select 1 as Cd_Forma, 'Dinheiro' as Ds_Condicao, 'D' as Fl_Tipo,  0 as Nr_Parcela, 'V' as Fl_Condicao, ' ' as Fl_Gerenciador, 'A' as Fl_Ativo, 100.0 as Vl_Limite
union
select 2 as Cd_Forma, 'Cheque'   as Ds_Condicao, 'C' as Fl_Tipo, 72 as Nr_Parcela, 'P' as Fl_Condicao, ' ' as Fl_Gerenciador, 'A' as Fl_Ativo, 0.0   as Vl_Limite
union
select 3 as Cd_Forma, 'Cartão'   as Ds_Condicao, 'T' as Fl_Tipo,  0 as Nr_Parcela, 'P' as Fl_Condicao, 'T' as Fl_Gerenciador, 'A' as Fl_Ativo, 0.0   as Vl_Limite
union
select 4 as Cd_Forma, 'Carteira' as Ds_Condicao, 'E' as Fl_Tipo, 72 as Nr_Parcela, 'P' as Fl_Condicao, ' ' as Fl_Gerenciador, 'A' as Fl_Ativo, 0.0   as Vl_Limite
union
select 5 as Cd_Forma, 'Troco' as Ds_Condicao, 'X' as Fl_Tipo, 0 as Nr_Parcela, 'V' as Fl_Condicao, ' ' as Fl_Gerenciador, 'A' as Fl_Ativo, 100.0   as Vl_Limite

-- ===== TFRMORCAMENTO.ADODsDados
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,
  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,
  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,
  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Nr_Fatura, O.Vl_IPI,
  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, E.Fl_Contribuinte, O.Dt_Fatura,
  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Vl_STB,
  O.Fl_Impresso, O.Nr_Juncao, 
  O.Vl_Baseicms, O.Pr_Icms, O.Vl_Icms, O.Vl_BaseST, O.Cd_Cfop, O.Cd_Transportador,
  O.Mm_Nota, O.Nr_Entrega, E.Nm_Fantasia, O.Mm_Observacao, O.Fl_ConFinal

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Receber R
on
  R.Cd_Filial     = O.Cd_Filial and
  R.Nr_Orcamento = O.Nr_Orcamento and
  R.St_Receber   < '4'

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO.ADODsProduto
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,
  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,
  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,
  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,
  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,
  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,
  P.Fl_Perecivel, G.Fl_Moldura, OI.xPed, OI.nItemPed

from
  Orcamento_Item OI

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

order by
  OI.Nr_Item desc

-- ===== TFRMORCAMENTO.ADODsNavegar
-- First
select top 1
  Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial
order by
  Nr_Orcamento

-- ===== TFRMORCAMENTO.ADODsEmitente
select
  E.Cd_Emitente, E.Nm_Emitente, E.Cd_Credito, E.Mm_Restricao,
  E.Nr_Endereco, E.Fl_Contribuinte, EA.Pr_Contribuinte, EA.Pr_NaoContrib,
  E.Fl_Exportador, EC.Nm_Emitente as Nm_Credito,
  Cast( E.Cd_Credito as VarChar( 8 ) ) + ' - ' + EC.Nm_Emitente as Dp_Credito,
  EC.Mm_Restricao as Mm_Restricao_Titular, C.Sg_Estado,
  E.Cd_Funcionario, F.Nm_Funcionario, ESG.Cd_Tabela, E.Mm_Nota, 
  E.Pr_Desconto, E.Nm_Fantasia,

  E.Nr_Documento, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP, 
  E.Nr_Insc_Estadual, E.Fl_ConFinal

from
  Emitente E

inner join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

inner join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = E.Cd_SubGrupo

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem  = :Sg_Origem and
  EA.Sg_Destino = C.Sg_Estado

left join
  Funcionario F
on
  F.Cd_Funcionario = E.Cd_Funcionario

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TFRMORCAMENTO.ADOCmdDados
insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,
  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,
  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,
  Vl_Coleta_Frete, Vl_Pedido_Frete )

values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, '1', :Tp_Carga,
  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,
  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,
  :Vl_Coleta_Frete, :Vl_Pedido_Frete )

-- ===== TFRMORCAMENTO.ADODsProdSelect
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,
  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, 
  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,
  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,
  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,
  P.Fl_Ativo

from
  Produto P

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Estoque E
on
  E.Cd_Filial = :Cd_Filial and
  E.Cd_Produto = P.Cd_Produto and
  E.Fl_Estoque = :Fl_Estoque

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  P.Fl_Ativo = '1' and
  P.Nm_Produto like :Find

order by
  P.Nm_Produto

-- ===== TFRMORCAMENTO.ADODsUnidLoad
select
  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Produto_Unidade PU

where
  PU.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO.ADODsNFe
select
  N.St_NFe

from
  NFe N

where
  N.Cd_Filial = :Cd_Filial and
  N.Fl_Origem = '1' and
  N.Nr_Origem = :Nr_Orcamento and
  N.St_NFe    > '1'

-- ===== TFRMORCAMENTO_AMBIENTE.ADODsAmbiente
select distinct
  Ds_Ambiente

from
  Orcamento_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Ds_Ambiente <> ''

order by
  Ds_Ambiente

-- ===== TFRMORCAMENTO_BLOQUEIO.ADODsBloqueio
select
  OT.Cd_Filial, OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente,
  OT.Dt_Confirmado, OT.Dt_Emissao, OT.Nm_Funcionario, OT.Vl_Orcamento,
  Ds_Credito =
    ( case
        when exists(
          select
            OB.Cd_Filial

          from
            Orcamento_Bloqueio OB

          where
            OB.Cd_Filial    = OT.Cd_Filial and
            OB.Nr_Orcamento = OT.Nr_Orcamento and
            OB.Tp_Bloqueio  = '1' and
            OB.St_Bloqueio  = '1' ) then 'Sim'
      end
    ),

  Ds_Margem =
    ( case
        when exists(
          select
            OB.Cd_Filial

          from
            Orcamento_Bloqueio OB

          where
            OB.Cd_Filial    = OT.Cd_Filial and
            OB.Nr_Orcamento = OT.Nr_Orcamento and
            OB.Tp_Bloqueio  = '2' and
            OB.St_Bloqueio  = '1' ) then 'Sim'
      end
    ),

  Ds_Estoque =
    ( case
        when exists(
          select
            OB.Cd_Filial

          from
            Orcamento_Bloqueio OB

          where
            OB.Cd_Filial    = OT.Cd_Filial and
            OB.Nr_Orcamento = OT.Nr_Orcamento and
            OB.Tp_Bloqueio  = '3' and
            OB.St_Bloqueio  = '1' ) then 'Sim'
      end
    ),

  Ds_Avulso =
    ( case
        when exists(
          select
            OB.Cd_Filial

          from
            Orcamento_Bloqueio OB

          where
            OB.Cd_Filial    = OT.Cd_Filial and
            OB.Nr_Orcamento = OT.Nr_Orcamento and
            OB.Tp_Bloqueio  = '4' and
            OB.St_Bloqueio  = '1' ) then 'Sim'
      end
    )

from
  Orcamento_Total OT

where
  OT.Cd_Filial    = :Cd_Filial and
  OT.St_Orcamento = '3'

order by
  OT.Cd_Filial, OT.Nr_Orcamento

-- ===== TFRMORCAMENTO_CARGA.ADODsItem
select
  CI.Cd_Filial, CI.Nr_Romaneio, CI.Nr_Orcamento, CI.Nr_Item, CI.Qt_Item,
  OI.Cd_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, P.Nm_Produto,
  OI.Fl_Medida, P.Ps_Produto * CI.Qt_Item as Ps_Item,
  Qt_Entregue =
    (
    select
      sum( Old.Qt_Item )

    from
      Carga_Item Old

    where
      Old.Cd_Filial    = CI.Cd_Filial and
      Old.Nr_Orcamento = CI.Nr_Orcamento and
      Old.Nr_Item      = CI.Nr_Item and
      Old.Nr_Romaneio  < CI.Nr_Romaneio
    )

from
  Carga_Item CI

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial    = CI.Cd_Filial and
  OI.Nr_Orcamento = CI.Nr_Orcamento and
  OI.Nr_Item      = CI.Nr_Item

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

where
  CI.Cd_Filial    = :Cd_Filial and
  CI.Nr_Romaneio  = :Nr_Romaneio and
  CI.Nr_Orcamento = :Nr_Orcamento

order by
  CI.Nr_Item

-- ===== TFRMORCAMENTO_CARGA.ADODsDetalhe
select
  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe,
  CD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe

from
  Carga_Detalhe CD

inner join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = CD.Cd_Filial and
  OD.Nr_Orcamento = CD.Nr_Orcamento and
  OD.Nr_Item      = CD.Nr_Item and
  OD.Nr_Detalhe   = CD.Nr_Detalhe

where
  CD.Cd_Filial    = :Cd_Filial and
  CD.Nr_Romaneio  = :Nr_Romaneio and
  CD.Nr_Orcamento = :Nr_Orcamento and
  CD.Nr_Item      = :Nr_Item

order by
  CD.Nr_Detalhe

-- ===== TFRMORCAMENTO_CARGA.ADODsCarga
select
  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,
  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,
  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,
  C.Ps_Alocado, OC.Nr_Orcamento, C.Ds_Romaneio

from
  Carga_Orcamento OC

inner join
  Carga C
on
  C.Cd_Filial   = OC.Cd_Filial and
  C.Nr_Romaneio = OC.Nr_Romaneio

left join
  Transportador T
on
  T.Cd_Transportador = C.Cd_Transportador

where
  OC.Cd_Filial    = :Cd_Filial and
  OC.Nr_Orcamento = :Nr_Orcamento

order by
  C.Dt_Saida desc

-- ===== TFRMORCAMENTO_CARGA.ADODsOrcamento
select
  OT.Cd_Filial, OT.Nr_Orcamento, OT.Nm_Emitente

from
  Orcamento_Total OT

where
  OT.Cd_Filial = :Cd_Filial and
  OT.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_CARGA.ADODsResumo
select
  CI.Cd_Filial, CI.Nr_Orcamento, CI.Nr_Item, OI.Cd_Produto,
  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, 
  sum( CI.Qt_Item ) as Qt_Entregue

from
  Carga_Item CI

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial    = CI.Cd_Filial and
  OI.Nr_Orcamento = CI.Nr_Orcamento and
  OI.Nr_Item      = CI.Nr_Item

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

where
  CI.Cd_Filial    = :Cd_Filial and
  CI.Nr_Orcamento = :Nr_Orcamento

group by
  CI.Cd_Filial, CI.Nr_Orcamento, CI.Nr_Item, OI.Cd_Produto,
  P.Nm_Produto, OI.Qt_Item, OI.Sg_Unidade

order by
  CI.Nr_Item

-- ===== TFRMORCAMENTO_CONJUNTO_REPORT.ADODsReport
select
  O.Nr_Orcamento, E.Nm_Emitente, OC.Cd_Produto, O.Dt_Conjunto,
  P.Cd_Produto as Cd_Conjunto, P.Nm_Produto as Nm_Conjunto,
  OC.Qt_Item, OC.Nm_Produto, OI.Qt_Item as Qt_Conjunto,
  O.Mm_Observacao

from
  Orcamento O

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial    = O.Cd_Filial and
  OI.Nr_Orcamento = O.Nr_Orcamento

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto and
  P.Fl_Produto = '3'

inner join
  Orcamento_Conjunto OC
on
  OC.Cd_Filial    = OI.Cd_Filial and
  OC.Nr_Orcamento = OI.Nr_Orcamento

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

order by
  OC.Nm_Produto

-- ===== TFRMORCAMENTO_CONJUNTO_REPORT.ADOCmdConjunto
update
  Orcamento

set
  Dt_Conjunto = :Dt_Conjunto

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_COPIA.ADODsNew
select
  max( Nr_Orcamento ) as Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMORCAMENTO_DESCACRES.ADOCmdPercentual
-------------------- Recalculo do valur unitário
declare
  @Cd_Filial SmallInt,
  @Nr_Orcamento Int,  
  @Pr_Aplicar Numeric( 9, 4 )

select
  @Cd_Filial    = :Cd_Filial,
  @Nr_Orcamento = :Nr_Orcamento,  
  @Pr_Aplicar   = :Pr_Aplicar

-------------------- Itens de Venda
update
  Orcamento_Item

set
  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )
  
where
  Cd_Filial    = @Cd_Filial and
  Nr_Orcamento = @Nr_Orcamento 

-------------------- Itens de Conjunto
update
  Orcamento_Conjunto

set
  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )

where
  Cd_Filial    = @Cd_Filial and
  Nr_Orcamento = @Nr_Orcamento

-------------------- Valor total do conjunto nos itens
update
  Orcamento_Item

set
  Vl_Unitario =
    (
    select
      sum( OC.Qt_Item * OC.Vl_Unitario )

    from
      Orcamento_Conjunto OC

    where
      OC.Cd_Filial    = OI.Cd_Filial and
      OC.Nr_Orcamento = OI.Nr_Orcamento and
      OC.Nr_Item      = OI.Nr_Item
    )

from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto and
  P.Fl_Produto = '3'

where
  OI.Cd_Filial    = @Cd_Filial and
  OI.Nr_Orcamento = @Nr_Orcamento

-------------------- Valor dos itens de projeto
update
  Orcamento_Projeto_Item

set
  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )
  
where
  Cd_Filial    = @Cd_Filial and
  Nr_Orcamento = @Nr_Orcamento

-------------------- Valor dos projetos
update
  Orcamento_Projeto

set
  Vl_Projeto =
    (
    select
      sum( OPI.Vl_Unitario * OPI.Qt_Item )

    from
      Orcamento_Projeto_Item OPI

    inner join
      Produto P
    on
      P.Cd_Produto = OPI.Cd_Produto

    where
      OPI.Cd_Filial    = Orcamento_Projeto.Cd_Filial and
      OPI.Nr_Orcamento = Orcamento_Projeto.Nr_Orcamento and
      OPI.Nr_Projeto   = Orcamento_Projeto.Nr_Projeto
    )

where
  Cd_Filial    = @Cd_Filial and
  Nr_Orcamento = @Nr_Orcamento

-- ===== TFRMORCAMENTO_DESCONTO.ADODsProdutos
/*--------------- Cria tabela temporaria para tratamento das informações
if Object_ID( 'TempDB..##OItems' ) is not null
  truncate table ##OItems

else
  create table ##OItems
    (
    Nr_Item SmallInt,
    Cd_Produto Int,
    Nm_Produto VarChar( 120 ),
    Sg_Unidade Char( 2 ),
    Qt_Item Numeric( 12, 3 ),
    Vl_Unitario Numeric( 12, 3 )
    )
*/

select
  Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,
  Vl_Total = Qt_Item * Vl_Unitario

from
  ##OItems

where
  Id_SPID = @@SPID

order by
  Nr_Item

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsDados
select
  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Ds_Item, OD.Qt_Item,
  OD.Vl_Item, OD.Im_Item, O.Vl_Descritivo, O.Vl_Desconto, O.Pr_Desconto,
  O.Pr_Custo, O.Vl_Custo, 
  Dp_Unidade = OD.Sg_Unidade + ' - ' + U.Ds_Unidade

from
  Orcamento_Descritivo OD

inner join
  Orcamento O
on
  O.Cd_Filial    = OD.Cd_Filial and
  O.Nr_Orcamento = OD.Nr_Orcamento

inner join
  Unidade U
on
  U.Sg_Unidade = OD.Sg_Unidade

where
  OD.Cd_Filial    = :Cd_Filial and
  OD.Nr_Orcamento = :Nr_Orcamento and
  OD.Nr_Item      = :Nr_Item

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsEndView
select
  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,
  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,
  B.Nm_Cidade + ' - ' + B.Sg_Estado  as Dp_Cidade,
  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Nr_Celular_1,
  A.Nr_Celular_2, A.Mm_Observacao, 
  Cast( A.Cd_Rota as VarChar ) + ' - ' + C.Ds_Rota as Dp_Rota,
  A.Ds_Numero

from
  Emitente_Endereco A

inner join
  Cidade B
on
  B.Cd_Cidade = A.Cd_Cidade

left join
  Rota C
on
  C.Cd_Rota = A.Cd_Rota

where
  A.Cd_Emitente = :Cd_Emitente and
  A.Nr_Endereco = :Nr_Endereco

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsNavegar
-- First
select top 1
  Nr_Item

from
  Orcamento_Descritivo

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

order by
  Nr_Item

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Fl_Estoque, O.Tp_Carga,
  O.Fl_FormaPagto,
  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,
  Cast( O.Cd_Funcionario as VarChar ) + ' - ' + F.Nm_Funcionario as Dp_Funcionario,
  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,
  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo,
  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia, 
  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega, O.Dt_Confirmado,
  O.Vl_Descritivo,

  case O.Fl_FormaPagto
    when '1' then 'A Vista'
    when '2' then 'A Prazo'
    when '3' then 'Cartão'
    when '4' then 'Cheque'
    when '5' then 'Contra-Apresentação'
    when '6' then 'Multi-parcelado'

  end as Dp_FormaPagto,

  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,
  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,
  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,
  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,
  E.Fl_Exportador, O.Cd_Transportador, E.Nr_Identidade, E.Tp_Pessoa,

  case O.Tp_Carga
    when '1' then 'Normal'
    when '2' then 'Estirado'
    when '3' then 'Industrializado'
    when '4' then 'Especial'

  end as Dp_Carga,

  EEE.Nr_Endereco as Ent_Nr_Endereco,
  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,
  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,
  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + ' - ' + CEE.Nm_Cidade +
     ' - ' + CEE.Sg_Estado as Ent_Dp_Cidade,
  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,
  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,
  EEE.Mm_Observacao as Ent_Mm_Observacao,

  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,
  Cast( EE.Cd_Cidade as VarChar ) + ' - ' + CE.Nm_Cidade + ' - ' + CE.Sg_Estado as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,
  EE.Mm_Observacao as Mm_ObsEndereco

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EEE
on
  EEE.Cd_Emitente = O.Cd_Emitente and
  EEE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade CEE
on
  CEE.Cd_Cidade = EEE.Cd_Cidade

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_EndCobranca

left join
  Cidade CE
on
  CE.Cd_Cidade = EE.Cd_Cidade

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsParcela
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,
  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros

from
  Orcamento_Parcela OP

left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

order by
  OP.Nr_Prazo, OP.Fl_Parcela

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsReport
select
  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Ds_Item, OD.Qt_Item,
  OD.Vl_Item, OD.Im_Item, OD.Vl_Item * OD.Qt_Item as Vl_Total,
  OD.Sg_Unidade

from
  Orcamento_Descritivo OD

where
  OD.Cd_Filial    = :Cd_Filial and
  OD.Nr_Orcamento = :Nr_Orcamento 

order by
  OD.Nr_Item

-- ===== TFRMORCAMENTO_DESCRITIVO.ADODsItem
select
  Cd_Filial, Nr_Orcamento, Nr_Item, Nm_Produto

from
  Orcamento_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

order by
  Cd_Filial, Nr_Orcamento, Nr_Item

-- ===== TFRMORCAMENTO_DETALHE.ADODsDetalhe
select
  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe

from
  #Detalhe

-- ===== TFRMORCAMENTO_DETALHE.ADODsArredonda
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Im_Produto, 
  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,
  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, A.Vl_Arredondamento,
  P.Tp_Preco

from
  Produto P

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_DETALHE.ADODsSubProduto
select 
  Fl_Ativo, Im_SubProduto, Pr_Custo

from
  SubProduto

where
  Cd_SubProduto = :Cd_SubProduto

-- ===== TFRMORCAMENTO_DETALHE.ADODsUnidLoad
select
  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Produto_Unidade PU

where
  PU.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_DETALHE.ADODsNew
select
  max( Nr_Item ) as Nr_Item

from
  Orcamento_Item

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_DETALHE.ADODsDados
select
  OI.Im_SubProduto, OI.Cd_Tributacao, T.Ds_Tributacao

from
  Orcamento_Item OI

left join
  Tributacao T
on
  T.Cd_Tributacao = OI.Cd_Tributacao

where
  OI.Cd_Filial = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento and
  OI.Nr_Item = :Nr_Item

-- ===== TFRMORCAMENTO_DIVISAO.ADODsItem
select
  Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,
  Fl_Confirmado, Qt_Pedido1, Qt_Pedido2

from
  #Divisao

order by
  Nr_Item

-- ===== TFRMORCAMENTO_DIVISAO.ADOCmdDivisao
if Object_ID( 'TempDB..##Divisao' ) is null
  create table ##Divisao
    (
    Nr_SPID Int,
    Nr_Item SmallInt not null,
    Cd_Produto SmallInt null,
    Nm_Produto VarChar ( 80 ) not null,
    Sg_Unidade VarChar ( 2 ) not null,
    Qt_Item Numeric( 18, 3 ) not null,
    Vl_Unitario Numeric( 18, 3 ) not null,
    Fl_Confirmado Char ( 1 ) not null,
    Qt_Pedido1 Numeric( 18, 3 ) null,
    Qt_Pedido2 Numeric( 18, 3 ) null
    )
else
  delete from
    ##Divisao

  where
    Nr_SPID = @@SPID

insert into ##Divisao( Nr_SPID, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade,
   Qt_Item, Vl_Unitario, Fl_Confirmado )

select
  @@SPID, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,
  Fl_Confirmado

from
  Venda_Item

where
  Nr_Venda = :Nr_Venda

-- ===== TFRMORCAMENTO_DIVISAO.ADODsNewOrcamento
select
  max( Nr_Orcamento ) as Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMORCAMENTO_ESTOQUE.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Tp_Carga, O.Cd_Emitente,
  E.Nm_Emitente

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_ESTOQUE.ADODsProduto
select
  OI.Cd_Produto, B.Nm_Produto, OI.Sg_Unidade, B.Sg_Estoque, OI.Qt_Item,
  OI.Qt_Estoque, OI.Qt_Agregado, OI.Nr_Item

from
  Orcamento_Item OI

inner join
  Produto B
on
  B.Cd_Produto = OI.Cd_Produto

where
  OI.Cd_Filial     = :Cd_Filial and
  OI.Nr_Orcamento  = :Nr_Orcamento and
  OI.Fl_Confirmado = '1'

order by
  OI.Nr_Item

-- ===== TFRMORCAMENTO_ESTOQUE_ITEM.ADOCmdEstoque
update
  Orcamento_Item

set
  Qt_Estoque  = :Qt_Estoque,
  Qt_Agregado = :Qt_Agregado

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item      = :Nr_Item

-- ===== TFRMORCAMENTO_ETIQUETA.ADODsSelect
declare
  @Cd_Filial SmallInt,
  @Nr_Orcamento Int

select
  @Cd_Filial    = 2,
  @Nr_Orcamento = 12

-------------------- Cria a #OrcEtItem
if Object_ID( 'TempDB..#OrcEtItem' ) is not null
  truncate table #OrcEtItem

else
  create table #OrcEtItem
    (
    Id_Item Smallint Identity( 1, 1 ),
    Cd_Filial SmallInt,
    Nr_Orcamento Int,
    Nr_Item SmallInt,
    Cd_Produto Integer,
    Nm_Produto VarChar( 100 ),
    Qt_Item numeric( 12, 3 ),
    Nm_SubProduto VarChar( 100 ),
    Fl_Imprimir Char( 1 ),
    Nr_Projeto SmallInt,
    Tp_ItemProjeto Char( 1 ),
    Fl_Medida Char( 1 ),
    Sg_Unidade Char( 2 ),
    Ds_Ambiente VarChar( 50 )
    )

-------------------- Incluir itens do Orcamento ( Serviços e Produtos )
insert into #OrcEtItem( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,
  Nr_Projeto, Qt_Item, Nm_SubProduto, Nm_Produto, Fl_Imprimir, Fl_Medida )

select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, null,
  OI.Qt_Item, SP.Nm_SubProduto,
  case when OI.Cd_Produto is null then P.Nm_Produto else OI.Nm_Produto end,
  '1', OI.Fl_Medida
  
from
  Orcamento_Item OI

inner Join 
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Fl_Produto */

left join
  SubProduto SP
on
  SP.Cd_SubProduto = OI.Cd_SubProduto

where
  OI.Cd_Filial     = @Cd_Filial and
  OI.Nr_Orcamento  = @Nr_Orcamento and
  OI.Fl_Confirmado = '1'

select
  Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto, Qt_Item, Nm_SubProduto, Fl_Imprimir,
  Nr_Projeto, Tp_ItemProjeto, Fl_Medida, Sg_Unidade, Ds_Ambiente, Id_Item

from
  #OrcEtItem

order by
  Nr_Projeto, Nr_Item

-- ===== TFRMORCAMENTO_ETIQUETA.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,
  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,
  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,
  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Fl_Estoque, O.Nr_Fatura, O.Vl_IPI,
  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, O.Nr_Entrega, O.Nr_Pedido_emitente,
  O.Dt_Confirmado

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Receber R
on
  R.Nr_Orcamento = O.Nr_Orcamento and
  R.St_Receber   < '4'

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_ETIQUETA.ADODsDetalhe
declare
  @Cd_Filial SmallInt,
  @Nr_Orcamento Int,
  @Nr_Item SmallInt,
  @Nr_Projeto SmallInt

select
  @Cd_Filial    = :Cd_Filial,
  @Nr_Orcamento = :Nr_Orcamento,
  @Nr_Item      = :Nr_Item,
  @Nr_Projeto   = :Nr_Projeto

-------------------- Itens do detalhamento
select
  Cd_Filial, Nr_Orcamento, Nr_Item, @Nr_Projeto as Nr_Projeto,
  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe

from
  Orcamento_Detalhe

where
  Cd_Filial    = @Cd_Filial and
  Nr_Orcamento = @Nr_Orcamento and
  Nr_Item      = @Nr_Item and
  @Nr_Projeto is null

union

-------------------- Itens de vidro do projeto
select
  OPI.Cd_Filial, OPI.Nr_Orcamento, OPI.Nr_Item, OPI.Nr_Projeto,
  1 as Nr_Detalhe, Qt_Projeto * 1.0, 0 as Nr_Comprimento, OPI.Nr_Largura, OPI.Nr_Altura,
  '' as Ds_Detalhe

from
  Orcamento_Projeto_Item OPI

inner join
  Orcamento_Projeto OP
on
  OP.Cd_Filial    = OPI.Cd_Filial and
  OP.Nr_Orcamento = OPI.Nr_Orcamento and
  OP.Nr_Projeto   = OPI.Nr_Projeto

where
  OPI.Cd_Filial    = @Cd_Filial and
  OPI.Nr_Orcamento = @Nr_Orcamento and
  OPI.Nr_Projeto   = @Nr_Projeto and
  OPI.Nr_Item      = @Nr_Item and
  OPI.Tp_Item      = '0'

order by
  Nr_Detalhe

-- ===== TFRMORCAMENTO_FATURA.ADODsParcela
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, P.Nm_Portador, OP.Nr_Prazo,
  OP.Dt_Vencimento, OP.Vl_Parcela, P.Tp_Cobranca, P.Cd_Banco, P.Fl_Pagamento,
  P.Ds_Livre, OP.Fl_Parcela,

  OP.Cd_Banco as Cd_BancoCheque,
  OP.Cd_Agencia as Cd_AgenciaCheque, OP.Nr_Conta, OP.Nr_Cheque, OP.Dt_Emissao, OP.Nr_Documento,
  OP.Nm_Cliente, OP.Nr_Telefone,

  P.Pr_TxAdmCartao, P.Cd_Emitente, P.Vl_Tarifa, P.Cd_Agencia, P.Cd_Carteira, 
  P.Nr_Conta As Nr_ContaPortador

from
  Orcamento_Parcela OP

left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

order by
  OP.Nr_Prazo

-- ===== TFRMORCAMENTO_FATURA.ADODsReceber
select
  max( Nr_Receber ) as NewReceber

from
  Receber

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMORCAMENTO_FATURA.ADODsEndereco
select
  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,
  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade, B.Sg_Estado,
  B.Nm_Cidade + ' - ' + B.Sg_Estado as  Dp_Cidade,
  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao

from
  Emitente_Endereco A

inner join
  Cidade B
on
  B.Cd_Cidade = A.Cd_Cidade

where
  A.Cd_Emitente = :Cd_Emitente and
  A.Nr_Endereco = :Nr_Endereco

-- ===== TFRMORCAMENTO_FATURA.ADODsNFItem
select
  A.Cd_Produto, A.Nm_Produto, A.Sg_Unidade, A.Qt_Item,
  A.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib,
  T.Tp_Tributacao, A.Qt_Estoque, A.Qt_Agregado, B.Sg_Estoque

from
  Orcamento_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Tributacao T
on
  T.Cd_Tributacao = B.Cd_Tributacao

where
  A.Cd_Filial     = :Cd_Filial and
  A.Nr_Orcamento  = :Nr_Orcamento and
  A.Fl_Confirmado = '1'

order by
  A.Nr_Item

-- ===== TFRMORCAMENTO_FATURA.ADODsNota
select
  A.Cd_Emitente, B.Nm_Emitente, B.Tp_Pessoa, B.Nr_Documento,
  B.Nr_Insc_Estadual, A.Vl_Pedido_Frete, A.Vl_Pedido, B.Fl_Contribuinte, 
  B.Fl_Exportador, EA.Pr_Contribuinte, EA.Pr_NaoContrib, 
  A.Fl_FormaPagto, A.Nr_Endereco, A.Cd_CFOP,
  A.Cd_Transportador, A.Ds_Especie, A.Ds_Marca, A.Ds_Quantidade,
  A.Fl_Frete, A.Ps_Pedido, A.Ps_Liquido, A.Mm_Nota, A.Nr_Placa,
  OT.Vl_Orcamento, A.Fl_ConFinal, B.Ds_EmailCob, A.finNfe, A.natOp

from
  Orcamento A

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial     = A.Cd_Filial and
  OT.Nr_Orcamento = A.Nr_Orcamento

left join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

left join
  Emitente_Endereco C
on
  C.Cd_Emitente = A.Cd_Emitente and
  C.Nr_Endereco = A.Nr_Endereco

left join
  Cidade D
on
  D.Cd_Cidade = C.Cd_Cidade

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem = :Sg_Origem and
  EA.Sg_Destino = D.Sg_Estado

where
  A.Cd_Filial    = :Cd_Filial and
  A.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_FATURA.ADODsCheque
select
  max( Id_Cheque ) as Id_Cheque

from
  Cheque

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMORCAMENTO_FATURA_INFORMA.ADOCmdFatura
-- Muda a situação do Orçamento
update
  Orcamento

set
  Dt_Fatura        = :Dt_Fatura,
  Cd_Serie         = :Cd_Serie,
  Nr_Fatura        = :Nr_Fatura,
  Cd_Transportador = :Cd_Transportador,
  Dt_Saida         = :Dt_Saida,
  Ds_Quantidade    = :Ds_Quantidade,
  Ds_Especie       = :Ds_Especie,
  Ds_Marca         = :Ds_Marca,
  Nr_ECF           = :Nr_ECF,
  Ps_Pedido        = :Ps_Pedido,
  Ps_Liquido       = :Ps_Liquido,
  Fl_Frete         = :Fl_Frete,
  Nr_Placa         = :Nr_Placa,
  finNFe           = :finNFe,
  natOp            = :natOp

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_FATURA_INFORMA.ADODsOrcamento
select
  Cd_Serie, Nr_Fatura, Dt_Fatura, Nr_ECF, Cd_Transportador, Nr_Placa,
  Ps_Pedido, Ds_Quantidade, Ds_Especie, Dt_Saida, Ds_Marca, Ps_Liquido,
  Fl_Frete, finNFe, natOp

from
  Orcamento

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_FECHAMENTO.ADODsOrcaFecha
select
  O.Nr_Orcamento, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente, O.Nr_Endereco,
  E.Cd_Portador,  E.Nr_Pagamento, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,
  O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Fl_FormaPagto,
  O.Vl_IPI, O.Nr_Pedido_Emitente, O.Mm_Observacao, O.Nm_Contato,
  O.Mm_Nota, O.Cd_CFOP, C.Sg_Estado, O.Cd_Transportador, O.Ds_Quantidade,
  O.Ds_Especie, O.Ds_Marca, O.Fl_Frete, O.Nr_Entrega, O.Nr_Validade,
  O.Cd_Funcionario, O.Ps_Liquido, O.Nr_Placa, O.Vl_Stb, O.Dt_Emissao,
  O.Fl_Producao, O.Fl_ConFinal, E.Fl_ConFinal as Fl_ConFinalEmitente,

  Qt_Pecas =
    coalesce(
    (select
      sum( OD.Qt_Item )

    from
      Orcamento_Item OI

    inner join
      Orcamento_Detalhe OD
    on
      OD.Cd_Filial    = OI.Cd_Filial and
      OD.Nr_Orcamento = OI.Nr_Orcamento and
      OD.Nr_Item      = OI.Nr_Item

    where
      OI.Cd_Filial    = O.Cd_Filial and
      OI.Nr_Orcamento = O.Nr_Orcamento
    ), 0.0 ) +
    coalesce( (
    select
      sum( OI.Qt_Item )

    from
      Orcamento_Item OI

    where
      OI.Cd_Filial    = O.Cd_Filial and
      OI.Nr_Orcamento = O.Nr_Orcamento and
      not exists(
        select
          OD.Cd_Filial

        from
          Orcamento_Detalhe OD

        where
          OD.Cd_Filial    = OI.Cd_Filial and
          OD.Nr_Orcamento = OI.Nr_Orcamento and
          OD.Nr_Item      = OI.Nr_Item
        ) ), 0.0 )

from
  Orcamento O

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade C
on 
  C.Cd_Cidade = EE.Cd_Cidade

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_FECHAMENTO.ADODsParcela
/*
-- Cria tabela temporaria
create table #orcpar
  (
  cd_filial smallint,
  nr_orcamento int,
  nr_prazo smallint,
  fl_parcela char( 1 ),
  nr_parcela smallint,
  cd_portador smallint,
  dt_vencimento smalldatetime,
  vl_parcela numeric( 12, 2 ),
  cd_banco varchar( 3 ),
  cd_agencia varchar( 4 ),
  nr_conta varchar( 10 ),
  nr_cheque int,
  dt_emissao smalldatetime,
  nr_documento varchar( 14 ),
  nm_cliente varchar( 50 ),
  nr_telefone varchar( 10 ),
  nr_sequencia smallint identity( 1, 1 ),
  cAut VarChar( 20 )
  );
*/
select
  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,
  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,
  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna,
  OP.cAut

from
  #OrcPar OP
  
left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Fl_Parcela >= :Fl_ParIni and
  OP.Fl_Parcela <= :Fl_ParFim

order by
  OP.Nr_Prazo, OP.Nr_Parcela

-- ===== TFRMORCAMENTO_FECHAMENTO.ADODsComissao
select
  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Funcionario, F.Nm_Funcionario

from
  Orcamento_Comissao OC

inner join
  Funcionario F
on
  F.Cd_Funcionario = OC.Cd_Funcionario

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_FECHAMENTO.ADODsFindPedido
select
  Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial and
  Cd_Emitente = :Cd_Emitente and
  Nr_Pedido_Emitente = :Nr_Pedido_Emitente

-- ===== TFRMORCAMENTO_FECHAMENTO_CHEQUE.ADODsCheque
select
  max( Nr_Parcela ) as NewPar

from
  #OrcPar

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Prazo     = :Nr_Prazo

-- ===== TFRMORCAMENTO_FIND.ADODsFind
select /* Limite */
  OT.Nr_Orcamento, OT.St_Orcamento, OT.Dt_Emissao, OT.Cd_Emitente, OT.Nm_Emitente,
  OT.Vl_Orcamento as Vl_Pedido, OT.Cd_Filial, OT.Nm_Funcionario, OT.Nr_Fatura,
  O.Nr_Pedido_Emitente, O.Nr_ECF

from
  Orcamento_Total OT

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento
  /* Pedido_Cliente */

where
  OT.Cd_Filial    = :Cd_Filial
  /* Condicao */

order by
  OT.Nr_Orcamento

-- ===== TFRMORCAMENTO_FIND.ADODsLaboratorio
select distinct
  OI.Cd_Filial, OI.Nr_Orcamento, P.Cd_Laboratorio, L.Nm_Laboratorio, OP.Ds_Condicao, 
  OP.Tp_Frete, OP.Cd_Transportador, T.Nm_Transportador

from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

inner join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial      = OI.Cd_Filial and
  OP.Nr_Orcamento   = OI.Nr_Orcamento and
  OP.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Transportador T
on
  T.Cd_Transportador = OP.Cd_Transportador  
where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_ITEM.ADODsUnidade
select
  PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,
  ( E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Saida - E.Qt_Balcao - E.Qt_Reserva ) / PU.Nr_Fator as Qt_Estoque,
  PU.Nr_Fator * PU.Nr_Indice * :Vl_Unitario as Vl_Preco,
  PU.Nr_Fator * PU.Nr_Indice * :Vl_Custo as Vl_Custo

from
  Produto_Unidade PU

inner join
  Unidade U
on
  U.Sg_Unidade = PU.Sg_Unidade

left join
  Estoque E
on
  E.Cd_Filial  = :Cd_Filial and
  E.Cd_Produto = PU.Cd_Produto

where
  PU.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_ITEM.ADODsItem
-- Último item do orçamento
select
  max( Nr_Item ) as Nr_Item

from
  Orcamento_Item

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_ITEM.ADODsConjunto
select
  OC.Cd_Produto, P.Nm_Produto, OC.Sg_Unidade, E.Qt_Liquido_Venda, OC.Qt_Item,
  OC.Vl_Unitario, OC.Nm_Produto as Nm_Item, OC.Cd_OldProduto, OC.Vl_Venda

from
  #Orcamento_Conjunto_TMP OC

inner join
  Produto P
on
  P.Cd_Produto = OC.Cd_Produto

left join
  Estoque_Saldo E
on
  E.Cd_Filial  = @Cd_Filial and
  E.Cd_Produto = OC.Cd_Produto 

where
  OC.Cd_Filial    = @Cd_Filial and
  OC.Nr_Orcamento = :Nr_Orcamento

order by
  P.Nm_Produto

-- ===== TFRMORCAMENTO_ITEM.ADODsDados
select
  OI.Im_SubProduto, OI.Cd_Tributacao, T.Ds_Tributacao

from
  Orcamento_Item OI

left join
  Tributacao T
on
  T.Cd_Tributacao = OI.Cd_Tributacao

where
  OI.Cd_Filial = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento and
  OI.Nr_Item = :Nr_Item

-- ===== TFRMORCAMENTO_ITEM_CONJUNTO.ADOCmdConjunto
update
  #Orcamento_Conjunto_TMP

set
  Nm_Produto    = :Nm_Produto,
  Cd_OldProduto = :Cd_OldProduto,
  Cd_Produto    = :Cd_ProdutoNew,
  Qt_Item       = :Qt_Item

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Cd_Produto   = :Cd_Produto

-- ===== TFRMORCAMENTO_JUNCAO.ADODsItens
select
  Nr_Item, Cd_Produto, Sg_Unidade, Nm_Produto, Vl_Unitario, Qt_Item, Qt_Estoque,
  Qt_Agregado, Qt_Imp_Item, Vl_Imp_Unit, Sg_Imp_Unid

from
  #Juncao

order by
  Cd_Produto

-- ===== TFRMORCAMENTO_JUNCAO_ITEM.ADODsEstoque
select
  A.Sg_Unidade,
  Qt_Estoque = ( B.Qt_Entrada - B.Qt_Saida - B.Qt_Reserva ) / A.Nr_Fator,
  Vl_Unitario = C.Vl_Venda * A.Nr_Fator 

from
  Produto_Unidade A

inner join
  Estoque B
on
  B.Fl_Estoque = :Fl_Estoque and
  B.Cd_Produto = A.Cd_Produto

left join
  Produto_Preco C
on
  C.Cd_Tabela  = :Cd_Tabela and
  C.Cd_Produto = A.Cd_Produto

where
  A.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_JUNCAO_VENDA.ADODsOrcamento
-------------------- Cria tabela com os orçamentos
if Object_ID( 'TempDB..##JuncaoVD' ) is null
  create table ##JuncaoVD
    (
    Nr_SPID Int,
    Nr_Orcamento Int,
    Dt_Emissao SmallDateTime,
    Vl_Orcamento Numeric( 12, 3 ),
    Cd_Funcionario SmallInt,
    Nm_Funcionario VarChar( 50 ),
    Fl_Juncao Char( 1 )
    )

else
  delete from ##JuncaoVD where Nr_SPID = @@SPID

-------------------- Cria tabela com os orçamentos
insert into ##JuncaoVD( Nr_SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento,
  Cd_Funcionario, Nm_Funcionario, Fl_Juncao )
select
  @@SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario, Nm_Funcionario, '1'

from
  Orcamento_Total

where
  St_Orcamento = '5'                         -- Somente Orçamentos em Estoque Reservado

select
  Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario, Nm_Funcionario, Fl_Juncao

from
  ##JuncaoVD

where
  Nr_SPID = @@SPID

order by
  Nr_Orcamento

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsAnalitico
select
  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto,
  sum( OI.Vl_Venda ) as Vl_Venda, sum( OI.Qt_Estoque ) as Qt_Vendido,
  L.Pr_Comissao

from
  Orcamento O

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

group by
  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto, L.Pr_Comissao

order by
  P.Cd_Laboratorio, L.Nm_Laboratorio, 5 desc

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsSintetico
select
  P.Cd_Laboratorio, L.Nm_Laboratorio,
  sum( OI.Vl_Venda ) as Vl_Venda,
  count( distinct OI.Nr_Orcamento ) as Qt_Venda
from
  Orcamento O

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Cd_Laboratorio */

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  O.Cd_Filial    = :Cd_Filial and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

group by
  P.Cd_Laboratorio, L.Nm_Laboratorio

order by
  3 desc

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsCliAnalitico
select
  L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, F.Nm_Funcionario,
  sum( OI.Vl_Venda::::Numeric(12,3) ) as Vl_Orcamento

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Laboratorio */

inner join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  O.Cd_Filial  = :Cd_Filial and
  O.Dt_Fatura >= :Dt_Start and
  O.Dt_Fatura  < :Dt_End

group by
    L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura,
    F.Nm_Funcionario

order by
  L.Nm_Laboratorio, O.Dt_Fatura, O.Nr_Orcamento

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsCliSintetico
select
  L.Nm_Laboratorio, E.Nm_Emitente,
  sum( OI.Vl_Venda ) as Vl_Orcamento,
  count( distinct OI.Nr_Orcamento ) as Qt_Orcamento

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Laboratorio */

inner join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  O.Cd_Filial    = :Cd_Filial and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

group by
    L.Nm_Laboratorio, E.Nm_Emitente

order by
  L.Nm_Laboratorio, E.Nm_Emitente

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsCidade
select
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade, Sg_Estado,
  sum( Qt_Vendido ) as Qt_Vendido,
  sum( Vl_Vendido ) as Vl_Vendido
  
from
  #LabReport
  
group by
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade, Sg_Estado
  
order by
  Nm_Laboratorio, Cd_Laboratorio, 7 desc

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsProduto
select
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,
  Cd_Produto, Nm_Produto, Sg_Unidade,
  sum( Qt_Vendido ) as Qt_Vendido,
  sum( Vl_Vendido ) as Vl_Vendido
  
from
  #LabReport
  
group by
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,
  Cd_Produto, Nm_Produto, Sg_Unidade
  
order by
  Nm_Laboratorio, Cd_Laboratorio, Nm_Cidade, Cd_Cidade, 8 desc

-- ===== TFRMORCAMENTO_LABORATORIO.ADODsCliente
select
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,
  Cd_Emitente, Nm_Emitente, 
  sum( Qt_Vendido ) as Qt_Vendido,
  sum( Vl_Vendido ) as Vl_Vendido
  
from
  #LabReport
  
group by
  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,
  Cd_Emitente, Nm_Emitente
  
order by
  Nm_Laboratorio, Cd_Laboratorio, Nm_Cidade, Cd_Cidade, 8 desc

-- ===== TFRMORCAMENTO_MOLDURA.ADODsMoldura
select
  Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura

from
  ##Moldura

where
  Nr_SPID = @@SPID

order by
  Nr_Moldura

-- ===== TFRMORCAMENTO_MOLDURA.ADODsMoldParam
select
  Nr_MoldEspessura, Nr_MoldPerda

from
  Produto

where
  Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_NEW.ADOCmdDados
insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,
  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,
  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,
  Vl_Coleta_Frete, Vl_Pedido_Frete )

values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, '1',  :Tp_Carga,
  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,
  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,
  :Vl_Coleta_Frete, :Vl_Pedido_Frete )

-- ===== TFRMORCAMENTO_NEW.ADODsNavegar
-- First
select top 1
  Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial
order by
  Nr_Orcamento

-- ===== TFRMORCAMENTO_NEW.ADODsProduto
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,
  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,
  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,
  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,
  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,
  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,
  P.Fl_Perecivel, G.Fl_Moldura, 

  OI.xPed, OI.nItemPed,

  Coalesce( OI.Cd_Tributacao, P.Cd_Tributacao ) as Cd_Tributacao,
  T.Ds_Tributacao

from
  Orcamento_Item OI

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

left join
  Tributacao T
on
  T.Cd_Tributacao = Coalesce( OI.Cd_Tributacao, P.Cd_Tributacao )

where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

order by
  OI.Nr_Item desc

-- ===== TFRMORCAMENTO_NEW.ADODsEmitente
select
  E.Cd_Emitente, E.Nm_Emitente, E.Cd_Credito, E.Mm_Restricao,
  E.Nr_Endereco, E.Fl_Contribuinte, EA.Pr_Contribuinte, EA.Pr_NaoContrib,
  E.Fl_Exportador, EC.Nm_Emitente as Nm_Credito,
  Cast( E.Cd_Credito as VarChar( 8 ) ) + ' - ' + EC.Nm_Emitente as Dp_Credito,
  EC.Mm_Restricao as Mm_Restricao_Titular, C.Sg_Estado,
  E.Cd_Funcionario, F.Nm_Funcionario, ESG.Cd_Tabela, E.Mm_Nota, 
  E.Pr_Desconto, E.Nm_Fantasia,

  E.Nr_Documento, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP, 
  E.Nr_Insc_Estadual

from
  Emitente E

inner join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

inner join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = E.Cd_SubGrupo

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Estado_Aliquota EA
on
  EA.Sg_Origem  = :Sg_Origem and
  EA.Sg_Destino = C.Sg_Estado

left join
  Funcionario F
on
  F.Cd_Funcionario = E.Cd_Funcionario

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TFRMORCAMENTO_NEW.ADODsProdSelect
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,
  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, 
  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,
  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,
  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,
  P.Fl_Ativo

from
  Produto P

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Estoque E
on
  E.Cd_Filial = :Cd_Filial and
  E.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  P.Fl_Ativo = '1' and
  P.Nm_Produto like :Find

order by
  P.Nm_Produto

-- ===== TFRMORCAMENTO_NEW.ADODsUnidLoad
select
  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Produto_Unidade PU

where
  PU.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_NEW.ADODsDados
select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, 
  O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario,
  O.Fl_FormaPagto, O.Nr_Endereco, EE.Ds_Titulo, O.Vl_Coleta_Frete, O.Ps_Coleta,
  O.Vl_Coleta, O.Mg_Coleta, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,
  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, O.Dt_Fatura, O.Nr_Fatura,
  O.Cd_Serie, EC.Cd_Credito, EC.Vl_Limite_Credito, O.Vl_BaseICMS, O.Pr_ICMS,
  O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, R.Nr_Receber, O.Nr_ECF, E.Fl_Exportador,
  Cast( EC.Cd_Emitente as VarChar( 5 ) ) + ' - ' + EC.Nm_Emitente as Dp_Credito,
  C.Sg_Estado, E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Ds_EMail,
  O.Mm_Nota, O.Cd_CFOP + ' - ' + CF.Ds_CFOP as Dp_CFOP, O.Vl_ISS,
  Cast( O.Cd_Transportador as VarChar( 6 ) ) + ' - ' + T.NM_Transportador as Dp_Transportador,
  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Nr_Entrega, 
  O.Nr_Validade, O.Dt_Confirmado, O.Cd_Usuario, O.Vl_Servico, O.Ps_Liquido,
  O.Vl_BaseST, O.Dt_Conjunto, E.Cd_Portador, O.Fl_Impresso, E.Nm_Fantasia, O.Nr_Juncao,
  O.Cd_Transportador, O.Cd_CFOP, CF.Ds_CFOP, T.Nm_Transportador, O.Nr_Placa,
  O.Fl_Producao, O.Fl_ConFinal,
  
  Vl_Projetos = 
    (
    select
      sum( OP.Qt_Projeto * OP.Vl_Projeto ) 

    from
      Orcamento_Projeto OP

    where
      OP.Cd_Filial    = O.Cd_Filial and
      OP.Nr_Orcamento = O.Nr_Orcamento
     )

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

left join
  Receber R
on
  R.Cd_Filial     = O.Cd_Filial and
  R.Nr_Orcamento = O.Nr_Orcamento and
  R.St_Receber   < '4'

left join
  CFOP CF
on
  CF.Cd_CFOP = O.Cd_CFOP

left join
  Transportador T
on
  T.Cd_Transportador = O.Cd_Transportador

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_NEW.ADODsFindPedido
select
  Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial and
  Cd_Emitente = :Cd_Emitente and
  Nr_Pedido_Emitente = :Nr_Pedido_Emitente

-- ===== TFRMORCAMENTO_NEW.ADODsDetalhe
select
  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe,
  OD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe

from
  Orcamento_Detalhe OD

where
  OD.Cd_Filial    = :Cd_Filial and
  OD.Nr_Orcamento = :Nr_Orcamento and
  OD.Nr_Item      = :Nr_Item 

order by
    OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe

-- ===== TFRMORCAMENTO_NEW.ADODsComissao
select
  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Funcionario, F.Nm_Funcionario

from
  Orcamento_Comissao OC

inner join
  Funcionario F
on
  F.Cd_Funcionario = OC.Cd_Funcionario

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_NEW.ADODsPacelas
select
  OP.Cd_Filial, OP.Nr_Orcamento,
  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,
  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,
  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna

from
  Orcamento_Parcela OP
  
left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

order by
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Prazo, OP.Nr_Parcela

-- ===== TFRMORCAMENTO_NEW.ADODsJuncao
select
  O.Cd_Filial, O.Nr_Orcamento, O.Cd_Emitente, OT.Nm_Emitente, OT.Nm_Funcionario,
  OT.Vl_Orcamento

from
  Orcamento O

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = O.Cd_Filial and
  OT.Nr_Orcamento = O.Nr_Orcamento

where
  O.Cd_Filial = :Cd_Filial and
  O.Nr_Juncao = :Nr_Orcamento

order by
  O.Cd_Filial, O.Nr_Orcamento

-- ===== TFRMORCAMENTO_NEW.ADODsNFe
select
  N.St_NFe

from
  NFe N

where
  N.Cd_Filial = :Cd_Filial and
  N.Fl_Origem = '1' and
  N.Nr_Origem = :Nr_Orcamento and
  N.St_NFe    > '1'

-- ===== TFRMORCAMENTO_OLD.ADODsOldNegocio
select
  O.Nr_Orcamento, O.Dt_Emissao, OI.Qt_Item, OI.Sg_Unidade, OI.Vl_Unitario,
  OI.Vl_Unitario * OI.Qt_Item as Vl_Total, O.St_Orcamento,
  P.Sg_Estoque,
  OI.Qt_Item * PU.Nr_Fator as Qt_Estoque,
  OI.Vl_Unitario * PU.Nr_Fator as Vl_Estoque

from
  Orcamento O

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial = O.Cd_Filial and
  OI.Nr_Orcamento = O.Nr_Orcamento and
  OI.Cd_Produto   = :Cd_Produto

inner join
  Produto_Unidade PU
on
  PU.Cd_Produto = OI.Cd_Produto and
  PU.Sg_Unidade = OI.Sg_Unidade

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

where
  O.Cd_Filial    = :Cd_Filial and
  O.Cd_Emitente  = :Cd_Emitente and
  O.Nr_Orcamento < :Nr_Orcamento

order by
  O.Nr_Orcamento desc

-- ===== TFRMORCAMENTO_OS.ADODsReport
declare @Cd_Filial SmallInt,
@Nr_Orcamento int

select @Cd_Filial = :Cd_Filial,
@Nr_Orcamento = :Nr_ORcamento
if Object_ID( 'TempDB..##OrdemServ' ) is null
  create table ##OrdemServ
    (
    Nr_Orcamento Int,
    Nr_Item SmallInt,
    Fl_Imprimir char( 1 )
    )

else
  truncate table ##OrdemServ

insert into ##OrdemServ
  select
    OI.Nr_Orcamento, OI.Nr_Item, case when OI.Fl_OrdemServico = '2' then '2' else '1' end

  from
    Orcamento_Item OI

  where
    OI.Cd_Filial     = @Cd_Filial and
    OI.Nr_Orcamento  = @Nr_Orcamento and
    OI.Fl_Confirmado = '1'

select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.Dt_Confirmado, O.Nr_Entrega,
  O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario, 
  O.Nm_Contato, O.Mm_Observacao as Mm_Pedido,

  OI.Nr_Item, OI.Ds_Ambiente, OI.Cd_Produto, P.Nm_Produto, OI.Qt_Item,
  OI.Sg_Unidade, OI.Fl_OrdemServico, OS.Fl_Imprimir, OI.Fl_Medida,
  P.Ps_Produto * OI.Qt_Item as Ps_Produto,  

  EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,
  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade, EE.Ds_Numero,
  C.Nm_Cidade + ' - ' + C.Sg_Estado  as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao,
  EE.Nr_Celular_1, EE.Nr_Celular_2,

  P.Nr_MoldPerda, P.Nr_MoldEspessura

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario
  
inner join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Fl_Produto */                ----- Produto/Serviço

inner join
  ##OrdemServ OS
on
  OS.Nr_Orcamento = OI.Nr_Orcamento and
  OS.Nr_Item      = OI.Nr_Item
  
left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  O.Cd_Filial    = @Cd_Filial and
  O.Nr_Orcamento = @Nr_Orcamento

order by
  O.Cd_Filial, O.Nr_Orcamento, OI.Nr_Item, OI.Ds_Ambiente

-- ===== TFRMORCAMENTO_OS.ADODsDetalhe
select
  Cd_Filial, Nr_Orcamento, Nr_Item,
  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe

from
  Orcamento_Detalhe

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item = :Nr_Item

order by
  Nr_Item

-- ===== TFRMORCAMENTO_OS.ADODsMoldura
select
  Cd_Filial, Nr_Orcamento, Nr_Item,
  Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura

from
  Orcamento_Moldura

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item = :Nr_Item

order by
  Nr_Moldura

-- ===== TFRMORCAMENTO_PAGAMENTO.ADODsLaboratorio
select distinct
  P.Cd_Laboratorio, L.Nm_Laboratorio, OP.Ds_Condicao, OP.Tp_Frete,
  OP.Cd_Transportador, T.Nm_Transportador, Cast( OP.Mm_Observacao as VarChar( 5000 ) ) as Mm_Observacao,
  OP.Dt_Conf_Representada, OP.Dt_Saida_Representada, OP.Dt_Conf_Emitente,
  L.Ds_EMail


from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

inner join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial      = OI.Cd_Filial and
  OP.Nr_Orcamento   = OI.Nr_Orcamento and
  OP.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Transportador T
on
  T.Cd_Transportador = OP.Cd_Transportador  
where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_PAGAMENTO.ADODsCliente
select
  E.Nm_Emitente, E.DS_EMail

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  O.Cd_Filial     = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_PARCELA.ADODsParFind
select
  Cd_Filial

from
  Orcamento_Parcela

where
  Cd_Filial   = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Prazo    = :Nr_Prazo

-- ===== TFRMORCAMENTO_PARCELA.ADODsParNew
select
  max( Nr_Parcela ) as Nr_Parcela

from
  TableName

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Prazo     = :Nr_Prazo

-- ===== TFRMORCAMENTO_PERIMETRO.ADODsDetalhe
select
  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe

from
  #Detalhe

-- ===== TFRMORCAMENTO_PERIMETRO.ADODsArredonda
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Im_Produto, 
  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,
  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, A.Vl_Arredondamento,
  P.Tp_Preco

from
  Produto P

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_PERIMETRO.ADODsSubProduto
select 
  Fl_Ativo, Im_SubProduto, Pr_Custo

from
  SubProduto

where
  Cd_SubProduto = :Cd_SubProduto

-- ===== TFRMORCAMENTO_PERIMETRO.ADODsUnidLoad
select
  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Produto_Unidade PU

where
  PU.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_PERIMETRO.ADODsItem
select
  Max( Nr_Item ) as NewItem

from
  Orcamento_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_PREVENTREGA.ADODsReport
--------------- Pela OServico
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

select
  O.Cd_Filial, O.Nr_Orcamento, Concat( O.Cd_Emitente, ' - ', E.Nm_Emitente, ' - OS ', OS.Nr_OS ) as Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,
  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento, OS.Dt_Entrega as Dt_PrevEntrega

from
  OServico OS

inner join
  Orcamento O
on
  O.Cd_Filial    = OS.Cd_Filial and
  /* Cd_Emitente */
  O.Nr_Orcamento = OS.Nr_Orcamento

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  OS.Cd_Filial    = @Cd_Filial and
  OS.Dt_Entrega  >= @Dt_Start and
  OS.Dt_Entrega   < @Dt_End

order by
  O.Cd_Filial, OS.Dt_Entrega

-- ===== TFRMORCAMENTO_PRODUCAO.ADODsProducao
select distinct
  P.Cd_Filial, P.Nr_Producao, P.Dt_Producao, P.St_Producao, P.Cd_Usuario,
  P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino, PRI.Nr_Orcamento,
  Fl_Produzido =
    (
    case when not exists
      (
      select
        PS.Cd_Filial

      from
        Producao_Setor PS

      where
        PS.Cd_Filial   = PRI.Cd_Filial and
        PS.Nr_Producao = PRI.Nr_Producao and
        --PS.Id_Producao = PRI.Id_Producao and
        PS.Fl_Setor   <= '2'
      ) then '1' else '2' end
    )

from
  Producao_Item PRI

inner join
  Producao P
on
  P.Cd_Filial   = PRI.Cd_Filial and
  P.Nr_Producao = PRI.Nr_Producao

where
  PRI.Cd_Filial    = :Cd_Filial and
  PRI.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_PRODUCAO.ADODsItem
select
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,

  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,
  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,
  PRI.Cd_Motivo, M.Ds_Motivo,

  OI.Fl_Medida,

  OT.Nm_Emitente,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end

from
  Producao_Item PRI

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento

left join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  PRI.Cd_Filial   = :Cd_Filial and
  PRI.Nr_Producao = :Nr_Producao and
  PRI.Nr_Orcamento = :Nr_Orcamento

order by
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao

-- ===== TFRMORCAMENTO_PRODUCAO.ADODsSetor
select
  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, S.Sg_Setor, PS.Id_Producao,
  PS.Cd_Funcionario, F.Nm_Funcionario, PS.Fl_Setor, PS.Dt_Inicio,
  PS.Dt_Termino
  
from
  Producao_Setor PS

inner join
  Setor S
on
  S.Cd_Setor = PS.Cd_Setor

left join
  Funcionario F
on
  F.Cd_Funcionario = PS.Cd_Funcionario

where
  PS.Cd_Filial   = :Cd_Filial and
  PS.Nr_Producao = :Nr_Producao and
  PS.Id_Producao = :Id_Producao

order by
  PS.Cd_Setor

-- ===== TFRMORCAMENTO_PROJETO.ADODsDados
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Projeto, OP.Cd_Projeto, P.Nm_Projeto, OP.Qt_Projeto, 
  OP.Mm_Observacao, OP.Ds_Ambiente, OP.Nr_PrazoEntrega, OP.Vl_Projeto, P.Cd_Produto,
  Pr.Nm_Produto

from
 Orcamento_Projeto OP

inner join
  Projeto P
on
  P.Cd_Projeto = OP.Cd_Projeto

left join
  Produto Pr
on
  Pr.Cd_Produto = P.Cd_Produto

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento and
  OP.Nr_Projeto   = :Nr_Projeto
  
order by
  OP.Nr_Projeto

-- ===== TFRMORCAMENTO_PROJETO.ADODsNavegar
-- First
select top 1
  Nr_Projeto

from
  Orcamento_Projeto

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

order by
  Nr_Projeto

-- ===== TFRMORCAMENTO_PROJETO.ADODsParte
select
  OPP.Cd_Filial, OPP.Nr_Orcamento, OPP.Nr_Projeto, OPP.Cd_Parte, PP.Ds_Parte,
  OPP.Nr_Altura, OPP.Nr_Largura

from
  Orcamento_Projeto_Parte OPP

inner join
  Projeto_Parte PP
on
  PP.Cd_Parte = OPP.Cd_Parte

where
  OPP.Cd_Filial     = :Cd_Filial and
  OPP.Nr_Orcamento = :Nr_Orcamento and
  OPP.Nr_Projeto  = :Nr_Projeto

-- ===== TFRMORCAMENTO_PROJETO.ADODsItensCalcular
-------------------- Seleciona os itens para calcular
-- IMPORTANTE
--    A criação de ##Tmp_Projeto esta em FrmOrcamento_Projeto_Parte
select
  I.Nr_Item, TI.Cd_Peca, TI.Cd_Parte, TI.Ds_Form_Altura, TI.Ds_Form_Largura,
  TI.Nr_Altura_Folga, TI.Nr_Largura_Folga, coalesce(OI.Cd_Produto, I.Cd_Produto) as Cd_Produto,
  I.Sg_Unidade

from
  Projeto_Item I

inner join
  ##Tmp_Projeto TI
on
  TI.Nr_SPID = @@SPID and
  TI.Nr_Item = I.Nr_Item

left join
  Orcamento_Projeto_Item OI
on
  OI.Cd_Filial       = :Cd_Filial and
  OI.Nr_Orcamento    = :Nr_Orcamento and
  OI.Nr_Projeto      = :Nr_Projeto and
  OI.Nr_Item_Projeto = I.Nr_Item

where
  I.Cd_Projeto = :Cd_Projeto and
  I.Tp_Item    = :Tp_Item

order by
  I.Nr_Item

-- ===== TFRMORCAMENTO_PROJETO.ADODsItem
select
  OPI.Nr_Item, OPI.Tp_Item, OPI.Nr_Altura, OPI.Nr_Altura_Folga, OPI.Nr_largura,
  OPI.Nr_Largura_Folga, OPI.Qt_Item, OPI.Vl_Unitario, OPI.Nr_Altura_Direita,
  OPI.Nr_Largura_Direita, PP.Ds_Parte, P.Nm_Produto, P.Cd_Fabricante,
  
  cast(OPI.Cd_Peca as varchar) + ' - ' + PPe.Ds_Peca as Dp_Peca,
  OPI.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade,
  cast(IsNull(OPI.Qt_Item, 0) * IsNull(OPI.Vl_Unitario, 0) as numeric(18,3)) as Vl_Total,
  OPI.Cd_Produto
  
from
  Orcamento_Projeto_Item OPI
  
left join
  Projeto_Parte PP
on
  PP.Cd_Parte = OPI.Cd_Parte
  
left join
  Projeto_Peca PPe
on
  PPe.Cd_Peca = OPI.Cd_Peca
  
left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade
  
inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto
  
where
  OPI.Cd_Filial = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto = :Nr_Projeto and
  OPI.Tp_Item = :Tp_Item

order by
  OPI.Nr_Item

-- ===== TFRMORCAMENTO_PROJETO_ITEM.ADODsPeca
select
  P.Cd_Peca, P.Ds_Peca

from
  Projeto_Peca P

-- ===== TFRMORCAMENTO_PROJETO_ITEM.ADODsEditItem
-- Seleciona os dados do item para edição
-- Obs. Não colocar no ADODsDados
select
  PIT.Cd_Produto, PIT.Sg_Unidade, PIT.Qt_Item,
  PIT.Nr_Altura, PIT.Nr_Largura, PIT.Cd_Parte, PIT.Cd_Peca,
  PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, PIT.Vl_Unitario
  
from
  Orcamento_Projeto_Item PIT

where
  PIT.Cd_Filial = :Cd_Filial and
  PIT.Nr_Orcamento = :Nr_Orcamento and
  PIT.Nr_Projeto = :Nr_Projeto and
  PIT.Nr_Item    = :Nr_Item

-- ===== TFRMORCAMENTO_PROJETO_ITEM.ADODsItemNew
select
  Max( Nr_Item ) as NewItem

from
   Orcamento_Projeto_Item

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Projeto  = :Nr_Projeto

-- ===== TFRMORCAMENTO_PROJETO_PARTE.ADODsParteEdit
select
  OPP.Cd_Filial, OPP.Nr_Orcamento, OPP.Nr_Projeto, OPP.Cd_Parte, PP.Ds_Parte,
  OPP.Nr_Altura, OPP.Nr_Largura

from
  Orcamento_Projeto_Parte OPP

inner join
  Projeto_Parte PP
on
  PP.Cd_Parte = OPP.Cd_Parte

where
  OPP.Cd_Filial     = :Cd_Filial and
  OPP.Nr_Orcamento = :Nr_Orcamento and
  OPP.Nr_Projeto  = :Nr_Projeto

-- ===== TFRMORCAMENTO_PROJETO_PARTE.ADODsFormula
select
  Nr_Item, Tp_Item, Ds_Form_Altura, Ds_Form_Largura,
  Cd_Parte, Ds_Parte, Nr_Altura_Folga, Nr_Largura_Folga,
  Cd_Peca, Ds_Peca

from
  ##Tmp_Projeto

where
  Nr_SPID  = @@SPID and
  Cd_Parte = :Cd_Parte and
  Tp_Item = '0'             ----- Somente Vidros

order by
  Cd_Parte, Nr_Item

-- ===== TFRMORCAMENTO_PROJETO_PARTE.ADOCmdFormula
-------------------- Cria a table das formulada
-- IMPORTANTE
--     Apesar de pegar todos os itens, somente os de vidros poderão ser
--     manipulados para refazer os calculos, os demais itens são necessários
--     pois vão ser utilizados no calculo de area na procedure CalculoProjeto

if Object_ID( 'TempDB..##Tmp_Projeto' ) is null
  create table ##Tmp_Projeto
    (
    Nr_SPID Int,
    Nr_Item SmallInt not null,
    Tp_Item Char( 1 ) not null,
    Ds_Form_Altura VarChar( 30 ),
    Ds_Form_Largura VarChar( 30 ),
    Cd_Parte smallint,
    Ds_Parte VarChar( 30 ),
    Cd_Peca VarChar( 10 ),
    Ds_Peca VarChar( 50 ),
    Nr_Altura_Folga SmallInt,
    Nr_Largura_Folga SmallInt
    )

else
  delete from ##Tmp_Projeto where Nr_SPID = @@SPID

insert into ##Tmp_Projeto( Nr_SPID, Nr_Item, Tp_Item, Ds_Form_Altura, Ds_Form_Largura,
   Cd_Parte, Ds_Parte, Cd_Peca, Ds_Peca, Nr_Altura_Folga, Nr_Largura_Folga )
select
  @@SPID, PRI.Nr_Item, PRI.Tp_Item, PRI.Ds_Form_Altura, PRI.Ds_Form_Largura,
  PRI.Cd_Parte, PP.Ds_Parte, PRI.Cd_Peca, PC.Ds_Peca, PRI.Nr_Altura_Folga,
  PRI.Nr_Largura_Folga

from
  Projeto_Item PRI

inner join
  Projeto_Parte PP
on
  PP.Cd_Parte = PRI.Cd_Parte

left join
  Projeto_Peca PC
on
  PC.Cd_Peca = PRI.Cd_Peca

where
  PRI.Cd_Projeto = :Cd_Projeto

-- ===== TFRMORCAMENTO_QUANTIDADE.ADODsProduto
select
  P.Cd_Produto, P.Nm_Produto,
  P.Sg_Estoque, PE.Nr_Fator as Nr_Estoque, UE.Ds_Unidade as Ds_Estoque,
  P.Sg_Venda, PV.Nr_Fator as Nr_Venda, UV.Ds_Unidade as Ds_Venda

from
  Produto P

inner join
  Produto_Unidade PE
on
  PE.Cd_Produto = P.Cd_Produto and
  PE.Sg_Unidade = P.Sg_Estoque

inner join
  Unidade UE
on
  UE.Sg_Unidade = P.Sg_Estoque

inner join
  Produto_Unidade PV
on
  PV.Cd_Produto = P.Cd_Produto and
  PV.Sg_Unidade = P.Sg_Venda

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMORCAMENTO_QUANTIDADE.ADODsItem
-- Último item do orçamento
select
  max( Nr_Item ) as Nr_Item

from
  Orcamento_Item

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_QUANTIDADE.ADOCmdItem
insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,
   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,
   Fl_STB, Ps_Produto, Nr_Lote, Dt_Fabricacao, Dt_Validade, Sg_Venda, Qt_Venda )
values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,
   :Sg_Unidade, :Qt_Item, :Vl_Unitario, '1', :Pr_Reducao, :Fl_STB,
   :Ps_Produto, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade, :Sg_Venda, :Qt_Venda )

-- ===== TFRMORCAMENTO_REPORT.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Fl_Estoque, O.Tp_Carga,
  O.Fl_FormaPagto,
  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,
  Cast( O.Cd_Funcionario as VarChar ) + ' - ' + F.Nm_Funcionario as Dp_Funcionario,
  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,
  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Vl_STB,
  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia, 
  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega,

  case O.Fl_FormaPagto
    when '1' then 'A Vista'
    when '2' then 'A Prazo'
    when '3' then 'Crédito'
    when '4' then 'Cheque'
    when '5' then 'Contra-Apresentação'
    when '6' then 'Multi-parcelado'
    when '7' then 'Débito'
    when '8' then 'PIX'

  end as Dp_FormaPagto,

  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,
  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,
  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,
  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,
  E.Fl_Exportador, O.Cd_Transportador, E.Nr_Identidade, E.Tp_Pessoa,

  case O.Tp_Carga
    when '1' then 'Normal'
    when '2' then 'Estirado'
    when '3' then 'Industrializado'
    when '4' then 'Especial'

  end as Dp_Carga,

  EEE.Nr_Endereco as Ent_Nr_Endereco, EEE.Ds_Numero as Ent_Ds_Numero,
  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,
  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,
  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + ' - ' + CEE.Nm_Cidade +
     ' - ' + CEE.Sg_Estado as Ent_Dp_Cidade,
  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,
  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,
  EEE.Mm_Observacao as Ent_Mm_Observacao, 
  EEE.Nr_Celular_1 as Ent_Nr_Celular_1, EEE.Nr_Celular_2 as Ent_Nr_Celular_2,

  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,
  Cast( EE.Cd_Cidade as VarChar ) + ' - ' + CE.Nm_Cidade + ' - ' + CE.Sg_Estado as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,
  EE.Mm_Observacao as Mm_ObsEndereco, EE.Ds_Numero,
  EE.Nr_Celular_1 as Nr_Celular_1, EE.Nr_Celular_2 as Nr_Celular_2

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EEE
on
  EEE.Cd_Emitente = O.Cd_Emitente and
  EEE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade CEE
on
  CEE.Cd_Cidade = EEE.Cd_Cidade

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_EndCobranca

left join
  Cidade CE
on
  CE.Cd_Cidade = EE.Cd_Cidade

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT.ADODsItem
select
  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,
  Cast( L.Cd_Localizacao as VarChar ) + ' - ' + L.Ds_Localizacao as Dp_Localizacao,
  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,
  OP.Mm_Observacao,
  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,

  case
    when OI.Fl_Confirmado = '1' then 'Sim'
  end as Dp_Confirmado,

  OI.Qt_Item,

  /*
  case
    when OI.Sg_Unidade = P.Sg_Estoque then
      case
        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Vl_Unitario * OI.Qt_Item
        else OI.Vl_Unitario * OI.Qt_Estoque

      end

    else
      OI.Vl_Unitario * OI.Qt_Item

  end as Vl_Total,
  */
  OI.Vl_Unitario * OI.Qt_Item as Vl_Total,

  case
    when '1' = '2' then 17.00  -- Venda fora do Estado/Exportador
    else
      case
        when '1' = '1' then
          case
            when T.Pr_Contrib > 0 then T.Pr_Contrib
            else 17.00
          end
        else
          case
            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib
            else 17.00
          end
      end
  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda,
  case
    when P.Fl_ImgClasse = '1' then C.Im_Classe
    else P.Im_Produto
  end as Im_Produto,
  OI.Im_SubProduto

into
  #itemtmp
  
from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto /* join Lab */

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial      = OI.Cd_Filial and
  OP.Nr_Orcamento   = OI.Nr_Orcamento and
  OP.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

where
  OI.Cd_Filial     = 1 and
  OI.Nr_Orcamento  = 412 and
  OI.Fl_Confirmado in ( '1', '2' ) and
  OI.Cd_Produto is not null;

insert into #itemtmp
select
  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Nm_Produto as Dp_Produto,
  '9999 - Itens Avulsos' as Dp_Localizacao, null as Nm_Laboratorio, null, null,
  null, null, 'teste no uso de observações', OI.Sg_Unidade,
  OI.Vl_Unitario, OI.Pr_Margem, null,
  case
    when OI.Fl_Confirmado = '1' then 'Sim'
  end as Dp_Confirmado,
  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item, 17.00, OI.Cd_Filial,
  OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda, null, null

from
  Orcamento_Item OI

where
  OI.Cd_Filial     = 1 and
  OI.Nr_Orcamento  = 412 and
  OI.Fl_Confirmado = '1' and
  OI.Cd_Produto is null;

select
  Nr_Item, Cd_Produto, Nm_Produto, Dp_Produto, Dp_Localizacao,
  Nm_Laboratorio, Ds_Condicao, Cd_Laboratorio, Tp_Frete, Cd_Transportador,
  Mm_Observacao, Sg_Unidade, Vl_Unitario, Pr_Margem, Pr_IPI, Dp_Confirmado,
  Qt_Item, Vl_Total, Pr_ICMS, Cd_Filial, Nr_Orcamento, Sg_Venda, Qt_Venda,
  Im_Produto, Im_SubProduto

from
  #itemtmp

order by
  1;

-- ===== TFRMORCAMENTO_REPORT.ADODsProduto
select
  Cast( D.Cd_Grupo as VarChar( 5 ) ) + ' - ' + D.Nm_Grupo as Dp_Grupo,
  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + ' - ' + SG.Nm_SubGrupo as Dp_SubGrupo,
  Cast( CL.Cd_Classe as VarChar( 5 ) ) + ' - ' + CL.Nm_Classe as Dp_Classe,
  Cast( C.Cd_Produto as VarChar( 5 ) ) + ' - ' + C.Nm_Produto as Dp_Produto,
  C.Sg_Estoque, C.Nr_Sequencia,
  sum( B.Qt_Estoque ) as Qt_Vendida,
  sum(
    case
      when B.Sg_Unidade = C.Sg_Estoque then
        case
          when B.Qt_Estoque is null or B.Qt_Estoque = 0 then dbo.SGRound( B.Vl_Unitario * B.Qt_Item )
          else dbo.SGRound( B.Vl_Unitario * B.Qt_Estoque )
        end
      else
        dbo.SGRound( B.Vl_Unitario * B.Qt_Item )
    end
  ) as Vl_Vendido

from
  Orcamento A

inner join
  Orcamento_Item B
on
  B.Cd_Filial     = A.Cd_Filial and
  B.Nr_Orcamento  = A.Nr_Orcamento and
  B.Fl_Confirmado = '1'

inner join
  Produto C
on
  C.Cd_Produto = B.Cd_Produto
inner join
  Grupo D
on
  D.Cd_Grupo = C.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = C.Cd_SubGrupo

inner join
  Classe CL
on
  CL.Cd_Classe = C.Cd_Classe

where
  A.Cd_Filial    = :Cd_Filial and
  A.St_Orcamento = '9' and
  A.Dt_Fatura   >= :Dt_Start and
  A.Dt_Fatura    < :Dt_End

group by
  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,
  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe

order by
  D.Cd_Grupo, SG.Cd_SubGrupo, CL.Cd_Classe, C.Nr_Sequencia

-- ===== TFRMORCAMENTO_REPORT.ADODsVendaPeriodo
select
  A.Nr_Orcamento, A.Dt_Fatura, B.Nm_Emitente, A.Ps_Pedido, A.Vl_Orcamento,
  C.Cd_Produto, D.Nm_Produto, C.Sg_Unidade, C.Qt_Item, C.Vl_Unitario,
  dbo.SGRound( C.Qt_Item * C.Vl_Unitario ) as Vl_Total, F.Nm_Funcionario, A.Fl_FormaPagto, A.Nr_Fatura, '1' as Fl_Origem,
  A.Nr_ECF

from
  Orcamento_Total A

inner join
  Funcionario F
on
  F.Cd_Funcionario = A.Cd_Funcionario

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

inner join
  Orcamento_Item C
on
  C.Cd_Filial    = A.Cd_Filial and
  C.Nr_Orcamento = A.Nr_Orcamento and
  C.Fl_Confirmado = '1'

left join
  Produto D
on
  D.Cd_Produto = C.Cd_Produto

where
  A.St_Orcamento = '9' and
  A.Dt_Fatura >= :Dt_Start and
  A.Dt_Fatura  < :Dt_End 

order by
  A.Dt_Fatura, A.Nr_Orcamento, C.Nr_Item

-- ===== TFRMORCAMENTO_REPORT.ADODsTransportador
select
  T.Nm_Transportador, T.Nr_Documento, T.Nr_InscEstadual, T.Ds_Endereco,
  T.Nm_Bairro, T.Ds_Complemento, T.Nr_CEP, T.Nr_Telefone,
  Cast( T.Cd_Transportador as VarChar( 5 ) ) + ' - ' + T.Nm_Transportador as Dp_Transportador,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Cd_Transportador = :Cd_Transportador

-- ===== TFRMORCAMENTO_REPORT.ADODsParcela
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,
  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros, OP.Fl_Parcela,
  P.Ds_Boleto

from
  Orcamento_Parcela OP

left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

order by
  OP.Nr_Prazo, OP.Fl_Parcela

-- ===== TFRMORCAMENTO_REPORT.ADODsLaboratorio
select
  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,
  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,
  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, 
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  L.Nr_InscEstadual, L.Nr_FAX

from
  Laboratorio L

inner join
  Cidade C
on
  C.Cd_Cidade = L.Cd_Cidade

where
  L.Cd_Laboratorio = :Cd_Laboratorio

-- ===== TFRMORCAMENTO_REPORT.ADODsConjunto
select
  OC.Cd_Filial, OC.Nr_Orcamento, OC.Nr_Item, OC.Cd_Produto, OC.Nm_Produto,
  OC.Sg_Unidade, OC.Qt_Item, OC.Vl_Unitario, PP.Vl_Custo,
  dbo.SGRound( OC.Qt_Item * OC.Vl_Unitario ) as Vl_Total,
  dbo.SGRound( OC.Qt_Item * PP.Vl_Custo ) as Vl_CustoTotal

from
  Orcamento_Conjunto OC

inner join
  Produto P
on
  P.Cd_Produto = OC.Cd_Produto

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = OC.Cd_Produto

where
  OC.Cd_Filial    = :Cd_Filial and
  OC.Nr_Orcamento = :Nr_Orcamento and
  OC.Nr_Item      = :Nr_Item

order by
  P.Nm_Produto

-- ===== TFRMORCAMENTO_REPORT.ADOCmdImpresso
update
  Orcamento

set
  Fl_Impresso = '1'

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT_EMITIDO.ADODsReport
select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Nm_Emitente,
  O.Nm_Funcionario, O.Fl_FormaPagto, O.Vl_Orcamento, Oc.Nr_Pedido_Emitente,
  O.Vl_Pedido_Frete, O.Pr_Desconto, Oc.Vl_Desconto, Oc.Pr_Custo, Oc.Vl_Custo,
  Oc.Vl_Pedido

from
  Orcamento_Total O

inner join
  Orcamento Oc
on
  Oc.Cd_Filial = O.Cd_Filial and
  Oc.Nr_Orcamento = O.Nr_Orcamento

where
  O.Cd_Filial   = :Cd_Filial and
  O.Dt_Emissao >= :Dt_Start and
  O.Dt_Emissao  < :Dt_End
  and O.St_Orcamento = '1'
order by
  O.Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT_EMITIDO.ADODsItem
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,
  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Venda

from
  Orcamento_Item_Total OI

where
  OI.Cd_Filial     = :Cd_Filial and
  OI.Nr_Orcamento  = :Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT_MARGEM.ADODsReport
select
  OT.Cd_Filial, OT.Nr_Orcamento, OT.Nm_Emitente, OT.Dt_Fatura, OT.Nr_Fatura,
  OT.Vl_Orcamento, OT.Mg_Pedido

from
  Orcamento_Total OT

/* Grupo */

where
  OT.Cd_Filial  = :Cd_Filial and
  OT.Dt_Fatura >= :Dt_Start and
  OT.Dt_Fatura  < :Dt_End
  /* Cd_Emitente */
  /* Cd_Funcionario */

order by
  OT.Cd_Filial, OT.Dt_Fatura, OT.Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsOrcamento
select
  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Funcionario, F.Nm_Funcionario,
  O.Nr_Endereco, O.Nm_Contato, O.Nr_Pedido_Emitente, O.Mm_Observacao,
  O.Vl_Pedido_Frete, O.Vl_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,
  O.Vl_Custo, O.Vl_IPI

  O.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nr_EndCobranca,
  E.Nr_Insc_Estadual, E.Ds_EMail, E.Fl_Exportador, E.Fl_Contribuinte

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario
  
left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

where
  O.Cd_Filial     = :Cd_Filial and
  O.Nr_Orcamento  = :Nr_Orcamento

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsEndereco
select
  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,
  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,
  EE.Nr_Celular_2, EE.Mm_Observacao, C.Sg_Estado, EE.Ds_Numero

from
  Emitente_Endereco EE

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  EE.Cd_Emitente = :Cd_Emitente and
  EE.Nr_Endereco = :Nr_Endereco

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsLaboratorio
select
  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,
  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,
  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, 
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  L.Nr_InscEstadual, L.Nm_Comercial, L.Nm_Financeiro, EL.Id_Laboratorio

from
  Laboratorio L

inner join
  Cidade C
on
  C.Cd_Cidade = L.Cd_Cidade

left join
  Emitente_Laboratorio EL
on
  EL.Cd_Emitente  = :Cd_Emitente and
  EL.Cd_Laboratorio = L.Cd_Laboratorio

where
  L.Cd_Laboratorio = :Cd_Laboratorio

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsTransportador
select
  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,
  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,
  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  T.Nr_Placa, T.Nr_InscEstadual 

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Cd_Transportador = :Cd_Transportador

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsItem
select
  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,
  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete,
  OP.Cd_Transportador, OP.Mm_Observacao, P.Cd_Fabricante,
  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,
  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item as Vl_Total,

  case
    when '1' = '2' then 17  -- Venda fora do Estado/Exportador
    else
      case
        when '1' = '1' then
          case
            when T.Pr_Contrib > 0 then T.Pr_Contrib
            else 17
          end
        else
          case
            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib
            else 17
          end
      end
  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento

from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto /* join Lab */

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial      = OI.Cd_Filial and
  OP.Nr_Orcamento   = OI.Nr_Orcamento and
  OP.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

where
  OI.Cd_Filial     = 1 and
  OI.Nr_Orcamento  = 231 and
  OI.Fl_Confirmado = '1'

order by
  LB.Nm_Laboratorio, OI.Nr_Item

-- ===== TFRMORCAMENTO_REPORT_REPRESENTA.ADODsEndEntrega
select
  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,
  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,
  EE.Nr_Celular_2, EE.Mm_Observacao, C.Sg_Estado, EE.Ds_Numero

from
  Emitente_Endereco EE

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  EE.Cd_Emitente = :Cd_Emitente and
  EE.Nr_Endereco = :Nr_Endereco

-- ===== TFRMORCAMENTO_REPVM.ADODsOrcamento
select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Tp_Carga,
  O.Fl_FormaPagto,
  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,
  Cast( O.Cd_Funcionario as VarChar ) + ' - ' + F.Nm_Funcionario as Dp_Funcionario,
  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,
  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Vl_STB,
  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia,
  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega,

  case O.Fl_FormaPagto
    when '1' then 'A Vista'
    when '2' then 'A Prazo'
    when '3' then 'Crédito'
    when '4' then 'Cheque'
    when '5' then 'Contra-Apresentação'
    when '6' then 'Multi-parcelado'
    when '7' then 'Débito'
    when '8' then 'PIX'

  end as Dp_FormaPagto,

  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,
  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,
  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,
  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,
  E.Fl_Exportador, O.Cd_Transportador, E.Tp_Pessoa, E.Nr_Identidade,

  case O.Tp_Carga
    when '1' then 'Normal'
    when '2' then 'Estirado'
    when '3' then 'Industrializado'
    when '4' then 'Especial'

  end as Dp_Carga,

  EEE.Nr_Endereco as Ent_Nr_Endereco, EEE.Ds_Numero as Ent_Ds_Numero,
  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,
  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,
  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + ' - ' + CEE.Nm_Cidade +
     ' - ' + CEE.Sg_Estado as Ent_Dp_Cidade,
  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,
  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,
  EEE.Mm_Observacao as Ent_Mm_Observacao,
  EEE.Nr_Celular_1 as Ent_Nr_Celular_1, EEE.Nr_Celular_2 as Ent_Nr_Celular_2,

  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,
  Cast( EE.Cd_Cidade as VarChar ) + ' - ' + CE.Nm_Cidade + ' - ' + CE.Sg_Estado as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,
  EE.Mm_Observacao as Mm_ObsEndereco, O.Dt_Confirmado, EE.Ds_Numero,
  EE.Nr_Celular_1 as Nr_Celular_1, EE.Nr_Celular_2 as Nr_Celular_2

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EEE
on
  EEE.Cd_Emitente = O.Cd_Emitente and
  EEE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade CEE
on
  CEE.Cd_Cidade = EEE.Cd_Cidade

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_EndCobranca

left join
  Cidade CE
on
  CE.Cd_Cidade = EE.Cd_Cidade

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_REPVM.ADODsItem
select
  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto as Dp_Produto, P.Nm_Produto, A.Vl_Arredondamento,
  Cast( L.Cd_Localizacao as VarChar )  + ' - ' + L.Ds_Localizacao as Dp_Localizacao,
  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,
  OP.Mm_Observacao, OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,

  case
    when OI.Fl_Confirmado = '1' then 'Sim'
  end as Dp_Confirmado,

  case
    when OI.Sg_Unidade = P.Sg_Estoque then
      case
        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Qt_Item
        else OI.Qt_Estoque

      end

    else
      OI.Qt_Item

  end as Qt_Item,

  case
    when OI.Sg_Unidade = P.Sg_Estoque then
      case
        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item )
        else dbo.SGRound( OI.Vl_Unitario * OI.Qt_Estoque )

      end

    else
      OI.Vl_Unitario * OI.Qt_Item

  end as Vl_Total,

  case
    when '1' = '2' then 17.00  -- Venda fora do Estado/Exportador
    else
      case
        when '1' = '1' then
          case
            when T.Pr_Contrib > 0 then T.Pr_Contrib
            else 17.00
          end
        else
          case
            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib
            else 17.00
          end
      end
  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_SubProduto,
  SP.Nm_SubProduto, OI.Im_SubProduto, OI.Fl_Medida, OI.Ds_Ambiente, 
  P.Nr_MoldEspessura, P.Nr_MoldPerda, P.Im_Produto

from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial    = OI.Cd_Filial and
  OP.Nr_Orcamento = OI.Nr_Orcamento

left join
  SubProduto SP
on
  SP.Cd_SubProduto = OI.Cd_SubProduto

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

where
  OI.Cd_Filial     = 1 and
  OI.Nr_Orcamento  = 6 and
  OI.Fl_Confirmado in ( '1', '2' ) and
  OI.Cd_Produto is not null

order by
  5, 1

-- ===== TFRMORCAMENTO_REPVM.ADODsTransportador
select
  T.Nm_Transportador, T.Nr_Documento, T.Nr_InscEstadual, T.Ds_Endereco,
  T.Nm_Bairro, T.Ds_Complemento, T.Nr_CEP, T.Nr_Telefone,
  Cast( T.Cd_Transportador as VarChar( 5 ) ) + ' - ' + T.Nm_Transportador as Dp_Transportador,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Cd_Transportador = :Cd_Transportador

-- ===== TFRMORCAMENTO_REPVM.ADODsParcela
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,
  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros, P.Ds_Boleto,
  OP.Fl_Parcela

from
  Orcamento_Parcela OP

left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento

order by
  OP.Nr_Prazo, OP.Fl_Parcela

-- ===== TFRMORCAMENTO_REPVM.ADODsConjunto
select
  OC.Cd_Filial, OC.Nr_Orcamento, OC.Nr_Item, OC.Cd_Produto, OC.Nm_Produto,
  OC.Sg_Unidade, OC.Qt_Item, OC.Vl_Unitario, PP.Vl_Custo,
  OC.Qt_Item * OC.Vl_Unitario as Vl_Total,
  OC.Qt_Item * PP.Vl_Custo as Vl_CustoTotal,
  Convert( VarChar( 15 ), OC.Cd_Produto ) + ' - ' + OC.Nm_Produto as Dp_Produto

from
  Orcamento_Conjunto OC

inner join
  Produto P
on
  P.Cd_Produto = OC.Cd_Produto

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = OC.Cd_Produto

where
  OC.Cd_Filial    = :Cd_Filial and
  OC.Nr_Orcamento = :Nr_Orcamento and
  OC.Nr_Item      = :Nr_Item

order by
  P.Nm_Produto

-- ===== TFRMORCAMENTO_REPVM.ADODsDetalhe
select
  Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe, Qt_Item, Nr_Comprimento,
  Nr_Largura, Nr_Altura, Ds_Detalhe

from
  Orcamento_Detalhe

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item      = :Nr_Item

order by
  Nr_Detalhe

-- ===== TFRMORCAMENTO_REPVM.ADODsOrcamentoProjeto
/* Projetos do Orçamento */
select
  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Projeto, OP.Cd_Projeto, OP.Qt_Projeto, OP.Mm_Observacao, OP.Ds_Ambiente,
  OP.Nr_PrazoEntrega, OP.Vl_Projeto, P.Nm_Projeto, P.Im_Projeto,
  
  (cast(OP.Cd_Projeto as varchar) + ' - ' + P.Nm_Projeto) as Dp_Projeto,
  cast(OP.Qt_Projeto * OP.Vl_Projeto as numeric(18,3)) as Vl_TotalProjeto,
  cast(OP.Nr_PrazoEntrega as varchar) + ' dia(s)' as Dp_PrazoEntrega
  
from
  Orcamento_Projeto OP
  
inner join
  Projeto P
on
  P.Cd_Projeto = OP.Cd_Projeto

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento
  
order by
  OP.Nr_Orcamento, OP.Nr_Projeto

-- ===== TFRMORCAMENTO_REPVM.ADODsItemVidro
/* Vidros */
select
  OPI.Nr_Altura, OPI.Nr_Altura_Folga, OPI.Nr_Largura, OPI.Nr_Largura_Folga,
  OPI.Qt_Item, OPI.Vl_Unitario, P.Nm_Produto, PParte.Ds_Parte, P.Cd_Produto, OPI.Sg_Unidade,
  
  cast(OPI.Cd_Peca as varchar) + ' - ' + PPeca.Ds_Peca as Dp_Peca,
  OPI.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade,
  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,
  
  Convert( VarChar( 15 ), OPI.Cd_Produto) + ' - ' + P.Nm_Produto as Dp_Produto

from
  Orcamento_Projeto_Item OPI
  
inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto
  
left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade

left join
  Projeto_Parte PParte
on
  PParte.Cd_Parte = OPI.Cd_Parte

left join
  Projeto_Peca PPeca
on
  PPeca.Cd_Peca = OPI.Cd_Peca
  
where
  OPI.Cd_Filial    = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto   = :Nr_Projeto and
  OPI.Tp_Item      = 0
  
order by
  OPI.Nr_Projeto, OPI.Nr_Item

-- ===== TFRMORCAMENTO_REPVM.ADODsItemFerragem
/* Ferragens */
select
  OPI.Cd_Produto, OPI.Nr_Item, P.Nm_Produto, P.Cd_Fabricante, OPI.Qt_Item,
  OPI.Vl_Unitario,
  
  OPI.Sg_Unidade,
  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,

  Convert( VarChar( 15 ), OPI.Cd_Produto) + ' - ' + P.Nm_Produto as Dp_Produto

from
  Orcamento_Projeto_Item OPI
  
inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade
  
where
  OPI.Cd_Filial    = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto   = :Nr_Projeto and
  OPI.Tp_Item      = 1

order by
  OPI.Nr_Projeto, OPI.Nr_Item

-- ===== TFRMORCAMENTO_REPVM.ADODsItemPerfil
/* Perfis */
select
  OPI.Cd_Produto, OPI.Qt_Item, OPI.Nr_Altura, OPI.Nr_Largura, PParte.Ds_Parte,
  P.Nm_Produto, OPI.Vl_Unitario,
  
  OPI.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade,
  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,

  Convert( VarChar( 15 ), OPI.Cd_Produto) + ' - ' + P.Nm_Produto as Dp_Produto
  
from
  Orcamento_Projeto_Item OPI
  
inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade

left join
  Projeto_Parte PParte
on
  PParte.Cd_Parte = OPI.Cd_Parte

where
  OPI.Cd_Filial    = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto   = :Nr_Projeto and
  OPI.Tp_Item      = 2

order by
  OPI.Nr_Projeto, OPI.Nr_Item

-- ===== TFRMORCAMENTO_REPVM.ADODsItemServico
/* Serviços */
select
  OPI.Cd_Produto, OPI.Qt_Item, P.Nm_Produto, OPI.Vl_Unitario,
  
  OPI.Sg_Unidade,
  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,
  
  Convert( VarChar( 15 ), OPI.Cd_Produto) + ' - ' + P.Nm_Produto as Dp_Produto

from
  Orcamento_Projeto_Item OPI

inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade

where
  OPI.Cd_Filial    = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto   = :Nr_Projeto and
  OPI.Tp_Item      = 3

order by
  OPI.Nr_Projeto, OPI.Nr_Item

-- ===== TFRMORCAMENTO_REPVM.ADODsItemKitBox
/* Kit Box */
select
  OPI.Cd_Produto, OPI.Qt_Item, P.Nm_Produto, OPI.Vl_Unitario,

  OPI.Sg_Unidade,
  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,
  
  Convert( VarChar( 15 ), OPI.Cd_Produto) + ' - ' + P.Nm_Produto as Dp_Produto

from
  Orcamento_Projeto_Item OPI

inner join
  Produto P
on
  P.Cd_Produto = OPI.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = OPI.Sg_Unidade

where
  OPI.Cd_Filial    = :Cd_Filial and
  OPI.Nr_Orcamento = :Nr_Orcamento and
  OPI.Nr_Projeto   = :Nr_Projeto and
  OPI.Tp_Item      = 4

order by
  OPI.Nr_Projeto, OPI.Nr_Item

-- ===== TFRMORCAMENTO_REPVM.ADODsPosicao
declare @Cd_Filial int
set @Cd_Filial = :Cd_Filial
declare @Nr_Orcamento int
set @Nr_Orcamento = :Nr_Orcamento
declare @Nr_Projeto int
set @Nr_Projeto = :Nr_Projeto

/* Partes do Projeto */
select
  'P' as Origem, PPP.Nr_Left, PPP.Nr_Top,
  /* Define o caption da label no relatorio */
  cast(
  case
    when PPP.Fl_Dimensao = 'A' then OPP.Nr_Altura
    when PPP.Fl_Dimensao = 'L' then OPP.Nr_Largura
    else ''
    
  end as varchar) as Dp_Caption

from
  Orcamento_Projeto_Parte OPP
  
inner join
  Orcamento_Projeto OP
on
  OP.Cd_Filial    = OPP.Cd_Filial and
  OP.Nr_Orcamento = OPP.Nr_Orcamento and
  OP.Nr_Projeto   = OPP.Nr_Projeto
  
inner join
  Projeto_Parte_Posicao PPP
on
  PPP.Cd_Projeto = OP.Cd_Projeto and
  PPP.Cd_Parte = OPP.Cd_Parte  and
  PPP.Nr_Top   >= 0 and
  PPP.Nr_Left  >= 0

where
  OPP.Cd_Filial    = @Cd_Filial and
  OPP.Nr_Orcamento = @Nr_Orcamento and
  OPP.Nr_Projeto   = @Nr_Projeto
  
union
  
/* Vidros e Ferragens do Projeto */
select
  'I' as Origem, PIP.Nr_Left, PIP.Nr_Top,
  /* Define o caption da label no relatorio */
  cast(
  case
    /* Vidros */
    when Item.Tp_Item = 0 then
      /* Largura X Altura */
      cast(OPI.Nr_Largura as varchar) + 'x' + cast(OPI.Nr_Altura as varchar)
      
    /* Ferragens */
    when Item.Tp_Item = 1 then cast(P.Cd_Fabricante as varchar)
    else ''
  
  end as varchar) as Dp_Caption

from
  Orcamento_Projeto_Item OPI
  
inner join
  Orcamento_Projeto OP
on
  OP.Cd_Filial    = OPI.Cd_Filial and
  OP.Nr_Orcamento = OPI.Nr_Orcamento and
  OP.Nr_Projeto   = OPI.Nr_Projeto
  
inner join
  Projeto_Item Item
on
  Item.Cd_Projeto = OP.Cd_Projeto and
  Item.Nr_Item    = OPI.Nr_Item_Projeto
  
inner join
  Projeto_Item_Posicao PIP
on
  PIP.Cd_Projeto = Item.Cd_Projeto and
  PIP.Nr_Item    = Item.Nr_Item and
  PIP.Nr_Top     >= 0 and
  PIP.Nr_Left    >= 0
  
left join
  Produto P
on
  P.Cd_Produto = Item.Cd_Produto
  
where
  OPI.Cd_Filial    = @Cd_Filial and
  OPI.Nr_Orcamento = @Nr_Orcamento and
  OPI.Nr_Projeto   = @Nr_Projeto

-- ===== TFRMORCAMENTO_REPVM.ADODsPartes
/* Partes do Projetos */
select
  PP.Ds_Parte, OPP.Nr_Largura, OPP.Nr_Altura,
  PP.Ds_Parte + ': ' + cast(OPP.Nr_Largura as varchar) + 'x' +
    cast(OPP.Nr_Altura as varchar) as Dp_Parte

from
  Orcamento_Projeto_Parte OPP
  
inner join
  Projeto_Parte PP
on
  PP.Cd_Parte = OPP.Cd_parte

where
  OPP.Cd_Filial    = :Cd_Filial and
  OPP.Nr_Orcamento = :Nr_Orcamento and
  OPP.Nr_Projeto   = :Nr_Projeto

-- ===== TFRMORCAMENTO_REPVM.ADODsMoldura
select
  Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Moldura, Qt_Moldura, Nr_Altura,
  Nr_Largura, Nr_Folga

from
  Orcamento_Moldura

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item      = :Nr_Item

order by
  Nr_Moldura

-- ===== TFRMORCAMENTO_REPVM.ADOCmdImpresso
update
  Orcamento

set
  Fl_Impresso = '1'

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_SAIDACOPIA.ADODsEmitente
select
  E.Nm_Emitente, E.Nr_Documento, E.Nr_Insc_Estadual,
  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,
  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado  as Dp_Cidade,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao

from
  Emitente E

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  E.Cd_Emitente = :Cd_Emitente

-- ===== TFRMORCAMENTO_SHOW.ADODsOrcaShow
select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento,
  O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario,
  O.Fl_FormaPagto, O.Nr_Endereco, EE.Ds_Titulo, O.Vl_Coleta_Frete, O.Ps_Coleta,
  O.Vl_Coleta, O.Mg_Coleta, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,
  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, O.Dt_Fatura, O.Nr_Fatura,
  O.Cd_Serie, EC.Cd_Credito, EC.Vl_Limite_Credito, O.Vl_BaseICMS, O.Pr_ICMS,
  O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, R.Nr_Receber, O.Nr_ECF, E.Fl_Exportador,
  Cast( EC.Cd_Emitente as VarChar( 5 ) ) + ' - ' + EC.Nm_Emitente as Dp_Credito,
  C.Sg_Estado, E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato,
  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Ds_EMail,
  O.Mm_Nota, O.Cd_CFOP + ' - ' + CF.Ds_CFOP as Dp_CFOP, O.Vl_ISS,
  Cast( O.Cd_Transportador as VarChar( 6 ) ) + ' - ' + T.NM_Transportador as Dp_Transportador,
  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Nr_Entrega, 
  O.Nr_Validade, O.Dt_Confirmado, O.Cd_Usuario, O.Vl_Servico, O.Ps_Liquido,
  O.Vl_BaseST, O.Dt_Conjunto, O.Dt_Cancelamento

from
  Orcamento O

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

left join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

left join
  Receber R
on
  R.Nr_Orcamento = O.Nr_Orcamento and
  R.St_Receber   <> '4'

left join
  CFOP CF
on
  CF.Cd_CFOP = O.Cd_CFOP

left join
  Transportador T
on
  T.Cd_Transportador = O.Cd_Transportador

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_SHOW.ADODsParShow
select
  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,
  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,
  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna

from
  Orcamento_Parcela OP
  
left join
  Portador P
on
  P.Cd_Portador = OP.Cd_Portador

where
  OP.Cd_Filial    = :Cd_Filial and
  OP.Nr_Orcamento = :Nr_Orcamento
order by
  OP.Nr_Prazo, OP.Nr_Parcela

-- ===== TFRMORCAMENTO_SHOW.ADODsComissao
select
  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Funcionario, F.Nm_Funcionario

from
  Orcamento_Comissao OC

inner join
  Funcionario F
on
  F.Cd_Funcionario = OC.Cd_Funcionario

where
  Cd_Filial    = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMORCAMENTO_SHOW.ADODsJuncao
select
  O.Cd_Filial, O.Nr_Orcamento, O.Cd_Emitente, OT.Nm_Emitente, OT.Nm_Funcionario,
  OT.Vl_Orcamento

from
  Orcamento O

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = O.Cd_Filial and
  OT.Nr_Orcamento = O.Nr_Orcamento

where
  O.Cd_Filial = :Cd_Filial and
  O.Nr_Juncao = :Nr_Orcamento

order by
  O.Cd_Filial, O.Nr_Orcamento

-- ===== TFRMORCAMENTO_TERCEIROS.ADODsProduto
select
  Nr_Item, Cd_Produto, Nm_Produto, Qt_Item, Qt_Saida, Fl_Confirmado,
  Sg_Unidade

from
  #Orcamento_Terceiros

order by
  Nr_Item

-- ===== TFRMORCAMENTO_TERCEIROS.ADODsPrimary
select
  max( A.Nr_Saida ) + 1 as Nr_Saida

from
  Saida A

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMORCAMENTO_VENDEDOR.ADODsVendedor
select
  O.Nr_Orcamento, O.Dt_Emissao, E.Nm_Emitente, F.Nm_Funcionario,
  O.Fl_FormaPagto, O.Nr_Fatura, C.Nm_Cidade, OT.Vl_Orcamento,
  O.Vl_IPI, O.St_Orcamento, O.Dt_Confirmado, O.Dt_Fatura

from
  Orcamento_Total OT

inner join
  Funcionario F
on
  F.Cd_Funcionario = OT.Cd_Funcionario

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento

left join
  Emitente E
on
  E.Cd_Emitente = OT.Cd_Emitente

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  OT.Cd_Filial    = :Cd_Filial and
  /* OT.Fl_Estoque */
  OT.St_Orcamento = '9' and
  /* OT.Cd_Funcionario */
  OT.Dt_Fatura   >= :Dt_Start and
  OT.Dt_Fatura    < :Dt_End

order by
  OT.Cd_Funcionario, OT.Dt_Fatura, OT.Nr_Orcamento

-- ===== TFRMORCAMENTO_XMLRTO.ADODsEmitente
-- ------- Testa código
select
  Cd_Emitente, Nr_Documento, Nm_Emitente

from
  Emitente

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMORCAMENTO_XMLRTO.ADODsFuncionario
select
  Cd_Funcionario, Nm_Funcionario

from
  Funcionario 

where
  Nr_Documento = :Nr_Documento

-- ===== TFRMORCAMENTO_XMLRTO.ADODsProdutos
-- ------------ Cria table temporaria
/*
if Object_ID( 'TempDB..##XmlItem' ) is null
  create table ##XmlItem
    (
    Nr_ID Int,
    Nr_Item SmallInt,
    Cd_Produto Int,
    Ds_Produto VarChar( 120 ),
    Cd_NCM VarChar( 10 ),
    Sg_Unidade VarChar( 2 ),
    Vl_Unitario Numeric( 12, 2 ),
    Vl_Desconto Numeric( 12, 2 ),
    Vl_Liquido Numeric( 12, 2 ),
    Qt_Item Numeric( 12, 3 ),
    Vl_Total Numeric( 12, 2 )
    )
    
else
  delete from ##XmlItem where Nr_ID = @@SPID
*/

select
   Nr_ID, Nr_Item, Cd_Produto, Ds_Produto, Cd_NCM, Sg_Unidade,
  Vl_Unitario, Vl_Desconto, Vl_Liquido, Qt_Item, Vl_Total

from
  ##XmlItem

where
  Nr_ID = @@SPID

order by
  Nr_ID, Nr_Item

-- ===== TFRMORCAMENTO_XMLRTO.ADODsOrcaNext
select
  max( Nr_Orcamento ) as Nr_Orcamento

from
  Orcamento

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMOSERVICO.ADODsDados
select
  OS.Cd_Filial, OS.Nr_OS, OS.St_OS, OS.Dt_OS, OS.Cd_Emitente, E.Nm_Emitente, OS.Nr_Orcamento,
  OS.Dt_Entrega, OS.Mm_Observacao, OS.Dt_Inicio, OS.Dt_Termino, F.Nm_Funcionario,
  O.Nr_Endereco, E.Nr_Endereco as Nr_EndCliente, E.Nm_Fantasia

from
  OServico OS

inner join
  Emitente E
on
  E.Cd_Emitente = OS.Cd_Emitente

left join
  Orcamento O
on
  O.Cd_Filial = OS.Cd_Filial and
  O.Nr_Orcamento = OS.Nr_Orcamento

left join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

where
  OS.Cd_Filial = :Cd_Filial and
  OS.Nr_OS     = :Nr_OS

-- ===== TFRMOSERVICO.ADODsNavegar
-- Prior
select top 1
  Nr_OS

from
  OServico

where
  Cd_Filial  = :Cd_Filial and
  Nr_OS    = :Nr_OS

order by
  Nr_OS desc

-- ===== TFRMOSERVICO.ADODsOrcaOS
select
  OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente

from
  Orcamento_Total OT

where
  OT.Cd_Filial = :Cd_Filial and
  OT.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMOSERVICO.ADODsItem
select
  OSI.Cd_Filial, OSI.Nr_OS, OSI.Nr_Item, OSI.Cd_Produto, OSI.Nm_Produto, OSI.Im_Item,
  OSI.Mm_ObsItem, OSI.Im_Draw, OSI.Nr_Width, OSI.Nr_Height, OSI.Cd_Funcionario,
  F.Nm_Funcionario

from
  OServico_Item OSI

inner join
  Funcionario F
on
  F.Cd_Funcionario = OSI.Cd_Funcionario

where
  OSI.Cd_Filial = :Cd_Filial and
  OSI.Nr_OS    = :Nr_OS

order by
  OSI.Nr_Item

-- ===== TFRMOSERVICO.ADODsEndView
select
  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,
  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,
  B.Nm_Cidade + ' - ' + B.Sg_Estado  as Dp_Cidade,
  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao, 
  Cast( A.Cd_Rota as VarChar ) + ' - ' + C.Ds_Rota as Dp_Rota,
  A.Ds_Numero, A.Nr_Celular_1, A.Nr_Celular_2

from
  Emitente_Endereco A

inner join
  Cidade B
on
  B.Cd_Cidade = A.Cd_Cidade

left join
  Rota C
on
  C.Cd_Rota = A.Cd_Rota

where
  A.Cd_Emitente = :Cd_Emitente and
  A.Nr_Endereco = :Nr_Endereco

-- ===== TFRMOSERVICO_FIND.ADODsFind
select
  OS.Cd_Filial, OS.Nr_OS, OS.St_OS, OS.Dt_OS, OS.Cd_Emitente, E.Nm_Emitente, OS.Nr_Orcamento,
  OS.Dt_Entrega

from
  OServico OS

inner join
  Emitente E
on
  E.Cd_Emitente = OS.Cd_Emitente

where
  OS.Cd_Filial = :Cd_Filial and
  OS.Nr_OS     = :Nr_OS

-- ===== TFRMOSERVICO_ITEM.ADODsPrimary
select
  max( Nr_Item ) as NewItem

from
  OServico_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_OS     = :Nr_OS

-- ===== TFRMOSERVICO_ORCAMENTO.ADODsOrcamento
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item, OI.Ds_Ambiente,
  OI.Im_SubProduto, OI.Fl_Medida

from
  Orcamento_Item OI

where 
  OI.Cd_Filial     = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento

order by
  OI.Ds_Ambiente, OI.Nr_Item

-- ===== TFRMOSERVICO_ORCAMENTO.ADODsDetalhe
select
  Cd_Filial, Nr_Orcamento, Nr_Item,
  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe

from
  Orcamento_Detalhe

where
  Cd_Filial = :Cd_Filial and
  Nr_Orcamento = :Nr_Orcamento and
  Nr_Item = :Nr_Item

order by
  Nr_Item

-- ===== TFRMOSERVICO_ORCAMENTO.ADOCmdOrcamento
insert into OServico_Item( Cd_Filial, Nr_OS, Nr_Item, Cd_Produto,
  Nm_Produto, Mm_ObsItem, Im_Item, Cd_Funcionario )
values( :Cd_Filial, :Nr_OS, :Nr_Item, :Cd_Produto, :Nm_Produto, :Mm_ObsItem, :Im_Item, :Cd_Funcionario )

-- ===== TFRMOSERVICO_ORCAMENTO.ADODsItem
select
  max( Nr_Item ) as NewItem

from
  OServico_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_OS     = :Nr_OS

-- ===== TFRMPAGAR.ADODsDados
select
  P.Nr_Pagar, P.Dt_Emissao, P.St_Pagar, P.Cd_Emitente, 
  E.Nm_Emitente, E.Nm_Fantasia,
  P.Vl_Duplicata, P.Vl_Pago, P.Nr_Entrada, P.Cd_Grupo,
  AG.Nm_Grupo, P.Cd_SubGrupo, ASG.Nm_SubGrupo, EN.Nr_Fatura,
  P.Nr_Comissao, P.Ds_Pagar, P.Dt_Cancelamento

from
  Pagar P

inner join
  Emitente E
on
  E.Cd_Emitente = P.Cd_Emitente

inner join
  Aplicacao_Grupo AG
on
  AG.Cd_Grupo = P.Cd_Grupo

inner join
  Aplicacao_SubGrupo ASG
on
  ASG.Cd_SubGrupo = P.Cd_SubGrupo

left join
  Entrada EN
on
  EN.Cd_Filial = P.Cd_Filial and
  EN.Nr_Entrada = P.Nr_Entrada

where
  P.Cd_Filial = :Cd_Filial and
  P.Nr_Pagar  = :Nr_Pagar

-- ===== TFRMPAGAR.ADODsNavegar
-- First
select top 1
  Nr_Pagar

from
  Pagar

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Pagar

-- ===== TFRMPAGAR.ADODsParcela
select
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,
  A.Cd_Portador, B.Nm_Portador, A.Nr_Documento, A.Mm_Observacao

from
  Pagar_Parcela A

inner join
  Portador B
on
  B.Cd_Portador = A.Cd_Portador

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Pagar = :Nr_Pagar

order by
  A.Cd_Filial, A.Nr_Parcela

-- ===== TFRMPAGAR.ADODsHistorico
select
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Nr_Lancamento, A.Tp_Lancamento,
  A.Dt_Lancamento, A.Vl_Lancamento, A.Nr_DoctoBaixa, A.Cd_Usuario

from
  Pagar_Historico A

where
  A.Cd_Filial   = :Cd_Filial and
  A.Nr_Pagar   = :Nr_Pagar and
  A.Nr_Parcela = :Nr_Parcela

order by
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Nr_Lancamento

-- ===== TFRMPAGAR.ADODsEntrada
select
  Cd_Emitente, Vl_Nota

from
  Entrada

where
  Cd_Filial = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMPAGAR.ADODsAplicacaoOld
select top 1
  Cd_Grupo, Cd_SubGrupo

from
  Pagar

where
  Cd_Filial = :Cd_Filial and
  Cd_Emitente = :Cd_Emitente

order by
  Cd_Filial, Cd_Emitente, Nr_Pagar desc

-- ===== TFRMPAGAR_ALERTA.ADODsParcela
select
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,
  Cast( B.Cd_Emitente as VarChar( 5 ) ) + ' - ' + C.Nm_Emitente as Dp_Emitente,
  A.Vl_Parcela - A.Vl_Pago as Vl_Saldo, B.Cd_Grupo, B.Cd_SubGrupo,
  Cast( A.Nr_Pagar as VarChar( 5 ) ) + '/' +
    dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,
  DateDiff( Day, A.Dt_Vencimento, GetDate() ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora,
  B.Ds_Pagar

from
  Pagar_Parcela A

inner join
  Pagar B
on
  B.Nr_Pagar = A.Nr_Pagar and
  B.St_Pagar <= '2'

inner join
  Emitente C
on
  C.Cd_Emitente = B.Cd_Emitente

-- ===== TFRMPAGAR_ATUALIZAVENCTO.ADOCmdAtualiza
declare
  @Cd_Filial SmallInt,
  @Nr_Pagar Int,
  @Nr_Parcela SmallInt,
  @Vl_Parcela Numeric( 13, 2 )

select
  @Cd_Filial  = :Cd_Filial,
  @Nr_Pagar   = :Nr_Pagar,
  @Nr_Parcela = :Nr_Parcela,
  @Vl_Parcela = :Vl_Parcela

update
  Pagar

set
  Vl_Duplicata = :Vl_Duplicata

where
  Cd_Filial = @Cd_Filial and
  Nr_Pagar  = @Nr_Pagar

update
  Pagar_Parcela

set
  Vl_Parcela    = @Vl_Parcela,
  Dt_Vencimento = :Dt_Vencimento,
  Mm_Observacao = :Mm_Observacao

where
  Cd_Filial  = @Cd_Filial and
  Nr_Pagar   = @Nr_Pagar and
  Nr_Parcela = @Nr_Parcela

update
  Pagar_Historico

set
  Vl_Lancamento = @Vl_Parcela,
  Dt_Lancamento = :Dt_Lancamento,
  Cd_Usuario    = :Cd_Usuario

where
  Cd_Filial     = @Cd_Filial and
  Nr_Pagar      = @Nr_Pagar and
  Nr_Parcela    = @Nr_Parcela and
  Nr_Lancamento = 1

-- ===== TFRMPAGAR_ATUALIZAVENCTO.ADODsParAtualiza
select
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, 
  A.Vl_Pago, A.Mm_Observacao,
  A.Cd_Portador, 
  R.Vl_Duplicata

from
  Pagar_Parcela A

inner join
  Pagar R
on
  R.Cd_Filial = A.Cd_Filial and
  R.Nr_Pagar = A.Nr_Pagar

where
  A.Cd_Filial   = :Cd_Filial and
  A.Nr_Pagar    = :Nr_Pagar and
  A.Nr_Parcela  = :Nr_Parcela

-- ===== TFRMPAGAR_BAIXA.ADODsParcela
select
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,
  Cast( B.Cd_Emitente as VarChar( 5 ) ) + ' - ' + C.Nm_Emitente as Dp_Emitente,
  A.Vl_Parcela - A.Vl_Pago as Vl_Saldo, B.Cd_Grupo, B.Cd_SubGrupo,
  Cast( A.Nr_Pagar as VarChar( 5 ) ) + '/' +
    dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,
  DateDiff( Day, A.Dt_Vencimento, GetDate() ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora

from
  Pagar_Parcela A

inner join
  Pagar B
on
  B.Nr_Pagar = A.Nr_Pagar and
  B.St_Pagar <= '2'

inner join
  Emitente C
on
  C.Cd_Emitente = B.Cd_Emitente

-- ===== TFRMPAGAR_COPIA.ADODsCopiar
select
  Nr_SPID, Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,
  Cd_Portador, Nm_Portador, Nr_Documento, Mm_Observacao, Pr_Mora, Vl_Mora,
  St_Pagar, Cd_Emitente, Cd_Grupo, Cd_SubGrupo, Dp_Portador, Dp_Emitente, Dp_Pagar,
  Nr_Entrada, Ds_Pagar, Fl_Copiar,
  Dp_Copiar = case when Fl_Copiar = '1' then 'Sim' end

from
  ##PagarCopia

where
  Nr_SPID = @@SPID

order by
  Dt_Vencimento

-- ===== TFRMPAGAR_EMITENTE_REPORT.ADODsPago
select distinct
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,
  D.Nm_Emitente + '(' + D.Nm_Fantasia + ') - ' + Cast( C.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,
  Dt_Lancamento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldPago,
  B.Nr_Documento

into
  #pagotmp
  
from
  Pagar_Historico A

inner join
  Pagar_Parcela B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Pagar   = A.Nr_Pagar and
  B.Nr_Parcela = A.Nr_Parcela
inner join
  Pagar C
on
  C.Cd_Filial = A.Cd_Filial and
  C.Nr_Pagar  = A.Nr_Pagar
  and C.St_Pagar >= '2'
  and C.St_Pagar <= '3'
inner join
  Emitente D
on
  D.Cd_Emitente = C.Cd_Emitente
inner join
  Aplicacao_Grupo E
on
  E.Cd_Grupo = C.Cd_Grupo
inner join
  Aplicacao_SubGrupo F
on
  F.Cd_SubGrupo = C.Cd_SubGrupo
where
  A.Cd_Filial = 1 and
  A.Dt_Lancamento >= '04/24/2009' and
  A.Dt_Lancamento < '04/25/2009' and
  A.Tp_Lancamento >= '2'

select
  Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago, Dp_Emitente,
  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,
  Vl_Desconto, Vl_Debito, Nr_Documento,
     Cast( Nr_Pagar as VarChar( 6 )  ) + '/' +
     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Pagar,
  Vl_OldPago

from
  #PagoTMP

order by
  Dp_Emitente, Dt_Lancamento, Nr_Pagar, Nr_Parcela

-- ===== TFRMPAGAR_EMITENTE_REPORT.ADODsPagar
select
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,
  D.Nm_Emitente + '(' + D.Nm_Fantasia + ') - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Pago,
  Cast( A.Nr_Pagar as VarChar( 5 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,
  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo

from
  Pagar_Parcela A

inner join
  Pagar B
on
  B.Cd_Filial = A.Cd_Filial and
  B.Nr_Pagar  = A.Nr_Pagar and
  B.St_Pagar  <= '2'

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente

inner join
  Aplicacao_Grupo AG
on
  AG.Cd_Grupo = B.Cd_Grupo

inner join
  Aplicacao_SubGrupo ASG
on
  ASG.Cd_SubGrupo = B.Cd_SubGrupo

left join
  Pagar_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Pagar      = A.Nr_Pagar and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

where
  A.Cd_Filial     = :Cd_Filial and
  A.Dt_Vencimento >= '06/01/2008' and
  A.Dt_Vencimento < '08/07/2008'
group by
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 5 ) ),
  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo

having
  A.Vl_Parcela >
  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )

order by
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 5 ) ),
  A.Dt_Vencimento, A.Nr_Pagar, A.Nr_Parcela

-- ===== TFRMPAGAR_FIND.ADODsFind
select distinct
  P.Cd_Filial, P.Nr_Pagar, P.Dt_Emissao, P.Cd_Emitente, E.Nm_Emitente,
  P.Nr_Entrada, P.Vl_Duplicata, P.Vl_Pago, P.St_Pagar, P.Ds_Pagar,
  EN.Nr_Fatura

from
  Pagar P

inner join
  Emitente E
on
  E.Cd_Emitente = P.Cd_Emitente

left join
  Entrada EN
on
  EN.Cd_Filial  = P.Cd_Filial and
  EN.Nr_Entrada = P.Nr_Entrada
  /* Nr_Fatura */

/* Nr_Documento */
/* Nr_DoctoBaixa */
/* Vl_Parcela */

where
  P.Cd_Filial = :Cd_Filial
  /* Nr_Pagar */
  /* Cd_Emitente */
  /* Ds_Pagar */

-- ===== TFRMPAGAR_REPORT.ADODsPago
select distinct
  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,
  D.Nm_Emitente + ' - ' + Cast( C.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,
  A.Dt_Lancamento, C.Ds_Pagar,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldPago,
  B.Nr_Documento

into
  #pagotmp
  
from
  Pagar_Historico A

inner join
  Pagar_Parcela B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Pagar   = A.Nr_Pagar and
  B.Nr_Parcela = A.Nr_Parcela
inner join
  Pagar C
on
  C.Cd_Filial = A.Cd_Filial and
  C.Nr_Pagar  = A.Nr_Pagar
  and C.St_Pagar >= '2'
  and C.St_Pagar <= '3'
inner join
  Emitente D
on
  D.Cd_Emitente = C.Cd_Emitente
inner join
  Aplicacao_Grupo E
on
  E.Cd_Grupo = C.Cd_Grupo
inner join
  Aplicacao_SubGrupo F
on
  F.Cd_SubGrupo = C.Cd_SubGrupo
where
  A.Cd_Filial = 1 and
  A.Dt_Lancamento >= '05/01/2009' and
  A.Dt_Lancamento < '05/05/2009' and
  A.Tp_Lancamento >= '2'

select
  Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,
  Dp_Emitente, Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito,
  Vl_Abatimento, Vl_Desconto, Vl_Debito, Nr_Documento, Ds_Pagar,
     Cast( Nr_Pagar as VarChar( 7 )  ) + '/' +
     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Pagar,
  Vl_OldPago

from
  #PagoTMP

order by
  Dt_Lancamento, Dp_Emitente, Nr_Pagar, Nr_Parcela

-- ===== TFRMPAGAR_REPORT.ADODsPagar
select
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Pago,
  Cast( A.Nr_Pagar as VarChar( 6 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,
  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar

from
  Pagar_Parcela A

inner join
  Pagar B
on
  B.Cd_Filial = A.Cd_Filial and
  B.Nr_Pagar  = A.Nr_Pagar and
  B.St_Pagar  <= '2'
inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente

inner join
  Aplicacao_Grupo AG
on
  AG.Cd_Grupo = B.Cd_Grupo

inner join
  Aplicacao_SubGrupo ASG
on
  ASG.Cd_SubGrupo = B.Cd_SubGrupo

left join
  Pagar_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Pagar      = A.Nr_Pagar and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

where
  A.Cd_Filial     = :Cd_Filial and
  A.Dt_Vencimento >= '07/23/2008' and
  A.Dt_Vencimento < '08/01/2008'
group by
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 5 ) ),
  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar

having
  A.Vl_Parcela >
  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )

order by
  A.Dt_Vencimento, D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 5 ) ),
  A.Nr_Pagar, A.Nr_Parcela

-- ===== TFRMPAGAR_REPORT.ADODsEmissao
select
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,
  Cast( B.Cd_Emitente as VarChar( 5 ) ) + ' - ' + D.Nm_Emitente as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Pago,
  Cast( A.Nr_Pagar as VarChar( 5 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,
  B.Ds_Pagar

from
  Pagar B

inner join
  Pagar_Parcela A
on
  A.Cd_Filial = B.Cd_Filial and
  A.Nr_Pagar  = B.Nr_Pagar

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente

left join
  Pagar_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Pagar      = A.Nr_Pagar and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

where
  B.Cd_Filial   = :Cd_Filial and
  B.Dt_Emissao >= '02/01/2010' and
  B.Dt_Emissao < '02/02/2010' and
  B.St_Pagar <= '3'
group by
  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,
  Cast( B.Cd_Emitente as VarChar( 5 ) ) + ' - ' + D.Nm_Emitente,
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),
  B.Ds_Pagar

order by
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Pagar, A.Nr_Parcela

-- ===== TFRMPAGAR_RESUMOAPLICACAO.ADODsReport
-- Pelo Caixa
select
  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo,
  sum( C.Vl_Lancamento ) as Vl_Total
  
into
  #ResumoAplicacao

from
  Caixa C
  
inner join
  Aplicacao_Grupo AG
on
  AG.Cd_Grupo = C.Cd_Grupo
  
inner join
  Aplicacao_SubGrupo ASG
on
  ASG.Cd_SubGrupo = C.Cd_SubGrupo

where
  C.Cd_Filial      = :Cd_Filial and
  C.Dt_Lancamento >= :Dt_Start and
  C.Dt_Lancamento  < :Dt_End and
  C.Tp_Lancamento  = '2' and
  not exists(                                    -- Testa se existe estorno
    select
      E.Nr_Lancamento
      
    from
      Caixa E
      
    where
      E.Cd_Filial  = C.Cd_Filial and
      E.Nr_Estorno = C.Nr_Lancamento
    )

group by
  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo;

select
  RC.Cd_Grupo, RC.Cd_SubGrupo, RC.Nm_Grupo, RC.Nm_SubGrupo, RC.Vl_Total,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '01/01/2005' and
    M.Dt_Lancamento  < '02/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and'        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_01
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '02/01/2005' and
    M.Dt_Lancamento  < '03/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_02
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '03/01/2005' and
    M.Dt_Lancamento  < '04/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_03
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '04/01/2005' and
    M.Dt_Lancamento  < '05/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_04
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '05/01/2005' and
    M.Dt_Lancamento  < '06/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_05
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '06/01/2005' and
    M.Dt_Lancamento  < '07/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_06
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '07/01/2005' and
    M.Dt_Lancamento  < '08/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_07
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '08/01/2005' and
    M.Dt_Lancamento  < '09/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_08
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '09/01/2005' and
    M.Dt_Lancamento  < '10/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_09
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '10/01/2005' and
    M.Dt_Lancamento  < '11/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_10
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '11/01/2005' and
    M.Dt_Lancamento  < '12/01/2005' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_11
,
(
  select
    sum( M.Vl_Lancamento )
  from
    Caixa M
  where
    M.Cd_Filial      = 1 and
    M.Cd_Grupo       = RC.Cd_Grupo and
    M.Cd_SubGrupo    = RC.Cd_SubGrupo and
    M.Dt_Lancamento >= '12/01/2005' and
    M.Dt_Lancamento  < '01/01/2006' and
    M.Tp_Lancamento  = '2' and
    not exists(
      select
        E.Nr_Lancamento
      from
        Caixa E
      where
        E.Cd_Filial  = M.Cd_Filial and
        E.Nr_Estorno = M.Nr_Lancamento
) ) as Vl_Mes_12
from
  #ResumoAplicacao RC

order by
  RC.Cd_Grupo, RC.Cd_SubGrupo

-- ===== TFRMPORTADOR.ADODsDados
select
  P.cd_portador, P.nm_portador, P.cd_banco, P.cd_agencia, P.nr_conta,
  P.pr_taxajuros, P.cd_carteira, P.nr_remessa, P.fl_pagamento,
  P.nr_prazo_protesto, P.tp_cobranca, P.ds_boleto, P.mm_instrucao,
  P.ds_livre, P.im_logo, P.ds_carteira, P.Pr_Multa, P.Nr_Separador,
  P.Fl_Entrega, P.Cd_Emitente, E.Nm_Emitente, P.Pr_TxAdmCartao,
  P.Vl_Tarifa, P.Ds_LocalPagamento, P.Ds_Cobranca, P.Nr_Indicador,
  P.Nr_Unidade, P.Tp_Modelo, P.ClienteID, P.ClienteSecret, P.Nr_DataLimite

from
  Portador P

left join
  Emitente E
on
  E.Cd_Emitente = P.Cd_Emitente

where
  P.cd_portador = :Cd_Portador

-- ===== TFRMPORTADOR.ADODsReport
select
  cd_portador, nm_portador

from
  portador

order by
  nm_portador

-- ===== TFRMPORTADOR_FIND.ADODsFind
select
  cd_Portador, nm_portador,
  case fl_pagamento
    when '1' then 'Dinheiro'
    when '2' then 'Cheque'
    when '3' then 'Boleto'
    when '4' then 'Cartão'
    when '5' then 'Depósito'
    when '6' then 'Transferência'
    when '7' then 'Vale'
    when '8' then 'Tiquete'
    when '9' then 'Duplicata'
  end as Dp_Pagamento

from
  portador

where
  nm_portador like :find

order by
  nm_portador

-- ===== TFRMPORTADOR_VENDAS.ADODsPortador
-------------------- Vendas por emissão
select
  RP.Cd_Portador, P.Nm_Portador, sum( RP.Vl_Parcela ) as Vl_Portador

from
  Receber R

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial  = R.Cd_Filial and
  RP.Nr_Receber = R.Nr_Receber 

inner join
  Portador P
on
  P.Cd_Portador = RP.Cd_Portador

where
  R.Cd_Filial   = :Cd_Filial and
  R.Dt_Emissao >= :Dt_Start and
  R.Dt_Emissao  < :Dt_End and
  R.St_Receber  < '4'                   -- Não considera os cancelados

group by
  RP.Cd_Portador, P.Nm_Portador

order by
  3 desc

-- ===== TFRMPRODUCAO.ADODsDados
select
  Cd_Filial, Nr_Producao, Dt_Producao, St_Producao, Cd_Usuario,
  Dt_Inicio, Dt_Previsto, Dt_Termino, Mm_Observacao

from 
  Producao

where
  Cd_Filial   = :Cd_Filial and
  Nr_Producao = :Nr_Producao

-- ===== TFRMPRODUCAO.ADODsNavegar
-- First
select top 1
  Nr_Producao

from
  Producao

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Producao

-- ===== TFRMPRODUCAO.ADODsSetor
select
  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, S.Sg_Setor, PS.Id_Producao,
  PS.Cd_Funcionario, F.Nm_Funcionario, PS.Fl_Setor, PS.Dt_Inicio,
  PS.Dt_Termino
  
from
  Producao_Setor PS

inner join
  Setor S
on
  S.Cd_Setor = PS.Cd_Setor

left join
  Funcionario F
on
  F.Cd_Funcionario = PS.Cd_Funcionario

where
  PS.Cd_Filial   = :Cd_Filial and
  PS.Nr_Producao = :Nr_Producao and
  PS.Id_Producao = :Id_Producao

order by
  PS.Cd_Setor

-- ===== TFRMPRODUCAO.ADODsItem
select
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,

  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,
  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,
  PRI.Cd_Motivo, M.Ds_Motivo,

  OI.Fl_Medida, OI.Ds_Ambiente,

  OT.Nm_Emitente,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end,

  Ds_Peca =
    case
      when OI.Fl_Medida is null then OPI.Cd_Peca + ' - ' + PP.Ds_Peca
    end

from
  Producao_Item PRI

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento

left join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

left join
  Projeto_Peca PP
on
  PP.Cd_Peca = OPI.Cd_Peca

where
  PRI.Cd_Filial   = :Cd_Filial and
  PRI.Nr_Producao = :Nr_Producao

order by
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao

-- ===== TFRMPRODUCAO_ETIQUETA.ADODsReport
--------------- Etiqueta de produção
select
  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,
  P.Dt_Producao,

  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,
  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,
  PRI.Nr_Altura, PRI.Id_Reproducao,

  OI.Fl_Medida, OI.Ds_Ambiente,

  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,
  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota, O.Dt_Emissao,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end,

  Ps_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Ps_Produto
      else POPI.Ps_Produto

    end,

  Ds_Detalhe =
    case
      when OD.Ds_Detalhe is not null then OD.Ds_Detalhe
      else OPI.Cd_Peca + ' - ' + PP.Ds_Peca
    end,

  F.Nm_Funcionario, O.Nr_Entrega, O.Dt_Confirmado,

  Nr_Detalhes =
    (
    select
      sum( ODC.Qt_Item )

    from
      Orcamento_Detalhe ODC

    where
      ODC.Cd_Filial    = OI.Cd_Filial and
      ODC.Nr_Orcamento = OI.Nr_Orcamento and
      ODC.Nr_Item      = OI.Nr_Item
    ),

  Nr_Ordem =
    (
    select
      count( * )

    from
      Producao_Item PIC

    where
      PIC.Cd_Filial    = PRI.Cd_Filial and
      PIC.Nr_Orcamento = PRI.Nr_Orcamento and
      PIC.Nr_Item      = PRI.Nr_Item and
      PIC.Id_Producao <= PRI.Id_Producao
    ),

  Nr_Itens =
    (
    select
      Count( * )

    from
      Orcamento_Item OIC

    where
      OIC.Cd_Filial    = OI.Cd_Filial and
      OIC.Nr_Orcamento = OI.Nr_Orcamento
    )

from
  Producao P

inner join
  Producao_Item PRI
on
  PRI.Cd_Filial   = P.Cd_Filial and
  PRI.Nr_Producao = P.Nr_Producao
  /* Id_Producao */

inner join
  Orcamento O
on
  O.Cd_Filial    = PRI.Cd_Filial and
  O.Nr_Orcamento = PRI.Nr_Orcamento

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = PRI.Cd_Filial and
  OD.Nr_Orcamento = PRI.Nr_Orcamento and
  OD.Nr_Item      = PRI.Nr_Item and
  OD.Nr_Detalhe   = PRI.Nr_Detalhe

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

left join
  Projeto_Peca PP
on
  PP.Cd_Peca = OPI.Cd_Peca

where
  P.Cd_Filial   = :Cd_Filial and
  P.Nr_Producao = :Nr_Producao

  /* Pronto */

order by
  P.Cd_Filial, P.Nr_Producao, PRI.Id_Producao

-- ===== TFRMPRODUCAO_ETIQUETA.ADODsSetor
select
  PS.Cd_Filial, PS.Nr_Producao, PS.Id_Producao, PS.Cd_Setor, S.Sg_Setor

from
  Producao_Setor PS

inner join
  Setor S
on
  S.Cd_Setor = PS.Cd_Setor

where
  PS.Cd_Filial   = :Cd_Filial and
  PS.Nr_Producao = :Nr_Producao and
  PS.Id_Producao = :Id_Producao

order by
  PS.Cd_Setor

-- ===== TFRMPRODUCAO_ETIQUETA.ADODsTotal
select
  max( Id_Producao ) as IdProducao

from
  Producao_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Producao = :Nr_Producao

-- ===== TFRMPRODUCAO_FIND.ADODsFind
select
  Cd_Filial, Nr_Producao, Dt_Producao, St_Producao, Cd_Usuario,
  Dt_Inicio, Dt_Previsto, Dt_Termino

from 
  Producao

where
  Cd_Filial   = :Cd_Filial and
  Nr_Producao = :Nr_Producao

-- ===== TFRMPRODUCAO_MARCACAO.ADODsItem
select
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao, PRI.Nr_Orcamento,
  PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto, PRI.Nr_Item_Projeto,
  PRI.Cd_Motivo, PS.Cd_Setor, 

  OT.Nm_Emitente,

  OI.Im_SubProduto, P.Im_Projeto,

  OI.Fl_Medida, OD.Ds_Detalhe, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura,

  OPI.Cd_Peca, PP.Ds_Peca, OPI.Nr_Altura as Nr_Projeto_Altura,
  OPI.Nr_Largura as Nr_Projeto_Largura

from
  Producao_Item PRI

inner join
  Producao_Setor PS
on
  PS.Cd_Filial    = PRI.Cd_Filial and
  PS.Nr_Producao  = PRI.Nr_Producao and
  PS.Id_Producao  = PRI.Id_Producao

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = PRI.Cd_Filial and
  OD.Nr_Orcamento = PRI.Nr_Orcamento and
  OD.Nr_Item      = PRI.Nr_Item and
  OD.Nr_Detalhe   = PRI.Nr_Detalhe
  
left join
  Orcamento_Projeto OP
on
  OP.Cd_Filial    = PRI.Cd_Filial and
  OP.Nr_Orcamento = PRI.Nr_Orcamento and
  OP.Nr_Projeto   = PRI.Nr_Projeto

left join
  Projeto P
on
  P.Cd_Projeto = OP.Cd_Projeto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto 

left join
  Projeto_Peca PP
on
  PP.Cd_Peca = OPI.Cd_Peca

where
  PRI.Cd_Filial   = :Cd_Filial and
  PRI.Nr_Producao = :Nr_Producao and
  PRI.Id_Producao = :Id_Producao

-- ===== TFRMPRODUCAO_MARCACAO.ADODsMarcador
select
  Max( Id_Termino ) as Id_Termino

from
  Producao_Item

where
  Cd_Filial = :Cd_Filial and
  Dt_Termino >= :Dt_Start and
  Dt_Termino  < :Dt_End

-- ===== TFRMPRODUCAO_MARCACAO_DEFEITO.ADODsMotivo
declare
  @Cd_Filial SmallInt,
  @Nr_Producao Int,
  @Id_Producao SmallInt,
  @NewID SmallInt

select
  @Cd_Filial   = :Cd_Filial,
  @Nr_Producao = :Nr_Producao,
  @Id_Producao = :Id_Producao

--------------- Novo ID
set @NewID =
  (
  select
    max( Id_Producao )

  from
    Producao_Item

  where
    Cd_Filial   = @Cd_Filial and
    Nr_Producao = @Nr_Producao
  ) + 1

--------------- Retorna o dataset para impressão
select
  @NewID as NewID

-- ===== TFRMPRODUCAO_MOTIVO_REPORT.ADODsReport
select
  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,
  P.Dt_Producao,

  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,
  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,
  PRI.Nr_Altura, PRI.Id_Reproducao,

  OI.Fl_Medida,

  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,
  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end,

  Ps_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Ps_Produto
      else POPI.Ps_Produto

    end,

  OD.Ds_Detalhe, F.Nm_Funcionario as Nm_Vendedor, S.Sg_Setor, M.Ds_Motivo

from
  Producao_Item PRI

inner join
  Producao P
on
  P.Cd_Filial   = PRI.Cd_Filial and
  P.Nr_Producao = PRI.Nr_Producao

inner join
  Producao_Setor PS
on
  PS.Cd_Filial      = P.Cd_Filial and
  PS.Nr_Producao    = P.Nr_Producao and
  PS.Fl_Setor       = '5'                        -- Defeito
  /* Setor */
  /* Funcionario */

inner join
  Setor S
on
  S.Cd_Setor = PS.Cd_Setor

inner join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

inner join
  Orcamento O
on
  O.Cd_Filial    = PRI.Cd_Filial and
  O.Nr_Orcamento = PRI.Nr_Orcamento
  /* Emitente */

inner join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = PRI.Cd_Filial and
  OD.Nr_Orcamento = PRI.Nr_Orcamento and
  OD.Nr_Item      = PRI.Nr_Item and
  OD.Nr_Detalhe   = PRI.Nr_Detalhe

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  PRI.Cd_Filial   = :Cd_Filial and
  /* Motivo */
  PRI.Dt_Motivo  >= :Dt_Start and
  PRI.Dt_Motivo   < :Dt_End
  
order by
  PRI.Cd_Filial, PRI.Nr_Orcamento, PRI.Nr_Producao, PRI.Id_Producao

-- ===== TFRMPRODUCAO_OPTWAY.ADODsProduto
select distinct
  Cd_Produto =
    case
      when PRI.Nr_Projeto is null then OI.Cd_Produto
      else OPI.Cd_Produto

    end,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end

from
  Producao_Item PRI

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento

left join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  PRI.Cd_Filial   = :Cd_Filial and
  PRI.Nr_Producao = :Nr_Producao

-- ===== TFRMPRODUCAO_OPTWAY.ADODsItem
select
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,

  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,
  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,
  PRI.Cd_Motivo, M.Ds_Motivo, OT.Dt_Emissao, OT.Nm_Cidade, OT.Nr_Pedido_Emitente,

  Fl_Medida =
    case
      when OI.Fl_Medida is not null then OI.Fl_Medida
      else '3' -- sempre milimetros para projetos

    end,

  OT.Nm_Emitente, OT.Nm_Fantasia,

  Cd_Produto =
    case
      when PRI.Nr_Projeto is null then OI.Cd_Produto
      else OPI.Cd_Produto

    end,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end,

  Nm_Abreviado =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Abreviado
      else POPI.Nm_Abreviado

    end,

  IsNull( OD.Ds_Detalhe, PP.Ds_Peca ) as Ds_Detalhe,

  Vl_Unitario =
    case
      when PRI.Nr_Projeto is null then OI.Vl_Unitario
      else OPI.Vl_Unitario

    end

from
  Producao_Item PRI

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento

left join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Orcamento_Detalhe OD
on
  OD.Cd_Filial    = PRI.Cd_Filial and
  OD.Nr_Orcamento = PRI.Nr_Orcamento and
  OD.Nr_Item      = PRI.Nr_Item and
  OD.Nr_Detalhe = PRI.Nr_Detalhe

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Orcamento_Projeto OP
on
  OP.Cd_Filial    = OPI.Cd_Filial and
  OP.Nr_Orcamento = OPI.Nr_Orcamento and
  OP.Nr_Projeto   = OPI.Nr_Projeto

/*
left join
  Projeto_Item ProI
on
  ProI.Cd_Projeto = OP.Cd_Projeto and
  ProI.Nr_Item    = OPI.Nr_Item
*/
left join
  Projeto_Peca PP
on
  PP.Cd_Peca = OPI.Cd_Peca

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  PRI.Cd_Filial   = :Cd_Filial and
  PRI.Nr_Producao = :Nr_Producao

order by
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao

-- ===== TFRMPRODUCAO_ORCAMENTO.ADODsLista
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Pedidos em Estoque Reservado
select
  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,
  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,
  Fl_Alocado =
    case
      when Exists(
        select top 1
          Cd_Filial

        from
          Producao_Item PItem

        where
          PItem.Cd_Filial    = OT.Cd_Filial and
          PItem.Nr_Orcamento = OT.Nr_Orcamento
        ) then '1'
      else '2'
    end

from
  Orcamento_Total OT

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento
  /* Fl_Producao */

where
  OT.Cd_Filial      = @Cd_Filial and
  OT.St_Orcamento   = '5' and
  OT.Dt_Confirmado >= @Dt_Start and
  OT.Dt_Confirmado  < @Dt_End

--------------- Pedidos Fechados
union
select
  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,
  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,
  Fl_Alocado =
    case
      when Exists(
        select top 1
          Cd_Filial

        from
          Producao_Item PItem

        where
          PItem.Cd_Filial    = OT.Cd_Filial and
          PItem.Nr_Orcamento = OT.Nr_Orcamento
        ) then '1'
      else '2'
    end

from
  Orcamento_Total OT

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento
  /* Fl_Producao */

where
  OT.Cd_Filial      = @Cd_Filial and
  OT.St_Orcamento   = '9' and
  OT.Dt_Confirmado >= @Dt_Start and
  OT.Dt_Confirmado  < @Dt_End

order by
  OT.Cd_Filial, OT.St_Orcamento, OT.Dt_Confirmado desc

-- ===== TFRMPRODUCAO_ORCAMENTO.ADODsItem
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, P.Nm_Produto, OI.Im_SubProduto,
  OI.Qt_Item, OI.Fl_Medida,
  Dp_Alocacao =
    case
      when not Exists(
          select
            PrI.Cd_Filial

          from
            Producao_Item PrI

          where
            PrI.Cd_Filial    = OI.Cd_Filial and
            PrI.Nr_Orcamento = OI.Nr_Orcamento and
            PrI.Nr_Item      = OI.Nr_Item
          )
        then 'Não'
      when
          (
          select
            sum( OD.Qt_Item )

          from
            Orcamento_Detalhe OD

          where
            OD.Cd_Filial    = OI.Cd_Filial and
            OD.Nr_Orcamento = OI.Nr_Orcamento and
            OD.Nr_Item      = OI.Nr_Item

          ) >
          (
          select
            count( * )

          from
            Producao_Item PrI

          where
            PrI.Cd_Filial    = OI.Cd_Filial and
            PrI.Nr_Orcamento = OI.Nr_Orcamento and
            PrI.Nr_Item      = OI.Nr_Item
          )
        then 'Parcial'

      else 'Sim'

    end

from
  Orcamento_Item OI

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

where
  OI.Cd_Filial    = :Cd_Filial and
  OI.Nr_Orcamento = :Nr_Orcamento
  /* Alocacao */

order by
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item

-- ===== TFRMPRODUCAO_ORCAMENTO.ADODsDetalhe
select
  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe, OD.Qt_Item,
  OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe

from
  Orcamento_Detalhe OD


where
  OD.Cd_Filial    = :Cd_Filial and
  OD.Nr_Orcamento = :Nr_Orcamento and
  OD.Nr_Item      = :Nr_Item

order by
  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe

-- ===== TFRMPRODUCAO_ORCAMENTO.ADODsOrcaCheck
select
  OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente

from
  Orcamento_Total OT

where
  OT.Cd_Filial = :Cd_Filial and
  OT.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMPRODUCAO_PREVENTREGA.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

if Object_ID( 'TempDB..#ProducaoEntrega' ) is not null
  drop table #ProducaoEntrega

--------------- Orçamentos confirmados - Estoque Reservado
select
  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,
  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,
  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) ) as Dt_PrevEntrega,
  Qt_ItemOrcamento =
  Coalesce(
    (
    select
      sum( Qt_Item )

    from
      Orcamento_Detalhe OD

    where
      OD.Cd_Filial    = O.Cd_Filial and
      OD.Nr_Orcamento = O.Nr_Orcamento
    ), 0 ) +
  Coalesce(
    (
    select
      count( * )

    from
      Orcamento_Projeto_Item OPI

    where
      OPI.Cd_Filial    = O.Cd_Filial and
      OPI.Nr_Orcamento = O.Nr_Orcamento and
      OPI.Tp_Item      = '0'
    ), 0 ),

  Qt_Produzido =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is null and
      not Exists(
        select
          PS.Cd_Filial

        from
          Producao_Setor PS

        where
          PS.Cd_Filial   = PrI.Cd_Filial and
          PS.Nr_Producao = PrI.Nr_Producao and
          PS.Id_Producao = PrI.Id_Producao and
          PS.Dt_Termino is null
        )
    ),

  Qt_EmProducao =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is null and
      Exists(
        select
          PS.Cd_Filial

        from
          Producao_Setor PS

        where
          PS.Cd_Filial   = PrI.Cd_Filial and
          PS.Nr_Producao = PrI.Nr_Producao and
          PS.Id_Producao = PrI.Id_Producao and
          PS.Dt_Termino is null
        )
    ),

  Qt_Defeito =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is not null
    )

into
  #ProducaoEntrega

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

/* Cidade */

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Emitente */
  /* Cd_Funcionario */
  O.St_Orcamento = '5' and
  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) >= @Dt_Start and
  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao )  < @Dt_End 

union
--------------- Orçamentos Fechado
select
  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,
  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,
  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) ) as Dt_PrevEntrega,
  Qt_ItemOrcamento =
  Coalesce(
    (
    select
      sum( Qt_Item )

    from
      Orcamento_Detalhe OD

    where
      OD.Cd_Filial    = O.Cd_Filial and
      OD.Nr_Orcamento = O.Nr_Orcamento
    ), 0 ) +
  Coalesce(
    (
    select
      count( * )

    from
      Orcamento_Projeto_Item OPI

    where
      OPI.Cd_Filial    = O.Cd_Filial and
      OPI.Nr_Orcamento = O.Nr_Orcamento and
      OPI.Tp_Item      = '0'
    ), 0 ),

  Qt_Produzido =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is null and
      not Exists(
        select
          PS.Cd_Filial

        from
          Producao_Setor PS

        where
          PS.Cd_Filial   = PrI.Cd_Filial and
          PS.Nr_Producao = PrI.Nr_Producao and
          PS.Id_Producao = PrI.Id_Producao and
          PS.Dt_Termino is null
        )
    ),

  Qt_EmProducao =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is null and
      Exists(
        select
          PS.Cd_Filial

        from
          Producao_Setor PS

        where
          PS.Cd_Filial   = PrI.Cd_Filial and
          PS.Nr_Producao = PrI.Nr_Producao and
          PS.Id_Producao = PrI.Id_Producao and
          PS.Dt_Termino is null
        )
    ),

  Qt_Defeito =
    (
    select
      count(*)

    from
      Producao_Item PrI

    inner join
      Producao P
    on
      P.Cd_Filial   = PrI.Cd_Filial and
      P.Nr_Producao = PrI.Nr_Producao and
      P.St_Producao < '4'

    where
      PrI.Cd_Filial    = O.Cd_Filial and
      PrI.Nr_Orcamento = O.Nr_Orcamento and
      PrI.Cd_Motivo is not null
    )

from
  Orcamento O

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

/* Cidade */

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Emitente */
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) >= @Dt_Start and
  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao )  < @Dt_End


--------------- Seleciona somente os itens com detalhamentos
select
  Cd_Filial, Nr_Orcamento, Nm_Emitente, Dt_Fatura, Dt_Emissao,
  Dt_Confirmado, Nr_Entrega, St_Orcamento, Dt_PrevEntrega,
  Qt_ItemOrcamento, Qt_Produzido, Qt_EmProducao, Qt_Defeito

from
  #ProducaoEntrega

where
  Qt_ItemOrcamento > 0

order by
  Cd_Filial, Dt_PrevEntrega

-- ===== TFRMPRODUCAO_REPORT.ADODsReport
select
  P.Dt_Inicio, P.Dt_Termino, P.Dt_Previsto,
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,

  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,
  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,
  PRI.Cd_Motivo, M.Ds_Motivo,

  OI.Fl_Medida,

  OT.Nm_Emitente,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end

from
  Producao P

inner join
  Producao_Item PRI
on
  PRI.Cd_Filial   = P.Cd_Filial and
  PRI.Nr_Producao = P.Nr_Producao

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento
  /* Cd_Emitente */

left join
  Motivo M
on
  M.Cd_Motivo = PRI.Cd_Motivo

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  P.Cd_Filial   = :Cd_Filial and
  P.Dt_Inicio  >= :Dt_Start and
  P.Dt_Inicio   < :Dt_End

order by
  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao

-- ===== TFRMPRODUCAO_REPORT.ADODsItem
select
  Cd_Produto =
    case
      when PRI.Nr_Projeto is null then OI.Cd_Produto
      else OPI.Cd_Produto

    end,

  Nm_Produto =
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end,

  Qt_Area = sum(
    case
      when PRI.Nr_Projeto is not null then
        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) / 100000.0
      else
        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) /
          case
            when OI.Fl_Medida = '1' then 10000.0      -- Centimetros
            when OI.Fl_Medida = '2' then 100.0        -- Metros
            when OI.Fl_Medida = '3' then 1000000.0    -- Milimetros

          end

    end )

from
  Producao P

inner join
  Producao_Item PRI
on
  PRI.Cd_Filial   = P.Cd_Filial and
  PRI.Nr_Producao = P.Nr_Producao

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PRI.Cd_Filial and
  OT.Nr_Orcamento = PRI.Nr_Orcamento
  /* Cd_Emitente */

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PRI.Cd_Filial and
  OI.Nr_Orcamento = PRI.Nr_Orcamento and
  OI.Nr_Item      = PRI.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PRI.Cd_Filial and
  OPI.Nr_Orcamento = PRI.Nr_Orcamento and
  OPI.Nr_Projeto   = PRI.Nr_Projeto and
  OPI.Nr_Item      = PRI.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  P.Cd_Filial   = :Cd_Filial 

group by
    case
      when PRI.Nr_Projeto is null then OI.Cd_Produto
      else OPI.Cd_Produto

    end,
    
    case
      when PRI.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end

order by
  3 desc

-- ===== TFRMPRODUCAO_REPORT_SETOR.ADODsReport
select
  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, PS.Id_Producao,
  PS.Dt_Inicio as Dt_Parametro,
  PItem.Nr_Orcamento, PItem.Nr_Item, PItem.Nr_Detalhe,
  PItem.Nr_Projeto, PItem.Nr_Item_Projeto, PItem.Nr_Comprimento,
  PItem.Nr_Largura, PItem.Nr_Altura,

  OT.Nm_Funcionario,

  S.Nm_Setor, S.Sg_Setor,

  OI.Fl_Medida,

  Nm_Produto =
    case
      when PItem.Nr_Projeto is null then POI.Nm_Produto
      else POPI.Nm_Produto

    end

from
  Producao_Setor PS

inner join
  Setor S
on
  S.Cd_Setor = PS.Cd_Setor

inner join
  Producao P
on
  P.Cd_Filial   = PS.Cd_Filial and
  P.Nr_Producao = PS.Nr_Producao and
  P.St_Producao < '4'                  ----- Somente itens não cancelados

inner join
  Producao_Item PItem
on
  PItem.Cd_Filial   = PS.Cd_Filial and
  PItem.Nr_Producao = PS.Nr_Producao and
  PItem.Id_Producao = PS.Id_Producao

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = PItem.Cd_Filial and
  OT.Nr_Orcamento = PItem.Nr_Orcamento

left join
  Orcamento_Item OI
on
  OI.Cd_Filial    = PItem.Cd_Filial and
  OI.Nr_Orcamento = PItem.Nr_Orcamento and
  OI.Nr_Item      = PItem.Nr_Item

left join
  Produto POI
on
  POI.Cd_Produto = OI.Cd_Produto

left join
  Orcamento_Projeto_Item OPI
on
  OPI.Cd_Filial    = PItem.Cd_Filial and
  OPI.Nr_Orcamento = PItem.Nr_Orcamento and
  OPI.Nr_Projeto   = PItem.Nr_Projeto and
  OPI.Nr_Item      = PItem.Nr_Item_Projeto

left join
  Produto POPI
on
  POPI.Cd_Produto = OPI.Cd_Produto

where
  PS.Cd_Filial = :Cd_Filial

order by
  PS.Cd_Filial, PS.Cd_Setor

-- ===== TFRMPRODUCAO_SERVICO.ADODsOrcamento
select
  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,
  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,

  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota

from
  Orcamento O             

inner join
  Emitente E
on
  E.Cd_Emitente = O.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = O.Cd_Emitente and
  EE.Nr_Endereco = O.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

where
  O.Cd_Filial    = :Cd_Filial and
  O.Nr_Orcamento = :Nr_Orcamento

-- ===== TFRMPRODUCAO_SERVICO.ADODsItem
--------------- Cria a tabela temporaria
if Object_ID( 'TempDB..##ProdItem' ) is null
  create table ##ProdItem
    (
    Nr_Projeto SmallInt,
    Nr_Item SmallInt,
    Nr_Detalhe SmallInt,
    Qt_Item SmallInt,
    Cd_Produto Int,
    Nm_Produto VarChar( 120 ),
    Nr_Altura Numeric( 9, 3 ),
    Nr_Largura Numeric( 9, 3 ),
    Nr_Comprimento Numeric( 9, 3 ),
    Ds_Detalhe varchar( 50 ),
    Fl_Medida char( 1 ),
    Fl_Produzir char( 1 ),
    Fl_Origem Char( 1 ),
    Nr_SPID Int default @@SPID,
    Id_Producao SmallInt identity( 1, 1 )
    )

else
  delete from
    ##ProdItem

  where
    Nr_SPID = @@SPID

if Object_ID( 'TempDB..##ProdSetor' ) is null
  create table ##ProdSetor
    (
    Nr_SPID Int default @@SPID,
    Cd_Setor SmallInt,
    Id_Producao SmallInt
    )
    
else
  delete from
    ##ProdSetor

  where
    Nr_SPID = @@SPID

select
  Nr_SPID, Id_Producao,
  Nr_Projeto, Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto, Nm_Produto, Nr_Altura,
  Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir

from
  ##ProdItem

where
  Nr_SPID = @@SPID
  /* Fl_Produzir */

order by
  Nr_Projeto, Nr_Item, Nr_Detalhe

-- ===== TFRMPRODUCAO_SERVICO.ADODsSetor
select
  S.Cd_Setor, S.Sg_Setor, PS.Nr_SPID, PS.Id_Producao

from
  Setor S

left join
  ##ProdSetor PS
on
  PS.Nr_SPID     = @@SPID and
  PS.Cd_Setor   = S.Cd_Setor and
  PS.Id_Producao = :Id_Producao

where
  S.Fl_Ativo = '1'

order by
  S.Cd_Setor

-- ===== TFRMPRODUCAO_SERVICO.ADODsID
select
  max( Id_Producao ) as Id_Producao

from
  Producao_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Producao = :Nr_Producao

-- ===== TFRMPRODUTO.ADODsDados
select
  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,
  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,
  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, 
  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,
  P.Sg_Estoque + ' - ' + UE.Ds_Unidade as Dp_Estoque,
  P.Sg_Venda + ' - ' + UV.Ds_Unidade as Dp_Venda,
  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,
  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,
  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,
  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,
  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, 
  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,
  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,
  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, 
  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,
  P.Cd_CEST, P.Cd_cProdANP, P.Ds_DescANP

from
  Produto P

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

inner join
  Localizacao L
on
  L.Cd_Localizacao = P.Cd_Localizacao

inner join
  Unidade UE
on
  UE.Sg_Unidade = P.Sg_Estoque

inner join
  Unidade UV
on
  UV.Sg_Unidade = P.Sg_Venda

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

left join
  Laboratorio LB
on
  LB.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Arredondamento A
on
  A.Cd_Arredondamento = P.Cd_Arredondamento

left join
  Produto PB
on
  PB.Cd_Produto = P.Cd_Baixa

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMPRODUTO.ADODsNavegar
-- First
select top 1
  Cd_Produto

from
  Produto

order by
  Cd_Produto

-- ===== TFRMPRODUTO.ADODsReport
select
  Cd_Produto, Nm_Produto, Im_Produto, Cd_ClasFiscal

from
  Produto

order by
  Nm_Produto

-- ===== TFRMPRODUTO_CHANGE.ADOCmdProduto
execute ProdutoChange :Cd_Old, :Cd_New

-- ===== TFRMPRODUTO_COMPOSICAO.ADODsDados
select
  PC.Cd_Composto, C.Nm_Composto

from
  Produto_Composicao PC

inner join
  Composto C
on
  C.Cd_Composto = PC.Cd_Composto

where
  PC.Cd_Produto = :Cd_Produto

order by
  C.Nm_Composto

-- ===== TFRMPRODUTO_COMPOSICAO.ADODsReport
select
  PC.Cd_Composto, C.Nm_Composto

from
  Produto_Composicao PC

inner join
  Composto C
on
  C.Cd_Composto = PC.Cd_Composto

where
  PC.Cd_Produto = :Cd_Produto

order by
  C.Nm_Composto

-- ===== TFRMPRODUTO_COMPOSICAO.ADODsPrimary
select
  Cd_Composto

from
  Produto_Composicao

where
  Cd_Produto  = :Cd_Produto and
  Cd_Composto = :Cd_Composto

-- ===== TFRMPRODUTO_CONJUNTO.ADODsDados
select
  PC.Cd_Produto_CJ, PC.Cd_Produto, P.Nm_Produto, PC.Qt_Item,
  PP.Vl_Venda * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Venda,
  PP.Vl_Venda * PC.Qt_Item * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Total,
  PP.Vl_Reposicao * PC.Qt_Item * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Custo,
  P.Sg_Estoque

from
  Produto_Conjunto PC

inner join
  Produto P
on
  P.Cd_Produto = PC.Cd_Produto

left join
  Produto_Preco PP
on
  PP.Cd_Tabela = :Cd_Tabela and
  PP.Cd_Produto = PC.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

where
  PC.Cd_Produto_CJ = :Cd_Produto_CJ

order by
  P.Nm_Produto

-- ===== TFRMPRODUTO_CONJUNTO.ADODsReport
select
  PC.Cd_Produto_CJ, PC.Cd_Produto, P.Nm_Produto, PC.Qt_Item,
  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,
  PP.Vl_Venda * PC.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Total

from
  Produto_Conjunto PC

inner join
  Produto P
on
  P.Cd_Produto = PC.Cd_Produto

left join
  Produto_Preco PP
on
  PP.Cd_Tabela = :Cd_Tabela and
  PP.Cd_Produto = PC.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = P.Cd_Produto and
  PU.Sg_Unidade = P.Sg_Venda

where
  PC.Cd_Produto_CJ = :Cd_Produto_CJ

order by
  P.Nm_Produto

-- ===== TFRMPRODUTO_CONJUNTO.ADODsPreco
select
  Cd_Produto

from
  Produto_Preco

where
  Cd_Tabela  = :Cd_Tabela and
  Cd_Produto = :Cd_Produto

-- ===== TFRMPRODUTO_CONJUNTO_FIND.ADODsEstoque
select
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,
  P.Cd_Barra, P.Cd_Fabricante,
 P.Tp_Preco, PP.Dt_Alteracao,
  sum( ES.Qt_Entrada ) as Qt_Entrada,
  sum( ES.Qt_Saida ) as Qt_Saida,
  sum( ES.Qt_Orcamento ) as Qt_Orcamento,
  sum( ES.Qt_Balcao ) as Qt_Balcao,
  sum( ES.Qt_Reserva ) as Qt_Reserva,
  sum( ES.Qt_Saldo ) as Qt_Saldo,
  sum( ES.Qt_Liquido ) as Qt_Liquido,

  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco

from
  Produto P

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PUV
on
  PUV.Cd_Produto = P.Cd_Produto and
  PUV.Sg_Unidade = P.Sg_Venda

where
  P.Nm_Produto like '%' 

group by
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,
  P.Cd_Barra, P.Cd_Fabricante,
  P.Tp_Preco,
  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ), PP.Dt_Alteracao

-- ===== TFRMPRODUTO_CONJUNTO_FIND.ADODsUnidade
select
  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,
  avg( E.Qt_Liquido / PU.Nr_Fator ) as Qt_Estoque,
  avg( :Vl_Vendido * PU.Nr_Fator ) as Vl_Unitario

from
  Estoque_Saldo E

inner join
  Produto_Unidade PU
on
  PU.Cd_Produto = E.Cd_Produto

inner join
  Unidade U
on
  U.Sg_Unidade = PU.Sg_Unidade

where
  E.Cd_Filial  = :Cd_Filial and
  E.Cd_Produto = :Cd_Produto

group by
  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator

order by
  PU.Sg_Unidade

-- ===== TFRMPRODUTO_CONJUNTO_ITEM.ADODsCheck
select
  PC.Cd_Produto

from
  Produto_Conjunto PC

where
  PC.Cd_Produto_CJ = :Cd_Produto_CJ and
  PC.Cd_Produto    = :Cd_Produto

-- ===== TFRMPRODUTO_CONJUNTO_REPORT.ADODsReport
select
  O.Nr_Orcamento, O.Nm_Emitente, OI.Qt_Item, OI.Vl_Unitario, O.Nm_Funcionario,
  O.Dt_Fatura, O.Mg_Pedido

from
  Orcamento_Total O

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto and
  P.Fl_Produto = '3'

where
  O.Cd_Filial    = :Cd_Filial and
  /* Cd_Funcionario */
  /* Cd_Emitente */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

order by
  O.Dt_Fatura, O.Nr_Orcamento

-- ===== TFRMPRODUTO_CONSULTA.ADODsEstoque
select
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,
 P.Cd_Barra, P.Cd_Fabricante,
 P.Tp_Preco, PP.Dt_Alteracao, P.Cd_ClasFiscal,
  sum( ES.Qt_Entrada ) as Qt_Entrada,
  sum( ES.Qt_Saida ) as Qt_Saida,
  sum( ES.Qt_Orcamento ) as Qt_Orcamento,
  sum( ES.Qt_Balcao ) as Qt_Balcao,
  sum( ES.Qt_Reserva ) as Qt_Reserva,
  sum( ES.Qt_Saldo ) as Qt_Saldo,
  sum( ES.Qt_Liquido ) as Qt_Liquido,

  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco,

  L.Nm_Laboratorio

from
  Produto P

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PUV
on
  PUV.Cd_Produto = P.Cd_Produto and
  PUV.Sg_Unidade = P.Sg_Venda

left join 
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

where
  P.Nm_Produto like '%' 

group by
  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,
  P.Cd_Barra, P.Cd_Fabricante,
  P.Tp_Preco, L.Nm_Laboratorio, P.Cd_ClasFiscal,
  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ), PP.Dt_Alteracao

-- ===== TFRMPRODUTO_CONSULTA.ADODsUnidade
select
  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,
  avg( E.Qt_Liquido / PU.Nr_Fator ) as Qt_Estoque,
  avg( :Vl_Vendido * PU.Nr_Fator ) as Vl_Unitario

from
  Estoque_Saldo E

inner join
  Produto_Unidade PU
on
  PU.Cd_Produto = E.Cd_Produto

inner join
  Unidade U
on
  U.Sg_Unidade = PU.Sg_Unidade

where
  E.Cd_Filial  = :Cd_Filial and
  E.Cd_Produto = :Cd_Produto

group by
  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator

order by
  PU.Sg_Unidade

-- ===== TFRMPRODUTO_CONSULTA.ADODsFornecido
select
  EI.Cd_Filial, EI.Cd_Produto, EI.Nr_Entrada, EM.Nm_Emitente, 
  E.Dt_Lancamento, EI.Qt_Item, EI.Vl_Unitario

from
  Entrada_Item EI

inner join
  Entrada E
on
  E.Cd_Filial  = EI.Cd_Filial and
  E.Nr_Entrada = EI.Nr_Entrada and
  E.St_Entrada = '2'

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Tp_Operacao = '1' and
  CF.Tp_CFOP     = '1'

inner join
  Emitente EM
on
  EM.Cd_Emitente = E.Cd_Emitente

where
  EI.Cd_Filial  = :Cd_Filial and
  EI.Cd_Produto = :Cd_Produto

order by
  E.Dt_Lancamento Desc

-- ===== TFRMPRODUTO_ETIQUETA.ADODsEtiqueta
select
  P.Nm_Abreviado, PP.Vl_Venda, PP.Vl_Promocao

from
  Produto P

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

where
  P.Cd_Produto = :Cd_Produto

-- ===== TFRMPRODUTO_FIND.ADODsFind
select
  A.Cd_Produto, A.Nm_Produto, A.Sg_Estoque, A.Nr_Sequencia, A.Cd_ClasFiscal, A.Cd_Barra,
  A.Fl_Ativo, E.Nm_Emitente,A.Cd_Laboratorio,L.Nm_Laboratorio,
  case
    when PP.Vl_Promocao > 0 then PP.Vl_Promocao
    else PP.Vl_Venda
  end * PU.Nr_Fator as Vl_Unitario,
  case when A.Fl_Ativo = '1' then 'Sim' end as Dp_Ativo

from
  Produto A

left join
 Laboratorio L
on
  L.Cd_Laboratorio  = A.Cd_Laboratorio

left join
  Produto_Preco PP
on
  PP.Cd_Tabela  = :Cd_Tabela and
  PP.Cd_Produto = A.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = A.Cd_Produto and
  PU.Sg_Unidade = A.Sg_Venda

left join
  Emitente E
on
  E.Cd_Emitente = A.Cd_Emitente

where
  A.Nm_Produto like :Find

order by
  A.Nm_Produto

-- ===== TFRMPRODUTO_FORNECEDOR.ADODsDados
select
  PF.Cd_Produto, PF.Cd_Emitente, E.Nm_Emitente, PF.Cd_Produto_Emitente

from
  Produto_Fornecedor PF

inner join
  Emitente E
on
  E.Cd_Emitente = PF.Cd_Emitente

where
  PF.Cd_Produto = :Cd_Produto

order by
  E.Nm_Emitente

-- ===== TFRMPRODUTO_FORNECEDOR.ADODsReport
select
  PF.Cd_Produto, PF.Cd_Emitente, E.Nm_Emitente, PF.Cd_Produto_Emitente

from
  Produto_Fornecedor PF

inner join
  Emitente E
on
  E.Cd_Emitente = PF.Cd_Emitente

where
  PF.Cd_Produto = :Cd_Produto

order by
  E.Nm_Emitente

-- ===== TFRMPRODUTO_FORNECEDOR.ADOCmdDelete
delete from
  Produto_Fornecedor

where
  Cd_Produto  = :Cd_Produto and
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMPRODUTO_FORNECEDOR_INSERT.ADOCmdInsert
insert into Produto_Fornecedor( Cd_Produto, Cd_Emitente, Cd_Produto_Emitente, Nr_Fator_Fornecedor, Nr_Fator_Distribuidor )
values( :Cd_Produto, :Cd_Emitente, :Cd_Produto_Emitente, 0, 0 )

-- ===== TFRMPRODUTO_FORNECEDOR_INSERT.ADODsPrimary
select
  Cd_Produto

from 
  Produto_Fornecedor

where
  Cd_Produto  = :Cd_Produto and
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMPRODUTO_FORNECIDO.ADODsFornecido
select
  EI.Nr_Entrada, EM.Nm_Emitente, EM.Nr_Documento, C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  E.Dt_Lancamento, EI.Qt_Item, EI.Vl_Unitario

from
  Entrada_Item EI

inner join
  Entrada E
on
  E.Cd_Filial  = EI.Cd_Filial and
  E.Nr_Entrada = EI.Nr_Entrada and
  E.St_Entrada = '2'

inner join
  Emitente EM
on
  EM.Cd_Emitente = E.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = EM.Cd_Emitente and
  EE.Nr_Endereco = EM.Nr_Endereco

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

where
  EI.Cd_Filial  = :Cd_Filial and
  EI.Cd_Produto = :Cd_Produto

order by
  E.Dt_Lancamento Desc

-- ===== TFRMPRODUTO_PRAZO.ADODsDados
select
  Nr_Prazo, Pr_AVista, Pr_Acres_Prazo, Pr_Decres_Prazo

from
  Produto_Prazo

where
  Nr_Prazo = :Nr_Prazo

-- ===== TFRMPRODUTO_PRAZO.ADODsReport
select
  Nr_Prazo, Pr_AVista, Pr_Acres_Prazo, Pr_Decres_Prazo

from
  Produto_Prazo

order by
  Nr_Prazo

-- ===== TFRMPRODUTO_PRAZO.ADODsPrimary
-- Check Primary Key
select
  Nr_Prazo

from
  Produto_Prazo

where
  Nr_Prazo = :Nr_Prazo

-- ===== TFRMPRODUTO_PRAZO_FIND.ADODsFind
select
  Nr_Prazo, Pr_AVista, Pr_Acres_Prazo, Pr_Decres_Prazo

from
  Produto_Prazo

order by
  Nr_Prazo

-- ===== TFRMPRODUTO_RANKING.ADODsRanking
select /* Limit */
  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque, P.Nm_Abreviado,
  sum( OI.Vl_Venda ) as Vl_Vendido,
  sum( OI.Qt_Estoque ) as Qt_Vendido

from
  Orcamento O

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'
  
inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Cd_Grupo */
  /* Cd_SubGrupo */

where
  O.Cd_Filial    = :Cd_Filial and
  /* Fl_Estoque */
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= :Dt_Start and
  O.Dt_Fatura    < :Dt_End

group by
  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque, P.Nm_Abreviado

order by
  5 desc

-- ===== TFRMPRODUTO_REPORT.ADODsInventario
select
  P.Cd_Produto, P.Nm_Produto, ES.Sg_Estoque, ES.Sg_Venda, ES.Qt_Saldo,
  ES.Qt_Liquido, ES.Qt_Saldo_Venda, ES.Qt_Liquido_Venda, PP.Vl_Custo,
  L.Nm_Laboratorio, PP.Vl_Venda, P.Qt_Est_Minimo, P.Qt_Est_Maximo,
  P.Cd_Fabricante, Loc.Ds_Localizacao

from
  Produto P

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = 'PADRAO' and
  PP.Cd_Produto = P.Cd_Produto

left join
  Localizacao Loc
on
  Loc.Cd_Localizacao = P.Cd_Localizacao

left join
  Estoque_Saldo ES
on
  ES.Cd_Filial  = :Cd_Filial and
  ES.Cd_Produto = P.Cd_Produto

-- ===== TFRMPRODUTO_REPORT.ADODsEtiqueta
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Sg_Venda, P.Nm_Abreviado,
  P.Cd_Fabricante, P.Cd_Barra, L.Nm_Laboratorio

from
  Produto P

left join
  Laboratorio L
on
  L.Nm_Laboratorio = P.Cd_Laboratorio

-- ===== TFRMPRODUTO_TABELA.ADODsDados
select
  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa,
  Nr_Entrega

from
  Produto_TblPreco

where
  Cd_Tabela = :Cd_Tabela

-- ===== TFRMPRODUTO_TABELA.ADODsNavegar
-- First
select top 1
  Cd_Tabela

from
  Produto_TblPreco

order by
  Cd_Tabela

-- ===== TFRMPRODUTO_TABELA.ADODsReport
select
  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa

from
  Produto_TblPreco

order by
  Cd_Tabela

-- ===== TFRMPRODUTO_TABELA.ADODsTabela
create table #TmpProdPreco
  (
  Cd_Produto Int,
  Qt_Estoque Numeric( 12, 3 )
  )

select
  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco,
  P.Sg_Venda, L.Nm_Laboratorio, P.Cd_Fabricante,
  TPP.Qt_Estoque, P.Ps_Produto,
  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Venda,
  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) as Vl_Estoque,
  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Custo

from
  #TmpProdPreco TPP

inner join
  Produto_TblPreco PTP
on
  PTP.Cd_Tabela = :Cd_Tabela

inner join
  Produto P
on
  P.Cd_Produto = TPP.Cd_Produto

  and P.Nm_Produto like 'aço%'
  and P.Fl_Ativo = '1'
inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = PTP.Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto
inner join
  Produto_Unidade PUV
on
  PUV.Cd_Produto = P.Cd_Produto and
  PUV.Sg_Unidade = P.Sg_Venda
inner join
  Produto_Unidade PUE
on
  PUE.Cd_Produto = P.Cd_Produto and
  PUE.Sg_Unidade = P.Sg_Estoque
left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio
  order by
  P.Nm_Produto

-- ===== TFRMPRODUTO_TABELA_REPORT.ADODsTabela
create table #TmpProdPreco
  (
  Cd_Produto Int,
  Qt_Estoque Numeric( 12, 3 )
  )

select
  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco,
  P.Sg_Venda, L.Nm_Laboratorio, P.Cd_Fabricante,
  TPP.Qt_Estoque, P.Ps_Produto, PUV.Nr_Fator,
  P.Cd_Grupo, G.Nm_Grupo, P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe,
  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Venda,
  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) as Vl_Estoque,
  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Custo

from
  #TmpProdPreco TPP

inner join
  Produto_TblPreco PTP
on
  PTP.Cd_Tabela = :Cd_Tabela

inner join
  Produto P
on
  P.Cd_Produto = TPP.Cd_Produto

  and P.Nm_Produto like 'aço%'
  and P.Fl_Ativo = '1'
inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = PTP.Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto
inner join
  Produto_Unidade PUV
on
  PUV.Cd_Produto = P.Cd_Produto and
  PUV.Sg_Unidade = P.Sg_Venda
inner join
  Produto_Unidade PUE
on
  PUE.Cd_Produto = P.Cd_Produto and
  PUE.Sg_Unidade = P.Sg_Estoque
inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio
  order by
  P.Nm_Produto

-- ===== TFRMPRODUTO_TABELA_UPDATE.ADODsItem
select
  A.Cd_Produto, A.Nm_Produto, A.Nr_Sequencia, A.Vl_Atual_Custo,
  A.Vl_Atual_Reposicao, A.Vl_Atual_Venda, A.Vl_Custo, A.Vl_Reposicao,
  A.Vl_Venda, A.Vl_Atual_Reposicao, A.Vl_Reposicao

from
  ##TblPreco A

where
  A.Nm_Produto like 'Verg%'

order by
  A.Nr_Sequencia

-- ===== TFRMPRODUTO_TABELA_VIEW.ADODsTabela
select
  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa

from
  Produto_TblPreco

where
  Fl_Ativa = '1' and
  (
  Dt_Termino is null or
  Dt_Termino > :Dt_Now
  )

order by
  Dt_Inicio

-- ===== TFRMPRODUTO_UNIDADE.ADODsDados
select
  case
    when PU.Sg_Unidade = :Sg_Estoque then '0'
    when PU.Nr_Fator > 0 then '1'
    else '2'
  end as Nr_Ordem,

  U.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Unidade U

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = :Cd_Produto and
  PU.Sg_Unidade = U.Sg_Unidade

order by
  1, U.Sg_Unidade

-- ===== TFRMPRODUTO_UNIDADE.ADODsReport
select
  U.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator, PU.Nr_Indice

from
  Produto_Unidade PU

inner join
  Unidade U
on
  U.Sg_Unidade = PU.Sg_Unidade

where
  PU.Cd_Produto = :Cd_Produto 

order by
  U.Sg_Unidade

-- ===== TFRMPRODUTO_VENDAS.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

if Object_ID( 'TempDB..#ProdVendas' ) is not null
  drop table #ProdVendas

if Object_ID( 'TempDB..#ProdVendas' ) is not null
  drop table #ProdVendas

------------------------- Seleciona os produtos
select
  OI.Cd_Produto, OI.Sg_Estoque,
  sum( OI.Vl_Venda ) as Vl_Vendido,
  sum( OI.Qt_Estoque ) as Qt_Vendido

into
  #ProdVendas

from
  Orcamento O

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'
  
inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Cd_Grupo */
  /* Cd_SubGrupo */

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End

group by
  OI.Cd_Produto, OI.SG_Estoque

------------------------- Seleciona os produtos de conjunto
insert into #ProdVendas
select
  OC.Cd_Produto, OC.Sg_Unidade as Sg_Estoque,
  sum( OC.Vl_Venda ) as Vl_Vendido,
  sum( OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido

from
  Orcamento O

inner join
  Orcamento_Conjunto_Total OC
on
  OC.Cd_Filial     = O.Cd_Filial and
  OC.Nr_Orcamento  = O.Nr_Orcamento

inner join
  Produto P
on
  P.Cd_Produto = OC.Cd_Produto
  /* Cd_Grupo */
  /* Cd_SubGrupo */

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = OC.Cd_Produto and
  PU.Sg_Unidade = OC.Sg_Unidade

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End

group by
  OC.Cd_Produto, OC.Sg_Unidade

/* Itens de Projeto */

------------------------- Cria o result set
select
  PV.Sg_Estoque, P.Cd_ClasFiscal,
  Convert( VarChar, PV.Cd_Produto ) + ' - ' + P.Nm_Produto as Dp_Produto, 
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo as Dp_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo as Dp_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe as Dp_Classe,
  sum( PV.Vl_Vendido ) as Vl_Vendido, sum( PV.Qt_Vendido ) as Qt_Vendido

from
  #ProdVendas PV

inner join
  Produto P
on
  P.Cd_Produto = PV.Cd_Produto

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

group by
  PV.Sg_Estoque, P.Cd_ClasFiscal,
  Convert( VarChar, PV.Cd_Produto ) + ' - ' + P.Nm_Produto, 
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe

order by
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe,
  7 desc

-- ===== TFRMPRODUTO_VENDAS_OVER.ADODsReport
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

if Object_ID( 'TempDB..#ProdVendas' ) is not null
  drop table #ProdVendas

if Object_ID( 'TempDB..#ProdVendas' ) is not null
  drop table #ProdVendas

------------------------- Seleciona os produtos
select
  OI.Cd_Produto, OI.Sg_Estoque,
  sum( OI.Vl_Venda ) as Vl_Vendido,
  sum( OI.Qt_Estoque ) as Qt_Vendido,
  sum( PP.Vl_Custo * OI.Qt_Estoque ) as Vl_Custo,
  sum( PP.Vl_Reposicao * OI.Qt_Estoque ) as Vl_Reposicao

into
  #ProdVendas

from
  Orcamento O

/* Emitente */

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto
  /* Cd_Grupo */

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = O.Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End

group by
  OI.Cd_Produto, OI.SG_Estoque

------------------------- Seleciona os produtos de conjunto
insert into #ProdVendas
select
  OC.Cd_Produto, OC.Sg_Unidade as Sg_Estoque,
  sum( OC.Vl_Venda ) as Vl_Vendido,
  sum( OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido,
  sum( PP.Vl_Custo * OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Vl_Custo,
  sum( PP.Vl_Reposicao * OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Vl_Reposicao

from
  Orcamento O

/* Emitente */

inner join
  Orcamento_Conjunto_Total OC
on
  OC.Cd_Filial     = O.Cd_Filial and
  OC.Nr_Orcamento  = O.Nr_Orcamento

inner join
  Produto P
on
  P.Cd_Produto = OC.Cd_Produto
  /* Cd_Grupo */

inner join
  Produto_Preco PP
on
  PP.Cd_Tabela  = O.Cd_Tabela and
  PP.Cd_Produto = P.Cd_Produto

left join
  Produto_Unidade PU
on
  PU.Cd_Produto = OC.Cd_Produto and
  PU.Sg_Unidade = OC.Sg_Unidade

where
  O.Cd_Filial    = @Cd_Filial and
  /* Cd_Funcionario */
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End

group by
  OC.Cd_Produto, OC.Sg_Unidade

/* Itens de Projeto */

------------------------- Cria o result set
select
  PV.Sg_Estoque,
  Convert( VarChar, PV.Cd_Produto ) + ' - ' + P.Nm_Produto as Dp_Produto, 
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo as Dp_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo as Dp_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe as Dp_Classe,
  sum( PV.Vl_Vendido ) as Vl_Vendido, sum( PV.Qt_Vendido ) as Qt_Vendido,
  sum( PV.Vl_Custo ) as Vl_Custo, sum( PV.Vl_Reposicao ) as Vl_Reposicao

from
  #ProdVendas PV

inner join
  Produto P
on
  P.Cd_Produto = PV.Cd_Produto

inner join
  Grupo G
on
  G.Cd_Grupo = P.Cd_Grupo

inner join
  SubGrupo SG
on
  SG.Cd_SubGrupo = P.Cd_SubGrupo

inner join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe

group by
  PV.Sg_Estoque,
  Convert( VarChar, PV.Cd_Produto ) + ' - ' + P.Nm_Produto, 
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe

order by
  Convert( VarChar, P.Cd_Grupo ) + ' - ' + G.Nm_Grupo,
  Convert( VarChar, P.Cd_SubGrupo ) + ' - ' + SG.Nm_SubGrupo,
  Convert( VarChar, P.Cd_Classe ) + ' - ' + C.Nm_Classe,
  6 desc

-- ===== TFRMPROJETO.ADODsDados
select
   P.Cd_Projeto, P.Nm_Projeto, P.Mm_Complemento, P.Im_Projeto, P.Cd_Produto, Pr.Nm_Produto

from
  Projeto P

left join
  Produto Pr
on
  Pr.Cd_Produto = P.Cd_Produto

where
  P.Cd_Projeto = :Cd_Projeto

-- ===== TFRMPROJETO.ADODsItem
select
  PIT.Nr_Item, PIT.Qt_Item, PIT.Ds_Form_Altura,
  PIT.Ds_Form_Largura, PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, P.Nm_Produto,
  cast(IsNull(cast(PIT.Sg_Unidade as varchar) + ' - ' + cast(U.Ds_Unidade as varchar), '') as varchar) as Dp_Unidade,
  cast(IsNull(cast(PIT.Cd_Peca as varchar) + ' - ' + cast(PC.Ds_Peca as varchar), '') as varchar) as Dp_Peca,
  coalesce(P.Im_Produto, C.Im_Classe) as Im_Item
  
from
  Projeto_Item PIT
  
left join
  Projeto_Peca PC
on
  PC.Cd_Peca = PIT.Cd_Peca

left join
  Unidade U
on
  U.Sg_Unidade = PIT.Sg_Unidade

left join
  Produto P
on
  P.Cd_Produto = PIT.Cd_Produto

left join
  Classe C
on
  C.Cd_Classe = P.Cd_Classe  

where
  PIT.Cd_Projeto = :Cd_Projeto and
  PIT.Tp_Item = :Tp_Item

order by
  PIT.Nr_Item desc

-- ===== TFRMPROJETO.ADODsDesenho
select
  DesenhoProjeto, Nr_Width, Nr_Height

from
  Projeto

where
  Cd_Projeto = :Cd_Projeto

-- ===== TFRMPROJETO.ADODsPrimary
select top 1
  A.Cd_Projeto + 1 as Cd_Projeto

from
  Projeto A

where
  not exists( 
  select
    B.Cd_Projeto

  from
    Projeto  B

  where
    B.Cd_Projeto = A.Cd_Projeto + 1

  )
order by
  A.Cd_Projeto

-- ===== TFRMPROJETO_FIND.ADODsFind
select
  Cd_Projeto, Nm_Projeto
  
from
  Projeto
  
where
  Nm_Projeto like :Nm_Projeto

order by
  Nm_Projeto

-- ===== TFRMPROJETO_FIND.ADODsImagem
select
  Im_Projeto
  
from
  Projeto

where
  Cd_Projeto = :Cd_Projeto

-- ===== TFRMPROJETO_ITEM.ADODsPeca
select
  P.Cd_Peca, P.Ds_Peca

from
  Projeto_Peca P

-- ===== TFRMPROJETO_ITEM.ADODsEditItem
-- Seleciona os dados do item para edição
-- Obs. Não colocar no ADODsDados
select
  PIT.Cd_Produto, PIT.Sg_Unidade, PIT.Qt_Item,
  PIT.Ds_Form_Altura, PIT.Ds_Form_Largura, PIT.Cd_Parte, PIT.Cd_Peca,
  PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga
  
from
  Projeto_Item PIT

where
  PIT.Cd_Projeto = :Cd_Projeto and
  PIT.Nr_Item    = :Nr_Item

-- ===== TFRMPROJETO_PARTE.ADODsDados
select
  Cd_Parte, Ds_Parte

from
  Projeto_Parte

where
  Cd_Parte = :Cd_Parte

-- ===== TFRMPROJETO_PARTE.ADODsReport
select
  Cd_Parte, Ds_Parte

from
  Projeto_Parte

order by
  Ds_Parte

-- ===== TFRMPROJETO_PARTE_FIND.ADODsFind
select
  Cd_Parte, Ds_Parte

from
  Projeto_Parte

where
  Ds_Parte like :find

order by
  Ds_Parte

-- ===== TFRMPROJETO_PECA.ADODsDados
select
  Cd_Peca, Ds_Peca

from
  Projeto_Peca

where
  Cd_Peca = :Cd_Peca

-- ===== TFRMPROJETO_PECA.ADOCmdDados
select EstadoInsert( :Sg_Estado, :Nm_Estado, :Sg_Origem, :Pr_Contribuinte,
   :Pr_NaoContrib );

-- ===== TFRMPROJETO_PECA.ADODsNavegar
-- First
select top 1
  Cd_Peca

from
  Projeto_Peca

order by
  Cd_Peca

-- ===== TFRMPROJETO_PECA.ADODsReport
select
  Cd_Peca, Ds_Peca

from
  Projeto_Peca

order by
  Cd_Peca, Ds_Peca

-- ===== TFRMPROJETO_PECA_FIND.ADODsFind
select
  Cd_Peca, Ds_Peca

from
  Projeto_Peca

where
  Ds_Peca like :find

order by
  Ds_Peca

-- ===== TFRMPROJETO_REPORT.ADODsProjeto
declare @CdProjetoInicial int
set @CdProjetoInicial = :Cd_ProjetoInicial
declare @CdProjetoFinal int
set @CdProjetoFinal = :Cd_ProjetoFinal

select
  P.Cd_Projeto, P.Nm_Projeto, P.Mm_Complemento, P.Im_Projeto

from
  Projeto P

where
  P.Cd_Projeto between @CdProjetoInicial and @CdProjetoFinal and
  exists (
    select
      PItem.Cd_Projeto
    from
      Projeto_Item PItem
    where
      PItem.Cd_Projeto = P.Cd_Projeto
  )

order by
  P.Cd_Projeto

-- ===== TFRMPROJETO_REPORT.ADODsPosicao
declare @Cd_Projeto int
set @Cd_Projeto = :Cd_Projeto

select
  'Parte' as Origem, Pos.Cd_Parte, Pos.Fl_Dimensao, -1 as Nr_Item,
  -1 as Nr_Posicao, Pos.Nr_Top, Pos.Nr_Left,
  /* Define os captions para impressão */
  IsNull(cast(Pos.Fl_Dimensao as varchar) + '_' + Parte.Ds_Parte, '') as Dp_Caption

from
  Projeto_Parte_Posicao Pos
  
inner join
  Projeto_Parte Parte
on
  Parte.Cd_Parte = Pos.Cd_Parte

where
  Pos.Cd_Projeto = @Cd_Projeto and
  Pos.Nr_Top >= 0 and
  Pos.Nr_Left >= 0

union

select
  'Item' as Origem, -1 as Cd_Parte, null as Fl_Dimensao, Item.Nr_Item,
  Item.Nr_Posicao, Item.Nr_Top, Item.Nr_Left,
  /* Define os captions para impressão */
  (case
    /* Vidros */
    when PItem.Tp_Item = 0 then cast(PItem.Cd_Peca as varchar)
    /* Ferragem */
    when PItem.Tp_Item = 1 then cast(Prod.Cd_Fabricante as varchar)
    else ''
  end) as Dp_Caption

from
  Projeto_Item_Posicao Item
  
inner join
  Projeto_Item PItem
on
  PItem.Cd_Projeto = Item.Cd_Projeto and
  PItem.Nr_Item = Item.Nr_Item
  
left join
  Produto Prod
on
  Prod.Cd_Produto = PItem.Cd_Produto

where
  Item.Cd_Projeto = @Cd_Projeto  and
  Item.Nr_Top >= 0 and
  Item.Nr_Left >= 0

-- ===== TFRMPROJETO_REPORT.ADODsItemVidro
/* Seleciona os Vidros do Projeto */
select
  PItem.Cd_Produto, PItem.Ds_Form_Altura, PItem.Ds_Form_Largura,
  PItem.Nr_Altura_Folga, PItem.Nr_Largura_Folga, PParte.Ds_Parte, P.Nm_Produto,

  cast(PItem.Cd_Peca as varchar) + ' - ' + PPeca.Ds_Peca as Dp_Peca,
  PItem.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade

from
  Projeto_Item PItem

inner join
  Produto P
on
  P.Cd_Produto = PItem.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = PItem.Sg_Unidade

left join
  Projeto_Parte PParte
on
  PParte.Cd_Parte = PItem.Cd_Parte

left join
  Projeto_Peca PPeca
on
  PPeca.Cd_Peca = PItem.Cd_Peca

where
  PItem.Cd_Projeto = :Cd_Projeto and
  PItem.Tp_Item = 0

order by
  PItem.Nr_Item

-- ===== TFRMPROJETO_REPORT.ADODsItemFerragem
/* Seleciona as Ferragens do Projeto */
select
  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto, P.Cd_Fabricante,

  PItem.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade

from
  Projeto_Item PItem

inner join
  Produto P
on
  P.Cd_Produto = PItem.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = PItem.Sg_Unidade

where
  PItem.Cd_Projeto = :Cd_Projeto and
  PItem.Tp_Item = 1

order by
  PItem.Nr_Item

-- ===== TFRMPROJETO_REPORT.ADODsItemPerfil
/* Seleciona os Perfis do Projeto */
select
  PItem.Cd_Produto, PItem.Qt_Item, PItem.Ds_Form_Altura,
  PItem.Ds_Form_Largura, PParte.Ds_Parte, P.Nm_Produto,

  PItem.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade

from
  Projeto_Item PItem

inner join
  Produto P
on
  P.Cd_Produto = PItem.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = PItem.Sg_Unidade

left join
  Projeto_Parte PParte
on
  PParte.Cd_Parte = PItem.Cd_Parte

where
  PItem.Cd_Projeto = :Cd_Projeto and
  PItem.Tp_Item = 2

order by
  PItem.Nr_Item

-- ===== TFRMPROJETO_REPORT.ADODsItemServico
/* Seleciona os Serviços do Projeto */
select
  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto,

  PItem.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade

from
  Projeto_Item PItem

inner join
  Produto P
on
  P.Cd_Produto = PItem.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = PItem.Sg_Unidade

where
  PItem.Cd_Projeto = :Cd_Projeto and
  PItem.Tp_Item = 3

order by
  PItem.Nr_Item

-- ===== TFRMPROJETO_REPORT.ADODsItemKitbox
/* Seleciona os Kitbox do Projeto */
select
  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto,

  PItem.Sg_Unidade + ' - ' + U.Ds_Unidade as Dp_Unidade

from
  Projeto_Item PItem

inner join
  Produto P
on
  P.Cd_Produto = PItem.Cd_Produto

left join
  Unidade U
on
  U.Sg_Unidade = PItem.Sg_Unidade

where
  PItem.Cd_Projeto = :Cd_Projeto and
  PItem.Tp_Item = 4

order by
  PItem.Nr_Item

-- ===== TFRMRECEBER.ADODsDados
select
  R.Nr_Receber, R.Dt_Emissao, R.St_Receber, R.Cd_Emitente, 
  E.Nm_Emitente, E.Nm_Fantasia, R.Ds_Fatura,
  R.Vl_Duplicata, R.Vl_Recebido, R.Nr_Orcamento,
  O.Cd_Serie, O.Nr_Fatura, O.Dt_Fatura, R.Nr_Balcao, R.Ds_Receber,

  E.Ds_EMail, E.Ds_EMailCob, R.Dt_Cancelamento

from
  Receber R

inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente

left join
  Orcamento O
on
  O.Cd_Filial    = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

where
  R.Cd_Filial  = :Cd_Filial and
  R.Nr_Receber = :Nr_Receber

-- ===== TFRMRECEBER.ADODsNavegar
-- First
select top 1
  Nr_Receber

from
  Receber

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Receber

-- ===== TFRMRECEBER.ADODsEntrada
select
  Cd_Emitente, Vl_Nota

from
  Entrada

where
  Cd_Filial = :Cd_Filial and
  Nr_Entrada = :Nr_Entrada

-- ===== TFRMRECEBER.ADODsParcela
select
  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, 
  A.Dt_EnvioBanco, A.Nr_DoctoBanco, A.Vl_Recebido, A.Mm_Observacao,
  A.Dt_Geracao, A.Cd_Portador, B.Nm_Portador, B.Pr_TaxaJuros, B.Pr_Multa,
  A.Id_Parcela, A.Mm_Boleto, B.Cd_Banco

from
  Receber_Parcela A

inner join
  Portador B
on
  B.Cd_Portador = A.Cd_Portador

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Receber = :Nr_Receber

order by
  A.Nr_Parcela

-- ===== TFRMRECEBER.ADODsHistorico
select
  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Nr_Lancamento, A.Tp_Lancamento,
  A.Dt_Lancamento, A.Vl_Lancamento, A.Nr_Resumo, A.Cd_Usuario, A.Nr_DoctoBaixa

from
  Receber_Historico A

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Receber = :Nr_Receber and
  A.Nr_Parcela = :Nr_Parcela

order by
  A.Nr_Lancamento

-- ===== TFRMRECEBER_ATUALIZAVENCTO.ADOCmdAtualiza
declare
  @Cd_Filial SmallInt,
  @Nr_Receber Int,
  @Nr_Parcela SmallInt,
  @Vl_Parcela Numeric( 13, 2 )

select
  @Cd_Filial  = :Cd_Filial,
  @Nr_Receber = :Nr_Receber,
  @Nr_Parcela = :Nr_Parcela,
  @Vl_Parcela = :Vl_Parcela

update
  Receber

set
  Vl_Duplicata = :Vl_Duplicata

where
  Cd_Filial  = @Cd_Filial and
  Nr_Receber = @Nr_Receber

update
  Receber_Parcela

set
  Vl_Parcela    = @Vl_Parcela,
  Dt_Vencimento = :Dt_Vencimento,
  Nr_DoctoBanco = :Nr_DoctoBanco,
  Mm_Observacao = :Mm_Observacao,
  Mm_Boleto          = :Mm_Boleto

where
  Cd_Filial  = @Cd_Filial and
  Nr_Receber = @Nr_Receber and
  Nr_Parcela = @Nr_Parcela

update
  Receber_Historico

set
  Vl_Lancamento = @Vl_Parcela,
  Dt_Lancamento = :Dt_Lancamento,
  Cd_Usuario     = :Cd_Usuario

where
  Cd_Filial     = @Cd_Filial and
  Nr_Receber    = @Nr_Receber and
  Nr_Parcela    = @Nr_Parcela and
  Nr_Lancamento = 1

-- ===== TFRMRECEBER_ATUALIZAVENCTO.ADODsParAtualiza
select
  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, 
  A.Dt_EnvioBanco, A.Nr_DoctoBanco, A.Vl_Recebido, A.Mm_Observacao,
  A.Dt_Geracao, A.Cd_Portador, B.Nm_Portador, B.Pr_TaxaJuros, B.Pr_Multa,
  A.Id_Parcela, R.Vl_Duplicata, A.Mm_Boleto

from
  Receber_Parcela A

inner join
  Receber R
on
  R.Cd_Filial = A.Cd_Filial and
  R.Nr_Receber = A.Nr_Receber

inner join
  Portador B
on
  B.Cd_Portador = A.Cd_Portador

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Receber = :Nr_Receber and
  A.Nr_Parcela  = :Nr_Parcela

-- ===== TFRMRECEBER_BAIXA.ADODsParcela
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Recebido,
  Cast( B.Cd_Emitente as VarChar ) + ' - ' + C.Nm_Emitente as Dp_Emitente,
  A.Vl_Parcela - A.Vl_Recebido as Vl_Saldo, B.Nr_Balcao, B.Nr_Orcamento,
  Cast( A.Nr_Receber as VarChar ) + '/' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,
  DateDiff( Day, A.Dt_Vencimento, '04/10/2007' ) as Nr_Dias, A.Cd_Filial, B.Dt_Emissao,
  FB.Nm_Funcionario as Nm_Balcao, FO.Nm_Funcionario as Nm_Orcamento,
  P.Pr_TaxaJuros, O.Nr_Fatura, B.Cd_Emitente, A.Mm_Observacao
  
from
  Receber_Parcela A

inner join
  Receber B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.St_Receber <= '2'

inner join
  Emitente C
on
  C.Cd_Emitente = B.Cd_Emitente

inner join
  Portador P
on
  P.Cd_Portador = A.Cd_Portador

left join
  Orcamento O
on
  O.Cd_Filial    = B.Cd_Filial and
  O.Nr_Orcamento = B.Nr_Orcamento
  /* Fatura */

left join
  Funcionario FO
on
  FO.Cd_Funcionario = O.Cd_Funcionario

left join
  Balcao BA
on
  BA.Cd_Filial = B.Cd_Filial and
  BA.Nr_Balcao = B.Nr_Balcao

left join
  Funcionario FB
on
  FB.Cd_Funcionario = BA.Cd_Funcionario
  
where
  A.Cd_Filial = :Cd_Filial and

  A.Vl_Parcela > A.Vl_Recebido

order by
  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela

-- ===== TFRMRECEBER_BAIXA.ADODsLancto
select
  max( Nr_Lancamento ) as NewLancto

from
  Receber_Historico

where
  Cd_Filial  = :Cd_Filial and
  Nr_Receber = :Nr_Receber and
  Nr_Parcela = :Nr_Parcela

-- ===== TFRMRECEBER_BAIXA.ADODsProduto
select
  '1' as Fl_Local, BI.Nr_Item, B.Nr_Balcao as Nr_Atendimento, P.Nm_Produto,
  BI.Qt_Item, BI.Vl_Unitario, BI.Vl_Unitario * BI.Qt_Item as Vl_Total

from
  Balcao B

inner join
  Balcao_Item BI
on
  BI.Cd_Filial     = B.Cd_Filial and
  BI.Nr_Balcao     = B.Nr_Balcao and
  BI.Fl_Confirmado = '1'

inner join
  Produto P
on
  P.Cd_Produto = BI.Cd_Produto

where
  B.Cd_Filial = :Cd_Filial_Balcao and
  B.Nr_Balcao = :Nr_Balcao

union

select
  '2' as Fl_Local, OI.Nr_Item, O.Nr_Orcamento as Nr_Atendimento,
  case
    when OI.Cd_Produto is null then OI.Nm_Produto
    else P.Nm_Produto
  end, OI.Qt_Item, OI.Vl_Unitario, OI.Vl_Unitario * OI.Qt_Item as Vl_Total

from
  Orcamento O

inner join
  Orcamento_Item OI
on
  OI.Cd_Filial     = O.Cd_Filial and
  OI.Nr_Orcamento  = O.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

where
  O.Cd_Filial    = :Cd_Filial_Orcamento and
  O.Nr_Orcamento = :Nr_Orcamento

order by
  2

-- ===== TFRMRECEBER_BOLETO.ADODsReport
select
  C.Nm_Portador, C.Cd_Banco, A.Nr_Receber, B.Nr_Parcela, C.Cd_Carteira,
  B.Dt_Vencimento, C.Cd_Agencia, C.Nr_Conta, B.Nr_DoctoBanco, B.Vl_Parcela,
  D.Nm_Emitente, D.Nr_Documento as Nr_MF, E.Ds_Endereco, E.Nm_Bairro,
  E.Ds_Complemento, E.Nr_CEP, C.Im_Logo, C.Ds_Livre, C.Ds_Carteira,
  F.Nm_Cidade + ' - ' + F.Sg_Estado as Dp_Cidade,
  C.Ds_Boleto, C.Mm_Instrucao, C.Tp_Cobranca, A.Dt_Emissao,
  O.Nr_Fatura, C.Pr_Multa, C.Pr_TaxaJuros, C.Nr_Separador, C.Fl_Entrega,
  D.Nr_Insc_Estadual, O.Nr_Pedido_Emitente, O.Nr_Orcamento,
  C.Ds_LocalPagamento, E.Ds_Numero, C.Nr_Unidade, B.Mm_Boleto, A.Ds_Fatura,
  C.Tp_Modelo, F.Nm_Cidade, F.Sg_Estado,

  B.Cd_Envio, D.Tp_Pessoa, B.Id_Parcela, C.Nr_Indicador, C.Ds_Cobranca,
  C.Nr_Prazo_Protesto, A.Cd_Filial,

  D.Ds_EmailCob, C.Nr_DataLimite

from
  Receber A

inner join
  Receber_Parcela B
on
  B.Cd_Filial   = A.Cd_Filial and
  B.Nr_Receber    = A.Nr_Receber and
  B.Dt_Vencimento >= A.Dt_Emissao and
  B.Nr_DoctoBanco <> ''

inner join
  Portador C
on
  C.Cd_Portador = B.Cd_Portador and
  C.Fl_Pagamento = '3'

inner join
  Emitente D
on
  D.Cd_Emitente = A.Cd_Emitente

inner join
  Emitente_Endereco E
on
  E.Cd_Emitente = D.Cd_Emitente and
  E.Nr_Endereco = D.Nr_EndCobranca

inner join
  Cidade F
on
  F.Cd_Cidade = E.Cd_Cidade

left join
  Orcamento O
on
  O.Cd_Filial    = A.Cd_Filial and
  O.Nr_Orcamento = A.Nr_Orcamento

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Receber >= :Nr_Start and
  A.Nr_Receber <= :Nr_End

order by
  A.Nr_Receber, B.Nr_Parcela

-- ===== TFRMRECEBER_COBRANCA.ADODsOcorrencia
select
  Cd_Ocorrencia, Ds_Ocorrencia

from
  Contato_Ocorrencia

order by
  Ds_Ocorrencia

-- ===== TFRMRECEBER_COBRANCA.ADODsCobranca
select
  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia,
  min( RP.Dt_Vencimento ) as Dt_Maxima,
  max( RP.Dt_Vencimento) as Dt_Minima,
  sum( RP.Vl_Parcela ) as Vl_Parcela,
  sum( RP.Vl_Recebido ) as Vl_Recebido,
  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Saldo,
  count( distinct Cast( RP.Nr_Receber as Char( 5 ) ) + Cast( RP.Nr_Parcela as Char( 3 ) ) ) as Nr_Parcelas

from
  Receber_Parcela RP
  
inner join
  Receber R
on
  R.Cd_Filial  = RP.Cd_Filial and
  R.Nr_Receber = RP.Nr_Receber and
  R.St_Receber <= '2'    -- Aberto/Amortizado
  
inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente
  
where
  RP.Cd_Filial = 1 and
  
  RP.Dt_Vencimento <= '03/13/2006'
  and RP.Vl_Parcela > RP.Vl_Recebido
group by
  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia
order by
  4

-- ===== TFRMRECEBER_COBRANCA.ADODsParcela
select
  R.Cd_Filial, R.Nr_Receber, RP.Nr_Parcela, R.Cd_Emitente, 
  RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido

from
  Receber R
  
inner join
  Receber_Parcela RP

on
  RP.Cd_Filial   = R.Cd_Filial and
  RP.Nr_Receber  = R.Nr_Receber and
  RP.Vl_Recebido < RP.Vl_Parcela

where
  R.Cd_Filial   = :Cd_Filial and
  R.Cd_Emitente = :Cd_Emitente and
  R.St_Receber <= '2'

order by
  RP.Dt_Vencimento

-- ===== TFRMRECEBER_COBRANCA.ADODsContato
select top 50
  C.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Dt_NovoContato, C.Cd_Usuario, 
  C.Nm_Contato, C.Mm_Observacao, OC.Ds_Ocorrencia

from
  Contato C

inner join
  Contato_Ocorrencia OC
on
  OC.Cd_Ocorrencia = C.Cd_Ocorrencia

where
  C.Cd_Emitente = :Cd_Emitente

order by
  C.Cd_Emitente, C.Nr_Contato desc

-- ===== TFRMRECEBER_COBRANCAEMAIL.ADODsClientes
/*
--------------- Verifica se existe a tabela temporaria
if Object_ID( 'TempDB..##CobrancaEMail' ) is not null
  delete from ##CobrancaEMail where Nr_SPID = @@SPID

else
  create table ##CobrancaEMail
    (
    Cd_Filial SmallInt,
    Cd_Emitente Int,
    Nm_Emitente VarChar( 50 ),
    Nm_Fantasia VarChar( 30 ),
    Dt_Maxima SmallDateTime,
    Dt_Minima SmallDateTime,
    Vl_Parcela Numeric( 12, 3 ),
    Vl_Recebido Numeric( 12, 3 ),
    Vl_Saldo Numeric( 12, 3 ),
    Nr_Parcelas Int,
    Fl_Enviar Char( 1 ),
    Nr_SPID Int,
    Ds_EMail VarChar( 150 ),
    Ds_EMailCob VarChar( 150 )
    )
*/
--------------- Seleciona os Clientes
select
  Cd_Filial, Cd_Emitente, Nm_Emitente, Nm_Fantasia,
  Dt_Maxima, Dt_Minima, Vl_Parcela, Vl_Recebido, Vl_Saldo,
  Nr_Parcelas, Fl_Enviar, Ds_EMail, Ds_EMailCob

from
  ##CobrancaEMail

where
  Nr_SPID = @@SPID

-- ===== TFRMRECEBER_COBRANCAEMAIL.ADODsContato
select top 50
  C.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Dt_NovoContato, C.Cd_Usuario, 
  C.Nm_Contato, C.Mm_Observacao, OC.Ds_Ocorrencia

from
  Contato C

inner join
  Contato_Ocorrencia OC
on
  OC.Cd_Ocorrencia = C.Cd_Ocorrencia

where
  C.Cd_Emitente = :Cd_Emitente

order by
  C.Cd_Emitente, C.Nr_Contato desc

-- ===== TFRMRECEBER_EMITENTE_REPORT.ADODsRecebido
select distinct
  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,
  Cast( C.Cd_Emitente as VarChar( 5 ) ) + ' - ' + D.Nm_Emitente as Dp_Emitente,
  A.Dt_Lancamento, O.Nr_Orcamento, 
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Recebido,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldRecebido

into
  #recebidotmp
  
from
  Receber_Historico A

inner join
  Receber_Parcela B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.Nr_Parcela = A.Nr_Parcela
inner join
  Receber C
on
  C.Cd_Filial  = A.Cd_Filial and
  C.Nr_Receber = A.Nr_Receber
  and C.St_Receber >= '2'
  and C.St_Receber <= '3'
inner join
  Emitente D
on
  D.Cd_Emitente = C.Cd_Emitente
left join
  Orcamento O
on
  O.Cd_Filial    = C.Cd_Filial and
  O.Nr_Orcamento = C.Nr_Orcamento
where
  A.Cd_Filial = 1 and
  A.Dt_Lancamento >= '05/01/2009' and
  A.Dt_Lancamento < '05/05/2009' and
  A.Tp_Lancamento >= '2'

select
  Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,
  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,
  Vl_Desconto, Vl_Debito, Nr_Orcamento, 
     Cast( Nr_Receber as VarChar( 5 )  ) + '/' +
     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,
  Vl_OldRecebido

from
  #RecebidoTMP

order by
  Dp_Emitente, Dt_Lancamento, Nr_Receber, Nr_Parcela

-- ===== TFRMRECEBER_EMITENTE_REPORT.ADODsReceber
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Recebido, F.Nm_Funcionario, O.Nr_Orcamento,
  Cast( A.Nr_Receber as VarChar( 7 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, 
  P.Nm_Portador, O.Nr_ECF

from
  Receber_Parcela A

inner join
  Receber B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.St_Receber <= '2'

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente
  /* Cd_Grupo */
    and D.Cd_SubGrupo = 6

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = D.Cd_Emitente and
  EE.Nr_Endereco = D.Nr_Endereco

inner join
  Portador P
on
  P.Cd_Portador = A.Cd_Portador
  
left join
  Receber_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Receber    = A.Nr_Receber and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

left join
  Orcamento O
on
  O.Cd_Filial    = B.Cd_Filial and
  O.Nr_Orcamento = B.Nr_Orcamento

left join
  Funcionario F
on
  F.Cd_Funcionario = O.Cd_Funcionario

where
  A.Cd_Filial      = :Cd_Filial and
  A.Dt_Vencimento >= '04/01/2000' and
  A.Dt_Vencimento < '04/09/2014'

group by
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ),
  F.Nm_Funcionario, O.Nr_Orcamento, O.Nr_ECF,
  Cast( A.Nr_Receber as VarChar( 7 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ),
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, 
  P.Nm_Portador

having
  A.Vl_Parcela >
  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )

order by
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ),
  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela, O.Nr_ECF

-- ===== TFRMRECEBER_EMITENTE_REPORT.ADODsExtrato
select
  R.Cd_Emitente, E.Nm_Emitente, R.Nr_Receber, RP.Nr_Parcela, 
  RP.Vl_Parcela, RP.Dt_Vencimento, R.St_Receber, R.Nr_Orcamento, O.Nr_ECF,
  Dp_Emitente = E.Nm_Emitente + ' (' + E.Nm_Fantasia + ')', 
  Vl_Recebido  =
    (
    select
      sum( A.Vl_Lancamento )

    from
      Receber_Historico A

    where
      A.Cd_Filial     = RP.Cd_Filial and
      A.Nr_Receber    = RP.Nr_Receber and
      A.Nr_Parcela    = RP.Nr_Parcela and
      A.Tp_Lancamento >= '2' and
      A.Tp_Lancamento <= '5'
    ),

  Dp_Fatura =
    case
      when R.Ds_Fatura is not null or R.Ds_Fatura <> '' then R.Ds_Fatura
      else Convert( VarChar( 10 ), OT.Nr_Fatura )

    end,

  OT.Nm_Funcionario, P.Nm_Portador,

  Vl_Abatimento =
    (
    select
      sum( A.Vl_Lancamento )

    from
      Receber_Historico A

    where
      A.Cd_Filial      = RP.Cd_Filial and
      A.Nr_Receber     = RP.Nr_Receber and
      A.Nr_Parcela     = RP.Nr_Parcela and
      A.Tp_Lancamento >= '6' and                           ---- Abatimento, Desconto e Debito
      A.Tp_Lancamento <= '8'
    )

from
  Receber_Parcela RP

inner join
  Receber R
on
  R.Cd_Filial  = RP.Cd_Filial and
  R.Nr_Receber = RP.Nr_Receber
  /* Cd_Emitente */

inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */

inner join
  Portador P
on
  P.Cd_Portador = RP.Cd_Portador

left join
  Orcamento_Total OT
on
  OT.Cd_Filial    = R.Cd_Filial and
  OT.Nr_Orcamento = R.Nr_Orcamento

left join
  Orcamento O
on
  O.Cd_Filial    = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

where
  RP.Cd_Filial = :Cd_Filial and
  /* Cd_Portador */
  RP.Dt_Vencimento >= :Dt_Start and
  RP.Dt_Vencimento  < :Dt_End

order by
  R.Cd_Emitente, RP.Dt_Vencimento

-- ===== TFRMRECEBER_FIND.ADODsFind
select
  R.Nr_Receber, R.Dt_Emissao, E.Nm_Emitente, R.Vl_Duplicata, 
  R.Vl_Recebido, R.St_Receber, R.Nr_Orcamento, R.Ds_Receber,
  R.Ds_Fatura, O.Nr_Fatura

from
  Receber R

inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente

/* Nr_Fatura */
/* Vl_Parcela */

left join
  Orcamento O
on
  O.Cd_Filial = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

where
  R.Cd_Filial  = :Cd_Filial 
  /* Nr_Receber */
  /* Cd_Emitente */
  /* Ds_Fatura */
  /* Ds_Receber */

order by
  1, 2, 3

-- ===== TFRMRECEBER_FUNCIONARIO_REPORT.ADODsReceber
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, OT.Nr_Fatura,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Recebido, OT.Nr_Orcamento, O.Nr_ECF,
  Cast( A.Nr_Receber as VarChar( 6 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,
  OT.Nm_Funcionario + ' - ' + Cast( OT.Cd_Funcionario as VarChar ) as Dp_Funcionario

from
  Receber_Parcela A

inner join
  Receber B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.St_Receber <= '2'

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente

inner join
  Orcamento_Total OT
on
  OT.Cd_Filial    = B.Cd_Filial and
  OT.Nr_Orcamento = B.Nr_Orcamento
  /* Cd_Funcionario */

inner join
  Orcamento O
on
  O.Cd_Filial    = OT.Cd_Filial and
  O.Nr_Orcamento = OT.Nr_Orcamento

left join
  Receber_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Receber    = A.Nr_Receber and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

where
  A.Cd_Filial      = :Cd_Filial and
  A.Dt_Vencimento >= '10/01/2014' and
  A.Dt_Vencimento < '11/01/2014'
group by
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,
  OT.Nr_Fatura, O.Nr_ECF,
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ),
  OT.Nm_Funcionario + ' - ' + Cast( OT.Cd_Funcionario as VarChar ),
  OT.Nr_Orcamento

having
  A.Vl_Parcela >
  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )

-------------------- Ordem de Cliente (emitente)
order by
  OT.Nm_Funcionario + ' - ' + Cast( OT.Cd_Funcionario as VarChar ),
  D.Nm_Emitente + ' - ' + Cast( B.Cd_Emitente as VarChar( 6 ) ),
  A.Dt_Vencimento

-- ===== TFRMRECEBER_ITEM.ADODsReceber_Item
select 
  B.Cd_Filial, B.Cd_Emitente,
  BI.Nr_Item, BI.Cd_Produto, P.Nm_Produto,
  BI.Vl_Unitario, BI.Qt_Item,B.Dt_fatura, 
  BI.Vl_Unitario * BI.Qt_Item as Vl_Total


from
  Balcao B


inner join
  Balcao_Item BI
on
 BI.Nr_Balcao = B.Nr_Balcao


inner join
  Produto P
on
  P.Cd_Produto = BI.Cd_Produto

where
  B.Cd_Filial = :Cd_Filial and
  B.Nr_Balcao = :Nr_Balcao and
  B.Cd_Emitente = :Cd_Emitente


order by
  BI.Nr_Item desc

-- ===== TFRMRECEBER_MERCANTIL.ADODsMercantil
select
  E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade,
  C.Sg_Estado, EE.Nr_CEP, E.Nr_Documento, E.Nr_Insc_Estadual, E.Cd_Emitente,
  EE.Ds_Numero,

  RP.Nr_Receber, RP.Nr_Parcela, RP.Vl_Parcela, RP.Dt_Vencimento,

   F.Im_DupMercantil,

  Dp_Fatura =
    case
      when R.Ds_Fatura is null or R.Ds_Fatura = '' then Convert( VarChar, O.Nr_Fatura )
      else R.Ds_Fatura

    end

from
  Receber R

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial  = R.Cd_Filial and
  RP.Nr_Receber = R.Nr_Receber

inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_EndCobranca

inner join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

inner join
  Filial F
on
  F.Cd_Filial = R.Cd_Filial

left join
  Orcamento O
on
  O.Cd_Filial    = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

where
  R.Cd_Filial  = :Cd_Filial and
  R.Nr_Receber = :Nr_Receber

order by
  RP.Nr_Parcela

-- ===== TFRMRECEBER_REMESSA.ADODsPortador
select
  A.Cd_Portador, A.Nm_Portador, A.Cd_Banco, A.Cd_Agencia, A.Nr_Conta,
  A.Pr_TaxaJuros, A.Cd_Carteira, A.Nr_Remessa, A.Nr_Prazo_Protesto,
  A.Tp_Cobranca, A.Ds_Livre, A.Pr_Multa, A.Ds_Cobranca, A.Tp_Modelo,
  A.Ds_Carteira

from
  Portador A

where
  A.Cd_Portador = :Cd_Portador

-- ===== TFRMRECEBER_REMESSA.ADODsRemessa
create table #RemessaTMP
  (
  cd_filial smallint,
  nr_receber int,
  nr_parcela smallint,
  dt_vencimento SmallDateTime,
  vl_parcela numeric( 12, 2 ),
  cd_envio char( 2 ),
  vl_abatimento numeric( 12, 2 ),
  nr_doctobanco varchar( 25 ),
  nm_emitente varchar( 50 ),
  Nm_Fantasia VarChar( 30 ),
  nr_documento varchar( 14 ),
  ds_endereco varchar( 50 ),
  Ds_Numero VarChar( 10 ),
  nm_bairro varchar( 30 ),
  ds_complemento varchar( 30 ),
  nr_cep char( 8 ),
  nm_cidade varchar( 30 ),
  sg_estado char( 2 ),
  dt_emissao SmallDateTime,
  fl_envio char( 1 )
  )

-- Visualiza todos os registros
select
  Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Cd_Envio,
  Vl_Abatimento, Nr_DoctoBanco, Nm_Emitente, Nm_Fantasia, Nr_Documento, Ds_Endereco,
  Ds_Numero, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade, Sg_Estado,
  Dt_Emissao, Fl_Envio

from
  #RemessaTMP

order by
  Nr_Receber, Nr_Parcela

-- ===== TFRMRECEBER_REPORT.ADODsRecebido
select distinct
  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,
  Cast( C.Cd_Emitente as VarChar( 7 ) ) + ' - ' + D.Nm_Emitente as Dp_Emitente,
  D.Nm_Fantasia, D.Nr_Documento, D.Ds_EMailCob,
  A.Dt_Lancamento, O.Nr_Orcamento, O.Nr_Fatura, O.Nr_ECF, C.Ds_Receber,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Recebido,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,
  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldRecebido

into
  #recebidotmp
  
from
  Receber_Historico A

inner join
  Receber_Parcela B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.Nr_Parcela = A.Nr_Parcela
inner join
  Receber C
on
  C.Cd_Filial  = A.Cd_Filial and
  C.Nr_Receber = A.Nr_Receber
  and C.St_Receber >= '2'
  and C.St_Receber <= '3'
inner join
  Emitente D
on
  D.Cd_Emitente = C.Cd_Emitente
left join
  Orcamento O
on
  O.Cd_Filial    = C.Cd_Filial and
  O.Nr_Orcamento = C.Nr_Orcamento
where
  A.Cd_Filial = 1 and
  A.Dt_Lancamento >= '05/01/2009' and
  A.Dt_Lancamento < '05/05/2009' and
  A.Tp_Lancamento >= '2'

select
  R.Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,
  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,
  Nm_Fantasia, Nr_Documento, Ds_EMailCob, Ds_Receber,
  Vl_Desconto, Vl_Debito, Nr_Orcamento,
     Cast( Nr_Receber as VarChar( 7 )  ) + '/' +
     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,
  Vl_OldRecebido, Nr_Fatura, Nr_ECF

from
  #RecebidoTMP R

order by
  Dt_Lancamento, Nr_Receber, Nr_Parcela

-- ===== TFRMRECEBER_REPORT.ADODsReceber
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,
  Cast( B.Cd_Emitente as VarChar( 7 ) ) + ' - ' + D.Nm_Emitente as Dp_Emitente,
  sum( C.Vl_Lancamento ) as Vl_Recebido, sum( RHAbat.Vl_Lancamento ) as Vl_Desconto,
  O.Nr_Orcamento, O.Nr_ECF, B.Ds_Receber,
  Cast( A.Nr_Receber as VarChar( 7 ) ) + '/' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber

from
  Receber_Parcela A

inner join
  Receber B
on
  B.Cd_Filial  = A.Cd_Filial and
  B.Nr_Receber = A.Nr_Receber and
  B.St_Receber <= '2'

inner join
  Portador P
on
  P.Cd_Portador = A.Cd_Portador

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente

left join
  Receber_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Receber    = A.Nr_Receber and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

left join
  Receber_Historico RHAbat
on
  RHAbat.Cd_Filial     = A.Cd_Filial and
  RHAbat.Nr_Receber    = A.Nr_Receber and
  RHAbat.Nr_Parcela    = A.Nr_Parcela and
  RHAbat.Tp_Lancamento >= '6' and
  RHAbat.Tp_Lancamento <= '8' 

left join
  Orcamento O
on
  O.Cd_Filial    = B.Cd_Filial and
  O.Nr_Orcamento = B.Nr_Orcamento

where
  A.Cd_Filial      = :Cd_Filial and
  A.Dt_Vencimento >= '09/08/2004' and
  A.Dt_Vencimento < '09/09/2014'
group by
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,
  Cast( B.Cd_Emitente as VarChar( 7 ) ) + ' - ' + D.Nm_Emitente, B.Ds_Receber,
  O.Nr_Orcamento, O.Nr_ECF

having
  A.Vl_Parcela >
  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )

order by
  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela

-- ===== TFRMRECEBER_REPORT.ADODsEmissao
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,
  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento,
  Cast( A.Nr_Receber as VarChar( 6 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,
  D.Nr_Documento, O.Nr_ECF, B.St_Receber

from
  Receber B

inner join
  Receber_Parcela A
on
  A.Cd_Filial  = B.Cd_Filial and
  A.Nr_Receber = B.Nr_Receber 

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */
  /* Fl_EMailCob */

left join
  Receber_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Receber    = A.Nr_Receber and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

left join
  Orcamento O
on
  O.Cd_Filial    = B.Cd_Filial and
  O.Nr_Orcamento = B.Nr_Orcamento

where
  B.Cd_Filial   = :Cd_Filial and
  B.Dt_Emissao >= '11/01/2010' and
  B.Dt_Emissao < '11/01/2011' and
  B.St_Receber <= '3'
group by
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),
  O.Nr_Orcamento, D.Nr_Documento, O.Nr_ECF, B.St_Receber

order by
  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela

-- ===== TFRMRECEBER_REPORT.ADODsCancelada
select
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  Cast( B.Cd_Emitente as VarChar( 6 ) ) + ' - ' + D.Nm_Emitente as Dp_Emitente,
  Cast( B.Cd_Emitente as VarChar( 6 ) ) + ' - ' + D.Nm_Fantasia as Dp_Fantasia,
  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento, O.Nr_ECF,
  Cast( A.Nr_Receber as VarChar( 6 ) ) + '/' +
  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,
  D.Nr_Documento,
   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ) as Dt_Cancelamento

from
  Receber B

inner join
  Receber_Parcela A
on
  A.Cd_Filial  = B.Cd_Filial and
  A.Nr_Receber = B.Nr_Receber 

inner join
  Emitente D
on
  D.Cd_Emitente = B.Cd_Emitente
  /* Cd_Grupo */
  /* Cd_SubGrupo */
  /* Fl_EMailCob */

left join
  Receber_Historico C
on
  C.Cd_Filial     = A.Cd_Filial and
  C.Nr_Receber    = A.Nr_Receber and
  C.Nr_Parcela    = A.Nr_Parcela and
  C.Tp_Lancamento >= '2'

left join
  Orcamento O
on
  O.Cd_Filial    = B.Cd_Filial and
  O.Nr_Orcamento = B.Nr_Orcamento

where
  B.Cd_Filial   = :Cd_Filial and
  B.Dt_Cancelamento >= '05/01/2013' and
  B.Dt_Cancelamento < '05/8/2013' and
  B.St_Receber <= '4'
group by
  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,
  Cast( B.Cd_Emitente as VarChar( 6 ) ) + ' - ' + D.Nm_Emitente,
  Cast( B.Cd_Emitente as VarChar( 6 ) ) + ' - ' + D.Nm_Fantasia,
  O.Nr_Orcamento, O.Nr_ECF, D.Nr_Documento,
   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime )

order by
   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela

-- ===== TFRMRECEBER_RESUMO.ADODsDados
select
  RR.Nr_Resumo, RR.Dt_Resumo, RR.Cd_Portador, P.Nm_Portador, RR.Nm_Arquivo,
  RR.Fl_Processo, RR.Dt_Processamento, RR.Mm_Observacao, P.Tp_Cobranca,
  P.Pr_TaxaJuros, P.Cd_Banco, RR.Vl_Resumo, P.Tp_Modelo, P.Cd_Agencia, P.Nr_Conta,
  P.Ds_Livre,
  Nr_Recebimentos =
    (
	select 
	  count( * )

	from
	  Receber_Resumo_Dados RD

	where
	  RD.Nr_Resumo = RR.Nr_Resumo and
	  RD.Fl_Baixa  = '1' and
	  RD.Vl_Cobrado > 0.0
	)

from
  Receber_Resumo RR

inner join
  Portador P
on
  P.Cd_Portador = RR.Cd_Portador

where
  RR.Nr_Resumo = :Nr_Resumo

-- ===== TFRMRECEBER_RESUMO.ADODsParcela
select
  RD.Nr_Resumo, RD.Nr_Linha, RD.Nr_Receber, RD.Nr_Parcela, RD.Nr_DoctoBanco,
  RD.Cd_Ocorrencia, RD.Dt_Ocorrencia, RD.Vl_Parcela, RD.Vl_TarifaCobranca,
  RD.Vl_Despesas, RD.Vl_JurosCartorio, RD.Vl_Multa, RD.Vl_Abatimento,
  RD.Vl_Desconto, RD.Vl_Cobrado, RD.Vl_Juros, RD.Vl_Creditos, RD.Fl_Baixa,
  RD.Ds_Motivo, R.Cd_Emitente, E.Nm_Emitente, RP.Vl_Parcela as Vl_Sistema,
  O.Nr_Fatura, RP.Dt_Vencimento,
  Nr_Atraso = ( case when RD.Vl_Cobrado > 0 and RP.Dt_Vencimento < RD.Dt_Ocorrencia then DateDiff( Day, RP.Dt_Vencimento, RD.Dt_Ocorrencia ) end )

from
  Receber_Resumo_Dados RD

left join
  Receber_Parcela RP
on
  RP.Cd_Filial  =
    case RD.Cd_Filial
      when 0 then 1
      else RD.Cd_Filial
    end and
  RP.Nr_Receber = RD.Nr_Receber and
  RP.Nr_Parcela = RD.Nr_Parcela

left join
  Receber R
on
  R.Cd_Filial  = RP.Cd_Filial and
  R.Nr_Receber = RP.Nr_Receber

left join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente

left join
  Orcamento O
on
  O.Cd_Filial = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

where
  RD.Nr_Resumo = :Nr_Resumo

order by
  RD.Nr_Linha

-- ===== TFRMRECEBER_RESUMO.ADODsCCorrente
select top 1
  Id_Conta

from
  CCorrente_Lancto

where
  Nr_Resumo = :Nr_Resumo

-- ===== TFRMRECEBER_RESUMO.ADODsDoctoBanco
--------------- Consulta pelo Nosso Numero
select
  Cd_Filial, Nr_Receber, Nr_Parcela

from
  Receber_Parcela

where
  Nr_DoctoBanco = :Nr_DoctoBanco

-- ===== TFRMRECEBER_RESUMO.ADODsResumo
select
  RD.Cd_Ocorrencia, RD.Dp_Ocorrencia, 
  Convert( Numeric( 12, 2 ), sum( RP.Vl_Parcela ) ) as Vl_Sistema, 
  sum( case when RP.Vl_Parcela > 0 then 1 else 0 end ) as Nr_Sistema,
  Convert( Numeric( 12, 2 ), sum( RD.Vl_Parcela ) ) as Vl_Arquivo, 
  sum( case when RD.Vl_Parcela > 0 then 1 else 0 end ) as Nr_Arquivo,
  Convert( Numeric( 12, 2 ), sum( RD.Vl_Cobrado ) ) as Vl_Recebido, 
  sum( case when RD.Vl_Cobrado > 0 then 1 else 0 end ) as Nr_Recebido
  
from
  Receber_Resumo_DadosVw RD

left join
  Receber_Parcela RP
on
  RP.Cd_Filial  =
    case RD.Cd_Filial
      when 0 then 1
      else RD.Cd_Filial
    end and
  RP.Nr_Receber = RD.Nr_Receber and
  RP.Nr_Parcela = RD.Nr_Parcela

where
  RD.Nr_Resumo = :Nr_Resumo

group by
  RD.Cd_Ocorrencia, RD.Dp_Ocorrencia

-- ===== TFRMRECEBER_RESUMO_FIND.ADODsFind
select top 50
  RR.Nr_Resumo, RR.Dt_Resumo, RR.Dt_Processamento,
  Dp_Portador = Convert( VarChar( 5 ), RR.Cd_Portador ) + ' - ' + P.Nm_Portador,
  Dp_Processo =
    case RR.Fl_Processo
      when '1' then 'Em aberto'
      when '2' then 'Dados Carregados'
      when '3' then 'Processado'
      when '4' then 'Cancelado'
      
    end

from
  Receber_Resumo RR

inner join
  Portador P
on
  P.Cd_Portador = RR.Cd_Portador

where
  RR.Nr_Resumo >= :Nr_Resumo

order by
  RR.Nr_Resumo

-- ===== TFRMRECEBER_RESUMO_PROCESSAR.ADODsLancto
-------------------- Lançamento de CCorrente
select
  max( Nr_Lancamento ) as NewLancto

from
  CCorrente_Lancto

where
  Id_Conta      = :Id_Conta

-- ===== TFRMRECEBER_SUPORTE.ADODsEmitente
select
  B.Cd_Emitente, B.Nm_Emitente, B.Nm_Fantasia, B.Vl_Suporte, B.Mm_Restricao, 
  B.Fl_Imprimir, B.Cd_Portador, B.Nr_Orcamento, B.Nr_Receber, B.Nr_Doctobanco,
  
  P.Cd_Banco, P.Tp_Cobranca, P.Ds_Livre, B.Nr_Suporte, P.Cd_Agencia,
  P.Cd_Carteira, P.Nr_Conta, P.Nm_Portador

from
  #BoletoTMP B

left join
  Portador P
on
  P.Cd_Portador = B.Cd_Portador

order by
  B.Nr_Ordem, B.Cd_Portador, B.Nm_Emitente

-- ===== TFRMRECEBER_SUPORTE.ADODsPrimary
select
  max( Nr_Orcamento ) + 1 as New

from
  Orcamento

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMRECEBER_SUPORTE.ADODsProduto
select
  Tp_Preco

from
  Produto

where
  Cd_Produto = :Cd_Produto

-- ===== TFRMRECEBER_SUPORTE.ADODsBoleto
select
  R.Cd_Filial, R.Nr_Receber, RP.Nr_Parcela, E.Nm_Emitente, E.Nm_Fantasia,
  E.Ds_EMailCob, E.Fl_EmailCob, R.Cd_Emitente

from
  Receber R

inner join
  Emitente E
on
  E.Cd_Emitente = R.Cd_Emitente and
  E.Ds_EMailCob <> ''

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial      = R.Cd_Filial and
  RP.Nr_Receber     = R.Nr_Receber and
  RP.Dt_Vencimento >= R.Dt_Emissao and
  RP.Nr_DoctoBanco <> ''

where
  R.Cd_Filial   = :Cd_Filial and
  R.St_Receber = '1' and
  R.Nr_Receber >= :Nr_Start and
  R.Nr_Receber <= :Nr_End

order by
  R.Nr_Receber

-- ===== TFRMRECEBER_SUPORTE.MyQryBoleto
delete from 
  Boleto

where
  Nr_Receber >= :Nr_Start and
  Nr_Receber <= :Nr_End

-- ===== TFRMRECEBER_SUPORTE_BOLETO.MyQryReport
select
  Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,
  Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,
  Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,
  Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,
  Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,
  mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,
  Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,
  Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,
  Ds_Numero, Dt_Publicacao, Mm_Boleto

from
  Boleto

where
  Nr_MF = :Nr_Documento

order by
  Dt_Publicacao desc, Dt_Vencimento

-- ===== TFRMRECIBO.ADODsLogo
select
  Im_DupMercantil

from
  Filial

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMRESUMO_FINANCEIRO.ADODsCCorrente
declare
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Dt_Start = :Dt_Start,
  @Dt_End   = :Dt_End

select
  Dp_Conta = Convert( VarChar( 10 ),  CC.Id_Conta ) +  ' - ' + CC.Ds_Conta, 
  Dp_Banco = CC.Cd_Banco + ' - ' + B.Sg_Banco + '  Ag: ' + CC.Cd_Agencia, '  C/C: ',   CC.Nr_Conta,
  CC.Vl_Limite,

  Vl_SaldoAnterior =
    (
    select 
      sum(
        case
          when CCL.Tp_Lancamento < '4' then CCL.Vl_Lancamento
          else -1.0 * CCL.Vl_Lancamento
        end )
    from
      CCorrente_Lancto CCL

    where
      CCL.Id_Conta = CC.Id_Conta and
      CCL.Dt_Lancamento < @Dt_Start
    ),

  Vl_Credito =
    (
    select 
      sum( case when CCL.Tp_Lancamento < '4' then CCL.Vl_Lancamento end )

    from
      CCorrente_Lancto CCL

    where
      CCL.Id_Conta = CC.Id_Conta and
      CCL.Dt_Lancamento >= @Dt_Start and
	  CCL.Dt_Lancamento  < @Dt_End
    ),

  Vl_Debito =
    (
    select 
      sum( case when CCL.Tp_Lancamento >= '4' then CCL.Vl_Lancamento end )

    from
      CCorrente_Lancto CCL

    where
      CCL.Id_Conta = CC.Id_Conta and
      CCL.Dt_Lancamento >= @Dt_Start and
	  CCL.Dt_Lancamento  < @Dt_End
    )

from
  CCorrente CC

inner join
  Banco B
on
  B.Cd_Banco = CC.Cd_Banco

where
  CC.Fl_Resumo = '1'

-- ===== TFRMROTA.ADODsDados
select
  Cd_Rota, Ds_Rota

from
  Rota

where
  Cd_Rota = :Cd_Rota

-- ===== TFRMROTA.ADODsReport
select
  Cd_Rota, Ds_Rota

from
  Rota

order by
  Ds_Rota

-- ===== TFRMROTA_FIND.ADODsFind
select
  Cd_Rota, Ds_Rota

from
  Rota

where
  Ds_Rota like :find

order by
  Ds_Rota

-- ===== TFRMSAIDA.ADODsDados
select
  A.Nr_Saida, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,
  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Saida,
  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto,
  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Ps_Nota, A.Mm_Observacao,
  B.Fl_Contribuinte, C.Sg_Estado, A.Vl_BaseSubst, A.Vl_Substituicao,
  A.Vl_Seguro, A.Vl_Despesa, A.Cd_Transportador, T.Nm_Transportador,
  A.Ds_Quantidade, A.Ds_Especie, A.Ds_Marca, A.Mm_Nota, A.Fl_Frete,
  A.Cd_ModeloFiscal, A.Ps_Liquido, A.Vl_Desconto, A.Nr_Placa, B.Nm_Fantasia,
  A.refNFe, A.Nr_ECF, A.Fl_ConFinal, 
  Cd_Tabela =  case when ESG.Cd_Tabela is not null then ESG.Cd_Tabela else F.Cd_Tabela end,
  A.finNFe, A.natOp

from
  Saida A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

inner join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = B.Cd_SubGrupo

inner join
  Filial F
on
  F.Cd_Filial = A.Cd_Filial

left join
  CFOP D
on
  D.Cd_CFOP = A.Cd_CFOP

left join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = A.Cd_Emitente and
  EE.Nr_Endereco = B.Nr_Endereco

left join
  Cidade C
on
  C.Cd_Cidade = EE.Cd_Cidade

left join
  Transportador T
on
  T.Cd_Transportador = A.Cd_Transportador

where
  A.Cd_Filial = :Cd_Filial and
  A.Nr_Saida  = :Nr_Saida

-- ===== TFRMSAIDA.ADODsNavegar
-- First
select top 1
  Nr_Saida

from
  Saida

where
  Cd_Filial = :Cd_Filial

order by
  Nr_Saida

-- ===== TFRMSAIDA.ADODsProduto
select
  A.Nr_Saida, A.Nr_Item, A.Cd_Produto,  A.Nm_Produto, A.Sg_Unidade,
  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, 
  dbo.SGRound( A.Vl_Unitario * A.Qt_Item ) as Vl_Total, C.Nm_Classe,
  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, B.Fl_Lote, A.Pr_ICMS, A.Pr_IPI,

  A.Cd_Tributacao, T.Ds_Tributacao, A.xPed, A.nItemPed

from
  Saida_Item A

left join
  Produto B
on
  B.Cd_Produto = A.Cd_Produto

left join
  Classe C
on
  C.Cd_Classe = B.Cd_Classe

left join
  Tributacao T
on
  T.Cd_Tributacao = A.Cd_Tributacao

where
  A.Cd_Filial  = :Cd_Filial and
  A.Nr_Saida  = :Nr_Saida

order by
  C.Nm_Classe, A.Nr_Item

-- ===== TFRMSAIDA.ADODsTotal
select
  sum( P.Ps_Produto ) as Ps_Produto,
  sum( Round( SI.Vl_Unitario * SI.Qt_Item, 2 ) ) as Vl_Produto,
  sum(
    case
      when P.Pr_IPI = 0 then 0.0
      else
        Round( SI.Vl_Unitario * SI.Qt_Item / 100 * P.Pr_IPI, 2 )
    end ) as Vl_IPI,
  sum(
    case
      when '1' = '2' then Round( SI.Vl_Unitario * SI.Qt_Item, 2 )
      else
        Round( SI.Vl_Unitario * SI.Qt_Item / 100 *
        (
        case
          when '2' = '1' then
            case when P.Pr_Reduz_Contrib = 0 then 17 else P.Pr_Reduz_Contrib end

          else
            case when P.Pr_Reduz_NaoContrib = 0 then 17 else P.Pr_Reduz_NaoContrib end

        end
        ) / 17 * 100, 2 )
    end ) as Vl_BaseICMS

from
  Saida_Item SI

inner join
  Produto P
on
  P.Cd_Produto = SI.Cd_Produto

where
  SI.Cd_Filial = 1 and
  SI.Nr_Saida  = 2

-- ===== TFRMSAIDA.ADODsParcela
select
  Cd_Filial, Nr_Saida, Nr_Documento, Dt_Vencimento, Vl_Parcela,
  Cd_FormaPagamento

from
  Saida_Parcela

where
  Cd_Filial  = :Cd_Filial and
  Nr_Saida = :Nr_Saida

order by
  Dt_Vencimento

-- ===== TFRMSAIDA_FIND.ADODsFind
select
  A.Nr_Saida, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Dt_Lancamento,
  A.Vl_Nota, A.Nr_Fatura

from
  Saida A

inner join
  Emitente B
on
  B.Cd_Emitente = A.Cd_Emitente

where
  A.Cd_Filial  =:Cd_Filial 
  /* Nr_Saida */
  /* Cd_Emitente */
  /* Nr_Fatura */

order by
  A.Nr_Saida

-- ===== TFRMSAIDA_ITEM.ADODsCheck
select
  max( Nr_Item ) as NewItem

from
  Saida_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Saida = :Nr_Saida

-- ===== TFRMSAIDA_ITEM_SELECT.ADODsCheck
select
  max( Nr_Item ) as NewItem

from
  Saida_Item

where
  Cd_Filial = :Cd_Filial and
  Nr_Saida = :Nr_Saida

-- ===== TFRMSAIDA_ITEM_SELECT.ADODsFind
select
  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque

from
  Produto P

-- ===== TFRMSAIDA_PARCELA.ADODsPrimary
select
  Cd_Filial

from
  Saida_Parcela

where
  Cd_Filial    = :Cd_Filial and
  Nr_Saida     = :Nr_Saida and
  Nr_Documento = :Nr_Documento

-- ===== TFRMSAIDA_REPORT.ADODsReport
select
  S.Cd_Filial, S.Nr_Saida, S.Dt_Emissao, S.St_Saida, S.Cd_Emitente,
  F.Nm_Emitente, S.Vl_Produto, S.Vl_Nota, S.Mm_Observacao, S.Dt_Lancamento,
  S.Cd_Serie, S.Nr_Fatura

from
  Saida S

left join
  Emitente F /* Fornecedor */
on
  F.Cd_Emitente = S.Cd_Emitente

where
  S.Cd_Filial      = :Cd_Filial and
  S.Dt_Lancamento >= :Dt_Start and
  S.Dt_Lancamento  < :Dt_End
  /* S.Cd_Emitente */
  /* S.St_Compra */
  /* S.Fl_Estoque */

order by
  S.Nr_Saida

-- ===== TFRMSAIDA_REPORT.ADODsProduto
select
  SI.Cd_Filial, SI.Nr_Saida, SI.Nr_Item, SI.Cd_Produto, SI.Sg_Unidade,
  B.Sg_Estoque, SI.Qt_Item, SI.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente,
  case
    when SI.Cd_Produto is null then SI.Nm_Produto
    else B.NM_Produto
  end as Nm_Produto,
  SI.Vl_Unitario * SI.Qt_Item as Vl_Total, PF.Cd_Emitente

from
  Saida_Item SI

left join
  Produto B
on
  B.Cd_Produto = SI.Cd_Produto

left join
  Produto_Fornecedor PF
on
  PF.Cd_Produto = SI.Cd_Produto and
  PF.Cd_Emitente = :Cd_Emitente

where
  SI.Cd_Filial = :Cd_Filial and
  SI.Nr_Saida  = :Nr_Saida

order by
  SI.Nr_Item

-- ===== TFRMSETOR.ADODsDados
select
  Cd_Setor, Nm_Setor, Sg_Setor, Fl_Ativo

from
  Setor

where
  Cd_Setor = :Cd_Setor

-- ===== TFRMSETOR.ADODsReport
select
  Cd_Setor, Nm_Setor, Sg_Setor

from
  Setor

order by
  Nm_Setor

-- ===== TFRMSETOR_FIND.ADODsFind
select
  Cd_Setor, Nm_Setor, Sg_Setor

from
  Setor

where
  Nm_Setor like :find

order by
  Nm_Setor

-- ===== TFRMSINTEGRA_NOVO.ADODsOrigemadfasdfasdfas
-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Orçamento - Faturados
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

--------------- Orçamento - Cancelados
union
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '2' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

-------------------- Notas de Saídas - Saida
union
select
  '2' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  S.Cd_Filial   = @Cd_Filial and
  S.Fl_Estoque  = '1' and
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End and
  S.St_Saida   >= '2'             ----- Somente Cancelado/Fechado

-------------------- Notas de Entradas - Entrada
union

select
  '3' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  E.Cd_Filial      = @Cd_Filial and
  E.Fl_Estoque     = '1' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End and
  E.St_Entrada    >= '2'             ----- Somente Cancelado/Fechado

-- ===== TFRMSINTEGRA_NOVO.ADODsNota
select
  Fl_Origem, Vl_STB,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_Contribuinte,
  Pr_Aliquota =
    ( case
        when Vl_ICMS_Item > 0.0 and Pr_Item_ICMS_Real is not null then Pr_Item_ICMS_Real
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    ),
  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem /* + Vl_FreteItem */ ) as Vl_Nota,
  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,
  sum( Vl_ICMS_Item ) as Vl_ICMS,

  Vl_ST =
    sum(
      (
      case
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '060' ) ) then 0.0
        when ( Fl_Origem = '3' ) and ( Cd_CST in ( '010', '110', '210', '070', '170', '270' ) ) then Vl_ST_Item
        else Vl_ST_Item
      end

      )
      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),

  Vl_NaoTributado =
    sum(
      case
        -- when Vl_ICMS = 0.0 and ( Fl_Origem = '3' ) then Vl_Total_Item
        when Tp_Tributacao = '3' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )

      end ),

  sum( Vl_IPI_Item ) as Vl_IPI,

  Vl_Outras = sum(
    (
    case
      when Cd_CST in ( '020', '000' ) then 0.0
      when
        ( Cd_CFOP = '1102' and Cd_CST = '102'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '1202' and Cd_CST = '102'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '1403' and Cd_CST = '202'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '1407' and Cd_CST = '500'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '1556' and Cd_CST = '101'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '5405' and Cd_CST = '102'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '5405' and Cd_CST = '500'  ) or                                                                               -- 02/05/2016
        ( Cd_CFOP = '1128' and Cd_CST = '060'  ) or                                                                               -- 30/11/2016
        ( Cd_CFOP = '2128' and Cd_CST = '000'  ) or                                                                               -- 30/11/2016
        ( Cd_CFOP = '2128' and Cd_CST = '510'  ) or                                                                               -- 30/11/2016
        ( Cd_CFOP in ( '6403', '5405' ) ) or                                       -- 25/04/2016
        ( Cd_CST in ( '060', '050', '090', '102', '500' ) or
        ( Vl_ICMS_Item = 0.0 and Cd_CST = '000' ) ) or
        ( Cd_CST = '100' and Vl_ICMS_Item = 0.0 ) or
        ( Cd_CST = '500' and Cd_CFOP in ( '5405', '1403' ) ) or
        ( Cd_CST in ( '101', '040' ) and Cd_CFOP in ( '1102' ) ) then
        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )
      else 0.0
    end
    ) +
    (
    case
      when Cd_CFOP = '6403' then Vl_ST_Item
      else 0.0
    end
    )
    ),

  Vl_Isento = sum(
    ( case
        when 
          ( Cd_CFOP = '1128' and Cd_CST = '060'  ) or                                                                               -- 30/11/2016
          ( Cd_CFOP = '2128' and Cd_CST = '000'  ) or                                                                               -- 30/11/2016
          ( Cd_CFOP = '2128' and Cd_CST = '510'  )                                                                                  -- 30/11/2016
          then 0.0
         when ( Cd_CST in ( '040', '041', '030', '110', '210', '070', '170', '270' ) ) or ( ( Cd_CST = '010' ) and ( Fl_Origem <> '3' ) and ( Pr_Contrib > 0 ) ) then
          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )
	    else
	      0.0
	    end ) +

    -------------------- No caso de redução a diferença da base de calculo compoe o Isento - 31/10/2012
    ( case
        when ( Cd_CST in ( '020' ) ) then
         ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )
      else
	       0.0
	    end )
    )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '57' )
  )

group by
  Fl_Origem, Vl_STB,
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,
  Fl_Contribuinte,
    ( case
        when Vl_ICMS_Item > 0.0 and Pr_Item_ICMS_Real is not null then Pr_Item_ICMS_Real
        when ( Fl_Origem = '3' ) then Pr_Contrib
        else 0.0
      end
    )

order by
  Nr_Fatura

-- ===== TFRMSINTEGRA_NOVO.ADODsIPI
select
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,
  Fl_Contribuinte,
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  sum( Vl_Total_Item ) as Vl_Nota,
  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,
  sum( Vl_ICMS_Item ) as Vl_ICMS,
  sum( Vl_IPI_Item ) as Vl_IPI,
  Vl_NaoTributado =
    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = '3' ) then Vl_Nota end ) )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_ModeloFiscal in ( '01', '55' )
  ----------------------------------- and  Vl_IPI_Item > 0

group by
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,
  Fl_Contribuinte,
  ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

order by
  Nr_Fatura

-- ===== TFRMSINTEGRA_NOVO.ADODsItem
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,
  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,
  Vl_DescItem, Fl_Imposto,
  Vl_Substituicao = Vl_ST_Item,

  Vl_IPI_Item,
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_Produto > 0 and
  St_Nota = 'N' and
  (
  Cd_ModeloFiscal = '01' or    --------------- Modelo 2 - Consumidor final
  ( Cd_ModeloFiscal > '02' and Cd_ModeloFiscal < '07' ) or
  ( Cd_ModeloFiscal > '11' and Cd_ModeloFiscal < '57' )
  ) and
  not Cd_CFOPProduto in ( '5929', '6929' )  

order by
  Nr_Documento, Nr_Fatura, Cd_CST

-- ===== TFRMSINTEGRA_NOVO.ADODsReducaoM
select
  RD.Nr_Serie, RD.Dt_Reducao, RD.Nr_Primeiro_COO, RD.Nr_Ultimo_COO, 
  RD.Nr_CRZ, RD.Nr_CRO, RD.Vl_VendaBruta, RD.Vl_TotalGeral, E.Nm_Estacao,
  E.Nr_Ordem, E.Cd_ModeloFiscal

from
  ReducaoDiaria RD

inner join
  Estacao E
on
  E.Nr_Serie = RD.Nr_Serie

where
  RD.Cd_Filial = :Cd_Filial and
  RD.Dt_Reducao >= :Dt_Start and
  RD.Dt_Reducao  < :Dt_End

order by
  RD.Nr_Serie, RD.Dt_Reducao

-- ===== TFRMSINTEGRA_NOVO.ADODsReducaoA
select
  RD.Nr_Serie, RD.Dt_Reducao, RD.Nr_Primeiro_COO, RD.Nr_Ultimo_COO, 
  RD.Nr_CRZ, RD.Nr_CRO, RD.Vl_VendaBruta, RD.Vl_TotalGeral, E.Nm_Estacao,
  E.Nr_Ordem, E.Cd_ModeloFiscal, RDA.Cd_Aliquota, RDA.Vl_Aliquota, RDA.Vl_Base

from
  ReducaoDiaria RD

inner join
  Estacao E
on
  E.Nr_Serie = RD.Nr_Serie

inner join
  ReducaoDiaria_Aliquota RDA
on
  RDA.Cd_Filial   = RD.Cd_Filial and
  RDA.Nr_Serie    = RD.Nr_Serie and
  RDA.Dt_Reducao  = RD.Dt_Reducao

where
  RD.Cd_Filial   = :Cd_Filial and
  RD.Dt_Reducao >= :Dt_Start and
  RD.Dt_Reducao  < :Dt_End

order by
  RD.Dt_Reducao, RD.Nr_Serie, RDA.Cd_Aliquota

-- ===== TFRMSINTEGRA_NOVO.ADODsConFrete
select
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Fl_Frete,
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  sum( Vl_Nota ) as Vl_Nota,
  sum( Vl_BaseICMS ) as Vl_BaseICMS,
  sum( Vl_ICMS ) as Vl_ICMS,
  Vl_NaoTributado =
    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = '3' ) then Vl_Nota end ) )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  (
  ( Cd_ModeloFiscal >= '07' and 
    Cd_ModeloFiscal <= '11' ) or
  ( Cd_ModeloFiscal = '57' )
  )

group by
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Fl_Frete,
  ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

order by
  Nr_Fatura

-- ===== TFRMSINTEGRA_NOVO.ADODsInventario
select
  I.Cd_Filial, I.Nr_Ano, I.Dt_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Cd_ClasFiscal, T.Pr_Contrib,
  sum( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) as Qt_Saldo,
  sum( ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo ) as Vl_Total

from
  Inventario I

inner join
  Inventario_Produto IP
on
  IP.Cd_Filial = I.Cd_Filial and
  IP.Nr_Ano    = I.Nr_Ano and
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

group by
  I.Cd_Filial, I.Nr_Ano, I.Dt_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  P.Cd_ClasFiscal, T.Pr_Contrib

order by
  I.Cd_Filial, I.Nr_Ano, IP.Cd_Produto

-- ===== TFRMSINTEGRA_NOVO.ADODsConsumidor
select
  Dt_Fatura, Cd_ModeloFiscal, Cd_Serie,
  Min( Nr_Fatura ) as Nr_Inicial,
  Max( Nr_Fatura ) as Nr_Final,
  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem ) as Vl_Total,
  sum( Vl_Base_ICMS_Item  - ( case when Vl_Base_ICMS_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) ) as Vl_Base_ICMS,
  sum( Vl_ICMS_Item       - ( case when Vl_ICMS_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) ) as Vl_ICMS,

  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  Vl_NaoTributado =
    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = '3' ) then Vl_Nota end ) )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_ModeloFiscal = '02'

group by
  Dt_Fatura, Cd_ModeloFiscal, Cd_Serie,
 ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

order by
  Dt_Fatura

-- ===== TFRMSINTEGRA_NOVO.ADODsFSD
--------------- Frete
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,
 Vl_Contabil = Vl_Pedido_Frete,
  Nr_Item  = 991

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Vl_Pedido_Frete > 0

--------------- Seguro
union
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,
  Vl_Contabil = Vl_Seguro,
  Nr_Item  = 992

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Vl_Seguro > 0

--------------- Despesa
union
select
  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,
  Vl_Contabil = Vl_Despesa,
  Nr_Item  = 993

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Vl_Despesa > 0

-- ===== TFRMSINTEGRA_NOVO.ADODsFilial
select 
  Fl_SintegraIndustria

from
  Filial

where
  Cd_Filial = :Cd_Filial

-- ===== TFRMSINTEGRA_NOVO.ADODsInutilizada
select
  Cd_Filial, Nr_Ano, Nr_Serie, Nr_Inicial, Nr_Final, Ds_Justificativa,
  Nr_nProt, Ds_xMotivo, Dt_DhRecbto

from
  NFe_Inutiliza

where
  Cd_Filial = :Cd_Filial and
  Dt_DhRecbto >= :Dt_Start and
  Dt_DhRecbto    < :Dt_End

order by
  Nr_Inicial

-- ===== TFRMSINTEGRA_NOVO.ADODsSubstituicao
select
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_pessoa,
  Fl_Contribuinte,
  sum( Vl_Total_Item ) as Vl_Nota,
  sum( Vl_BaseST_Item ) as Vl_BaseST_Item,
  sum( Vl_ST_Item ) as Vl_ST_Item

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_ModeloFiscal in ( '01', '55' ) and
  not Cd_CFOPProduto in (  '1403',  '1406', '1407', '1411', '2403', '2406', '2407', '2411', '5403', '5405', '5411', '6403', '6404' )

group by
  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,
  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_pessoa,
  Fl_Contribuinte

order by
  Nr_Fatura

-- ===== TFRMSINTEGRA_NOVO.ADODsNFCe
select
  D.Dt_DFe, D.Nr_DFe, 
  Pr_Aliquota = 
    case when ( D.Fl_Contribuinte = '1' )  then T.Pr_Contrib else T.Pr_NaoContrib end,
  
  sum( DI.Qt_Produto * DI.Vl_Unitario ) as Vl_Total

from
  DFe_Vw D

inner join
  DFe_Item DI
on
  DI.Cd_Filial  = D.Cd_Filial and
  DI.Id_Estacao = D.Id_Estacao and
  DI.Id_DFe     = D.Id_DFe

inner join
  Produto P
on
  P.Cd_Produto = DI.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao
  
where
  D.Cd_Filial = :Cd_Filial and
  D.St_DFe    = '2' and
  D.Dt_DFe   >= :Dt_Start and
  D.Dt_DFe    < :Dt_End

group by
  D.Dt_DFe, D.Nr_DFe, 
  case when ( D.Fl_Contribuinte = '1' )  then T.Pr_Contrib else T.Pr_NaoContrib end

-- ===== TFRMSINTEGRA_NOVO.ADODsProduto
select distinct
  NP.Cd_Produto, NP.Cd_ClasFiscal, NP.Nm_Produto, P.Sg_Estoque, 
  P.Pr_IPI, T.Pr_Contrib

from
  ##NotaProcessa NP

inner join 
  Produto P
on
  P.Cd_Produto = NP.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  not NP.Cd_CFOPProduto in ( '5929', '6929' ) and
  NP.Nm_Produto <> ''

order by
  NP.Cd_Produto desc

-- ===== TFRMSOLICITACAO.ADODsSolicitacao
select
  S.Id_Software, S.Nr_Item, S.Nr_Prioridade, S.Fl_Situacao,
  S.Ds_Solicitacao, S.Cd_Solicitante, S.Cd_Responsavel, S.Dt_Inclusao,
  S.Dt_Prevista, S.Dt_Inicio, S.Dt_Termino, S.Mm_Solicitacao,
  S.Cd_Emitente, E.Nm_Emitente, E.Ds_Email,
  Cast( S.Cd_Emitente as VarChar ) + ' - ' + E.Nm_Emitente as Dp_Emitente

from
  Solicitacao S

left join
  Emitente E
on
  E.Cd_Emitente = S.Cd_Emitente

-- ===== TFRMSOLICITACAO.ADOCmdDelete
delete from 
  Solicitacao

where
  Id_Software = :Id_Software and
  Nr_Item     = :Nr_Item

-- ===== TFRMSOLICITACAO_ITEM.ADODsNew
select
  max( Nr_Item ) as Nr_Item

from
  Solicitacao

where
  Id_Software = :Id_Software

-- ===== TFRMSPED_CONTRIBUICOES.ADODsOrigem
-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Orçamento - Faturados
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

--------------- Orçamento - Cancelados
union
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '2' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

-------------------- Notas de Saídas - Saida
union
select
  '2' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  S.Cd_Filial   = @Cd_Filial and
  S.Fl_Estoque  = '1' and
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End and
  S.St_Saida   >= '2'             ----- Somente Cancelado/Fechado

-------------------- Notas de Entradas - Entrada
union

select
  '3' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  E.Cd_Filial      = @Cd_Filial and
  E.Fl_Estoque     = '1' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End and
  E.St_Entrada    >= '2' and            ----- Somente Cancelado/Fechado
  E.Cd_ModeloFiscal in ( '01', '02', '03', '55' )

-- ===== TFRMSPED_CONTRIBUICOES.ADODsNota
select distinct
  NP.Cd_Emitente, NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura, NP.Dt_Fatura, NP.Vl_Nota, 
  NP.Vl_DescNota, NP.Vl_BaseICMS, NP.Vl_ICMS, NP.Vl_BaseST, NP.Vl_STB, NP.Vl_IPI, 
  NP.Vl_Pedido, NP.Vl_Despesa, NP.Vl_Custo, NP.Vl_Seguro, NP.Cd_ModeloFiscal,
  NP.Fl_Emitente, 

  Nr_chNFe =
    case 
      when NP.Fl_Origem = '3' then 
        (
        select top 1
          E.Nr_chNFe
        from
          Entrada E
        where
          E.Cd_Filial  = NP.Cd_Filial and
          E.Nr_Entrada = NP.Nr_Orcamento
        )          
        
      else 
        (
        select top 1
          N.Nr_chNFe
        from
          NFe N
        where
          N.Cd_Filial = NP.Cd_Filial and
          Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and
          N.Nr_Origem = NP.Nr_Orcamento and
          N.St_NFe   >= '2' and
          N.St_NFe   <= '3'
        )
      
    end,
    
 St_NFe =   
   (
   select top 1
     N.Nr_chNFe
     
   from
     NFe N
     
   where
     N.Cd_Filial = NP.Cd_Filial and
     Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and
     N.Nr_Origem = NP.Nr_Orcamento and
     N.St_NFe   >= '2' and
     N.St_NFe   <= '3'
   ),
   
 St_Origem =
   case
     when NP.Fl_Origem = '3' then 
       (
       select top 1
          E.St_Entrada
        from
          Entrada E
        where
          E.Cd_Filial  = NP.Cd_Filial and
          E.Nr_Entrada = NP.Nr_Orcamento
       )
     when NP.Fl_Origem = '2' then 
       (
       select top 1
          S.St_Saida
        from
          Saida S
        where
          S.Cd_Filial  = NP.Cd_Filial and
          S.Nr_Saida   = NP.Nr_Orcamento
       )
     else
      (
       select top 1
          O.St_Orcamento
        from
          Orcamento O
        where
          O.Cd_Filial    = NP.Cd_Filial and
          O.Nr_Orcamento = NP.Nr_Orcamento
       )
   end,
 Vl_Pis =
   (
   select 
     sum( Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) )
     
   from
     ##NotaProcessa NPI
     
   where
     NPI.Id_Processo = @@SPID and
     NPI.Fl_Origem   = NP.Fl_Origem and
     NPI.Cd_Emitente = NP.Cd_Emitente and
     NPI.Nr_Fatura   = NP.Nr_Fatura and
     NPI.Cd_Produto  > 0 and
     NPI.St_Nota     = 'N' and
     NPI.Pr_Pis      > 0.0
   ),
   
  Vl_Cofins =
   (
   select 
     sum( Round( Vl_Total_Item / 100.0 * Pr_Cofins, 2 ) )
     
   from
     ##NotaProcessa NPI
     
   where
     NPI.Id_Processo = @@SPID and
     NPI.Fl_Origem   = NP.Fl_Origem and
     NPI.Cd_Emitente = NP.Cd_Emitente and
     NPI.Nr_Fatura   = NP.Nr_Fatura and
     NPI.Cd_Produto  > 0 and
     NPI.St_Nota     = 'N' and
     NPI.Pr_Cofins   > 0.0
   )

from
  ##NotaProcessa NP
  
where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal in ( '01', '04', '55' )

order by
  NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura

-- ===== TFRMSPED_CONTRIBUICOES.ADODsItem
select
  Nr_Item, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,
  Vl_DescItem, Fl_Imposto, Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item,
  Vl_Substituicao = Vl_ST_Item, Pr_ICMS_Item, Vl_ICMS_Item,

  Vl_IPI_Item, Pr_IPI, Pr_PIS, Pr_Cofins,
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  Vl_Pis = Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end,
  Vl_Cofins = Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end,
  Cd_CFOPProduto, Cd_CST, Cd_CST_Pis, Cd_CST_Cofins

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem = :Fl_Origem and
  Cd_Emitente = :Cd_Emitente and
  Nr_Fatura  = :Nr_Fatura and
  Cd_Produto > 0 and
  St_Nota = 'N'

order by
  Nr_Item

-- ===== TFRMSPED_CONTRIBUICOES.ADODsInventario
select
  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,
  sum( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) as Qt_Saldo,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total 

from
  Inventario I

inner join
  Inventario_Produto IP
on
  IP.Cd_Filial = I.Cd_Filial and
  IP.Nr_Ano    = I.Nr_Ano and
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

group by
  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,
  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo

order by
  I.Cd_Filial, I.Nr_Ano, IP.Cd_Produto

-- ===== TFRMSPED_CONTRIBUICOES.ADODsProduto
select distinct
  NP.Cd_Produto, NP.Cd_ClasFiscal, P.Nm_Produto, P.Sg_Estoque, 
  P.Pr_IPI, T.Pr_Contrib

from
  ##NotaProcessa NP

inner join 
  Produto P
on
  P.Cd_Produto = NP.Cd_Produto

left join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  not NP.Cd_CFOPProduto in ( '5929', '6929' ) and
  NP.Nm_Produto <> ''

order by
  NP.Cd_Produto desc

-- ===== TFRMSPED_CONTRIBUICOES.ADODsEmitente
select distinct
  NP.Cd_Emitente, NP.Nm_Emitente, NP.Nr_Documento, NP.Nr_Insc_Estadual,
  NP.Cd_IBGE, NP.Ds_Endereco, NP.Ds_Numero, NP.Ds_Complemento, NP.Nr_CEP,
  NP.NM_Bairro, NP.Cd_Pais

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  NP.Nm_Produto <> ''

order by
  NP.Cd_Emitente

-- ===== TFRMSPED_CONTRIBUICOES.ADODsUnidade
select distinct
  NP.Sg_Unidade,
  Ds_Unidade = Convert( VarChar( 30 ), NP.Sg_Unidade )

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal not in ( '02' ) and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  NP.Nm_Produto <> ''

order by
  NP.Sg_Unidade



/*
select distinct
  NP.Sg_Unidade COLLATE DATABASE_DEFAULT AS Sg_Unidade,
  Ds_Unidade = Coalesce( Convert( VarChar( 30 ), U.Ds_Unidade COLLATE Latin1_General_CI_AI ), NP.Sg_Unidade )

from
  ##NotaProcessa NP

left join
  Unidade U
on
 Convert( VarChar( 2 ), U.Sg_Unidade COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 2 ), NP.Sg_Unidade COLLATE Latin1_General_CI_AI ) 

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal not in ( '02' ) and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  NP.Nm_Produto <> ''

order by
  NP.Sg_Unidade
*/

-- ===== TFRMSPED_CONTRIBUICOES.ADODsContador
select
  C.Nm_Contador, C.Nr_CPF, C.Nr_CNPJ, C.Nr_CRC, C.Nr_InscEstadual,
  C.Ds_Endereco, C.Nm_Bairro, C.Ds_Complemento, C.Cd_Cidade, C.Nr_Cep,
  C.Nr_Telefone, C.Nr_Fax, C.Ds_Email, CI.Nm_Cidade, CI.Sg_Estado,
  CI.Cd_IBGE, C.Ds_Numero

from
  Contador C

inner join
  Cidade CI
on
  CI.Cd_Cidade = C.Cd_Cidade

where
  Nr_CRC = :Nr_CRC

-- ===== TFRMSPED_CONTRIBUICOES.ADODsNatureza
select distinct
  NP.Cd_CFOPProduto, CF.Ds_CFOP

from
  ##NotaProcessa NP

inner join
  CFOP CF
on
  Convert( VarChar( 4 ), CF.Cd_CFOP COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Cd_CFOPProduto COLLATE Latin1_General_CI_AI ) 
where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal not in ( '02' ) --------------- Modelo 2 - Consumidor final

order by
  NP.Cd_CFOPProduto

-- ===== TFRMSPED_CONTRIBUICOES.ADODsDoctoAnalitico
select
  Cd_CST, Cd_CFOPProduto, 
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  Vl_Opr = sum( Vl_Total_Item ),
  Vl_BC_ICMS = sum( Vl_Base_ICMS_Item ),
  Vl_ICMS = sum( Vl_ICMS_Item ),
  Vl_BC_ICMS_ST = sum( Vl_BaseST_Item ),
  Vl_ICMS_ST = sum( Vl_ST_Item ),
  Vl_Red_BC = sum( Vl_Total_Item - Vl_Base_ICMS_Item ),
  Vl_IPI = sum( Vl_IPI_Item )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem = :Fl_Origem and
  Cd_Emitente = :Cd_Emitente and
  Nr_Fatura  = :Nr_Fatura and
  Cd_Produto > 0 and
  St_Nota = 'N'
  
group by  
  Cd_CST, Cd_CFOPProduto, 
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

-- ===== TFRMSPED_CONTRIBUICOES.ADODsPisCofins
select
  Cd_CST_Pis, Cd_CST_Cofins,
  Vl_Pis = sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ),
  Vl_Cofins = sum( Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_Produto > 0 and
  St_Nota = 'N'

group by
  Cd_CST_Pis, Cd_CST_Cofins

having
  sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ) > 0

order by
  Cd_CST_PIS

-- ===== TFRMSPED_CONTRIBUICOES.ADODsNatCST
select distinct
  NP.Cd_CST, Convert( VarChar( 50 ), 'Descrição da CST' ) as Ds_CST

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal not in ( '02' ) --------------- Modelo 2 - Consumidor final

order by
  NP.Cd_CST

-- ===== TFRMSPED_FISCAL.ADODsOrigem
-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)
declare
  @Cd_Filial SmallInt,
  @Dt_Start SmallDateTime,
  @Dt_End SmallDateTime

select
  @Cd_Filial = :Cd_Filial,
  @Dt_Start  = :Dt_Start,
  @Dt_End    = :Dt_End

--------------- Orçamento - Faturados
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '9' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

--------------- Orçamento - Cancelados
union
select
  '1' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem

from
  Orcamento O

inner join
  CFOP CF
on
  CF.Cd_CFOP     = O.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  O.Cd_Filial    = @Cd_Filial and
  O.Fl_Estoque   = '1' and
  O.St_Orcamento = '2' and
  O.Dt_Fatura   >= @Dt_Start and
  O.Dt_Fatura    < @Dt_End and
  O.Nr_Fatura    > 0

-------------------- Notas de Saídas - Saida
union
select
  '2' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem

from
  Saida S

inner join
  CFOP CF
on
  CF.Cd_CFOP     = S.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  S.Cd_Filial   = @Cd_Filial and
  S.Fl_Estoque  = '1' and
  S.Dt_Emissao >= @Dt_Start and
  S.Dt_Emissao  < @Dt_End and
  S.St_Saida   >= '2'             ----- Somente Cancelado/Fechado

-------------------- Notas de Entradas - Entrada
union

select
  '3' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem

from
  Entrada E

inner join
  CFOP CF
on
  CF.Cd_CFOP     = E.Cd_CFOP and
  CF.Fl_Sintegra = '1'

where
  E.Cd_Filial      = @Cd_Filial and
  E.Fl_Estoque     = '1' and
  E.Dt_Lancamento >= @Dt_Start and
  E.Dt_Lancamento  < @Dt_End and
  E.St_Entrada    >= '2' and            ----- Somente Cancelado/Fechado
  E.Cd_ModeloFiscal in ( '01', '02', '03', '55' )

-- ===== TFRMSPED_FISCAL.ADODsNota
select distinct
  NP.Cd_Emitente, NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura, NP.Dt_Fatura, NP.Vl_Nota, 
  NP.Vl_DescNota, NP.Vl_BaseICMS, NP.Vl_ICMS, NP.Vl_BaseST, NP.Vl_STB, NP.Vl_IPI, 
  NP.Vl_Pedido, NP.Vl_Despesa, NP.Vl_Custo, NP.Vl_Seguro, NP.Cd_ModeloFiscal,
  NP.Fl_Emitente, 

  Nr_chNFe =
    case 
      when NP.Fl_Origem = '3' then 
        (
        select top 1
          E.Nr_chNFe
        from
          Entrada E
        where
          E.Cd_Filial  = NP.Cd_Filial and
          E.Nr_Entrada = NP.Nr_Orcamento
        )          
        
      else 
        (
        select top 1
          N.Nr_chNFe
        from
          NFe N
        where
          N.Cd_Filial = NP.Cd_Filial and
          Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and
          N.Nr_Origem = NP.Nr_Orcamento and
          N.St_NFe   >= '2' and
          N.St_NFe   <= '3'
        )
      
    end,
    
 St_NFe =   
   (
   select top 1
     N.Nr_chNFe
     
   from
     NFe N
     
   where
     N.Cd_Filial = NP.Cd_Filial and
     Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and
     N.Nr_Origem = NP.Nr_Orcamento and
     N.St_NFe   >= '2' and
     N.St_NFe   <= '3'
   ),
   
 St_Origem =
   case
     when NP.Fl_Origem = '3' then 
       (
       select top 1
          E.St_Entrada
        from
          Entrada E
        where
          E.Cd_Filial  = NP.Cd_Filial and
          E.Nr_Entrada = NP.Nr_Orcamento
       )
     when NP.Fl_Origem = '2' then 
       (
       select top 1
          S.St_Saida
        from
          Saida S
        where
          S.Cd_Filial  = NP.Cd_Filial and
          S.Nr_Saida   = NP.Nr_Orcamento
       )
     else
      (
       select top 1
          O.St_Orcamento
        from
          Orcamento O
        where
          O.Cd_Filial    = NP.Cd_Filial and
          O.Nr_Orcamento = NP.Nr_Orcamento
       )
   end,
 Vl_Pis =
   (
   select 
     sum( Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) )
     
   from
     ##NotaProcessa NPI
     
   where
     NPI.Id_Processo = @@SPID and
     NPI.Fl_Origem   = NP.Fl_Origem and
     NPI.Cd_Emitente = NP.Cd_Emitente and
     NPI.Nr_Fatura   = NP.Nr_Fatura and
     NPI.Cd_Produto  > 0 and
     NPI.St_Nota     = 'N' and
     NPI.Pr_Pis      > 0.0
   ),
   
  Vl_Cofins =
   (
   select 
     sum( Round( Vl_Total_Item / 100.0 * Pr_Cofins, 2 ) )
     
   from
     ##NotaProcessa NPI
     
   where
     NPI.Id_Processo = @@SPID and
     NPI.Fl_Origem   = NP.Fl_Origem and
     NPI.Cd_Emitente = NP.Cd_Emitente and
     NPI.Nr_Fatura   = NP.Nr_Fatura and
     NPI.Cd_Produto  > 0 and
     NPI.St_Nota     = 'N' and
     NPI.Pr_Cofins   > 0.0
   )

from
  ##NotaProcessa NP
  
where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal in ( '01', '04', '55' )

order by
  NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura

-- ===== TFRMSPED_FISCAL.ADODsItem
select
  Nr_Item, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,
  Vl_DescItem, Fl_Imposto, Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item,
  Vl_Substituicao = Vl_ST_Item, Pr_ICMS_Item, Vl_ICMS_Item,

  Vl_IPI_Item, Pr_IPI, Pr_PIS, Pr_Cofins,
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  Vl_Pis = Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end,
  Vl_Cofins = Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end,
  Cd_CFOPProduto, Cd_CST, Cd_CST_Pis, Cd_CST_Cofins

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem = :Fl_Origem and
  Cd_Emitente = :Cd_Emitente and
  Nr_Fatura  = :Nr_Fatura and
  Cd_Produto > 0 and
  St_Nota = 'N'

order by
  Nr_Item

-- ===== TFRMSPED_FISCAL.ADODsInventario
select
  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario, I.Vl_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto, T.Cd_CST,
  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,
  sum( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) as Qt_Saldo,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total 

from
  Inventario I

inner join
  Inventario_Produto IP
on
  IP.Cd_Filial = I.Cd_Filial and
  IP.Nr_Ano    = I.Nr_Ano and
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0

inner join
  Produto P
on
  P.Cd_Produto = IP.Cd_Produto

inner join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  IP.Cd_Filial = :Cd_Filial and
  IP.Nr_Ano    = :Nr_Ano

group by
  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario, I.Vl_Inventario,
  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto, T.Cd_CST,
  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,
  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo

order by
  I.Cd_Filial, I.Nr_Ano, IP.Cd_Produto

-- ===== TFRMSPED_FISCAL.ADODsProduto
select distinct
  NP.Cd_Produto, NP.Cd_ClasFiscal, P.Nm_Produto, P.Sg_Estoque, 
  P.Pr_IPI, T.Pr_Contrib

from
  ##NotaProcessa NP

inner join 
  Produto P
on
  P.Cd_Produto = NP.Cd_Produto

left join
  Tributacao T
on
  T.Cd_Tributacao = P.Cd_Tributacao

where
  NP.Id_Processo = @@SPID and
  --NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.Cd_ModeloFiscal in ( '01', '04', '55' ) and
  NP.Fl_Origem = '3' and                       --------------- Somente notas de entrada
  NP.St_Nota = 'N' and
  not NP.Cd_CFOPProduto in ( '5929', '6929' ) and
  NP.Nm_Produto <> '' and
  NP.Tp_Operacao in ( '1', '3' )

order by
  P.Nm_Produto

-- ===== TFRMSPED_FISCAL.ADODsEmitente
select distinct
  NP.Cd_Emitente, NP.Nm_Emitente, NP.Nr_Documento, NP.Nr_Insc_Estadual,
  NP.Cd_IBGE, NP.Ds_Endereco, NP.Ds_Numero, NP.Ds_Complemento, NP.Nr_CEP,
  NP.NM_Bairro, NP.Cd_Pais

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.St_Nota = 'N' and
  NP.Nm_Produto <> ''

order by
  NP.Cd_Emitente

-- ===== TFRMSPED_FISCAL.ADODsUnidade
select distinct
  NP.Sg_Unidade

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  --NP.Cd_ModeloFiscal <> '02' and     --------------- Modelo 2 - Consumidor final
  NP.Cd_ModeloFiscal in ( '01', '04', '55' ) and
  NP.Fl_Origem = '3' and                       --------------- Somente notas de entrada
  NP.St_Nota = 'N' and
  not NP.Cd_CFOPProduto in ( '5929', '6929' ) and
  NP.Nm_Produto <> ''

-- ===== TFRMSPED_FISCAL.ADODsContador
select
  C.Nm_Contador, C.Nr_CPF, C.Nr_CNPJ, C.Nr_CRC, C.Nr_InscEstadual,
  C.Ds_Endereco, C.Nm_Bairro, C.Ds_Complemento, C.Cd_Cidade, C.Nr_Cep,
  C.Nr_Telefone, C.Nr_Fax, C.Ds_Email, CI.Nm_Cidade, CI.Sg_Estado,
  CI.Cd_IBGE, C.Ds_Numero

from
  Contador C

inner join
  Cidade CI
on
  CI.Cd_Cidade = C.Cd_Cidade

where
  Nr_CRC = :Nr_CRC

-- ===== TFRMSPED_FISCAL.ADODsNatureza
select distinct
  NP.Cd_CFOPProduto, CF.Ds_CFOP

from
  ##NotaProcessa NP

inner join
  CFOP CF
on
  Convert( VarChar( 4 ), CF.Cd_CFOP COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Cd_CFOPProduto COLLATE Latin1_General_CI_AI ) 

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal in ( '01', '04', '55' )

order by
  NP.Cd_CFOPProduto

-- ===== TFRMSPED_FISCAL.ADODsDoctoAnalitico
select
  Cd_CST, Cd_CFOPProduto, 
  Pr_Aliquota =
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),
  Vl_Opr = sum( Vl_Total_Item ),
  Vl_BC_ICMS = sum( Vl_Base_ICMS_Item ),
  Vl_ICMS = sum( Vl_ICMS_Item ),
  Vl_BC_ICMS_ST = sum( Vl_BaseST_Item ),
  Vl_ICMS_ST = sum( Vl_ST_Item ),
  Vl_Red_BC = sum( Vl_Total_Item - Vl_Base_ICMS_Item ),
  Vl_IPI = sum( Vl_IPI_Item )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Fl_Origem = :Fl_Origem and
  Cd_Emitente = :Cd_Emitente and
  Nr_Fatura  = :Nr_Fatura and
  Cd_Produto > 0 and
  St_Nota = 'N'
  
group by  
  Cd_CST, Cd_CFOPProduto, 
    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )

-- ===== TFRMSPED_FISCAL.ADODsPisCofins
select
  Cd_CST_Pis, Cd_CST_Cofins,
  Vl_Pis = sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ),
  Vl_Cofins = sum( Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end )

from
  ##NotaProcessa

where
  Id_Processo = @@SPID and
  Cd_Produto > 0 and
  St_Nota = 'N'

group by
  Cd_CST_Pis, Cd_CST_Cofins

having
  sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ) > 0

order by
  Cd_CST_PIS

-- ===== TFRMSPED_FISCAL.ADODsNatCST
select distinct
  NP.Cd_CST, Convert( VarChar( 50 ), 'Descrição da CST' ) as Ds_CST

from
  ##NotaProcessa NP

where
  NP.Id_Processo = @@SPID and
  NP.Cd_ModeloFiscal not in ( '02' ) --------------- Modelo 2 - Consumidor final

order by
  NP.Cd_CST

-- ===== TFRMSPED_FISCAL.ADODsUndDescricao
select
  Ds_Unidade

from
  Unidade

where
  Sg_Unidade = :Sg_Unidade

-- ===== TFRMSUBGRUPO.ADODsDados
select
  cd_subgrupo, nm_subgrupo, Pr_Comissao, Cd_NaturezaReceita

from
  subgrupo

where
  cd_subgrupo = :Cd_SubGrupo

-- ===== TFRMSUBGRUPO.ADODsReport
select
  cd_subgrupo, nm_subgrupo

from
  subgrupo

order by
  nm_subgrupo

-- ===== TFRMSUBGRUPO_FIND.ADODsFind
select
  cd_subgrupo, nm_subgrupo

from
  subgrupo

where
  nm_subgrupo like :find

order by
  nm_subgrupo

-- ===== TFRMSUBPRODUTO.ADODsDados
select
  Cd_SubProduto, Nm_SubProduto, Im_SubProduto, Fl_Ativo,
  Pr_Custo

from
  SubProduto

where
  Cd_SubProduto = :Cd_SubProduto

-- ===== TFRMSUBPRODUTO.ADODsNavegar
-- First
select top 1
  Cd_SubProduto

from
  SubProduto

order by
  Cd_SubProduto

-- ===== TFRMSUBPRODUTO.ADODsReport
select
  Cd_SubProduto, Nm_SubProduto, Im_SubProduto, Fl_Ativo, Pr_Custo

from
  SubProduto

order by
  Nm_SubProduto

-- ===== TFRMSUBPRODUTO_FIND.ADODsFind
select
  Cd_SubProduto, Nm_SubProduto

from
  SubProduto

where
  Nm_SubProduto like :find

order by
  Nm_SubProduto

-- ===== TFRMTA.ADODsContato
if Object_ID( '#emitente_ta' ) is null
  create table #emitente_ta
    (
    cd_emitente int,
    nr_contato smallint
    )

select
  E.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Nm_Contato, C.Cd_Ocorrencia,
  CO.Ds_Ocorrencia, C.St_Contato, C.Dt_NovoContato, C.Cd_Usuario,
  C.Mm_Observacao, CO.Cd_Color,
  Cast( E.Cd_Emitente as VarChar ) + ' - ' + E.Nm_Emitente as Dp_Emitente,
  Cast( C.Cd_Ocorrencia as VarChar ) + ' - ' + CO.Ds_Ocorrencia as Dp_Ocorrencia,
    case C.St_Contato
      when '1' then 'Aberto'
      when '2' then 'Encerrado'
    end as Dp_Contato,
  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,
  EE.Nr_Celular_1, EE.Nr_Celular_2,

  R.Ds_Rota, E.Mm_Restricao, E.Vl_Limite_Credito,E.Nr_Pagamento,
  E.Mm_Observacao as Mm_ObsEmitente,
  Cast( E.Cd_Grupo as VarChar ) + ' - ' + EG.Nm_Grupo as Dp_Grupo,
  Cast( E.Cd_SubGrupo as VarChar ) + ' - ' + ESG.Nm_SubGrupo as Dp_SubGrupo,
  Cast( E.Cd_Credito as VarChar ) + ' - ' + EC.Nm_Emitente as Dp_Credito,
  Cast( EE.Cd_Cidade as VarChar ) + ' - ' + CID.Nm_Cidade + ' - ' + CID.Sg_Estado as Dp_Cidade,
  E.Nm_Fantasia, E.Nr_Documento, EE.Nr_CEP, E.Nr_Endereco, EE.Cd_Rota,

  E.Ds_EMail, E.Ds_EmailCob, E.Nm_Emitente, E.Cd_Grupo, E.Cd_SubGrupo, E.Ds_EMailNFe

from
  #Emitente_TA ETA

inner join
  Emitente E
on
  E.Cd_Emitente = ETA.Cd_Emitente

inner join
  Emitente_Grupo EG
on
  EG.Cd_Grupo = E.Cd_Grupo

inner join
  Emitente_SubGrupo ESG
on
  ESG.Cd_SubGrupo = E.Cd_SubGrupo

inner join
  Emitente_Endereco EE
on
  EE.Cd_Emitente = E.Cd_Emitente and
  EE.Nr_Endereco = E.Nr_Endereco

inner join
  Cidade CID
on
  CID.Cd_Cidade = EE.Cd_Cidade

inner join
  Emitente EC
on
  EC.Cd_Emitente = E.Cd_Credito

left join
  Rota R
on
  R.Cd_Rota = EE.Cd_Rota

left join
  Contato C
on
  C.Cd_Emitente = ETA.Cd_Emitente and
  C.Nr_Contato  = ETA.Nr_Contato

left join
  Contato_Ocorrencia Co
on
  CO.Cd_Ocorrencia = C.Cd_Ocorrencia

-- ===== TFRMTA.ADODsOrcamento
select
  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Fatura, O.Cd_Funcionario, O.Nm_Funcionario,
  O.Vl_Orcamento, O.St_Orcamento, O.Cd_Emitente, OP.Ds_Condicao,
  OP.Dt_Saida_Representada, L.Nm_Laboratorio

from
  Orcamento_Total O

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial    = O.Cd_Filial and
  OP.Nr_Orcamento = O.Nr_Orcamento 

left join
  Laboratorio L
on
  L.Cd_Laboratorio = OP.Cd_Laboratorio

where
  O.Cd_Filial   = :Cd_Filial and
  O.Cd_Emitente = :Cd_Emitente

order by
  O.Nr_Orcamento desc

-- ===== TFRMTA.ADODsItens
select
  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, 
  OI.Qt_Item, OI.Vl_Unitario, OI.Qt_Item * OI.Vl_Unitario as Vl_Total, 
  L.Nm_Laboratorio, OP.Ds_Condicao, OP.Dt_Conf_Representada, 
  OP.Dt_Saida_Representada, OP.Dt_Conf_Emitente

from
  Orcamento_Item OI

left join
  Produto P
on
  P.Cd_Produto = OI.Cd_Produto

left join
  Laboratorio L
on
  L.Cd_Laboratorio = P.Cd_Laboratorio

left join
  Orcamento_Pagamento OP
on
  OP.Cd_Filial    = OI.Cd_Filial and
  OP.Nr_Orcamento = OI.Nr_Orcamento and
  OP.Cd_Laboratorio = P.Cd_Laboratorio

where
  OI.Cd_Filial     = :Cd_Filial and
  OI.Nr_Orcamento  = :Nr_Orcamento and
  OI.Fl_Confirmado = '1'

order by
  OI.Nr_Item

-- ===== TFRMTA.ADODsTodosContatos
--------------- Visualizar
select top 50
  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,
  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,
  A.Mm_Observacao, A.Nr_Orcamento, A.Cd_Emitente,
  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + ' - ' + B.Ds_Ocorrencia as Dp_Ocorrencia,
  case A.St_Contato
    when '1' then 'Aberto'
    when '2' then 'Encerrado'
  end as Dp_Contato

from
  Contato A

inner join
  Contato_Ocorrencia B
on
  B.Cd_Ocorrencia = A.Cd_Ocorrencia

where
  A.Cd_Emitente = :Cd_Emitente 

order by
  A.Cd_Emitente, A.Nr_Contato desc

-- ===== TFRMTA.ADODsReceber
select
  R.Cd_Filial, F.Nm_Abreviado, R.Nr_Receber, R.Dt_Emissao, R.Nr_Orcamento,
  R.St_Receber, RP.Nr_Parcela, RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido,
  FO.Nm_Funcionario, O.Nr_Fatura, R.Cd_Emitente, P.Nm_Portador,
  Dt_Pagamento =
  (
  select 
    max( RH.Dt_Lancamento )

  from
    Receber_Historico RH

  where
    RH.Cd_Filial = RP.Cd_Filial and
    RH.Nr_Receber = RP.Nr_Receber and
    RH.Nr_Parcela  = RP.Nr_Parcela and
    RH.Tp_Lancamento = '2'
  )

from
  Receber R

inner join
  Filial F
on
  F.Cd_Filial = R.Cd_Filial

inner join
  Receber_Parcela RP
on
  RP.Cd_Filial  = R.Cd_Filial and
  RP.Nr_Receber = R.Nr_Receber

inner join
  Portador P
on
  P.Cd_Portador = RP.Cd_Portador

left join
  Orcamento O
on
  O.Cd_Filial    = R.Cd_Filial and
  O.Nr_Orcamento = R.Nr_Orcamento

left join
  Funcionario FO
on
  FO.Cd_Funcionario = O.Cd_Funcionario

where
  R.Cd_Emitente = :Cd_Emitente and
  R.St_Receber < '4'

order by
  R.Cd_Emitente, RP.Dt_Vencimento desc
  --R.Cd_Filial, R.Nr_Receber desc, RP.Nr_Parcela desc

-- ===== TFRMTA.ADODsDetalhe
select
  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,
  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,
  Fl_EMailCob, Ds_EmailCob, Vl_Limite_Credito

from
  Emitente

where
  Cd_Emitente = :Cd_Emitente

-- ===== TFRMTA.ADODsAnalise
declare
  @Cd_Filial SmallInt,
  @Cd_Emitente Int,
  @Dt_Start SmallDateTime,
  @Cd_Laboratorio SmallInt

select
  @Cd_Filial      = :Cd_Filial,
  @Cd_Emitente    = :Cd_Emitente,
  @Dt_Start       = :Dt_Start,
  @Cd_Laboratorio = :Cd_Laboratorio

if Object_ID( 'TempDB..##ProdAnalise' ) is not null
  delete from ##ProdAnalise where Nr_SPID = @@SPID

else
  create table ##ProdAnalise
  (
  Nr_SPID Int,
  Cd_Produto Int,
  Dt_Fatura SmallDateTime,
  Qt_Item numeric( 12, 2 ),
  Vl_Unitario numeric( 12, 2 ),
  Vl_TotalVenda numeric( 12, 2 )
  )

--------------- produtos do orçamento
insert into ##ProdAnalise
select
  @@SPID, OI.Cd_Produto, OT.Dt_Fatura, OI.Qt_Item, OI.Vl_UnitarioVenda, OI.Vl_Venda

from
  Orcamento_Total OT

inner join
  Orcamento_Item_Total OI
on
  OI.Cd_Filial     = OT.Cd_Filial and
  OI.Nr_Orcamento  = OT.Nr_Orcamento and
  OI.Fl_Confirmado = '1'

--------------- SQLOther2
/* Fabricante */

where
  OT.Cd_Filial    = @Cd_Filial and
  OT.Cd_Emitente  = @Cd_Emitente and
  OT.St_Orcamento = '9' and
  OT.Dt_Fatura    < @Dt_Start


  
--------------- SQLOther1
/* Projetos */



--------------- Monta o resultset
select
  PA.Nr_SPID, PA.Cd_Produto, P.Nm_Produto,
  sum( PA.Qt_Item ) as Qt_Item,
  max( PA.Dt_Fatura ) as Dt_UltimaCompra,
  min( PA.Dt_Fatura ) as Dt_PrimeiraCompra,
  max( PA.Qt_Item ) as Qt_MaiorCompra,
  min( PA.Qt_Item ) as Qt_MenorCompra,
  Vl_UltimaCompra =
    (
	select top 1
	  Vl_Unitario

	from
	  ##ProdAnalise UC

	where
	  UC.Nr_SPID    = PA.Nr_SPID and
	  UC.Cd_Produto = PA.Cd_Produto
	  
	order by
	  UC.Dt_Fatura desc 
	)    

from
  ##ProdAnalise PA

inner join
  Produto P
on
  P.Cd_Produto = PA.Cd_Produto

where
  PA.Nr_SPID = @@SPID

group by
  PA.nr_SPID, PA.Cd_Produto, P.Nm_Produto

order by
  P.Nm_Produto

-- ===== TFRMTRANSPORTADOR.ADODsDados
select
  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,
  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,
  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,
  C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade,
  T.Nr_Placa, T.Nr_InscEstadual 

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Cd_Transportador = :Cd_Transportador

-- ===== TFRMTRANSPORTADOR.ADODsReport
select
  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Telefone, T.Nr_Celular, T.Nr_Placa, T.Nr_Capacidade

from
  Transportador T

order by
  T.Nm_Transportador

-- ===== TFRMTRANSPORTADOR.ADODsContato
select
  A.Cd_Transportador, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,
  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular

from
  Transportador_Contato A

where
  A.Cd_Transportador = :Cd_Transportador

order by
  A.Cd_Transportador, A.Nm_Contato

-- ===== TFRMTRANSPORTADOR_CONTATO.ADODsContatoNovo
select
  max( Nr_Contato ) as Nr_Contato

from
  Transportador_Contato

where
  Cd_Transportador = :Cd_Transportador

-- ===== TFRMTRANSPORTADOR_FIND.ADODsFind
select
  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Capacidade, T.Nr_Placa,
  T.Nr_Documento, T.Nr_Telefone, C.Nm_Cidade + ' - ' + C.Sg_Estado as Dp_Cidade

from
  Transportador T

inner join
  Cidade C
on
  C.Cd_Cidade = T.Cd_Cidade

where
  T.Nm_Transportador like :find

order by
  T.Nm_Transportador

-- ===== TFRMTRIBUTACAO.ADODsDados
select
  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,
  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,
  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,
  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,
  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,
  T.Pr_MVA_Dentro, T.Pr_MVA_Fora, T.Pr_ECF, T.Fl_ISSRetido,
  T.Cd_CST_NC, T.Cd_CST_Fora_NC, T.Cd_CST_Fora, T.Ds_cBeneficio,

  T.Cd_Entrada, TE.Ds_Tributacao as Ds_Entrada, T.Pr_pFCPST

from
  Tributacao T

left join
  CFOP CFIn
on
  CFIn.Cd_CFOP = T.Cd_CFOPDentro

left join
  CFOP CFOut
on
  CFOut.Cd_CFOP = T.Cd_CFOPFora

left join
  Tributacao TE
on
  TE.Cd_Tributacao = T.Cd_Entrada

where
  T.Cd_Tributacao = :Cd_Tributacao

-- ===== TFRMTRIBUTACAO.ADODsReport
select
  Cd_Tributacao, Ds_Tributacao, Pr_Contrib, Pr_NaoContrib, Cd_CST

from
  Tributacao

order by
  Cd_Tributacao

-- ===== TFRMTRIBUTACAO_FIND.ADODsFind
select
  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,
  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,
  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,
  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,
  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,
  T.Pr_MVA_Dentro, T.Pr_MVA_Fora

from
  Tributacao T

left join
  CFOP CFIn
on
  CFIn.Cd_CFOP = T.Cd_CFOPDentro

left join
  CFOP CFOut
on
  CFOut.Cd_CFOP = T.Cd_CFOPFora

where
  T.Ds_Tributacao like :Find

order by
  T.Ds_Tributacao

-- ===== TFRMTRIBUTACAO_VENDAS.ADODsTributacao
select
  Dt_Tributacao, Cd_Tributacao, Ds_Tributacao, Tp_Tributacao, Pr_Contrib, 
  Pr_NaoContrib, sum( Vl_Tributacao ) as Vl_Tributacao

from
  #TblTributacao

group by
  Dt_Tributacao, Cd_Tributacao, Ds_Tributacao, Tp_Tributacao, Pr_Contrib, 
  Pr_NaoContrib

order by
  Dt_Tributacao, Ds_Tributacao

-- ===== TFRMUNIDADE.ADODsDados
select
  Sg_Unidade, Ds_Unidade

from
  Unidade

where
  Sg_Unidade = :Sg_Unidade

-- ===== TFRMUNIDADE.ADODsNavegar
-- First
select top 1
  Sg_Unidade

from
  Unidade

order by
  Sg_Unidade

-- ===== TFRMUNIDADE.ADODsReport
select
  Sg_Unidade, Ds_Unidade

from
  Unidade

order by
  Sg_Unidade

-- ===== TFRMUNIDADE.ADODsID
select
  max( Id_Unidade ) as New

from
  Unidade

-- ===== TFRMUNIDADE_FIND.ADODsFind
select
  Sg_Unidade, Ds_Unidade

from
  Unidade

where
  Ds_Unidade like :find

order by
  Ds_Unidade

-- ===== TFRMUSUARIO.ADODsDados
select
  U.cd_usuario, U.nm_usuario, U.sh_usuario, U.cd_grupo, UG.nm_grupo,
  U.Nr_Tela, U.Cd_Funcionario, F.Nm_Funcionario, U.Ds_EMail

from
  usuario U

inner join
  usuario_grupo UG
on
  UG.cd_grupo = U.cd_grupo

left join
  Funcionario F
on
  F.Cd_Funcionario = U.Cd_Funcionario

where
  u.cd_usuario = :Cd_Usuario

-- ===== TFRMUSUARIO.ADODsNavegar
-- First
select top 1
  cd_usuario

from
  usuario

order by
  cd_usuario

-- ===== TFRMUSUARIO.ADODsReport
select
  U.cd_usuario, U.nm_usuario, 
  Cast( U.cd_grupo as VarChar( 5 ) ) + ' - ' + UG.nm_grupo as Dp_Grupo

from
  usuario U

inner join
  usuario_grupo UG
on
  UG.cd_grupo = U.cd_grupo

order by
  U.nm_usuario

-- ===== TFRMUSUARIO_FILIAL.ADODsAcesso
select
  master.dbo.IntToStrZero( F.Cd_Filial, 2 ) + ' - ' + F.Nm_Abreviado as Dp_Filial

from
  Filial F

where
  F.Cd_Filial not in
  (
  select
    UF.Cd_Filial

  from
    Usuario_Filial UF

  where
    UF.Cd_Filial = F.Cd_Filial
  )

order by
  F.Cd_Filial

-- ===== TFRMUSUARIO_FIND.ADODsFind
select
  cd_usuario, nm_usuario

from
  usuario

where
  nm_usuario like :find

order by
  nm_usuario

-- ===== TFRMUSUARIO_GRUPO.ADODsDados
select
  cd_grupo, nm_grupo

from
  usuario_grupo

where
  cd_grupo = :Cd_Grupo

-- ===== TFRMUSUARIO_GRUPO.ADODsReport
select
  UG.cd_grupo, UG.nm_grupo, A.cd_acesso, A.ds_acesso,
  A.cd_acesso + ' - ' + A.ds_acesso as Dp_Acesso

from
  usuario_grupo UG

left join
  usuario_grupo_acesso UGA
on
  UGA.cd_grupo = UG.cd_grupo

left join
  acesso A
on
  A.cd_acesso = UGA.cd_acesso

order by
  UG.nm_grupo

-- ===== TFRMUSUARIO_GRUPO.ADODsUsuario
select
  Cd_Usuario, Nm_Usuario

from
  Usuario

where
  Cd_Grupo = :Cd_Grupo

-- ===== TFRMUSUARIO_GRUPO_ACESSO.ADODsAcesso
select
  A.cd_acesso + ' - ' + A.ds_acesso as Dp_Acesso

from
  acesso A

where
  A.cd_acesso not in
    (
    select
      UGA.cd_acesso

    from
      usuario_grupo_acesso UGA

    where
      UGA.cd_grupo  = :Cd_Grupo and
      UGA.cd_acesso = A.cd_acesso
    )

order by
  a.cd_acesso

-- ===== TFRMUSUARIO_GRUPO_FIND.ADODsFind
select
  cd_grupo, nm_grupo

from
  usuario_grupo

where
  nm_grupo like :find

order by
  nm_grupo

-- ===== TFRMUSUARIO_SENHA.ADOCmdUsuario
update
  usuario

set
  sh_usuario = :Sh_Usuario

where
  cd_usuario = :Cd_Usuario

-- ===== TFRMUSUARIO_SENHA.ADODsUsuario
select
  sh_usuario

from
  usuario

where
  cd_usuario = :Cd_Usuario

