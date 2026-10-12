object FrmOrcamento_Projeto_Item_Troca: TFrmOrcamento_Projeto_Item_Troca
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Troca / Confirma'#231#227'o de Produto Padr'#227'o'
  ClientHeight = 191
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
    Height = 191
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 191
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 161
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 69
      Height = 13
      Caption = 'Novo Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
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
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 164
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 164
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 90
      Top = 18
      Width = 345
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
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Atualiza o tipo do item'
      ''
      'update'
      '  Orcamento_Projeto_Item'
      ''
      'set'
      '  Cd_Produto  = :Cd_Produto,'
      '  Vl_Unitario = :Vl_Unitario,'
      '  Sg_Unidade  = :Sg_Unidade'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto and'
      '  Tp_Item      = :Tp_Item'
    )
    Left = 240
    Top = 96
  end
end
