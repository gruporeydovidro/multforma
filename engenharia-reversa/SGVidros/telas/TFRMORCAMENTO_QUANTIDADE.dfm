object FrmOrcamento_Quantidade: TFrmOrcamento_Quantidade
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Quantidades do Item'
  ClientHeight = 180
  ClientWidth = 537
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 180
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 516
    Height = 180
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 151
      Width = 509
      Height = 5
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 5
      Top = 39
      Width = 140
      Height = 13
      Caption = 'Unidade Solicitada (Vendido):'
    end
    object Label23: TLabel
      Left = 5
      Top = 77
      Width = 132
      Height = 13
      Caption = 'Unidade da Nota (Estoque):'
    end
    object Label4: TLabel
      Left = 179
      Top = 39
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 254
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label1: TLabel
      Left = 179
      Top = 77
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 254
      Top = 77
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label5: TLabel
      Left = 5
      Top = 3
      Width = 175
      Height = 13
      Caption = 'Descri'#231#227'o alternativa para o produto:'
    end
    object Label13: TLabel
      Left = 139
      Top = 114
      Width = 56
      Height = 13
      Caption = '&Fabrica'#231#227'o:'
      FocusControl = EdtDt_Fabricacao
    end
    object Label14: TLabel
      Left = 234
      Top = 114
      Width = 44
      Height = 13
      Caption = '&Validade:'
      FocusControl = EdtDt_Validade
    end
    object Label3: TLabel
      Left = 332
      Top = 39
      Width = 96
      Height = 13
      Caption = 'Fator de Convers'#227'o:'
    end
    object Label8: TLabel
      Left = 332
      Top = 77
      Width = 96
      Height = 13
      Caption = 'Fator de Convers'#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 342
      Top = 153
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 428
      Top = 153
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 9
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtQt_Venda: TCurrencyEdit
      Left = 179
      Top = 53
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 1
    end
    object EdtVl_Venda: TCurrencyEdit
      Left = 254
      Top = 53
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = EdtVl_VendaEnter
      OnExit = EdtVl_VendaExit
    end
    object EdtQt_Nota: TCurrencyEdit
      Left = 179
      Top = 91
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 3
    end
    object EdtVl_Nota: TCurrencyEdit
      Left = 254
      Top = 91
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 4
      OnEnter = EdtVl_NotaEnter
      OnExit = EdtVl_NotaExit
    end
    object EdtNm_Item: TEdit
      Left = 5
      Top = 17
      Width = 501
      Height = 19
      TabStop = False
      MaxLength = 120
      TabOrder = 0
    end
    object EdtSg_Venda: TEdit
      Left = 5
      Top = 53
      Width = 169
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object EdtSg_Nota: TEdit
      Left = 5
      Top = 91
      Width = 169
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 139
      Top = 128
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
    end
    object EdtDt_Validade: TDateEdit
      Left = 234
      Top = 128
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 6
      Top = 128
      Width = 130
      Height = 19
      TabStop = False
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = '&N'#250'mero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 5
    end
    object EdtNr_FatorVenda: TCurrencyEdit
      Left = 332
      Top = 53
      Width = 75
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
      TabOrder = 12
      OnEnter = EdtVl_VendaEnter
      OnExit = EdtVl_VendaExit
    end
    object EdtNr_FatorEstoque: TCurrencyEdit
      Left = 332
      Top = 91
      Width = 75
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
      TabOrder = 13
      OnEnter = EdtVl_NotaEnter
      OnExit = EdtVl_NotaExit
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto,'#13#10'  P.Sg_Estoque, PE.Nr_Fator as Nr_Estoque, UE.Ds_Unidade as Ds_Estoque,'#13#10'  P.Sg_Venda, PV.Nr_Fator as Nr_Venda, UV.Ds_Unidade as Ds_Venda'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Produto_Unidade PE'#13#10'on'#13#10'  PE.Cd_Produto = P.Cd_Produto and'#13#10'  PE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Unidade UE'#13#10'on'#13#10'  UE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Produto_Unidade PV'#13#10'on'#13#10'  PV.Cd_Produto = P.Cd_Produto and'#13#10'  PV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 394
    Top = 8
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoNr_Estoque: TBCDField
      FieldName = 'Nr_Estoque'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoDs_Estoque: TStringField
      FieldName = 'Ds_Estoque'
      Size = 30
    end
    object ADODsProdutoSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoNr_Venda: TBCDField
      FieldName = 'Nr_Venda'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoDs_Venda: TStringField
      FieldName = 'Ds_Venda'
      Size = 30
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- '#218'ltimo item do or'#231'amento'#13#10'select'#13#10'  max( Nr_Item ) as Nr_Item'#13#10#13#10'from'#13#10'  Orcamento_Item'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 454
    Top = 7
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
  end
  object ADOCmdItem: TADOCommand
    CommandText = 'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'#13#10'   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,'#13#10'   Fl_STB, Ps_Produto, Nr_Lote, Dt_Fabricacao, Dt_Validade, Sg_Venda, Qt_Venda )'#13#10'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'#13#10'   :Sg_Unidade, :Qt_Item, :Vl_Unitario, ''''1'''', :Pr_Reducao, :Fl_STB,'#13#10'   :Ps_Produto, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade, :Sg_Venda, :Qt_Venda )'#13#10
    Connection = FrmMain.ADOConMaster
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
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nm_Produto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 120
        Value = nil?
      end
      item
        Name = 'Sg_Unidade'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = nil?
      end
      item
        Name = 'Qt_Item'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 3
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Unitario'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 3
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Pr_Reducao'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end
      item
        Name = 'Fl_STB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Ps_Produto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 18
        Size = 19
        Value = nil?
      end
      item
        Name = 'Nr_Lote'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = nil?
      end
      item
        Name = 'Dt_Fabricacao'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_Validade'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Sg_Venda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = nil?
      end
      item
        Name = 'Qt_Venda'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 13
        Size = 19
        Value = nil?
      end>
    Left = 424
    Top = 8
  end
end
