object FrmEntrada_Item_Select: TFrmEntrada_Item_Select
  Left = 308
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Entrada no Estoque'
  ClientHeight = 436
  ClientWidth = 766
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 436
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 745
    Height = 436
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 5
      Top = 296
      Width = 733
      Height = 5
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 7
      Top = 258
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 181
      Top = 260
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 266
      Top = 260
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label2: TLabel
      Left = 351
      Top = 260
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 491
      Top = 260
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 237
      Top = 334
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 328
      Top = 334
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Bevel1: TBevel
      Left = 5
      Top = 406
      Width = 734
      Height = 5
      Shape = bsTopLine
    end
    object Label8: TLabel
      Left = 436
      Top = 260
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label9: TLabel
      Left = 478
      Top = 300
      Width = 65
      Height = 13
      Caption = 'ICMS (%/R$):'
    end
    object Label11: TLabel
      Left = 7
      Top = 334
      Width = 52
      Height = 13
      Caption = 'IPI (%/R$):'
    end
    object Label12: TLabel
      Left = 132
      Top = 300
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 163
      Top = 314
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label10: TLabel
      Left = 420
      Top = 334
      Width = 138
      Height = 13
      Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
    end
    object Label13: TLabel
      Left = 603
      Top = 300
      Width = 26
      Height = 13
      Caption = 'MVA:'
    end
    object SbTributacao: TSpeedButton
      Left = 46
      Top = 384
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTributacaoClick
    end
    object Label15: TLabel
      Left = 7
      Top = 369
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object BitBtnConfirm: TBitBtn
      Left = 572
      Top = 409
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 22
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 658
      Top = 409
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 23
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbEstoque: TComboBox
      Left = 7
      Top = 273
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 181
      Top = 273
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 3
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 266
      Top = 273
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 4
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 351
      Top = 273
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 5
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 491
      Top = 273
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 237
      Top = 348
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 17
    end
    object EdtDt_Validade: TDateEdit
      Left = 328
      Top = 348
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 18
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 134
      Top = 348
      Width = 101
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 16
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 436
      Top = 273
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 6
      OnChange = EdtQt_ItemChange
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 478
      Top = 314
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 11
    end
    object EdtVl_ICMSItem: TCurrencyEdit
      Left = 519
      Top = 314
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 12
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 7
      Top = 348
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 14
    end
    object EdtVl_IPIItem: TCurrencyEdit
      Left = 49
      Top = 348
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 15
    end
    object EdtFind: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 408
      Height = 19
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do Produto'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnEnter = EdtFindEnter
      OnExit = EdtFindExit
      OnKeyPress = EdtFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 39
      Width = 732
      Height = 219
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFindDblClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 615
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 43
          Visible = True
        end>
    end
    object CkBContendo: TCheckBox
      Left = 661
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 24
    end
    object EdtCd_CST: TLabeledEdit
      Left = 7
      Top = 314
      Width = 31
      Height = 19
      EditLabel.Width = 122
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o Tribut'#225'ria (CST):'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 8
    end
    object EdtCd_CFOPItem: TEdit
      Tag = 3
      Left = 132
      Top = 314
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 9
      OnExit = EdtCd_CFOPItemExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_CFOPItem: TEdit
      Left = 187
      Top = 314
      Width = 287
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object CbInventario: TComboBox
      Left = 420
      Top = 348
      Width = 190
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 19
      Text = 'Mat'#233'ria Prima'
      Items.Strings = (
        'Mat'#233'ria Prima'
        'Insumos ou Material Secund'#225'rio'
        'Produtos Acabados'
        'Material em Poder de Terceiros'
        'Material de Revenda'
        'Material uso e consumo'
        'Material uso presta'#231#227'o de servi'#231'os'
      )
    end
    object EdtPr_MVA: TCurrencyEdit
      Left = 603
      Top = 314
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 13
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 7
      Top = 384
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 20
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 69
      Top = 384
      Width = 405
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '   Dt_Validade, Pr_Desconto, Pr_ICMS, Vl_ICMS, Pr_IPI, Vl_IPI, Nm_Produto,'
      '   Cd_CST, Cd_CFOP, Fl_Inventario, Pr_MVA, Cd_Tributacao )'
      'values( :Cd_Filial, :Nr_Entrada, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Nr_Lote, :Dt_Fabricacao,'
      '   :Dt_Validade, :Pr_Desconto, :Pr_ICMS, :Vl_ICMS, :Pr_IPI, :Vl_IPI,'
      '   :Nm_Produto, :Cd_CST, :Cd_CFOP, :Fl_Inventario, :Pr_MVA, :Cd_Tributacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Entrada_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Qt_Estoque    = :Qt_Estoque,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Nr_Lote       = :Nr_Lote,'
      '  Dt_Fabricacao = :Dt_Fabricacao,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Pr_Desconto   = :Pr_Desconto,'
      '  Pr_ICMS       = :Pr_ICMS,'
      '  Vl_ICMS       = :Vl_ICMS,'
      '  Pr_IPI        = :Pr_IPI,'
      '  Vl_IPI        = :Vl_IPI,'
      '  Fl_Inventario = :Fl_Inventario,'
      '  Pr_MVA        = :Pr_MVA,'
      '  Cd_Tributacao = :Cd_Tributacao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada and'
      '  Nr_Item    = :Nr_Item'
    )
    SQLOther0.Strings = (
      'insert into Produto_Fornecedor( Cd_Produto, Cd_Emitente, Cd_Produto_Emitente,'
      '   Nr_Fator_Fornecedor, Nr_Fator_Distribuidor )'
      'values( :Cd_Produto, :Cd_Emitente, :Cd_Produto_Emitente, 0, 0 )'
    )
    Left = 25
    Top = 122
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  Entrada_Item'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Entrada = :Nr_Entrada'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Entrada'
        Size = -1
        Value = nil?
      end>
    Left = 55
    Top = 122
    object ADODsPrimaryNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
  object ADODsCheck: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Entrada_Item'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada and'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther1.Strings = (
      '--------- Valida se o item existe pelo codigo'
      'select'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Fabricante = :Cd_Fabricante'
    )
    Left = 86
    Top = 122
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'#13#10#13#10'from'#13#10'  Produto P'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nr_Sequencia'
    )
    SQLOther1.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nm_Produto'
    )
    Left = 360
    Top = 192
    object ADODsFindCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsFindNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsFindSg_Estoque: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 328
    Top = 192
  end
end
