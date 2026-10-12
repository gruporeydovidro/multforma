object DmMaster: TDmMaster
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 590
  Width = 1033
  object ADODsUsuario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  U.Cd_Usuario, U.Nm_Usuario, U.Sh_Usuario, U.Cd_Grupo, U.Nr_Tela,'#13#10'  U.Nr_Fundo, U.Nr_Frente, U.Nr_Panel, U.Cd_Funcionario, '#13#10'  F.Nm_Funcionario, U.Ds_EMail'#13#10#13#10'from'#13#10'  Usuario U'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = U.Cd_Funcionario'#13#10#13#10'where'#13#10'  U.Cd_usuario = :Cd_Usuario'
    Parameters = <
      item
        Name = 'cd_usuario'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = ' '
      end>
    Left = 150
    Top = 3
    object ADODsUsuariocd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsUsuarionm_usuario: TStringField
      FieldName = 'nm_usuario'
      Size = 50
    end
    object ADODsUsuariosh_usuario: TStringField
      FieldName = 'sh_usuario'
      Size = 15
    end
    object ADODsUsuariocd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsUsuarionr_tela: TStringField
      FieldName = 'nr_tela'
      FixedChar = True
      Size = 2
    end
    object ADODsUsuarionr_fundo: TIntegerField
      FieldName = 'nr_fundo'
    end
    object ADODsUsuarionr_frente: TIntegerField
      FieldName = 'nr_frente'
    end
    object ADODsUsuarionr_panel: TIntegerField
      FieldName = 'nr_panel'
    end
    object ADODsUsuariocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsUsuarionm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsUsuarioDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 100
    end
  end
  object DsUsuario: TDataSource
    DataSet = ADODsUsuario
    Left = 45
    Top = 3
  end
  object ADODsUsuarioAcesso: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Grupo'#13#10#13#10'from'#13#10'  Usuario_Grupo_Acesso'#13#10#13#10'where'#13#10'  Cd_Grupo  = :Cd_Grupo and'#13#10'  Cd_Acesso = :Cd_Acesso'
    Parameters = <
      item
        Name = 'cd_grupo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'cd_acesso'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = nil?
      end>
    Left = 256
    Top = 3
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQLPrimary.Strings = (
      '--------------- Numero de usu'#225'rios conectados'
      'declare'
      '  @NrEstacoes SmallInt'
      ''
      'set @NrEstacoes ='
      '  ('
      '  select'
      '    Count( * )'
      ''
      '  from'
      '    master..sysProcesses'
      ''
      '  where'
      '    Program_Name like ''''%Multforma%'''' and'
      '    db_name(dbid) = :Nm_DataBase'
      '  )'
      ''
      'select'
      '  @NrEstacoes as Nr_Estacoes'
    )
    SQLOther0.Strings = (
      '--------------- Data do Sistema'
      'select'
      '  GetDate() as DateNow'
    )
    SQLOther1.Strings = (
      '-- Lista de Estados'
      'select'
      '  Sg_Estado, Nm_Estado,'
      '  Sg_Estado + '''' - '''' + Nm_Estado as Dp_Estado'
      ''
      'from'
      '  Estado'
      ''
      'order by'
      '  Sg_Estado'
    )
    SQLOther2.Strings = (
      '-- Unidades do produto'
      'select'
      '  Nr_Fator'
      ''
      'from'
      '  Produto_Unidade'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto and'
      '  Sg_Unidade = :Sg_Unidade'
    )
    SQLOther3.Strings = (
      '-------------------- Pre'#231'o do Produto'
      'select'
      '  PP.Vl_Custo, PP.Vl_Venda, PP.Vl_Promocao, PP.Vl_Reposicao, P.Tp_Preco,'
      '  PU.Nr_Fator, PU.Nr_Indice'
      ''
      'from'
      '  Produto_Preco PP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PP.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = :Sg_Unidade'
      ''
      'where'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = :Cd_Produto'
    )
    SQLOther4.Strings = (
      '-- Aliquota de ICMS'
      'select'
      '  Pr_Contribuinte, Pr_NaoContrib'
      ''
      'from'
      '  Estado_Aliquota'
      ''
      'where'
      '  Sg_Origem  = :Sg_Origem and'
      '  Sg_Destino = :Sg_Destino'
    )
    SQLOther5.Strings = (
      '-- Saldo do produto no estoque'
      'select'
      '  Qt_Liquido_Venda'
      ''
      'from'
      '  Estoque_Saldo E'
      ''
      'where'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = :Cd_Produto'
    )
    SQLOther6.Strings = (
      '--------------- Verifica se ja existe a NFe para ser processada'
      'select'
      '  Dt_NFe, St_NFe'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem'
      ''
      'order by'
      '  Dt_NFe desc'
    )
    SQLOther7.Strings = (
      '-- ------------ Verifica o ID da Parcela'
      'declare'
      '  @Cd_Portador Smallint,'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Banco VarChar( 4 ),'
      '  @Dt_Referencia SmallDateTime'
      ''
      'select'
      '  @Cd_Portador   = :Cd_Portador,'
      '  @Cd_Filial     = :Cd_Filial,'
      '  @Dt_Referencia = Convert( SmallDateTime, Convert( VarChar( 4 ), DatePart( Year, GetDate() ) ) + ''''/01/01'''' )'
      ''
      'set @Cd_Banco = ( select Cd_Banco from Portador where Cd_Portador = @Cd_Portador )'
      ''
      'if @Cd_Banco = ''''7480''''           -- Sicredi'
      '  select'
      '    max( RP.Id_Parcela ) as NewID'
      ''
      '  from'
      '    Receber R'
      ''
      '  inner join'
      '    Receber_Parcela RP'
      '  on'
      '    RP.Cd_Filial  = R.Cd_Filial and'
      '    RP.Nr_Receber = R.Nr_Receber and'
      '    RP.Cd_Portador = @Cd_Portador'
      ''
      '  where'
      '    R.Cd_Filial   = R.Cd_Filial and'
      '    R.Dt_Emissao >= @Dt_Referencia and'
      '    R.Dt_Emissao  < DateAdd( Year, 1, @Dt_Referencia )'
      ''
      'else'
      '  select'
      '    max( Id_Parcela ) as NewID'
      ''
      '  from'
      '    Receber_Parcela'
      ''
      '  where'
      '    Cd_Filial   = @Cd_Filial and'
      '    Cd_Portador = @Cd_Portador'
    )
    SQLOther8.Strings = (
      '--------------- Informa'#231#245'es do portador'
      'declare'
      '  @Dt_Emissao SmallDateTime,'
      '  @Dt_Vencimento SmallDateTime'
      ''
      'select'
      '   @Dt_Emissao    = R.Dt_Emissao,'
      '   @Dt_Vencimento = RP.Dt_Vencimento'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Parcela = :Nr_Parcela'
      ''
      'where'
      '  R.Cd_Filial  = :Cd_Filial and'
      '  R.Nr_Receber = :Nr_Receber'
      ''
      'select'
      '  P.Cd_portador, P.Cd_banco, P.Cd_Agencia, P.Nr_Conta,'
      '  P.Cd_Carteira, P.Tp_Cobranca, P.Ds_Livre, P.Nr_Indicador,'
      '  @Dt_Emissao as Dt_Emissao, @Dt_Vencimento as Dt_Vencimento,'
      '  P.Nr_Unidade'
      ''
      'from'
      '  Portador P'
      ''
      'where'
      '  P.Cd_Portador = :Cd_Portador'
    )
    SQLOther9.Strings = (
      '--------------- Area minima do Grupo - 08/11/2012'
      'select'
      '  G.Qt_AreaMinima'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    Left = 150
    Top = 187
  end
  object DsFilial: TDataSource
    DataSet = ADODsFilial
    Left = 45
    Top = 58
  end
  object ADODsFilial: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsFilialAfterOpen
    OnCalcFields = ADODsFilialCalcFields
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,'#13#10'  F.Ds_endereco, F.nm_bairro, F.Ds_Complemento, F.Cd_Cidade, C.Nm_Cidade,'#13#10'  E.Sg_Estado, F.Nr_CEP, F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular,'#13#10'  F.Ds_EMail, F.Ds_Site, F.Cd_Tabela, F.Nr_Licenca,'#13#10'  Cast( E.sg_estado as VarChar ) + '''' - '''' + E.Nm_Estado as Dp_Estado,'#13#10'  F.Fl_Estoque, F.Cd_Portador, P.Nm_Portador, F.Im_Logo, F.Mm_Rodape,'#13#10'  F.Cd_Historico_Balcao, HB.Ds_Historico as Ds_Historico_Balcao,'#13#10'  F.Cd_Grupo_Emitente, F.Cd_SubGrupo_Emitente, '#13#10'  F.Nr_Compra, F.Cd_CFOP_In, CFIn.Ds_CFOP as Ds_CFOP_In,'#13#10'  F.Cd_CFOP_Out, CFOut.Ds_CFOP as Ds_CFOP_Out, F.Ds_Valid, F.Id_Cliente,'#13#10'  F.Fl_Simples, F.Mm_Simples, F.Im_Cabecalho, F.Pr_Margem,'#13#10'  F.Nm_Smtp_EM, F.Nm_Usuario_EM, F.Sh_Usuario_EM, F.Nr_Porta_EM,'#13#10'  F.Ds_Titulo_EM, F.Mm_Mensagem_EM, F.Fl_Figura, F.Fl_TamFigura,'#13#10'  F.Fl_Detalhe, F.Fl_MeiaPagina, F.Fl_Transportador, F.Fl_EndCobranca,'#13#10'  F.Fl_EndEntrega, F.Fl_Margem, F.Fl_RemoveLinhas, F.Fl_Logo, F.Fl_Medida,'#13#10'  F.Nr_Area_Decimal, F.Qt_Area_Minima, F.Vl_Dolar, F.Ds_Orcamento,'#13#10'  F.Fl_Representante, F.Fl_PrazoEntrega, F.Ds_Custo, F.Fl_SomaST,'#13#10'  F.Fl_Formulario, C.Cd_IBGE, F.Fl_Conjunto, F.Fl_NFe,'#13#10'  F.Cd_CST_Pis, F.Pr_PIS, F.Cd_CST_Cofins, F.Pr_Cofins,'#13#10'  E.Cd_IBGE as Cd_IBGE_UF, F.Ds_Numero, F.Fl_ComissaoJuncao,'#13#10'  F.Nr_PrazoEntrega, F.Fl_EtiquetaProducao, F.Cd_PortadorCartao,'#13#10'  F.Cd_HistoricoCartao, F.Fl_AnalisaCredito,'#13#10'  F.Fl_FusoHorario, F.Fl_ImpTotalAmbiente, F.Fl_Regime, F.Nr_CorFundo,'#13#10#13#10'  F.Cd_PortadorDebito, F.Cd_PortadorPIX, F.Cd_HistoricoDebito, F.Cd_HistoricoPIX'#13#10#13#10'from'#13#10'  Filial F'#13#10#13#10'inner join'#13#10'  cidade c'#13#10'on'#13#10'  C.cd_cidade = F.cd_cidade'#13#10#13#10'inner join'#13#10'  estado E'#13#10'on'#13#10'  E.sg_estado = C.sg_estado'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = F.Cd_Portador'#13#10#13#10'left join'#13#10'  Historico HB'#13#10'on'#13#10'  HB.Cd_Historico = F.Cd_Historico_Balcao'#13#10#13#10'left join'#13#10'  CFOP CFIn'#13#10'on'#13#10'  CFIn.Cd_CFOP = F.Cd_CFOP_In'#13#10#13#10'left join'#13#10'  CFOP CFOut'#13#10'on'#13#10'  CFOut.Cd_CFOP = F.Cd_CFOP_Out'#13#10#13#10'where'#13#10'  F.Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 150
    Top = 58
    object ADODsFilialDp_Filial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Filial'
      Size = 120
      Calculated = True
    end
    object ADODsFilialCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFilialNm_Filial: TStringField
      FieldName = 'Nm_Filial'
      Size = 50
    end
    object ADODsFilialNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
    end
    object ADODsFilialNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsFilialNr_InscEstadual: TStringField
      FieldName = 'Nr_InscEstadual'
      Size = 18
    end
    object ADODsFilialDs_endereco: TStringField
      FieldName = 'Ds_endereco'
      Size = 50
    end
    object ADODsFilialnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsFilialDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsFilialCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsFilialNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsFilialSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsFilialNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsFilialNr_Telefone: TStringField
      FieldName = 'Nr_Telefone'
      FixedChar = True
      Size = 11
    end
    object ADODsFilialNr_Fax: TStringField
      FieldName = 'Nr_Fax'
      FixedChar = True
      Size = 10
    end
    object ADODsFilialNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsFilialNr_Celular: TStringField
      FieldName = 'Nr_Celular'
      FixedChar = True
      Size = 10
    end
    object ADODsFilialDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 50
    end
    object ADODsFilialDs_Site: TStringField
      FieldName = 'Ds_Site'
      Size = 50
    end
    object ADODsFilialCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsFilialNr_Licenca: TStringField
      FieldName = 'Nr_Licenca'
    end
    object ADODsFilialDp_Estado: TStringField
      FieldName = 'Dp_Estado'
      ReadOnly = True
      Size = 63
    end
    object ADODsFilialFl_Estoque: TStringField
      FieldName = 'Fl_Estoque'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsFilialNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsFilialIm_Logo: TBlobField
      FieldName = 'Im_Logo'
    end
    object ADODsFilialMm_Rodape: TMemoField
      FieldName = 'Mm_Rodape'
      BlobType = ftMemo
    end
    object ADODsFilialCd_Historico_Balcao: TSmallintField
      FieldName = 'Cd_Historico_Balcao'
    end
    object ADODsFilialDs_Historico_Balcao: TStringField
      FieldName = 'Ds_Historico_Balcao'
      Size = 30
    end
    object ADODsFilialCd_Grupo_Emitente: TSmallintField
      FieldName = 'Cd_Grupo_Emitente'
    end
    object ADODsFilialCd_SubGrupo_Emitente: TSmallintField
      FieldName = 'Cd_SubGrupo_Emitente'
    end
    object ADODsFilialNr_Compra: TIntegerField
      FieldName = 'Nr_Compra'
    end
    object ADODsFilialCd_CFOP_In: TStringField
      FieldName = 'Cd_CFOP_In'
      FixedChar = True
      Size = 4
    end
    object ADODsFilialDs_CFOP_In: TStringField
      FieldName = 'Ds_CFOP_In'
      Size = 50
    end
    object ADODsFilialCd_CFOP_Out: TStringField
      FieldName = 'Cd_CFOP_Out'
      FixedChar = True
      Size = 4
    end
    object ADODsFilialDs_CFOP_Out: TStringField
      FieldName = 'Ds_CFOP_Out'
      Size = 50
    end
    object ADODsFilialDs_Valid: TStringField
      FieldName = 'Ds_Valid'
    end
    object ADODsFilialFl_Simples: TStringField
      FieldName = 'Fl_Simples'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialMm_Simples: TMemoField
      FieldName = 'Mm_Simples'
      BlobType = ftMemo
    end
    object ADODsFilialIm_Cabecalho: TBlobField
      FieldName = 'Im_Cabecalho'
    end
    object ADODsFilialPr_Margem: TBCDField
      FieldName = 'Pr_Margem'
      Precision = 9
      Size = 3
    end
    object ADODsFilialNm_Smtp_EM: TStringField
      FieldName = 'Nm_Smtp_EM'
      Size = 100
    end
    object ADODsFilialNm_Usuario_EM: TStringField
      FieldName = 'Nm_Usuario_EM'
      Size = 50
    end
    object ADODsFilialSh_Usuario_EM: TStringField
      FieldName = 'Sh_Usuario_EM'
      Size = 50
    end
    object ADODsFilialNr_Porta_EM: TIntegerField
      FieldName = 'Nr_Porta_EM'
    end
    object ADODsFilialDs_Titulo_EM: TStringField
      FieldName = 'Ds_Titulo_EM'
      Size = 200
    end
    object ADODsFilialMm_Mensagem_EM: TMemoField
      FieldName = 'Mm_Mensagem_EM'
      BlobType = ftMemo
    end
    object ADODsFilialFl_Figura: TStringField
      FieldName = 'Fl_Figura'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_TamFigura: TStringField
      FieldName = 'Fl_TamFigura'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Detalhe: TStringField
      FieldName = 'Fl_Detalhe'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_MeiaPagina: TStringField
      FieldName = 'Fl_MeiaPagina'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Transportador: TStringField
      FieldName = 'Fl_Transportador'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_EndCobranca: TStringField
      FieldName = 'Fl_EndCobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_EndEntrega: TStringField
      FieldName = 'Fl_EndEntrega'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Margem: TStringField
      FieldName = 'Fl_Margem'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_RemoveLinhas: TStringField
      FieldName = 'Fl_RemoveLinhas'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Logo: TStringField
      FieldName = 'Fl_Logo'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialNr_Area_Decimal: TSmallintField
      FieldName = 'Nr_Area_Decimal'
    end
    object ADODsFilialQt_Area_Minima: TBCDField
      FieldName = 'Qt_Area_Minima'
      Precision = 12
    end
    object ADODsFilialVl_Dolar: TBCDField
      FieldName = 'Vl_Dolar'
      Precision = 9
      Size = 3
    end
    object ADODsFilialDs_Orcamento: TStringField
      FieldName = 'Ds_Orcamento'
    end
    object ADODsFilialFl_Representante: TStringField
      FieldName = 'Fl_Representante'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialId_Cliente: TStringField
      FieldName = 'Id_Cliente'
    end
    object ADODsFilialDp_Cidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Cidade'
      Size = 55
      Calculated = True
    end
    object ADODsFilialFl_PrazoEntrega: TStringField
      FieldName = 'Fl_PrazoEntrega'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialDs_Custo: TStringField
      FieldName = 'Ds_Custo'
    end
    object ADODsFilialFl_SomaST: TStringField
      FieldName = 'Fl_SomaST'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Formulario: TStringField
      FieldName = 'Fl_Formulario'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsFilialFl_Conjunto: TStringField
      FieldName = 'Fl_Conjunto'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_NFe: TStringField
      FieldName = 'Fl_NFe'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialCd_CST_Pis: TStringField
      FieldName = 'Cd_CST_Pis'
      Size = 3
    end
    object ADODsFilialPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 9
    end
    object ADODsFilialCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
    object ADODsFilialPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 9
    end
    object ADODsFilialCd_IBGE_UF: TStringField
      FieldName = 'Cd_IBGE_UF'
      Size = 2
    end
    object ADODsFilialDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsFilialFl_ComissaoJuncao: TStringField
      FieldName = 'Fl_ComissaoJuncao'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialNr_PrazoEntrega: TSmallintField
      FieldName = 'Nr_PrazoEntrega'
    end
    object ADODsFilialFl_EtiquetaProducao: TStringField
      FieldName = 'Fl_EtiquetaProducao'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialCd_PortadorCartao: TSmallintField
      FieldName = 'Cd_PortadorCartao'
    end
    object ADODsFilialCd_HistoricoCartao: TSmallintField
      FieldName = 'Cd_HistoricoCartao'
    end
    object ADODsFilialFl_AnalisaCredito: TStringField
      FieldName = 'Fl_AnalisaCredito'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_FusoHorario: TStringField
      FieldName = 'Fl_FusoHorario'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_ImpTotalAmbiente: TStringField
      FieldName = 'Fl_ImpTotalAmbiente'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialFl_Regime: TStringField
      FieldName = 'Fl_Regime'
      FixedChar = True
      Size = 1
    end
    object ADODsFilialNr_CorFundo: TIntegerField
      FieldName = 'Nr_CorFundo'
    end
    object ADODsFilialCd_PortadorDebito: TSmallintField
      FieldName = 'Cd_PortadorDebito'
    end
    object ADODsFilialCd_PortadorPIX: TSmallintField
      FieldName = 'Cd_PortadorPIX'
    end
    object ADODsFilialCd_HistoricoDebito: TSmallintField
      FieldName = 'Cd_HistoricoDebito'
    end
    object ADODsFilialCd_HistoricoPIX: TSmallintField
      FieldName = 'Cd_HistoricoPIX'
    end
  end
  object ADODsUnidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Sg_Unidade, A.Ds_Unidade,'#13#10'  A.Sg_Unidade + '''' - '''' + A.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Unidade A'#13#10#13#10'order by'#13#10'  A.Sg_Unidade'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  A.Sg_Unidade, A.Ds_Unidade,'
      '  A.Sg_Unidade + '''' - '''' + A.Ds_Unidade as Dp_Unidade'
      ''
      'from'
      '  Unidade A'
      ''
      'order by'
      '  A.Sg_Unidade'
    )
    SQLOther2.Strings = (
      'select'
      '  A.Sg_Unidade, A.Ds_Unidade, '
      '  A.Sg_Unidade + '''' - '''' + A.Ds_Unidade as Dp_Unidade'
      ''
      'from'
      '  Produto_Unidade B'
      ''
      'inner join'
      '  Unidade A'
      'on'
      '  A.Sg_Unidade = B.Sg_Unidade'
      ''
      'where'
      '  B.Cd_Produto = :Cd_Produto'
      ''
      'order by'
      '  B.Sg_Unidade'
    )
    Left = 256
    Top = 58
    object ADODsUnidadesg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidadeds_unidade: TStringField
      FieldName = 'ds_unidade'
      Size = 30
    end
    object ADODsUnidadedp_unidade: TStringField
      FieldName = 'dp_unidade'
      Size = 254
    end
  end
  object ADODsEstacao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Nm_Estacao, E.Tp_IFiscal, E.Nr_PortaIFiscal, EA.Cd_Aliquota,'#13#10'  EA.Pr_Aliquota, EA.Tp_Aliquota, E.Fl_Promocional, E.Fl_Tela, '#13#10'  E.Mm_Promocional, E.Ds_Path_PRN, E.Nr_Serie, E.Nr_Ordem,'#13#10'  E.Cd_ModeloFiscal, Ds_PrnNota, Ds_PrnDuplicata, Ds_PrnBoleto, '#13#10'  Ds_PrnDanfe, Ds_PrnNFe, Ds_PrnOEstoque, Ds_PrnOServico, Ds_PrnOrcamento,'#13#10'  Fl_PrnNota, Fl_PrnDuplicata, Fl_PrnBoleto, Fl_PrnDanfe, Fl_PrnNFe,'#13#10'  Fl_PrnOEstoque, Fl_PrnOServico, Fl_PrnOrcamento, Ds_PrnEtiqueta, Fl_PrnEtiqueta'#13#10#13#10'from'#13#10'  Estacao E'#13#10#13#10'left join'#13#10'  Estacao_Aliquota EA'#13#10'on'#13#10'  EA.Nm_Estacao = E.Nm_Estacao'#13#10#13#10'where'#13#10'  E.Nm_Estacao = :Nm_Estacao'
    Parameters = <
      item
        Name = 'Nm_Estacao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 70
        Value = ' '
      end>
    Left = 473
    Top = 3
    object ADODsEstacaonm_estacao: TStringField
      FieldName = 'nm_estacao'
      Size = 70
    end
    object ADODsEstacaotp_ifiscal: TStringField
      FieldName = 'tp_ifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaonr_portaifiscal: TStringField
      FieldName = 'nr_portaifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaocd_aliquota: TStringField
      FieldName = 'cd_aliquota'
      Size = 15
    end
    object ADODsEstacaopr_aliquota: TBCDField
      FieldName = 'pr_aliquota'
      Precision = 9
      Size = 2
    end
    object ADODsEstacaotp_aliquota: TStringField
      FieldName = 'tp_aliquota'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaofl_promocional: TStringField
      FieldName = 'fl_promocional'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaofl_tela: TStringField
      FieldName = 'fl_tela'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaods_path_prn: TStringField
      FieldName = 'ds_path_prn'
      Size = 100
    end
    object ADODsEstacaoMm_Promocional: TMemoField
      FieldName = 'Mm_Promocional'
      BlobType = ftMemo
    end
    object ADODsEstacaoNr_Serie: TStringField
      FieldName = 'Nr_Serie'
    end
    object ADODsEstacaoNr_Ordem: TSmallintField
      FieldName = 'Nr_Ordem'
    end
    object ADODsEstacaoCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      Size = 2
    end
    object ADODsEstacaoDs_PrnNota: TStringField
      FieldName = 'Ds_PrnNota'
      Size = 200
    end
    object ADODsEstacaoDs_PrnDuplicata: TStringField
      FieldName = 'Ds_PrnDuplicata'
      Size = 200
    end
    object ADODsEstacaoDs_PrnBoleto: TStringField
      FieldName = 'Ds_PrnBoleto'
      Size = 200
    end
    object ADODsEstacaoDs_PrnDanfe: TStringField
      FieldName = 'Ds_PrnDanfe'
      Size = 200
    end
    object ADODsEstacaoDs_PrnNFe: TStringField
      FieldName = 'Ds_PrnNFe'
      Size = 200
    end
    object ADODsEstacaoDs_PrnOEstoque: TStringField
      FieldName = 'Ds_PrnOEstoque'
      Size = 200
    end
    object ADODsEstacaoDs_PrnOServico: TStringField
      FieldName = 'Ds_PrnOServico'
      Size = 200
    end
    object ADODsEstacaoFl_PrnNota: TStringField
      FieldName = 'Fl_PrnNota'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnDuplicata: TStringField
      FieldName = 'Fl_PrnDuplicata'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnBoleto: TStringField
      FieldName = 'Fl_PrnBoleto'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnDanfe: TStringField
      FieldName = 'Fl_PrnDanfe'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnNFe: TStringField
      FieldName = 'Fl_PrnNFe'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnOEstoque: TStringField
      FieldName = 'Fl_PrnOEstoque'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoFl_PrnOServico: TStringField
      FieldName = 'Fl_PrnOServico'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoDs_PrnOrcamento: TStringField
      FieldName = 'Ds_PrnOrcamento'
      Size = 200
    end
    object ADODsEstacaoFl_PrnOrcamento: TStringField
      FieldName = 'Fl_PrnOrcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsEstacaoDs_PrnEtiqueta: TStringField
      FieldName = 'Ds_PrnEtiqueta'
      Size = 200
    end
    object ADODsEstacaoFl_PrnEtiqueta: TStringField
      FieldName = 'Fl_PrnEtiqueta'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsECFBalcao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  B.Cd_Filial, B.Nr_Balcao, B.Cd_Emitente, BI.Nr_Item, BI.Cd_Produto,'#13#10'  P.Nm_Produto, P.Nm_Abreviado, BI.Vl_Unitario, BI.Qt_Item, T.Tp_Tributacao,'#13#10'  T.Pr_Contrib, T.Pr_NaoContrib, B.Pr_Desconto, B.Vl_Desconto, B.Pr_Custo,'#13#10'  B.Vl_Custo, B.Nr_ECF, B.Fl_FormaPagto, P.Fl_Produto, E.Fl_Contribuinte, '#13#10'  B.Vl_Pedido, B.Nm_Comprador, BI.Sg_Unidade, B.Cd_Funcionario,'#13#10'  F.Nm_Funcionario, B.Dt_Fatura'#13#10#13#10'from'#13#10'  Balcao B'#13#10#13#10'inner join'#13#10'  Balcao_Item BI'#13#10'on'#13#10'  BI.Cd_Filial     = B.Cd_Filial and'#13#10'  BI.Nr_Balcao     = B.Nr_Balcao and'#13#10'  BI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = BI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = B.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'where'#13#10'  B.Cd_Filial = :Cd_Filial and'#13#10'  B.Nr_Balcao = :Nr_Balcao'#13#10#13#10'order by'#13#10'  BI.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Balcao'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 150
    Top = 119
    object ADODsECFBalcaocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsECFBalcaonr_balcao: TIntegerField
      FieldName = 'nr_balcao'
    end
    object ADODsECFBalcaocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsECFBalcaonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsECFBalcaocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsECFBalcaonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsECFBalcaonm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsECFBalcaovl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsECFBalcaoqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsECFBalcaopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsECFBalcaovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsECFBalcaopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsECFBalcaovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsECFBalcaonr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsECFBalcaofl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsECFBalcaofl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsECFBalcaoSt_Tributaria: TStringField
      FieldKind = fkCalculated
      FieldName = 'St_Tributaria'
      Size = 15
      Calculated = True
    end
    object ADODsECFBalcaofl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsECFBalcaovl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsECFBalcaoVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsECFBalcaotp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsECFBalcaopr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsECFBalcaopr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsECFBalcaonm_comprador: TStringField
      FieldName = 'nm_comprador'
      Size = 50
    end
    object ADODsECFBalcaosg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsECFBalcaocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsECFBalcaonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsECFBalcaodt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Tp_Pessoa, E.Nr_Documento,'#13#10'  E.Nr_Insc_Estadual, E.Fl_Contribuinte, E.Fl_Exportador, EE.Ds_Endereco,'#13#10'  EE.Nm_Bairro, EE.Ds_Complemento, EE.Cd_Cidade, C.Sg_Estado,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Cep, EE.Nr_Telefone_1'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 45
    Top = 119
    object ADODsEmitentecd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEmitentenm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentetp_pessoa: TStringField
      FieldName = 'tp_pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentenr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsEmitentenr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsEmitentefl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentefl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitenteds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsEmitentenm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsEmitenteds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsEmitentecd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsEmitentesg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEmitentedp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsEmitentenr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsEmitentenr_telefone_1: TStringField
      FieldName = 'nr_telefone_1'
      Size = 10
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  A.Cd_Emitente, B.Nm_Emitente, B.Tp_Pessoa, B.Nr_Documento,'#13#10'  B.Nr_Insc_Estadual, A.Vl_Pedido_Frete, A.Vl_Pedido, B.Fl_Contribuinte, '#13#10'  B.Fl_Exportador, EA.Pr_Contribuinte, EA.Pr_NaoContrib, '#13#10'  A.Fl_FormaPagto, A.Nr_Endereco, A.Nm_Contato,'#13#10'  A.Pr_Desconto, A.Vl_Desconto, A.Pr_Custo, A.Vl_Custo, A.Vl_IPI,'#13#10'  A.Cd_Funcionario, F.Nm_Funcionario, A.Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento A'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = A.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco C'#13#10'on'#13#10'  C.Cd_Emitente = A.Cd_Emitente and'#13#10'  C.Nr_Endereco = A.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade D'#13#10'on'#13#10'  D.Cd_Cidade = C.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem = :Sg_Origem and'#13#10'  EA.Sg_Destino = D.Sg_Estado'#13#10#13#10'where'#13#10'  A.Cd_Filial    = :Cd_Filial and'#13#10'  A.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 0
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 256
    Top = 119
    object ADODsOrcamentoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsOrcamentoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcamentoTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsOrcamentoVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoPr_Contribuinte: TBCDField
      FieldName = 'Pr_Contribuinte'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsOrcamentonr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsOrcamentopr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
    object ADODsOrcamentonm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsOrcamentovl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsOrcamentoNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
  end
  object ADODsOrcamentoItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoItemCalcFields
    CommandText = 'select'#13#10'  A.Cd_Produto, A.Nm_Produto, A.Sg_Unidade, A.Qt_Item,'#13#10'  A.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib, B.Fl_Produto,'#13#10'  T.Tp_Tributacao, A.Qt_Estoque, A.Qt_Agregado, B.Sg_Estoque,'#13#10'  case'#13#10'    when B.Cd_Produto is null then Substring( A.Nm_Produto, 1, 40 )'#13#10'    else B.Nm_Abreviado'#13#10'  end as Nm_Abreviado,'#13#10'  T.Pr_ECF, B.Cd_Barra, B.Cd_ClasFiscal'#13#10#13#10'from'#13#10'  Orcamento_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = B.Cd_Tributacao'#13#10#13#10'where'#13#10'  A.Cd_Filial     = :Cd_Filial and'#13#10'  A.Nr_Orcamento  = :Nr_Orcamento and'#13#10'  A.Fl_Confirmado = ''''1'''#13#10#13#10'order by'#13#10'  A.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------- Itens do Or'#231'amento'
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item,'
      '  OI.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib, P.Fl_Produto,'
      '  T.Tp_Tributacao, OI.Qt_Estoque, OI.Qt_Agregado, P.Sg_Estoque,'
      '  case'
      '    when P.Cd_Produto is null then Substring( OI.Nm_Produto, 1, 40 )'
      '    else P.Nm_Abreviado'
      '  end as Nm_Abreviado,'
      '  T.Pr_ECF, P.Cd_Barra, P.Cd_ClasFiscal'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther1.Strings = (
      '-------------------- Itens do Projeto'
      'select'
      '  Cast( Cast( OPI.Nr_Projeto as VarChar ) +'
      '       dbo.IntToStrZero( OPI.Nr_Item, 4 ) as Int ) as Nr_Item,'
      '  OPI.Cd_Produto, P.Nm_Produto, OPI.Sg_Unidade, '
      '  OPI.Qt_Item * OP.Qt_Projeto as Qt_Item,'
      '  OPI.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib, P.Fl_Produto,'
      '  T.Tp_Tributacao, OPI.Qt_Item * OP.Qt_Projeto as Qt_Item, '
      '  0.0 as Qt_Agregado, P.Sg_Estoque, P.Nm_Abreviado,'
      '  T.Pr_ECF, P.Cd_Barra, P.Cd_ClasFiscal'
      ''
      'from'
      '  Orcamento_Projeto OP'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = OP.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  OP.Cd_Filial     = @Cd_Filial and'
      '  OP.Nr_Orcamento  = @Nr_Orcamento'
    )
    Left = 366
    Top = 119
    object ADODsOrcamentoItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsOrcamentoItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsOrcamentoItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoItemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 13
      Size = 5
    end
    object ADODsOrcamentoItemPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentoItemPr_NaoContrib: TBCDField
      FieldName = 'Pr_NaoContrib'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentoItemFl_Produto: TStringField
      FieldName = 'Fl_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoItemTp_Tributacao: TStringField
      FieldName = 'Tp_Tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoItemQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoItemQt_Agregado: TBCDField
      FieldName = 'Qt_Agregado'
      Precision = 9
      Size = 3
    end
    object ADODsOrcamentoItemSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoItemNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      ReadOnly = True
      Size = 40
    end
    object ADODsOrcamentoItemPr_ECF: TBCDField
      FieldName = 'Pr_ECF'
      Precision = 7
      Size = 3
    end
    object ADODsOrcamentoItemCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsOrcamentoItemSt_Tributaria: TStringField
      FieldKind = fkCalculated
      FieldName = 'St_Tributaria'
      Size = 15
      Calculated = True
    end
    object ADODsOrcamentoItemCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsOrcamentoItemVl_TotalItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_TotalItem'
      Calculated = True
    end
  end
  object ADODsOcorrencia: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Ocorrencia, Ds_Ocorrencia'#13#10#13#10'from'#13#10'  Contato_Ocorrencia'#13#10#13#10'where'#13#10'  Fl_Ativo = ''''1'''#13#10#13#10'order by'#13#10'  Ds_Ocorrencia'
    Parameters = <>
    Left = 473
    Top = 119
    object ADODsOcorrenciaCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsOcorrenciaDs_Ocorrencia: TStringField
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
  end
  object ADODsFatura: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  max( Nr_Fatura ) as NewFatura'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Cd_Serie  = :Cd_Serie'
    )
    SQLOther2.Strings = (
      'select'
      '  A.Nr_Orcamento, B.Nm_Emitente'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial = :Cd_Filial and'
      '  A.Cd_Serie  = :Cd_Serie and'
      '  A.Nr_Fatura = :Nr_Fatura'
    )
    SQLOther3.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Serie Char( 3 ),'
      '  @Nr_Devolucao Int,'
      '  @Nr_Rural Int'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Cd_Serie  = :Cd_Serie'
      ''
      '--------------- Nota de produtor rural'
      'set @Nr_Rural ='
      '  ('
      '  select'
      '    Max( Nr_Fatura ) as NewFatura'
      ''
      '  from'
      '    Entrada'
      ''
      '  where'
      '    Cd_Filial        = @Cd_Filial and'
      '    Cd_Serie         = @Cd_Serie and'
      '    Fl_ProdutorRural = ''''1'''
      '  )'
      ''
      '--------------- Nota de Devolu'#231#227'o'
      'set @Nr_Devolucao ='
      '  ('
      '  select'
      '    max( E.Nr_Fatura ) as NewFatura'
      ''
      '  from'
      '    Entrada E'
      ''
      '  inner join'
      '    CFOP C'
      '  on'
      '    C.Cd_CFOP     = E.Cd_CFOP and'
      '    C.Tp_Operacao = ''''2''''              -- Devolu'#231#227'o'
      ''
      '  inner join'
      '    NFe N'
      '  on'
      '    N.Cd_Filial = E.Cd_Filial and'
      '    N.Fl_Origem = ''''3'''' and'
      '    N.Nr_Origem = E.Nr_Entrada'
      ''
      '  where'
      '    E.Cd_Filial   = @Cd_Filial and'
      '    E.Cd_Serie    = @Cd_Serie'
      '  )'
      ''
      'select'
      '  case when IsNull( @Nr_Devolucao, 1 ) > IsNull( @Nr_Rural, 1 ) then @Nr_Devolucao else @Nr_Rural end as NewFatura'
    )
    SQLOther4.Strings = (
      'select'
      '  C.Nr_Entrada'
      ''
      'from'
      '  Emitente B'
      ''
      'inner join'
      '  Entrada C'
      'on'
      '  C.Cd_Filial   = :Cd_Filial and'
      '  C.Cd_Emitente = B.Cd_Emitente and'
      '  C.Cd_Serie    = :Cd_Serie and'
      '  C.Nr_Fatura   = :Nr_Fatura'
      ''
      'where'
      '  B.Nr_Documento = :Nr_Documento'
    )
    SQLOther5.Strings = (
      '-- Numero do lan'#231'amento do caixa'
      'select'
      '  max( Nr_Lancamento ) as Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial '
    )
    SQLOther6.Strings = (
      'select'
      '  max( Nr_Fatura ) as NewFatura'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Serie   = :Cd_Serie'
    )
    SQLOther7.Strings = (
      ''
    )
    Left = 473
    Top = 58
  end
  object ADODsOrcFinanceiro: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Contas Recebidas'
      'select'
      '  sum( RP.Vl_Recebido ) as Vl_Recebido'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial     = R.Cd_Filial and'
      '  RP.Nr_Receber    = R.Nr_Receber'
      ''
      'where'
      '  R.Cd_Filial    = :Cd_Filial and'
      '  R.Nr_Orcamento = :Nr_Orcamento and'
      '  R.St_Receber  >= ''''2'''' and'
      '  R.St_Receber  <= ''''3'''
    )
    SQLOther1.Strings = (
      '-------------------- Caixa'
      'select'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido'
      ''
      'from'
      '  Caixa C'
      ''
      'where'
      '  C.Cd_Filial    = :Cd_Filial and'
      '  C.Nr_Orcamento = :Nr_Orcamento and'
      '  not exists('
      '    select'
      '      CE.Cd_Filial'
      ''
      '    from'
      '      Caixa CE'
      ''
      '    where'
      '      CE.Cd_Filial  = C.Cd_Filial and'
      '      CE.Nr_Estorno = C.Nr_Lancamento'
      '    )'
    )
    SQLOther2.Strings = (
      '-------------------- Cheque - Recebido'
      'select'
      '  sum( C.Vl_Cheque ) as Vl_Recebido'
      ''
      'from'
      '  Cheque C'
      ''
      'where'
      '  C.Cd_Filial    = :Cd_Filial and'
      '  C.Nr_Orcamento = :Nr_Orcamento and'
      '  C.Fl_Cheque   >= ''''3'''
    )
    SQLOther3.Strings = (
      '-------------------- Contas a Receber'
      'select'
      '  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Receber'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber and'
      '  RP.Vl_Parcela > RP.Vl_Recebido'
      ''
      'where'
      '  R.Cd_Filial    = :Cd_Filial and'
      '  R.Nr_Orcamento = :Nr_Orcamento and'
      '  R.St_Receber  <= ''''2'''
    )
    SQLOther4.Strings = (
      '-------------------- Cheque '#224' Receber'
      'select'
      '  sum( C.Vl_Cheque ) as Vl_Receber'
      ''
      'from'
      '  Cheque C'
      ''
      'where'
      '  C.Cd_Filial    = :Cd_Filial and'
      '  C.Nr_Orcamento = :Nr_Orcamento and'
      '  C.Fl_Cheque   <= ''''2'''
    )
    Left = 366
    Top = 60
  end
  object MyQryBoletoFind: TMyQuery
    Connection = MyConMaster
    SQL.Strings = (
      'select'
      '  Nr_Receber'
      ''
      'from'
      '  Boleto'
      ''
      'where'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    Options.FieldOrigins = foNone
    Left = 115
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nr_Receber'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Parcela'
      end>
  end
  object MyConMaster: TMyConnection
    Database = 'multforma01'
    ConnectionTimeout = 300
    Username = 'multforma01'
    Server = 'mysql.multforma.com.br'
    AfterConnect = MyConMasterAfterConnect
    BeforeConnect = MyConMasterBeforeConnect
    OnError = MyConMasterError
    LoginPrompt = False
    Left = 30
    Top = 368
    EncryptedPassword = '***REMOVIDO***'
  end
  object MyQryBoleto: TMyQuery
    SQLInsert.Strings = (
      'insert into Boleto( Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,'
      '    Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,'
      '    Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,'
      '    Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,'
      '    Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,'
      '    mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,'
      '    Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,'
      '    Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,'
      '    Ds_Numero, Dt_Publicacao, Mm_Boleto )'
      ''
      'values( :Nm_Portador, :Cd_Banco, :Nr_Receber, :Nr_Parcela, :Cd_Carteira,'
      '    :Dt_Vencimento, :Cd_Agencia, :Nr_Conta, :Nr_DoctoBanco, :Vl_Parcela,'
      '    :Nm_Emitente, :Nr_MF, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,'
      '    :Dp_Cidade, :DP_MF, :Dp_Endereco, :Dp_DoctoBanco, :Dp_Conta, :Nr_Documento,'
      '    :Ds_Barra, :Dt_Emissao, :Ds_Digitavel, :Tp_Cobranca, :Ds_Asbase, :Ds_Boleto,'
      '    :Nr_Fatura, :Dp_Fatura, :mm_instrucao, :ds_livre, :ds_carteira, :Dp_Sacado_1,'
      '    :Dp_Sacado_2, :Dp_Sacado_3, :Dp_Sacado_4, :pr_taxajuros, :pr_multa,'
      '    :Nr_Separador, :Fl_Entrega, :Nr_Insc_Estadual, :Nr_Pedido_Emitente,'
      '    :Nr_Orcamento, :Ds_LocalPagamento, :Ds_Numero, :Dt_Publicacao, :Mm_Boleto )'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Boleto'
      ''
      'where'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLUpdate.Strings = (
      'update'
      '  Boleto'
      ''
      'set'
      '  Nm_Portador        = :Nm_Portador,'
      '  Cd_Banco           = :Cd_Banco,'
      '  Cd_Carteira        = :Cd_Carteira,'
      '  Dt_Vencimento      = :Dt_Vencimento,'
      '  Cd_Agencia         = :Cd_Agencia,'
      '  Nr_Conta           = :Nr_Conta,'
      '  Nr_DoctoBanco      = :Nr_DoctoBanco,'
      '  Vl_Parcela         = :Vl_Parcela,'
      '  Nm_Emitente        = :Nm_Emitente,'
      '  Nr_MF              = :Nr_MF,'
      '  Ds_Endereco        = :Ds_Endereco,'
      '  Nm_Bairro          = :Nm_Bairro,'
      '  Ds_Complemento     = :Ds_Complemento,'
      '  Nr_CEP             = :Nr_CEP,'
      '  Dp_Cidade          = :Dp_Cidade,'
      '  DP_MF              = :DP_MF,'
      '  Dp_Endereco        = :Dp_Endereco,'
      '  Dp_DoctoBanco      = :Dp_DoctoBanco,'
      '  Dp_Conta           = :Dp_Conta,'
      '  Nr_Documento       = :Nr_Documento,'
      '  Ds_Barra           = :Ds_Barra,'
      '  Dt_Emissao         = :Dt_Emissao,'
      '  Ds_Digitavel       = :Ds_Digitavel,'
      '  Tp_Cobranca        = :Tp_Cobranca,'
      '  Ds_Asbase          = :Ds_Asbase,'
      '  Ds_Boleto          = :Ds_Boleto,'
      '  Nr_Fatura          = :Nr_Fatura,'
      '  Dp_Fatura          = :Dp_Fatura,'
      '  mm_instrucao       = :mm_instrucao,'
      '  ds_livre           = :ds_livre,'
      '  ds_carteira        = :ds_carteira,'
      '  Dp_Sacado_1        = :Dp_Sacado_1,'
      '  Dp_Sacado_2        = :Dp_Sacado_2,'
      '  Dp_Sacado_3        = :Dp_Sacado_3,'
      '  Dp_Sacado_4        = :Dp_Sacado_4,'
      '  pr_taxajuros       = :pr_taxajuros,'
      '  pr_multa           = :pr_multa,'
      '  Nr_Separador       = :Nr_Separador,'
      '  Fl_Entrega         = :Fl_Entrega,'
      '  Nr_Insc_Estadual   = :Nr_Insc_Estadual,'
      '  Nr_Pedido_Emitente = :Nr_Pedido_Emitente,'
      '  Nr_Orcamento       = :Nr_Orcamento,'
      '  Ds_LocalPagamento  = :Ds_LocalPagamento,'
      '  Ds_Numero          = :Ds_Numero,'
      '  Dt_Publicacao      = :Dt_Publicacao,'
      '  Mm_Boleto          = :Mm_Boleto'
      ''
      'where'
      '  Nr_Receber         = :Nr_Receber and'
      '  Nr_Parcela         = :Nr_Parcela'
    )
    Connection = MyConMaster
    SQL.Strings = (
      'insert into Boleto( Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,'
      '    Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,'
      '    Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,'
      '    Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,'
      '    Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,'
      '    mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,'
      '    Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,'
      '    Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,'
      '    Ds_Numero, Dt_Alteracao )'
      ''
      'values( :Nm_Portador, :Cd_Banco, :Nr_Receber, :Nr_Parcela, :Cd_Carteira,'
      '    :Dt_Vencimento, :Cd_Agencia, :Nr_Conta, :Nr_DoctoBanco, :Vl_Parcela,'
      '    :Nm_Emitente, :Nr_MF, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,'
      '    :Dp_Cidade, :DP_MF, :Dp_Endereco, :Dp_DoctoBanco, :Dp_Conta, :Nr_Documento,'
      '    :Ds_Barra, :Dt_Emissao, :Ds_Digitavel, :Tp_Cobranca, :Ds_Asbase, :Ds_Boleto,'
      '    :Nr_Fatura, :Dp_Fatura, :mm_instrucao, :ds_livre, :ds_carteira, :Dp_Sacado_1,'
      '    :Dp_Sacado_2, :Dp_Sacado_3, :Dp_Sacado_4, :pr_taxajuros, :pr_multa,'
      '    :Nr_Separador, :Fl_Entrega, :Nr_Insc_Estadual, :Nr_Pedido_Emitente,'
      '    :Nr_Orcamento, :Ds_LocalPagamento, :Ds_Numero, :Dt_Alteracao )'
    )
    Options.FieldOrigins = foNone
    Left = 209
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nm_Portador'
      end
      item
        DataType = ftUnknown
        Name = 'Cd_Banco'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Receber'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Parcela'
      end
      item
        DataType = ftUnknown
        Name = 'Cd_Carteira'
      end
      item
        DataType = ftUnknown
        Name = 'Dt_Vencimento'
      end
      item
        DataType = ftUnknown
        Name = 'Cd_Agencia'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Conta'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_DoctoBanco'
      end
      item
        DataType = ftUnknown
        Name = 'Vl_Parcela'
      end
      item
        DataType = ftUnknown
        Name = 'Nm_Emitente'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_MF'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Endereco'
      end
      item
        DataType = ftUnknown
        Name = 'Nm_Bairro'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Complemento'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_CEP'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Cidade'
      end
      item
        DataType = ftUnknown
        Name = 'DP_MF'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Endereco'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_DoctoBanco'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Conta'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Documento'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Barra'
      end
      item
        DataType = ftUnknown
        Name = 'Dt_Emissao'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Digitavel'
      end
      item
        DataType = ftUnknown
        Name = 'Tp_Cobranca'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Asbase'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Boleto'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Fatura'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Fatura'
      end
      item
        DataType = ftUnknown
        Name = 'mm_instrucao'
      end
      item
        DataType = ftUnknown
        Name = 'ds_livre'
      end
      item
        DataType = ftUnknown
        Name = 'ds_carteira'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Sacado_1'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Sacado_2'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Sacado_3'
      end
      item
        DataType = ftUnknown
        Name = 'Dp_Sacado_4'
      end
      item
        DataType = ftUnknown
        Name = 'pr_taxajuros'
      end
      item
        DataType = ftUnknown
        Name = 'pr_multa'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Separador'
      end
      item
        DataType = ftUnknown
        Name = 'Fl_Entrega'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Insc_Estadual'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Pedido_Emitente'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_Orcamento'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_LocalPagamento'
      end
      item
        DataType = ftUnknown
        Name = 'Ds_Numero'
      end
      item
        DataType = ftUnknown
        Name = 'Dt_Alteracao'
      end>
  end
  object ADODsNFe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Verifica se ja existe a NFe para ser processada'#13#10'select'#13#10'  Dt_NFe, St_NFe'#13#10#13#10'from'#13#10'  NFe'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Fl_Origem = :Fl_Origem and'#13#10'  Nr_Origem = :Nr_Origem'#13#10#13#10'order by'#13#10'  Dt_NFe desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Fl_Origem'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Nr_Origem'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 416
    Top = 264
    object ADODsNFeDt_NFe: TDateTimeField
      FieldName = 'Dt_NFe'
    end
    object ADODsNFeSt_NFe: TStringField
      FieldName = 'St_NFe'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsAuxII: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Gera Saldo anterior do produto'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Cd_Produto Int'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Dt_Start   = :Dt_Start,'
      '  @Cd_Produto = :Cd_Produto'
      ''
      '  -- Inclui os itens'
      '  if Object_ID( ''''TempDB..#EstoqueRecalc'''' ) is not null'
      '    drop table #EstoqueRecalc'
      ''
      '  -- Saidas'
      '  select'
      '    SI.Cd_Produto, '
      '    sum( SI.Qt_Estoque ) as Qt_Saida,'
      '    Qt_Entrada   = 0.0,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  into'
      '    #EstoqueRecalc'
      ''
      '  from'
      '    Saida S'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = S.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Saida_Item SI'
      '  on'
      '    SI.Cd_Filial   = S.Cd_Filial and'
      '    SI.Nr_Saida    = S.Nr_Saida and'
      '    SI.Cd_Produto  = @Cd_Produto'
      ''
      '  where'
      '    S.Cd_Filial     = @Cd_Filial and'
      '    S.St_Saida      = ''''2'''' and'
      '    S.Dt_Lancamento < @Dt_Start '
      ''
      '  group by'
      '    SI.Cd_Produto'
      ''
      '  -- Entradas'
      '  union all'
      '  select'
      '    EI.Cd_Produto,'
      '    Qt_Saida     = 0.0,'
      '    sum( EI.Qt_Estoque ) as Qt_Entrada,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Entrada E'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = E.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Entrada_Item EI'
      '  on'
      '    EI.Cd_Filial   = E.Cd_Filial and'
      '    EI.Nr_Entrada  = E.Nr_Entrada and'
      '    EI.Cd_Produto  = @Cd_Produto'
      ''
      '  where'
      '    E.Cd_Filial     = @Cd_Filial and'
      '    E.St_Entrada    = ''''2'''' and'
      '    E.Dt_Lancamento < @Dt_Start'
      ''
      '  group by'
      '    EI.Cd_Produto'
      ''
      '  -- Or'#231'amento - Saida'
      '  union all'
      '  -- Produto/Servi'#231'os'
      '  select'
      '    OI.Cd_Produto,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OI.Qt_Estoque ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = O.Cd_Filial and'
      '    OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '    OI.Fl_Confirmado = ''''1'''' and'
      '    OI.Cd_Produto    = @Cd_Produto'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura    < @Dt_Start'
      ''
      '  group by'
      '    OI.Cd_Produto'
      ''
      '  -- Conjunto'
      '  union all'
      '  select'
      '    OC.Cd_Produto,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OC.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Conjunto OC'
      '  on'
      '    OC.Cd_Filial     = O.Cd_Filial and'
      '    OC.Nr_Orcamento  = O.Nr_Orcamento and'
      '    OC.Cd_Produto    = @Cd_Produto'
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = OC.Cd_Filial and'
      '    OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '    OI.Nr_Item       = OC.Nr_Item and'
      '    OI.Fl_Confirmado = ''''1'''
      ''
      '  left join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OC.Cd_Produto and'
      '    PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura    < @Dt_Start'
      ''
      '  group by'
      '    OC.Cd_Produto'
      ''
      '  /* Projetos */'
      ''
      '  -- Cria a segunda table com os dados somados'
      '  if Object_ID( ''''TempDB..#EstoqueRecalcII'''' ) is not null'
      '    drop table #EstoqueRecalcII'
      ''
      '  select'
      '    Cd_Produto, '
      '    Sum( Qt_Entrada ) as Qt_Entrada,'
      '    Sum( Qt_Saida ) as Qt_Saida,'
      '    Sum( Qt_Orcamento ) as Qt_Orcamento,'
      '    Sum( Qt_Reserva ) as Qt_Reserva,'
      '    Sum( Qt_Balcao ) as Qt_Balcao'
      ''
      '  into'
      '    #EstoqueRecalcII'
      ''
      '  from'
      '    #EstoqueRecalc'
      ''
      '  group by'
      '    Cd_Produto'
      ''
      '--------------- Cria o result set'
      'select'
      '  Qt_Entrada - ( Qt_Saida + Qt_Orcamento ) as Qt_SaldoAnterior'
      ''
      'from'
      '  #EstoqueRecalcII'
      ''
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Inclus'#227'o dos Projetos - SG'
      '  union all'
      '  -- Produto/Servi'#231'os'
      '  select'
      '    OPI.Cd_Produto, '
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Projeto OP'
      '  on'
      '    OP.Cd_Filial     = O.Cd_Filial and'
      '    OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      '  inner join'
      '    Orcamento_Projeto_Item OPI'
      '  on'
      '    OPI.Cd_Filial    = OP.Cd_Filial and'
      '    OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '    OPI.Nr_Projeto   = OP.Nr_Projeto and'
      '    OPI.Cd_Produto   = @Cd_Produto'
      ''
      '  inner join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OPI.Cd_Produto and'
      '    PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura    < @Dt_Start'
      ''
      '  group by'
      '    OPI.Cd_Produto'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Situa'#231#227'o do or'#231'amento'
      'select'
      '  St_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    Left = 264
    Top = 184
  end
  object ADODsCliente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro,'#13#10'  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,'#13#10'  E.Fl_Contribuinte, E.Fl_Exportador, E.Ds_EMail, E.Ds_Site,'#13#10'  E.Dt_Nascimento, E.Nr_Identidade, E.Nm_Orgao_emissor, E.Dt_Emissao_ID, '#13#10'  E.Fl_Estado_Civil,  E.Sg_Estado_Emissor, E.Nr_Insc_Municipal,'#13#10#13#10'  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento,'#13#10'  EE.Cd_Cidade, C.Sg_Estado, EE.Nr_Cep, EE.Nr_Telefone_1, EE.Nr_Telefone_2,'#13#10'  EE.Nr_Celular_1, EE.Ds_Numero, '#13#10#13#10'  C.Nm_Cidade, C.Cd_IBGE, UF.Cd_IBGE as Cd_IBGE_UF'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'inner join'#13#10'  Estado UF'#13#10'on'#13#10'  UF.Sg_Estado = C.Sg_Estado'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 115
    Top = 488
    object ADODsClienteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsClienteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsClienteNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsClienteDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
    end
    object ADODsClienteTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsClienteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsClienteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsClienteVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      Precision = 12
      Size = 2
    end
    object ADODsClienteFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsClienteFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsClienteDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsClienteDs_Site: TStringField
      FieldName = 'Ds_Site'
      Size = 50
    end
    object ADODsClienteDt_Nascimento: TDateTimeField
      FieldName = 'Dt_Nascimento'
    end
    object ADODsClienteNr_Identidade: TStringField
      FieldName = 'Nr_Identidade'
    end
    object ADODsClienteNm_Orgao_emissor: TStringField
      FieldName = 'Nm_Orgao_emissor'
      Size = 10
    end
    object ADODsClienteDt_Emissao_ID: TDateTimeField
      FieldName = 'Dt_Emissao_ID'
    end
    object ADODsClienteFl_Estado_Civil: TStringField
      FieldName = 'Fl_Estado_Civil'
      FixedChar = True
      Size = 1
    end
    object ADODsClienteSg_Estado_Emissor: TStringField
      FieldName = 'Sg_Estado_Emissor'
      FixedChar = True
      Size = 2
    end
    object ADODsClienteNr_Insc_Municipal: TStringField
      FieldName = 'Nr_Insc_Municipal'
    end
    object ADODsClienteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsClienteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsClienteDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsClienteCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsClienteSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsClienteNr_Cep: TStringField
      FieldName = 'Nr_Cep'
      FixedChar = True
      Size = 8
    end
    object ADODsClienteNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsClienteNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsClienteNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsClienteDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsClienteCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsClienteNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsClienteCd_IBGE_UF: TStringField
      FieldName = 'Cd_IBGE_UF'
      Size = 2
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Classe, C.Im_Classe,'#13#10'  P.Cd_ClasFiscal, P.Sg_Estoque, P.Sg_Venda, UV.Ds_Unidade as Ds_UnidVenda, '#13#10'  P.Fl_Estrutura, P.Nm_Abreviado, P.Fl_Ativo, P.Qt_Est_Minimo, P.Fl_Perecivel, '#13#10'  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, '#13#10'  P.Im_Produto, P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse, '#13#10'  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto, '#13#10'  P.Pr_Lucro, P.Cd_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,'#13#10'  PP.Vl_Reposicao, P.Vl_MVA, '#13#10#13#10'  UV.Id_Unidade,'#13#10#13#10'  SG.Cd_NaturezaReceita,'#13#10#13#10'  T.Pr_PIS, T.Pr_Cofins, T.Pr_ECF, T.Cd_CST_NC, T.Tp_Tributacao'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 588
    Top = 488
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsProdutoCd_Classe: TSmallintField
      FieldName = 'Cd_Classe'
    end
    object ADODsProdutoIm_Classe: TBlobField
      FieldName = 'Im_Classe'
    end
    object ADODsProdutoCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoDs_UnidVenda: TStringField
      FieldName = 'Ds_UnidVenda'
      Size = 30
    end
    object ADODsProdutoFl_Estrutura: TStringField
      FieldName = 'Fl_Estrutura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsProdutoFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoQt_Est_Minimo: TBCDField
      FieldName = 'Qt_Est_Minimo'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoFl_Perecivel: TStringField
      FieldName = 'Fl_Perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoQt_Est_Maximo: TBCDField
      FieldName = 'Qt_Est_Maximo'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
    end
    object ADODsProdutoDt_Alteracao: TDateTimeField
      FieldName = 'Dt_Alteracao'
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoIm_Produto: TBlobField
      FieldName = 'Im_Produto'
    end
    object ADODsProdutoCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsProdutoCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsProdutoTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_ImgClasse: TStringField
      FieldName = 'Fl_ImgClasse'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoNr_Reg_Federal: TStringField
      FieldName = 'Nr_Reg_Federal'
      Size = 30
    end
    object ADODsProdutoFl_Psicotropico: TStringField
      FieldName = 'Fl_Psicotropico'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Produto: TStringField
      FieldName = 'Fl_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoPr_Lucro: TBCDField
      FieldName = 'Pr_Lucro'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsProdutoVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoVl_Promocao: TBCDField
      FieldName = 'Vl_Promocao'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoVl_Reposicao: TBCDField
      FieldName = 'Vl_Reposicao'
      Precision = 13
      Size = 3
    end
    object ADODsProdutoVl_MVA: TBCDField
      FieldName = 'Vl_MVA'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoId_Unidade: TSmallintField
      FieldName = 'Id_Unidade'
    end
    object ADODsProdutoCd_NaturezaReceita: TStringField
      FieldName = 'Cd_NaturezaReceita'
      Size = 3
    end
    object ADODsProdutoPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 9
      Size = 3
    end
    object ADODsProdutoPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 9
      Size = 3
    end
    object ADODsProdutoPr_ECF: TBCDField
      FieldName = 'Pr_ECF'
      Precision = 7
      Size = 3
    end
    object ADODsProdutoCd_CST_NC: TStringField
      FieldName = 'Cd_CST_NC'
      Size = 5
    end
    object ADODsProdutoTp_Tributacao: TStringField
      FieldName = 'Tp_Tributacao'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsIBPTax: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Pr_Nacional, Pr_Importado, Pr_Estadual, Pr_Municipal'#13#10#13#10'from'#13#10'  IBPTax'#13#10#13#10'where'#13#10'  Cd_NCM = :Cd_NCM and'#13#10'  Cd_Ex    = '''''
    Parameters = <
      item
        Name = 'Cd_NCM'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = nil?
      end>
    Left = 672
    Top = 488
    object ADODsIBPTaxPr_Nacional: TBCDField
      FieldName = 'Pr_Nacional'
      Precision = 7
      Size = 3
    end
    object ADODsIBPTaxPr_Importado: TBCDField
      FieldName = 'Pr_Importado'
      Precision = 7
      Size = 3
    end
    object ADODsIBPTaxPr_Estadual: TBCDField
      FieldName = 'Pr_Estadual'
      Precision = 7
      Size = 3
    end
    object ADODsIBPTaxPr_Municipal: TBCDField
      FieldName = 'Pr_Municipal'
      Precision = 7
      Size = 3
    end
  end
  object ADOCmdProdutoPAF: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Insert do Banco T2TIPAFECF'
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      'insert into Produto( ID, ID_UNIDADE_PRODUTO, GTIN, CODIGO_INTERNO,'
      '  NOME, DESCRICAO, DESCRICAO_PDV, VALOR_VENDA, QTD_ESTOQUE, QTD_ESTOQUE_ANTERIOR,'
      '  ESTOQUE_MIN, ESTOQUE_MAX, IAT, IPPT, NCM, TIPO_ITEM_SPED,'
      '  DATA_ESTOQUE, TAXA_IPI, TAXA_ISSQN, TAXA_PIS, TAXA_COFINS, TAXA_ICMS,'
      '  CST, CSOSN, TOTALIZADOR_PARCIAL, ECF_ICMS_ST, CODIGO_BALANCA, PAF_P_ST, '
      '  IMPOSTO, IMPOSTO_ESTADUAL )'
      ''
      'values( :ID, :ID_UNIDADE_PRODUTO, :GTIN, :CODIGO_INTERNO,'
      '  :NOME, :DESCRICAO, :DESCRICAO_PDV, :VALOR_VENDA, :QTD_ESTOQUE, :QTD_ESTOQUE_ANTERIOR,'
      '  :ESTOQUE_MIN, :ESTOQUE_MAX, :IAT, :IPPT, :NCM, :TIPO_ITEM_SPED,'
      '  :DATA_ESTOQUE, :TAXA_IPI, :TAXA_ISSQN, :TAXA_PIS, :TAXA_COFINS, :TAXA_ICMS,'
      '  :CST, :CSOSN, :TOTALIZADOR_PARCIAL, :ECF_ICMS_ST, :CODIGO_BALANCA, :PAF_P_ST, '
      '  :IMPOSTO, :IMPOSTO_ESTADUAL );'
      ''
      'SET FOREIGN_KEY_CHECKS=1;'
    )
    SQLOther1.Strings = (
      '--------------- Insert do banco MINI'
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      'insert into Produto( ID, ID_UNIDADE_PRODUTO, GTIN, CODIGO_INTERNO,'
      '  NOME, DESCRICAO, DESCRICAO_PDV, VALOR_VENDA, QTD_ESTOQUE, QTD_ESTOQUE_ANTERIOR,'
      '  ESTOQUE_MIN, ESTOQUE_MAX, IAT, IPPT, NCM, TIPO_ITEM_SPED,'
      '  DATA_ESTOQUE, TAXA_IPI, TAXA_ISSQN, TAXA_PIS, TAXA_COFINS, TAXA_ICMS,'
      '  CST, CSOSN, TOTALIZADOR_PARCIAL, ECF_ICMS_ST, CODIGO_BALANCA, PAF_P_ST )'
      ''
      'values( :ID, :ID_UNIDADE_PRODUTO, :GTIN, :CODIGO_INTERNO,'
      '  :NOME, :DESCRICAO, :DESCRICAO_PDV, :VALOR_VENDA, :QTD_ESTOQUE, :QTD_ESTOQUE_ANTERIOR,'
      '  :ESTOQUE_MIN, :ESTOQUE_MAX, :IAT, :IPPT, :NCM, :TIPO_ITEM_SPED,'
      '  :DATA_ESTOQUE, :TAXA_IPI, :TAXA_ISSQN, :TAXA_PIS, :TAXA_COFINS, :TAXA_ICMS,'
      '  :CST, :CSOSN, :TOTALIZADOR_PARCIAL, :ECF_ICMS_ST, :CODIGO_BALANCA, :PAF_P_ST );'
      ''
      'SET FOREIGN_KEY_CHECKS=1;'
    )
    Left = 568
    Top = 416
  end
  object ADODsConexao: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare'#13#10'  @Nr_Versao VarChar( 100 ),'#13#10'  @Nm_DataBase VarChar( 100 )'#13#10#13#10'select'#13#10'  @Nr_Versao = Convert( VarChar( 100 ), SERVERPROPERTY(''''productversion'''') ),'#13#10'  @Nm_DataBase = :Nm_DataBase'#13#10#13#10'select'#13#10'  db_name(dbid) as Nm_Banco,'#13#10'  login_time as Hr_Login,'#13#10'  Open_tran as Nr_TransacoesAbertas,'#13#10'  nt_username as Nt_Usuario,'#13#10'  Hostname as Nm_EstacaoTrabalho,'#13#10'  program_name as Nm_Aplicacao,'#13#10'  Status,'#13#10'  cmd as Ds_Comando,'#13#10'  Loginame, spid, Convert( VarChar( 20 ), Net_Address ) as Net_Address,'#13#10'  @Nr_Versao as Nr_Versao'#13#10#13#10'from '#13#10'  master..sysProcesses '#13#10#13#10'where'#13#10'  Program_Name like ''''%Multforma%'''' and'#13#10'  db_name(dbid) = @Nm_DataBase'#13#10#13#10'order by'#13#10'  db_name(dbid), Hostname, Login_Time desc'
    Parameters = <
      item
        Name = 'Nm_DataBase'
        DataType = ftString
        Size = 11
        Value = 'SGCOMERCIAL'
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Nr_Versao VarChar( 100 ),'
      '  @Nm_DataBase VarChar( 100 )'
      ''
      'select'
      '  @Nr_Versao = Convert( VarChar( 100 ), SERVERPROPERTY(''''productversion'''') ),'
      '  @Nm_DataBase = :Nm_DataBase'
      ''
      'select'
      '  db_name(dbid) as Nm_Banco,'
      '  login_time as Hr_Login,'
      '  Open_tran as Nr_TransacoesAbertas,'
      '  nt_username as Nt_Usuario,'
      '  Hostname as Nm_EstacaoTrabalho,'
      '  program_name as Nm_Aplicacao,'
      '  Status,'
      '  cmd as Ds_Comando,'
      '  Loginame, spid, Convert( VarChar( 20 ), Net_Address ) as Net_Address,'
      '  @Nr_Versao as Nr_Versao'
      ''
      'from '
      '  master..sysProcesses '
      ''
      'where'
      '  Program_Name = :Program_Name and'
      '  db_name(dbid) = @Nm_DataBase'
      ''
      'order by'
      '  db_name(dbid), Hostname, Login_Time desc'
    )
    Left = 856
    Top = 24
    object ADODsConexaoNm_Banco: TWideStringField
      FieldName = 'Nm_Banco'
      ReadOnly = True
      Size = 128
    end
    object ADODsConexaoHr_Login: TDateTimeField
      DisplayLabel = 'Hora de Login'
      FieldName = 'Hr_Login'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsConexaoNr_TransacoesAbertas: TSmallintField
      FieldName = 'Nr_TransacoesAbertas'
      ReadOnly = True
    end
    object ADODsConexaoNt_Usuario: TWideStringField
      FieldName = 'Nt_Usuario'
      ReadOnly = True
      FixedChar = True
      Size = 128
    end
    object ADODsConexaoNm_EstacaoTrabalho: TWideStringField
      DisplayLabel = 'Esta'#231#227'o / Usu'#225'rio'
      FieldName = 'Nm_EstacaoTrabalho'
      ReadOnly = True
      FixedChar = True
      Size = 128
    end
    object ADODsConexaoNm_Aplicacao: TWideStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'Nm_Aplicacao'
      ReadOnly = True
      FixedChar = True
      Size = 128
    end
    object ADODsConexaoStatus: TWideStringField
      FieldName = 'Status'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object ADODsConexaoDs_Comando: TWideStringField
      FieldName = 'Ds_Comando'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object ADODsConexaoLoginame: TWideStringField
      FieldName = 'Loginame'
      ReadOnly = True
      FixedChar = True
      Size = 128
    end
    object ADODsConexaospid: TSmallintField
      DisplayLabel = 'SP ID'
      FieldName = 'spid'
      ReadOnly = True
    end
    object ADODsConexaoNet_Address: TStringField
      FieldName = 'Net_Address'
      ReadOnly = True
    end
    object ADODsConexaoNr_Versao: TStringField
      FieldName = 'Nr_Versao'
      ReadOnly = True
      Size = 100
    end
  end
  object DsConexao: TDataSource
    DataSet = ADODsConexao
    Left = 784
    Top = 24
  end
  object ADOCmdConexao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      '--------------- Registra o login do usuario'
      'declare'
      '  @NetAddress VarChar( 12 )'
      ''
      'select'
      '  @NetAddress = Net_Address'
      ''
      'from'
      '  master..SysProcesses'
      ''
      'where'
      '  SPID = @@SPID'
      ''
      'insert into LogHistory( Hr_Login, Nm_Host, Nr_NetAddress, Nm_UserHost,'
      '  Nm_UserApp, Nr_SPID )'
      ''
      'values( GetDate(), :Nm_Host, @NetAddress, :Nm_UserHost, :Nm_UserApp, @@SPID )'
      ''
    )
    SQLOther0.Strings = (
      '--------------- Eliminar conex'#227'o'
      'kill 61'
    )
    SQLOther1.Strings = (
      '--------------- Grava o n'#250'mero de m'#225'quinas que ultrapassou o limite de uso'
      'update'
      '  Validacao'
      ''
      'set'
      '  Nr_Conexoes    = :Nr_Conexoes,'
      '  Dt_UltimoEnvio = GetDate()'
    )
    Left = 688
    Top = 24
  end
  object ADODsValidacao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Id_Cliente, Dt_Validacao, Nr_Computadores, Ds_Valid,'#13#10'  Nr_Conexoes, Dt_UltimoEnvio'#13#10#13#10'from'#13#10'  Validacao'
    Parameters = <>
    Left = 858
    Top = 80
    object ADODsValidacaoId_Cliente: TStringField
      FieldName = 'Id_Cliente'
    end
    object ADODsValidacaoDt_Validacao: TDateTimeField
      FieldName = 'Dt_Validacao'
    end
    object ADODsValidacaoNr_Computadores: TStringField
      FieldName = 'Nr_Computadores'
      Size = 10
    end
    object ADODsValidacaoDs_Valid: TStringField
      FieldName = 'Ds_Valid'
    end
    object ADODsValidacaoNr_Conexoes: TSmallintField
      FieldName = 'Nr_Conexoes'
    end
    object ADODsValidacaoDt_UltimoEnvio: TDateTimeField
      FieldName = 'Dt_UltimoEnvio'
    end
  end
  object ACBrMailValidacao: TACBrMail
    Host = 'smtp.multforma.com.br'
    Port = '587'
    Username = 'licenca@multforma.com.br'
    Password = '***REMOVIDO***'
    SetSSL = False
    SetTLS = False
    IsHTML = True
    Attempts = 3
    From = 'licenca@multforma.com.br'
    Subject = 'NOVOExcedido N'#186' de licen'#231'as'
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 952
    Top = 24
  end
  object ADODsConectadoMes: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  Nm_Host'#13#10#13#10'from'#13#10'  LogHistory'#13#10#13#10'where'#13#10'  Hr_Login > DateAdd( Month, -1, GetDate() )'#13#10#13#10'order by'#13#10'  Nm_Host'
    Parameters = <>
    Left = 762
    Top = 80
    object ADODsConectadoMesNm_Host: TStringField
      DisplayLabel = 'Nome do Host'
      FieldName = 'Nm_Host'
      Size = 255
    end
  end
  object ADODsNotaOrigem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'--------------- Or'#231'amento - Faturados'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'--------------- Or'#231'amento - Cancelados'#13#10'union'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''2'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'-------------------- Notas de Sa'#237'das - Saida'#13#10'union'#13#10'select'#13#10'  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  S.Cd_Filial   = @Cd_Filial and'#13#10'  S.Fl_Estoque  = ''''1'''' and'#13#10'  S.Dt_Emissao >= @Dt_Start and'#13#10'  S.Dt_Emissao  < @Dt_End and'#13#10'  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'#13#10#13#10'-------------------- Notas de Entradas - Entrada'#13#10'union'#13#10#13#10'select'#13#10'  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.Fl_Estoque     = ''''1'''' and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End and'#13#10'  E.St_Entrada    >= ''''2''''             ----- Somente Cancelado/Fechado'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-------------------- Dados do processamento'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
    )
    SQLOther1.Strings = (
      '--------------- Or'#231'amento - Faturados'
      'select'
      '  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Fl_Estoque   = ''''1'''' and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End and'
      '  O.Nr_Fatura    > 0'
      ''
      '--------------- Or'#231'amento - Cancelados'
      'union'
      'select'
      '  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Fl_Estoque   = ''''1'''' and'
      '  O.St_Orcamento = ''''2'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End and'
      '  O.Nr_Fatura    > 0'
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Notas de Sa'#237'das - Saida'
      'select'
      '  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = S.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  S.Cd_Filial   = @Cd_Filial and'
      '  S.Fl_Estoque  = ''''1'''' and'
      '  S.Dt_Emissao >= @Dt_Start and'
      '  S.Dt_Emissao  < @Dt_End and'
      '  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Notas de Entradas - Entrada'
      'select'
      '  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'
      ''
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = E.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  E.Cd_Filial      = @Cd_Filial and'
      '  E.Fl_Estoque     = ''''1'''' and'
      '  E.Dt_Lancamento >= @Dt_Start and'
      '  E.Dt_Lancamento  < @Dt_End and'
      '  E.St_Entrada    >= ''''2''''             ----- Somente Cancelado/Fechado'
    )
    Left = 856
    Top = 424
    object ADODsNotaOrigemFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsNotaOrigemNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
      ReadOnly = True
    end
    object ADODsNotaOrigemSt_Origem: TStringField
      FieldName = 'St_Origem'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdAux: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Atualiza o numero da ECF na venda balc'#227'o'
      'update'
      '  Balcao'
      ''
      'set'
      '  Nr_ECF = :Nr_ECF'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Balcao = :Nr_Balcao'
    )
    SQLOther1.Strings = (
      '-- Log de Fun'#231#245'es'
      'insert into LogSistema( Cd_Filial, Ds_Origem, Id_Log, Cd_Usuario,'
      '  Mm_Historico, Dt_Ocorrencia )'
      'values( :Cd_Filial, :Ds_Origem, :Id_Log, :Cd_Usuario, :Mm_Historico, GetDate() )'
    )
    SQLOther2.Strings = (
      '----- Determina o modelo de data do sistema'
      'set dateformat mdy'
    )
    SQLOther3.Strings = (
      '-------------------- Mudar a senha do banco de dados'
      'USE msdb'
      'EXEC sp_password :OldSenha, :NewSenha, ''''Multforma'''
      ''
    )
    SQLOther4.Strings = (
      '-------------------- Recalcula o saldo da Conta'
      'declare'
      '  @Id_Conta SmallInt,'
      '  @Vl_Saldo Numeric( 12, 3 ),'
      '  @Vl_Bloqueado Numeric( 12, 3 )'
      ''
      'set @Id_Conta = :Id_Conta'
      ''
      '-------------------- Pega os saldos'
      'select'
      '  @Vl_Saldo = sum('
      '    case'
      '      when Tp_Lancamento <= ''''3'''' then Vl_Lancamento'
      '      else -1 * Vl_Lancamento'
      '    end ),'
      ''
      '  @Vl_Bloqueado = sum('
      '    case'
      '      when Fl_Bloqueado = ''''1'''' then Vl_Lancamento'
      '      else 0'
      '    end )'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = @Id_Conta and'
      '  Fl_Compensado = ''''1'''
      ''
      '-------------------- Atualiza os Saldos'
      'update'
      '  CCorrente'
      ''
      'set'
      '  Vl_Saldo     = Coalesce( @Vl_Saldo, 0.0 ),'
      '  Vl_Bloqueado = Coalesce( @Vl_Bloqueado, 0.0 )'
      ''
      'where'
      '  Id_Conta = @Id_Conta'
      ''
    )
    SQLOther5.Strings = (
      '--------------- Inclui a NFe'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Fl_Origem Char( 1 ),'
      '  @Nr_Origem Int,'
      '  @Id_Origem SmallInt'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Fl_Origem = :Fl_Origem,'
      '  @Nr_Origem = :Nr_Origem'
      ''
      'set @Id_Origem = Coalesce('
      '  ('
      '  select'
      '    max( Id_Origem ) + 1'
      ''
      '  from'
      '    NFe'
      ''
      '  where'
      '    Cd_Filial = @Cd_Filial and'
      '    Fl_Origem = @Fl_Origem and'
      '    Nr_Origem = @Nr_Origem'
      '  ), 1 )'
      ''
      'insert into NFe( Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem, St_NFe, Dt_NFe, Fl_Gerar )'
      'values( @Cd_Filial, @Fl_Origem, @Nr_Origem, @Id_Origem, ''''1'''', :Dt_NFe, ''''1'''' )'
    )
    SQLOther6.Strings = (
      ''
    )
    SQLOther8.Strings = (
      '--------------- Incluir NFC-e'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Fl_Origem Char( 1 ),'
      '  @Nr_Origem Int'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Fl_Origem = :Fl_Origem,'
      '  @Nr_Origem = :Nr_Origem'
      ''
      'if not Exists('
      '   select'
      '     Cd_Filial'
      ''
      '   from'
      '     DFe_Importar'
      ''
      '   where'
      '     Cd_Filial = @Cd_Filial and'
      '     Fl_Origem = @Fl_Origem and'
      '     Nr_Origem = @Nr_Origem'
      '   )'
      ''
      '  insert into DFe_Importar( Cd_Filial, Fl_Origem, Nr_Origem, St_Importar )'
      '  values( @Cd_Filial, @Fl_Origem, @Nr_Origem, ''''1'''' )'
    )
    Left = 46
    Top = 186
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A./* cField */ + 1 as /* cField */'
      ''
      'from'
      '  /* cTable */ A'
      ''
      'where'
      '  /* cWhereA */'
      '  '
      '  not exists( '
      '  select'
      '    B./* cField */'
      ''
      '  from'
      '    /* cTable */ B'
      ''
      '  where'
      '    /* cWhereB */'
      '    B./* cField */ = A./* cField */ + 1'
      '  )'
      ''
      'order by'
      '  A./* cField */'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  /* cField */'
      ''
      'from'
      '  /* cTable */'
      ''
      'order by'
      '  /* cField */'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  /* cField */'
      ''
      'from'
      '  /* cTable */'
      ''
      'where'
      '  /* cField */ < :/* cField */'
      ''
      'order by'
      '  /* cField */ desc'
      ''
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  /* cField */'
      ''
      'from'
      '  /* cTable */'
      ''
      'where'
      '  /* cField */ > :/* cField */'
      ''
      'order by'
      '  /* cField */'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  /* cField */'
      ''
      'from'
      '  /* cTable */'
      ''
      'order by'
      '  /* cField */ desc'
    )
    Left = 535
    Top = 261
  end
  object DsConecadoMes: TDataSource
    DataSet = ADODsConectadoMes
    Left = 672
    Top = 88
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    WebService = wsCepAberto
    ChaveAcesso = '8b68f30b08b3916112aa4a8c1fd3149c'
    PesquisarIBGE = False
    Left = 744
    Top = 272
  end
end
