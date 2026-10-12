object FrmCarga_Ordem: TFrmCarga_Ordem
  Left = 342
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ordem de Aloca'#231#227'o'
  ClientHeight = 138
  ClientWidth = 333
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
    Height = 138
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 312
    Height = 138
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 108
      Width = 304
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object Label2: TLabel
      Left = 5
      Top = 37
      Width = 38
      Height = 13
      Caption = 'M'#237'nimo:'
    end
    object Label3: TLabel
      Left = 60
      Top = 37
      Width = 39
      Height = 13
      Caption = 'M'#225'ximo:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 138
      Top = 111
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      ModalResult = 1
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 224
      Top = 111
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Ordem: TRxSpinEdit
      Left = 5
      Top = 15
      Width = 70
      Height = 19
      TabOrder = 0
    end
    object EdtNr_Minimo: TCurrencyEdit
      Left = 5
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtNr_Maximo: TCurrencyEdit
      Left = 60
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
end
