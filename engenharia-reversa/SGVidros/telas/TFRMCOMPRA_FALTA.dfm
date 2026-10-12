object FrmCompra_Falta: TFrmCompra_Falta
  Left = 303
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Faltas'
  ClientHeight = 318
  ClientWidth = 597
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
    Height = 318
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 576
    Height = 318
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 110
      Width = 568
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 439
      Height = 13
      Caption = 'N'#250'mero do Pedido de Compra (deixe o campo vazio para incluir um novo Pedido de Compra):'
    end
    object SbCompra: TSpeedButton
      Left = 55
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Consulta Pedido de Compra'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCompraClick
    end
    object Label10: TLabel
      Left = 5
      Top = 39
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 56
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label2: TLabel
      Left = 5
      Top = 75
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label3: TLabel
      Left = 90
      Top = 75
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label4: TLabel
      Left = 175
      Top = 75
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 5
      Top = 142
      Width = 131
      Height = 13
      Caption = 'Itens do Pedido de Compra:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 403
      Top = 113
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 489
      Top = 113
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Compra: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtNr_CompraExit
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtCd_ProdFalta: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 53
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 7
      OnExit = EdtCd_ProdFaltaExit
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtNm_ProdFalta: TEdit
      Left = 80
      Top = 53
      Width = 386
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
      TabOrder = 8
    end
    object EdtQt_ItemFalta: TCurrencyEdit
      Left = 5
      Top = 88
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 0
      OnChange = EdtQt_ItemFaltaChange
    end
    object EdtVl_UnitFalta: TCurrencyEdit
      Left = 90
      Top = 88
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 1
      Value = 0.01
      OnChange = EdtQt_ItemFaltaChange
    end
    object EdtVl_TotalFalta: TCurrencyEdit
      Left = 175
      Top = 88
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 158
      Width = 566
      Height = 156
      DataSource = DsProdFalta
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sg_unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_item'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_total'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object EdtSg_UnidFalta: TLabeledEdit
      Left = 471
      Top = 53
      Width = 45
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 43
      EditLabel.Height = 13
      EditLabel.Caption = 'Unidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object ADODsProdFalta: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,'#13#10'  A.Vl_Unitario, B.Fl_Lote, A.Vl_Unitario * A.Qt_Item as Vl_Total,'#13#10'  case'#13#10'    when A.Cd_Produto is not null then B.Nm_Produto'#13#10'    else A.Nm_Produto'#13#10#13#10'  end as Nm_Produto'#13#10#13#10'from'#13#10'  Compra_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Compra = :Nr_Compra'#13#10#13#10'order by'#13#10'  A.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 142
    Top = 284
    object ADODsProdFaltanr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsProdFaltanr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdFaltacd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
      DisplayFormat = '###'
    end
    object ADODsProdFaltanm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdFaltasg_unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdFaltasg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdFaltaqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsProdFaltavl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00#'
      Precision = 12
      Size = 3
    end
    object ADODsProdFaltavl_total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsProdFaltafl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
  end
  object DsProdFalta: TDataSource
    DataSet = ADODsProdFalta
    Left = 112
    Top = 284
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '/* Novo pedido de compra */'
      'select'
      '  max( A.Nr_Compra ) + 1 as Nr_Compra'
      ''
      'from'
      '  Compra A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      '/* Novo item */'
      'select'
      '  max( Nr_Item ) as NewItem'
      ''
      'from'
      '  Compra_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    Left = 101
    Top = 235
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Compra_Item( Cd_Filial, Nr_Compra, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Qt_Recebida )'
      'values( :Cd_Filial, :Nr_Compra, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, 0 )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Compra_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Vl_Unitario   = :Vl_Unitario'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther0.Strings = (
      '/* Pedido de Compra */'
      'insert into Compra( Cd_Filial, Nr_Compra, Dt_Emissao, St_Compra, Cd_Emitente,'
      '  Nr_Pedido_Emitente, Nm_Contato, Pr_Desconto, Vl_Desconto,'
      '  Pr_Custo, Vl_Custo, Mm_Observacao )'
      'values( :Cd_Filial, :Nr_Compra, :Dt_Emissao, ''''1'''', null, '''''', '''''', 0, 0, 0,'
      '  0, :Mm_Observacao )'
      ''
    )
    SQLOther1.Strings = (
      '/* Atualiza a tabela de filial */'
      'update'
      '  Filial'
      ''
      'set'
      '  Nr_Compra = :Nr_Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 173
    Top = 284
  end
end
