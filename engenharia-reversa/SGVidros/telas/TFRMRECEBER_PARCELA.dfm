object FrmReceber_Parcela: TFrmReceber_Parcela
  Left = 288
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Parcela'
  ClientHeight = 371
  ClientWidth = 679
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 371
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 658
    Height = 371
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 341
      Width = 648
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object Label2: TLabel
      Left = 54
      Top = 5
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label3: TLabel
      Left = 149
      Top = 5
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
    object Label4: TLabel
      Left = 5
      Top = 115
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label5: TLabel
      Left = 5
      Top = 77
      Width = 136
      Height = 13
      Caption = 'Ocorr'#234'ncia - Envio Banc'#225'rio:'
    end
    object Label7: TLabel
      Left = 264
      Top = 77
      Width = 30
      Height = 13
      Caption = 'Envio:'
    end
    object Label8: TLabel
      Left = 359
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Gera'#231#227'o:'
    end
    object Label6: TLabel
      Left = 5
      Top = 207
      Width = 122
      Height = 13
      Caption = 'Observa'#231#245'es para boleto:'
    end
    object Label9: TLabel
      Left = 5
      Top = 303
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label11: TLabel
      Left = 53
      Top = 303
      Width = 44
      Height = 13
      Caption = 'Intervalo:'
    end
    object Label12: TLabel
      Left = 202
      Top = 303
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object BvlSeparator1: TBevel
      Left = 3
      Top = 300
      Width = 648
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 485
      Top = 344
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 571
      Top = 344
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
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
      DialogTitle = 'Selecione a Data'
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
      TabOrder = 3
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 55
      Width = 380
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 130
      Width = 645
      Height = 75
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object CbOcorrencia: TComboBox
      Left = 5
      Top = 91
      Width = 255
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 12
      Items.Strings = (
        '01 - Remessa'
        '02 - Pedido de Baixa'
        '04 - Concess'#227'o de Abatimento'
        '05 - Cancelamento de Abatimento Concedido'
        '06 - Altera'#231#227'o de Vencimento'
        '07 - Altera'#231#227'o do "Uso da Empresa"'
        '08 - Altera'#231#227'o do "Seu N'#250'mero"'
        '09 - Protestar'
        '10 - Sustar Protesto de Manter em Carteira'
        '11 - N'#227'o Cobrar Juros de Mora'
        '18 - Sustar Protesto'
        '33 - Entrega Franco de Pagamento'
        '34 - Pedido de Baixa por pagamento em carteira'
      )
    end
    object EdtDt_Envio: TDateEdit
      Left = 264
      Top = 91
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 13
    end
    object EdtDt_Geracao: TDateEdit
      Left = 359
      Top = 91
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 14
    end
    object MmBoleto: TMemo
      Left = 5
      Top = 222
      Width = 645
      Height = 75
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object CbIntervalo: TComboBox
      Left = 53
      Top = 317
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Meses'
      OnChange = CbIntervaloChange
      Items.Strings = (
        'Meses'
        'Quinzena'
        'Dezenas'
        'Semanal'
        'Intervalo Especifico'
      )
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 202
      Top = 317
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
    end
    object EdtNr_Parcelas: TRxSpinEdit
      Left = 6
      Top = 317
      Width = 44
      Height = 19
      Decimal = 0
      MaxValue = 32000.0
      MinValue = 1.0
      Value = 1.0
      TabOrder = 7
    end
  end
  object ADODsPar: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  max( Nr_Parcela ) as NewParcela'
      ''
      'from'
      '  Receber_Parcela'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber'
    )
    SQLOther2.Strings = (
      'select'
      '  A.Dt_Vencimento, A.Vl_Parcela, A.Cd_Portador, B.Nm_Portador, A.Mm_Observacao,'
      '  A.Cd_Envio, A.Dt_EnvioBanco, A.Dt_Geracao, A.Mm_Boleto'
      ''
      'from'
      '  Receber_Parcela A'
      ''
      'inner join'
      '  Portador B'
      'on'
      '  B.Cd_Portador = A.Cd_Portador'
      ''
      'where'
      '  A.Cd_Filial  = :Cd_Filial and'
      '  A.Nr_Receber = :Nr_Receber and'
      '  A.Nr_Parcela = :Nr_Parcela'
    )
    SQLOther3.Strings = (
      'select'
      '  sum( Vl_Parcela ) as Vl_Total'
      ''
      'from'
      '  Receber_Parcela'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber'
    )
    Left = 28
    Top = 338
  end
  object ADOCmdPar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      ''
    )
    SQLOther0.Strings = (
      '-- Inclus'#227'o da parcela'
      'insert into Receber_Parcela( Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento,'
      '   Vl_Parcela, Cd_Portador, Mm_Observacao, Cd_Envio, Dt_EnvioBanco,'
      '   Nr_DoctoBanco, Dt_Geracao, Vl_Recebido, Id_Parcela, Mm_Boleto )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, :Dt_Vencimento, :Vl_Parcela,'
      '   :Cd_Portador, :Mm_Observacao, :Cd_Envio, :Dt_EnvioBanco, :Nr_DoctoBanco,'
      '   :Dt_Geracao, 0, :Id_Parcela, :Mm_Boleto )'
    )
    SQLOther1.Strings = (
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, 1, ''''1'''', :Dt_Lancamento,'
      '   :Vl_Parcela, :Cd_Usuario )'
    )
    SQLOther2.Strings = (
      'update'
      '  Receber_Parcela'
      ''
      'set'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Cd_Envio      = :Cd_Envio,'
      '  Dt_EnvioBanco = :Dt_EnvioBanco,'
      '  Nr_DoctoBanco = :Nr_DoctoBanco,'
      '  Dt_Geracao    = :Dt_Geracao,'
      '  Mm_Observacao = :Mm_Observacao,'
      '  Mm_Boleto     = :Mm_Boleto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther3.Strings = (
      'update'
      '  Receber_Parcela'
      ''
      'set'
      '  Cd_Envio      = :Cd_Envio,'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Dt_EnvioBanco = :Dt_EnvioBanco,'
      '  Nr_DoctoBanco = :Nr_DoctoBanco,'
      '  Dt_Geracao    = :Dt_Geracao,'
      '  Mm_Observacao = :Mm_Observacao,'
      '  Id_Parcela    = :Id_Parcela,'
      '  Mm_Boleto     = :Mm_Boleto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther4.Strings = (
      'update'
      '  Receber_Historico'
      ''
      'set'
      '  Vl_Lancamento = :Vl_Parcela,'
      '  Cd_Usuario    = :Cd_Usuario'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Receber    = :Nr_Receber and'
      '  Nr_Parcela    = :Nr_Parcela and'
      '  Nr_Lancamento = 1'
    )
    Left = 58
    Top = 338
  end
end
