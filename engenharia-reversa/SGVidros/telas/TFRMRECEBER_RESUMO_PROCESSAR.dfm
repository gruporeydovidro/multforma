object FrmReceber_Resumo_Processar: TFrmReceber_Resumo_Processar
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Processar Resumo de Recebimento (Aquivo Retorno)'
  ClientHeight = 270
  ClientWidth = 693
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
    Height = 270
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 672
    Height = 270
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 240
      Width = 667
      Height = 5
      Shape = bsTopLine
    end
    object Label16: TLabel
      Left = 6
      Top = 64
      Width = 167
      Height = 13
      Caption = 'Conta Corrente (Controle Banc'#225'rio):'
    end
    object SbConta: TSpeedButton
      Tag = 1
      Left = 50
      Top = 79
      Width = 22
      Height = 19
      Hint = 'Consulta de Conta'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbContaClick
    end
    object Label17: TLabel
      Left = 384
      Top = 63
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object SbHistCredito: TSpeedButton
      Tag = 2
      Left = 46
      Top = 114
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistCreditoClick
    end
    object Label20: TLabel
      Left = 6
      Top = 99
      Width = 95
      Height = 13
      Caption = 'Hist'#243'rico de Cr'#233'dito:'
    end
    object Label21: TLabel
      Left = 356
      Top = 99
      Width = 54
      Height = 13
      Caption = 'Bloqueado:'
    end
    object Label22: TLabel
      Left = 428
      Top = 99
      Width = 65
      Height = 13
      Caption = 'Compensado:'
    end
    object Label1: TLabel
      Left = 3
      Top = 1
      Width = 301
      Height = 13
      Caption = 'Incluir Juros, Multa, Creditos, Desconto e Tarifas na importa'#231#227'o:'
    end
    object BvlSeparator_1: TBevel
      Left = 1
      Top = 43
      Width = 667
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 6
      Top = 45
      Width = 292
      Height = 13
      Caption = 'Lan'#231'amento em Conta Corrente - Controle Banc'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 307
      Top = 1
      Width = 114
      Height = 13
      Caption = 'Data da Movimenta'#231#227'o:'
    end
    object Label4: TLabel
      Left = 425
      Top = 1
      Width = 224
      Height = 42
      AutoSize = False
      Caption = '(Deixe a data em branco para gerar o movimento pela data do arquivo retorno)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object SbHistDebito: TSpeedButton
      Tag = 1
      Left = 46
      Top = 150
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistCreditoClick
    end
    object Label5: TLabel
      Left = 6
      Top = 135
      Width = 93
      Height = 13
      Caption = 'Hist'#243'rico de D'#233'bito:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 499
      Top = 243
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 11
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 585
      Top = 243
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 12
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Conta: TEdit
      Left = 72
      Top = 79
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtId_Conta: TCurrencyEdit
      Tag = 5
      Left = 6
      Top = 79
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      OnExit = EdtId_ContaExit
      OnKeyDown = EdtId_ContaKeyDown
    end
    object CbTpCredito: TComboBox
      Left = 384
      Top = 78
      Width = 170
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        '1 - Dep'#243'sito em Dinheiro'
        '2 - Dep'#243'sito em Cheque'
        '3 - Tranfer'#234'ncia (Entrada)'
      )
    end
    object EdtCd_HistCredito: TCurrencyEdit
      Tag = 2
      Left = 6
      Top = 114
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 5
      OnExit = EdtCd_HistCreditoExit
      OnKeyDown = EdtId_ContaKeyDown
    end
    object EdtNm_HistCredito: TEdit
      Left = 69
      Top = 114
      Width = 282
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CbBloqueado: TComboBox
      Left = 356
      Top = 113
      Width = 66
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbCompensado: TComboBox
      Left = 428
      Top = 113
      Width = 66
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CkBUnico: TCheckBox
      Left = 448
      Top = 54
      Width = 112
      Height = 17
      Caption = '&Lan'#231'amento '#250'nico'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
    end
    object CbIncluir: TComboBox
      Left = 3
      Top = 16
      Width = 54
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtDt_Movto: TDateEdit
      Left = 307
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
    end
    object EdtCd_HistDebito: TCurrencyEdit
      Tag = 3
      Left = 6
      Top = 150
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
      OnExit = EdtCd_HistCreditoExit
      OnKeyDown = EdtId_ContaKeyDown
    end
    object EdtNm_HistDebito: TEdit
      Left = 69
      Top = 150
      Width = 282
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object ADOCmdLancto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'declare'
      '  @Id_Conta SmallInt,'
      '  @Vl_Saldo Numeric( 12, 3 ),'
      '  @Vl_Bloqueado Numeric( 12, 3 )'
      ''
      'select'
      '  @Id_Conta = :Id_Conta'
      ''
      '-------------------- Inclus'#227'o de CCorrente'
      'insert into CCorrente_Lancto( Id_Conta, Nr_Lancamento, Tp_Lancamento,'
      '   Dt_Lancamento, Vl_Lancamento, Cd_Historico, Ds_Lancamento, Nr_Documento,'
      '   Fl_Bloqueado, Fl_Compensado, Nr_Resumo )'
      ''
      'values( @Id_Conta, :Nr_Lancamento, :Tp_Lancamento, :Dt_Lancamento,'
      '   :Vl_Lancamento, :Cd_Historico, :Ds_Lancamento, :Nr_Documento,'
      '   :Fl_Bloqueado, :Fl_Compensado, :Nr_Resumo )'
    )
    SQLOther1.Strings = (
      'insert into Receber_Historico( Cd_Usuario, Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Resumo,'
      '  Tp_Lancamento, Dt_Lancamento, Nr_Lancamento, Vl_Lancamento )'
      ''
      'select'
      '  :Cd_Usuario,'
      '  case RD.Cd_Filial'
      '    when 0 then 1'
      '    else RD.Cd_Filial'
      '  end as Cd_Filial, RD.Nr_Receber, RD.Nr_Parcela, @Nr_Resumo, @Tp_Lancamento,'
      '  RD.Dt_Ocorrencia, '
      '  ('
      '  select'
      '    Coalesce( Max( Nr_Lancamento ), 0 ) + 1'
      ''
      '  from'
      '    Receber_Historico RH'
      ''
      '  where'
      '    RH.Nr_Receber = RD.Nr_Receber and'
      '    RH.Nr_Parcela = RD.Nr_Parcela'
      '  ),'
    )
    SQLOther2.Strings = (
      'update'
      '  Receber_Resumo_Dados'
      ''
      'set'
      '  Fl_Baixa = :Fl_Baixa'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo and'
      '  Nr_Linha  = :Nr_Linha'
    )
    Left = 75
    Top = 172
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Receber_Resumo( Nr_Resumo, Dt_Resumo, Cd_Portador, Nm_Arquivo,'
      '  Fl_Processo, Mm_Observacao )'
      'values( :Nr_Resumo, :Dt_Resumo, :Cd_Portador, :Nm_Arquivo, ''''1'''', :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Cd_Portador   = :Cd_Portador,'
      '  Nm_Arquivo    = :Nm_Arquivo,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Nr_Resumo     = :Nr_Resumo'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Cidade'
      ''
      'where'
      '  Cd_Cidade = :Cd_Cidade'
    )
    SQLOther1.Strings = (
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = :Fl_Processo,'
      '  Dt_Processamento = :Dt_Processamento'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo'
    )
    SQLOther2.Strings = (
      '-- Apaga registros da importa'#231#227'o anterior'
      'delete from'
      '  Receber_Resumo_Dados'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo'
    )
    SQLOther3.Strings = (
      'insert into Receber_Resumo_Dados( Nr_Resumo, Nr_Linha, Cd_Filial, Nr_Receber,'
      '  Nr_Parcela, Nr_DoctoBanco, Cd_Ocorrencia, Dt_Ocorrencia, Vl_Parcela,'
      '  Vl_TarifaCobranca, Vl_Despesas, Vl_JurosCartorio, Vl_Multa, Vl_Abatimento,'
      '  Vl_Desconto, Vl_Cobrado, Vl_Juros, Vl_Creditos, Ds_Motivo, Fl_Baixa )'
      'values( :Nr_Resumo, :Nr_Linha, :Cd_Filial, :Nr_Receber, :Nr_Parcela,'
      '  :Nr_DoctoBanco, :Cd_Ocorrencia, :Dt_Ocorrencia, :Vl_Parcela,'
      '  :Vl_TarifaCobranca, :Vl_Despesas, :Vl_JurosCartorio, :Vl_Multa,'
      '  :Vl_Abatimento, :Vl_Desconto, :Vl_Cobrado, :Vl_Juros, :Vl_Creditos,'
      '  :Ds_Motivo, :Fl_Baixa )'
    )
    SQLOther4.Strings = (
      '-------------------- Abre o resumo'
      '-------------------- Apaga os historicos'
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
      ''
      '-------------------- Apaga os lan'#231'amentos no controle bancario'
      'delete from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo'
      ''
      '-------------------- Atualiza o resumo'
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = ''''2'''','
      '  Dt_Processamento = null'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
    )
    SQLOther5.Strings = (
      '/* Cancela o resumo */'
      '-- Apaga os historicos'
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
      ''
      '-- Atualiza o resumo'
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = ''''4'''','
      '  Dt_Processamento = null'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo'
    )
    Left = 34
    Top = 172
  end
  object ADODsLancto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = '-------------------- Lan'#231'amento de CCorrente'#13#10'select'#13#10'  max( Nr_Lancamento ) as NewLancto'#13#10#13#10'from'#13#10'  CCorrente_Lancto'#13#10#13#10'where'#13#10'  Id_Conta      = :Id_Conta'
    Parameters = <
      item
        Name = 'Id_Conta'
        Size = -1
        Value = nil?
      end>
    Left = 106
    Top = 172
  end
end
