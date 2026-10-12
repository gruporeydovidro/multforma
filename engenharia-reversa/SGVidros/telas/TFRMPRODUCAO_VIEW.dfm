object FrmProducao_View: TFrmProducao_View
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Itens em Produ'#231#227'o'
  ClientHeight = 568
  ClientWidth = 925
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
    Height = 568
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 464
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 904
    Height = 568
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 696
    ExplicitHeight = 464
    object BvlSeparator: TBevel
      Left = 3
      Top = 433
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 436
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 436
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
  end
end
