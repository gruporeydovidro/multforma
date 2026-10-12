object FrmOrcamento_Divisao_Item: TFrmOrcamento_Divisao_Item
  Left = 397
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item '
  ClientHeight = 106
  ClientWidth = 559
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
    Height = 106
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 538
    Height = 106
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 75
      Width = 530
      Height = 5
      Shape = bsTopLine
    end
    object Label21: TLabel
      Left = 5
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label3: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label1: TLabel
      Left = 91
      Top = 39
      Width = 45
      Height = 13
      Caption = 'Pedido 1:'
    end
    object Label2: TLabel
      Left = 177
      Top = 39
      Width = 45
      Height = 13
      Caption = 'Pedido 2:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 364
      Top = 78
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 450
      Top = 78
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtNm_Produto: TDBEdit
      Left = 6
      Top = 17
      Width = 525
      Height = 19
      TabStop = False
      DataField = 'Nm_Produto'
      DataSource = FrmOrcamento_Divisao.DsItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DbEdtQt_Item: TDBEdit
      Left = 6
      Top = 52
      Width = 81
      Height = 19
      TabStop = False
      DataField = 'Qt_Item'
      DataSource = FrmOrcamento_Divisao.DsItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtQt_Pedido1: TCurrencyEdit
      Left = 91
      Top = 52
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 2
      OnChange = EdtQt_Pedido1Change
    end
    object EdtQt_Pedido2: TCurrencyEdit
      Left = 177
      Top = 52
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
end
