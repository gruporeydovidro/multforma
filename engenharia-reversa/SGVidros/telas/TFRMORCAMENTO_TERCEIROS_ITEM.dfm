object FrmOrcamento_Terceiros_Item: TFrmOrcamento_Terceiros_Item
  Left = 349
  Top = 233
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Altera'#231#227'o do Item'
  ClientHeight = 137
  ClientWidth = 375
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 137
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 354
    Height = 137
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 107
      Width = 345
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label2: TLabel
      Left = 55
      Top = 3
      Width = 42
      Height = 13
      Caption = 'Vendido:'
    end
    object Label3: TLabel
      Left = 137
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Nota:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 181
      Top = 110
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 267
      Top = 110
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtSg_Unidade: TDBEdit
      Left = 5
      Top = 18
      Width = 45
      Height = 19
      TabStop = False
      DataField = 'Sg_Unidade'
      DataSource = FrmOrcamento_Terceiros.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DbQt_Item: TDBEdit
      Left = 55
      Top = 18
      Width = 80
      Height = 19
      TabStop = False
      DataField = 'qt_item'
      DataSource = FrmOrcamento_Terceiros.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtQt_Saida: TCurrencyEdit
      Left = 137
      Top = 18
      Width = 80
      Height = 19
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,##0.0##'
      TabOrder = 2
    end
  end
end
