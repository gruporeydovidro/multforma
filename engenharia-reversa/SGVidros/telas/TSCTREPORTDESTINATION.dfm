object sctReportDestination: TsctReportDestination
  Left = 174
  Top = 337
  BorderStyle = bsDialog
  Caption = 'Destino da Impress'#227'o'
  ClientHeight = 175
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
    Height = 175
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 3
      Top = 137
      Width = 343
      Height = 5
      Shape = bsTopLine
    end
    object lbCopies: TLabel
      Left = 8
      Top = 91
      Width = 43
      Height = 15
      Alignment = taRightJustify
      Caption = 'C'#243'pias:'
    end
    object destgroup: TGroupBox
      Left = 8
      Top = 3
      Width = 143
      Height = 85
      Caption = 'Destino'
      TabOrder = 0
      object goPrinter: TRadioButton
        Left = 13
        Top = 25
        Width = 112
        Height = 20
        Caption = 'I&mpressora'
        TabOrder = 0
      end
      object goScreen: TRadioButton
        Left = 13
        Top = 51
        Width = 112
        Height = 20
        Caption = 'V'#237'deo'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object rangegroup: TGroupBox
      Left = 203
      Top = 3
      Width = 142
      Height = 85
      Caption = ' Imprimir '
      TabOrder = 1
      object rangeAll: TRadioButton
        Left = 13
        Top = 22
        Width = 123
        Height = 17
        Caption = 'Todas as p'#225'ginas'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rangeAllClick
      end
      object rangePages: TRadioButton
        Left = 14
        Top = 40
        Width = 118
        Height = 17
        Caption = 'P'#225'ginas (de / at'#233')'
        TabOrder = 1
        OnClick = rangePagesClick
      end
      object StartRange: TEdit
        Left = 31
        Top = 57
        Width = 37
        Height = 23
        Enabled = False
        TabOrder = 2
      end
      object EndRange: TEdit
        Left = 73
        Top = 57
        Width = 37
        Height = 23
        Enabled = False
        TabOrder = 3
      end
    end
    object Copies: TEdit
      Left = 8
      Top = 109
      Width = 40
      Height = 23
      TabOrder = 2
    end
    object CollatedCopies: TCheckBox
      Left = 283
      Top = 116
      Width = 63
      Height = 17
      Caption = 'Collate'
      TabOrder = 3
    end
    object printersetup: TBitBtn
      Left = 3
      Top = 141
      Width = 96
      Height = 31
      Caption = 'Confi&gurar'
      TabOrder = 4
      OnClick = printersetupClick
      Glyph.Data = {binary 1154 bytes}
    end
    object btnPrint: TBitBtn
      Left = 153
      Top = 141
      Width = 96
      Height = 31
      Caption = '&Imprimir'
      Default = True
      TabOrder = 5
      OnClick = btnPrintClick
      Glyph.Data = {binary 558 bytes}
    end
    object btnCancel: TBitBtn
      Left = 255
      Top = 141
      Width = 96
      Height = 31
      Caption = '&Cancelar'
      TabOrder = 6
      Kind = bkCancel
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 175
    Align = alLeft
    TabOrder = 1
  end
  object Printsetup: TPrinterSetupDialog
    Left = 237
    Top = 106
  end
end
