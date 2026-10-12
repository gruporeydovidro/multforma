object FrmEstoque_Acerto: TFrmEstoque_Acerto
  Left = 294
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Acerto de Estoque'
  ClientHeight = 629
  ClientWidth = 1008
  Color = clWindow
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
  object Label2: TLabel
    Left = 352
    Top = 224
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 629
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 987
    Height = 629
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 599
      Width = 979
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 1
      Width = 202
      Height = 13
      Caption = 'Emitente para Acerto (Cliente/Fornecedor):'
    end
    object SbEmitente: TSpeedButton
      Left = 53
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label5: TLabel
      Left = 390
      Top = 2
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 421
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label4: TLabel
      Left = 5
      Top = 36
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object SbOpen: TSpeedButton
      Left = 417
      Top = 99
      Width = 80
      Height = 19
      Hint = 'Seleciona Produtos'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 646 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label1: TLabel
      Left = 5
      Top = 332
      Width = 162
      Height = 13
      Caption = 'Produtos a Alterar as quantidades:'
    end
    object SbZerar: TSpeedButton
      Left = 5
      Top = 602
      Width = 175
      Height = 25
      Hint = 'Zera Saldo de todos os selecionados'
      Caption = '"Zerar" &todos os selecionados'
      Enabled = False
      Flat = True
      Glyph.Data = {binary 362 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbZerarClick
    end
    object Label3: TLabel
      Left = 6
      Top = 315
      Width = 53
      Height = 13
      Caption = 'Fabricante:'
    end
    object DbTxtLaboratorio: TDBText
      Left = 64
      Top = 315
      Width = 489
      Height = 17
      DataField = 'Nm_Laboratorio'
      DataSource = DsSelect
    end
    object SbRecalculo: TSpeedButton
      Left = 183
      Top = 602
      Width = 240
      Height = 25
      Hint = 'Seleciona Produtos'
      Caption = 'Recalcular Estoque todos os Selecionados'
      Enabled = False
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbRecalculoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 814
      Top = 602
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 900
      Top = 602
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 77
      Top = 16
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
      TabOrder = 1
    end
    object EdtCd_CFOP: TEdit
      Left = 390
      Top = 16
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 2
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 445
      Top = 16
      Width = 287
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
      TabOrder = 3
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 50
      Width = 973
      Height = 32
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 5
      Top = 99
      Width = 410
      Height = 19
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Produtos:'
      LabelSpacing = 1
      MaxLength = 120
      TabOrder = 5
      OnExit = EdtNm_ProdutoExit
    end
    object DbGSelect: TDBGrid
      Left = 5
      Top = 119
      Width = 975
      Height = 194
      Hint = 'Pressione " Z " para Zerar o saldo do produto ou '#13#10'pressione <ENTER> para escolher o saldo do estoque'
      Color = clWhite
      DataSource = DsSelect
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
          FieldName = 'Cd_Produto'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 409
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Laboratorio'
          Width = 242
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saldo'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Reserva'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Liquido'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbGSelected: TDBGrid
      Left = 5
      Top = 346
      Width = 975
      Height = 250
      Hint = 'De um click duplo eu pressione < ENTER > para abrir o cadastro do produto'
      DataSource = DsSelected
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGSelectedDblClick
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      OnKeyPress = DbGSelectedKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 640
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saida'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Entrada'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Nova'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
    object PnlAction_4: TPanel
      Left = 950
      Top = 318
      Width = 26
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 10
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 26
        Height = 27
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object RbDescricao: TRadioButton
      Left = 70
      Top = 82
      Width = 71
      Height = 17
      Caption = '&Descri'#231#227'o'
      Checked = True
      TabOrder = 11
      TabStop = True
    end
    object RbCodigo: TRadioButton
      Left = 145
      Top = 82
      Width = 62
      Height = 17
      Caption = 'C'#243'dig&o'
      TabOrder = 12
    end
  end
  object DsSelect: TDataSource
    DataSet = ADODsSelect
    Left = 29
    Top = 214
  end
  object ADODsSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,'#13#10'  ES.Qt_Reserva, ES.Qt_Saldo, ES.Qt_Liquido, L.Nm_Laboratorio'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  P.Nm_Produto like :Nm_Produto'#13#10#13#10'order by'#13#10'  P.Nr_Sequencia'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Nm_Produto'
        DataType = ftString
        Size = 1
        Value = '%'
      end>
    SQLOther0.Strings = (
      '--------------- Consulta pela Descri'#231#227'o'
      'select'
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,'
      '  ES.Qt_Reserva, ES.Qt_Saldo, ES.Qt_Liquido, L.Nm_Laboratorio'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  /* Ordem */'
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo C'#243'digo'
      'select'
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,'
      '  ES.Qt_Reserva, ES.Qt_Saldo, ES.Qt_Liquido, L.Nm_Laboratorio'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Cd_Produto = :Cd_Produto'
      ''
      'order by'
      '  /* Ordem */'
    )
    Left = 58
    Top = 214
    object ADODsSelectCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSelectCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsSelectNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsSelectSg_Estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsSelectNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsSelectQt_Reserva: TBCDField
      DisplayLabel = 'Reserva'
      FieldName = 'Qt_Reserva'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsSelectQt_Saldo: TBCDField
      DisplayLabel = 'Saldo Bruto'
      FieldName = 'Qt_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      Precision = 15
      Size = 3
    end
    object ADODsSelectQt_Liquido: TBCDField
      DisplayLabel = 'Liquido'
      FieldName = 'Qt_Liquido'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      Precision = 16
      Size = 3
    end
    object ADODsSelectNm_Laboratorio: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
  end
  object ADOCmdAcerto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Cria table temporaria'
      'if Object_ID( ''''TempDB..##AcertoEstoque'''' ) is null'
      '  create table ##AcertoEstoque'
      '    ('
      '    Nr_ID Int,'
      '    Cd_Produto Int,'
      '    Qt_Saida Numeric( 12, 3 ),'
      '    Qt_Entrada Numeric( 12, 3 ),'
      '    Nr_Item SmallInt Identity( 1, 1 )'
      '    )'
      ''
      'else'
      '  delete from'
      '    ##AcertoEstoque'
      ''
      '  where'
      '    Nr_ID = @@SPID'
    )
    SQLOther1.Strings = (
      '------------------------- Inclui/Altera lan'#231'amento do item'
      'declare'
      '  @Cd_Produto Int,'
      '  @Qt_Saida Numeric( 12, 3 ),'
      '  @Qt_Entrada Numeric( 12, 3 )'
      ''
      'select'
      '  @Cd_Produto = :Cd_Produto,'
      '  @Qt_Saida   = :Qt_Saida,'
      '  @Qt_Entrada = :Qt_Entrada'
      ''
      ''
      'if Exists('
      '    select'
      '      Cd_Produto'
      ''
      '    from'
      '      ##AcertoEstoque'
      ''
      '    where'
      '      Nr_ID      = @@SPID and'
      '      Cd_Produto = @Cd_Produto'
      '    )'
      ''
      '  update'
      '    ##AcertoEstoque'
      ''
      '  set'
      '    Qt_Saida   = @Qt_Saida,'
      '    Qt_Entrada = @Qt_Entrada'
      ''
      '  where'
      '    Nr_ID      = @@SPID and'
      '    Cd_Produto = @Cd_Produto'
      ''
      'else'
      '  insert into ##AcertoEstoque( Nr_ID, Cd_Produto, Qt_Entrada, Qt_Saida )'
      '  values( @@SPID, @Cd_Produto, @Qt_Entrada, @Qt_Saida )'
    )
    SQLOther2.Strings = (
      '------------------------- Entradas'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Entrada Int'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Nr_Entrada = :Nr_Entrada'
      ''
      '------------------------- Inclus'#227'o da Nota'
      'insert into Entrada( Cd_Filial, Nr_Entrada, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota, Mm_Observacao,'
      '  St_Entrada, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa,'
      '  Ds_Quantidade, Ds_Especie, Ds_Marca, Cd_Transportador, Mm_Nota, Fl_Frete,'
      '  Fl_Emitente, Fl_ConFinal )'
      ''
      'values( @Cd_Filial, @Nr_Entrada, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, :Vl_BaseICMS, :Pr_ICMS,'
      '  :Vl_ICMS, :Vl_Produto, :Vl_Frete, :Vl_IPI, :Vl_Nota, :Ps_Nota, :Mm_Observacao,'
      '  ''''1'''', :Vl_BaseSubst, :Vl_Substituicao, :Vl_Seguro, :Vl_Despesa, :Ds_Quantidade,'
      '  :Ds_Especie, :Ds_Marca, :Cd_Transportador, :Mm_Nota, :Fl_Frete, ''''1'''', ''''1'''' )'
      ''
      '------------------------- Inclus'#227'o dos itens'
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '   Dt_Validade, Pr_Desconto, Pr_ICMS, Vl_ICMS, Pr_IPI, Vl_IPI, Nm_Produto )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Entrada, AE.Nr_Item, AE.Cd_Produto, P.Sg_Estoque,'
      '  AE.Qt_Entrada, AE.Qt_Entrada, 0.01, null, null,'
      '  null, 0, 0, 0, 0, 0, P.Nm_Produto'
      ''
      'from'
      '  ##AcertoEstoque AE'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = AE.Cd_Produto'
      ''
      'where'
      '  AE.Nr_ID = @@SPID and'
      '  AE.Qt_Entrada > 0'
      ''
      '-------------------- Atualiza o saldo do estoque'
      'execute Entrada_Estoque @Cd_Filial, @Nr_Entrada, ''''2'''', ''''1'''', null'
      ''
    )
    SQLOther3.Strings = (
      '------------------------- Saidas'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Saida Int'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Nr_Saida   = :Nr_Saida'
      ''
      '------------------------- Dados da Saida'
      'insert into Saida( Cd_Filial, Nr_Saida, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota, Mm_Observacao,'
      '  St_Saida, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa,'
      '   Ds_Quantidade, Ds_Especie, Ds_Marca, Cd_Transportador, Mm_Nota, Fl_Frete, Fl_ConFinal )'
      'values( @Cd_Filial, @Nr_Saida, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, :Vl_BaseICMS, :Pr_ICMS,'
      '  :Vl_ICMS, :Vl_Produto, :Vl_Frete, :Vl_IPI, :Vl_Nota, :Ps_Nota, :Mm_Observacao,'
      '  ''''1'''', :Vl_BaseSubst, :Vl_Substituicao, :Vl_Seguro, :Vl_Despesa, :Ds_Quantidade,'
      '  :Ds_Especie, :Ds_Marca, :Cd_Transportador, :Mm_Nota, :Fl_Frete, ''''1'''' )'
      ''
      '------------------------- Itens da Saida'
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '  Pr_ICMS, Pr_IPI, Nm_Produto )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Saida, AE.Nr_Item, AE.Cd_Produto, P.Sg_Estoque,'
      '  AE.Qt_Saida, AE.Qt_Saida, 0.01, null, null, null,'
      '  0, 0, P.Nm_Produto'
      ''
      'from'
      '  ##AcertoEstoque AE'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = AE.Cd_Produto'
      ''
      'where'
      '  AE.Nr_ID = @@SPID and'
      '  AE.Qt_Saida > 0'
      ''
      '-------------------- Atualiza o saldo do estoque'
      'execute Saida_Estoque @Cd_Filial, @Nr_Saida, ''''2'''', ''''1'''
    )
    SQLOther4.Strings = (
      '-------------------- Excluir produto da sele'#231#227'o'
      'delete from'
      '  ##AcertoEstoque'
      ''
      'where'
      '  Nr_ID      = @@SPID and'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther5.Strings = (
      '--------------- Recalculo de estoque'
      'exec Estoque_Recalc :Cd_Filial, :Cd_Produto'
    )
    Left = 219
    Top = 401
  end
  object DsSelected: TDataSource
    DataSet = ADODsSelected
    Left = 28
    Top = 369
  end
  object ADODsSelected: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsSelectedCalcFields
    CommandText = '/*if Object_ID( ''''TempDB..##AcertoEstoque'''' ) is null'#13#10'  create table ##AcertoEstoque'#13#10'    ('#13#10'    Nr_ID Int,'#13#10'    Cd_Produto Int,'#13#10'    Qt_Saida Numeric( 12, 3 ),'#13#10'    Qt_Entrada Numeric( 12, 3 )'#13#10'    )'#13#10#13#10'else'#13#10'  delete from'#13#10'    ##AcertoEstoque'#13#10#13#10'  where'#13#10'    Nr_ID = @@SPID'#13#10'*/'#13#10#13#10'select'#13#10'  AE.Cd_Produto, P.Nm_Produto, AE.Qt_Saida, AE.Qt_Entrada, ES.Qt_Liquido,'#13#10'  P.Nr_Sequencia, P.Sg_Estoque'#13#10#13#10'from'#13#10'  ##AcertoEstoque AE'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = AE.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  AE.Cd_Produto, P.Nm_Produto, AE.Qt_Saida, AE.Qt_Entrada, ES.Qt_Liquido,'
      '  P.Nr_Sequencia, P.Sg_Estoque'
      ''
      'from'
      '  ##AcertoEstoque AE'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = AE.Cd_Produto'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = P.Cd_Produto'
      ''
      'where'
      '  AE.Nr_ID = @@SPID'
      '  '
      'order by'
      '  /* Ordem */'
    )
    Left = 58
    Top = 369
    object ADODsSelectedCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsSelectedNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsSelectedQt_Saida: TBCDField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'Qt_Saida'
      Precision = 12
      Size = 3
    end
    object ADODsSelectedQt_Entrada: TBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'Qt_Entrada'
      Precision = 12
      Size = 3
    end
    object ADODsSelectedQt_Liquido: TBCDField
      FieldName = 'Qt_Liquido'
      ReadOnly = True
      Precision = 16
      Size = 3
    end
    object ADODsSelectedNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsSelectedQt_Nova: TFloatField
      DisplayLabel = 'Novo Saldo'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Qt_Nova'
      Calculated = True
    end
    object ADODsSelectedSg_Estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
  end
  object ADODsSequencia: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '------------------------- Sequencia da Entrada'#13#10'select'#13#10'  max( A.Nr_Entrada ) + 1 as Nr_Sequencia'#13#10#13#10'from'#13#10'  Entrada A'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '------------------------- Sequencia da Entrada'
      'select'
      '  max( A.Nr_Entrada ) + 1 as Nr_Sequencia'
      ''
      'from'
      '  Entrada A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      'select'
      '  max( A.Nr_Saida ) + 1 as Nr_Sequencia'
      ''
      'from'
      '  Saida A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 265
    Top = 402
    object ADODsSequenciaNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
      ReadOnly = True
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActDelProduto
            ImageIndex = 19
            ShortCut = 116
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 676
    Top = 40
    StyleName = 'XP Style'
    object ActDelProduto: TAction
      Hint = 'Excluir Produto'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelProdutoExecute
    end
  end
end
