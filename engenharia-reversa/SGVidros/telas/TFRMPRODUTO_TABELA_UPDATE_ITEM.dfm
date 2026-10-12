object FrmProduto_Tabela_Update_Item: TFrmProduto_Tabela_Update_Item
  Left = 479
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item'
  ClientHeight = 281
  ClientWidth = 606
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 281
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 207
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 585
    Height = 281
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 396
    ExplicitHeight = 207
    object BvlSeparator: TBevel
      Left = 6
      Top = 250
      Width = 571
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 227
      Top = 137
      Width = 51
      Height = 13
      Caption = 'Promo'#231#227'o:'
      Visible = False
    end
    object Label6: TLabel
      Left = 5
      Top = 0
      Width = 72
      Height = 13
      Caption = 'Percentual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 158
      Top = 18
      Width = 16
      Height = 13
      Caption = 'IPI:'
      Transparent = True
    end
    object Label7: TLabel
      Left = 202
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Frete:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 247
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Impostos:'
      Transparent = True
    end
    object Label9: TLabel
      Left = 299
      Top = 18
      Width = 34
      Height = 13
      Caption = 'Outros:'
      Transparent = True
    end
    object LblIPI: TLabel
      Left = 10
      Top = 78
      Width = 16
      Height = 13
      Caption = 'IPI:'
      Transparent = True
    end
    object LblFrete: TLabel
      Left = 93
      Top = 78
      Width = 27
      Height = 13
      Caption = 'Frete:'
      Transparent = True
    end
    object LblOutros: TLabel
      Left = 176
      Top = 78
      Width = 34
      Height = 13
      Caption = 'Outros:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 5
      Top = 60
      Width = 98
      Height = 13
      Caption = 'Valores em real:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 343
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Lucro:'
      Transparent = True
    end
    object Label13: TLabel
      Left = 10
      Top = 18
      Width = 87
      Height = 13
      Caption = 'Custo Fornecedor:'
      Transparent = True
    end
    object LblVenda: TLabel
      Left = 261
      Top = 78
      Width = 83
      Height = 13
      Caption = 'Venda (sugerido):'
      Transparent = True
    end
    object Label14: TLabel
      Left = 10
      Top = 137
      Width = 118
      Height = 13
      Caption = 'Custo liquido (reposi'#231#227'o):'
      Transparent = True
    end
    object Label15: TLabel
      Left = 133
      Top = 137
      Width = 34
      Height = 13
      Caption = 'Venda:'
      Transparent = True
    end
    object Label16: TLabel
      Left = 5
      Top = 120
      Width = 59
      Height = 13
      Caption = 'Calculos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 105
      Top = 18
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Transparent = True
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 56
      Width = 386
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparator_2: TBevel
      Left = 2
      Top = 116
      Width = 386
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 411
      Top = 253
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 497
      Top = 253
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 15
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtVl_Promocao: TCurrencyEdit
      Left = 227
      Top = 152
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 13
      Visible = False
    end
    object EdtPr_IPI: TCurrencyEdit
      Tag = 1
      Left = 158
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 2
      OnChange = EdtVl_CustoForChange
    end
    object EdtPr_Frete: TCurrencyEdit
      Tag = 1
      Left = 202
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 3
      OnChange = EdtVl_CustoForChange
    end
    object EdtPr_ICMS: TCurrencyEdit
      Tag = 1
      Left = 247
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 4
      OnChange = EdtVl_CustoForChange
    end
    object EdtPr_Outros: TCurrencyEdit
      Tag = 1
      Left = 299
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 5
      OnChange = EdtVl_CustoForChange
    end
    object EdtVl_IPI: TCurrencyEdit
      Left = 10
      Top = 92
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 7
      OnChange = EdtVl_CustoForChange
    end
    object EdtVl_Frete: TCurrencyEdit
      Left = 93
      Top = 92
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 8
      OnChange = EdtVl_CustoForChange
    end
    object EdtVl_Outros: TCurrencyEdit
      Left = 178
      Top = 92
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 9
      OnChange = EdtVl_CustoForChange
    end
    object EdtPr_Lucro: TCurrencyEdit
      Tag = 1
      Left = 343
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 6
      OnChange = EdtVl_CustoForChange
    end
    object EdtVl_CustoFor: TCurrencyEdit
      Left = 10
      Top = 32
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 0
      OnChange = EdtVl_CustoForChange
      OnExit = EdtVl_CustoForChange
    end
    object EdtVl_ResRep: TCurrencyEdit
      Left = 10
      Top = 152
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object EdtVl_ResVenda: TCurrencyEdit
      Left = 133
      Top = 152
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object EdtPr_Desconto: TCurrencyEdit
      Tag = 1
      Left = 105
      Top = 32
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,#0.00'
      TabOrder = 1
      OnChange = EdtVl_CustoForChange
    end
    object EdtVl_Sugerido: TCurrencyEdit
      Left = 263
      Top = 92
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = 'R$ ,0.00###;-R$ ,0.00###'
      TabOrder = 10
      OnChange = EdtVl_SugeridoChange
    end
    object BitBtnAll: TBitBtn
      Left = 6
      Top = 253
      Width = 162
      Height = 25
      Caption = '&Aplicar a todos os produtos'
      TabOrder = 16
      OnClick = BitBtnAllClick
      Glyph.Data = {binary 502 bytes}
      NumGlyphs = 2
    end
  end
end
