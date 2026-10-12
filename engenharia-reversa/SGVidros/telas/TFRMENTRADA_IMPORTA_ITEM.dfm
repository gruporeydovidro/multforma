object FrmEntrada_Importa_Item: TFrmEntrada_Importa_Item
  Left = 440
  Top = 386
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item da Importa'#231#227'o'
  ClientHeight = 137
  ClientWidth = 372
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
    Height = 137
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 351
    Height = 137
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 106
      Width = 345
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label2: TLabel
      Left = 88
      Top = 39
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label6: TLabel
      Left = 3
      Top = 1
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 178
      Top = 110
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 264
      Top = 110
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 3
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 1
    end
    object EdtQt_Entrada: TCurrencyEdit
      Left = 88
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,###.###'
      TabOrder = 2
    end
    object CbEstoque: TComboBox
      Left = 3
      Top = 16
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
  end
end
