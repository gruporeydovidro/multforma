object FrmOrcamento_Juncao_Item: TFrmOrcamento_Juncao_Item
  Left = 436
  Top = 388
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item da Jun'#231#227'o'
  ClientHeight = 111
  ClientWidth = 515
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 111
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 494
    Height = 111
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 81
      Width = 487
      Height = 5
      Shape = bsTopLine
    end
    object Label21: TLabel
      Left = 5
      Top = 3
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label6: TLabel
      Left = 5
      Top = 43
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object Label1: TLabel
      Left = 180
      Top = 43
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 266
      Top = 43
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 351
      Top = 43
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 39
      Width = 487
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 321
      Top = 84
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 407
      Top = 84
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtNm_Produto: TDBEdit
      Left = 6
      Top = 17
      Width = 480
      Height = 19
      TabStop = False
      DataField = 'Nm_Produto'
      DataSource = FrmOrcamento_Juncao.DsItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 57
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
      OnChange = CbEstoqueChange
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 180
      Top = 57
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 2
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 266
      Top = 57
      Width = 80
      Height = 19
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 351
      Top = 57
      Width = 80
      Height = 19
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
      TabOrder = 4
    end
  end
  object ADODsEstoque: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Sg_Unidade,'#13#10'  Qt_Estoque = ( B.Qt_Entrada - B.Qt_Saida - B.Qt_Reserva ) / A.Nr_Fator,'#13#10'  Vl_Unitario = C.Vl_Venda * A.Nr_Fator '#13#10#13#10'from'#13#10'  Produto_Unidade A'#13#10#13#10'inner join'#13#10'  Estoque B'#13#10'on'#13#10'  B.Fl_Estoque = :Fl_Estoque and'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Preco C'#13#10'on'#13#10'  C.Cd_Tabela  = :Cd_Tabela and'#13#10'  C.Cd_Produto = A.Cd_Produto'#13#10#13#10'where'#13#10'  A.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Fl_Estoque'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'NORMAL'
      end
      item
        Name = 'Cd_Produto'
        DataType = ftSmallint
        Size = -1
        Value = 222
      end>
    Left = 80
    Top = 81
    object ADODsEstoqueSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsEstoqueQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      Precision = 32
      Size = 6
    end
    object ADODsEstoqueVl_Unitario: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'Vl_Unitario'
      ReadOnly = True
      DisplayFormat = '#,##0.00#'
      Precision = 32
      Size = 6
    end
  end
  object DsEstoque: TDataSource
    DataSet = ADODsEstoque
    Left = 50
    Top = 81
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      'update'
      '  #Juncao'
      ''
      'set'
      '  Qt_Item     = :Qt_Item,'
      '  Vl_Unitario = :Vl_Unitario,'
      '  Sg_Unidade  = :Sg_Unidade'
      ''
      'where'
      '  Nr_Item = :Nr_Item'
    )
    Left = 10
    Top = 81
  end
end
