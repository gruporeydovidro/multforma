object FrmEMalaDireta: TFrmEMalaDireta
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'EMala-Direta'
  ClientHeight = 621
  ClientWidth = 994
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Height = 621
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 973
    Height = 621
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 591
      Width = 965
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 1
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbPortador: TSpeedButton
      Left = 617
      Top = 16
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
    object Label46: TLabel
      Left = 577
      Top = 1
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 331
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 291
      Top = 0
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 51
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label6: TLabel
      Left = 5
      Top = 36
      Width = 86
      Height = 13
      Caption = 'Vendedor Padr'#227'o:'
    end
    object Label7: TLabel
      Left = 291
      Top = 36
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 332
      Top = 51
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object SbCidade: TSpeedButton
      Left = 627
      Top = 51
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object Label1: TLabel
      Left = 577
      Top = 36
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object Label2: TLabel
      Left = 5
      Top = 73
      Width = 99
      Height = 13
      Caption = 'Situa'#231#227'o da Compra:'
    end
    object Label10: TLabel
      Left = 5
      Top = 109
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 123
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label4: TLabel
      Left = 473
      Top = 109
      Width = 75
      Height = 13
      Caption = 'Anivers'#225'riantes:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 145
      Width = 965
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 881
      Top = 123
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label3: TLabel
      Left = 263
      Top = 73
      Width = 95
      Height = 13
      Caption = 'Per'#237'odo de Compra:'
    end
    object Label8: TLabel
      Left = 5
      Top = 146
      Width = 211
      Height = 13
      Caption = 'Lista de Emitentes (Clientes / Fornecedores):'
    end
    object Label9: TLabel
      Left = 6
      Top = 343
      Width = 100
      Height = 13
      Caption = 'Texto da Mensagem:'
    end
    object Label11: TLabel
      Left = 112
      Top = 343
      Width = 299
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '$N$ para nome do emitente $C$ para nome do Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 449
      Top = 73
      Width = 99
      Height = 13
      Caption = 'Dia para pagamento:'
    end
    object Label13: TLabel
      Left = 7
      Top = 491
      Width = 38
      Height = 13
      Caption = 'Anexos:'
      FocusControl = LstFiles
    end
    object Label14: TLabel
      Left = 611
      Top = 527
      Width = 63
      Height = 26
      AutoSize = False
      Caption = 'Destinat'#225'rios por Grupo:'
      WordWrap = True
    end
    object Label15: TLabel
      Left = 691
      Top = 491
      Width = 269
      Height = 93
      AutoSize = False
      Caption = 'Importante:'#13#10'     Ao agrupar mensagens n'#227'o sera feita a substitui'#231#227'o das vari'#225'veis N$ e C$ no corpo e assunto da mensagem.'#13#10#13#10'     Recomendamos utilizar no m'#225'ximo 50 destinat'#225'rios por grupo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LblEmitentes: TLabel
      Left = 808
      Top = 306
      Width = 145
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total de emitentes: 0'
    end
    object BitBtnEMail: TBitBtn
      Left = 800
      Top = 594
      Width = 85
      Height = 25
      Caption = '&Enviar'
      TabOrder = 30
      OnClick = BitBtnEMailClick
      Glyph.Data = {binary 2106 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 886
      Top = 594
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 31
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 16
      Width = 220
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
      TabOrder = 1
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 4
      Left = 577
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 641
      Top = 16
      Width = 220
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
      TabOrder = 5
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 291
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 354
      Top = 16
      Width = 220
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
      TabOrder = 3
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 51
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 68
      Top = 51
      Width = 220
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
      TabOrder = 7
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 8
      Left = 291
      Top = 51
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 354
      Top = 51
      Width = 220
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
      TabOrder = 9
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 5
      Left = 577
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 651
      Top = 51
      Width = 302
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
      TabOrder = 11
    end
    object CbVenda: TComboBox
      Left = 5
      Top = 87
      Width = 256
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 12
      Items.Strings = (
        'N'#227'o considerar'
        'Comprou produtos em determinado p'#233'riodo'
        'N'#227'o Comprou produtos em determinado p'#233'riodo'
      )
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 123
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 16
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 90
      Top = 123
      Width = 379
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
      TabOrder = 17
    end
    object EdtDt_Start: TDateEdit
      Left = 473
      Top = 123
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 18
    end
    object EdtDt_End: TDateEdit
      Left = 567
      Top = 123
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 19
    end
    object EdtDt_CompraStart: TDateEdit
      Left = 263
      Top = 87
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 13
    end
    object EdtDt_CompraEnd: TDateEdit
      Left = 357
      Top = 87
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 14
    end
    object DbGSelect: TDBGrid
      Left = 6
      Top = 159
      Width = 955
      Height = 147
      DataSource = DsSelect
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 20
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGSelectDblClick
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      OnKeyPress = DbGSelectKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Emitente'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 361
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 214
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Email'
          Width = 279
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Enviar'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object MmMensagem: TMemo
      Left = 6
      Top = 357
      Width = 955
      Height = 132
      ScrollBars = ssVertical
      TabOrder = 26
    end
    object EdtDs_Titulo_EM: TLabeledEdit
      Left = 6
      Top = 321
      Width = 335
      Height = 19
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = 'Assunto:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 21
    end
    object CkBConfirmacao: TCheckBox
      Left = 345
      Top = 322
      Width = 166
      Height = 17
      TabStop = False
      Caption = 'Solicitar confirma'#231#227'o de &leitura'
      TabOrder = 22
    end
    object CkBIncluir: TCheckBox
      Left = 554
      Top = 106
      Width = 95
      Height = 17
      TabStop = False
      Caption = 'Incluir Con&tatos'
      TabOrder = 32
    end
    object CkBEmitente: TCheckBox
      Left = 513
      Top = 322
      Width = 150
      Height = 17
      TabStop = False
      Caption = 'Enviar e-mail para Emitente'
      Checked = True
      State = cbChecked
      TabOrder = 23
    end
    object CkBContato: TCheckBox
      Left = 664
      Top = 322
      Width = 152
      Height = 17
      TabStop = False
      Caption = 'Enviar e-mail para o Contato'
      Checked = True
      State = cbChecked
      TabOrder = 24
    end
    object STxtSend: TStaticText
      Left = 6
      Top = 594
      Width = 69
      Height = 17
      Caption = 'Enviando...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
    end
    object EdtNr_Dia: TCurrencyEdit
      Tag = 8
      Left = 449
      Top = 87
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 15
    end
    object LstFiles: TListBox
      Left = 5
      Top = 506
      Width = 450
      Height = 83
      Hint = 'Pressione << Insert >> para incluir um arquivo da lista'#13#10'Pressione << Delete >> para excluir um arquivo da lista'
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
      OnKeyDown = LstFilesKeyDown
    end
    object RdGpAgrupar: TRadioGroup
      Left = 457
      Top = 501
      Width = 152
      Height = 73
      Caption = '   Agrupar mensagens:   '
      ItemIndex = 0
      Items.Strings = (
        'N'#227'o'
        'Agrupar em C'#243'pia'
        'Agrupar em C'#243'pia Oculta'
      )
      TabOrder = 28
    end
    object EdtNr_Agrupado: TCurrencyEdit
      Tag = 4
      Left = 611
      Top = 555
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      MaxValue = 100.0
      MinValue = 1.0
      TabOrder = 29
      Value = 1.0
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object CkBCobranca: TCheckBox
      Left = 820
      Top = 322
      Width = 144
      Height = 17
      TabStop = False
      Caption = 'Enviar e-mail de Cobran'#231'a'
      Checked = True
      State = cbChecked
      TabOrder = 25
    end
  end
  object ADOCmdEMail: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Cria table temporaria'
      'if Object_ID( ''''TempDB..##EmalaDireta'''' ) is null'
      '  create table ##EmalaDireta'
      '    ('
      '    Id_Emitente Integer identity( 1, 1 ),'
      '    Cd_Emitente Integer,'
      '    Nm_Emitente VarChar( 50 ),'
      '    Ds_Email VarChar( 150 ),'
      '    Fl_Enviar Char( 1 ),'
      '    Nr_Contato SmallInt,'
      '    Nm_Contato VarChar( 50 ),'
      '    Ds_EMContato VarChar( 150 ),'
      '    Ds_EMCobranca VarChar( 150 )'
      '    )'
      ''
      'else'
      '  truncate table ##EmalaDireta'
      ''
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Produto Int,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Cd_Produto  = :Cd_Produto,'
      '  @Dt_Start    = :Dt_Start,'
      '  @Dt_End      = :Dt_End'
      ''
      '-------------------- Inclus'#227'o dos campos'
      'insert into ##EmalaDireta( Cd_Emitente, Nm_Emitente, Ds_Email, Ds_EMCobranca, Fl_Enviar,'
      '    Nr_Contato, Nm_Contato, Ds_EMContato )'
      ''
      'select distinct'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Ds_Email, E.Ds_EmailCob, ''''1'''','
      '  /* Campo Contato */'
      ''
      'from'
      '  Emitente E'
      ''
      '/* Contato */'
    )
    SQLOther1.Strings = (
      '-------------------- Condi'#231#245'es de Rota / Cidade'
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
    )
    SQLOther2.Strings = (
      '-------------------- Vendeu em determinado periodo'
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Cd_Emitente  = E.Cd_Emitente and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
    )
    SQLOther3.Strings = (
      '--------------- N'#227'o vendeu em determinado periodo'
      '  not Exists('
      '    select'
      '      O.Cd_Emitente'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Produto */'
      '    '
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.St_Orcamento = ''''9'''' and'
      '      O.Cd_Emitente  = E.Cd_Emitente and'
      '      O.Dt_Fatura   >= @Dt_Start and'
      '      O.Dt_Fatura    < @Dt_End'
      '    )'
    )
    SQLOther4.Strings = (
      '-------------------- Filtra o Produto'
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  OI.Cd_Produto    = @Cd_Produto'
      ''
    )
    SQLOther5.Strings = (
      '-------------------- Mudar a sele'#231#227'o de envio'
      'update'
      '  ##EmalaDireta'
      ''
      'set'
      '  Fl_Enviar = :Fl_Enviar'
      ''
      'where'
      '  Id_Emitente = :Id_Emitente'
    )
    SQLOther6.Strings = (
      '--------------- Inclui os contatos do emitente'
      'inner join'
      '  Emitente_Contato EC'
      'on'
      '  EC.Cd_Emitente = E.Cd_Emitente and'
      '  EC.Ds_EMail   <> '''''
    )
    SQLOther7.Strings = (
      '-------------------- Exclui os clientes sem e-mail'
      'delete from'
      '  ##EmalaDireta'
      ''
      'where'
      '  Ds_Email = '''''' and'
      '  ( Ds_EMCobranca = '''''' or Ds_EMCobranca is null )'
      ''
      '-------------------- Exclui os contatos sem e-mail'
      'delete from'
      '  ##EmalaDireta'
      ''
      'where'
      '  Nr_Contato is not null and'
      '  ( Ds_EMContato = '''''' or Ds_EMContato is null )'
    )
    Left = 120
    Top = 433
  end
  object ADODsSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsSelectCalcFields
    CommandText = '-------------------- Cria table temporaria'#13#10'if Object_ID( ''''TempDB..##EmalaDireta'''' ) is null'#13#10'  create table ##EmalaDireta'#13#10'    ('#13#10'    Id_Emitente Integer identity( 1, 1 ),'#13#10'    Cd_Emitente Integer,'#13#10'    Nm_Emitente VarChar( 50 ),'#13#10'    Ds_Email VarChar( 100 ),'#13#10'    Fl_Enviar Char( 1 ),'#13#10'    Nr_Contato SmallInt,'#13#10'    Nm_Contato VarChar( 50 ),'#13#10'    Ds_EMContato VarChar( 100 ),'#13#10'    Ds_EMCobranca VarChar( 100 )'#13#10'    )'#13#10#13#10'else'#13#10'  truncate table ##EmalaDireta'#13#10#13#10'-------------------- Todos os registros'#13#10'insert into ##EmalaDireta( Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar,'#13#10'    Nr_Contato, Nm_Contato, Ds_EMContato, Ds_EMCobranca )'#13#10#13#10'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Ds_Email, ''''1'''', null, null, null, null'#13#10#13#10'from'#13#10'  Emitente E'#13#10'where'#13#10'  E.Ds_EMail <> '''''#13#10#13#10'-------------------- Todos os registros'#13#10'select'#13#10'  Id_Emitente, Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar, Nr_Contato,'#13#10'  Nm_Contato, Ds_EMContato, Ds_EMCobranca'#13#10#13#10'from'#13#10'  ##EmalaDireta'#13#10#13#10'order by'#13#10'  Nm_Emitente'#13#10#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Todos os registros'
      'select'
      '  Id_Emitente, Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar, Nr_Contato,'
      '  Nm_Contato, Ds_EMContato, Ds_EMCobranca'
      ''
      'from'
      '  ##EmalaDireta'
      ''
      'order by'
      '  Nm_Emitente'
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Somente os selecionados'
      'select'
      '  Id_Emitente, Cd_Emitente, Nm_Emitente, Ds_Email, Fl_Enviar, Nr_Contato,'
      '  Nm_Contato, Ds_EMContato, Ds_EMCobranca'
      ''
      'from'
      '  ##EmalaDireta'
      ''
      'where'
      '  Fl_Enviar = ''''1'''
      ''
      'order by'
      '  Nm_Emitente'
      ''
    )
    Left = 178
    Top = 433
    object ADODsSelectCd_Emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Emitente'
    end
    object ADODsSelectNm_Emitente: TStringField
      DisplayLabel = 'Emitente (Cliente / Fornecedor)'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsSelectDs_Email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'Ds_Email'
      Size = 150
    end
    object ADODsSelectFl_Enviar: TStringField
      FieldName = 'Fl_Enviar'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsSelectDs_EMContato: TStringField
      FieldName = 'Ds_EMContato'
      Size = 150
    end
    object ADODsSelectDp_Enviar: TStringField
      DisplayLabel = 'Enviar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Enviar'
      Size = 3
      Calculated = True
    end
    object ADODsSelectId_Emitente: TAutoIncField
      FieldName = 'Id_Emitente'
      ReadOnly = True
    end
    object ADODsSelectNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsSelectDs_EMCobranca: TStringField
      FieldName = 'Ds_EMCobranca'
      Size = 150
    end
  end
  object DsSelect: TDataSource
    DataSet = ADODsSelect
    Left = 149
    Top = 433
  end
end
