object FrmOrcamento_Item_Conjunto: TFrmOrcamento_Item_Conjunto
  Left = 282
  Top = 291
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Conjunto'
  ClientHeight = 106
  ClientWidth = 512
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 106
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 491
    Height = 106
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 76
      Width = 484
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 40
      Width = 86
      Height = 13
      Caption = 'Nome do Produto:'
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 55
      Top = 18
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
      Left = 409
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 318
      Top = 79
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 404
      Top = 79
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_ItemProd: TEdit
      Left = 5
      Top = 54
      Width = 401
      Height = 19
      MaxLength = 120
      TabOrder = 2
    end
    object EdtCd_ProdItem: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnExit = EdtCd_ProdItemExit
      OnKeyDown = EdtCd_ProdItemKeyDown
    end
    object EdtNm_ProdItem: TEdit
      Left = 79
      Top = 18
      Width = 397
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
    object EdtQt_ItemProd: TCurrencyEdit
      Left = 409
      Top = 54
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 3
    end
  end
  object ADOCmdConjunto: TADOCommand
    CommandText = 'update'#13#10'  #Orcamento_Conjunto_TMP'#13#10#13#10'set'#13#10'  Nm_Produto    = :Nm_Produto,'#13#10'  Cd_OldProduto = :Cd_OldProduto,'#13#10'  Cd_Produto    = :Cd_ProdutoNew,'#13#10'  Qt_Item       = :Qt_Item'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Cd_Produto   = :Cd_Produto'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Nm_Produto'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_OldProduto'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_ProdutoNew'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Qt_Item'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Size = -1
        Value = nil?
      end>
    Left = 121
    Top = 75
  end
end
