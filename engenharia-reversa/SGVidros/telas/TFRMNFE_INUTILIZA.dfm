object FrmNFe_Inutiliza: TFrmNFe_Inutiliza
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Inutiliza'#231#227'o de Numera'#231#227'o de Notas'
  ClientHeight = 199
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 199
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 518
    Height = 199
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 169
      Width = 515
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 38
      Width = 277
      Height = 13
      Caption = 'Informe o motivo da inutiliza'#231#227'o - no m'#237'nimo 15 caracteres:'
    end
    object Label4: TLabel
      Left = 3
      Top = 2
      Width = 45
      Height = 13
      Caption = 'Ano (AA):'
    end
    object Label2: TLabel
      Left = 49
      Top = 2
      Width = 27
      Height = 13
      Caption = 'Serie:'
    end
    object Label3: TLabel
      Left = 80
      Top = 2
      Width = 89
      Height = 13
      Caption = 'Nota Inicial / Final:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 345
      Top = 172
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 431
      Top = 172
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object MmJustificativa: TMemo
      Left = 4
      Top = 53
      Width = 509
      Height = 113
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object EdtNr_Ano: TCurrencyEdit
      Tag = 6
      Left = 3
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      MaxValue = 99.0
      MinValue = 10.0
      TabOrder = 0
      Value = 10.0
    end
    object EdtNr_Serie: TCurrencyEdit
      Tag = 6
      Left = 49
      Top = 17
      Width = 27
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      MaxValue = 9.0
      MinValue = 1.0
      TabOrder = 1
      Value = 1.0
    end
    object EdtNr_Inicial: TCurrencyEdit
      Tag = 6
      Left = 80
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
    end
    object EdtNr_Final: TCurrencyEdit
      Tag = 6
      Left = 143
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
    end
  end
end
