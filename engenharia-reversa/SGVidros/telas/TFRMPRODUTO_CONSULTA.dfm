object FrmProduto_Consulta: TFrmProduto_Consulta
  Left = 307
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Pre'#231'os do Produto'
  ClientHeight = 568
  ClientWidth = 1009
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 568
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 988
    Height = 568
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label21: TLabel
      Left = 5
      Top = 5
      Width = 119
      Height = 13
      Caption = 'Produtos a Consultar por:'
    end
    object SbProdutoSelect: TSpeedButton
      Left = 434
      Top = 19
      Width = 80
      Height = 19
      Hint = 'Seleciona Produtos'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 646 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoSelectClick
    end
    object Label1: TLabel
      Left = 5
      Top = 44
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BvlSeparator: TBevel
      Left = 3
      Top = 371
      Width = 982
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 5
      Top = 413
      Width = 105
      Height = 13
      Caption = 'Unidades de Estoque:'
    end
    object Label2: TLabel
      Left = 60
      Top = 373
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 5
      Top = 373
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 139
      Top = 374
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
      Transparent = True
    end
    object Label9: TLabel
      Left = 207
      Top = 374
      Width = 27
      Height = 13
      Caption = 'Total:'
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 3
      Top = 42
      Width = 982
      Height = 5
      Shape = bsTopLine
    end
    object LblPr_Lucro: TLabel
      Left = 287
      Top = 374
      Width = 30
      Height = 13
      Caption = 'Lucro:'
    end
    object DbTxtNm_Produto: TDBText
      Left = 56
      Top = 44
      Width = 641
      Height = 13
      DataField = 'nm_produto'
      DataSource = DsEstoque
    end
    object Label5: TLabel
      Left = 329
      Top = 413
      Width = 129
      Height = 13
      Caption = 'Custo das '#250'ltimas entradas:'
    end
    object Label6: TLabel
      Left = 342
      Top = 374
      Width = 134
      Height = 13
      Caption = #218'ltima atualiza'#231#227'o de pre'#231'o:'
    end
    object Label10: TLabel
      Left = 480
      Top = 374
      Width = 117
      Height = 13
      Caption = 'Laborat'#243'rio / Fabricante:'
    end
    object DbTFabricante: TDBText
      Left = 481
      Top = 388
      Width = 263
      Height = 35
      DataField = 'Nm_Laboratorio'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label22: TLabel
      Left = 519
      Top = 5
      Width = 87
      Height = 13
      Caption = '&Tabela de Pre'#231'os:'
      FocusControl = EdtCd_Tabela
    end
    object SbTabPreco: TSpeedButton
      Left = 629
      Top = 19
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
    object Label4: TLabel
      Left = 750
      Top = 374
      Width = 27
      Height = 13
      Caption = 'NCM:'
    end
    object EdtDs_Consulta: TEdit
      Left = 5
      Top = 19
      Width = 430
      Height = 19
      MaxLength = 120
      TabOrder = 0
      OnDblClick = EdtDs_ConsultaDblClick
      OnEnter = EdtDs_ConsultaEnter
      OnExit = EdtDs_ConsultaExit
      OnKeyPress = EdtDs_ConsultaKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 811
      Top = 2
      Width = 76
      Height = 17
      TabStop = False
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CkBContendoClick
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 60
      Width = 978
      Height = 309
      DataSource = DsEstoque
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutosDblClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      OnKeyPress = DbGProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Title.Alignment = taRightJustify
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 356
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Laboratorio'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Fabricante'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_liquido'
          Title.Alignment = taRightJustify
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Reposicao'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Venda'
          Title.Alignment = taRightJustify
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sg_estoque'
          Width = 45
          Visible = True
        end>
    end
    object DbGUnidade: TDBGrid
      Left = 5
      Top = 428
      Width = 319
      Height = 136
      DataSource = DsUnidade
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Unidade'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_fator'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_estoque'
          Title.Alignment = taRightJustify
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Alignment = taRightJustify
          Width = 69
          Visible = True
        end>
    end
    object EdtVl_Preco: TCurrencyEdit
      Left = 60
      Top = 388
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 5
      OnChange = EdtQt_ItemChange
      OnExit = EdtPr_DescontoExit
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 5
      Top = 388
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 4
      OnChange = EdtPr_DescontoChange
      OnExit = EdtPr_DescontoExit
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 139
      Top = 388
      Width = 65
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 6
      Value = 1.0
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 207
      Top = 388
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbGFornecido: TDBGrid
      Left = 329
      Top = 428
      Width = 654
      Height = 136
      DataSource = DsFornecido
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFornecidoDblClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Entrada'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Lancamento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object EdtPr_Lucro: TCurrencyEdit
      Left = 287
      Top = 388
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DbEdt_UltimoPreco: TDBEdit
      Left = 342
      Top = 388
      Width = 115
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Alteracao'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object RdBtnNome: TRadioButton
      Left = 126
      Top = 2
      Width = 50
      Height = 17
      Caption = '&Nome'
      Checked = True
      TabOrder = 12
      TabStop = True
      OnClick = RdBtnNomeClick
    end
    object RdBtnBarras: TRadioButton
      Left = 180
      Top = 2
      Width = 102
      Height = 17
      Caption = 'C'#243'digo de &Barras'
      TabOrder = 13
      OnClick = RdBtnNomeClick
    end
    object RdBtnCodigo: TRadioButton
      Left = 285
      Top = 2
      Width = 58
      Height = 17
      Caption = '&C'#243'digo'
      TabOrder = 14
      OnClick = RdBtnNomeClick
    end
    object RdBtnFabricante: TRadioButton
      Left = 340
      Top = 2
      Width = 110
      Height = 17
      Caption = 'Cod. do &Fabricante'
      TabOrder = 15
      OnClick = RdBtnNomeClick
    end
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 519
      Top = 19
      Width = 110
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 1
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_TabelaKeyDown
    end
    object DbEdtCd_ClasFiscal: TDBEdit
      Left = 750
      Top = 388
      Width = 83
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_ClasFiscal'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
  end
  object DsEstoque: TDataSource
    DataSet = ADODsEstoque
    Left = 27
    Top = 196
  end
  object ADODsEstoque: TMultADODS
    AutoCalcFields = False
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = ADODsEstoqueAfterScroll
    OnCalcFields = ADODsEstoqueCalcFields
    CommandText = 'select'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,'#13#10' P.Cd_Barra, P.Cd_Fabricante,'#13#10' P.Tp_Preco, PP.Dt_Alteracao, P.Cd_ClasFiscal,'#13#10'  sum( ES.Qt_Entrada ) as Qt_Entrada,'#13#10'  sum( ES.Qt_Saida ) as Qt_Saida,'#13#10'  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'#13#10'  sum( ES.Qt_Balcao ) as Qt_Balcao,'#13#10'  sum( ES.Qt_Reserva ) as Qt_Reserva,'#13#10'  sum( ES.Qt_Saldo ) as Qt_Saldo,'#13#10'  sum( ES.Qt_Liquido ) as Qt_Liquido,'#13#10#13#10'  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco,'#13#10#13#10'  L.Nm_Laboratorio'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PUV'#13#10'on'#13#10'  PUV.Cd_Produto = P.Cd_Produto and'#13#10'  PUV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'left join '#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  P.Nm_Produto like ''''%'''' '#13#10#13#10'group by'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,'#13#10'  P.Cd_Barra, P.Cd_Fabricante,'#13#10'  P.Tp_Preco, L.Nm_Laboratorio, P.Cd_ClasFiscal,'#13#10'  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ), PP.Dt_Alteracao'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 2
      end>
    SQLOther0.Strings = (
      'select'
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'
      '  PP.Vl_Reposicao * Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Vl_Reposicao,'
      '  P.Cd_Barra, P.Cd_Fabricante, P.Nr_Sequencia, P.Tp_Preco, PP.Dt_Alteracao, P.Cd_ClasFiscal,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  PP.Vl_Venda,'
      '  Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco,'
      ''
      '  L.Nm_Laboratorio'
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
      'left join'
      '  Produto_Unidade PUV'
      'on'
      '  PUV.Cd_Produto = P.Cd_Produto and'
      '  PUV.Sg_Unidade = P.Sg_Venda'
      ''
      'left join '
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      ''
    )
    SQLOther1.Strings = (
      '-- Consulta pelo C'#243'digo do Fabricante'
      'select'
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'
      '  PP.Vl_Reposicao * Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Vl_Reposicao,'
      '  P.Cd_Barra, P.Cd_Fabricante, P.Nr_Sequencia, P.Tp_Preco, PP.Dt_Alteracao, P.Cd_ClasFiscal,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  PP.Vl_Venda,'
      '  Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco,'
      ''
      '  L.Nm_Laboratorio'
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
      'left join'
      '  Produto_Unidade PUV'
      'on'
      '  PUV.Cd_Produto = P.Cd_Produto and'
      '  PUV.Sg_Unidade = P.Sg_Venda'
      ''
      'left join '
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
    )
    Left = 56
    Top = 196
    object ADODsEstoquecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsEstoquecd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsEstoquenm_produto: TStringField
      DisplayLabel = 'Nome do Produto'
      DisplayWidth = 120
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsEstoqueqt_entrada: TBCDField
      FieldName = 'qt_entrada'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoqueqt_saida: TBCDField
      FieldName = 'qt_saida'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoqueqt_reserva: TBCDField
      FieldName = 'qt_reserva'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoqueqt_orcamento: TBCDField
      FieldName = 'qt_orcamento'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoqueqt_balcao: TBCDField
      FieldName = 'qt_balcao'
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoqueqt_saldo: TBCDField
      FieldName = 'qt_saldo'
      DisplayFormat = '#,##0.##'
      Precision = 28
      Size = 6
    end
    object ADODsEstoqueqt_liquido: TBCDField
      DisplayLabel = 'Est. L'#237'quido'
      FieldName = 'qt_liquido'
      DisplayFormat = '#,##0.##'
      Precision = 28
      Size = 6
    end
    object ADODsEstoquecd_barra: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'cd_barra'
    end
    object ADODsEstoquevl_venda: TBCDField
      DisplayLabel = 'Venda'
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsEstoquesg_estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsEstoqueCd_Fabricante: TStringField
      DisplayLabel = 'C'#243'd. Fabricante'
      FieldName = 'Cd_Fabricante'
    end
    object ADODsEstoqueVl_Reposicao: TBCDField
      DisplayLabel = 'Reposi'#231#227'o'
      FieldName = 'Vl_Reposicao'
      DisplayFormat = '#,##0.00'
      Precision = 13
      Size = 3
    end
    object ADODsEstoqueTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
    object ADODsEstoqueDp_Venda: TFloatField
      DisplayLabel = 'Venda'
      FieldKind = fkCalculated
      FieldName = 'Dp_Venda'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsEstoqueDp_Reposicao: TFloatField
      DisplayLabel = 'Reposi'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Reposicao'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsEstoqueDt_Alteracao: TDateTimeField
      FieldName = 'Dt_Alteracao'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsEstoqueNr_Preco: TBCDField
      FieldName = 'Nr_Preco'
      ReadOnly = True
      Precision = 22
      Size = 8
    end
    object ADODsEstoqueNm_Laboratorio: TStringField
      DisplayLabel = 'Laborat'#243'rio/Fabricante'
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
    object ADODsEstoqueCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      EditMask = '##.####.##;0; '
      Size = 10
    end
  end
  object ADODsUnidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsUnidadeCalcFields
    CommandText = 'select'#13#10'  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,'#13#10'  avg( E.Qt_Liquido / PU.Nr_Fator ) as Qt_Estoque,'#13#10'  avg( :Vl_Vendido * PU.Nr_Fator ) as Vl_Unitario'#13#10#13#10'from'#13#10'  Estoque_Saldo E'#13#10#13#10'inner join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = E.Cd_Produto'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PU.Sg_Unidade'#13#10#13#10'where'#13#10'  E.Cd_Filial  = :Cd_Filial and'#13#10'  E.Cd_Produto = :Cd_Produto'#13#10#13#10'group by'#13#10'  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator'#13#10#13#10'order by'#13#10'  PU.Sg_Unidade'
    Parameters = <
      item
        Name = 'Vl_Vendido'
        DataType = ftFloat
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Value = 1
      end>
    SQLOther0.Strings = (
      '-------------------- Seleciona total'
      'declare'
      '  @Cd_Produto Int,'
      '  @Cd_Filial SmallInt'
      ''
      'select'
      '  @Cd_Produto = :Cd_Produto,'
      '  @Cd_Filial  = :Cd_Filial'
      ''
      'if Object_ID( ''''TempDB..#ProdConsulta'''' ) is not null'
      '  drop table #ProdConsulta'
      ''
      '-------------------- Grava na tabela temporaria'
      'select'
      '  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade,'
      '  sum( E.Qt_Liquido / PU.Nr_Fator ) as Qt_Estoque, PU.Nr_Fator, PU.Nr_Indice'
      ''
      'into'
      '  #ProdConsulta'
      ''
      'from'
      '  Produto_Unidade PU'
      ''
      'inner join'
      '  Unidade U'
      'on'
      '  U.Sg_Unidade = PU.Sg_Unidade'
      ''
      'left join'
      '  Estoque_Saldo E'
      'on'
      '  E.Cd_Filial  = @Cd_Filial and'
      '  E.Cd_Produto = PU.Cd_Produto'
      ''
      'where'
      '  PU.Cd_Produto = @Cd_Produto'
      ''
      'group by'
      '  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,'
      '  PU.Nr_Indice'
      ''
      '-------------------- Gera o SQL Final'
      'select'
      '  Cd_Filial, Cd_Produto, Sg_Unidade, Ds_Unidade, Nr_Fator,'
      '  :Vl_Vendido * Nr_Fator * Nr_Indice as Vl_Unitario, Qt_Estoque'
      ''
      'from'
      '  #ProdConsulta'
      ''
      'order by'
      '  Sg_Unidade'
    )
    SQLOther1.Strings = (
      'select'
      '  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,'
      '  E.Qt_Liquido / PU.Nr_Fator as Qt_Estoque,'
      '  :Vl_Vendido * PU.Nr_Fator * PU.Nr_Indice as Vl_Unitario'
      ''
      'from'
      '  Produto_Unidade PU'
      ''
      'inner join'
      '  Unidade U'
      'on'
      '  U.Sg_Unidade = PU.Sg_Unidade'
      ''
      'left join'
      '  Estoque_Saldo E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = PU.Cd_Produto'
      ''
      'where'
      '  PU.Cd_Produto = :Cd_Produto'
      ''
      'order by'
      '  PU.Sg_Unidade'
    )
    Left = 60
    Top = 451
    object ADODsUnidadecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsUnidadecd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsUnidadesg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidadeds_unidade: TStringField
      FieldName = 'ds_unidade'
      Size = 30
    end
    object ADODsUnidadeqt_estoque: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_estoque'
      DisplayFormat = '#,##0.##'
      Precision = 28
      Size = 6
    end
    object ADODsUnidadevl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsUnidadeDp_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkCalculated
      FieldName = 'Dp_Unidade'
      Size = 35
      Calculated = True
    end
    object ADODsUnidadenr_fator: TBCDField
      DisplayLabel = 'Fator'
      FieldName = 'nr_fator'
      EditFormat = '#,##0.###'
      Precision = 18
      Size = 3
    end
    object ADODsUnidadePr_Lucro: TFloatField
      DisplayLabel = 'Lucro'
      FieldKind = fkCalculated
      FieldName = 'Pr_Lucro'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsUnidadeVl_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Venda'
      Calculated = True
    end
    object ADODsUnidadeVl_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Custo'
      Calculated = True
    end
  end
  object DsUnidade: TDataSource
    DataSet = ADODsUnidade
    Left = 31
    Top = 451
  end
  object ADODsFornecido: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  EI.Cd_Filial, EI.Cd_Produto, EI.Nr_Entrada, EM.Nm_Emitente, '#13#10'  E.Dt_Lancamento, EI.Qt_Item, EI.Vl_Unitario'#13#10#13#10'from'#13#10'  Entrada_Item EI'#13#10#13#10'inner join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial  = EI.Cd_Filial and'#13#10'  E.Nr_Entrada = EI.Nr_Entrada and'#13#10'  E.St_Entrada = ''''2'''#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Tp_Operacao = ''''1'''' and'#13#10'  CF.Tp_CFOP     = ''''1'''#13#10#13#10'inner join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente = E.Cd_Emitente'#13#10#13#10'where'#13#10'  EI.Cd_Filial  = :Cd_Filial and'#13#10'  EI.Cd_Produto = :Cd_Produto'#13#10#13#10'order by'#13#10'  E.Dt_Lancamento Desc'
    DataSource = DsEstoque
    MasterFields = 'Cd_Filial;Cd_Produto'
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
        Name = 'Cd_Produto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 393
    Top = 453
    object ADODsFornecidoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFornecidoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsFornecidoNr_Entrada: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'Nr_Entrada'
    end
    object ADODsFornecidoNm_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFornecidoDt_Lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFornecidoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsFornecidoVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object DsFornecido: TDataSource
    DataSet = ADODsFornecido
    Left = 364
    Top = 453
  end
end
