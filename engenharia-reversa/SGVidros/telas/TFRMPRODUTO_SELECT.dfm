object FrmProduto_Select: TFrmProduto_Select
  Left = 373
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Produtos'
  ClientHeight = 327
  ClientWidth = 694
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
    Height = 327
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 294
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 673
    Height = 327
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 524
    ExplicitHeight = 294
    object BvlSeparator: TBevel
      Left = 3
      Top = 296
      Width = 665
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 40
      Width = 65
      Height = 13
      Caption = 'Produto Final:'
    end
    object SbProdEndSel: TSpeedButton
      Tag = 2
      Left = 66
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdEndSelClick
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 70
      Height = 13
      Caption = 'Produto Inicial:'
    end
    object SbProdStartSel: TSpeedButton
      Tag = 1
      Left = 66
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdEndSelClick
    end
    object SbGrupoSel: TSpeedButton
      Left = 45
      Top = 92
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoSelClick
    end
    object Label3: TLabel
      Left = 5
      Top = 77
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupoSel: TSpeedButton
      Left = 45
      Top = 110
      Width = 23
      Height = 19
      Hint = 'Consulta de SubGrupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoSelClick
    end
    object SbClasseSel: TSpeedButton
      Left = 45
      Top = 128
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseSelClick
    end
    object SbLocalizacaoSel: TSpeedButton
      Left = 45
      Top = 203
      Width = 23
      Height = 19
      Hint = 'Seleciona a Localiza'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLocalizacaoSelClick
    end
    object Label4: TLabel
      Left = 5
      Top = 188
      Width = 60
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object Label8: TLabel
      Left = 5
      Top = 225
      Width = 27
      Height = 13
      Caption = 'Ativo:'
    end
    object SbLabSel: TSpeedButton
      Left = 376
      Top = 203
      Width = 23
      Height = 19
      Hint = 'Seleciona o Laborat'#243'rio/Fabricante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLabSelClick
    end
    object Label5: TLabel
      Left = 336
      Top = 188
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 499
      Top = 299
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 15
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 585
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 16
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_ProdEndSel: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = EdtCd_ProdStartSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdEndSel: TEdit
      Left = 91
      Top = 55
      Width = 427
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
      TabOrder = 3
    end
    object EdtCd_ProdStartSel: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = EdtCd_ProdStartSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdStartSel: TEdit
      Left = 91
      Top = 18
      Width = 427
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
      TabOrder = 1
    end
    object MmEstruturaSel: TMemo
      Left = 69
      Top = 92
      Width = 437
      Height = 55
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Grupo'
        'SubGrupo'
        'Classe'
      )
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_GrupoSel: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtCd_SubGrupoSel: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 110
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_SubGrupoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtCd_ClasseSel: TCurrencyEdit
      Tag = 5
      Left = 5
      Top = 128
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_ClasseSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdutoSel: TLabeledEdit
      Left = 5
      Top = 166
      Width = 427
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 8
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object CkBDescricaoSel: TCheckBox
      Left = 95
      Top = 149
      Width = 68
      Height = 17
      Caption = 'Contendo'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 9
    end
    object EdtCd_LocalizacaoSel: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 203
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_LocalizacaoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtDs_LocalizacaoSel: TEdit
      Left = 68
      Top = 203
      Width = 265
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
      TabOrder = 11
    end
    object CbAtivoSel: TComboBox
      Left = 5
      Top = 239
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 14
      Items.Strings = (
        'Sim'
        'N'#227'o'
        'Ambos'
      )
    end
    object EdtCd_LabSel: TCurrencyEdit
      Tag = 6
      Left = 336
      Top = 203
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_LabSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_LabSel: TEdit
      Left = 399
      Top = 203
      Width = 265
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
      TabOrder = 13
    end
  end
end
