object FrmCadEditor_Texto: TFrmCadEditor_Texto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Texto'
  ClientHeight = 123
  ClientWidth = 386
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 123
    Align = alLeft
    TabOrder = 1
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 365
    Height = 123
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 3
      Top = 93
      Width = 358
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 30
      Height = 13
      Caption = 'Texto:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 189
      Top = 96
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 275
      Top = 96
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object MmTexto: TMemo
      Left = 5
      Top = 20
      Width = 291
      Height = 66
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object BitBtnFonte: TBitBtn
      Left = 10
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Fonte'
      TabOrder = 1
      OnClick = BitBtnFonteClick
      Glyph.Data = {binary 1338 bytes}
    end
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [fdEffects, fdForceFontExist]
    Left = 321
    Top = 20
  end
end
