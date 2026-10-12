object FrmOrcamento_Juncao_Venda: TFrmOrcamento_Juncao_Venda
  Left = 322
  Top = 223
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Jun'#231#227'o'
  ClientHeight = 310
  ClientWidth = 605
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
    Height = 310
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 584
    Height = 310
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 280
      Width = 577
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbCliente: TSpeedButton
      Left = 55
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbClienteClick
    end
    object Label3: TLabel
      Left = 5
      Top = 40
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 46
      Top = 55
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
    object Label1: TLabel
      Left = 392
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 497
      Top = 57
      Width = 80
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 79
      Width = 577
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 80
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
    end
    object LblTotal: TLabel
      Left = 375
      Top = 258
      Width = 146
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 411
      Top = 283
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      Enabled = False
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 497
      Top = 283
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_EmitJuncao: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitJuncaoExit
    end
    object EdtNm_EmitJuncao: TEdit
      Left = 79
      Top = 18
      Width = 308
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
    object EdtCd_Funcionario: TCurrencyEdit
      Left = 5
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_FuncionarioExit
    end
    object EdtNm_Funcionario: TEdit
      Left = 70
      Top = 55
      Width = 290
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
    object EdtDt_Start: TDateEdit
      Left = 392
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 2106 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtDt_End: TDateEdit
      Left = 487
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 2106 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object DbGOrcamento: TDBGrid
      Left = 5
      Top = 94
      Width = 572
      Height = 163
      DataSource = DsOrcamento
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcamentoEnter
      OnExit = DbGOrcamentoExit
      OnKeyPress = DbGOrcamentoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 299
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Orcamento'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Juncao'
          Width = 39
          Visible = True
        end>
    end
  end
  object ADOCmdJuncao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Cria tabela para os or'#231'amentos'
      'if Object_ID( ''''TempDB..##JuncaoVD'''' ) is null'
      '  create table ##JuncaoVD'
      '    ('
      '    Nr_SPID Int,'
      '    Nr_Orcamento Int,'
      '    Dt_Emissao SmallDateTime,'
      '    Vl_Orcamento Numeric( 12, 3 ),'
      '    Cd_Funcionario SmallInt,'
      '    Nm_Funcionario VarChar( 50 ),'
      '    Fl_Juncao Char( 1 )'
      '    )'
      ''
      'else'
      '  delete from ##JuncaoVD where Nr_SPID = @@SPID'
      ''
      '-------------------- Insere os or'#231'amentos'
      'insert into ##JuncaoVD( Nr_SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento,'
      '  Cd_Funcionario, Nm_Funcionario, Fl_Juncao )'
      'select'
      '  @@SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario,'
      '  Nm_Funcionario, ''''1'''
      ''
      'from'
      '  Orcamento_Total'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Cd_Emitente  = :Cd_Emitente and'
      '  /* Cd_Vendedor */'
      '  Dt_Emissao  >= :Dt_Start and'
      '  Dt_Emissao   < :Dt_End and'
      '  St_Orcamento = ''''5''''                         -- Somente Or'#231'amentos em Estoque Reservado'
    )
    SQLOther1.Strings = (
      '-------------------- Muda situa'#231#227'o da jun'#231#227'o para o or'#231'amento'
      'update'
      '  ##JuncaoVD'
      ''
      'set'
      '  Fl_Juncao = :Fl_Juncao'
      ''
      'where'
      '  Nr_SPID      = @@SPID and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther2.Strings = (
      '--------------- Inclui o novo pedido'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Mm_Observacao, Cd_Tabela, Fl_Frete, Pr_ICMS )'
      ''
      'select top 1'
      '  B.Cd_Filial, @Nr_Orcamento, @Dt_Emissao, ''''1'''', B.Tp_Carga,'
      '  B.Cd_Emitente, @Cd_Funcionario, B.Fl_FormaPagto, B.Nr_Endereco,'
      '  B.Mm_Observacao, B.Cd_Tabela, ''''2'''', B.Pr_ICMS'
      ''
      'from'
      '  ##JuncaoVD A'
      ''
      'inner join'
      '  Orcamento B'
      'on'
      '  B.Cd_Filial    = @Cd_Filial and'
      '  B.Nr_Orcamento = A.Nr_Orcamento'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      ''
      'order by'
      '  A.Nr_Orcamento desc'
      ''
      '-------------------- Cria tabelas temporarias com os itens de or'#231'amento'
      'if Object_ID( ''''TempDB..#OrcItem'''' ) is not null'
      '  drop table #OrcItem'
      ''
      'create table #OrcItem'
      '  ('
      '  Nr_Orcamento Int,'
      '  Nr_Item smallint not null,'
      '  Nr_NewItem SmallInt Identity( 1, 1 ) not null,'
      '  )'
      ''
      'if Object_ID( ''''TempDB..#OrcProjeto'''' ) is not null'
      '  drop table #OrcProjeto'
      ''
      'create table #OrcProjeto'
      '  ('
      '  Nr_Orcamento Int,'
      '  Nr_Projeto smallint not null,'
      '  Nr_NewProjeto SmallInt Identity( 1, 1 ) not null,'
      '  )'
      ''
      '-------------------- Insere os itens nas tabelas temporarias'
      'insert into #OrcItem( Nr_Orcamento, Nr_Item )'
      'select'
      '  J.Nr_Orcamento, OI.Nr_Item'
      ''
      'from'
      '  ##JuncaoVD J'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = @Cd_Filial and'
      '  OI.Nr_Orcamento = J.Nr_Orcamento'
      ''
      'where'
      '  J.Nr_SPID   = @@SPID and'
      '  J.Fl_Juncao = ''''1'''
      ''
      '-------------------- Insere os itens no novo or'#231'amento'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Qt_Estoque,'
      '   Ps_Produto, Pr_Margem, Qt_Agregado, Pr_Reducao, Fl_Stb, Nr_Lote,'
      '   Dt_Fabricacao, Dt_Validade, cd_subproduto, ds_ambiente, fl_medida,'
      '   Im_SubProduto, Fl_OrdemServico, Sg_Venda, Qt_Venda )'
      ''
      'select'
      '  OO.Cd_Filial, @Nr_Orcamento, OI.Nr_NewItem, OO.Cd_Produto, OO.Nm_Produto,'
      '  OO.Sg_Unidade, OO.Qt_Item, OO.Vl_Unitario, OO.Fl_Confirmado, OO.Qt_Estoque,'
      '  OO.Ps_Produto, OO.Pr_Margem, OO.Qt_Agregado, OO.Pr_Reducao, OO.Fl_Stb,'
      '  OO.Nr_Lote, OO.Dt_Fabricacao, OO.Dt_Validade, OO.cd_subproduto,'
      '  OO.ds_ambiente, OO.fl_medida, OO.Im_SubProduto, OO.Fl_OrdemServico,'
      '  OO.Sg_Venda, OO.Qt_Venda'
      ''
      'from'
      '  #OrcItem OI'
      ''
      'inner join'
      '  Orcamento_Item OO'
      'on'
      '  OO.Cd_Filial    = @Cd_Filial and'
      '  OO.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OO.Nr_Item      = OI.Nr_Item'
      ''
      '-------------------- Insere os itens de conjunto'
      'insert into Orcamento_Conjunto( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Nm_Produto )'
      ''
      'select'
      '  OC.Cd_Filial, @Nr_Orcamento, OI.Nr_NewItem, OC.Cd_Produto, OC.Sg_Unidade,'
      '  OC.Qt_Item, OC.Vl_Unitario, OC.Nm_Produto'
      ''
      'from'
      '  #OrcItem OI'
      ''
      'inner join'
      '  Orcamento_Conjunto OC'
      'on'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OC.Nr_Item      = OI.Nr_Item'
    )
    SQLOther3.Strings = (
      '-------------------- Insere os itens nas tabelas temporarias'
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '   Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      'select'
      '  OD.Cd_Filial, @Nr_Orcamento, OI.Nr_NewItem, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  #OrcItem OI'
      ''
      'inner join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = @Cd_Filial and'
      '  OD.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OD.Nr_Item      = OI.Nr_Item'
      ''
      '-------------------- Insere os itens nas tabelas temporarias'
      'insert into #OrcProjeto( Nr_Orcamento, Nr_Projeto )'
      'select'
      '  J.Nr_Orcamento, OP.Nr_Projeto'
      ''
      'from'
      '  ##JuncaoVD J'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial    = @Cd_Filial and'
      '  OP.Nr_Orcamento = J.Nr_Orcamento'
      ''
      'where'
      '  J.Nr_SPID   = @@SPID and'
      '  J.Fl_Juncao = ''''1'''
      ''
      '-------------------- Insere os itens - Orcamento_Projeto'
      'insert into Orcamento_Projeto( Cd_Filial, Nr_Orcamento, Nr_Projeto, Cd_Projeto,'
      '   Qt_Projeto, Mm_Observacao, Ds_Ambiente, Nr_PrazoEntrega, Vl_Projeto )'
      'select'
      '  OOP.Cd_Filial, @Nr_Orcamento, OP.Nr_NewProjeto, OOP.Cd_Projeto,'
      '  OOP.Qt_Projeto, OOP.Mm_Observacao, OOP.Ds_Ambiente, OOP.Nr_PrazoEntrega,'
      '  OOP.Vl_Projeto '
      ''
      'from'
      '  #OrcProjeto OP'
      ''
      'inner join'
      '  Orcamento_Projeto OOP'
      'on'
      '  OOP.Cd_Filial    = @Cd_Filial and'
      '  OOP.Nr_Orcamento = OP.Nr_Orcamento and'
      '  OOP.Nr_Projeto   = OP.Nr_Projeto'
      ''
      '-------------------- Insere os itens - Orcamento_Projeto_Item'
      'insert into Orcamento_Projeto_Item( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '   Nr_Item, Tp_Item, Cd_Parte, Cd_Peca, Nr_Altura, Nr_Altura_Folga,'
      '   Nr_Largura, Nr_Largura_Folga, Cd_Produto, Sg_Unidade, Qt_Item,'
      '   Vl_Unitario, Nr_Altura_Direita, Nr_Largura_Direita, Nr_Item_Projeto )'
      ''
      'select'
      '  OPI.Cd_Filial, @Nr_Orcamento, OP.Nr_NewProjeto, OPI.Nr_Item, OPI.Tp_Item,'
      '  OPI.Cd_Parte, OPI.Cd_Peca, OPI.Nr_Altura, OPI.Nr_Altura_Folga,'
      '  OPI.Nr_Largura, OPI.Nr_Largura_Folga, OPI.Cd_Produto, OPI.Sg_Unidade,'
      '  OPI.Qt_Item, OPI.Vl_Unitario, OPI.Nr_Altura_Direita, OPI.Nr_Largura_Direita,'
      '  OPI.Nr_Item_Projeto'
      ''
      'from'
      '  #OrcProjeto OP'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = @Cd_Filial and'
      '  OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = OP.Nr_Projeto'
      ''
      ''
      '-------------------- Insere os itens - Orcamento_Projeto_Parte'
      'insert into Orcamento_Projeto_Parte( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '   Cd_Parte, Nr_Altura, Nr_Largura )'
      ''
      'select'
      '  OPP.Cd_Filial, @Nr_Orcamento, OP.Nr_NewProjeto, OPP.Cd_Parte,'
      '  OPP.Nr_Altura, OPP.Nr_Largura'
      ''
      'from'
      '  #OrcProjeto OP'
      ''
      'inner join'
      '  Orcamento_Projeto_Parte OPP'
      'on'
      '  OPP.Cd_Filial    = @Cd_Filial and'
      '  OPP.Nr_Orcamento = OP.Nr_Orcamento and'
      '  OPP.Nr_Projeto   = OP.Nr_Projeto'
    )
    SQLOther4.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '--------------- Retira da Reserva'
      'execute Orcamento_Situacao @Cd_Filial, @Nr_Orcamento, ''''6'''', ''''5'''', null'
      ''
      '--------------- Informa o novo pedido'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Nr_Juncao = :Nr_NewOrcamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther5.Strings = (
      '-------------------- Insere os itens - Orcamento_Moldura'
      'insert into Orcamento_Moldura( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Moldura,'
      '   Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura )'
      ''
      'select'
      '  OM.Cd_Filial, @Nr_Orcamento, OI.Nr_NewItem, OM.Nr_Moldura, OM.Nr_Altura,'
      '  OM.Nr_Largura, OM.Nr_Folga, OM.Qt_Moldura'
      ''
      'from'
      '  #OrcItem OI'
      ''
      'inner join'
      '  Orcamento_Moldura OM'
      'on'
      '  OM.Cd_Filial    = @Cd_Filial and'
      '  OM.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OM.Nr_Item      = OI.Nr_Item'
    )
    Left = 27
    Top = 260
  end
  object ADODsOrcamento: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = '-------------------- Cria tabela com os or'#231'amentos'#13#10'if Object_ID( ''''TempDB..##JuncaoVD'''' ) is null'#13#10'  create table ##JuncaoVD'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Nr_Orcamento Int,'#13#10'    Dt_Emissao SmallDateTime,'#13#10'    Vl_Orcamento Numeric( 12, 3 ),'#13#10'    Cd_Funcionario SmallInt,'#13#10'    Nm_Funcionario VarChar( 50 ),'#13#10'    Fl_Juncao Char( 1 )'#13#10'    )'#13#10#13#10'else'#13#10'  delete from ##JuncaoVD where Nr_SPID = @@SPID'#13#10#13#10'-------------------- Cria tabela com os or'#231'amentos'#13#10'insert into ##JuncaoVD( Nr_SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento,'#13#10'  Cd_Funcionario, Nm_Funcionario, Fl_Juncao )'#13#10'select'#13#10'  @@SPID, Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario, Nm_Funcionario, ''''1'''#13#10#13#10'from'#13#10'  Orcamento_Total'#13#10#13#10'where'#13#10'  St_Orcamento = ''''5''''                         -- Somente Or'#231'amentos em Estoque Reservado'#13#10#13#10'select'#13#10'  Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario, Nm_Funcionario, Fl_Juncao'#13#10#13#10'from'#13#10'  ##JuncaoVD'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  Nr_Orcamento'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Nr_Orcamento, Dt_Emissao, Vl_Orcamento, Cd_Funcionario, Nm_Funcionario,'
      '  Fl_Juncao'
      ''
      'from'
      '  ##JuncaoVD'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      '  /* Fl_Juncao */'
      ''
      'order by'
      '  Nr_Orcamento'
    )
    Left = 87
    Top = 260
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoVl_Orcamento: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Orcamento'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsOrcamentoNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsOrcamentoFl_Juncao: TStringField
      FieldName = 'Fl_Juncao'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Juncao: TStringField
      DisplayLabel = 'Juntar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Juncao'
      Size = 3
      Calculated = True
    end
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Orcamento ) as NewOrcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      'select'
      '  Nr_Orcamento'
      ''
      'from'
      '  #Juncao_Pedido'
      ''
    )
    Left = 119
    Top = 260
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 57
    Top = 260
  end
end
