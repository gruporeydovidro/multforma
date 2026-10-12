object FrmEstoque_View: TFrmEstoque_View
  Left = 199
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Estoque'
  ClientHeight = 565
  ClientWidth = 966
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
    Height = 565
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 945
    Height = 565
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 533
      Width = 934
      Height = 5
      Shape = bsTopLine
    end
    object Label21: TLabel
      Left = 5
      Top = 5
      Width = 253
      Height = 13
      Caption = 'Produtos a Consultar (Produto/C'#243'digo do Fabricante):'
    end
    object SbProdutoSelect: TSpeedButton
      Left = 416
      Top = 19
      Width = 85
      Height = 19
      Hint = 'Seleciona Produtos'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 646 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoSelectClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 43
      Width = 934
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 47
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BvlSeparator_2: TBevel
      Left = 3
      Top = 387
      Width = 934
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 391
      Width = 45
      Height = 13
      Caption = 'Entradas:'
    end
    object Label3: TLabel
      Left = 90
      Top = 391
      Width = 37
      Height = 13
      Caption = 'Sa'#237'das:'
    end
    object Label4: TLabel
      Left = 344
      Top = 391
      Width = 70
      Height = 13
      Caption = 'Estoque Bruto:'
    end
    object Label5: TLabel
      Left = 429
      Top = 391
      Width = 48
      Height = 13
      Caption = 'Reservas:'
    end
    object Label6: TLabel
      Left = 514
      Top = 391
      Width = 79
      Height = 13
      Caption = 'Estoque Liquido:'
    end
    object Label7: TLabel
      Left = 5
      Top = 424
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label8: TLabel
      Left = 175
      Top = 391
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
    end
    object Label9: TLabel
      Left = 260
      Top = 391
      Width = 36
      Height = 13
      Caption = 'Balc'#227'o:'
    end
    object DbTxtClasse: TDBText
      Left = 41
      Top = 370
      Width = 60
      Height = 13
      AutoSize = True
      DataField = 'nm_classe'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBTextLaboratorio: TDBText
      Left = 119
      Top = 355
      Width = 89
      Height = 13
      AutoSize = True
      DataField = 'nm_laboratorio'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 5
      Top = 355
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 5
      Top = 370
      Width = 34
      Height = 13
      Caption = 'Classe:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblFiliais: TLabel
      Left = 396
      Top = 424
      Width = 78
      Height = 13
      Caption = 'Saldo nas Filiais:'
    end
    object LblTotal: TLabel
      Left = 344
      Top = 544
      Width = 328
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque nas Filiais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnCancel: TBitBtn
      Left = 858
      Top = 538
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 486 bytes}
    end
    object EdtDs_Consulta: TEdit
      Left = 5
      Top = 19
      Width = 410
      Height = 19
      MaxLength = 120
      TabOrder = 0
      OnDblClick = EdtDs_ConsultaDblClick
      OnKeyPress = EdtDs_ConsultaKeyPress
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 63
      Width = 932
      Height = 291
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
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Title.Alignment = taRightJustify
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 309
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_barra'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_laboratorio'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Fabricante'
          Title.Alignment = taCenter
          Width = 107
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sg_estoque'
          Title.Alignment = taCenter
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_liquido'
          Title.Alignment = taRightJustify
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_venda'
          Title.Alignment = taRightJustify
          Width = 67
          Visible = True
        end>
    end
    object DbEdtQt_Entradas: TDBEdit
      Left = 5
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'Qt_Entrada'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbEdtQt_Saidas: TDBEdit
      Left = 90
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'Qt_Saida'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DbEdtQt_Saldo: TDBEdit
      Left = 344
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'Qt_Saldo'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbEdtQt_Reserva: TDBEdit
      Left = 429
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'Qt_Reserva'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DbEdtQt_Liquido: TDBEdit
      Left = 514
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'Qt_Liquido'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DbGUnidade: TDBGrid
      Left = 5
      Top = 438
      Width = 349
      Height = 92
      DataSource = DsUnidade
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
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
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Estoque'
          Title.Alignment = taRightJustify
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 69
          Visible = True
        end>
    end
    object DbEdtQt_Orcamento: TDBEdit
      Left = 175
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'qt_orcamento'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DbEdtQt_Balcao: TDBEdit
      Left = 260
      Top = 405
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'qt_balcao'
      DataSource = DsEstoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CkBContendo: TCheckBox
      Left = 858
      Top = 4
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CkBContendoClick
    end
    object DbGFilial: TDBGrid
      Left = 396
      Top = 438
      Width = 303
      Height = 92
      DataSource = DsFilial
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
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
          FieldName = 'cd_filial'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_abreviado'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_liquido'
          Width = 85
          Visible = True
        end>
    end
    object BitBtnTerceiros: TBitBtn
      Left = 5
      Top = 538
      Width = 144
      Height = 25
      Caption = 'Estoque em &Terceiros'
      Enabled = False
      TabOrder = 12
      OnClick = BitBtnTerceirosClick
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
    end
  end
  object DsEstoque: TDataSource
    DataSet = ADODsEstoque
    Left = 29
    Top = 198
  end
  object ADODsUnidade: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsUnidadeCalcFields
    CommandText = 'select'#13#10'  E.Cd_Filial, PU.Cd_Produto, PU.Sg_Unidade, U.Ds_Unidade,'#13#10'  E.Qt_Liquido / PU.Nr_Fator as Qt_Estoque,'#13#10'  :Vl_Venda * PU.Nr_Fator * PU.Nr_Indice as Vl_Unitario'#13#10#13#10'from'#13#10'  Estoque_Saldo E'#13#10#13#10'inner join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = E.Cd_Produto'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PU.Sg_Unidade'#13#10#13#10'where'#13#10'  E.Cd_Filial  = :Cd_Filial and'#13#10'  '#13#10'  E.Cd_Produto = :Cd_Produto'#13#10#13#10'order by'#13#10'  PU.Sg_Unidade'
    DataSource = DsEstoque
    IndexFieldNames = 'Cd_Produto;cd_filial'
    MasterFields = 'Vl_Venda;Cd_Filial;Cd_Produto'
    Parameters = <
      item
        Name = 'Vl_Venda'
        DataType = ftBCD
        Size = 3
        Value = 15.0
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = 2
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Value = 1
      end>
    Left = 64
    Top = 373
    object ADODsUnidadeCd_Produto: TSmallintField
      FieldName = 'Cd_Produto'
    end
    object ADODsUnidadeSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsUnidadeQt_Estoque: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      Precision = 32
      Size = 18
    end
    object ADODsUnidadeVl_Unitario: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'Vl_Unitario'
      ReadOnly = True
      DisplayFormat = '#,##0.00#'
      Precision = 32
      Size = 7
    end
    object ADODsUnidadeds_unidade: TStringField
      FieldName = 'ds_unidade'
      Size = 30
    end
    object ADODsUnidadeDp_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkCalculated
      FieldName = 'Dp_Unidade'
      Size = 35
      Calculated = True
    end
    object ADODsUnidadecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
  end
  object DsUnidade: TDataSource
    DataSet = ADODsUnidade
    Left = 34
    Top = 373
  end
  object ADODsEstoque: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = ADODsEstoqueAfterScroll
    CommandText = 'select'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'#13#10'  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,'#13#10'  sum( ES.Qt_Entrada ) as Qt_Entrada,'#13#10'  sum( ES.Qt_Saida ) as Qt_Saida,'#13#10'  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'#13#10'  sum( ES.Qt_Balcao ) as Qt_Balcao,'#13#10'  sum( ES.Qt_Reserva ) as Qt_Reserva,'#13#10'  sum( ES.Qt_Saldo ) as Qt_Saldo,'#13#10'  sum( ES.Qt_Liquido ) as Qt_Liquido,'#13#10#13#10'  case'#13#10'    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'#13#10'    else PP.Vl_Venda'#13#10'  end as Vl_Venda'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Classe CS'#13#10'on'#13#10'  CS.Cd_Classe = P.Cd_Classe'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10#13#10'where'#13#10'  P.Nm_Produto like ''''%'''#13#10#13#10'group by'#13#10'  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'#13#10'  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,'#13#10#13#10'  case'#13#10'    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'#13#10'    else PP.Vl_Venda'#13#10'  end'
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
      'declare'
      '  @Cd_Filial SmallInt'
      ''
      'set @Cd_Filial = :Cd_Filial'
      ''
      'select'
      '  @Cd_Filial as Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,'
      '  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  case'
      '    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'
      '    else PP.Vl_Venda'
      '  end as Vl_Venda'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Classe CS'
      'on'
      '  CS.Cd_Classe = P.Cd_Classe'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = @Cd_Filial and'
    )
    SQLOther1.Strings = (
      'union'
      ''
      '-- Consulta pelo C'#243'digo do Fabricante'
      'select '
      '  ES.Cd_Filial, P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Nr_Sequencia,'
      '  L.Nm_Laboratorio, CS.Nm_Classe, P.Cd_Barra, P.Cd_Fabricante,'
      '  sum( ES.Qt_Entrada ) as Qt_Entrada,'
      '  sum( ES.Qt_Saida ) as Qt_Saida,'
      '  sum( ES.Qt_Orcamento ) as Qt_Orcamento,'
      '  sum( ES.Qt_Balcao ) as Qt_Balcao,'
      '  sum( ES.Qt_Reserva ) as Qt_Reserva,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      ''
      '  case'
      '    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'
      '    else PP.Vl_Venda'
      '  end as Vl_Venda'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Classe CS'
      'on'
      '  CS.Cd_Classe = P.Cd_Classe'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
    )
    Left = 58
    Top = 198
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
      DisplayLabel = 'Estoque L'#237'quido'
      FieldName = 'qt_liquido'
      DisplayFormat = '#,##0.##'
      Precision = 28
      Size = 6
    end
    object ADODsEstoquenm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
    end
    object ADODsEstoquecd_barra: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'cd_barra'
    end
    object ADODsEstoquevl_venda: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsEstoquenm_laboratorio: TStringField
      DisplayLabel = 'Lab/Fabricante'
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsEstoquesg_estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsEstoqueCd_Fabricante: TStringField
      DisplayLabel = 'C'#243'digo do Fabricante'
      FieldName = 'Cd_Fabricante'
    end
  end
  object DsFilial: TDataSource
    DataSet = ADODsFilial
    Left = 421
    Top = 375
  end
  object ADODsFilial: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsFilialAfterOpen
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto,'#13#10'  sum( ES.Qt_Liquido ) as Qt_Liquido'#13#10'  '#13#10'from'#13#10'  Filial F'#13#10'  '#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = F.Cd_Filial and'#13#10'  ES.Cd_Produto = :Cd_Produto'#13#10'  /* Fl_Estoque */'#13#10'  '#13#10'where'#13#10'  F.Cd_Filial <> :Cd_Filial'#13#10'  '#13#10'group by'#13#10'  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto'#13#10#13#10'order by'#13#10'  F.Cd_Filial'
    DataSource = DsEstoque
    IndexFieldNames = 'cd_filial;cd_produto'
    MasterFields = 'Cd_Produto;Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Value = 59
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido'
      '  '
      'from'
      '  Filial F'
      '  '
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = F.Cd_Filial and'
      '  ES.Cd_Produto = :Cd_Produto'
      '  /* Fl_Estoque */'
      '  '
      'where'
      '  F.Cd_Filial <> :Cd_Filial'
      '  '
      'group by'
      '  F.Cd_Filial, F.Nm_Abreviado, ES.Cd_Produto'
      ''
      'order by'
      '  F.Cd_Filial'
    )
    Left = 451
    Top = 375
    object ADODsFilialcd_filial: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_filial'
    end
    object ADODsFilialnm_abreviado: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'nm_abreviado'
    end
    object ADODsFilialqt_liquido: TBCDField
      DisplayLabel = 'Saldo Disponivel'
      FieldName = 'qt_liquido'
      DisplayFormat = '#,##0.##'
      Precision = 28
      Size = 6
    end
    object ADODsFilialcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
  end
end
