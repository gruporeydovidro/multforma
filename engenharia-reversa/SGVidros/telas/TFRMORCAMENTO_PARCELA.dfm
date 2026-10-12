object FrmOrcamento_Parcela: TFrmOrcamento_Parcela
  Left = 422
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parcelas'
  ClientHeight = 256
  ClientWidth = 581
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 256
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 560
    Height = 256
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 5
      Top = 226
      Width = 551
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 30
      Height = 13
      Caption = 'Prazo:'
    end
    object Label2: TLabel
      Left = 50
      Top = 3
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label10: TLabel
      Left = 5
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label3: TLabel
      Left = 145
      Top = 3
      Width = 81
      Height = 13
      Caption = 'Valor da Parcela:'
    end
    object Label4: TLabel
      Left = 5
      Top = 78
      Width = 322
      Height = 13
      Caption = 'N'#250'mero de autoriza'#231#227'o de pagamento (Cart'#245'es de D'#233'bito / Cr'#233'dito):'
    end
    object BitBtnConfirm: TBitBtn
      Left = 387
      Top = 229
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 473
      Top = 229
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Prazo: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnExit = EdtNr_PrazoExit
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 50
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnExit = EdtNr_PrazoExit
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 5
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 54
      Width = 297
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Parcela: TRxCalcEdit
      Left = 145
      Top = 17
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      NumGlyphs = 2
      TabOrder = 2
    end
    object EdtcAut: TEdit
      Left = 5
      Top = 91
      Width = 121
      Height = 19
      TabOrder = 5
    end
  end
  object ADOCmdParcela: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into TableName( Cd_Filial, Nr_Orcamento, Cd_Portador, Nr_Prazo,'
      '  Dt_Vencimento, Vl_Parcela, Fl_Parcela, Nr_Parcela, cAut )'
      'values( :Cd_Filial, :Nr_Orcamento, :Cd_Portador, :Nr_Prazo,'
      '  :Dt_Vencimento, :Vl_Parcela, ''''2'''', :Nr_Parcela, :cAut )'
    )
    SQLUpdate.Strings = (
      'update'
      '  TableName'
      ''
      'set'
      '  Nr_Prazo      = :Nr_Prazo_New,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  cAut          = :cAut   '
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
    )
    SQLOther0.Strings = (
      'insert into TableName( Cd_Filial, Nr_Orcamento, Cd_Portador, Nr_Prazo,'
      '  Dt_Vencimento, Vl_Parcela )'
      'values( :Cd_Filial, :Nr_Orcamento, :Cd_Portador, :Nr_Prazo,'
      '  :Dt_Vencimento, :Vl_Parcela )'
      ''
    )
    SQLOther1.Strings = (
      'update'
      '  TableName'
      ''
      'set'
      '  Nr_Prazo      = :Nr_Prazo_New,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  cAut          = :cAut   '
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
      ''
    )
    Left = 301
    Top = 10
  end
  object ADODsParFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Filial'#13#10#13#10'from'#13#10'  Orcamento_Parcela'#13#10#13#10'where'#13#10'  Cd_Filial   = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Prazo    = :Nr_Prazo'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Prazo'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 330
    Top = 10
  end
  object ADODsParNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Parcela ) as Nr_Parcela'#13#10#13#10'from'#13#10'  TableName'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Prazo     = :Nr_Prazo'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Prazo'
        Size = -1
        Value = nil?
      end>
    Left = 361
    Top = 10
    object ADODsParNewnr_parcela: TSmallintField
      FieldName = 'nr_parcela'
    end
  end
end
