object FrmOrcamento_Estoque_Item: TFrmOrcamento_Estoque_Item
  Left = 332
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Confirma'#231#227'o do item no estoque'
  ClientHeight = 117
  ClientWidth = 498
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
    Height = 117
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 117
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 88
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label6: TLabel
      Left = 70
      Top = 5
      Width = 37
      Height = 13
      Caption = 'Produto'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 44
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 5
      Top = 49
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label2: TLabel
      Left = 53
      Top = 49
      Width = 94
      Height = 13
      Caption = 'Quantidade Pedido:'
    end
    object Label3: TLabel
      Left = 152
      Top = 49
      Width = 70
      Height = 13
      Caption = 'Unid. Estoque:'
    end
    object Label5: TLabel
      Left = 227
      Top = 50
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label7: TLabel
      Left = 312
      Top = 50
      Width = 38
      Height = 13
      Caption = 'Imprimir:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 91
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 91
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 8
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtCd_Produto: TDBEdit
      Left = 5
      Top = 20
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clBtnFace
      DataField = 'Cd_Produto'
      DataSource = FrmOrcamento_Estoque.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DbEdtNm_Produto: TDBEdit
      Left = 70
      Top = 20
      Width = 401
      Height = 19
      TabStop = False
      Color = clBtnFace
      DataField = 'Nm_Produto'
      DataSource = FrmOrcamento_Estoque.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DbEdtSg_Pedido: TDBEdit
      Left = 5
      Top = 64
      Width = 43
      Height = 19
      TabStop = False
      Color = clBtnFace
      DataField = 'Sg_Unidade'
      DataSource = FrmOrcamento_Estoque.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DbEdtQt_Pedido: TDBEdit
      Left = 53
      Top = 64
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clBtnFace
      DataField = 'Qt_Item'
      DataSource = FrmOrcamento_Estoque.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbEdtSg_Estoque: TDBEdit
      Left = 152
      Top = 64
      Width = 43
      Height = 19
      TabStop = False
      Color = clBtnFace
      DataField = 'Sg_Estoque'
      DataSource = FrmOrcamento_Estoque.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 227
      Top = 64
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      TabOrder = 5
    end
    object EdtQt_Agregado: TCurrencyEdit
      Left = 312
      Top = 64
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      TabOrder = 6
    end
  end
  object ADOCmdEstoque: TADOCommand
    CommandText = 'update'#13#10'  Orcamento_Item'#13#10#13#10'set'#13#10'  Qt_Estoque  = :Qt_Estoque,'#13#10'  Qt_Agregado = :Qt_Agregado'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item      = :Nr_Item'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Qt_Estoque'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Qt_Agregado'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 9
        Size = 19
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
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 430
    Top = 10
  end
end
