object FrmInstalacao_Servico: TFrmInstalacao_Servico
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Servi'#231'o a ser executado'
  ClientHeight = 251
  ClientWidth = 625
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
    Height = 251
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 604
    Height = 251
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 220
      Width = 590
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 39
      Height = 13
      Caption = 'Servi'#231'o:'
    end
    object SbProduto: TSpeedButton
      Left = 91
      Top = 17
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
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 88
      Top = 38
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 173
      Top = 38
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 424
      Top = 223
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 515
      Top = 223
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 17
      Width = 85
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
      Left = 118
      Top = 17
      Width = 437
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtQt_Servico: TCurrencyEdit
      Left = 5
      Top = 51
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      TabOrder = 2
      OnChange = EdtQt_ServicoChange
    end
    object EdtVl_Servico: TCurrencyEdit
      Left = 88
      Top = 51
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnChange = EdtQt_ServicoChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 173
      Top = 51
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
      TabOrder = 4
    end
  end
end
