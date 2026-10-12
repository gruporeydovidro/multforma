object FrmCompra_EstoqueMinimo: TFrmCompra_EstoqueMinimo
  Left = 289
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produtos que Atingiram o Estoque M'#237'nimo'
  ClientHeight = 325
  ClientWidth = 705
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
    Height = 325
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 684
    Height = 325
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 295
      Width = 676
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 511
      Top = 298
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 597
      Top = 298
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGEstoque: TDBGrid
      Left = 5
      Top = 18
      Width = 671
      Height = 273
      DataSource = DsEstoque
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGEstoqueDblClick
      OnEnter = DbGEstoqueEnter
      OnExit = DbGEstoqueExit
      OnKeyPress = DbGEstoqueKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 347
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_estoque'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Minimo'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Comprar'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_select'
          Width = 41
          Visible = True
        end>
    end
  end
  object ADOCmdEstoque: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'create table #estoque_minimo'
      '  ('
      '  cd_produto int,'
      '  nm_produto varchar( 150 ),'
      '  qt_estoque numeric( 12, 3 ),'
      '  qt_minimo numeric( 12, 3 ),'
      '  qt_comprar numeric( 13, 3 ),'
      '  fl_select char( 1 ),'
      '  nr_item smallint identity (1, 1),'
      '  sg_estoque char( 2 )'
      '  );'
    )
    SQLOther1.Strings = (
      'truncate table #estoque_minimo'
    )
    SQLOther2.Strings = (
      'insert into #Estoque_Minimo( Cd_Produto, Nm_Produto, Qt_Estoque, Qt_Minimo,'
      '   Qt_Comprar, Fl_Select, Sg_Estoque )'
      'select'
      '  ES.Cd_Produto, ES.Nm_Produto, sum( ES.Qt_Liquido ), P.Qt_Est_Minimo,'
      '  P.Qt_Est_Minimo - sum( ES.Qt_Liquido ), ''''1'''', ES.Sg_Estoque'
      ''
      'from'
      '  Estoque_Saldo ES'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = ES.Cd_Produto and'
      '  P.Qt_Est_Minimo > 0'
      '  '
      'where'
      '  ES.Cd_Filial = :Cd_Filial'
      ''
      'group by'
      '  ES.Cd_Produto, ES.Nm_Produto, ES.Sg_Estoque, P.Qt_Est_Minimo'
      ''
      'having'
      '  P.Qt_Est_Minimo >= sum( ES.Qt_Liquido )'
    )
    SQLOther3.Strings = (
      'update'
      '  #Estoque_Minimo'
      ''
      'set'
      '  Fl_Select = :Fl_Select'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther4.Strings = (
      'insert into Compra_Item( Cd_Filial, Nr_Compra, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Qt_Recebida )'
      ''
      'select'
      '  :Cd_Filial, :Nr_Compra, EM.Nr_Item + :Nr_Item, EM.Cd_Produto, EM.Nm_Produto,'
      '  EM.Sg_Estoque, EM.Qt_Comprar, PP.Vl_Custo, 0'
      ''
      'from'
      '  #Estoque_Minimo EM'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = EM.Cd_Produto'
      ''
      'where'
      '  EM.Fl_Select = ''''1'''
    )
    Left = 26
    Top = 236
  end
  object DsEstoque: TDataSource
    DataSet = ADODsEstoque
    Left = 56
    Top = 236
  end
  object ADODsEstoque: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    OnCalcFields = ADODsEstoqueCalcFields
    CommandText = 'select'#13#10'  Cd_Produto, Nm_Produto, Qt_Estoque, Qt_Minimo, Fl_Select, Nr_Item,'#13#10'  Qt_Comprar'#13#10#13#10'from'#13#10'  #Estoque_Minimo'#13#10#13#10'order by'#13#10'  Nm_Produto'
    Parameters = <>
    Left = 86
    Top = 236
    object ADODsEstoquecd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsEstoquenm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 150
    end
    object ADODsEstoqueqt_estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_estoque'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsEstoquefl_select: TStringField
      FieldName = 'fl_select'
      FixedChar = True
      Size = 1
    end
    object ADODsEstoquenr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsEstoquedp_select: TStringField
      DisplayLabel = 'Importar'
      FieldKind = fkCalculated
      FieldName = 'dp_select'
      Size = 3
      Calculated = True
    end
    object ADODsEstoqueQt_Minimo: TBCDField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'Qt_Minimo'
      DisplayFormat = '#,##0.0##'
    end
    object ADODsEstoqueQt_Comprar: TBCDField
      DisplayLabel = 'Comprar'
      FieldName = 'Qt_Comprar'
      DisplayFormat = '#,##0.0##'
    end
  end
end
