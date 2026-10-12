object AcePrintDestination: TAcePrintDestination
  Left = 212
  Top = 130
  BorderStyle = bsDialog
  Caption = 'Op'#231#245'es de Impress'#227'o'
  ClientHeight = 133
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 353
    Height = 133
    Align = alClient
    Color = clWhite
    TabOrder = 0
    ExplicitLeft = -30
    object BvlSeparator: TBevel
      Left = 2
      Top = 95
      Width = 348
      Height = 5
      Shape = bsTopLine
    end
    object lbCopies: TLabel
      Left = 7
      Top = 4
      Width = 43
      Height = 15
      Caption = 'C'#243'pias:'
    end
    object rangegroup: TGroupBox
      Left = 118
      Top = 3
      Width = 231
      Height = 87
      Caption = ' Imprimir '
      TabOrder = 2
      object rangeAll: TRadioButton
        Left = 16
        Top = 18
        Width = 61
        Height = 16
        Caption = 'Todas'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rangeAllClick
      end
      object rangeCurrent: TRadioButton
        Left = 116
        Top = 18
        Width = 112
        Height = 16
        Caption = 'P'#225'gina Corrente'
        TabOrder = 1
        OnClick = rangeCurrentClick
      end
      object rangePages: TRadioButton
        Left = 16
        Top = 39
        Width = 117
        Height = 17
        Caption = 'P'#225'ginas (de / at'#233'):'
        TabOrder = 2
        OnClick = rangePagesClick
      end
      object StartRange: TEdit
        Left = 60
        Top = 57
        Width = 40
        Height = 23
        Enabled = False
        TabOrder = 3
      end
      object EndRange: TEdit
        Left = 99
        Top = 57
        Width = 40
        Height = 23
        Enabled = False
        TabOrder = 4
      end
    end
    object CollatedCopies: TCheckBox
      Left = 7
      Top = 57
      Width = 69
      Height = 17
      Caption = 'Collate'
      TabOrder = 1
    end
    object Copies: TEdit
      Left = 8
      Top = 20
      Width = 40
      Height = 23
      TabOrder = 0
    end
    object printersetup: TBitBtn
      Left = 3
      Top = 100
      Width = 96
      Height = 31
      Caption = 'Confi&gurar'
      TabOrder = 3
      OnClick = printersetupClick
      Glyph.Data = {binary 1154 bytes}
    end
    object btnPrint: TBitBtn
      Left = 158
      Top = 100
      Width = 96
      Height = 31
      Caption = '&Imprimir'
      Default = True
      TabOrder = 4
      OnClick = btnPrintClick
      Glyph.Data = {binary 558 bytes}
    end
    object btnCancel: TBitBtn
      Left = 255
      Top = 100
      Width = 96
      Height = 31
      Caption = '&Cancelar'
      TabOrder = 5
      Kind = bkCancel
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 133
    Align = alLeft
    TabOrder = 1
  end
  object Printsetup: TPrinterSetupDialog
    Left = 320
    Top = 48
  end
end
