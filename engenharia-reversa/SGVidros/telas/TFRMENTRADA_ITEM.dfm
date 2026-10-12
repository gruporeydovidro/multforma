object FrmEntrada_Item: TFrmEntrada_Item
  Left = 308
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Entrada no Estoque'
  ClientHeight = 278
  ClientWidth = 602
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 278
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 581
    Height = 278
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 100
      Width = 568
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 3
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 360
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label6: TLabel
      Left = 3
      Top = 62
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 179
      Top = 64
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 264
      Top = 64
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label2: TLabel
      Left = 349
      Top = 64
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 485
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 140
      Top = 176
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 235
      Top = 176
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 247
      Width = 576
      Height = 5
      Shape = bsTopLine
    end
    object Label8: TLabel
      Left = 432
      Top = 64
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object LblICMS: TLabel
      Left = 3
      Top = 139
      Width = 74
      Height = 13
      Caption = 'ICMS (R$ / % ):'
    end
    object LblIPI: TLabel
      Left = 174
      Top = 139
      Width = 58
      Height = 13
      Caption = 'IPI (R$ / %):'
    end
    object Label12: TLabel
      Left = 127
      Top = 104
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 158
      Top = 118
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
    object Label9: TLabel
      Left = 327
      Top = 176
      Width = 138
      Height = 13
      Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
    end
    object Label11: TLabel
      Left = 300
      Top = 139
      Width = 62
      Height = 13
      Caption = 'PIS (R$ / %):'
    end
    object Label13: TLabel
      Left = 426
      Top = 139
      Width = 74
      Height = 13
      Caption = 'Cofins (R$ / %):'
    end
    object Label14: TLabel
      Left = 131
      Top = 139
      Width = 26
      Height = 13
      Caption = 'MVA:'
    end
    object SbTributacao: TSpeedButton
      Left = 42
      Top = 225
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
      Left = 3
      Top = 210
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object BitBtnConfirm: TBitBtn
      Left = 408
      Top = 251
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 28
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 494
      Top = 251
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 29
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Left = 3
      Top = 17
      Width = 85
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnChange = EdtCd_ProdutoChange
      OnEnter = EdtCd_ProdutoEnter
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 3
      Top = 40
      Width = 480
      Height = 19
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 120
      ParentFont = False
      TabOrder = 3
    end
    object CbEstoque: TComboBox
      Left = 3
      Top = 77
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 179
      Top = 77
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 5
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 264
      Top = 77
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00####'
      TabOrder = 6
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 349
      Top = 77
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 7
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 485
      Top = 77
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
      TabOrder = 9
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 140
      Top = 190
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 23
    end
    object EdtDt_Validade: TDateEdit
      Left = 235
      Top = 190
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 24
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 3
      Top = 190
      Width = 130
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 22
    end
    object EdtCd_Fornecedor: TLabeledEdit
      Left = 266
      Top = 17
      Width = 93
      Height = 19
      EditLabel.Width = 163
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Produto no Fornecedor:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 2
      OnExit = EdtCd_FornecedorExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 432
      Top = 77
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 8
      OnChange = EdtQt_ItemChange
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 86
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 14
    end
    object EdtVl_ICMSItem: TCurrencyEdit
      Left = 3
      Top = 153
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 13
      OnChange = EdtVl_ICMSItemChange
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 257
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 17
    end
    object EdtVl_IPIItem: TCurrencyEdit
      Left = 174
      Top = 153
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 16
      OnChange = EdtVl_IPIItemChange
    end
    object EdtCd_Fabricante: TLabeledEdit
      Tag = 1
      Left = 91
      Top = 17
      Width = 170
      Height = 19
      EditLabel.Width = 161
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Fabricante/Distribuidor:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 1
      OnEnter = EdtCd_ProdutoEnter
      OnExit = EdtCd_FabricanteExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtCd_CST: TLabeledEdit
      Left = 3
      Top = 118
      Width = 31
      Height = 19
      EditLabel.Width = 122
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o Tribut'#225'ria (CST):'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 10
      OnExit = EdtCd_FornecedorExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtCd_CFOPItem: TEdit
      Tag = 3
      Left = 127
      Top = 118
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 11
      OnExit = EdtCd_CFOPItemExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_CFOPItem: TEdit
      Left = 182
      Top = 118
      Width = 387
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
      TabOrder = 12
    end
    object CbInventario: TComboBox
      Left = 327
      Top = 190
      Width = 197
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 25
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
    object EdtPr_PISItem: TCurrencyEdit
      Left = 383
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 19
    end
    object EdtVl_PISItem: TCurrencyEdit
      Left = 300
      Top = 153
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 18
    end
    object EdtPr_CofinsItem: TCurrencyEdit
      Left = 509
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 21
    end
    object EdtVl_CofinsItem: TCurrencyEdit
      Left = 426
      Top = 153
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 20
    end
    object EdtPr_MVAItem: TCurrencyEdit
      Left = 131
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 15
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 3
      Top = 225
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 26
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 65
      Top = 225
      Width = 418
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
      TabOrder = 27
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '   Dt_Validade, Pr_Desconto, Pr_ICMS, Vl_ICMS, Pr_IPI, Vl_IPI, Nm_Produto,'
      '   Cd_CST, Cd_CFOP, Fl_Inventario, Pr_PIS, Vl_Pis, Pr_Cofins, Vl_Cofins,'
      '   Pr_MVA, Cd_Tributacao )'
      ''
      'values( :Cd_Filial, :Nr_Entrada, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Nr_Lote, :Dt_Fabricacao,'
      '   :Dt_Validade, :Pr_Desconto, :Pr_ICMS, :Vl_ICMS, :Pr_IPI, :Vl_IPI,'
      '   :Nm_Produto, :Cd_CST, :Cd_CFOP, :Fl_Inventario, :Pr_PIS, :Vl_Pis,'
      '   :Pr_Cofins, :Vl_Cofins, :Pr_MVA, :Cd_Tributacao )'
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
      '  Cd_CST        = :Cd_CST,'
      '  Cd_CFOP       = :Cd_CFOP,'
      '  Fl_Inventario = :Fl_Inventario,'
      '  Pr_PIS        = :Pr_PIS,'
      '  Vl_Pis        = :Vl_Pis,'
      '  Pr_Cofins     = :Pr_Cofins,'
      '  Vl_Cofins     = :Vl_Cofins,'
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
    Left = 460
    Top = 5
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
    Left = 490
    Top = 5
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
    Left = 521
    Top = 5
  end
  object ADODsFornecedor: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Produto'#13#10#13#10'from'#13#10'  Produto_Fornecedor'#13#10#13#10'where'#13#10'  Cd_Emitente         = :Cd_Emitente and'#13#10'  Cd_Produto_Emitente = :Cd_Produto_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto_Emitente'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 551
    Top = 5
    object ADODsFornecedorcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
  end
end
