object FrmOrcamento_Fechamento_Cheque: TFrmOrcamento_Fechamento_Cheque
  Left = 344
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cheque do Atendimento'
  ClientHeight = 220
  ClientWidth = 556
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 220
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 535
    Height = 220
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 189
      Width = 528
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 129
      Top = 78
      Width = 103
      Height = 13
      Caption = 'Cheque Inicial / Final:'
    end
    object Label4: TLabel
      Left = 97
      Top = 116
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label5: TLabel
      Left = 5
      Top = 116
      Width = 72
      Height = 13
      Caption = '1'#186' Vencimento:'
    end
    object Label6: TLabel
      Left = 5
      Top = 152
      Width = 114
      Height = 13
      Caption = 'CNPJ / CPF (Terceiros):'
    end
    object Label7: TLabel
      Left = 442
      Top = 152
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object SbBanco: TSpeedButton
      Left = 39
      Top = 56
      Width = 21
      Height = 19
      Hint = 'Seleciona o Banco'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbBancoClick
    end
    object Label2: TLabel
      Left = 238
      Top = 78
      Width = 44
      Height = 13
      Caption = 'Intervalo:'
    end
    object Label1: TLabel
      Left = 387
      Top = 78
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object Label8: TLabel
      Left = 203
      Top = 116
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 362
      Top = 192
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 448
      Top = 192
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 15
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Banco: TLabeledEdit
      Left = 5
      Top = 56
      Width = 32
      Height = 19
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Banco:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 1
      OnExit = EdtCd_BancoExit
      OnKeyDown = EdtCd_BancoKeyDown
    end
    object EdtCd_Agencia: TLabeledEdit
      Left = 5
      Top = 93
      Width = 32
      Height = 19
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Ag'#234'ncia:'
      LabelSpacing = 2
      MaxLength = 4
      TabOrder = 3
    end
    object EdtCd_Conta: TLabeledEdit
      Left = 52
      Top = 93
      Width = 70
      Height = 19
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Conta:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 4
    end
    object EdtNr_Cheque_Ini: TCurrencyEdit
      Tag = 1
      Left = 129
      Top = 93
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 5
      OnChange = EdtNr_Cheque_IniChange
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 5
      Top = 130
      Width = 87
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 9
    end
    object EdtNr_Documento: TEditMF
      Left = 5
      Top = 167
      Width = 118
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 11
      Kind = dkBoth
      Formated = True
      LockOnError = True
      Check = True
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 442
      Top = 167
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 13
    end
    object EdtNm_Cliente: TLabeledEdit
      Left = 130
      Top = 167
      Width = 308
      Height = 19
      EditLabel.Width = 234
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Cliente (Emissor do Cheque - Terceiros):'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 12
    end
    object EdtSg_Banco: TEdit
      Left = 60
      Top = 56
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtNr_Cheque_Fim: TCurrencyEdit
      Tag = 2
      Left = 183
      Top = 93
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnChange = EdtNr_Cheque_FimChange
    end
    object CbIntervalo: TComboBox
      Left = 238
      Top = 92
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      OnChange = CbIntervaloChange
      Items.Strings = (
        'Meses'
        'Quinzena'
        'Dezenas'
        'Intervalo Especifico'
      )
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 387
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
    end
    object EdtVl_Cheque: TRxCalcEdit
      Left = 97
      Top = 130
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      NumGlyphs = 2
      TabOrder = 10
    end
    object EdtVl_Saldo: TCurrencyEdit
      Left = 203
      Top = 130
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object EdtCMC7: TLabeledEdit
      Left = 5
      Top = 19
      Width = 308
      Height = 19
      EditLabel.Width = 124
      EditLabel.Height = 13
      EditLabel.Caption = 'Leitor de Cheques - CMC7'
      TabOrder = 0
      OnChange = EdtCMC7Change
    end
  end
  object ADOCmdCheque: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into #OrcPar( Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela, Cd_Banco,'
      '   Cd_Agencia, Nr_Conta, Nr_Cheque, Vl_Parcela, Dt_Vencimento, Nr_Documento,'
      '   Nm_Cliente, Nr_Telefone, Fl_Parcela )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Prazo, :Nr_Parcela,'
      '   :Cd_Banco, :Cd_Agencia, :Nr_Conta, :Nr_Cheque, :Vl_Parcela, :Dt_Vencimento,'
      '   :Nr_Documento, :Nm_Cliente, :Nr_Telefone, ''''4'''' )'
    )
    SQLUpdate.Strings = (
      'update'
      '  #OrcPar'
      ''
      'set'
      '  Cd_Banco      = :Cd_Banco,'
      '  Cd_Agencia    = :Cd_Agencia,'
      '  Nr_Conta      = :Nr_Conta,'
      '  Nr_Cheque     = :Nr_Cheque,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Nm_Cliente    = :Nm_Cliente,'
      '  Nr_Telefone   = :Nr_Telefone,'
      '  Nr_Prazo      = :Nr_PrazoNew'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Nr_Prazo      = :Nr_PrazoOld and'
      '  Nr_Parcela    = :Nr_Parcela'
      ''
    )
    Left = 26
    Top = 151
  end
  object ADODsCheque: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Parcela ) as NewPar'#13#10#13#10'from'#13#10'  #OrcPar'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Prazo     = :Nr_Prazo'
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
    Left = 59
    Top = 151
    object ADODsChequeNewPar: TSmallintField
      FieldName = 'NewPar'
    end
  end
end
