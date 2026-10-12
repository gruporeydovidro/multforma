object FrmPagar_Parcela: TFrmPagar_Parcela
  Left = 346
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Parcela'
  ClientHeight = 272
  ClientWidth = 545
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
    Height = 272
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 524
    Height = 272
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 242
      Width = 516
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object Label2: TLabel
      Left = 54
      Top = 4
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label3: TLabel
      Left = 149
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label10: TLabel
      Left = 5
      Top = 40
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 55
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
    object Label5: TLabel
      Left = 370
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label4: TLabel
      Left = 5
      Top = 77
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label6: TLabel
      Left = 244
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Valor de Mora:'
    end
    object Label7: TLabel
      Left = 329
      Top = 4
      Width = 38
      Height = 13
      Caption = '% Mora:'
    end
    object Label9: TLabel
      Left = 4
      Top = 203
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label11: TLabel
      Left = 52
      Top = 203
      Width = 44
      Height = 13
      Caption = 'Intervalo:'
    end
    object Label12: TLabel
      Left = 201
      Top = 203
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object BvlSeparator1: TBevel
      Left = 2
      Top = 200
      Width = 516
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 351
      Top = 245
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 437
      Top = 245
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 13
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Parcela: TRxSpinEdit
      Left = 5
      Top = 18
      Width = 44
      Height = 19
      Decimal = 0
      TabOrder = 0
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 54
      Top = 18
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtVl_Parcela: TRxCalcEdit
      Left = 149
      Top = 18
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##,##0.00'
      NumGlyphs = 2
      TabOrder = 2
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 5
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 55
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
      TabOrder = 6
    end
    object EdtNr_Documento: TEdit
      Left = 371
      Top = 55
      Width = 121
      Height = 19
      MaxLength = 15
      TabOrder = 7
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 92
      Width = 511
      Height = 105
      ScrollBars = ssVertical
      TabOrder = 8
    end
    object EdtVl_Mora: TCurrencyEdit
      Left = 244
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 3
    end
    object EdtPr_Mora: TCurrencyEdit
      Left = 329
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 4
    end
    object CbIntervalo: TComboBox
      Left = 52
      Top = 217
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'Meses'
      Items.Strings = (
        'Meses'
        'Quinzena'
        'Dezenas'
        'Semanal'
        'Intervalo Especifico'
      )
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 201
      Top = 217
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
    end
    object EdtNr_Parcelas: TRxSpinEdit
      Left = 5
      Top = 217
      Width = 44
      Height = 19
      Decimal = 0
      MaxValue = 32000.0
      MinValue = 1.0
      Value = 1.0
      TabOrder = 9
    end
  end
  object ADODsPar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  max( Nr_Parcela ) as NewParcela'
      ''
      'from'
      '  Pagar_Parcela'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Pagar  = :Nr_Pagar'
    )
    SQLOther2.Strings = (
      'select'
      '  A.Dt_Vencimento, A.Vl_Parcela, A.Mm_Observacao, A.Cd_Portador,'
      '  B.Nm_Portador, A.Nr_Documento, A.Pr_Mora, A.Vl_Mora'
      ''
      'from'
      '  Pagar_Parcela A'
      ''
      'inner join'
      '  Portador B'
      'on'
      '  B.Cd_Portador = A.Cd_Portador'
      ''
      'where'
      '  A.Cd_Filial  = :Cd_Filial and'
      '  A.Nr_Pagar   = :Nr_Pagar and'
      '  A.Nr_Parcela = :Nr_Parcela'
    )
    SQLOther3.Strings = (
      'select'
      '  sum( Vl_Parcela ) as Vl_Total'
      ''
      'from'
      '  Pagar_Parcela'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Pagar  = :Nr_Pagar'
    )
    Left = 28
    Top = 242
  end
  object ADOCmdPar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      ''
    )
    SQLOther0.Strings = (
      '-- Inclus'#227'o da parcela'
      'insert into Pagar_Parcela( Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento,'
      '   Vl_Parcela, Cd_Portador, Nr_Documento, Mm_Observacao, Vl_Mora, Pr_Mora )'
      'values( :Cd_Filial, :Nr_Pagar, :Nr_Parcela, :Dt_Vencimento, :Vl_Parcela,'
      '   :Cd_Portador, :Nr_Documento, :Mm_Observacao, :Vl_Mora, :Pr_Mora )'
    )
    SQLOther1.Strings = (
      '-- Incluir Hist'#243'rico'
      'insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Pagar, :Nr_Parcela, 1, ''''1'''', :Dt_Lancamento,'
      '   :Vl_Parcela, :Cd_Usuario )'
    )
    SQLOther2.Strings = (
      'update'
      '  Pagar_Parcela'
      ''
      'set'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Mm_Observacao = :Mm_Observacao,'
      '  Vl_Mora       = :Vl_Mora,'
      '  Pr_Mora       = :Pr_Mora'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Pagar   = :Nr_Pagar and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther3.Strings = (
      'update'
      '  Pagar_Parcela'
      ''
      'set'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Mm_Observacao = :Mm_Observacao,'
      '  Vl_Mora       = :Vl_Mora,'
      '  Pr_Mora       = :Pr_Mora'
      ''
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Pagar   = :Nr_Pagar and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther4.Strings = (
      'update'
      '  Pagar_Historico'
      ''
      'set'
      '  Vl_Lancamento = :Vl_Parcela,'
      '  Cd_Usuario    = :Cd_Usuario'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Pagar      = :Nr_Pagar and'
      '  Nr_Parcela    = :Nr_Parcela and'
      '  Nr_Lancamento = 1'
    )
    Left = 58
    Top = 242
  end
end
