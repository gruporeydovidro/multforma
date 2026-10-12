object FrmInventario_Pagina: TFrmInventario_Pagina
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Folha Inicial da Impress'#227'o'
  ClientHeight = 173
  ClientWidth = 499
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
    Height = 173
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 478
    Height = 173
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 143
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 1
      Width = 58
      Height = 13
      Caption = 'Folha inicial:'
      Transparent = True
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 146
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      ModalResult = 1
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 146
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Folha: TCurrencyEdit
      Left = 5
      Top = 15
      Width = 40
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      Value = 2.0
    end
    object CkBTributacao: TCheckBox
      Left = 5
      Top = 51
      Width = 193
      Height = 17
      Caption = 'Ordernar por tributa'#231#227'o de produtos'
      TabOrder = 1
      Visible = False
    end
  end
  object CkBZebrado: TCheckBox
    Left = 27
    Top = 150
    Width = 111
    Height = 17
    TabStop = False
    Caption = 'Imprimir "&Zebrado"'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
end
