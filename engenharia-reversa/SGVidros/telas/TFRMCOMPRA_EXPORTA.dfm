object FrmCompra_Exporta: TFrmCompra_Exporta
  Left = 369
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Exporta'#231#227'o do Pedido de Compra'
  ClientHeight = 150
  ClientWidth = 369
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 150
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 348
    Height = 150
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 121
      Width = 339
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 55
      Height = 13
      Caption = 'Distribuidor:'
    end
    object Label2: TLabel
      Left = 5
      Top = 42
      Width = 72
      Height = 13
      Caption = 'Tipo de Fatura:'
    end
    object Label6: TLabel
      Left = 154
      Top = 44
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label3: TLabel
      Left = 248
      Top = 44
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object SbFile: TSpeedButton
      Left = 319
      Top = 96
      Width = 23
      Height = 19
      Hint = 'Seleciona o arquivo a ser importado'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFileClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 175
      Top = 124
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 261
      Top = 124
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbDistribuidor: TComboBox
      Left = 5
      Top = 21
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnExit = CbDistribuidorExit
      Items.Strings = (
        'ITA'
        'ProFarma'
        'Lunar'
        'Santa Cruz'
        'Sudeste'
      )
    end
    object CbFatura: TComboBox
      Left = 5
      Top = 58
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        '01 - Boleto'
        '02 - Nota Promissoria'
        '03 - Duplicata'
      )
    end
    object EdtDt_Emissao: TDateEdit
      Left = 154
      Top = 58
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object EdtHr_Emissao: TMaskEdit
      Left = 248
      Top = 58
      Width = 37
      Height = 19
      EditMask = '!90:00;0; '
      MaxLength = 5
      TabOrder = 4
    end
    object EdtId_Fornecedor: TLabeledEdit
      Left = 154
      Top = 21
      Width = 120
      Height = 19
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo no Fornecedor:'
      MaxLength = 8
      TabOrder = 1
    end
    object EdtNm_Arquivo: TLabeledEdit
      Left = 5
      Top = 97
      Width = 308
      Height = 19
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo:'
      LabelSpacing = 2
      TabOrder = 5
      Text = 'Pedido.PED'
      OnKeyDown = EdtNm_ArquivoKeyDown
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '*.TXT'
    Filter = '*.TXT|Arquivo Texto|*.*|Todos os Arquivos'
    Left = 321
    Top = 65
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CI.Cd_Produto, CI.Qt_Item, PF.Cd_Produto_Emitente'#13#10#13#10'from'#13#10'  Compra_Item CI'#13#10#13#10'inner join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto  = CI.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  CI.Cd_Filial = :Cd_Filial and'#13#10'  CI.Nr_Compra = :Nr_Compra'#13#10#13#10'order by'#13#10'  CI.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 1
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = 2
      end>
    Left = 31
    Top = 115
    object ADODsItemcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsItemqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsItemcd_produto_emitente: TStringField
      FieldName = 'cd_produto_emitente'
    end
  end
  object ADODsID: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Id_Fornecedor'#13#10#13#10'from'#13#10'  Compra_Fornecedor'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Cd_Fornecedor = :Cd_Fornecedor'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Fornecedor'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 61
    Top = 115
    object ADODsIDid_fornecedor: TStringField
      FieldName = 'id_fornecedor'
      Size = 15
    end
  end
  object ADOCmdID: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Compra_Fornecedor( Cd_Filial, Cd_Fornecedor, Id_Fornecedor )'
      'values( :Cd_Filial, :Cd_Fornecedor, :Id_Fornecedor )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Compra_Fornecedor'
      ''
      'set'
      '  Id_Fornecedor = :Id_Fornecedor'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Cd_Fornecedor = :Cd_Fornecedor'
    )
    Left = 91
    Top = 115
  end
end
