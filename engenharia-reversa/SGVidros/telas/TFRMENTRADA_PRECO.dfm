object FrmEntrada_Preco: TFrmEntrada_Preco
  Left = 338
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'C'#225'lculo do Pre'#231'o do Produto'
  ClientHeight = 402
  ClientWidth = 719
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
    Height = 402
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 698
    Height = 402
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 372
      Width = 691
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 38
      Height = 13
      Caption = 'C'#225'lculo:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 40
      Width = 691
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 42
      Width = 20
      Height = 13
      Caption = 'PIS:'
    end
    object Label4: TLabel
      Left = 60
      Top = 42
      Width = 32
      Height = 13
      Caption = 'Cofins:'
    end
    object Label5: TLabel
      Left = 115
      Top = 42
      Width = 53
      Height = 13
      Caption = 'Expedi'#231#227'o:'
    end
    object Label6: TLabel
      Left = 440
      Top = 42
      Width = 86
      Height = 13
      Caption = 'Despesas (R$/%):'
    end
    object Label7: TLabel
      Left = 575
      Top = 42
      Width = 39
      Height = 13
      Caption = 'Custo 1:'
    end
    object Label8: TLabel
      Left = 628
      Top = 42
      Width = 39
      Height = 13
      Caption = 'Custo 2:'
    end
    object Label9: TLabel
      Left = 4
      Top = 78
      Width = 468
      Height = 13
      Caption = 'Caso n'#227'o estejam marcados, ser'#227'o considerados os dados do cadastro do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BvlSeparator_2: TBevel
      Left = 3
      Top = 131
      Width = 691
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 135
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object SbOpen: TSpeedButton
      Left = 606
      Top = 111
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
    object Label11: TLabel
      Left = 5
      Top = 334
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label12: TLabel
      Left = 49
      Top = 334
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label13: TLabel
      Left = 273
      Top = 334
      Width = 30
      Height = 13
      Caption = 'Lucro:'
    end
    object Label14: TLabel
      Left = 94
      Top = 334
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object Label15: TLabel
      Left = 146
      Top = 334
      Width = 125
      Height = 13
      Caption = 'Custo de Comercializa'#231#227'o:'
    end
    object Label16: TLabel
      Left = 317
      Top = 334
      Width = 93
      Height = 13
      Caption = 'Taxa de Marca'#231#227'o:'
    end
    object Label17: TLabel
      Left = 170
      Top = 42
      Width = 63
      Height = 13
      Caption = 'Frete (R$/%):'
    end
    object Label18: TLabel
      Left = 305
      Top = 42
      Width = 73
      Height = 13
      Caption = 'Seguro (R$/%):'
    end
    object Label22: TLabel
      Left = 173
      Top = 1
      Width = 87
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
    end
    object SbTabPreco: TSpeedButton
      Left = 282
      Top = 15
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
    object BitBtnConfirm: TBitBtn
      Left = 525
      Top = 375
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 29
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 611
      Top = 375
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 30
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbCalculo: TComboBox
      Left = 5
      Top = 15
      Width = 165
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Por esta entrada'
        'Pelo saldo m'#233'dio do estoque'
      )
    end
    object EdtPr_PIS: TCurrencyEdit
      Left = 5
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 2
    end
    object EdtPr_Cofins: TCurrencyEdit
      Left = 60
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
    end
    object EdtPr_Expedicao: TCurrencyEdit
      Left = 115
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 4
    end
    object EdtPr_Despesas: TCurrencyEdit
      Left = 520
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 10
    end
    object EdtPr_Custo_1: TCurrencyEdit
      Left = 575
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 11
    end
    object EdtPr_Custo_2: TCurrencyEdit
      Left = 628
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 12
    end
    object CkBIPI: TCheckBox
      Left = 5
      Top = 92
      Width = 41
      Height = 17
      Caption = 'IPI:'
      TabOrder = 13
      OnClick = CkBIPIClick
    end
    object EdtPr_IPI: TCurrencyEdit
      Left = 5
      Top = 108
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 14
    end
    object CkBLucro: TCheckBox
      Left = 114
      Top = 92
      Width = 51
      Height = 17
      Caption = 'Lucro:'
      TabOrder = 17
      OnClick = CkBIPIClick
    end
    object EdtPr_Lucro: TCurrencyEdit
      Left = 114
      Top = 108
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 18
    end
    object CkBComissao: TCheckBox
      Left = 169
      Top = 92
      Width = 67
      Height = 17
      Caption = 'Comiss'#227'o:'
      TabOrder = 19
      OnClick = CkBIPIClick
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 169
      Top = 108
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 20
    end
    object CkBICMS: TCheckBox
      Left = 60
      Top = 92
      Width = 49
      Height = 17
      Caption = 'ICMS:'
      TabOrder = 15
      OnClick = CkBIPIClick
    end
    object EdtPr_ICMS: TCurrencyEdit
      Left = 60
      Top = 108
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 16
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 149
      Width = 686
      Height = 183
      Hint = 'Pressione <<< Espa'#231'o >>> para mudar a atualiza'#231#227'o'
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      OnKeyPress = DbGProdutoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 360
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_custo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_reposicao'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_venda'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dp_atualiza'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end>
    end
    object DbEdtPr_IPI: TDBEdit
      Left = 5
      Top = 348
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'pr_ipi'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object DbEdtPr_ICMS: TDBEdit
      Left = 49
      Top = 348
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'pr_icms'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object DbEdtPr_Lucro: TDBEdit
      Left = 273
      Top = 348
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'pr_lucro'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object DbEdtPr_Comissao: TDBEdit
      Left = 94
      Top = 348
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'pr_comissao'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
    object DbEdtPr_Custo: TDBEdit
      Left = 146
      Top = 348
      Width = 50
      Height = 19
      TabStop = False
      DataField = 'pr_custo'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
    end
    object DbEdtPr_Marcacao: TDBEdit
      Left = 317
      Top = 348
      Width = 60
      Height = 19
      TabStop = False
      DataField = 'pr_marcacao'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
    end
    object EdtPr_Frete: TCurrencyEdit
      Left = 250
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 6
    end
    object EdtPr_Seguro: TCurrencyEdit
      Left = 385
      Top = 57
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 8
    end
    object CbIgualar: TCheckBox
      Left = 433
      Top = 114
      Width = 159
      Height = 17
      Caption = 'Igualar a Reposi'#231#227'o ao Custo'
      TabOrder = 21
    end
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 173
      Top = 15
      Width = 110
      Height = 19
      TabOrder = 1
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_TabelaKeyDown
    end
    object CkBMarcacao: TCheckBox
      Left = 280
      Top = 114
      Width = 140
      Height = 17
      Caption = 'Utilizar taxa de marca'#231#227'o'
      TabOrder = 31
    end
    object EdtVl_FreteC: TCurrencyEdit
      Left = 170
      Top = 57
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnChange = EdtVl_FreteCChange
    end
    object EdtVl_SeguroC: TCurrencyEdit
      Left = 305
      Top = 57
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnChange = EdtVl_SeguroCChange
    end
    object EdtVl_DespesasC: TCurrencyEdit
      Left = 440
      Top = 57
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnChange = EdtVl_DespesasCChange
    end
  end
  object ADOCmdPreco: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'create table #entrada_preco'
      '  ('
      '  cd_produto integer,'
      '  nm_produto varchar( 120 ),'
      '  pr_lucro numeric( 8,3 ),'
      '  pr_icms numeric( 8,3 ),'
      '  pr_ipi numeric( 8,3 ),'
      '  pr_comissao numeric( 8,3 ),'
      '  vl_custo numeric( 12,3 ),'
      '  vl_oldcusto numeric( 12,3 ),'
      '  qt_oldestoque numeric( 12, 3 ),'
      '  qt_entrada numeric( 12, 3 ),'
      '  fl_atualiza char( 1 )'
      '  );'
    )
    SQLOther1.Strings = (
      'truncate table'
      '  #Entrada_Preco'
    )
    SQLOther2.Strings = (
      'insert into #Entrada_Preco( Cd_Produto, Nm_Produto, Pr_Lucro, Pr_ICMS, Pr_IPI,'
      '  Pr_Comissao, Vl_Custo, Fl_Atualiza, Qt_Entrada )'
      ''
      'select'
      '  EI.Cd_Produto, P.Nm_Produto, P.Pr_Lucro, T.Pr_Contrib, P.Pr_IPI,'
      '  P.Pr_Comissao, EI.Vl_Unitario / PU.Nr_Fator, ''''1'''', EI.Qt_Estoque'
      ''
      'from'
      '  Entrada_Item EI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = EI.Cd_Produto and'
      '  PU.Sg_Unidade = EI.Sg_Unidade'
      ''
      'where'
      '  EI.Cd_Filial  = :Cd_Filial and'
      '  EI.Nr_Entrada = :Nr_Entrada'
    )
    SQLOther3.Strings = (
      'update'
      '  #Entrada_Preco'
      ''
      'set'
      '  Fl_Atualiza = :Fl_Atualiza'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther4.Strings = (
      '------------ Atualiza o saldo do estoque anterior e custo atual'
      'update'
      '  #Entrada_Preco'
      ''
      'set'
      '  Qt_OldEstoque = Coalesce('
      '    ('
      '    select'
      '      sum( Qt_Liquido )'
      ''
      '    from'
      '      Estoque_Saldo ES'
      ''
      '    where'
      '      ES.Cd_Filial  = :Cd_Filial and'
      '      ES.Cd_Produto = #Entrada_Preco.Cd_Produto'
      '    ), 0.0 ),'
      '    '
      '  Vl_OldCusto = Coalesce('
      '    ('
      '    select'
      '      Vl_Custo'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    where'
      '      PP.Cd_Tabela  = :Cd_Tabela and'
      '      PP.Cd_Produto = #Entrada_Preco.Cd_Produto'
      '    ), 0.0 );'
      ''
      '------------ Calcula o Custo Atual pela media do estoque'
      'update'
      '  #Entrada_Preco'
      ''
      'set'
      '  Vl_Custo = ( ( Vl_Custo * Qt_Entrada ) +'
      '    ( Coalesce( Vl_OldCusto, 0.0 ) * Coalesce( Qt_OldEstoque, 0.0 ) ) ) /'
      '    ( Coalesce( Qt_OldEstoque, 0.0 ) + Qt_Entrada );'
    )
    SQLOther8.Strings = (
      'insert into Produto_Preco( Cd_Tabela, Cd_Produto, Vl_Custo, Vl_Reposicao,'
      '   Vl_Venda, Vl_Promocao, Dt_Alteracao )'
      'values( :Cd_Tabela, :Cd_Produto, :Vl_Custo, :Vl_Reposicao, :Vl_Venda, 0,'
      '   :Dt_Alteracao )'
    )
    SQLOther9.Strings = (
      'update'
      '  Produto_Preco'
      ''
      'set'
      '  Vl_Custo     = :Vl_Custo,'
      '  Vl_Reposicao = :Vl_Reposicao,'
      '  Vl_Venda     = :Vl_Venda,'
      '  Dt_Alteracao = :Dt_Alteracao'
      ''
      'where'
      '  Cd_Tabela    = :Cd_Tabela and'
      '  Cd_Produto   = :Cd_Produto'
      ''
    )
    Left = 31
    Top = 373
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 66
    Top = 373
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  Cd_Produto, Nm_Produto, Pr_Lucro, Pr_Icms, Pr_Ipi, Pr_Comissao, Vl_Custo,'#13#10'  Vl_Oldcusto, Fl_Atualiza'#13#10#13#10'from'#13#10'  #Entrada_Preco'#13#10#13#10'order by'#13#10'  Cd_Produto'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Cd_Produto, Nm_Produto, Pr_Lucro, Pr_Icms, Pr_Ipi, Pr_Comissao, Vl_Custo,'
      '  Vl_Venda, Vl_Reposicao, Vl_OldCusto, Fl_Atualiza'
      ''
      'from'
      '  #Entrada_Preco'
      ''
      'order by'
      '  Cd_Produto'
    )
    Left = 96
    Top = 373
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutopr_lucro: TBCDField
      FieldName = 'pr_lucro'
      DisplayFormat = '#,##0.00'
      Precision = 8
      Size = 3
    end
    object ADODsProdutopr_icms: TBCDField
      FieldName = 'pr_icms'
      DisplayFormat = '#,##0.00'
      Precision = 8
      Size = 3
    end
    object ADODsProdutopr_ipi: TBCDField
      FieldName = 'pr_ipi'
      DisplayFormat = '#,##0.00'
      Precision = 8
      Size = 3
    end
    object ADODsProdutopr_comissao: TBCDField
      FieldName = 'pr_comissao'
      DisplayFormat = '#,##0.00'
      Precision = 8
      Size = 3
    end
    object ADODsProdutovl_custo: TBCDField
      DisplayLabel = 'Custo'
      FieldName = 'vl_custo'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_venda: TBCDField
      DisplayLabel = 'Venda'
      FieldKind = fkCalculated
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
      Calculated = True
    end
    object ADODsProdutovl_reposicao: TBCDField
      DisplayLabel = 'Reposi'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'vl_reposicao'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
      Calculated = True
    end
    object ADODsProdutovl_oldcusto: TBCDField
      FieldName = 'vl_oldcusto'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutofl_atualiza: TStringField
      FieldName = 'fl_atualiza'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutodp_atualiza: TStringField
      DisplayLabel = 'Atualiza'
      FieldKind = fkCalculated
      FieldName = 'dp_atualiza'
      Size = 3
      Calculated = True
    end
    object ADODsProdutopr_custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pr_custo'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsProdutopr_marcacao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pr_marcacao'
      DisplayFormat = '#,##0.00###'
      Calculated = True
    end
  end
  object ADODsCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Produto'#13#10#13#10'from'#13#10'  Produto_Preco'#13#10#13#10'where'#13#10'  Cd_Tabela = :Cd_Tabela and'#13#10'  Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Size = -1
        Value = nil?
      end>
    Left = 126
    Top = 374
  end
end
