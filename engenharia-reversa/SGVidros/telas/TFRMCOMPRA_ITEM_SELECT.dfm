object FrmCompra_Item_Select: TFrmCompra_Item_Select
  Left = 308
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Pedido de Compra'
  ClientHeight = 400
  ClientWidth = 766
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 400
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 745
    Height = 400
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 294
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 182
      Top = 296
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 265
      Top = 296
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 347
      Top = 296
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Bevel1: TBevel
      Left = 5
      Top = 370
      Width = 734
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 430
      Top = 296
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label11: TLabel
      Left = 473
      Top = 296
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 572
      Top = 373
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 658
      Top = 373
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 10
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbEstoque: TComboBox
      Left = 8
      Top = 309
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 182
      Top = 309
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
      Left = 265
      Top = 309
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
      Left = 347
      Top = 309
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 430
      Top = 309
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
      Left = 473
      Top = 309
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 7
    end
    object EdtFind: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 408
      Height = 19
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do Produto'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnEnter = EdtFindEnter
      OnExit = EdtFindExit
      OnKeyPress = EdtFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 39
      Width = 732
      Height = 249
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFindDblClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 615
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 43
          Visible = True
        end>
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 8
      Top = 348
      Width = 460
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 8
    end
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  Compra_Item'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra'
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
        Name = 'Nr_Compra'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 55
    Top = 122
    object ADODsPrimaryNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
  object ADODsCheck: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Compra_Item'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther1.Strings = (
      '--------- Valida se o item existe pelo codigo'
      'select'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Fabricante = :Cd_Fabricante'
    )
    Left = 86
    Top = 122
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'#13#10#13#10'from'#13#10'  Produto P'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nr_Sequencia'
    )
    SQLOther1.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nm_Produto'
    )
    Left = 360
    Top = 192
    object ADODsFindCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsFindNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsFindSg_Estoque: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 328
    Top = 192
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
    Left = 26
    Top = 122
  end
end
