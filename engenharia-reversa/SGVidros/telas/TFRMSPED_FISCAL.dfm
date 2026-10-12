object FrmSPED_Fiscal: TFrmSPED_Fiscal
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gera'#231#227'o do SPED Fiscal'
  ClientHeight = 369
  ClientWidth = 775
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 369
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 754
    Height = 369
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 338
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 123
      Top = 37
      Width = 123
      Height = 13
      Caption = 'Apresenta'#231#227'o do Arquivo:'
    end
    object SbEntrada: TSpeedButton
      Tag = 1
      Left = 289
      Top = 86
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 166
      Height = 13
      Caption = 'M'#234's/Ano para gera'#231#227'o do arquivo:'
    end
    object Label6: TLabel
      Left = 615
      Top = 37
      Width = 69
      Height = 13
      Caption = 'Gerar Entrada:'
      Visible = False
    end
    object Label7: TLabel
      Left = 687
      Top = 37
      Width = 61
      Height = 13
      Caption = 'Gerar Sa'#237'da:'
      Visible = False
    end
    object LblInventario: TLabel
      Left = 233
      Top = 2
      Width = 110
      Height = 13
      Caption = 'Incluir invent'#225'rio Anual:'
    end
    object Label8: TLabel
      Left = 174
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Industria:'
    end
    object Label5: TLabel
      Left = 220
      Top = 225
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object Label9: TLabel
      Left = 282
      Top = 223
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Left = 332
      Top = 239
      Width = 20
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label11: TLabel
      Left = 418
      Top = 153
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label1: TLabel
      Left = 543
      Top = 153
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label3: TLabel
      Left = 5
      Top = 259
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label10: TLabel
      Left = 92
      Top = 259
      Width = 23
      Height = 13
      Caption = 'FAX:'
    end
    object Label12: TLabel
      Left = 311
      Top = 37
      Width = 90
      Height = 13
      Caption = 'Vers'#227'o do Arquivo:'
    end
    object Label13: TLabel
      Left = 349
      Top = 2
      Width = 109
      Height = 13
      Caption = 'Indicador de Atividade:'
    end
    object Label14: TLabel
      Left = 566
      Top = 2
      Width = 49
      Height = 13
      Caption = 'Apura'#231#227'o:'
    end
    object Bevel1: TBevel
      Left = 3
      Top = 148
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label15: TLabel
      Left = 5
      Top = 37
      Width = 108
      Height = 13
      Caption = 'Regime de Tributa'#231#227'o:'
    end
    object Label16: TLabel
      Left = 5
      Top = 110
      Width = 136
      Height = 13
      Caption = 'Eliminar notas sem Aliquotas:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 581
      Top = 342
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 28
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 342
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 29
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbArquivo: TComboBox
      Left = 123
      Top = 51
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Original'
      Items.Strings = (
        'Original'
        'Substituto'
      )
    end
    object EdtNm_Arquivo: TLabeledEdit
      Left = 5
      Top = 88
      Width = 285
      Height = 19
      EditLabel.Width = 149
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo a ser Gerado:'
      LabelSpacing = 2
      TabOrder = 11
      Text = 'SPEDFiscal.txt'
    end
    object CbMes: TComboBox
      Left = 5
      Top = 16
      Width = 79
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Janeiro'
      OnChange = CbMesChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Ano: TRxSpinEdit
      Left = 87
      Top = 16
      Width = 53
      Height = 19
      Value = 9999.0
      TabOrder = 1
    end
    object CbEntrada: TComboBox
      Left = 615
      Top = 51
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'Sim'
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbSaida: TComboBox
      Left = 687
      Top = 51
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'Sim'
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbInventario: TComboBox
      Left = 233
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object PgBarNotas: TProgressBar
      Left = 5
      Top = 319
      Width = 741
      Height = 17
      TabOrder = 30
    end
    object STxtProcesso: TStaticText
      Left = 125
      Top = 345
      Width = 260
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'STxtProcesso'
      TabOrder = 31
      Visible = False
    end
    object CbIndustria: TComboBox
      Left = 174
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNm_Contador: TLabeledEdit
      Left = 108
      Top = 166
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Contador:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 15
    end
    object EdtDs_Endereco: TLabeledEdit
      Left = 5
      Top = 202
      Width = 303
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 18
    end
    object EdtDs_Complemento: TLabeledEdit
      Left = 386
      Top = 202
      Width = 205
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 20
    end
    object EdtNr_CEP: TMaskEdit
      Left = 220
      Top = 239
      Width = 60
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 22
    end
    object EdtNm_Bairro: TLabeledEdit
      Left = 5
      Top = 239
      Width = 210
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 21
    end
    object EdtCd_Cidade: TCurrencyEdit
      Left = 282
      Top = 239
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 23
      OnExit = EdtCd_CidadeExit
    end
    object EdtNm_Cidade: TEdit
      Left = 355
      Top = 239
      Width = 260
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object EdtDs_EMail: TLabeledEdit
      Left = 179
      Top = 274
      Width = 305
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 27
    end
    object EdtNr_CNPJ: TEditMF
      Left = 418
      Top = 166
      Width = 120
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 16
      Kind = dkCGC
      Formated = True
      LockOnError = True
      Check = True
    end
    object EdtNr_CRC: TLabeledEdit
      Left = 5
      Top = 166
      Width = 100
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'CRC:'
      LabelSpacing = 2
      MaxLength = 18
      TabOrder = 14
      OnExit = EdtNr_CRCExit
    end
    object EdtNr_CPF: TEditMF
      Left = 543
      Top = 166
      Width = 100
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 17
      Kind = dkCPF
      Formated = True
      LockOnError = True
      Check = True
    end
    object EdtDs_Numero: TLabeledEdit
      Left = 313
      Top = 202
      Width = 70
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 19
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 5
      Top = 274
      Width = 80
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 25
    end
    object EdtNr_FAX: TMaskEdit
      Left = 92
      Top = 274
      Width = 84
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 26
    end
    object STxtProgresso: TStaticText
      Left = 313
      Top = 304
      Width = 429
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      OnDblClick = STxtProgressoDblClick
    end
    object CbVersao: TComboBox
      Left = 311
      Top = 51
      Width = 279
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'C'#243'digo 001 - Vers'#227'o 100 Ato COTEPE 01/01/2008'
        'C'#243'digo 002 - Vers'#227'o 101 Ato COTEPE 01/01/2009'
        'C'#243'digo 003 - Vers'#227'o 102 Ato COTEPE 01/01/2010'
        'C'#243'digo 004 - Vers'#227'o 103 Ato COTEPE 01/01/2011'
        'C'#243'digo 005 - Vers'#227'o 104 Ato COTEPE 01/01/2012'
        'C'#243'digo 006 - Vers'#227'o 105 Ato COTEPE 01/07/2012'
      )
    end
    object EdtNr_RecAnterior: TLabeledEdit
      Left = 317
      Top = 88
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Registro Anterior:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 12
    end
    object CbAividade: TComboBox
      Left = 349
      Top = 16
      Width = 214
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '0 - Industrial ou equiparado a industrial'
      Items.Strings = (
        '0 - Industrial ou equiparado a industrial'
        '1 - Prestador de servi'#231'os'
        '2 - Atividade de com'#233'rcios'
        '3 - Atividade Financeira'
        '4 - Atividade Imobili'#225'ria'
        '9 - Outros'
      )
    end
    object CbApuracao: TComboBox
      Left = 566
      Top = 16
      Width = 115
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 5
      Text = 'Lucro Presumido'
      Items.Strings = (
        'Lucro Real'
        'Lucro Presumido'
      )
    end
    object CbRegime: TComboBox
      Left = 5
      Top = 51
      Width = 115
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Acumulativo'
      Items.Strings = (
        'Acumulativo'
        'N'#227'o Acumulativo'
      )
    end
    object CbSemAliquota: TComboBox
      Left = 5
      Top = 124
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 13
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
  end
  object ADODsOrigem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'--------------- Or'#231'amento - Faturados'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'--------------- Or'#231'amento - Cancelados'#13#10'union'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''2'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'-------------------- Notas de Sa'#237'das - Saida'#13#10'union'#13#10'select'#13#10'  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  S.Cd_Filial   = @Cd_Filial and'#13#10'  S.Fl_Estoque  = ''''1'''' and'#13#10'  S.Dt_Emissao >= @Dt_Start and'#13#10'  S.Dt_Emissao  < @Dt_End and'#13#10'  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'#13#10#13#10'-------------------- Notas de Entradas - Entrada'#13#10'union'#13#10#13#10'select'#13#10'  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.Fl_Estoque     = ''''1'''' and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End and'#13#10'  E.St_Entrada    >= ''''2'''' and            ----- Somente Cancelado/Fechado'#13#10'  E.Cd_ModeloFiscal in ( ''''01'''', ''''02'''', ''''03'''', ''''55'''' )'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    Left = 32
    Top = 265
    object ADODsOrigemFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsOrigemNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
      ReadOnly = True
    end
    object ADODsOrigemSt_Origem: TStringField
      FieldName = 'St_Origem'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object ADODsNota: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_Emitente, NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura, NP.Dt_Fatura, NP.Vl_Nota, '#13#10'  NP.Vl_DescNota, NP.Vl_BaseICMS, NP.Vl_ICMS, NP.Vl_BaseST, NP.Vl_STB, NP.Vl_IPI, '#13#10'  NP.Vl_Pedido, NP.Vl_Despesa, NP.Vl_Custo, NP.Vl_Seguro, NP.Cd_ModeloFiscal,'#13#10'  NP.Fl_Emitente, '#13#10#13#10'  Nr_chNFe ='#13#10'    case '#13#10'      when NP.Fl_Origem = ''''3'''' then '#13#10'        ('#13#10'        select top 1'#13#10'          E.Nr_chNFe'#13#10'        from'#13#10'          Entrada E'#13#10'        where'#13#10'          E.Cd_Filial  = NP.Cd_Filial and'#13#10'          E.Nr_Entrada = NP.Nr_Orcamento'#13#10'        )          '#13#10'        '#13#10'      else '#13#10'        ('#13#10'        select top 1'#13#10'          N.Nr_chNFe'#13#10'        from'#13#10'          NFe N'#13#10'        where'#13#10'          N.Cd_Filial = NP.Cd_Filial and'#13#10'          Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and'#13#10'          N.Nr_Origem = NP.Nr_Orcamento and'#13#10'          N.St_NFe   >= ''''2'''' and'#13#10'          N.St_NFe   <= ''''3'''#13#10'        )'#13#10'      '#13#10'    end,'#13#10'    '#13#10' St_NFe =   '#13#10'   ('#13#10'   select top 1'#13#10'     N.Nr_chNFe'#13#10'     '#13#10'   from'#13#10'     NFe N'#13#10'     '#13#10'   where'#13#10'     N.Cd_Filial = NP.Cd_Filial and'#13#10'     Convert( VarChar( 1 ), N.Fl_Origem COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Fl_Origem COLLATE Latin1_General_CI_AI ) and'#13#10'     N.Nr_Origem = NP.Nr_Orcamento and'#13#10'     N.St_NFe   >= ''''2'''' and'#13#10'     N.St_NFe   <= ''''3'''#13#10'   ),'#13#10'   '#13#10' St_Origem ='#13#10'   case'#13#10'     when NP.Fl_Origem = ''''3'''' then '#13#10'       ('#13#10'       select top 1'#13#10'          E.St_Entrada'#13#10'        from'#13#10'          Entrada E'#13#10'        where'#13#10'          E.Cd_Filial  = NP.Cd_Filial and'#13#10'          E.Nr_Entrada = NP.Nr_Orcamento'#13#10'       )'#13#10'     when NP.Fl_Origem = ''''2'''' then '#13#10'       ('#13#10'       select top 1'#13#10'          S.St_Saida'#13#10'        from'#13#10'          Saida S'#13#10'        where'#13#10'          S.Cd_Filial  = NP.Cd_Filial and'#13#10'          S.Nr_Saida   = NP.Nr_Orcamento'#13#10'       )'#13#10'     else'#13#10'      ('#13#10'       select top 1'#13#10'          O.St_Orcamento'#13#10'        from'#13#10'          Orcamento O'#13#10'        where'#13#10'          O.Cd_Filial    = NP.Cd_Filial and'#13#10'          O.Nr_Orcamento = NP.Nr_Orcamento'#13#10'       )'#13#10'   end,'#13#10' Vl_Pis ='#13#10'   ('#13#10'   select '#13#10'     sum( Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) )'#13#10'     '#13#10'   from'#13#10'     ##NotaProcessa NPI'#13#10'     '#13#10'   where'#13#10'     NPI.Id_Processo = @@SPID and'#13#10'     NPI.Fl_Origem   = NP.Fl_Origem and'#13#10'     NPI.Cd_Emitente = NP.Cd_Emitente and'#13#10'     NPI.Nr_Fatura   = NP.Nr_Fatura and'#13#10'     NPI.Cd_Produto  > 0 and'#13#10'     NPI.St_Nota     = ''''N'''' and'#13#10'     NPI.Pr_Pis      > 0.0'#13#10'   ),'#13#10'   '#13#10'  Vl_Cofins ='#13#10'   ('#13#10'   select '#13#10'     sum( Round( Vl_Total_Item / 100.0 * Pr_Cofins, 2 ) )'#13#10'     '#13#10'   from'#13#10'     ##NotaProcessa NPI'#13#10'     '#13#10'   where'#13#10'     NPI.Id_Processo = @@SPID and'#13#10'     NPI.Fl_Origem   = NP.Fl_Origem and'#13#10'     NPI.Cd_Emitente = NP.Cd_Emitente and'#13#10'     NPI.Nr_Fatura   = NP.Nr_Fatura and'#13#10'     NPI.Cd_Produto  > 0 and'#13#10'     NPI.St_Nota     = ''''N'''' and'#13#10'     NPI.Pr_Cofins   > 0.0'#13#10'   )'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10'  '#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' )'#13#10#13#10'order by'#13#10'  NP.Fl_Origem, NP.Cd_Serie, NP.Nr_Fatura'
    Parameters = <>
    Left = 64
    Top = 265
    object ADODsNotaFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsNotaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsNotaDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsNotaVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_DescNota: TBCDField
      FieldName = 'Vl_DescNota'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_Despesa: TBCDField
      FieldName = 'Vl_Despesa'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_Seguro: TBCDField
      FieldName = 'Vl_Seguro'
      Precision = 12
      Size = 3
    end
    object ADODsNotaCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsNotaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsNotaNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      ReadOnly = True
      Size = 255
    end
    object ADODsNotaFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaSt_NFe: TStringField
      FieldName = 'St_NFe'
      Size = 1
    end
    object ADODsNotaSt_Origem: TStringField
      FieldName = 'St_Origem'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_Pis: TBCDField
      FieldName = 'Vl_Pis'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
    object ADODsNotaVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Item, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,'#13#10'  Vl_DescItem, Fl_Imposto, Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item,'#13#10'  Vl_Substituicao = Vl_ST_Item, Pr_ICMS_Item, Vl_ICMS_Item,'#13#10#13#10'  Vl_IPI_Item, Pr_IPI, Pr_PIS, Pr_Cofins,'#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'#13#10'  Vl_Pis = Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end,'#13#10'  Vl_Cofins = Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end,'#13#10'  Cd_CFOPProduto, Cd_CST, Cd_CST_Pis, Cd_CST_Cofins'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem = :Fl_Origem and'#13#10'  Cd_Emitente = :Cd_Emitente and'#13#10'  Nr_Fatura  = :Nr_Fatura and'#13#10'  Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''#13#10#13#10'order by'#13#10'  Nr_Item'
    Parameters = <
      item
        Name = 'Fl_Origem'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Fatura'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 94
    Top = 265
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      Size = 200
    end
    object ADODsItemQt_Imprimir: TBCDField
      FieldName = 'Qt_Imprimir'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Total_Item: TBCDField
      FieldName = 'Vl_Total_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Base_ICMS_Item: TBCDField
      FieldName = 'Vl_Base_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_DescItem: TBCDField
      FieldName = 'Vl_DescItem'
      Precision = 12
      Size = 3
    end
    object ADODsItemFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsItemCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsItemVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_IPI_Item: TBCDField
      FieldName = 'Vl_IPI_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemPr_ICMS_Item: TBCDField
      FieldName = 'Pr_ICMS_Item'
      Precision = 12
      Size = 2
    end
    object ADODsItemVl_BaseST_Item: TBCDField
      FieldName = 'Vl_BaseST_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_ICMS_Item: TBCDField
      FieldName = 'Vl_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsItemPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 12
      Size = 2
    end
    object ADODsItemPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 12
      Size = 2
    end
    object ADODsItemVl_Pis: TBCDField
      FieldName = 'Vl_Pis'
      ReadOnly = True
      Precision = 31
      Size = 10
    end
    object ADODsItemVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      ReadOnly = True
      Precision = 31
      Size = 10
    end
    object ADODsItemCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 3
    end
    object ADODsItemCd_CST_Pis: TStringField
      FieldName = 'Cd_CST_Pis'
      Size = 3
    end
    object ADODsItemCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
  end
  object ADODsInventario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario, I.Vl_Inventario,'#13#10'  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto, T.Cd_CST,'#13#10'  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,'#13#10'  sum( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) as Qt_Saldo,'#13#10'  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total '#13#10#13#10'from'#13#10'  Inventario I'#13#10#13#10'inner join'#13#10'  Inventario_Produto IP'#13#10'on'#13#10'  IP.Cd_Filial = I.Cd_Filial and'#13#10'  IP.Nr_Ano    = I.Nr_Ano and'#13#10'  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = IP.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  IP.Cd_Filial = :Cd_Filial and'#13#10'  IP.Nr_Ano    = :Nr_Ano'#13#10#13#10'group by'#13#10'  I.Cd_Filial, I.Nr_ANo, I.Dt_Inventario, I.Vl_Inventario,'#13#10'  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto, T.Cd_CST,'#13#10'  IP.Vl_Custo, P.Cd_ClasFiscal, T.Pr_Contrib,'#13#10'  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo'#13#10#13#10'order by'#13#10'  I.Cd_Filial, I.Nr_Ano, IP.Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Ano'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 93
    Top = 297
    object ADODsInventarioCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInventarioNr_ANo: TSmallintField
      FieldName = 'Nr_ANo'
    end
    object ADODsInventarioDt_Inventario: TDateTimeField
      FieldName = 'Dt_Inventario'
    end
    object ADODsInventarioCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsInventarioSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsInventarioNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsInventarioVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsInventarioQt_Saldo: TBCDField
      FieldName = 'Qt_Saldo'
      ReadOnly = True
      Precision = 14
      Size = 3
    end
    object ADODsInventarioVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 27
      Size = 6
    end
    object ADODsInventarioDp_Codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Codigo'
      Size = 8
      Calculated = True
    end
    object ADODsInventarioCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsInventarioPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsInventarioVl_Inventario: TBCDField
      FieldName = 'Vl_Inventario'
      Precision = 15
      Size = 3
    end
    object ADODsInventarioCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 5
    end
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_Produto, NP.Cd_ClasFiscal, P.Nm_Produto, P.Sg_Estoque, '#13#10'  P.Pr_IPI, T.Pr_Contrib'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'inner join '#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = NP.Cd_Produto'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  --NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'#13#10'  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' ) and'#13#10'  NP.Fl_Origem = ''''3'''' and                       --------------- Somente notas de entrada'#13#10'  NP.St_Nota = ''''N'''' and'#13#10'  not NP.Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'#13#10'  NP.Nm_Produto <> '''''' and'#13#10'  NP.Tp_Operacao in ( ''''1'''', ''''3'''' )'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Gera os dados das notas'
      'if Object_ID( ''''TempDB..#ProdSPED'''' ) is not null'
      '  drop table #ProdSPED'
      ''
      'select distinct'
      '  NP.Cd_Produto, NP.Cd_ClasFiscal, P.Nm_Produto, P.Sg_Estoque,'
      '  P.Pr_IPI, T.Pr_Contrib'
      ''
      'into'
      '  #ProdSPED'
      ''
      'from'
      '  ##NotaProcessa NP'
      ''
      'inner join '
      '  Produto P'
      'on'
      '  P.Cd_Produto = NP.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  NP.Id_Processo = @@SPID and'
      '  --NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'
      '  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' ) and'
      '  NP.Fl_Origem = ''''3'''' and                       --------------- Somente notas de entrada'
      '  NP.St_Nota = ''''N'''' and'
      '  not NP.Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'
      '  NP.Nm_Produto <> '''''' and'
      '  NP.Tp_Operacao in ( ''''1'''', ''''3'''' )'
      ''
      ''
    )
    SQLOther1.Strings = (
      '--------------- Produtos do inventario'
      'insert into #ProdSPED'
      'select distinct'
      '  IP.Cd_Produto, P.Cd_ClasFiscal, P.Nm_Produto, P.Sg_Estoque,'
      '  P.Pr_IPI, T.Pr_Contrib'
      ''
      'from'
      '  Inventario_Produto IP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = IP.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  IP.Cd_Filial = :Cd_Filial and'
      '  IP.Nr_Ano    = :Nr_Ano and'
      '  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0 and'
      '  not exists'
      '    ('
      '    select'
      '      PS.Cd_Produto'
      ''
      '    from'
      '      #ProdSPED PS'
      ''
      '    where'
      '      PS.Cd_Produto = IP.Cd_Produto'
      '    )'
    )
    SQLOther2.Strings = (
      '--------------- Gera o result set'
      'select'
      '  Cd_Produto, Cd_ClasFiscal, Nm_Produto, Sg_Estoque,'
      '  Pr_IPI, Pr_Contrib'
      ''
      'from'
      '  #ProdSPED'
      ''
      'order by'
      '  Nm_Produto'
      ''
    )
    Left = 123
    Top = 297
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_Emitente, NP.Nm_Emitente, NP.Nr_Documento, NP.Nr_Insc_Estadual,'#13#10'  NP.Cd_IBGE, NP.Ds_Endereco, NP.Ds_Numero, NP.Ds_Complemento, NP.Nr_CEP,'#13#10'  NP.NM_Bairro, NP.Cd_Pais'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'#13#10'  NP.St_Nota = ''''N'''' and'#13#10'  NP.Nm_Produto <> '''''#13#10#13#10'order by'#13#10'  NP.Cd_Emitente'
    Parameters = <>
    Left = 30
    Top = 298
    object ADODsEmitenteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEmitenteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsEmitenteCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsEmitenteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEmitenteDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsEmitenteDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEmitenteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      Size = 8
    end
    object ADODsEmitenteNM_Bairro: TStringField
      FieldName = 'NM_Bairro'
      Size = 30
    end
    object ADODsEmitenteCd_Pais: TStringField
      FieldName = 'Cd_Pais'
      Size = 10
    end
  end
  object ADODsUnidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsUnidadeCalcFields
    CommandText = 'select distinct'#13#10'  NP.Sg_Unidade'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  --NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'#13#10'  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' ) and'#13#10'  NP.Fl_Origem = ''''3'''' and                       --------------- Somente notas de entrada'#13#10'  NP.St_Nota = ''''N'''' and'#13#10'  not NP.Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'#13#10'  NP.Nm_Produto <> '''''#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Unidades das Notas'
      'if Object_ID( ''''TempDB..#UnidSPED'''' ) is not null'
      '  drop table #UnidSPED'
      ''
      'select distinct'
      '  NP.Sg_Unidade'
      ''
      'into'
      '  #UnidSPED'
      '  '
      'from'
      '  ##NotaProcessa NP'
      ''
      'where'
      '  NP.Id_Processo = @@SPID and'
      '  --NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'
      '  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' ) and'
      '  NP.Fl_Origem = ''''3'''' and                       --------------- Somente notas de entrada'
      '  NP.St_Nota = ''''N'''' and'
      '  not NP.Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'
      '  NP.Nm_Produto <> '''''
    )
    SQLOther1.Strings = (
      '--------------- Unidades do inventario'
      'insert into #UnidSPED'
      'select distinct'
      '  P.Sg_Estoque'
      ''
      'from'
      '  Inventario_Produto IP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = IP.Cd_Produto'
      ''
      'where'
      '  IP.Cd_Filial = :Cd_Filial and'
      '  IP.Nr_Ano    = :Nr_Ano and'
      '  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0 and'
      ''
      '  not exists'
      '    ('
      '    select'
      '      US.Sg_Unidade'
      ''
      '    from'
      '      #UnidSPED US'
      ''
      '    where'
      '      US.Sg_Unidade = P.Sg_Estoque'
      '    )'
    )
    SQLOther2.Strings = (
      '--------------- Unidades'
      'select'
      '  Sg_Unidade'
      ''
      'from'
      '  #UnidSPED'
    )
    Left = 61
    Top = 299
    object ADODsUnidadeSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidadeDs_Unidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Unidade'
      Size = 30
      Calculated = True
    end
  end
  object ADODsContador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  C.Nm_Contador, C.Nr_CPF, C.Nr_CNPJ, C.Nr_CRC, C.Nr_InscEstadual,'#13#10'  C.Ds_Endereco, C.Nm_Bairro, C.Ds_Complemento, C.Cd_Cidade, C.Nr_Cep,'#13#10'  C.Nr_Telefone, C.Nr_Fax, C.Ds_Email, CI.Nm_Cidade, CI.Sg_Estado,'#13#10'  CI.Cd_IBGE, C.Ds_Numero'#13#10#13#10'from'#13#10'  Contador C'#13#10#13#10'inner join'#13#10'  Cidade CI'#13#10'on'#13#10'  CI.Cd_Cidade = C.Cd_Cidade'#13#10#13#10'where'#13#10'  Nr_CRC = :Nr_CRC'
    Parameters = <
      item
        Name = 'Nr_CRC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = nil?
      end>
    Left = 119
    Top = 246
    object ADODsContadorNm_Contador: TStringField
      FieldName = 'Nm_Contador'
      Size = 50
    end
    object ADODsContadorNr_CPF: TStringField
      FieldName = 'Nr_CPF'
      Size = 11
    end
    object ADODsContadorNr_CNPJ: TStringField
      FieldName = 'Nr_CNPJ'
      Size = 14
    end
    object ADODsContadorNr_CRC: TStringField
      FieldName = 'Nr_CRC'
    end
    object ADODsContadorNr_InscEstadual: TStringField
      FieldName = 'Nr_InscEstadual'
      Size = 18
    end
    object ADODsContadorDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsContadorNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsContadorDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsContadorCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsContadorNr_Cep: TStringField
      FieldName = 'Nr_Cep'
      FixedChar = True
      Size = 8
    end
    object ADODsContadorNr_Telefone: TStringField
      FieldName = 'Nr_Telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsContadorNr_Fax: TStringField
      FieldName = 'Nr_Fax'
      FixedChar = True
      Size = 10
    end
    object ADODsContadorDs_Email: TStringField
      FieldName = 'Ds_Email'
      Size = 50
    end
    object ADODsContadorNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsContadorSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsContadorCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsContadorDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object ADOCmdSPED: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Contador( Nm_Contador, Nr_CPF, Nr_CNPJ, Nr_CRC, Nr_InscEstadual,'
      '  Ds_Endereco, Ds_Numero, Nm_Bairro, Ds_Complemento, Cd_Cidade, Nr_Cep,'
      '  Nr_Telefone, Nr_Fax, Ds_Email )'
      ''
      'values( :Nm_Contador, :Nr_CPF, :Nr_CNPJ, :Nr_CRC, :Nr_InscEstadual,'
      '  :Ds_Endereco, :Ds_Numero, :Nm_Bairro, :Ds_Complemento, :Cd_Cidade, :Nr_Cep,'
      '  :Nr_Telefone, :Nr_Fax, :Ds_Email )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Contador'
      ''
      'set'
      '  Nm_Contador      = :Nm_Contador,'
      '  Nr_CPF           = :Nr_CPF,'
      '  Nr_CNPJ          = :Nr_CNPJ,'
      '  Nr_InscEstadual  = :Nr_InscEstadual,'
      '  Ds_Endereco      = :Ds_Endereco,'
      '  Ds_Numero        = :Ds_Numero,'
      '  Nm_Bairro        = :Nm_Bairro,'
      '  Ds_Complemento   = :Ds_Complemento,'
      '  Cd_Cidade        = :Cd_Cidade,'
      '  Nr_Cep           = :Nr_Cep,'
      '  Nr_Telefone      = :Nr_Telefone,'
      '  Nr_Fax           = :Nr_Fax,'
      '  Ds_Email         = :Ds_Email'
      ''
      'where'
      '  Nr_CRC = :Nr_CRC'
    )
    SQLOther0.Strings = (
      '--------------- Apaga lan'#231'amentos que n'#227'o entram no SPED - 20/08/2012'
      'delete from'
      '  ##NotaProcessa'
      ''
      'where'
      '  Id_Processo = @@SPID and'
      '  Fl_Origem = ''''3'''' and'
      '  ( ( Pr_PIS <= 0.0 ) and ( Pr_Cofins <= 0.0 ) )'
      ''
      'delete from'
      '  ##NotaProcessa'
      ''
      'where'
      '  Id_Processo = @@SPID and'
      '  Cd_CFOP in ( ''''1556'''', ''''1933'''', ''''2933'''', ''''2556'''', ''''1407'''' )'
    )
    SQLOther1.Strings = (
      '--------------- Apaga lan'#231'amentos que n'#227'o entram no SPED Lucro Presumido - 14/03/2013'
      'delete from'
      '  ##NotaProcessa'
      ''
      'where'
      '  Id_Processo = @@SPID and'
      '  Fl_Origem = ''''3'''
    )
    SQLOther2.Strings = (
      ''
    )
    Left = 149
    Top = 246
  end
  object ADODsNatureza: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_CFOPProduto, CF.Ds_CFOP'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  Convert( VarChar( 4 ), CF.Cd_CFOP COLLATE Latin1_General_CI_AI )  = Convert( VarChar( 4 ), NP.Cd_CFOPProduto COLLATE Latin1_General_CI_AI ) '#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  NP.Cd_ModeloFiscal in ( ''''01'''', ''''04'''', ''''55'''' )'#13#10#13#10'order by'#13#10'  NP.Cd_CFOPProduto'
    Parameters = <>
    Left = 123
    Top = 265
    object ADODsNaturezaCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsNaturezaDs_CFOP: TStringField
      FieldName = 'Ds_CFOP'
      Size = 50
    end
  end
  object ADODsDoctoAnalitico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_CST, Cd_CFOPProduto, '#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'#13#10'  Vl_Opr = sum( Vl_Total_Item ),'#13#10'  Vl_BC_ICMS = sum( Vl_Base_ICMS_Item ),'#13#10'  Vl_ICMS = sum( Vl_ICMS_Item ),'#13#10'  Vl_BC_ICMS_ST = sum( Vl_BaseST_Item ),'#13#10'  Vl_ICMS_ST = sum( Vl_ST_Item ),'#13#10'  Vl_Red_BC = sum( Vl_Total_Item - Vl_Base_ICMS_Item ),'#13#10'  Vl_IPI = sum( Vl_IPI_Item )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem = :Fl_Origem and'#13#10'  Cd_Emitente = :Cd_Emitente and'#13#10'  Nr_Fatura  = :Nr_Fatura and'#13#10'  Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''#13#10'  '#13#10'group by  '#13#10'  Cd_CST, Cd_CFOPProduto, '#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'#13#10
    Parameters = <
      item
        Name = 'Fl_Origem'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Fatura'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 631
    Top = 163
    object ADODsDoctoAnaliticoCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsDoctoAnaliticoCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsDoctoAnaliticoPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsDoctoAnaliticoVl_Opr: TBCDField
      FieldName = 'Vl_Opr'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_BC_ICMS: TBCDField
      FieldName = 'Vl_BC_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_BC_ICMS_ST: TBCDField
      FieldName = 'Vl_BC_ICMS_ST'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_ICMS_ST: TBCDField
      FieldName = 'Vl_ICMS_ST'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_Red_BC: TBCDField
      FieldName = 'Vl_Red_BC'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsDoctoAnaliticoVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
  end
  object ADODsPisCofins: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_CST_Pis, Cd_CST_Cofins,'#13#10'  Vl_Pis = sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ),'#13#10'  Vl_Cofins = sum( Case when Pr_Cofins > 0.0 then Round( Vl_Total_Item / 100.0 *  Pr_Cofins, 2 ) end )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''#13#10#13#10'group by'#13#10'  Cd_CST_Pis, Cd_CST_Cofins'#13#10#13#10'having'#13#10'  sum( Case when Pr_Pis > 0.0 then Round( Vl_Total_Item / 100.0 * Pr_Pis, 2 ) end ) > 0'#13#10#13#10'order by'#13#10'  Cd_CST_PIS'
    Parameters = <>
    Left = 158
    Top = 297
    object ADODsPisCofinsCd_CST_Pis: TStringField
      FieldName = 'Cd_CST_Pis'
      Size = 3
    end
    object ADODsPisCofinsCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
    object ADODsPisCofinsVl_Pis: TBCDField
      FieldName = 'Vl_Pis'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
    object ADODsPisCofinsVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
  end
  object ADODsNatCST: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_CST, Convert( VarChar( 50 ), ''''Descri'#231#227'o da CST'''' ) as Ds_CST'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  NP.Cd_ModeloFiscal not in ( ''''02'''' ) --------------- Modelo 2 - Consumidor final'#13#10#13#10'order by'#13#10'  NP.Cd_CST'
    Parameters = <>
    Left = 227
    Top = 257
    object ADODsNatCSTCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsNatCSTDs_CST: TStringField
      FieldName = 'Ds_CST'
      ReadOnly = True
      Size = 50
    end
  end
  object ACBrSPEDFiscal: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\CodeGear\RAD Studio\5.0\bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 640
    Top = 216
  end
  object ADODsUndDescricao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Ds_Unidade'#13#10#13#10'from'#13#10'  Unidade'#13#10#13#10'where'#13#10'  Sg_Unidade = :Sg_Unidade'
    Parameters = <
      item
        Name = 'Sg_Unidade'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = nil?
      end>
    Left = 280
    Top = 312
    object ADODsUndDescricaoDs_Unidade: TStringField
      FieldName = 'Ds_Unidade'
      Size = 30
    end
  end
end
