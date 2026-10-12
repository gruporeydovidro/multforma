object FrmEstoque_Acerto_Item: TFrmEstoque_Acerto_Item
  Left = 443
  Top = 312
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Acerto de Estoque'
  ClientHeight = 107
  ClientWidth = 284
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 107
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 263
    Height = 107
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 78
      Width = 258
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 69
      Height = 13
      Caption = 'Estoque Atual:'
    end
    object Label2: TLabel
      Left = 5
      Top = 42
      Width = 32
      Height = 13
      Caption = 'Sa'#237'da:'
    end
    object Label3: TLabel
      Left = 90
      Top = 42
      Width = 40
      Height = 13
      Caption = 'Entrada:'
    end
    object Label4: TLabel
      Left = 175
      Top = 42
      Width = 78
      Height = 13
      Caption = 'Saldo Desejado:'
    end
    object Label5: TLabel
      Left = 90
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 90
      Top = 80
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 176
      Top = 80
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtQt_Saida: TCurrencyEdit
      Left = 5
      Top = 56
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.###'
      TabOrder = 1
    end
    object EdtQt_Entrada: TCurrencyEdit
      Left = 90
      Top = 56
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.###'
      TabOrder = 2
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 175
      Top = 56
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.###'
      TabOrder = 3
    end
    object DbEdtSg_Unidade: TDBEdit
      Left = 90
      Top = 17
      Width = 27
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Sg_Estoque'
      DataSource = FrmEstoque_Acerto.DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtQt_Atual: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
end
