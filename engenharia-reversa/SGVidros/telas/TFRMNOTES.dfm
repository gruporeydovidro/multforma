object FrmNotes: TFrmNotes
  Left = 326
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Anota'#231#245'es'
  ClientHeight = 227
  ClientWidth = 611
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 590
    Height = 227
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 3
      Top = 197
      Width = 583
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Anota'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 417
      Top = 200
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 503
      Top = 200
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object MmNotes: TMemo
      Left = 5
      Top = 19
      Width = 578
      Height = 174
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 227
    Align = alLeft
    TabOrder = 1
  end
end
