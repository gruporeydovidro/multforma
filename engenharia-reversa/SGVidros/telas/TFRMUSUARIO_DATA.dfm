object FrmUsuario_Data: TFrmUsuario_Data
  Left = 431
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Informe a Data do Sistema...'
  ClientHeight = 87
  ClientWidth = 239
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 87
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 218
    Height = 87
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 56
      Width = 208
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 23
      Height = 13
      Caption = 'Data'
      Transparent = True
    end
    object BitBtnConfirm: TBitBtn
      Left = 44
      Top = 59
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 130
      Top = 59
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_System: TDateEdit
      Left = 6
      Top = 18
      Width = 89
      Height = 19
      CheckOnExit = True
      GlyphKind = gkCustom
      Glyph.Data = {binary 1338 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
  end
end
