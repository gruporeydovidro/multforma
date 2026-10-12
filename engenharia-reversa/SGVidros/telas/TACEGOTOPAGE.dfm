object AceGotoPage: TAceGotoPage
  Left = 201
  Top = 205
  ActiveControl = PageNum
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Movimenta'#231#227'o entre p'#225'ginas'
  ClientHeight = 111
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 44
    Top = 28
    Width = 44
    Height = 16
    Hint = 'Ir para:'
    Caption = 'P'#225'gina:'
  end
  object PageNum: TMaskEdit
    Left = 120
    Top = 24
    Width = 73
    Height = 24
    EditMask = '999999;0'
    MaxLength = 6
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 60
    Width = 107
    Height = 33
    Caption = '&Confirmar'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 132
    Top = 60
    Width = 109
    Height = 33
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
end
