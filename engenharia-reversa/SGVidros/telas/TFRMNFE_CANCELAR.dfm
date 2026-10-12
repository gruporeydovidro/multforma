object FrmNFe_Cancelar: TFrmNFe_Cancelar
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Motivo do Cancelamento'
  ClientHeight = 162
  ClientWidth = 539
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
    Height = 162
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 518
    Height = 162
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 132
      Width = 515
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 1
      Width = 292
      Height = 13
      Caption = 'Informe o motivo do cancelamento - no m'#237'nimo 15 caracteres:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 345
      Top = 135
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 431
      Top = 135
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object MmJustificativa: TMemo
      Left = 4
      Top = 16
      Width = 509
      Height = 113
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
