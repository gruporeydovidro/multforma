object FrmEntrada_ProdRural: TFrmEntrada_ProdRural
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Dados para Nota de Entrada de Produtor Rural'
  ClientHeight = 205
  ClientWidth = 605
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
    Height = 205
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 584
    Height = 205
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 175
      Width = 576
      Height = 4
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 4
      Top = 2
      Width = 194
      Height = 13
      Caption = 'N'#186' Fatura do produtor e data de emiss'#227'o:'
    end
    object Label2: TLabel
      Left = 4
      Top = 38
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label1: TLabel
      Left = 36
      Top = 38
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label11: TLabel
      Left = 99
      Top = 38
      Width = 67
      Height = 13
      Caption = 'Valor Produto:'
    end
    object Label15: TLabel
      Left = 265
      Top = 38
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label29: TLabel
      Left = 182
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label24: TLabel
      Left = 4
      Top = 73
      Width = 146
      Height = 13
      Caption = 'Observa'#231#245'es para Nota Fiscal:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 412
      Top = 178
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 497
      Top = 178
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Produtor: TCurrencyEdit
      Left = 4
      Top = 16
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtNr_ProdutorExit
    end
    object EdtDt_Emissao: TDateEdit
      Left = 70
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnExit = EdtNr_ProdutorExit
    end
    object EdtCd_Serie: TEdit
      Left = 4
      Top = 52
      Width = 27
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 2
      Text = '1'
      OnExit = EdtCd_SerieExit
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 36
      Top = 52
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
    end
    object EdtVl_Produto: TCurrencyEdit
      Left = 99
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Nota: TCurrencyEdit
      Left = 265
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 182
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object MmNota: TMemo
      Left = 4
      Top = 88
      Width = 573
      Height = 84
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 7
    end
  end
  object ADOCmdRural: TADOCommand
    CommandText = 'update'#13#10'  Entrada'#13#10#13#10'set'#13#10'  Cd_Serie         = :Cd_Serie,'#13#10'  Nr_Fatura        = :Nr_Fatura,'#13#10'  Fl_ProdutorRural = ''''1'''','#13#10'  Mm_Nota          = :Mm_Nota,'#13#10'  Vl_Produto       = :Vl_Produto,'#13#10'  Vl_Nota          = :Vl_Nota'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Entrada = :Nr_Entrada'#13#10
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Serie'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = nil?
      end
      item
        Name = 'Nr_Fatura'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Mm_Nota'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Vl_Produto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Nota'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 192
    Top = 136
  end
end
