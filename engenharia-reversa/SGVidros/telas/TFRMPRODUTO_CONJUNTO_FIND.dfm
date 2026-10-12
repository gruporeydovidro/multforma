object FrmProduto_Conjunto_Find: TFrmProduto_Conjunto_Find
  Left = 307
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Pre'#231'os do Produto'
  ClientHeight = 426
  ClientWidth = 772
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 426
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 751
    Height = 426
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label21: TLabel
      Left = 5
      Top = 5
      Width = 181
      Height = 13
      Caption = 'Produtos a Consultar:     Consultar por:'
    end
    object SbProdutoSelect: TSpeedButton
      Left = 487
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
      Top = 286
      Width = 745
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 5
      Top = 287
      Width = 105
      Height = 13
      Caption = 'Unidades de Estoque:'
      Visible = False
    end
    object Bevel1: TBevel
      Left = 3
      Top = 42
      Width = 745
      Height = 5
      Shape = bsTopLine
    end
    object DbTxtNm_Produto: TDBText
      Left = 56
      Top = 44
      Width = 641
      Height = 13
      DataField = 'nm_produto'
      DataSource = DsEstoque
    end
    object Bevel2: TBevel
      Left = 3
      Top = 397
      Width = 745
      Height = 5
      Shape = bsTopLine
    end
    object EdtDs_Consulta: TEdit
      Left = 5
      Top = 19
      Width = 481
      Height = 19
      MaxLength = 120
      TabOrder = 0
      OnDblClick = EdtDs_ConsultaDblClick
      OnEnter = EdtDs_ConsultaEnter
      OnExit = EdtDs_ConsultaExit
      OnKeyPress = EdtDs_ConsultaKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 656
      Top = 2
      Width = 76
      Height = 17
      TabStop = False
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CkBContendoClick
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 60
      Width = 740
      Height = 335
      DataSource = DsEstoque
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
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
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 424
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
      Top = 302
      Width = 319
      Height = 92
      DataSource = DsUnidade
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
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
    object RdBtnNome: TRadioButton
      Left = 192
      Top = 2
      Width = 107
      Height = 17
      Caption = 'Nome do &Produto'
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = RdBtnNomeClick
    end
    object RdBtnBarras: TRadioButton
      Left = 299
      Top = 2
      Width = 102
      Height = 17
      Caption = 'C'#243'digo de &Barras'
      TabOrder = 5
      OnClick = RdBtnNomeClick
    end
    object RdBtnCodigo: TRadioButton
      Left = 407
      Top = 2
      Width = 107
      Height = 17
      Caption = '&C'#243'digo do Produto'
      TabOrder = 6
      OnClick = RdBtnNomeClick
    end
    object RdBtnFabricante: TRadioButton
      Left = 518
      Top = 2
      Width = 114
      Height = 17
      Caption = 'Cod. do &Fabricante'
      TabOrder = 7
      OnClick = RdBtnNomeClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 579
      Top = 399
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 665
      Top = 399
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 9
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
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
    OnCalcFields = ADODsEstoqueCalcFields
    CommandText = 'select'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,'#13#10'  P.Cd_Barra, P.Cd_Fabricante,'#13#10' P.Tp_Preco, PP.Dt_Alteracao,'#13#10'  sum( ES.Qt_Entrada ) as Qt_Entrada,'#13#10'  sum( ES.Qt_Saida ) as Qt_Saida,'#13#10'  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'#13#10'  sum( ES.Qt_Balcao ) as Qt_Balcao,'#13#10'  sum( ES.Qt_Reserva ) as Qt_Reserva,'#13#10'  sum( ES.Qt_Saldo ) as Qt_Saldo,'#13#10'  sum( ES.Qt_Liquido ) as Qt_Liquido,'#13#10#13#10'  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PUV'#13#10'on'#13#10'  PUV.Cd_Produto = P.Cd_Produto and'#13#10'  PUV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'where'#13#10'  P.Nm_Produto like ''''%'''' '#13#10#13#10'group by'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, PP.Vl_Reposicao,'#13#10'  P.Cd_Barra, P.Cd_Fabricante,'#13#10'  P.Tp_Preco,'#13#10'  PP.Vl_Venda, Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ), PP.Dt_Alteracao'
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
      '  P.Cd_Barra, P.Cd_Fabricante, P.Nr_Sequencia, P.Tp_Preco, PP.Dt_Alteracao,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  PP.Vl_Venda,'
      '  Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco'
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
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
    )
    SQLOther1.Strings = (
      '-- Consulta pelo C'#243'digo do Fabricante'
      'select'
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'
      '  PP.Vl_Reposicao * Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Vl_Reposicao,'
      '  P.Cd_Barra, P.Cd_Fabricante, P.Nr_Sequencia, P.Tp_Preco, PP.Dt_Alteracao,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  PP.Vl_Venda,'
      '  Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Nr_Preco'
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
  end
  object ADODsUnidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsUnidadeCalcFields
    CommandText = 'select'#13#10'  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,'#13#10'  avg( E.Qt_Liquido / PU.Nr_Fator ) as Qt_Estoque,'#13#10'  avg( :Vl_Vendido * PU.Nr_Fator ) as Vl_Unitario'#13#10#13#10'from'#13#10'  Estoque_Saldo E'#13#10#13#10'inner join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = E.Cd_Produto'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PU.Sg_Unidade'#13#10#13#10'where'#13#10'  E.Cd_Filial  = :Cd_Filial and'#13#10'  E.Cd_Produto = :Cd_Produto'#13#10#13#10'group by'#13#10'  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator'#13#10#13#10'order by'#13#10'  PU.Sg_Unidade'
    DataSource = DsEstoque
    IndexFieldNames = 'cd_filial;cd_produto'
    MasterFields = 'Cd_Filial;Cd_Produto'
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
    Top = 379
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
    Top = 379
  end
end
