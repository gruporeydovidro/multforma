object FrmReceber_Lancto: TFrmReceber_Lancto
  Left = 307
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lan'#231'amentos no Contas '#224' Receber'
  ClientHeight = 282
  ClientWidth = 697
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 282
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 676
    Height = 282
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 114
      Width = 510
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 3
      Top = 4
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 3
      Top = 40
      Width = 57
      Height = 13
      Caption = 'Pagamento:'
    end
    object Label1: TLabel
      Left = 90
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label4: TLabel
      Left = 175
      Top = 40
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label5: TLabel
      Left = 3
      Top = 76
      Width = 75
      Height = 13
      Caption = 'Outros Cr'#233'ditos:'
    end
    object Label6: TLabel
      Left = 90
      Top = 76
      Width = 56
      Height = 13
      Caption = 'Abatimento:'
    end
    object Label7: TLabel
      Left = 175
      Top = 76
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label8: TLabel
      Left = 260
      Top = 76
      Width = 73
      Height = 13
      Caption = 'Outros D'#233'bitos:'
    end
    object Label19: TLabel
      Left = 3
      Top = 136
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 45
      Top = 152
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 250
      Width = 667
      Height = 5
      Shape = bsTopLine
    end
    object Label14: TLabel
      Left = 100
      Top = 3
      Width = 102
      Height = 13
      Caption = 'Documento de Baixa:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 503
      Top = 255
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 589
      Top = 255
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 14
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Lancto: TDateEdit
      Left = 3
      Top = 18
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtVl_Pagamento: TCurrencyEdit
      Left = 3
      Top = 54
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 2
    end
    object EdtVl_Juros: TCurrencyEdit
      Left = 90
      Top = 54
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 3
    end
    object EdtVl_Multa: TCurrencyEdit
      Left = 175
      Top = 54
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 4
    end
    object EdtVl_Creditos: TCurrencyEdit
      Left = 3
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 5
    end
    object EdtVl_Abatimento: TCurrencyEdit
      Left = 90
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 6
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 175
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 7
    end
    object EdtVl_Debito: TCurrencyEdit
      Left = 260
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 8
    end
    object CkBCaixa: TCheckBox
      Left = 3
      Top = 117
      Width = 157
      Height = 17
      Caption = 'Gerar Lan'#231'amento no Caixa'
      TabOrder = 9
      OnClick = CkBCaixaClick
    end
    object EdtCd_Historico: TCurrencyEdit
      Left = 3
      Top = 152
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 68
      Top = 152
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
      TabOrder = 11
    end
    object EdtNr_Documento: TLabeledEdit
      Left = 381
      Top = 152
      Width = 130
      Height = 19
      AutoSelect = False
      EditLabel.Width = 113
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero do Documento:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 12
    end
    object EdtNr_DoctoBaixa: TEdit
      Left = 100
      Top = 18
      Width = 308
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object ADOCmdPar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario, Nr_DoctoBaixa )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, :Nr_Lancamento, :Tp_Lancamento,'
      '   :Dt_Lancamento, :Vl_Lancamento, :Cd_Usuario, :Nr_DoctoBaixa )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Receber_Historico'
      ''
      'set'
      '  Dt_Lancamento = :Dt_Lancamento,'
      '  Vl_Lancamento = :Vl_Lancamento,'
      '  Cd_Usuario    = :Cd_Usuario,'
      '  Nr_DoctoBaixa = :Nr_DoctoBaixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Receber    = :Nr_Receber and'
      '  Nr_Parcela    = :Nr_Parcela and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    SQLOther0.Strings = (
      '-- Insere lan'#231'amento no caixa'
      'insert into Caixa( Cd_Filial, Nr_Lancamento, Dt_Lancamento,'
      '  Tp_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Historico, Nr_Documento,'
      '  Nr_Receber, Nr_Receber_Par, Nr_Receber_Lancto, Cd_Usuario )'
      ''
      'values( :Cd_Filial, :Nr_Lancamento, :Dt_Lancamento,'
      '  ''''1'''', :Vl_Lancamento, :Ds_Lancamento, :Cd_Historico, :Nr_Documento,'
      '  :Nr_Receber, :Nr_Receber_Par, :Nr_Receber_Lancto, :Cd_Usuario )'
    )
    SQLOther1.Strings = (
      '-- Atualiza lan'#231'amento no caixa'
      'update'
      '  Caixa'
      ''
      'set'
      '  Vl_Lancamento = :Vl_Lancamento,'
      '  Dt_Lancamento = :Dt_Lancamento,'
      '  Ds_Lancamento = :Ds_Lancamento,'
      '  Cd_Historico  = :Cd_Historico,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Cd_Usuario    = :Cd_Usuario'
      ''
      'where'
      '  Cd_Filial         = :Cd_Filial and'
      '  Nr_Receber        = :Nr_Receber and'
      '  Nr_Receber_Par    = :Nr_Parcela and'
      '  Nr_Receber_Lancto = :Nr_Receber_Lancto'
    )
    Left = 25
    Top = 176
  end
  object ADODsPar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '-- Pr'#243'ximo lan'#231'amento do Hist'#243'rico'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Receber_Historico'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther1.Strings = (
      '-- Proximo lan'#231'amento no caixa'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial '
    )
    Left = 56
    Top = 176
  end
end
