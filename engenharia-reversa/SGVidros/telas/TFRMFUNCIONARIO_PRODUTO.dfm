object FrmFuncionario_Produto: TFrmFuncionario_Produto
  Left = 294
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Comiss'#227'o por Produto'
  ClientHeight = 354
  ClientWidth = 650
  Color = clWindow
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 354
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 629
    Height = 354
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 324
      Width = 621
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 417
      Top = 17
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
      Top = 188
      Width = 151
      Height = 13
      Caption = 'Faixas de Comiss'#227'o do Produto:'
    end
    object Bevel1: TBevel
      Left = 324
      Top = 195
      Width = 148
      Height = 41
      Shape = bsFrame
    end
    object Label2: TLabel
      Left = 374
      Top = 189
      Width = 47
      Height = 13
      Caption = '  Faixa  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 475
      Top = 195
      Width = 127
      Height = 41
      Shape = bsFrame
    end
    object Label3: TLabel
      Left = 513
      Top = 189
      Width = 50
      Height = 13
      Caption = '  Perda  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnClose: TBitBtn
      Left = 542
      Top = 327
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = BitBtnCloseClick
      Glyph.Data = {binary 2106 bytes}
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 5
      Top = 17
      Width = 410
      Height = 19
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Produtos:'
      LabelSpacing = 1
      MaxLength = 120
      TabOrder = 0
      OnExit = EdtNm_ProdutoExit
    end
    object DbGSelect: TDBGrid
      Left = 5
      Top = 37
      Width = 616
      Height = 129
      Hint = 'Pressione " R " para retornar a comiss'#227'o padr'#227'o do vendedor'
      Color = clWhite
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
          Title.Alignment = taRightJustify
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 483
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Comissao'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object DbGSelected: TDBGrid
      Left = 6
      Top = 202
      Width = 616
      Height = 120
      DataSource = DsFaixa
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Faixa'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Faixa'
          Width = 227
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Comissao'
          Title.Alignment = taRightJustify
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Inicial'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Final'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Desconto'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Perda'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object PnlAction_4: TPanel
      Left = 566
      Top = 167
      Width = 55
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 55
        Height = 27
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = 16579837
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = 16579837
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 29
    Top = 118
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, FP.Pr_Comissao'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Funcionario_Produto FP'#13#10'on'#13#10'  FP.Cd_Funcionario = :Cd_Funcionario and'#13#10'  FP.Cd_Produto     = P.Cd_Produto'#13#10#13#10'where'#13#10'  P.Nm_Produto like :Nm_Produto'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nm_Produto'
        DataType = ftString
        Size = 6
        Value = 'barra%'
      end>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, FP.Pr_Comissao'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = :Cd_Funcionario and'
      '  FP.Cd_Produto     = P.Cd_Produto'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  /* Ordem */'
    )
    Left = 58
    Top = 118
    object ADODsProdutoCd_Funcionario: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Cd_Funcionario'
      Calculated = True
    end
    object ADODsProdutoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoPr_Comissao: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Pr_Comissao'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsProdutoDp_Comissao: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Comissao'
      DisplayFormat = '#,##0.00#'
      Calculated = True
    end
  end
  object ADOCmdComissao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Inclui/Altera comiss'#227'o do item'
      'declare'
      '  @Cd_Funcionario SmallInt,'
      '  @Cd_Produto Int,'
      '  @Pr_Comissao Numeric( 9, 3 )'
      ''
      'select'
      '  @Cd_Funcionario = :Cd_Funcionario,'
      '  @Cd_Produto     = :Cd_Produto,'
      '  @Pr_Comissao    = :Pr_Comissao  '
      ''
      '-------------------- Insert / Update'
      'if Exists('
      '   select'
      '     Cd_Funcionario'
      ''
      '   from'
      '     Funcionario_Produto'
      ''
      '   where'
      '     Cd_Funcionario = @Cd_Funcionario and'
      '     Cd_Produto     = @Cd_Produto'
      '   )'
      '  update'
      '     Funcionario_Produto'
      ''
      '  set'
      '    Pr_Comissao = @Pr_Comissao'
      ''
      '   where'
      '     Cd_Funcionario = @Cd_Funcionario and'
      '     Cd_Produto     = @Cd_Produto'
      ''
      'else'
      '  insert into Funcionario_Produto( Cd_Funcionario, Cd_Produto, Pr_Comissao )'
      '  values( @Cd_Funcionario, @Cd_Produto, @Pr_Comissao )'
      ''
      '-------------------- Apaga faixas'
      'delete from'
      '  Funcionario_Produto_Faixa'
      ''
      'where'
      '  Cd_Funcionario = @Cd_Funcionario and'
      '  Cd_Produto     = @Cd_Produto'
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Inclui/Altera faixa do produto'
      'declare'
      '  @Cd_Funcionario SmallInt,'
      '  @Cd_Produto Int,'
      '  @Cd_Faixa SmallInt'
      ''
      'select'
      '  @Cd_Funcionario = :Cd_Funcionario,'
      '  @Cd_Produto     = :Cd_Produto,'
      '  @Cd_Faixa       = :Cd_Faixa'
      ''
      '-------------------- Insert / Update'
      'if not Exists('
      '   select'
      '     Cd_Faixa'
      ''
      '   from'
      '     Funcionario_Produto_Faixa'
      ''
      '   where'
      '     Cd_Funcionario = @Cd_Funcionario and'
      '     Cd_Produto     = @Cd_Produto and'
      '     Cd_Faixa       = @Cd_Faixa'
      '   )'
      '  insert into Funcionario_Produto_Faixa( Cd_Funcionario, Cd_Produto, Cd_Faixa )'
      '  values( @Cd_Funcionario, @Cd_Produto, @Cd_Faixa )'
      ''
      '-------------------- Apaga comiss'#227'o por produto'
      'delete from'
      '  Funcionario_Produto'
      ''
      'where'
      '  Cd_Funcionario = @Cd_Funcionario and'
      '  Cd_Produto     = @Cd_Produto'
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Excluir comiss'#227'o do produto - volta a comiss'#227'o do vendedor'
      'delete from'
      '  Funcionario_Produto'
      ''
      'where'
      '  Cd_Funcionario = :Cd_Funcionario and'
      '  Cd_Produto     = :Cd_Produto'
    )
    SQLOther4.Strings = (
      '-------------------- Excluir faixa'
      'delete from'
      '  Funcionario_Produto_Faixa'
      ''
      'where'
      '  Cd_Funcionario = :Cd_Funcionario and'
      '  Cd_Produto     = :Cd_Produto and'
      '  Cd_Faixa       = :Cd_Faixa'
    )
    Left = 89
    Top = 326
  end
  object DsFaixa: TDataSource
    DataSet = ADODsFaixa
    Left = 28
    Top = 274
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
    Left = 119
    Top = 327
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
            Action = ActFaixaIns
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFaixaDel
            ImageIndex = 19
            ShortCut = 116
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 596
    Top = 5
    StyleName = 'XP Style'
    object ActFaixaIns: TAction
      Hint = 'Incluir Faixa'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActFaixaInsExecute
    end
    object ActFaixaDel: TAction
      Hint = 'Excluir Faixa'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActFaixaDelExecute
    end
  end
  object ADODsFaixa: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  FPF.Cd_Funcionario, FPF.Cd_Produto, FPF.Cd_Faixa, CF.Ds_Faixa,'#13#10'  CF.Pr_Comissao, CF.Vl_Inicial, CF.Vl_Final, CF.Pr_Desconto, CF.Pr_Perda'#13#10#13#10'from'#13#10'  Funcionario_Produto_Faixa FPF'#13#10#13#10'inner join'#13#10'  Comissao_Faixa CF'#13#10'on'#13#10'  CF.Cd_Faixa = FPF.Cd_Faixa'#13#10#13#10'where'#13#10'  FPF.Cd_Funcionario = :Cd_Funcionario and'#13#10'  FPF.Cd_Produto     = :Cd_Produto'#13#10#13#10'order by'#13#10'  FPF.Cd_Faixa'
    DataSource = DsProduto
    IndexFieldNames = 'Cd_Funcionario;Cd_Produto'
    MasterFields = 'Cd_Funcionario;Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 106
      end>
    Left = 59
    Top = 274
    object ADODsFaixaCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsFaixaCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsFaixaCd_Faixa: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Faixa'
    end
    object ADODsFaixaDs_Faixa: TStringField
      DisplayLabel = 'Descri'#231#227'o da Faixa'
      FieldName = 'Ds_Faixa'
      Size = 50
    end
    object ADODsFaixaVl_Inicial: TBCDField
      DisplayLabel = 'Maior ou Igual'
      FieldName = 'Vl_Inicial'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsFaixaVl_Final: TBCDField
      DisplayLabel = 'Menor ou Igual'
      FieldName = 'Vl_Final'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsFaixaPr_Desconto: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'Pr_Desconto'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsFaixaPr_Perda: TBCDField
      DisplayLabel = 'Perda'
      FieldName = 'Pr_Perda'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsFaixaPr_Comissao: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Pr_Comissao'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
  end
end
