object FrmProduto_Conjunto_Item: TFrmProduto_Conjunto_Item
  Left = 389
  Top = 329
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item do Conjunto'
  ClientHeight = 109
  ClientWidth = 498
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 109
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 109
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 79
      Width = 470
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
    object Label1: TLabel
      Left = 5
      Top = 42
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 82
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 82
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
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
    object EdtNm_Produto: TEdit
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
    object EdtQt_Item: TCurrencyEdit
      Left = 5
      Top = 55
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      TabOrder = 2
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Produto_Conjunto( Cd_Produto_CJ, Cd_Produto, Qt_Item )'
      'values( :Cd_Produto_CJ, :Cd_Produto, :Qt_Item )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Produto_Conjunto'
      ''
      'set'
      '  Qt_Item = :Qt_Item'
      ''
      'where'
      '  Cd_Produto_CJ = :Cd_Produto_CJ and'
      '  Cd_Produto    = :Cd_Produto'
    )
    Left = 26
    Top = 75
  end
  object ADODsCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PC.Cd_Produto'#13#10#13#10'from'#13#10'  Produto_Conjunto PC'#13#10#13#10'where'#13#10'  PC.Cd_Produto_CJ = :Cd_Produto_CJ and'#13#10'  PC.Cd_Produto    = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto_CJ'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 57
    Top = 76
  end
end
