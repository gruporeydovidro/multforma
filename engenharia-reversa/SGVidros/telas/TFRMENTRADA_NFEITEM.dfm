object FrmEntrada_NFeItem: TFrmEntrada_NFeItem
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item da NFe'
  ClientHeight = 373
  ClientWidth = 740
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 373
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 719
    Height = 373
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 341
      Width = 710
      Height = 5
      Shape = bsTopLine
    end
    object Label17: TLabel
      Left = 7
      Top = 79
      Width = 74
      Height = 13
      Caption = 'ICMS (R$ / % ):'
      FocusControl = DbEdtPr_Icms
    end
    object Label33: TLabel
      Left = 123
      Top = 79
      Width = 58
      Height = 13
      Caption = 'IPI (R$ / %):'
      FocusControl = DbEdtVl_IPI
    end
    object Label34: TLabel
      Left = 241
      Top = 79
      Width = 62
      Height = 13
      Caption = 'PIS (R$ / %):'
      FocusControl = DbEdPr_Pis
    end
    object Label37: TLabel
      Left = 357
      Top = 79
      Width = 74
      Height = 13
      Caption = 'Cofins (R$ / %):'
      FocusControl = DbEdtVl_Cofins
    end
    object Label18: TLabel
      Left = 5
      Top = 39
      Width = 72
      Height = 13
      Caption = 'CST / CSOSN:'
      FocusControl = DbEdtCd_CST
    end
    object Label32: TLabel
      Left = 79
      Top = 39
      Width = 31
      Height = 13
      Caption = 'CFOP:'
      FocusControl = DbEdtCd_CFOP
    end
    object Label35: TLabel
      Left = 444
      Top = 39
      Width = 167
      Height = 13
      Caption = 'C'#243'digo de Barras (GTIN / EAN 13):'
      FocusControl = DbEdtCd_Barra
    end
    object Label36: TLabel
      Left = 617
      Top = 39
      Width = 94
      Height = 13
      Caption = 'Class. Fiscal (NCM):'
      FocusControl = DbEdtCd_NCM
    end
    object BvlSeparator_2: TBevel
      Left = 5
      Top = 195
      Width = 710
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 7
      Top = 122
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 91
      Top = 137
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
      Left = 5
      Top = 157
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 181
      Top = 159
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 266
      Top = 159
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label2: TLabel
      Left = 351
      Top = 159
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 489
      Top = 159
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 142
      Top = 271
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 237
      Top = 271
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object LblICMS: TLabel
      Left = 5
      Top = 234
      Width = 74
      Height = 13
      Caption = 'ICMS (R$ / % ):'
    end
    object LblIPI: TLabel
      Left = 174
      Top = 234
      Width = 58
      Height = 13
      Caption = 'IPI (R$ / %):'
    end
    object Label12: TLabel
      Left = 129
      Top = 199
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 160
      Top = 213
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
      Left = 329
      Top = 271
      Width = 138
      Height = 13
      Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 119
      Width = 710
      Height = 5
      Shape = bsTopLine
    end
    object Label8: TLabel
      Left = 301
      Top = 234
      Width = 62
      Height = 13
      Caption = 'PIS (R$ / %):'
    end
    object Label11: TLabel
      Left = 427
      Top = 234
      Width = 74
      Height = 13
      Caption = 'Cofins (R$ / %):'
    end
    object Label13: TLabel
      Left = 5
      Top = 1
      Width = 40
      Height = 13
      Caption = 'Produto:'
      FocusControl = DbEdtCd_Produto_NFe
    end
    object Label14: TLabel
      Left = 435
      Top = 159
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label15: TLabel
      Left = 131
      Top = 234
      Width = 26
      Height = 13
      Caption = 'MVA:'
    end
    object SbTributacao: TSpeedButton
      Left = 44
      Top = 319
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
    object Label16: TLabel
      Left = 5
      Top = 305
      Width = 175
      Height = 13
      Caption = 'Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
    end
    object BitBtnConfirm: TBitBtn
      Left = 545
      Top = 344
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 40
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 631
      Top = 344
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 41
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtPr_Icms: TDBEdit
      Left = 78
      Top = 94
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Icms'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DbEdtVl_Icms: TDBEdit
      Left = 5
      Top = 94
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Icms'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DbEdtPr_IPI: TDBEdit
      Left = 196
      Top = 94
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Ipi'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DbEdtVl_IPI: TDBEdit
      Left = 123
      Top = 94
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Ipi'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DbEdPr_Pis: TDBEdit
      Left = 312
      Top = 94
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Pis'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DbEdtVl_Pis: TDBEdit
      Left = 241
      Top = 94
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Pis'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DbEdtPr_Cofins: TDBEdit
      Left = 429
      Top = 94
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Cofins'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DbEdtVl_Cofins: TDBEdit
      Left = 357
      Top = 94
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Cofins'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DbEdtCd_CST: TDBEdit
      Left = 5
      Top = 55
      Width = 39
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_CST'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DbEdtCd_CFOP: TDBEdit
      Left = 79
      Top = 55
      Width = 52
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_CFOP'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DbEdtDs_CFOP: TDBEdit
      Left = 132
      Top = 55
      Width = 311
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Ds_CFOP'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DbEdtCd_Barra: TDBEdit
      Left = 444
      Top = 55
      Width = 170
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_Barra'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DbEdtCd_NCM: TDBEdit
      Left = 617
      Top = 55
      Width = 87
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_NCM'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 137
      Width = 85
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 15
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 114
      Top = 137
      Width = 480
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 120
      ParentFont = False
      TabOrder = 16
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 172
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 17
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 181
      Top = 172
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 18
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 266
      Top = 172
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 19
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 351
      Top = 172
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 20
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 489
      Top = 172
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
      TabOrder = 21
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 142
      Top = 285
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 35
    end
    object EdtDt_Validade: TDateEdit
      Left = 237
      Top = 285
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 36
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 5
      Top = 285
      Width = 130
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 34
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 88
      Top = 248
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 26
    end
    object EdtVl_ICMSItem: TCurrencyEdit
      Left = 5
      Top = 248
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 25
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 257
      Top = 248
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 29
    end
    object EdtVl_IPIItem: TCurrencyEdit
      Left = 174
      Top = 248
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 28
    end
    object EdtCd_CST: TLabeledEdit
      Left = 5
      Top = 213
      Width = 31
      Height = 19
      EditLabel.Width = 122
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o Tribut'#225'ria (CST):'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 22
    end
    object EdtCd_CFOPItem: TEdit
      Tag = 3
      Left = 129
      Top = 213
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 23
      OnExit = EdtCd_CFOPItemExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_CFOPItem: TEdit
      Left = 184
      Top = 213
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
      TabOrder = 24
    end
    object CbInventario: TComboBox
      Left = 329
      Top = 285
      Width = 197
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 37
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
      Left = 384
      Top = 248
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 31
    end
    object EdtVl_PISItem: TCurrencyEdit
      Left = 301
      Top = 248
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 30
    end
    object EdtPr_CofinsItem: TCurrencyEdit
      Left = 510
      Top = 248
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 33
    end
    object EdtVl_CofinsItem: TCurrencyEdit
      Left = 427
      Top = 248
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 32
    end
    object DbEdtCd_Produto_NFe: TDBEdit
      Left = 5
      Top = 17
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_Produto_NFe'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DbEdtNm_Produto_NFe: TDBEdit
      Left = 116
      Top = 17
      Width = 589
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Nm_Produto_NFe'
      DataSource = FrmEntrada_NFe.DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 435
      Top = 172
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 42
      OnChange = EdtQt_ItemChange
    end
    object EdtPr_MVAItem: TCurrencyEdit
      Left = 131
      Top = 248
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 27
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 319
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 38
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_CFOPItemKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 67
      Top = 319
      Width = 417
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
      TabOrder = 39
    end
    object BitBtnProduto: TBitBtn
      Left = 3
      Top = 344
      Width = 167
      Height = 25
      Caption = 'Cadastro R'#225'pido de Produto'
      TabOrder = 43
      OnClick = BitBtnProdutoClick
      Glyph.Data = {binary 826 bytes}
    end
  end
end
