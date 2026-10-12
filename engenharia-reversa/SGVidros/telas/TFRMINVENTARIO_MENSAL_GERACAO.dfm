object FrmInventario_Mensal_Geracao: TFrmInventario_Mensal_Geracao
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gera'#231#227'o de Dados para o Invent'#225'rio'
  ClientHeight = 306
  ClientWidth = 654
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 306
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 633
    Height = 306
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 276
      Width = 622
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 6
      Top = 1
      Width = 393
      Height = 13
      Caption = 'Importar saldo do m'#234's (deixe o campo em branco para gerar toda a movimenta'#231#227'o):'
    end
    object Label22: TLabel
      Left = 104
      Top = 34
      Width = 141
      Height = 13
      Caption = 'Tabela de Pre'#231'os para Custo:'
    end
    object SbTabPreco: TSpeedButton
      Left = 211
      Top = 49
      Width = 23
      Height = 19
      Hint = 'Seleciona Tabela de Pre'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTabPrecoClick
    end
    object Label2: TLabel
      Left = 6
      Top = 74
      Width = 144
      Height = 13
      Caption = 'Eliminar produtos j'#225' existentes:'
    end
    object Label3: TLabel
      Left = 152
      Top = 74
      Width = 121
      Height = 13
      Caption = 'Utilizar somente produtos:'
    end
    object Label4: TLabel
      Left = 6
      Top = 34
      Width = 94
      Height = 13
      Caption = 'Utilizar custo m'#233'dio:'
    end
    object Label5: TLabel
      Left = 289
      Top = 74
      Width = 178
      Height = 13
      Caption = 'Eliminar produtos com saldo negativo:'
    end
    object Label27: TLabel
      Left = 6
      Top = 112
      Width = 94
      Height = 13
      Caption = 'Class. Fiscal (NCM):'
    end
    object SbTributacao: TSpeedButton
      Left = 144
      Top = 127
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTributacaoClick
    end
    object Label7: TLabel
      Left = 105
      Top = 112
      Width = 175
      Height = 13
      Caption = 'Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
    end
    object BitBtnConfirm: TBitBtn
      Left = 460
      Top = 279
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 546
      Top = 279
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 10
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 104
      Top = 49
      Width = 110
      Height = 19
      TabOrder = 2
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_TabelaKeyDown
    end
    object CbEliminar: TComboBox
      Left = 6
      Top = 89
      Width = 50
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
    object CbProduto: TComboBox
      Left = 152
      Top = 89
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Movimentados no M'#234's'
      Items.Strings = (
        'Movimentados no M'#234's'
        'Ativo'
        'Ativos e Inativos'
      )
    end
    object EdtCd_Old: TMaskEdit
      Left = 6
      Top = 15
      Width = 50
      Height = 19
      EditMask = '####/##;0; '
      MaxLength = 7
      TabOrder = 0
      Text = '200808'
    end
    object CbCusto: TComboBox
      Left = 6
      Top = 49
      Width = 50
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbNegativo: TComboBox
      Left = 289
      Top = 89
      Width = 50
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 5
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtCd_ClasFiscal: TMaskEdit
      Left = 6
      Top = 127
      Width = 87
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 6
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 105
      Top = 127
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_TributacaoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 167
      Top = 127
      Width = 394
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
      TabOrder = 8
    end
  end
  object ADOCmdGerar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Exclui os itens caso solicitado'
      'delete from'
      '  Inventario_Mensal_Produto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo'
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Importa os produtos'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Periodo Char( 6 )'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Cd_Periodo = :Cd_Periodo'
      ''
      'insert into Inventario_Mensal_Produto( Cd_Filial, Cd_Periodo, Cd_Produto, Qt_Anterior,'
      '  Qt_Entradas, Qt_Saidas, Vl_Custo )'
      ''
      'select'
      '  @Cd_Filial, @Cd_Periodo, P.Cd_Produto, 0, 0, 0, Coalesce( PP.Vl_Custo, 0.01 )'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'where'
      '  P.Fl_Produto = ''''1'''' and'
      ''
      '  not exists('
      '    select'
      '      IP.Cd_Produto'
      ''
      '    from'
      '      Inventario_Mensal_Produto IP'
      ''
      '    where'
      '      IP.Cd_Filial  = @Cd_Filial and'
      '      IP.Cd_Periodo = @Cd_Periodo and'
      '      IP.Cd_Produto = P.Cd_Produto'
      ''
      '    )'
      ''
      '  /* Fl_Ativo */'
      '  /* Cd_ClasFiscal */'
      '  /* Cd_Tributacao */'
    )
    SQLOther2.Strings = (
      '-------------------- Saldo anterior do inventario anterior'
      'update'
      '  Inventario_Mensal_Produto'
      ''
      'set'
      '  Qt_Anterior = Coalesce( ('
      '    select'
      '      Old.Qt_Anterior + Old.Qt_Entradas - Old.Qt_Saidas'
      ''
      '    from'
      '      Inventario_Mensal_Produto Old'
      ''
      '    where'
      '      Old.Cd_Filial  = Inventario_Mensal_Produto.Cd_Filial and'
      '      Old.Cd_Periodo = :Cd_Old and'
      '      Old.Cd_Produto = Inventario_Mensal_Produto.Cd_Produto'
      '    ), 0.0 )'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_New'
    )
    SQLOther3.Strings = (
      '-------------------- Gera #InventarioMovto com saldos'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Periodo Char( 6 ),'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Cd_Periodo = :Cd_Periodo,'
      '  @Dt_Start   = :Dt_Start,'
      '  @Dt_End     = :Dt_End'
      ''
      '  --------------- Cria a tabela temporaria'
      '  if Object_ID( ''''TempDB..#EstoqueRecalc'''' ) is null'
      '    create table #EstoqueRecalc'
      '      ('
      '      Cd_Produto Int,'
      '      Fl_Estoque Char( 1 ),'
      '      Qt_Saida Numeric( 15, 3 ),'
      '      Qt_Entrada Numeric( 15, 3 ),'
      '      Qt_Orcamento Numeric( 15, 3 ),'
      '      Qt_Reserva Numeric( 15, 3 ),'
      '      Qt_Balcao Numeric( 15, 3 )'
      '      )'
      ''
      '  else'
      '    truncate table #EstoqueRecalc'
      ''
      '  -- Saidas'
      '  insert into #EstoqueRecalc'
      '  select'
      '    SI.Cd_Produto, S.Fl_Estoque,'
      '    sum( SI.Qt_Estoque ) as Qt_Saida,'
      '    Qt_Entrada   = 0.0,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Saida S'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = S.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Saida_Item SI'
      '  on'
      '    SI.Cd_Filial   = S.Cd_Filial and'
      '    SI.Nr_Saida    = S.Nr_Saida'
      ''
      '  --------------- Exclui itens de baixa - 01/10/2009'
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = SI.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = S.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = SI.Cd_Produto'
      ''
      '  where'
      '    S.Cd_Filial      = @Cd_Filial and'
      '    S.St_Saida       = ''''2'''' and'
      '    S.Dt_Lancamento >= @Dt_Start and'
      '    S.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    SI.Cd_Produto, S.Fl_Estoque'
      ''
      '  -- Entradas'
      '  insert into #EstoqueRecalc'
      '  select'
      '    EI.Cd_Produto, E.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    sum( EI.Qt_Estoque ) as Qt_Entrada,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Entrada E'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = E.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Entrada_Item EI'
      '  on'
      '    EI.Cd_Filial   = E.Cd_Filial and'
      '    EI.Nr_Entrada  = E.Nr_Entrada'
      ''
      '  --------------- Exclui itens de baixa - 01/10/2009'
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = EI.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = EI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = EI.Cd_Produto'
      ''
      '  where'
      '    E.Cd_Filial  = @Cd_Filial and'
      '    E.St_Entrada = ''''2'''' and'
      '    E.Dt_Lancamento >= @Dt_Start and'
      '    E.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    EI.Cd_Produto, E.Fl_Estoque'
      ''
      '  -- Balcao - Saidas'
      '  insert into #EstoqueRecalc'
      '  select'
      '    BI.Cd_Produto, B.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    sum( BI.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Balcao'
      ''
      '  from'
      '    Balcao B'
      ''
      '  inner join'
      '    Balcao_Item BI'
      '  on'
      '    BI.Cd_Filial = B.Cd_Filial and'
      '    BI.Nr_Balcao = B.Nr_Balcao'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = BI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = BI.Cd_Produto'
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = BI.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = P.Cd_Produto and'
      '    PU.Sg_Unidade = P.Sg_Venda'
      ''
      '  where'
      '    B.Cd_Filial = @Cd_Filial and'
      '    B.St_Balcao = ''''9'''' and'
      '    B.Dt_Fatura >= @Dt_Start and'
      '    B.Dt_Fatura  < @Dt_End'
      ''
      '  group by'
      '    BI.Cd_Produto, B.Fl_Estoque'
      ''
      '  -- Or'#231'amento - Saida'
      '  -- Produto/Servi'#231'os'
      '  insert into #EstoqueRecalc'
      '  select'
      '    OI.Cd_Produto, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OI.Qt_Estoque ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = O.Cd_Filial and'
      '    OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '    OI.Fl_Confirmado = ''''1'''
      ''
      '  --------------- Exclui itens de baixa - 01/10/2009'
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OI.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OI.Cd_Produto'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    OI.Cd_Produto, O.Fl_Estoque'
      ''
      '  -- Conjunto'
      '  insert into #EstoqueRecalc'
      '  select'
      '    OC.Cd_Produto, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OC.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Conjunto OC'
      '  on'
      '    OC.Cd_Filial     = O.Cd_Filial and'
      '    OC.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      '  --------------- Exclui itens de baixa - 01/10/2009'
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OC.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OC.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OC.Cd_Produto'
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = OC.Cd_Filial and'
      '    OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '    OI.Nr_Item       = OC.Nr_Item and'
      '    OI.Fl_Confirmado = ''''1'''
      ''
      '  left join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OC.Cd_Produto and'
      '    PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    OC.Cd_Produto, O.Fl_Estoque'
      ''
      ''
      '  --------------- Pega somente os itens de baixa - 01/10/2009'
      '  -- Saidas'
      '  insert into #EstoqueRecalc'
      '  select'
      '    P.Cd_Baixa, S.Fl_Estoque,'
      '    sum( SI.Qt_Estoque ) as Qt_Saida,'
      '    Qt_Entrada   = 0.0,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Saida S'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = S.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Saida_Item SI'
      '  on'
      '    SI.Cd_Filial   = S.Cd_Filial and'
      '    SI.Nr_Saida    = S.Nr_Saida'
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = SI.Cd_Produto and'
      '    P.Cd_Baixa is not null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = S.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = SI.Cd_Produto'
      ''
      '  where'
      '    S.Cd_Filial      = @Cd_Filial and'
      '    S.St_Saida       = ''''2'''' and'
      '    S.Dt_Lancamento >= @Dt_Start and'
      '    S.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    P.Cd_Baixa, S.Fl_Estoque'
      ''
      '  -- Entradas'
      '  insert into #EstoqueRecalc'
      '  select'
      '    P.Cd_Baixa, E.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    sum( EI.Qt_Estoque ) as Qt_Entrada,'
      '    Qt_Orcamento = 0.0,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Entrada E'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = E.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Entrada_Item EI'
      '  on'
      '    EI.Cd_Filial   = E.Cd_Filial and'
      '    EI.Nr_Entrada  = E.Nr_Entrada'
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = EI.Cd_Produto and'
      '    P.Cd_Baixa is not null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = EI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = EI.Cd_Produto'
      ''
      '  where'
      '    E.Cd_Filial  = @Cd_Filial and'
      '    E.St_Entrada = ''''2'''' and'
      '    E.Dt_Lancamento >= @Dt_Start and'
      '    E.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    P.Cd_Baixa, E.Fl_Estoque'
      ''
      '  -- Or'#231'amento - Saida'
      '  -- Produto/Servi'#231'os'
      '  insert into #EstoqueRecalc'
      '  select'
      '    P.Cd_Baixa, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OI.Qt_Estoque ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = O.Cd_Filial and'
      '    OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '    OI.Fl_Confirmado = ''''1'''
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OI.Cd_Produto and'
      '    P.Cd_Baixa is not null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OI.Cd_Produto'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    P.Cd_Baixa, O.Fl_Estoque'
      ''
      '  -- Conjunto'
      '  insert into #EstoqueRecalc'
      '  select'
      '    P.Cd_Baixa, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OC.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Conjunto OC'
      '  on'
      '    OC.Cd_Filial     = OC.Cd_Filial and'
      '    OC.Nr_Orcamento  = OC.Nr_Orcamento'
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OC.Cd_Produto and'
      '    P.Cd_Baixa is not null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OC.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OC.Cd_Produto'
      ''
      '  inner join'
      '    Orcamento_Item OI'
      '  on'
      '    OI.Cd_Filial     = OC.Cd_Filial and'
      '    OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '    OI.Nr_Item       = OC.Nr_Item and'
      '    OI.Fl_Confirmado = ''''1'''
      ''
      '  left join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OC.Cd_Produto and'
      '    PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    P.Cd_Baixa, O.Fl_Estoque'
      ''
      ''
      ''
      '  /* Projetos */'
      ''
      ''
      ''
      '  -- Cria a segunda table com os dados somados'
      '  if Object_ID( ''''TempDB..#EstoqueRecalcII'''' ) is not null'
      '    drop table #EstoqueRecalcII'
      ''
      '  select'
      '    Cd_Produto, Fl_Estoque,'
      '    Sum( Qt_Entrada ) as Qt_Entrada,'
      '    Sum( Qt_Saida ) as Qt_Saida,'
      '    Sum( Qt_Orcamento ) as Qt_Orcamento,'
      '    Sum( Qt_Reserva ) as Qt_Reserva,'
      '    Sum( Qt_Balcao ) as Qt_Balcao'
      ''
      '  into'
      '    #EstoqueRecalcII'
      ''
      '  from'
      '    #EstoqueRecalc'
      ''
      '  group by'
      '    Cd_Produto, Fl_Estoque'
      ''
      '  -- Atualizar o saldo anterior'
      '  if ( :Fl_SaldoAnterior = ''''1'''' )'
      '    update'
      '      Inventario_Mensal_Produto'
      ''
      '    set'
      '      Qt_Anterior = ER.Qt_Entrada - ER.Qt_Saida - ER.Qt_Orcamento - ER.Qt_Reserva - ER.Qt_Balcao'
      ''
      '    from'
      '      #EstoqueRecalcII ER'
      ''
      '    inner join'
      '      Inventario_Mensal_Produto IP'
      '    on'
      '      IP.Cd_Filial  = @Cd_Filial and'
      '      IP.Cd_Periodo = @Cd_Periodo and'
      '      IP.Cd_Produto = ER.Cd_Produto'
      ''
      '    where'
      '      ER.Fl_Estoque = ''''1'''
      ''
      '  -- Atualiza as quantidades'
      '  else'
      '    update'
      '      Inventario_Mensal_Produto'
      ''
      '    set'
      '      Qt_Entradas = ER.Qt_Entrada,'
      '      Qt_Saidas   = ER.Qt_Saida + ER.Qt_Orcamento + ER.Qt_Reserva + ER.Qt_Balcao'
      ''
      '    from'
      '      #EstoqueRecalcII ER'
      ''
      '    inner join'
      '      Inventario_Mensal_Produto IP'
      '    on'
      '      IP.Cd_Filial  = @Cd_Filial and'
      '      IP.Cd_Periodo = @Cd_Periodo and'
      '      IP.Cd_Produto = ER.Cd_Produto'
      ''
      '    where'
      '      ER.Fl_Estoque = ''''1'''
    )
    SQLOther4.Strings = (
      '-------------------- Elimina os itens sem movimenta'#231#227'o no ano'
      'delete from'
      '  Inventario_Mensal_Produto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo and'
      ''
      '  --------------- Alterado em 04/06/2013'
      '  Qt_Anterior + Qt_Entradas <= 0.0 and'
      '  Qt_Saidas <= 0.0'
    )
    SQLOther5.Strings = (
      '-------------------- Inclus'#227'o dos Projetos - SG'
      '  -- Produto/Servi'#231'os'
      '  insert into #EstoqueRecalc'
      '  select'
      '    OPI.Cd_Produto, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Projeto OP'
      '  on'
      '    OP.Cd_Filial     = O.Cd_Filial and'
      '    OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      '  inner join'
      '    Orcamento_Projeto_Item OPI'
      '  on'
      '    OPI.Cd_Filial    = OP.Cd_Filial and'
      '    OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '    OPI.Nr_Projeto   = OP.Nr_Projeto '
      ''
      '  --------------- Exclui itens de baixa - 01/10/2009'
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OPI.Cd_Produto and'
      '    P.Cd_Baixa is null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OPI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OPI.Cd_Produto'
      ''
      '  inner join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OPI.Cd_Produto and'
      '    PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    OPI.Cd_Produto, O.Fl_Estoque'
      ''
      ''
      '  --------------- Somente itens de baixa - 01/10/2009'
      '  insert into #EstoqueRecalc'
      '  select'
      '    P.Cd_Baixa, O.Fl_Estoque,'
      '    Qt_Saida     = 0.0,'
      '    Qt_Entrada   = 0.0,'
      '    sum( OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Orcamento,'
      '    Qt_Reserva   = 0.0,'
      '    Qt_Balcao    = 0.0'
      ''
      '  from'
      '    Orcamento O'
      ''
      '  inner join'
      '    CFOP CF'
      '  on'
      '    CF.Cd_CFOP    = O.Cd_CFOP and'
      '    CF.Tp_CFOP    = ''''1'''
      ''
      '  inner join'
      '    Orcamento_Projeto OP'
      '  on'
      '    OP.Cd_Filial     = O.Cd_Filial and'
      '    OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      '  inner join'
      '    Orcamento_Projeto_Item OPI'
      '  on'
      '    OPI.Cd_Filial    = OP.Cd_Filial and'
      '    OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '    OPI.Nr_Projeto   = OP.Nr_Projeto'
      ''
      '  inner join'
      '    Produto P'
      '  on'
      '    P.Cd_Produto = OPI.Cd_Produto and'
      '    P.Cd_Baixa is not null'
      ''
      '  inner join'
      '    Inventario_Mensal_Produto IP'
      '  on'
      '    IP.Cd_Filial  = OPI.Cd_Filial and'
      '    IP.Cd_Periodo = @Cd_Periodo and'
      '    IP.Cd_Produto = OPI.Cd_Produto'
      ''
      '  inner join'
      '    Produto_Unidade PU'
      '  on'
      '    PU.Cd_Produto = OPI.Cd_Produto and'
      '    PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      '  where'
      '    O.Cd_Filial    = @Cd_Filial and'
      '    O.St_Orcamento = ''''9'''' and'
      '    O.Dt_Fatura   >= @Dt_Start and'
      '    O.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    P.Cd_Baixa, O.Fl_Estoque'
      ''
    )
    SQLOther6.Strings = (
      '--------------- Utiliza o calculo do custo medio'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Periodo Char( 6 )'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Cd_Periodo = :Cd_Periodo'
      ''
      'if Object_ID( ''''TempDB..#EstoqueRecCusto'''' ) is not null'
      '  drop table #EstoqueRecCusto'
      ''
      'select'
      '  IMP.Cd_Produto, Vl_Custo ='
      '  sum( ( EI.Vl_Unitario * EI.Qt_Item) / Coalesce( PU.Nr_Fator, 1.0 ) ) /'
      '  sum( EI.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) )'
      ''
      'into'
      '  #EstoqueRecCusto'
      ''
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      ''
      'inner join'
      '  Inventario_Mensal_Produto IMP'
      'on'
      '  IMP.Cd_Filial  = E.Cd_Filial and'
      '  IMP.Cd_Periodo = @Cd_Periodo and'
      '  IMP.Cd_Produto = EI.Cd_Produto'
      '  '
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = EI.Cd_Produto and'
      '  PU.Sg_Unidade = EI.Sg_Unidade '
      ''
      'where'
      '  E.Cd_Filial     = @Cd_Filial and'
      '  E.St_Entrada    = ''''2'''' and'
      '  E.Dt_Lancamento < :Dt_End'
      ''
      'group by'
      '  IMP.Cd_Produto'
      ''
      'update'
      '  Inventario_Mensal_Produto'
      ''
      'set'
      '  Vl_Custo = PC.Vl_Custo'
      ''
      'from'
      '  Inventario_Mensal_Produto IMP'
      ''
      'inner join'
      '  #EstoqueRecCusto PC'
      'on'
      '  PC.Cd_Produto = IMP.Cd_Produto'
      ''
      'where'
      '  IMP.Cd_Filial  = @Cd_Filial and'
      '  IMP.Cd_Periodo = @Cd_Periodo'
      ''
    )
    SQLOther7.Strings = (
      '-------------------- Elimina os itens com saldo negativo 04/06/2013'
      'delete from'
      '  Inventario_Mensal_Produto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo and'
      '  ( Qt_Anterior + Qt_Entradas ) - Qt_Saidas <= 0.0'
    )
    Left = 518
    Top = 66
  end
end
