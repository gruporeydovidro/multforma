object FrmProduto_Tabela_Update: TFrmProduto_Tabela_Update
  Left = 345
  Top = 239
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o da Tabela de Pre'#231'os'
  ClientHeight = 552
  ClientWidth = 1006
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Height = 552
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 985
    Height = 552
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Bevel2: TBevel
      Left = 765
      Top = 128
      Width = 191
      Height = 16
      Shape = bsFrame
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 522
      Width = 977
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 383
      Top = 3
      Width = 86
      Height = 13
      Caption = 'Nome do Produto:'
    end
    object SbOpen: TSpeedButton
      Left = 735
      Top = 18
      Width = 95
      Height = 19
      Hint = 'Visualizar'
      Caption = 'Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label22: TLabel
      Left = 383
      Top = 38
      Width = 169
      Height = 13
      Caption = 'Tabela de Pre'#231'os para importa'#231#227'o::'
    end
    object SbTabPreco: TSpeedButton
      Left = 493
      Top = 53
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
    object SbImport: TSpeedButton
      Left = 517
      Top = 53
      Width = 22
      Height = 19
      Hint = 'Importa dados da Tabela de Pre'#231'os'
      Flat = True
      Glyph.Data = {binary 338 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbImportClick
    end
    object Label4: TLabel
      Left = 286
      Top = 76
      Width = 56
      Height = 13
      Caption = 'Aumento %:'
    end
    object Label5: TLabel
      Left = 344
      Top = 76
      Width = 50
      Height = 13
      Caption = 'Monet'#225'rio:'
    end
    object SbCalc: TSpeedButton
      Left = 425
      Top = 90
      Width = 95
      Height = 19
      Hint = 'Atualizar Calculos'
      Caption = 'Atualizar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {binary 914 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCalcClick
    end
    object BvlSeparator_2: TBevel
      Left = 2
      Top = 114
      Width = 977
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 121
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object SbGrupo: TSpeedButton
      Left = 46
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label6: TLabel
      Left = 6
      Top = 3
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupo: TSpeedButton
      Left = 46
      Top = 36
      Width = 23
      Height = 19
      Hint = 'Consulta de SubGrupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object SbClasse: TSpeedButton
      Left = 46
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseClick
    end
    object Bevel1: TBevel
      Left = 565
      Top = 128
      Width = 201
      Height = 16
      Shape = bsFrame
    end
    object Label8: TLabel
      Left = 5
      Top = 76
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Transparent = True
    end
    object Label9: TLabel
      Left = 57
      Top = 76
      Width = 16
      Height = 13
      Caption = 'IPI:'
      Transparent = True
    end
    object Label10: TLabel
      Left = 101
      Top = 76
      Width = 27
      Height = 13
      Caption = 'Frete:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 146
      Top = 76
      Width = 45
      Height = 13
      Caption = 'Impostos:'
      Transparent = True
    end
    object Label12: TLabel
      Left = 197
      Top = 76
      Width = 34
      Height = 13
      Caption = 'Outros:'
      Transparent = True
    end
    object Label13: TLabel
      Left = 241
      Top = 76
      Width = 30
      Height = 13
      Caption = 'Lucro:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 618
      Top = 116
      Width = 94
      Height = 13
      Caption = ' Valores Praticados '
    end
    object Label7: TLabel
      Left = 823
      Top = 116
      Width = 75
      Height = 13
      Caption = ' Novos Valores '
    end
    object DbTxtLaboratorio: TDBText
      Left = 630
      Top = 504
      Width = 346
      Height = 13
      Alignment = taRightJustify
      DataField = 'Nm_Laboratorio'
      DataSource = DsItem
    end
    object DbTProduto: TDBText
      Left = 8
      Top = 504
      Width = 58
      Height = 13
      AutoSize = True
      DataField = 'Nm_Produto'
      DataSource = DsItem
    end
    object BitBtnConfirm: TBitBtn
      Left = 811
      Top = 525
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 897
      Top = 525
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 17
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_ProdutoUpd: TEdit
      Left = 383
      Top = 18
      Width = 351
      Height = 19
      MaxLength = 120
      TabOrder = 4
    end
    object EdtCd_TabelaUpd: TEdit
      Left = 383
      Top = 53
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 5
      OnExit = EdtCd_TabelaUpdExit
      OnKeyDown = EdtCd_GrupoUpdKeyDown
    end
    object GrBUpdate: TGroupBox
      Left = 575
      Top = 44
      Width = 210
      Height = 63
      Caption = ' Atualizar: '
      TabOrder = 14
      object CkBCusto: TCheckBox
        Left = 10
        Top = 18
        Width = 59
        Height = 17
        Caption = 'Custo'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CkBVenda: TCheckBox
        Left = 148
        Top = 18
        Width = 59
        Height = 17
        Caption = 'Venda'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CkBReposicao: TCheckBox
        Left = 68
        Top = 18
        Width = 71
        Height = 17
        Caption = 'Reposi'#231#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CkBRepVenda: TCheckBox
        Left = 46
        Top = 41
        Width = 128
        Height = 17
        Hint = 'Nesta opera'#231#227'o o lucro e o Aumento % '#13#10'ser'#227'o aplicados sobre o valor da reposi'#231#227'o '#13#10'gerando o valor de custo'
        Caption = 'Venda pela reposi'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
    object EdtPr_Ajuste: TCurrencyEdit
      Tag = 1
      Left = 286
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 12
    end
    object EdtVl_Ajuste: TCurrencyEdit
      Tag = 2
      Left = 344
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 13
    end
    object DbGItem: TDBGrid
      Left = 5
      Top = 135
      Width = 972
      Height = 363
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItemDblClick
      OnEnter = DbGItemEnter
      OnExit = DbGItemExit
      OnKeyPress = DbGItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 354
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Laboratorio'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Atual_Custo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Atual_Reposicao'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Atual_Venda'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Custo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Reposicao'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Venda'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object MmEstrutura: TMemo
      Left = 70
      Top = 18
      Width = 308
      Height = 55
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Grupo'
        'SubGrupo'
        'Classe'
      )
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCd_GrupoUpd: TCurrencyEdit
      Tag = 1
      Left = 6
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_GrupoUpdExit
      OnKeyDown = EdtCd_GrupoUpdKeyDown
    end
    object EdtCd_SubGrupoUpd: TCurrencyEdit
      Tag = 2
      Left = 6
      Top = 36
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_SubGrupoUpdExit
      OnKeyDown = EdtCd_GrupoUpdKeyDown
    end
    object EdtCd_ClasseUpd: TCurrencyEdit
      Tag = 3
      Left = 6
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_ClasseUpdExit
      OnKeyDown = EdtCd_GrupoUpdKeyDown
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 5
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 6
    end
    object EdtPr_IPI: TCurrencyEdit
      Left = 57
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 7
    end
    object EdtPr_Frete: TCurrencyEdit
      Left = 101
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 8
    end
    object EdtPr_ICMS: TCurrencyEdit
      Left = 146
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 9
    end
    object EdtPr_Outros: TCurrencyEdit
      Left = 197
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 10
    end
    object EdtPr_Lucro: TCurrencyEdit
      Left = 241
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##0.00;-##0.00'
      TabOrder = 11
    end
    object CkBContendo: TCheckBox
      Left = 908
      Top = 2
      Width = 68
      Height = 17
      TabStop = False
      Caption = 'Conten&do'
      Checked = True
      State = cbChecked
      TabOrder = 18
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '  create table ##TblPreco'
      '    ('
      '    Cd_Produto Int,'
      '    Nm_Produto VarChar( 120 ),'
      '    Nr_Sequencia Int,'
      '    Cd_Grupo SmallInt,'
      '    Cd_Subgrupo SmallInt,'
      '    Cd_Classe SmallInt,'
      '    Vl_Atual_custo Numeric( 18, 5 ),'
      '    Vl_Atual_venda Numeric( 18, 5 ),'
      '    Vl_Atual_promocao Numeric( 18, 5 ),'
      '    Vl_Atual_reposicao Numeric( 18, 5 ),'
      '    Vl_Custo Numeric( 18, 5 ),'
      '    Vl_Venda Numeric( 18, 5 ),'
      '    Vl_Promocao Numeric( 18, 5 ),'
      '    Vl_Reposicao numeric( 18, 5 ),'
      '    Nm_Laboratorio VarChar( 50 )'
      '    )'
      ''
    )
    SQLOther1.Strings = (
      '  delete from ##TblPreco'
      ''
    )
    SQLOther2.Strings = (
      'insert into ##TblPreco( Cd_Produto, Nm_Produto, Nr_Sequencia, Cd_Grupo,'
      '  Cd_SubGrupo, Cd_Classe, Vl_Atual_Custo, Vl_Atual_Venda, Vl_Atual_Promocao,'
      '  Vl_Atual_Reposicao, Nm_Laboratorio )'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, P.Cd_SubGrupo,'
      '  P.Cd_Classe, PP.Vl_Custo, PP.Vl_Venda, PP.Vl_Promocao, PP.Vl_Reposicao,'
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
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  not Exists('
      '    select'
      '      Temp.Cd_Produto'
      ''
      '    from'
      '      ##TblPreco Temp'
      ''
      '    where'
      '      Temp.Cd_Produto = P.Cd_Produto'
      '  )'
      ''
    )
    SQLOther3.Strings = (
      'update'
      '  ##TblPreco'
      ''
      'set'
      '  Vl_Custo     = :Vl_Custo,'
      '  Vl_Venda     = :Vl_Venda,'
      '  Vl_Promocao  = :Vl_Promocao,'
      '  Vl_Reposicao = :Vl_Reposicao'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther4.Strings = (
      '-------------------- Inclus'#227'o do item pela entrada no estoque'
      'insert into ##TblPreco( Cd_Produto, Nm_Produto, Nr_Sequencia, Cd_Grupo,'
      '  Cd_SubGrupo, Cd_Classe, Vl_Atual_Custo, Vl_Atual_Venda, Vl_Atual_Promocao,'
      '  Vl_Atual_Reposicao, Vl_Custo )'
      'select'
      '  EI.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, P.Cd_SubGrupo,'
      '  P.Cd_Classe, PP.Vl_Custo, PP.Vl_Venda, PP.Vl_Promocao, PP.Vl_Reposicao,'
      '  EI.Vl_Unitario / Coalesce( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  Entrada_Item EI'
      ''
      'inner join'
      '  Produto P'
      ''
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = EI.Cd_Produto and'
      '  PU.Sg_Unidade = EI.Sg_Unidade'
      ''
      'where'
      '  EI.Cd_Filial  = :Cd_Filial and'
      '  EI.Nr_Entrada = :Nr_Entrada'
    )
    Left = 87
    Top = 326
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Produto, A.Nm_Produto, A.Nr_Sequencia, A.Vl_Atual_Custo,'#13#10'  A.Vl_Atual_Reposicao, A.Vl_Atual_Venda, A.Vl_Custo, A.Vl_Reposicao,'#13#10'  A.Vl_Venda, A.Vl_Atual_Reposicao, A.Vl_Reposicao'#13#10#13#10'from'#13#10'  ##TblPreco A'#13#10#13#10'where'#13#10'  A.Nm_Produto like ''''Verg%'''#13#10#13#10'order by'#13#10'  A.Nr_Sequencia'
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  TP.Cd_Produto, TP.Nm_Produto, TP.Nr_Sequencia, TP.Vl_Atual_Custo,'
      '  TP.Vl_Atual_Venda, TP.Vl_Custo, TP.Vl_Venda, TP.Vl_Atual_Reposicao,'
      '  TP.Vl_Reposicao, TP.Nm_Laboratorio'
      ''
      'from'
      '  ##TblPreco TP'
    )
    Left = 58
    Top = 326
    object ADODsItemCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
      DisplayFormat = '###0'
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemVl_Atual_Custo: TBCDField
      DisplayLabel = 'Custo'
      FieldName = 'Vl_Atual_Custo'
      DisplayFormat = '#,##0.00###'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Atual_Venda: TBCDField
      DisplayLabel = 'Venda'
      FieldName = 'Vl_Atual_Venda'
      DisplayFormat = '#,##0.00###'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Custo: TBCDField
      DisplayLabel = 'Custo'
      FieldName = 'Vl_Custo'
      DisplayFormat = '#,##0.00###'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Venda: TBCDField
      DisplayLabel = 'Venda'
      FieldName = 'Vl_Venda'
      DisplayFormat = '#,##0.00###'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Atual_Reposicao: TBCDField
      DisplayLabel = 'Reposi'#231#227'o'
      FieldName = 'Vl_Atual_Reposicao'
      DisplayFormat = '#,##0.00###'
      Size = 0
    end
    object ADODsItemVl_Reposicao: TBCDField
      DisplayLabel = 'Reposi'#231#227'o'
      FieldName = 'Vl_Reposicao'
      DisplayFormat = '#,##0.00###'
    end
    object ADODsItemNm_Laboratorio: TStringField
      DisplayLabel = 'Laborat'#243'rio/Fabricante'
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
    object ADODsItemNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 28
    Top = 326
  end
end
