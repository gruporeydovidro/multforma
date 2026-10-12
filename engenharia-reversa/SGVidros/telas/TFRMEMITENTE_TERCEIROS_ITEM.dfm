object FrmEmitente_Terceiros_Item: TFrmEmitente_Terceiros_Item
  Left = 325
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produto em Poder de Terceiros'
  ClientHeight = 108
  ClientWidth = 497
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
    Height = 108
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 476
    Height = 108
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
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object SbProduto: TSpeedButton
      Left = 230
      Top = 20
      Width = 23
      Height = 19
      Hint = 'Seleciona o Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label1: TLabel
      Left = 259
      Top = 5
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
      TabOrder = 4
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
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Left = 5
      Top = 20
      Width = 50
      Height = 19
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnEnter = EdtCd_ProdutoEnter
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 5
      Top = 42
      Width = 461
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
      TabOrder = 3
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 259
      Top = 20
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      TabOrder = 2
    end
    object EdtCd_Fabricante: TLabeledEdit
      Tag = 1
      Left = 60
      Top = 20
      Width = 170
      Height = 19
      EditLabel.Width = 161
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Fabricante/Distribuidor:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 1
      OnEnter = EdtCd_ProdutoEnter
      OnExit = EdtCd_FabricanteExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Terceiros( Cd_Emitente, Cd_Produto, Qt_Item )'
      'values( :Cd_Emitente, :Cd_Produto, :Qt_Item )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Terceiros'
      ''
      'set'
      '  Qt_Item = :Qt_Item'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Cd_Produto  = :Cd_Produto'
    )
    Left = 26
    Top = 77
  end
  object ADODsCheck: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  ET.Qt_Item'#13#10#13#10'from'#13#10'  Emitente_Terceiros ET'#13#10#13#10'where'#13#10'  ET.Cd_Emitente = :Cd_Emitente and'#13#10'  ET.Cd_Produto  = :Cd_Produto'#13#10
    Parameters = <
      item
        Name = 'Cd_Emitente'
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
    SQLOther0.Strings = (
      '---------- Valida se o produto ja esta no emitente'
      'select'
      '  ET.Qt_Item'
      ''
      'from'
      '  Emitente_Terceiros ET'
      ''
      'where'
      '  ET.Cd_Emitente = :Cd_Emitente and'
      '  ET.Cd_Produto  = :Cd_Produto'
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
    Left = 55
    Top = 77
  end
end
