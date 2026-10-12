object FrmEmitente_Licenca_File: TFrmEmitente_Licenca_File
  Left = 265
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gerar arquivo de Licen'#231'a'
  ClientHeight = 562
  ClientWidth = 1009
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 562
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 988
    Height = 562
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 532
      Width = 982
      Height = 6
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 40
      Width = 40
      Height = 13
      Caption = 'Clientes:'
    end
    object SbOpen: TSpeedButton
      Left = 877
      Top = 21
      Width = 88
      Height = 22
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object SbArquivo: TSpeedButton
      Left = 231
      Top = 19
      Width = 23
      Height = 19
      Hint = 'Seleciona Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoClick
    end
    object Label1: TLabel
      Left = 701
      Top = 2
      Width = 251
      Height = 13
      Caption = 'Todos os vencimentos est'#227'o sendo gerados na ter'#231'a'
    end
    object BitBtnConfirm: TBitBtn
      Left = 817
      Top = 535
      Width = 85
      Height = 25
      Caption = '&Gerar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 903
      Top = 535
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGEmitente: TDBGrid
      Left = 5
      Top = 54
      Width = 978
      Height = 475
      DataSource = DsEmitente
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGEmitenteDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_emitente'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_documento'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Pagamento'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencido'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Validade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Chave'
          Title.Alignment = taCenter
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Credito'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Credito'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Computador'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_ChaveComp'
          Title.Alignment = taCenter
          Width = 69
          Visible = True
        end>
    end
    object CkBCripto: TCheckBox
      Left = 261
      Top = 20
      Width = 86
      Height = 17
      Caption = 'Criptografado'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CkBNormal: TCheckBox
      Left = 351
      Top = 20
      Width = 61
      Height = 17
      Caption = 'Normal'
      TabOrder = 2
    end
    object EdtNm_File: TLabeledEdit
      Left = 5
      Top = 19
      Width = 226
      Height = 19
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo:'
      TabOrder = 0
      Text = 'P:\Atualizacao\Licenca.TXT'
    end
    object CkBAtraso: TCheckBox
      Left = 414
      Top = 20
      Width = 141
      Height = 17
      Caption = 'Liberar clientes em atraso'
      TabOrder = 6
    end
    object BitBtnPublicar: TBitBtn
      Left = 726
      Top = 535
      Width = 85
      Height = 25
      Caption = '&Publicar'
      TabOrder = 7
      OnClick = BitBtnPublicarClick
      Glyph.Data = {binary 466 bytes}
    end
    object CkBSpaces: TCheckBox
      Left = 10
      Top = 539
      Width = 97
      Height = 17
      Caption = 'Gerar Espa'#231'os'
      TabOrder = 8
    end
    object BitBtnGerarPublicar: TBitBtn
      Left = 608
      Top = 535
      Width = 112
      Height = 25
      Caption = 'Gerar e Publicar'
      TabOrder = 9
      OnClick = BitBtnGerarPublicarClick
      Kind = bkAll
    end
    object BitBtnBanco: TBitBtn
      Left = 517
      Top = 535
      Width = 85
      Height = 25
      Caption = '&Banco'
      TabOrder = 10
      OnClick = BitBtnBancoClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
  end
  object DsEmitente: TDataSource
    DataSet = ADODsEmitente
    Left = 56
    Top = 290
  end
  object ADODsEmitente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsEmitenteCalcFields
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, E.Nm_Fantasia, E.Nr_Pagamento,'#13#10'  E.Nr_Computador,'#13#10'  Cd_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then E.Cd_Credito end ),'#13#10'  Nm_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then EC.Nm_Emitente end ),'#13#10'  ('#13#10'  select'#13#10'    min( RP.Dt_Vencimento )'#13#10#13#10'  from'#13#10'    Receber R'#13#10#13#10'  inner join'#13#10'    Receber_Parcela RP'#13#10#13#10'  on'#13#10'    RP.Cd_Filial   = R.Cd_Filial and'#13#10'    RP.Nr_Receber  = R.Nr_Receber and'#13#10'    RP.Vl_Parcela >= RP.Vl_Recebido'#13#10#13#10'  where'#13#10'    R.Cd_Emitente = E.Cd_Credito and'#13#10'    R.St_Receber <= ''''2'''#13#10'  ) as Dt_Vencido'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'where'#13#10'  E.Cd_Grupo in ( 3, 5 ) '#13#10#13#10'order by'#13#10'  E.Nr_Pagamento, E.Nm_Emitente'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, E.Nm_Fantasia, E.Nr_Pagamento,'
      '  E.Nr_Computador,'
      '  Cd_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then E.Cd_Credito end ),'
      '  Nm_Credito = ( case when E.Cd_Emitente <> E.Cd_Credito then EC.Nm_Emitente end ),'
      '  ('
      '  select'
      '    min( RP.Dt_Vencimento )'
      ''
      '  from'
      '    Receber R'
      ''
      '  inner join'
      '    Receber_Parcela RP'
      ''
      '  on'
      '    RP.Cd_Filial   = R.Cd_Filial and'
      '    RP.Nr_Receber  = R.Nr_Receber and'
      '    RP.Vl_Parcela >= RP.Vl_Recebido and'
      '    RP.Dt_Vencimento < GetDate()'
      ''
      '  where'
      '    R.Cd_Emitente = E.Cd_Credito and'
      '    R.St_Receber <= ''''2'''
      '  ) as Dt_Vencido'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente EC'
      'on'
      '  EC.Cd_Emitente = E.Cd_Credito'
      ''
      'where'
      '  E.Cd_Grupo in ( 3, 5 )'
      ''
      'order by'
      '  E.Nr_Pagamento, E.Nm_Emitente'
    )
    Left = 86
    Top = 290
    object ADODsEmitentecd_emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_emitente'
    end
    object ADODsEmitentenr_documento: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'nr_documento'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object ADODsEmitentenm_emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentenm_fantasia: TStringField
      FieldName = 'nm_fantasia'
      Size = 30
    end
    object ADODsEmitenteNr_Pagamento: TSmallintField
      DisplayLabel = 'Dia'
      FieldName = 'Nr_Pagamento'
    end
    object ADODsEmitenteDt_Vencido: TDateTimeField
      DisplayLabel = 'Vencido'
      FieldName = 'Dt_Vencido'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsEmitenteDt_Validade: TDateField
      DisplayLabel = 'Validade'
      FieldKind = fkCalculated
      FieldName = 'Dt_Validade'
      DisplayFormat = 'dd/mm/yyyy'
      Calculated = True
    end
    object ADODsEmitenteDs_Valid: TStringField
      DisplayLabel = 'Chave'
      FieldKind = fkCalculated
      FieldName = 'Ds_Valid'
      EditMask = '#####-#####-#####;0; '
      Calculated = True
    end
    object ADODsEmitenteDp_Chave: TStringField
      DisplayLabel = 'Chave'
      FieldKind = fkCalculated
      FieldName = 'Dp_Chave'
      EditMask = '#####-#####-#####-##;0; '
      Calculated = True
    end
    object ADODsEmitenteCd_Credito: TIntegerField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'Cd_Credito'
    end
    object ADODsEmitenteNm_Credito: TStringField
      DisplayLabel = 'T'#237'tular do Cr'#233'dito'
      FieldName = 'Nm_Credito'
      Size = 50
    end
    object ADODsEmitenteNr_Computador: TSmallintField
      DisplayLabel = 'Esta'#231#245'es'
      FieldName = 'Nr_Computador'
    end
    object ADODsEmitenteDp_Computador: TStringField
      DisplayLabel = 'Chave'
      FieldKind = fkCalculated
      FieldName = 'Dp_Computador'
      EditMask = '####-##;0; '
      Size = 13
      Calculated = True
    end
    object ADODsEmitenteDp_ChaveComp: TStringField
      DisplayLabel = 'Chave'
      FieldKind = fkCalculated
      FieldName = 'Dp_ChaveComp'
      EditMask = '####-##;0; '
      Size = 9
      Calculated = True
    end
  end
  object MultADOCMD1: TMultADOCMD
    Parameters = <>
    Left = 116
    Top = 290
  end
  object MyQryValida: TMyQuery
    SQLInsert.Strings = (
      'insert into Validacao( Nr_Documento, Nm_Cliente, Dt_Validade, Nr_Estacao, Ds_Validade, Ds_Estacao )'
      ''
      'values( :Nr_Documento, :Nm_Cliente, :Dt_Validade, :Nr_Estacao, :Ds_Validade, :Ds_Estacao )'
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
      '  Validacao'
      ''
      'set'
      '  Nm_Cliente  = :Nm_Cliente,'
      '  Dt_Validade = :Dt_Validade,'
      '  Nr_Estacao  = :Nr_Estacao,'
      '  Ds_Validade = :Ds_Validade,'
      '  Ds_Estacao  = :Ds_Estacao'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    Connection = DmMaster.MyConMaster
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
    Left = 169
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
  object MyQryFind: TMyQuery
    Connection = DmMaster.MyConMaster
    SQL.Strings = (
      'select'
      '  Nr_Documento'
      ''
      'from'
      '  Validacao'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    Options.FieldOrigins = foNone
    Left = 115
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nr_Documento'
      end>
  end
  object IdFTP: TIdFTP
    AutoLogin = True
    Host = 'ftp.multforma.com.br'
    Passive = True
    Password = '***REMOVIDO***'
    Username = 'multforma'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 390
    Top = 180
  end
end
