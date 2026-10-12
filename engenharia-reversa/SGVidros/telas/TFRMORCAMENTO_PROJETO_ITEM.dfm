object FrmOrcamento_Projeto_Item: TFrmOrcamento_Projeto_Item
  Left = 287
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item do Projeto'
  ClientHeight = 183
  ClientWidth = 495
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 183
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 474
    Height = 183
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 153
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object LblProduto: TLabel
      Left = 5
      Top = 7
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 20
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
      Left = 175
      Top = 79
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label6: TLabel
      Left = 5
      Top = 79
      Width = 92
      Height = 13
      Caption = 'Unidade de Venda:'
    end
    object Label3: TLabel
      Left = 87
      Top = 113
      Width = 54
      Height = 13
      Caption = 'Folga (mm):'
    end
    object Label1: TLabel
      Left = 249
      Top = 79
      Width = 28
      Height = 13
      Caption = 'Parte:'
    end
    object Label4: TLabel
      Left = 232
      Top = 113
      Width = 54
      Height = 13
      Caption = 'Folga (mm):'
    end
    object Label5: TLabel
      Left = 5
      Top = 42
      Width = 28
      Height = 13
      Caption = 'Pe'#231'a:'
    end
    object Label7: TLabel
      Left = 297
      Top = 113
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 371
      Top = 113
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label9: TLabel
      Left = 150
      Top = 113
      Width = 55
      Height = 13
      Caption = 'Altura (mm):'
    end
    object Label10: TLabel
      Left = 4
      Top = 113
      Width = 64
      Height = 13
      Caption = 'Largura (mm):'
    end
    object BitBtnConfirm: TBitBtn
      Left = 301
      Top = 156
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 387
      Top = 156
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 13
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 20
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 90
      Top = 20
      Width = 350
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
      TabOrder = 1
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 175
      Top = 92
      Width = 66
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.00##'
      TabOrder = 4
      OnChange = EdtVl_UnitarioChange
    end
    object CbUnidade: TComboBox
      Left = 5
      Top = 92
      Width = 165
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
    end
    object EdtNr_Altura_Folga: TCurrencyEdit
      Tag = 2
      Left = 232
      Top = 128
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 9
      OnEnter = EdtNr_Largura_FolgaEnter
      OnExit = EdtNr_Largura_FolgaExit
    end
    object CbParte: TComboBox
      Left = 249
      Top = 92
      Width = 132
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
    end
    object EdtNr_Largura_Folga: TCurrencyEdit
      Tag = 1
      Left = 87
      Top = 128
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 7
      OnEnter = EdtNr_Largura_FolgaEnter
      OnExit = EdtNr_Largura_FolgaExit
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 297
      Top = 128
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00#'
      TabOrder = 10
      OnChange = EdtVl_UnitarioChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 371
      Top = 128
      Width = 70
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
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtNr_Altura: TCurrencyEdit
      Left = 150
      Top = 128
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 8
    end
    object EdtNr_Largura: TCurrencyEdit
      Left = 4
      Top = 128
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 6
    end
    object DbGPeca: TDBGrid
      Left = 5
      Top = 55
      Width = 436
      Height = 19
      DataSource = DsPeca
      Options = [dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGPecaDblClick
      OnEnter = DbGPecaEnter
      OnExit = DbGPecaExit
      OnKeyPress = DbGPecaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Peca'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Peca'
          Width = 334
          Visible = True
        end>
    end
  end
  object DsPeca: TDataSource
    DataSet = ADODsPeca
    Left = 56
    Top = 148
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Projeto_Item (Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '  Nr_Item, Tp_Item, Cd_Produto, Sg_Unidade, Qt_Item, Nr_Altura, Nr_Largura,'
      '  Cd_Parte, Cd_Peca, Nr_Altura_Folga, Nr_Largura_Folga, Vl_Unitario)'
      'values (:Cd_Filial, :Nr_Orcamento, :Nr_Projeto, :Nr_Item, :Tp_Item, :Cd_Produto,'
      '  :Sg_Unidade, :Qt_Item, :Nr_Altura, :Nr_Largura, :Cd_Parte, :Cd_Peca,'
      '  :Nr_Altura_Folga, :Nr_Largura_Folga, :Vl_Unitario)'
    )
    SQLUpdate.Strings = (
      'update Orcamento_Projeto_Item set'
      '  Tp_Item           = :Tp_Item,'
      '  Cd_Produto        = :Cd_Produto,'
      '  Sg_Unidade        = :Sg_Unidade,'
      '  Qt_Item           = :Qt_Item,'
      '  Nr_Altura         = :Nr_Altura,'
      '  Nr_Largura        = :Nr_Largura,'
      '  Cd_Parte          = :Cd_Parte,'
      '  Cd_Peca           = :Cd_Peca,'
      '  Nr_Altura_Folga   = :Nr_Altura_Folga,'
      '  Nr_Largura_Folga  = :Nr_Largura_Folga,'
      '  Vl_Unitario       = :Vl_Unitario'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto and'
      '  Nr_Item      = :Nr_Item'
    )
    Left = 131
    Top = 148
  end
  object ADODsDados: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Nr_item para inserir um novo item'
      'select top 1'
      '  A.Nr_Item + 1 as Nr_Item'
      ''
      'from'
      '  Orcamento_Projeto_Item A'
      ''
      'where'
      '  not exists('
      '    select'
      '      B.Nr_Item'
      ''
      '    from'
      '      Orcamento_Projeto_Item B'
      ''
      '    where'
      '      B.Nr_Projeto = :Nr_Projeto and'
      '      B.Nr_Item = A.Nr_Item + 1'
      '  )'
      ''
      'order by'
      '  A.Nr_Item'
    )
    SQLOther1.Strings = (
      '-- Seleciona as partes para preencher o ComboBox'
      'select'
      '  Cd_Parte, Ds_Parte'
      ''
      'from'
      '  Projeto_Parte'
    )
    SQLOther2.Strings = (
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Projeto_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto and'
      '  Cd_Peca      = :Cd_Peca'
    )
    SQLOther3.Strings = (
      '-- Verificar o tipo de produto'
      'select'
      '  Fl_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther4.Strings = (
      '/* Valor de Venda do Produto */'
      'declare @Cd_Tabela varchar(10)'
      'select'
      '  @Cd_Tabela = O.Cd_Tabela'
      '  '
      'from'
      '  Orcamento O'
      '  '
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ''
      'select'
      '  PP.Vl_Venda'
      ''
      'from'
      '  Produto_Preco PP'
      ''
      'where'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = :Cd_Produto'
      ''
    )
    Left = 96
    Top = 148
  end
  object ADODsPeca: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Peca, P.Ds_Peca'#13#10#13#10'from'#13#10'  Projeto_Peca P'#13#10
    Parameters = <>
    Left = 26
    Top = 148
    object ADODsPecaCd_Peca: TStringField
      DisplayWidth = 10
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsPecaDs_Peca: TStringField
      DisplayWidth = 50
      FieldName = 'Ds_Peca'
      Size = 50
    end
  end
  object ADODsEditItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-- Seleciona os dados do item para edi'#231#227'o'#13#10'-- Obs. N'#227'o colocar no ADODsDados'#13#10'select'#13#10'  PIT.Cd_Produto, PIT.Sg_Unidade, PIT.Qt_Item,'#13#10'  PIT.Nr_Altura, PIT.Nr_Largura, PIT.Cd_Parte, PIT.Cd_Peca,'#13#10'  PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, PIT.Vl_Unitario'#13#10'  '#13#10'from'#13#10'  Orcamento_Projeto_Item PIT'#13#10#13#10'where'#13#10'  PIT.Cd_Filial = :Cd_Filial and'#13#10'  PIT.Nr_Orcamento = :Nr_Orcamento and'#13#10'  PIT.Nr_Projeto = :Nr_Projeto and'#13#10'  PIT.Nr_Item    = :Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 171
    Top = 148
    object ADODsEditItemCd_Produto: TIntegerField
      DisplayWidth = 10
      FieldName = 'Cd_Produto'
    end
    object ADODsEditItemSg_Unidade: TStringField
      DisplayWidth = 2
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsEditItemQt_Item: TBCDField
      DisplayWidth = 13
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsEditItemCd_Parte: TSmallintField
      DisplayWidth = 10
      FieldName = 'Cd_Parte'
    end
    object ADODsEditItemCd_Peca: TStringField
      DisplayWidth = 10
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsEditItemNr_Altura_Folga: TSmallintField
      DisplayWidth = 10
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsEditItemNr_Largura_Folga: TSmallintField
      DisplayWidth = 10
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsEditItemNr_Altura: TIntegerField
      FieldName = 'Nr_Altura'
    end
    object ADODsEditItemNr_Largura: TIntegerField
      FieldName = 'Nr_Largura'
    end
    object ADODsEditItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
  end
  object ADODsItemNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'   Orcamento_Projeto_Item'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Projeto  = :Nr_Projeto'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 203
    Top = 150
    object ADODsItemNewNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
end
