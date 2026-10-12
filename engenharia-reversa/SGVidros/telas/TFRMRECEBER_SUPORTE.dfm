object FrmReceber_Suporte: TFrmReceber_Suporte
  Left = 301
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gerar Boletos'
  ClientHeight = 686
  ClientWidth = 1059
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 686
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 1038
    Height = 686
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label19: TLabel
      Left = 5
      Top = 3
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label1: TLabel
      Left = 220
      Top = 3
      Width = 93
      Height = 13
      Caption = 'Dia de Vencimento:'
    end
    object Label2: TLabel
      Left = 316
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 356
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Consulta de Produtos'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdutoClick
    end
    object SbOpen: TSpeedButton
      Left = 941
      Top = 17
      Width = 80
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 373
      Width = 920
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 5
      Top = 40
      Width = 40
      Height = 13
      Caption = 'Clientes:'
    end
    object Label3: TLabel
      Left = 846
      Top = 3
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label5: TLabel
      Left = 5
      Top = 273
      Width = 117
      Height = 13
      Caption = 'Observa'#231#227'o / Restri'#231#227'o:'
    end
    object Label6: TLabel
      Left = 508
      Top = 271
      Width = 79
      Height = 13
      Caption = 'Valor do Suporte'
    end
    object BvlSeparator_2: TBevel
      Left = 3
      Top = 38
      Width = 756
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 509
      Top = 337
      Width = 101
      Height = 13
      Caption = 'Imprimir a C.Receber:'
    end
    object SbReport: TSpeedButton
      Left = 612
      Top = 352
      Width = 74
      Height = 19
      Caption = '&Imprimir'
      Flat = True
      Glyph.Data = {binary 1146 bytes}
      OnClick = SbReportClick
    end
    object SbEMail: TSpeedButton
      Left = 687
      Top = 352
      Width = 74
      Height = 19
      Caption = '&Enviar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      OnClick = SbEMailClick
    end
    object Label8: TLabel
      Left = 4
      Top = 553
      Width = 77
      Height = 13
      Caption = 'Texto do E-Mail:'
    end
    object Label9: TLabel
      Left = 465
      Top = 553
      Width = 126
      Height = 13
      Caption = 'Boletos com erro de envio:'
    end
    object SbPublicar: TSpeedButton
      Left = 764
      Top = 352
      Width = 74
      Height = 19
      Caption = '&Publicar'
      Flat = True
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbPublicarClick
    end
    object SbExcluir: TSpeedButton
      Left = 841
      Top = 352
      Width = 74
      Height = 19
      Caption = 'E&xcluir'
      Flat = True
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbExcluirClick
    end
    object Label10: TLabel
      Left = 581
      Top = 3
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 621
      Top = 17
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
    object BitBtnConfirm: TBitBtn
      Left = 862
      Top = 275
      Width = 85
      Height = 25
      Caption = '&Gerar'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 948
      Top = 275
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 14
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
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
      Value = 5.0
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 68
      Top = 17
      Width = 203
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
      TabOrder = 1
    end
    object EdtNr_Pagamento: TCurrencyEdit
      Left = 273
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '##'
      TabOrder = 2
      OnExit = EdtNr_PagamentoExit
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 316
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
      Value = 8.0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 379
      Top = 17
      Width = 197
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
      TabOrder = 4
    end
    object DbGEmitente: TDBGrid
      Left = 5
      Top = 53
      Width = 1027
      Height = 216
      DataSource = DsEmitente
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGEmitenteDblClick
      OnEnter = DbGEmitenteEnter
      OnExit = DbGEmitenteExit
      OnKeyPress = DbGEmitenteKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_emitente'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 352
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Portador'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_suporte'
          Title.Alignment = taRightJustify
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Imprimir'
          Visible = True
        end>
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 846
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object DbMmRestricao: TDBMemo
      Left = 5
      Top = 286
      Width = 497
      Height = 82
      DataField = 'mm_restricao'
      DataSource = DsEmitente
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object EdtNr_Start: TCurrencyEdit
      Left = 509
      Top = 352
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
    end
    object EdtNr_End: TCurrencyEdit
      Left = 562
      Top = 352
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
    end
    object DbGBoleto: TDBGrid
      Left = 4
      Top = 377
      Width = 1028
      Height = 176
      DataSource = DsBoleto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGEmitenteEnter
      OnExit = DbGEmitenteExit
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Receber'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 305
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_EMailCob'
          Width = 382
          Visible = True
        end>
    end
    object MmEmail: TMemo
      Left = 4
      Top = 567
      Width = 456
      Height = 77
      Lines.Strings = (
        'MmEmail'
      )
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object STxtEMail: TStaticText
      Left = 508
      Top = 313
      Width = 414
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      TabOrder = 17
    end
    object MmBoletos: TMemo
      Left = 465
      Top = 567
      Width = 568
      Height = 115
      ScrollBars = ssVertical
      TabOrder = 18
      WordWrap = False
    end
    object EdtMmBoleto: TLabeledEdit
      Left = 4
      Top = 663
      Width = 456
      Height = 19
      EditLabel.Width = 159
      EditLabel.Height = 13
      EditLabel.Caption = 'Texto de Observa'#231#245'es do Boleto:'
      TabOrder = 19
    end
    object EdtVl_Suporte: TRxCalcEdit
      Left = 507
      Top = 286
      Width = 100
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      NumGlyphs = 2
      TabOrder = 10
      OnEnter = EdtVl_SuporteEnter
      OnExit = EdtVl_SuporteExit
      OnKeyPress = EdtVl_SuporteKeyPress
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 581
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      Value = 7.0
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 645
      Top = 17
      Width = 197
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
      TabOrder = 6
    end
  end
  object ADOCmdBoleto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Nr_DoctoBanco = :Nr_DoctoBanco,'
      '  Id_Parcela    = :Id_Parcela'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther0.Strings = (
      'create table #BoletoTMP'
      '  ('
      '  cd_emitente int,'
      '  nm_emitente varchar( 50 ),'
      '  Nm_Fantasia VarChar( 30 ),'
      '  vl_suporte numeric( 12, 2 ),'
      '  mm_restricao text,'
      '  fl_imprimir char( 1 ),'
      '  cd_portador smallint,'
      '  nr_orcamento int,'
      '  nr_receber int,'
      '  nr_doctobanco varchar( 25 ),'
      '  nr_suporte smallint identity( 1, 1 ),'
      '  nr_ordem char( 1 ),'
      '  Id_Parcela Int'
      '  )'
    )
    SQLOther1.Strings = (
      '------------------------------- Limpa tabela'
      'truncate table #BoletoTMP;'
      ''
      '------------------------------- Inclui os dados'
      'insert into #BoletoTMP( Cd_Emitente, Nm_Emitente, Nm_Fantasia, Vl_Suporte,'
      '   Fl_Imprimir, Mm_Restricao, Cd_Portador, Nr_Ordem )'
      'select'
      '  Cd_Emitente, Nm_Emitente, Nm_Fantasia, Vl_Limite_Credito * :Nr_Indice, ''''1'''','
      '  Mm_Restricao, Cd_Portador,'
      '  '
      '  case'
      '    when ( Mm_Restricao is null ) or'
      '         ( RTrim( Cast( Mm_Restricao as VarChar( 10 ) ) ) = '''''' ) then ''''1'''
      '    else ''''2'''
      ''
      '  end'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Cd_Grupo          = :Cd_Grupo and'
      '  Nr_Pagamento      = :Nr_Pagamento'
      ''
      '  /* Vl_Limite_Credito */'
      '  /* Cd_Portador */'
      ''
    )
    SQLOther2.Strings = (
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Fl_Imprimir = :Fl_Imprimir'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther3.Strings = (
      '------------------------------- Cria as sequences'
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Nr_Orcamento ='
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      #BoletoTMP B'
      ''
      '    where'
      '      B.Fl_Imprimir = ''''1'''' and'
      '      B.Nr_Suporte  < #BoletoTMP.Nr_Suporte'
      '    ) + :NewOrca,'
      '  Nr_Receber   ='
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      #BoletoTMP B'
      ''
      '    where'
      '      B.Fl_Imprimir = ''''1'''' and'
      '      B.Nr_Suporte < #BoletoTMP.Nr_Suporte'
      '    ) + :NewRec'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''
      ''
      '------------------------------- Atualiza o Portador que estiver Null'
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Cd_Portador = 7'
      ''
      'where'
      '  Cd_Portador is null'
    )
    SQLOther4.Strings = (
      '------------------------------- Inclui os Or'#231'amentos'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Fl_Estoque, Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'
      '  Vl_Coleta_Frete, Vl_Pedido_Frete, Vl_Pedido, Dt_Fatura, Fl_Frete )'
      ''
      'select'
      '  :Cd_Filial, Nr_Orcamento, :Dt_Emissao, ''''9'''', ''''1'''', ''''1'''', Cd_Emitente, 6,'
      '  ''''2'''', 1, :Cd_Tabela, 0, 0, 0, 0, 0, 0, 0, Vl_Suporte, :Dt_Emissao, ''''1'''
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''
      ''
      'order by'
      '  Nm_Emitente;'
      ''
      '------------------------------- Itens do Or'#231'amento'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '  Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Qt_Estoque,'
      '  Ps_Produto, Pr_Margem, Qt_Agregado, Pr_Reducao, Fl_Stb )'
      ''
      'select'
      '  :Cd_Filial, Nr_Orcamento, 1, :Cd_Produto, ''''Suporte'''', ''''UN'''', 1, Vl_Suporte,'
      '  ''''1'''', 1, 0, 0, 0, 0, ''''0'''
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''';'
      ''
      '------------------------------- Parcelas do Or'#231'amento'
      'insert into Orcamento_Parcela( Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela,'
      '  Fl_Parcela, Cd_Portador, Dt_Vencimento, Vl_Parcela )'
      '  '
      'select'
      '  :Cd_Filial, Nr_Orcamento, :Nr_Prazo, 1, ''''2'''', Cd_Portador, :Dt_Vencimento,'
      '  Vl_Suporte'
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''';'
      ''
      '------------------------------- Contas a Receber'
      'insert into Receber( Cd_Filial, Nr_Receber, Dt_Emissao, St_Receber, Cd_Emitente,'
      '  Vl_Duplicata, Vl_Recebido, Fl_Estoque, Nr_Orcamento )'
      ''
      'select'
      '  :Cd_Filial, Nr_Receber, :Dt_Emissao, ''''1'''', Cd_Emitente, Vl_Suporte, 0.0, ''''1'''','
      '  Nr_Orcamento'
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''';'
      ''
      '------------------------------- Parcelas do CR'
      'insert into Receber_Parcela( Cd_Filial,  Nr_Receber, Nr_Parcela, Dt_Vencimento,'
      '   Vl_Parcela, Cd_Portador, Cd_Envio, Dt_EnvioBanco, Nr_DoctoBanco, Vl_Recebido,'
      '   Mm_Boleto, Id_Parcela )'
      ''
      'select'
      '  :Cd_Filial, Nr_Receber, 1, :Dt_Vencimento, Vl_Suporte,'
      '  Cd_Portador, ''''01'''', :Dt_Emissao, Nr_DoctoBanco, 0, :Mm_Boleto, Id_Parcela'
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''';'
      ''
      '------------------------------- Historicos da Parcela'
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela,'
      '   Nr_Lancamento, Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      ''
      'select'
      '  :Cd_Filial, Nr_Receber, 1, 1, ''''1'''', :Dt_Emissao, Vl_Suporte, :Cd_Usuario'
      ''
      'from'
      '  #BoletoTMP'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''' ;'
    )
    SQLOther5.Strings = (
      '------------------------------- Altera o valor do suporte'
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Vl_Suporte = :Vl_Suporte'
      ''
      'where'
      '  Nr_Suporte = :Nr_Suporte'
    )
    SQLOther6.Strings = (
      'update'
      '  #BoletoTMP'
      ''
      'set'
      '  Fl_Imprimir = :Fl_Imprimir'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther8.Strings = (
      'select'
      '  B.Cd_Emitente, B.Nm_Emitente, B.Vl_Suporte, B.Mm_Restricao, B.Fl_Imprimir,'
      '  B.Cd_Portador, B.Nr_Orcamento, B.Nr_Receber, B.Nr_Doctobanco,'
      '  '
      '  P.Cd_Banco, P.Tp_Cobranca, P.Ds_Livre'
      ''
      'from'
      '  #BoletoTMP B'
      ''
      'left join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = B.Cd_Portador'
      ''
      'order by'
      '  B.Nm_Emitente'
    )
    Left = 33
    Top = 168
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsEmitenteCalcFields
    CommandText = 'select'#13#10'  B.Cd_Emitente, B.Nm_Emitente, B.Nm_Fantasia, B.Vl_Suporte, B.Mm_Restricao, '#13#10'  B.Fl_Imprimir, B.Cd_Portador, B.Nr_Orcamento, B.Nr_Receber, B.Nr_Doctobanco,'#13#10'  '#13#10'  P.Cd_Banco, P.Tp_Cobranca, P.Ds_Livre, B.Nr_Suporte, P.Cd_Agencia,'#13#10'  P.Cd_Carteira, P.Nr_Conta, P.Nm_Portador'#13#10#13#10'from'#13#10'  #BoletoTMP B'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = B.Cd_Portador'#13#10#13#10'order by'#13#10'  B.Nr_Ordem, B.Cd_Portador, B.Nm_Emitente'
    Parameters = <>
    Left = 92
    Top = 168
    object ADODsEmitentecd_emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_emitente'
    end
    object ADODsEmitentenm_emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentevl_suporte: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_suporte'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsEmitentefl_imprimir: TStringField
      FieldName = 'fl_imprimir'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitenteDp_Imprimir: TStringField
      DisplayLabel = 'Imprimir'
      FieldKind = fkCalculated
      FieldName = 'Dp_Imprimir'
      Size = 3
      Calculated = True
    end
    object ADODsEmitentecd_portador: TSmallintField
      DisplayLabel = 'Portador'
      FieldName = 'cd_portador'
    end
    object ADODsEmitentenr_doctobanco: TStringField
      FieldName = 'nr_doctobanco'
      Size = 25
    end
    object ADODsEmitentenr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsEmitentenr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsEmitenteCd_Banco: TStringField
      FieldName = 'Cd_Banco'
      Size = 4
    end
    object ADODsEmitenteTp_Cobranca: TStringField
      FieldName = 'Tp_Cobranca'
      Size = 1
    end
    object ADODsEmitenteDs_Livre: TStringField
      FieldName = 'Ds_Livre'
      Size = 30
    end
    object ADODsEmitenteMm_Restricao: TMemoField
      FieldName = 'Mm_Restricao'
      BlobType = ftMemo
    end
    object ADODsEmitenteNr_Suporte: TSmallintField
      FieldName = 'Nr_Suporte'
      ReadOnly = True
    end
    object ADODsEmitenteCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      Size = 5
    end
    object ADODsEmitenteCd_Carteira: TSmallintField
      FieldName = 'Cd_Carteira'
    end
    object ADODsEmitenteNr_Conta: TStringField
      FieldName = 'Nr_Conta'
      Size = 10
    end
    object ADODsEmitenteNm_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsEmitenteNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object DsEmitente: TDataSource
    DataSet = ADODsEmitente
    Left = 63
    Top = 168
  end
  object ADODsPrimary: TMultADODS
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'  max( Nr_Orcamento ) + 1 as New'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  max( Nr_Orcamento ) + 1 as New'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      'select'
      '  max( Nr_Receber ) + 1 as New'
      ''
      'from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 121
    Top = 169
    object ADODsPrimarynew: TIntegerField
      FieldName = 'new'
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Tp_Preco'#13#10#13#10'from'#13#10'  Produto'#13#10#13#10'where'#13#10'  Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 151
    Top = 169
    object ADODsProdutoTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsBoleto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsBoletoCalcFields
    CommandText = 'select'#13#10'  R.Cd_Filial, R.Nr_Receber, RP.Nr_Parcela, E.Nm_Emitente, E.Nm_Fantasia,'#13#10'  E.Ds_EMailCob, E.Fl_EmailCob, R.Cd_Emitente'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente and'#13#10'  E.Ds_EMailCob <> '''''#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial      = R.Cd_Filial and'#13#10'  RP.Nr_Receber     = R.Nr_Receber and'#13#10'  RP.Dt_Vencimento >= R.Dt_Emissao and'#13#10'  RP.Nr_DoctoBanco <> '''''#13#10#13#10'where'#13#10'  R.Cd_Filial   = :Cd_Filial and'#13#10'  R.St_Receber = ''''1'''' and'#13#10'  R.Nr_Receber >= :Nr_Start and'#13#10'  R.Nr_Receber <= :Nr_End'#13#10#13#10'order by'#13#10'  R.Nr_Receber'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Start'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8640
      end
      item
        Name = 'Nr_End'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9000
      end>
    Left = 255
    Top = 355
    object ADODsBoletoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsBoletoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsBoletoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsBoletoNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsBoletoNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsBoletoDs_EMailCob: TStringField
      DisplayLabel = 'E-Mail de Cobran'#231'a'
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsBoletoFl_EmailCob: TStringField
      FieldName = 'Fl_EmailCob'
      FixedChar = True
      Size = 1
    end
    object ADODsBoletoDp_Receber: TStringField
      DisplayLabel = 'Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 10
      Calculated = True
    end
    object ADODsBoletoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
  end
  object DsBoleto: TDataSource
    DataSet = ADODsBoleto
    Left = 225
    Top = 355
  end
  object MyQryBoleto: TMyQuery
    SQLInsert.Strings = (
      'insert into Boleto( Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,'
      '    Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,'
      '    Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,'
      '    Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,'
      '    Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,'
      '    mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,'
      '    Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,'
      '    Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,'
      '    Ds_Numero, Dt_Publicacao )'
      ''
      'values( :Nm_Portador, :Cd_Banco, :Nr_Receber, :Nr_Parcela, :Cd_Carteira,'
      '    :Dt_Vencimento, :Cd_Agencia, :Nr_Conta, :Nr_DoctoBanco, :Vl_Parcela,'
      '    :Nm_Emitente, :Nr_MF, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,'
      '    :Dp_Cidade, :DP_MF, :Dp_Endereco, :Dp_DoctoBanco, :Dp_Conta, :Nr_Documento,'
      '    :Ds_Barra, :Dt_Emissao, :Ds_Digitavel, :Tp_Cobranca, :Ds_Asbase, :Ds_Boleto,'
      '    :Nr_Fatura, :Dp_Fatura, :mm_instrucao, :ds_livre, :ds_carteira, :Dp_Sacado_1,'
      '    :Dp_Sacado_2, :Dp_Sacado_3, :Dp_Sacado_4, :pr_taxajuros, :pr_multa,'
      '    :Nr_Separador, :Fl_Entrega, :Nr_Insc_Estadual, :Nr_Pedido_Emitente,'
      '    :Nr_Orcamento, :Ds_LocalPagamento, :Ds_Numero, :Dt_Publicacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Boleto'
      ''
      'set'
      '  Nm_Portador        = :Nm_Portador,'
      '  Cd_Banco           = :Cd_Banco,'
      '  Cd_Carteira        = :Cd_Carteira,'
      '  Dt_Vencimento      = :Dt_Vencimento,'
      '  Cd_Agencia         = :Cd_Agencia,'
      '  Nr_Conta           = :Nr_Conta,'
      '  Nr_DoctoBanco      = :Nr_DoctoBanco,'
      '  Vl_Parcela         = :Vl_Parcela,'
      '  Nm_Emitente        = :Nm_Emitente,'
      '  Nr_MF              = :Nr_MF,'
      '  Ds_Endereco        = :Ds_Endereco,'
      '  Nm_Bairro          = :Nm_Bairro,'
      '  Ds_Complemento     = :Ds_Complemento,'
      '  Nr_CEP             = :Nr_CEP,'
      '  Dp_Cidade          = :Dp_Cidade,'
      '  DP_MF              = :DP_MF,'
      '  Dp_Endereco        = :Dp_Endereco,'
      '  Dp_DoctoBanco      = :Dp_DoctoBanco,'
      '  Dp_Conta           = :Dp_Conta,'
      '  Nr_Documento       = :Nr_Documento,'
      '  Ds_Barra           = :Ds_Barra,'
      '  Dt_Emissao         = :Dt_Emissao,'
      '  Ds_Digitavel       = :Ds_Digitavel,'
      '  Tp_Cobranca        = :Tp_Cobranca,'
      '  Ds_Asbase          = :Ds_Asbase,'
      '  Ds_Boleto          = :Ds_Boleto,'
      '  Nr_Fatura          = :Nr_Fatura,'
      '  Dp_Fatura          = :Dp_Fatura,'
      '  mm_instrucao       = :mm_instrucao,'
      '  ds_livre           = :ds_livre,'
      '  ds_carteira        = :ds_carteira,'
      '  Dp_Sacado_1        = :Dp_Sacado_1,'
      '  Dp_Sacado_2        = :Dp_Sacado_2,'
      '  Dp_Sacado_3        = :Dp_Sacado_3,'
      '  Dp_Sacado_4        = :Dp_Sacado_4,'
      '  pr_taxajuros       = :pr_taxajuros,'
      '  pr_multa           = :pr_multa,'
      '  Nr_Separador       = :Nr_Separador,'
      '  Fl_Entrega         = :Fl_Entrega,'
      '  Nr_Insc_Estadual   = :Nr_Insc_Estadual,'
      '  Nr_Pedido_Emitente = :Nr_Pedido_Emitente,'
      '  Nr_Orcamento       = :Nr_Orcamento,'
      '  Ds_LocalPagamento  = :Ds_LocalPagamento,'
      '  Ds_Numero          = :Ds_Numero,'
      '  Dt_Publicacao      = :Dt_Publicacao'
      ''
      'where'
      '  Nr_Receber         = :Nr_Receber and'
      '  Nr_Parcela         = :Nr_Parcela'
    )
    Connection = DmMaster.MyConMaster
    SQL.Strings = (
      'delete from '
      '  Boleto'
      ''
      'where'
      '  Nr_Receber >= :Nr_Start and'
      '  Nr_Receber <= :Nr_End'
    )
    Options.FieldOrigins = foNone
    Left = 925
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nr_Start'
      end
      item
        DataType = ftUnknown
        Name = 'Nr_End'
      end>
  end
end
