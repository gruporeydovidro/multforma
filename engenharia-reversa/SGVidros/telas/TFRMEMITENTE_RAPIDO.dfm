object FrmEmitente_Rapido: TFrmEmitente_Rapido
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Cliente (R'#225'pido)'
  ClientHeight = 359
  ClientWidth = 666
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 359
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 645
    Height = 359
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 330
      Width = 636
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 72
      Top = 3
      Width = 61
      Height = 13
      Caption = 'CNPJ / CPF:'
    end
    object Label12: TLabel
      Left = 5
      Top = 3
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object Label19: TLabel
      Left = 5
      Top = 39
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label20: TLabel
      Left = 323
      Top = 39
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 363
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label6: TLabel
      Left = 5
      Top = 148
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Tag = 1
      Left = 55
      Top = 164
      Width = 23
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label4: TLabel
      Left = 96
      Top = 185
      Width = 54
      Height = 13
      Caption = 'Telefone 2:'
    end
    object Label3: TLabel
      Left = 366
      Top = 185
      Width = 44
      Height = 13
      Caption = 'Celular 1:'
    end
    object Label5: TLabel
      Left = 5
      Top = 185
      Width = 54
      Height = 13
      Caption = 'Telefone 1:'
    end
    object Label9: TLabel
      Left = 186
      Top = 185
      Width = 54
      Height = 13
      Caption = 'Telefone 3:'
    end
    object Label10: TLabel
      Left = 456
      Top = 185
      Width = 44
      Height = 13
      Caption = 'Celular 2:'
    end
    object Label11: TLabel
      Left = 276
      Top = 185
      Width = 23
      Height = 13
      Caption = 'FAX:'
    end
    object Label33: TLabel
      Left = 5
      Top = 256
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label36: TLabel
      Left = 397
      Top = 256
      Width = 78
      Height = 13
      Caption = 'E-Mail (Contato):'
    end
    object Label37: TLabel
      Left = 5
      Top = 293
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label38: TLabel
      Left = 94
      Top = 293
      Width = 33
      Height = 13
      Caption = 'Ramal:'
    end
    object Label39: TLabel
      Left = 141
      Top = 293
      Width = 35
      Height = 13
      Caption = 'Celular:'
    end
    object Label1: TLabel
      Left = 228
      Top = 293
      Width = 20
      Height = 13
      Caption = 'Fax:'
    end
    object Label15: TLabel
      Left = 503
      Top = 3
      Width = 59
      Height = 13
      Caption = 'Contribuinte:'
    end
    object Label34: TLabel
      Left = 306
      Top = 256
      Width = 59
      Height = 13
      Caption = 'Nascimento:'
    end
    object SbCEPEndereco: TSpeedButton
      Tag = 2
      Left = 536
      Top = 90
      Width = 20
      Height = 19
      Hint = 'Selecionar o Endere'#231'o a partir do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPEnderecoClick
    end
    object Label7: TLabel
      Left = 430
      Top = 113
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object SbCEP: TSpeedButton
      Tag = 1
      Left = 491
      Top = 127
      Width = 20
      Height = 19
      Hint = 'Consulta do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPEnderecoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 472
      Top = 332
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 31
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 558
      Top = 332
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 32
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Emitente: TLabeledEdit
      Left = 191
      Top = 17
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Emitente:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 2
    end
    object EdtNr_Documento: TEditMF
      Left = 72
      Top = 17
      Width = 115
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 1
      OnExit = EdtNr_DocumentoExit
      Kind = dkBoth
      Formated = True
      LockOnError = True
      Check = True
    end
    object CbTpPessoa: TComboBox
      Left = 5
      Top = 17
      Width = 65
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica'
      )
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 68
      Top = 53
      Width = 250
      Height = 19
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
      TabOrder = 5
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 323
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 386
      Top = 53
      Width = 250
      Height = 19
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
      TabOrder = 7
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 164
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 14
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 78
      Top = 164
      Width = 260
      Height = 19
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
      TabOrder = 15
    end
    object EdtNr_Telefone_2: TMaskEdit
      Left = 96
      Top = 200
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 17
    end
    object EdtNr_Celular_1: TMaskEdit
      Left = 366
      Top = 200
      Width = 81
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 20
    end
    object EdtNr_Telefone_1: TMaskEdit
      Left = 5
      Top = 200
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 16
    end
    object EdtNr_Telefone_3: TMaskEdit
      Left = 186
      Top = 200
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 18
    end
    object EdtNr_Celular_2: TMaskEdit
      Left = 456
      Top = 200
      Width = 81
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 21
    end
    object EdtNr_FAX: TMaskEdit
      Left = 276
      Top = 200
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 19
    end
    object EdtDs_EMail: TLabeledEdit
      Left = 318
      Top = 233
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail:'
      LabelSpacing = 0
      MaxLength = 100
      TabOrder = 23
    end
    object EdtDs_Site: TLabeledEdit
      Left = 5
      Top = 233
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'Site:'
      LabelSpacing = 0
      MaxLength = 50
      TabOrder = 22
    end
    object EdtNm_Contato: TEdit
      Left = 5
      Top = 271
      Width = 298
      Height = 19
      MaxLength = 50
      TabOrder = 24
    end
    object Edit1: TEdit
      Left = 397
      Top = 271
      Width = 201
      Height = 19
      MaxLength = 50
      TabOrder = 26
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 5
      Top = 308
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 27
    end
    object EdtNr_Ramal: TCurrencyEdit
      Left = 94
      Top = 308
      Width = 44
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      TabOrder = 28
    end
    object EdtNr_Celular: TMaskEdit
      Left = 141
      Top = 308
      Width = 81
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 29
    end
    object EdtNr_FAX_Contato: TMaskEdit
      Left = 228
      Top = 308
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 30
    end
    object CbContribuinte: TComboBox
      Left = 503
      Top = 17
      Width = 107
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'Isento'
        'N'#227'o Contribuinte'
      )
    end
    object EdtDt_Nascimento: TDateEdit
      Left = 306
      Top = 271
      Width = 86
      Height = 19
      CheckOnExit = True
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 25
    end
    object EdtDs_Titulo: TLabeledEdit
      Left = 5
      Top = 90
      Width = 223
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'Tipo do Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 8
    end
    object EdtDs_Endereco: TLabeledEdit
      Left = 231
      Top = 90
      Width = 304
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 9
    end
    object EdtDs_Complemento: TLabeledEdit
      Left = 5
      Top = 127
      Width = 206
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 11
    end
    object EdtNr_CEP: TMaskEdit
      Left = 430
      Top = 127
      Width = 60
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 13
    end
    object EdtNm_Bairro: TLabeledEdit
      Left = 217
      Top = 127
      Width = 210
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 12
    end
    object EdtDs_Numero: TLabeledEdit
      Left = 561
      Top = 90
      Width = 70
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 10
    end
  end
  object ADOCmdEmitente: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      '-------------------- Inclui o emitente'
      'insert into Emitente( Cd_Emitente, Nm_Emitente, Nm_Fantasia, Dt_Cadastro,'
      '   Dt_Alteracao, Tp_Pessoa, Nr_Documento, Nr_Insc_Estadual, Vl_Limite_Credito,'
      '   Cd_Credito, Cd_Grupo, Cd_SubGrupo, Fl_Contribuinte, Fl_Exportador, Ds_EMail,'
      '   Ds_Site, Cd_Usuario, Cd_Portador, Dt_Nascimento, Nr_Identidade,'
      '   Nm_Orgao_emissor, Dt_Emissao_ID, Nm_Pai, Nm_Mae, Fl_Grau_Instrucao,'
      '   St_Grau_Instrucao, Ds_Naturalidade, Fl_Estado_Civil, Nm_Conjuje,'
      '   Dt_Nascimento_conjuje, Mm_Observacao, Mm_Restricao, Sg_Estado_Emissor,'
      '   Fl_Pagamento, Nr_Pagamento, Cd_Funcionario, Nr_Insc_Municipal, Dt_Atividade,'
      '   Fl_ConFinal )'
      ''
      'values( :Cd_Emitente, :Nm_Emitente, :Nm_Fantasia, :Dt_Cadastro,'
      '   :Dt_Alteracao, :Tp_Pessoa, :Nr_Documento, :Nr_Insc_Estadual, :Vl_Limite_Credito,'
      '   :Cd_Credito, :Cd_Grupo, :Cd_SubGrupo, :Fl_Contribuinte, :Fl_Exportador, :Ds_EMail,'
      '   :Ds_Site, :Cd_Usuario, :Cd_Portador, :Dt_Nascimento, :Nr_Identidade,'
      '   :Nm_Orgao_emissor, :Dt_Emissao_ID, :Nm_Pai, :Nm_Mae, :Fl_Grau_Instrucao,'
      '   :St_Grau_Instrucao, :Ds_Naturalidade, :Fl_Estado_Civil, :Nm_Conjuje,'
      '   :Dt_Nascimento_conjuje, :Mm_Observacao, :Mm_Restricao, :Sg_Estado_Emissor,'
      '   :Fl_Pagamento, :Nr_Pagamento, :Cd_Funcionario, :Nr_Insc_Municipal,'
      '   :Dt_Atividade, ''''1'''' )'
    )
    SQLOther0.Strings = (
      '-------------------- Inclui o endere'#231'o'
      'insert into Emitente_Endereco( Cd_Emitente, Nr_Endereco, Ds_Titulo, Ds_Endereco,'
      '   Nm_Bairro, Ds_Complemento, Nr_CEP, Cd_Cidade, Nr_Telefone_1, Nr_Telefone_2,'
      '   Nr_Telefone_3, Nr_FAX, Nr_Celular_1, Nr_Celular_2, Mm_Observacao, Ds_Numero )'
      ''
      'values( :Cd_Emitente, :Nr_Endereco, :Ds_Titulo, :Ds_Endereco, :Nm_Bairro,'
      '   :Ds_Complemento, :Nr_CEP, :Cd_Cidade, :Nr_Telefone_1, :Nr_Telefone_2,'
      '   :Nr_Telefone_3, :Nr_FAX, :Nr_Celular_1, :Nr_Celular_2, :Mm_Observacao,'
      '   :Ds_Numero )'
    )
    SQLOther1.Strings = (
      '-------------------- Atualiza o endere'#231'o do cliente'
      'update'
      '  Emitente'
      ''
      'set'
      '  Nr_Endereco    = :Nr_Endereco,'
      '  Nr_EndCobranca = :Nr_EndCobranca'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther2.Strings = (
      '-------------------- Contato do Cliente'
      'insert into Emitente_Contato( Cd_Emitente, Nr_Contato, Nm_Contato,'
      '   Dt_Nascimento, Ds_Cargo, Ds_EMail, Nr_Telefone, Nr_Ramal, Nr_Celular,'
      '   Nr_Fax )'
      'values( :Cd_Emitente, :Nr_Contato, :Nm_Contato,'
      '   :Dt_Nascimento, :Ds_Cargo, :Ds_EMail, :Nr_Telefone, :Nr_Ramal, :Nr_Celular,'
      '   :Nr_Fax )'
    )
    Left = 35
    Top = 255
  end
  object ADODsEmitente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 1'#13#10'  A.Cd_Emitente + 1 as Cd_Emitente'#13#10#13#10'from'#13#10'  Emitente A'#13#10#13#10'where'#13#10'  not exists( '#13#10'  select'#13#10'    B.Cd_Emitente'#13#10#13#10'  from'#13#10'    Emitente  B'#13#10#13#10'  where'#13#10'    B.Cd_Emitente = A.Cd_Emitente + 1'#13#10'  )'#13#10#13#10'order by'#13#10'  A.Cd_Emitente'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      '-------------------- Seleciona o c'#243'digo do emitente'
      'select top 1'
      '  A.Cd_Emitente + 1 as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Emitente'
      ''
      '  from'
      '    Emitente  B'
      ''
      '  where'
      '    B.Cd_Emitente = A.Cd_Emitente + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Emitente'
    )
    SQLOther0.Strings = (
      '-- Verifica se existe algum cadastrado com o CNPJ / CPF'
      'select'
      '  Cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    Left = 68
    Top = 255
    object ADODsEmitenteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
      ReadOnly = True
    end
  end
end
