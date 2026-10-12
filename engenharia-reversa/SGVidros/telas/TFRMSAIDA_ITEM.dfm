object FrmSaida_Item: TFrmSaida_Item
  Left = 287
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sa'#237'da no Estoque'
  ClientHeight = 293
  ClientWidth = 678
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 293
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 197
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 657
    Height = 293
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 521
    ExplicitHeight = 197
    object BvlSeparator: TBevel
      Left = 3
      Top = 263
      Width = 650
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 263
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
      Left = 5
      Top = 57
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 179
      Top = 59
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 264
      Top = 59
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label2: TLabel
      Left = 349
      Top = 59
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 434
      Top = 59
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 227
      Top = 95
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 322
      Top = 95
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Label9: TLabel
      Left = 5
      Top = 96
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label11: TLabel
      Left = 49
      Top = 96
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object SbTributacao: TSpeedButton
      Left = 45
      Top = 144
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
      Left = 5
      Top = 129
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object Label16: TLabel
      Left = 111
      Top = 166
      Width = 76
      Height = 13
      Caption = 'N'#186' de Item NFe:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 485
      Top = 266
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 570
      Top = 266
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 18
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
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
      Left = 5
      Top = 37
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
      TabOrder = 2
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 72
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
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
      Top = 72
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 4
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 264
      Top = 72
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
    object EdtVl_Unitario: TCurrencyEdit
      Left = 349
      Top = 72
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 6
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 434
      Top = 72
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
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
      Left = 227
      Top = 109
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 11
    end
    object EdtDt_Validade: TDateEdit
      Left = 322
      Top = 109
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 12
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 92
      Top = 109
      Width = 130
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 10
    end
    object EdtCd_Fabricante: TLabeledEdit
      Tag = 1
      Left = 92
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
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 5
      Top = 109
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 8
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 49
      Top = 109
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 9
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 144
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 13
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 68
      Top = 144
      Width = 437
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object EdtxPed: TLabeledEdit
      Left = 5
      Top = 181
      Width = 104
      Height = 19
      EditLabel.Width = 104
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Pedido da NFe:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 15
    end
    object EdtnItemPed: TCurrencyEdit
      Tag = 6
      Left = 112
      Top = 181
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 16
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '  Pr_ICMS, Pr_IPI, Nm_Produto, Cd_Tributacao, xPed, nItemPed )'
      'values( :Cd_Filial, :Nr_Saida, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '  :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade,'
      '  :Pr_ICMS, :Pr_IPI, :Nm_Produto, :Cd_Tributacao, :xPed, :nItemPed )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Saida_Item'
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
      '  Pr_ICMS       = :Pr_ICMS,'
      '  Pr_IPI        = :Pr_IPI,'
      '  Cd_Tributacao = :Cd_Tributacao,'
      '  xPed          = :xPed,'
      '  nItemPed      = :nItemPed'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida and'
      '  Nr_Item   = :Nr_Item'
    )
    Left = 334
    Top = 7
  end
  object ADODsCheck: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  Saida_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Saida = :Nr_Saida'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Item ) as NewItem'
      ''
      'from'
      '  Saida_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida = :Nr_Saida'
    )
    SQLOther0.Strings = (
      '---------- Valida se o produto ja esta no emitente'
      'select'
      '  SI.Cd_Produto'
      ''
      'from'
      '  Saida_Item Si'
      ''
      'where'
      '  SI.Cd_Filial  = :Cd_Filial and'
      '  SI.Nr_Saida   = :Nr_Saida and'
      '  SI.Cd_Produto = :Cd_Produto'
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
    Left = 364
    Top = 6
  end
end
