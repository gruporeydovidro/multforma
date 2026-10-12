object FrmProducao_Servico: TFrmProducao_Servico
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Inclus'#227'o de Servi'#231'o'
  ClientHeight = 446
  ClientWidth = 893
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 446
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 872
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 416
      Width = 865
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 66
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object Label2: TLabel
      Left = 93
      Top = 1
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      FocusControl = DbEdtNm_Emitente
    end
    object Label3: TLabel
      Left = 452
      Top = 36
      Width = 62
      Height = 13
      Caption = 'Fechamento:'
      FocusControl = DbEdtDt_Fatura
    end
    object Label4: TLabel
      Left = 316
      Top = 36
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      FocusControl = DbEdtDt_Emissao
    end
    object Label5: TLabel
      Left = 384
      Top = 36
      Width = 56
      Height = 13
      Caption = 'Confirmado:'
      FocusControl = DbEdtDt_Confirmado
    end
    object Label6: TLabel
      Left = 518
      Top = 1
      Width = 36
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DbEdtNm_Cidade
    end
    object Label7: TLabel
      Left = 818
      Top = 1
      Width = 36
      Height = 13
      Caption = 'Estado:'
      FocusControl = DbEdtSg_Estado
    end
    object Label8: TLabel
      Left = 5
      Top = 36
      Width = 26
      Height = 13
      Caption = 'Rota:'
      FocusControl = DbEdtDs_Rota
    end
    object Bevel1: TBevel
      Left = 2
      Top = 73
      Width = 865
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 5
      Top = 75
      Width = 89
      Height = 13
      Caption = 'Itens da produ'#231#227'o:'
    end
    object Label10: TLabel
      Left = 716
      Top = 75
      Width = 91
      Height = 13
      Caption = 'Setor na produ'#231#227'o:'
    end
    object DbTxtNm_Produto: TDBText
      Left = 5
      Top = 366
      Width = 586
      Height = 11
      DataField = 'Nm_Produto'
      DataSource = DsItem
    end
    object SbAtribuir: TSpeedButton
      Left = 720
      Top = 327
      Width = 145
      Height = 25
      Caption = '&Atribuir a todos'
      Flat = True
      Glyph.Data = {binary 946 bytes}
      OnClick = SbAtribuirClick
    end
    object Label11: TLabel
      Left = 5
      Top = 379
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 394
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label12: TLabel
      Left = 379
      Top = 380
      Width = 87
      Height = 13
      Caption = 'Previs'#227'o de Inicio:'
    end
    object Label13: TLabel
      Left = 472
      Top = 380
      Width = 100
      Height = 13
      Caption = 'Previs'#227'o de Termino:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 699
      Top = 419
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 785
      Top = 419
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 16
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtNr_OrcamentoExit
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object DbEdtNm_Emitente: TDBEdit
      Left = 93
      Top = 16
      Width = 421
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Nm_Emitente'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DbEdtDt_Fatura: TDBEdit
      Left = 452
      Top = 51
      Width = 65
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Fatura'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbEdtDt_Emissao: TDBEdit
      Left = 316
      Top = 51
      Width = 65
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Emissao'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DbEdtDt_Confirmado: TDBEdit
      Left = 384
      Top = 51
      Width = 65
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Confirmado'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DbEdtNm_Cidade: TDBEdit
      Left = 518
      Top = 16
      Width = 297
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Nm_Cidade'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DbEdtSg_Estado: TDBEdit
      Left = 818
      Top = 16
      Width = 26
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Sg_Estado'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbEdtDs_Rota: TDBEdit
      Left = 5
      Top = 51
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Ds_Rota'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DbGItem: TDBGrid
      Left = 5
      Top = 89
      Width = 708
      Height = 275
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItemDblClick
      OnEnter = DbGItemEnter
      OnExit = DbGItemExit
      OnKeyPress = DbGItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 348
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 232
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Produzir'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end>
    end
    object DbGSetor: TDBGrid
      Left = 718
      Top = 89
      Width = 151
      Height = 237
      DataSource = DsSetor
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGSetorDblClick
      OnEnter = DbGItemEnter
      OnExit = DbGItemExit
      OnKeyPress = DbGSetorKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Sg_Setor'
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Setor'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 394
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_FuncionarioExit
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 394
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtDt_Inicio: TDateEdit
      Left = 379
      Top = 394
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 14
    end
    object EdtDt_Termino: TDateEdit
      Left = 472
      Top = 394
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 15
    end
    object CkBDistribuir: TCheckBox
      Left = 552
      Top = 51
      Width = 155
      Height = 17
      Caption = '&Distribuir quantidade de item'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'#13#10'  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'#13#10#13#10'  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota'#13#10#13#10'from'#13#10'  Orcamento O             '#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 270
    Top = 5
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsOrcamentoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 240
    Top = 5
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 85
    Top = 150
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsItemCalcFields
    CommandText = '--------------- Cria a tabela temporaria'#13#10'if Object_ID( ''''TempDB..##ProdItem'''' ) is null'#13#10'  create table ##ProdItem'#13#10'    ('#13#10'    Nr_Projeto SmallInt,'#13#10'    Nr_Item SmallInt,'#13#10'    Nr_Detalhe SmallInt,'#13#10'    Qt_Item SmallInt,'#13#10'    Cd_Produto Int,'#13#10'    Nm_Produto VarChar( 120 ),'#13#10'    Nr_Altura Numeric( 9, 3 ),'#13#10'    Nr_Largura Numeric( 9, 3 ),'#13#10'    Nr_Comprimento Numeric( 9, 3 ),'#13#10'    Ds_Detalhe varchar( 50 ),'#13#10'    Fl_Medida char( 1 ),'#13#10'    Fl_Produzir char( 1 ),'#13#10'    Fl_Origem Char( 1 ),'#13#10'    Nr_SPID Int default @@SPID,'#13#10'    Id_Producao SmallInt identity( 1, 1 )'#13#10'    )'#13#10#13#10'else'#13#10'  delete from'#13#10'    ##ProdItem'#13#10#13#10'  where'#13#10'    Nr_SPID = @@SPID'#13#10#13#10'if Object_ID( ''''TempDB..##ProdSetor'''' ) is null'#13#10'  create table ##ProdSetor'#13#10'    ('#13#10'    Nr_SPID Int default @@SPID,'#13#10'    Cd_Setor SmallInt,'#13#10'    Id_Producao SmallInt'#13#10'    )'#13#10'    '#13#10'else'#13#10'  delete from'#13#10'    ##ProdSetor'#13#10#13#10'  where'#13#10'    Nr_SPID = @@SPID'#13#10#13#10'select'#13#10'  Nr_SPID, Id_Producao,'#13#10'  Nr_Projeto, Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto, Nm_Produto, Nr_Altura,'#13#10'  Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir'#13#10#13#10'from'#13#10'  ##ProdItem'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10'  /* Fl_Produzir */'#13#10#13#10'order by'#13#10'  Nr_Projeto, Nr_Item, Nr_Detalhe'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Nr_SPID, Id_Producao,'
      '  Nr_Projeto, Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto, Nm_Produto, Nr_Altura,'
      '  Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir'
      ''
      'from'
      '  ##ProdItem'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      '  /* Fl_Produzir */'
      ''
      'order by'
      '  Nr_Projeto, Nr_Item, Nr_Detalhe'
    )
    Left = 116
    Top = 150
    object ADODsItemNr_Projeto: TSmallintField
      DisplayLabel = 'Projeto'
      FieldName = 'Nr_Projeto'
    end
    object ADODsItemNr_Item: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Item'
    end
    object ADODsItemNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 9
      Size = 3
    end
    object ADODsItemNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 9
      Size = 3
    end
    object ADODsItemNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 9
      Size = 3
    end
    object ADODsItemDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 50
    end
    object ADODsItemFl_Produzir: TStringField
      FieldName = 'Fl_Produzir'
      FixedChar = True
      Size = 1
    end
    object ADODsItemDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 80
      Calculated = True
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemDp_Produzir: TStringField
      DisplayLabel = 'Produzir'
      FieldKind = fkCalculated
      FieldName = 'Dp_Produzir'
      Size = 3
      Calculated = True
    end
    object ADODsItemNr_SPID: TIntegerField
      FieldName = 'Nr_SPID'
    end
    object ADODsItemId_Producao: TSmallintField
      FieldName = 'Id_Producao'
      ReadOnly = True
    end
    object ADODsItemQt_Item: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
  end
  object ADOCmdProducao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLPrimary.Strings = (
      '--------------- Apaga itens com mais de 1 item de quantidade'
      'delete from'
      '  ##ProdItem'
      ''
      'where'
      '  Fl_Origem = ''''1'''
    )
    SQLOther0.Strings = (
      '--------------- Cria a tabela temporaria'
      'if Object_ID( ''''TempDB..##ProdItem'''' ) is null'
      '  create table ##ProdItem'
      '    ('
      '    Nr_Projeto SmallInt,'
      '    Nr_Item SmallInt,'
      '    Nr_Detalhe SmallInt,'
      '    Qt_Item SmallInt,'
      '    Cd_Produto Int,'
      '    Nm_Produto VarChar( 120 ),'
      '    Nr_Altura Numeric( 9, 3 ),'
      '    Nr_Largura Numeric( 9, 3 ),'
      '    Nr_Comprimento Numeric( 9, 3 ),'
      '    Ds_Detalhe varchar( 50 ),'
      '    Fl_Medida char( 1 ),'
      '    Fl_Produzir char( 1 ),'
      '    Fl_Origem Char( 1 ),'
      '    Nr_SPID Int default @@SPID,'
      '    Id_Producao SmallInt identity( 1, 1 )'
      '    )'
      ''
      'else'
      '  delete from'
      '    ##ProdItem'
      ''
      '  where'
      '    Nr_SPID = @@SPID'
      ''
      'if Object_ID( ''''TempDB..##ProdSetor'''' ) is null'
      '  create table ##ProdSetor'
      '    ('
      '    Nr_SPID Int default @@SPID,'
      '    Cd_Setor SmallInt,'
      '    Id_Producao SmallInt'
      '    )'
      '    '
      'else'
      '  delete from'
      '    ##ProdSetor'
      ''
      '  where'
      '    Nr_SPID = @@SPID'
    )
    SQLOther1.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Fl_Produzir Char( 1 )'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Fl_Produzir  = :Fl_Produzir'
      ''
      '---------- Aloca os itens de detalhamento'
      'insert into ##ProdItem( Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto, Nm_Produto,'
      '  Nr_Altura, Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir,'
      '  Fl_Origem )'
      ''
      'select'
      '  OD.Nr_Item, OD.Nr_Detalhe, OD.Qt_Item, OI.Cd_Produto, P.Nm_Produto,'
      '  OD.Nr_Altura, OD.Nr_Largura, OD.Nr_Comprimento, OD.Ds_Detalhe, OI.Fl_Medida,'
      '  @Fl_Produzir, ''''1'''
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''1'''
      ''
      'inner join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = OI.Cd_Filial and'
      '  OD.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OD.Nr_Item      = OI.Nr_Item'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      '---------- Aloca os itens de projeto'
      'insert into ##ProdItem( Nr_Projeto, Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto,'
      '  Nm_Produto, Nr_Altura, Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir,'
      '  Fl_Origem )'
      ''
      'select'
      '  OPI.Nr_Projeto, OPI.Nr_Item, OPI.Nr_Item, OP.Qt_Projeto as Qt_Item, OPI.Cd_Produto,'
      '  P.Nm_Produto, OPI.Nr_Altura, OPI.Nr_Largura, 0 as Nr_Comprimento,'
      '  PP.Ds_Peca as Ds_Detalhe, ''''3'''' as Fl_Medida, @Fl_Produzir, ''''1'''
      ''
      'from'
      '  Orcamento_Projeto_Item OPI'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial    = OPI.Cd_Filial and'
      '  OP.Nr_Orcamento = OPI.Nr_Orcamento and'
      '  OP.Nr_Projeto   = OPI.Nr_Projeto'
      ''
      'left join'
      '  Projeto_Item PrI'
      'on'
      '  PrI.Cd_Projeto = OP.Cd_Projeto and'
      '  PrI.Nr_Item    = OPI.Nr_Item'
      ''
      'left join'
      '  Projeto_Peca PP'
      'on'
      '  PP.Cd_Peca = PrI.Cd_Peca'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto and'
      '  P.Fl_Produto = ''''1'''
      ''
      'where'
      '  OPI.Cd_Filial     = @Cd_Filial and'
      '  OPI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OPI.Tp_Item       = ''''0'''
      ''
    )
    SQLOther2.Strings = (
      '--------------- Distrui os itens por quantidade'
      'insert into ##ProdItem( Nr_Item, Nr_Detalhe, Qt_Item, Cd_Produto, Nm_Produto,'
      '  Nr_Altura, Nr_Largura, Nr_Comprimento, Ds_Detalhe, Fl_Medida, Fl_Produzir,'
      '  Nr_Projeto )'
      ''
      'values( :Nr_Item, :Nr_Detalhe, :Qt_Item, :Cd_Produto, :Nm_Produto,'
      '  :Nr_Altura, :Nr_Largura, :Nr_Comprimento, :Ds_Detalhe, :Fl_Medida, :Fl_Produzir,'
      '  :Nr_Projeto )'
    )
    SQLOther3.Strings = (
      '--------------- Deixa somente os itens com setor determinado'
      'update'
      '  ##ProdItem'
      ''
      'set'
      '  Fl_Produzir = ''''2'''
      ''
      'where'
      '  Nr_SPID = @@SPID and'
      '  Fl_Produzir = ''''1'''' and'
      '  not exists('
      '    select'
      '      PS.Cd_Setor'
      ''
      '    from'
      '      ##ProdSetor PS'
      ''
      '    where'
      '      PS.Nr_SPID = @@SPID and'
      '      PS.Id_Producao = ##ProdItem.Id_Producao'
      '    )'
    )
    SQLOther4.Strings = (
      '--------------- Inclus'#227'o de cada setor da produ'#231#227'o'
      'insert into Producao_Setor( Cd_Filial, Nr_Producao, Cd_Setor, Id_Producao,'
      '   Fl_Setor, Cd_Funcionario, Dt_Inicio, Dt_Termino )'
      'values( :Cd_Filial, :Nr_Producao, :Cd_Setor, :Id_Producao, ''''1'''','
      '   :Cd_Funcionario, :Dt_Inicio, :Dt_Termino ) '
    )
    SQLOther5.Strings = (
      '--------------- Inclus'#227'o do Item na Produ'#231#227'o'
      'insert into Producao_Item( Cd_Filial, Nr_Producao, Id_Producao, Nr_Orcamento,'
      '  Nr_Item, Nr_Detalhe, Nr_Projeto, Nr_Item_Projeto, Nr_Comprimento, Nr_Largura,'
      '  Nr_Altura )'
      ''
      'values( :Cd_Filial, :Nr_Producao, :Id_Producao, :Nr_Orcamento,'
      '  :Nr_Item, :Nr_Detalhe, :Nr_Projeto, :Nr_Item_Projeto, :Nr_Comprimento,'
      '  :Nr_Largura, :Nr_Altura )'
    )
    SQLOther6.Strings = (
      '--------------- Atribuir a todos os mesmos servi'#231'os'
      'declare'
      '  @Id_Producao Int,'
      '  @Cd_Setor SmallInt'
      ''
      'select'
      '  @Id_Producao = :Id_Producao,'
      '  @Cd_Setor    = :Cd_Setor'
      ''
      '--------------- Insere nos outros itens'
      'insert into ##ProdSetor( Cd_Setor, Id_Producao )'
      'select'
      '  @Cd_Setor, Des.Id_Producao'
      ''
      'from'
      '  ##ProdItem Des'
      ''
      'where'
      '  Des.Nr_SPID = @@SPID and'
      '  not exists('
      '    select'
      '      Nr_SPID'
      ''
      '    from'
      '      ##ProdSetor Ori'
      ''
      '    where'
      '      Ori.Nr_SPID     = @@SPID and'
      '      Ori.Id_Producao = Des.Id_Producao and'
      '      Ori.Cd_Setor    = @Cd_Setor'
      '    )'
      ''
      ''
    )
    SQLOther7.Strings = (
      '--------------- Apaga o setor'
      'delete from'
      '  ##ProdSetor'
      ''
      'where'
      '  Nr_SPID     = @@SPID and'
      '  Cd_Setor    = :Cd_Setor and'
      '  Id_Producao = :Id_Producao'
    )
    SQLOther8.Strings = (
      '--------------- Adiciona o setor'
      'insert into ##ProdSetor( Cd_Setor, Id_Producao )'
      'values( :Cd_Setor, :Id_Producao )'
    )
    SQLOther9.Strings = (
      '--------------- Marca / Desmarca itens da produ'#231#227'o'
      'update'
      '  ##ProdItem'
      ''
      'set'
      '  Fl_Produzir = :Fl_Produzir'
      ''
      'where'
      '  Nr_SPID     = @@SPID and'
      '  Id_Producao = :Id_Producao'
    )
    Left = 400
    Top = 250
  end
  object DsSetor: TDataSource
    DataSet = ADODsSetor
    Left = 777
    Top = 163
  end
  object ADODsSetor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSetorCalcFields
    CommandText = 'select'#13#10'  S.Cd_Setor, S.Sg_Setor, PS.Nr_SPID, PS.Id_Producao'#13#10#13#10'from'#13#10'  Setor S'#13#10#13#10'left join'#13#10'  ##ProdSetor PS'#13#10'on'#13#10'  PS.Nr_SPID     = @@SPID and'#13#10'  PS.Cd_Setor   = S.Cd_Setor and'#13#10'  PS.Id_Producao = :Id_Producao'#13#10#13#10'where'#13#10'  S.Fl_Ativo = ''''1'''#13#10#13#10'order by'#13#10'  S.Cd_Setor'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Setor;Nr_SPID;Id_Producao'
    MasterFields = 'Id_Producao'
    Parameters = <
      item
        Name = 'Id_Producao'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 807
    Top = 163
    object ADODsSetorCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsSetorSg_Setor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'Sg_Setor'
      Size = 15
    end
    object ADODsSetorNr_SPID: TIntegerField
      FieldName = 'Nr_SPID'
    end
    object ADODsSetorId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsSetorDp_Setor: TStringField
      DisplayLabel = 'Produzir'
      FieldKind = fkCalculated
      FieldName = 'Dp_Setor'
      Size = 3
      Calculated = True
    end
  end
  object ADODsID: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Id_Producao ) as Id_Producao'#13#10#13#10'from'#13#10'  Producao_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Producao = :Nr_Producao'
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
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 180
    Top = 169
    object ADODsIDId_Producao: TSmallintField
      FieldName = 'Id_Producao'
      ReadOnly = True
    end
  end
end
