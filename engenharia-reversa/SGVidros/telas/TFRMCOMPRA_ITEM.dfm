object FrmCompra_Item: TFrmCompra_Item
  Left = 353
  Top = 234
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Pedido de Compra'
  ClientHeight = 155
  ClientWidth = 543
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 155
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 522
    Height = 155
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 82
      Width = 514
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 56
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
    object Label6: TLabel
      Left = 5
      Top = 43
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 179
      Top = 45
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 264
      Top = 45
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 349
      Top = 45
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Bevel1: TBevel
      Left = 2
      Top = 123
      Width = 514
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 432
      Top = 44
      Width = 40
      Height = 13
      Caption = '% ICMS:'
    end
    object Label11: TLabel
      Left = 475
      Top = 44
      Width = 27
      Height = 13
      Caption = '% IPI:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 348
      Top = 128
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 434
      Top = 128
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 10
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Left = 5
      Top = 20
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtDp_Produto: TEdit
      Left = 80
      Top = 20
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
      TabOrder = 1
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 58
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 179
      Top = 58
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 3
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 264
      Top = 58
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 4
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 349
      Top = 58
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
      TabOrder = 5
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 5
      Top = 99
      Width = 460
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 8
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 432
      Top = 58
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 6
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 475
      Top = 58
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 7
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Compra_Item( Cd_Filial, Nr_Compra, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Qt_Recebida, Pr_IPI, Pr_ICMS )'
      'values( :Cd_Filial, :Nr_Compra, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, 0, :Pr_IPI, :Pr_ICMS )'
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
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Pr_IPI        = :Pr_IPI,'
      '  Pr_ICMS       = :Pr_ICMS'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Nr_Item   = :Nr_Item'
    )
    Left = 25
    Top = 120
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  Compra_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra'
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
    Left = 55
    Top = 120
    object ADODsPrimaryNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
  object ADODsCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Nr_Item'#13#10#13#10'from'#13#10'  Compra_Item'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra and'#13#10'  Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 86
    Top = 120
    object ADODsChecknr_item: TSmallintField
      FieldName = 'nr_item'
    end
  end
end
