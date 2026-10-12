object FrmProduto: TFrmProduto
  Left = 265
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produto'
  ClientHeight = 497
  ClientWidth = 945
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 497
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 924
    Height = 497
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlMoldura: TBevel
      Left = 648
      Top = 273
      Width = 267
      Height = 191
      Shape = bsFrame
    end
    object BvlSeparator: TBevel
      Left = 1
      Top = 467
      Width = 917
      Height = 3
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object ImgProduto: TImage
      Left = 650
      Top = 276
      Width = 262
      Height = 185
      Center = True
      OnDblClick = ImgProdutoDblClick
    end
    object Label2: TLabel
      Left = 514
      Top = 65
      Width = 54
      Height = 13
      Caption = 'Sequ'#234'ncia:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label3: TLabel
      Left = 5
      Top = 67
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupo: TSpeedButton
      Left = 109
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Consulta de SubGrupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object SbClasse: TSpeedButton
      Left = 173
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseClick
    end
    object Label16: TLabel
      Left = 539
      Top = 31
      Width = 57
      Height = 13
      Caption = 'Cadastrado:'
    end
    object Label17: TLabel
      Left = 653
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Alterado:'
    end
    object SbLocalizacao: TSpeedButton
      Left = 45
      Top = 166
      Width = 23
      Height = 19
      Hint = 'Seleciona a Localiza'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLocalizacaoClick
    end
    object Label4: TLabel
      Left = 5
      Top = 151
      Width = 60
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object Label27: TLabel
      Left = 382
      Top = 151
      Width = 94
      Height = 13
      Caption = 'Class. Fiscal (NCM):'
    end
    object Label5: TLabel
      Left = 496
      Top = 105
      Width = 94
      Height = 13
      Caption = 'Prazo de Aquisi'#231#227'o:'
      Visible = False
    end
    object SbAquisicao: TSpeedButton
      Left = 536
      Top = 119
      Width = 23
      Height = 19
      Hint = 'Seleciona Prazo de Aquisi'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SbAquisicaoClick
    end
    object Label6: TLabel
      Left = 5
      Top = 221
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object Label22: TLabel
      Left = 416
      Top = 221
      Width = 27
      Height = 13
      Caption = 'Peso:'
    end
    object Label8: TLabel
      Left = 481
      Top = 221
      Width = 27
      Height = 13
      Caption = 'Ativo:'
    end
    object Label21: TLabel
      Left = 545
      Top = 221
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label10: TLabel
      Left = 352
      Top = 221
      Width = 48
      Height = 13
      Caption = 'Pre'#231'o em:'
    end
    object Label18: TLabel
      Left = 648
      Top = 257
      Width = 24
      Height = 13
      Caption = 'Foto:'
    end
    object Label19: TLabel
      Left = 116
      Top = 257
      Width = 91
      Height = 13
      Caption = 'Origem do Produto:'
    end
    object LblPsicotropico: TLabel
      Left = 484
      Top = 417
      Width = 54
      Height = 13
      Caption = 'Controlado:'
    end
    object Label20: TLabel
      Left = 439
      Top = 257
      Width = 69
      Height = 13
      Caption = 'Controlar Lote:'
    end
    object Label23: TLabel
      Left = 179
      Top = 221
      Width = 92
      Height = 13
      Caption = 'Unidade de Venda:'
    end
    object Label24: TLabel
      Left = 5
      Top = 257
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label25: TLabel
      Left = 635
      Top = 221
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object Label26: TLabel
      Left = 590
      Top = 221
      Width = 30
      Height = 13
      Caption = 'Lucro:'
    end
    object Label28: TLabel
      Left = 5
      Top = 297
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object SbLaboratorio: TSpeedButton
      Left = 54
      Top = 312
      Width = 23
      Height = 19
      Hint = 'Seleciona Laborat'#243'rio / Fabricante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLaboratorioClick
    end
    object SbTributacao: TSpeedButton
      Left = 44
      Top = 202
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTributacaoClick
    end
    object Label7: TLabel
      Left = 5
      Top = 187
      Width = 175
      Height = 13
      Caption = 'Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
    end
    object Label30: TLabel
      Left = 375
      Top = 257
      Width = 49
      Height = 13
      Caption = 'Perec'#237'vel:'
    end
    object Label11: TLabel
      Left = 686
      Top = 221
      Width = 68
      Height = 13
      Caption = 'Mg Libera'#231#227'o:'
    end
    object LblArredondamento: TLabel
      Left = 386
      Top = 297
      Width = 81
      Height = 13
      Caption = 'Arredondamento:'
    end
    object SbArredondamento: TSpeedButton
      Left = 426
      Top = 312
      Width = 23
      Height = 19
      Hint = 'Seleciona Laborat'#243'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArredondamentoClick
    end
    object Label14: TLabel
      Left = 509
      Top = 257
      Width = 121
      Height = 13
      Caption = 'Estoque M'#237'nimo/M'#225'ximo:'
    end
    object LblCusto: TLabel
      Left = 5
      Top = 382
      Width = 30
      Height = 13
      Caption = 'Custo:'
    end
    object Label13: TLabel
      Left = 176
      Top = 382
      Width = 34
      Height = 13
      Caption = 'Venda:'
    end
    object Label29: TLabel
      Left = 163
      Top = 539
      Width = 61
      Height = 13
      Caption = 'Promocional:'
      Visible = False
    end
    object Label31: TLabel
      Left = 91
      Top = 382
      Width = 54
      Height = 13
      Caption = 'Reposi'#231#227'o:'
    end
    object Label15: TLabel
      Left = 260
      Top = 382
      Width = 63
      Height = 13
      Caption = #218'ltimo Pre'#231'o:'
    end
    object Label34: TLabel
      Left = 373
      Top = 383
      Width = 26
      Height = 13
      Hint = 'Margem de Valor Agregado'
      Caption = 'MVA:'
      ParentShowHint = False
      ShowHint = True
    end
    object LblTabela: TLabel
      Left = 5
      Top = 369
      Width = 105
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblEspessura: TLabel
      Left = 460
      Top = 382
      Width = 52
      Height = 13
      Caption = 'Espessura:'
    end
    object LblPerda: TLabel
      Left = 515
      Top = 382
      Width = 31
      Height = 13
      Caption = 'Perda:'
    end
    object LblMoldura: TLabel
      Left = 453
      Top = 369
      Width = 88
      Height = 13
      Caption = 'Moldura ( CM ):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 5
      Top = 415
      Width = 148
      Height = 13
      Caption = 'Produto para baixa de estoque:'
    end
    object SbBaixa: TSpeedButton
      Left = 65
      Top = 430
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto para baixa de estoque'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbBaixaClick
    end
    object Label32: TLabel
      Left = 479
      Top = 151
      Width = 31
      Height = 13
      Caption = 'CEST:'
    end
    object Label33: TLabel
      Left = 536
      Top = 151
      Width = 61
      Height = 13
      Caption = 'C'#243'digo ANP:'
    end
    object GrBMargem: TGroupBox
      Left = 337
      Top = 523
      Width = 119
      Height = 56
      Caption = ' Margem de Libera'#231#227'o: '
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 53
      Visible = False
      object Label9: TLabel
        Left = 7
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Gerente:'
      end
      object EdtPr_Gerente: TCurrencyEdit
        Left = 7
        Top = 18
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 922
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 57
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 922
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 750
      Top = 471
      Width = 85
      Height = 23
      Caption = 'C&onfirmar'
      TabOrder = 54
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 836
      Top = 471
      Width = 85
      Height = 23
      Caption = '&Cancelar'
      TabOrder = 55
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 2147483647.0
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
    end
    object EdtNr_Sequencia: TCurrencyEdit
      Left = 514
      Top = 81
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
    end
    object MmEstrutura: TMemo
      Left = 5
      Top = 102
      Width = 476
      Height = 46
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Grupo'
        'SubGrupo'
        'Classe'
      )
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 69
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_Classe: TCurrencyEdit
      Tag = 3
      Left = 133
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_ClasseExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDt_Cadastro: TEdit
      Left = 539
      Top = 45
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '20/20/2020 20:20'
    end
    object EdtDt_Alteracao: TEdit
      Left = 653
      Top = 45
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 107
      Top = 45
      Width = 427
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 1
      OnExit = EdtNm_ProdutoExit
    end
    object CkBDescricao: TCheckBox
      Left = 197
      Top = 28
      Width = 251
      Height = 17
      Caption = 'Manter a descri'#231#227'o por Grupo/SubGrupo/Classe'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 56
      Visible = False
      OnClick = CkBDescricaoClick
    end
    object EdtCd_Localizacao: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 166
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_LocalizacaoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Localizacao: TEdit
      Left = 68
      Top = 166
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtCd_ClasFiscal: TMaskEdit
      Left = 382
      Top = 166
      Width = 86
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '##.####.##;0; '
      MaxLength = 10
      TabOrder = 12
    end
    object EdtNr_Prazo: TCurrencyEdit
      Tag = 5
      Left = 496
      Top = 119
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      Visible = False
      OnExit = EdtNr_PrazoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 235
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 18
      Text = 'MT - Metro'
      Items.Strings = (
        'MT - Metro'
        'PC - Pe'#231'a'
        'UN - Unidade'
      )
    end
    object EdtPs_Produto: TCurrencyEdit
      Left = 416
      Top = 235
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
    end
    object CbAtivo: TComboBox
      Left = 481
      Top = 235
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 22
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtPr_IPI: TCurrencyEdit
      Left = 545
      Top = 235
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
    end
    object CbPreco: TComboBox
      Left = 352
      Top = 235
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 20
      Text = 'Real'
      Items.Strings = (
        'Real'
        'Dolar'
      )
    end
    object EdtCd_Fabricante: TLabeledEdit
      Left = 5
      Top = 350
      Width = 170
      Height = 19
      EditLabel.Width = 161
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Fabricante/Distribuidor:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 40
      OnExit = EdtCd_FabricanteExit
    end
    object EdtCd_Barra: TLabeledEdit
      Left = 179
      Top = 350
      Width = 170
      Height = 19
      EditLabel.Width = 167
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo de Barras (GTIN / EAN 13):'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 41
    end
    object CkBImgClasse: TCheckBox
      Left = 775
      Top = 255
      Width = 136
      Height = 17
      Caption = 'Manter a Foto da Classe'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 35
      OnClick = CkBDescricaoClick
    end
    object EdtNr_Reg_Federal: TLabeledEdit
      Left = 354
      Top = 350
      Width = 170
      Height = 19
      EditLabel.Width = 194
      EditLabel.Height = 13
      EditLabel.Caption = 'Registro Federal (Sa'#250'de, Agricultura etc):'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 42
    end
    object CbPsicotropico: TComboBox
      Left = 484
      Top = 431
      Width = 61
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 32
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbLote: TComboBox
      Left = 439
      Top = 273
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 31
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNm_Abreviado: TLabeledEdit
      Left = 201
      Top = 82
      Width = 308
      Height = 19
      EditLabel.Width = 157
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome Abreviado (PDV, ECF etc):'
      LabelSpacing = 2
      MaxLength = 40
      TabOrder = 7
    end
    object CbVenda: TComboBox
      Left = 179
      Top = 235
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      TabOrder = 19
      Text = 'UN - Unidade'
      Items.Strings = (
        'MT - Metro'
        'PC - Pe'#231'a'
        'UN - Unidade'
      )
    end
    object CbProduto: TComboBox
      Left = 5
      Top = 273
      Width = 109
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      TabOrder = 28
      Text = 'Conjunto (Cesta)'
      Items.Strings = (
        'Produto'
        'Servi'#231'o'
        'Conjunto (Cesta)'
      )
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 635
      Top = 235
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 25
    end
    object EdtPr_Lucro: TCurrencyEdit
      Left = 590
      Top = 235
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
    end
    object EdtCd_Laboratorio: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 312
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 36
      OnExit = EdtCd_LaboratorioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Laboratorio: TEdit
      Left = 77
      Top = 312
      Width = 306
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 37
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 202
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 16
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 67
      Top = 202
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object CbPerecivel: TComboBox
      Left = 375
      Top = 273
      Width = 61
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 30
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtrPr_Vendedor: TCurrencyEdit
      Left = 686
      Top = 235
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 26
    end
    object EdtCd_Arredondamento: TCurrencyEdit
      Tag = 8
      Left = 386
      Top = 312
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 38
      OnExit = EdtCd_ArredondamentoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Arredondamento: TEdit
      Left = 449
      Top = 312
      Width = 193
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 39
    end
    object EdtQt_Est_Minimo: TCurrencyEdit
      Left = 509
      Top = 273
      Width = 68
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 33
    end
    object EdtQt_Est_Maximo: TCurrencyEdit
      Left = 576
      Top = 273
      Width = 68
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 34
    end
    object EdtVl_Custo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 396
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 43
      OnEnter = EdtVl_CustoEnter
      OnExit = EdtVl_CustoExit
    end
    object EdtVl_Venda: TCurrencyEdit
      Tag = 3
      Left = 176
      Top = 396
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 45
      OnEnter = EdtVl_CustoEnter
    end
    object EdtVl_Reposicao: TCurrencyEdit
      Tag = 2
      Left = 91
      Top = 396
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 44
      OnEnter = EdtVl_CustoEnter
    end
    object EdtDt_AltPreco: TEdit
      Left = 260
      Top = 396
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 46
      Text = '20/20/20 20:20'
    end
    object EdtVl_MVA: TCurrencyEdit
      Tag = 2
      Left = 373
      Top = 396
      Width = 66
      Height = 19
      Hint = 'Margem de Valor Agregado'
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 47
      OnEnter = EdtVl_CustoEnter
    end
    object EdtVl_Promocao: TCurrencyEdit
      Left = 163
      Top = 553
      Width = 61
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 52
      Visible = False
    end
    object EdtNr_MoldEspessura: TCurrencyEdit
      Left = 460
      Top = 396
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 48
    end
    object EdtNr_MoldPerda: TCurrencyEdit
      Left = 515
      Top = 396
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 49
    end
    object EdtCd_Baixa: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 430
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 50
      OnExit = EdtCd_BaixaExit
    end
    object EdtNm_Baixa: TEdit
      Left = 89
      Top = 430
      Width = 345
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 51
    end
    object CbOrigem: TComboBox
      Left = 116
      Top = 273
      Width = 259
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 15
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 29
      Items.Strings = (
        'Nacional'
        'Importa'#231#227'o Direta'
        'Importado Adquirida no Brasil'
        'Nacional importa'#231#227'o superior a 40% e <= 70%'
        'Nacional produ'#231#227'o em conformidade nos Ajustes'
        'Nacional conte'#250'do importado <= 40%'
        'Estrangeira Sem similar'
        'Estrangeira adquirida no Brasil sem similar'
        'Nacional com conte'#250'do de importa'#231#227'o > 70%'
      )
    end
    object SctReport: TSctReport
      Left = 593
      Top = 371
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 70
      SLeft = -21
      SWidth = 836
      SHeight = 581
      MTop = 371
      MLeft = 593
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        BorderType = btNone
        Description = 'Classes de Estoque'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsReport
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmClasse_Find.DsFind
        end
        object adodsreportcd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_produtoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Find.DsFind
        end
        object adodsreportCd_ClasFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmTributacao_Find.DsFind
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Produto'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_produtoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 59
            Top = 0
            Width = 517
            Height = 17
            Variable = adodsreportnm_produtoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 598
            Top = 0
            Width = 98
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportCd_ClasFiscalVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 312
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 2
            Top = 2
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 347
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_produto
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 620
            Top = 3
            Width = 37
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 59
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 598
            Top = 0
            Width = 98
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'NCM'
          end
        end
        object DtlImagem: TSctSubBand
          Left = 0
          Top = 142
          Width = 748
          Height = 155
          ParentColor = True
          BandName = 'DetailBandSub'
          OnPrintWhen = DtlImagemPrintWhen
          Updatelevel = DetailBandlevel
          OnBeforePrint = DtlImagemBeforePrint
          Band = DetailBand
          Above = False
          object SctImgProduto: TSctImageLabel
            Left = 249
            Top = 1
            Width = 200
            Height = 150
            Center = True
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 147
            Width = 698
            Height = 7
          end
        end
      end
    end
    object EdtCd_CEST: TMaskEdit
      Left = 479
      Top = 166
      Width = 54
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '#######;0; '
      MaxLength = 7
      TabOrder = 13
    end
    object EdtCd_cProdANP: TCurrencyEdit
      Tag = 1
      Left = 536
      Top = 166
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#########'
      TabOrder = 14
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_DescANP: TLabeledEdit
      Left = 602
      Top = 166
      Width = 308
      Height = 19
      EditLabel.Width = 177
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do produto conforme ANP:'
      LabelSpacing = 2
      MaxLength = 95
      TabOrder = 15
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 14
            ShortCut = 8315
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
            ShortCut = 8315
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
            ShortCut = 8312
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActCopiar
                Caption = '&Copiar Produto'
                ImageIndex = 16
              end>
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Items = <
              item
                Action = ActReport
                Caption = '&Relat'#243'rio de Produtos'
                ImageIndex = 20
                ShortCut = 117
              end
              item
                Action = ActInventario
                Caption = '&Invent'#225'rio de Estoque'
                ImageIndex = 20
              end
              item
                Action = ActRepCustoEstoque
                Caption = '&Custo do Estoque'
                ImageIndex = 20
              end
              item
                Action = ActValorEstoque
                Caption = '&Valores do Estoque'
                ImageIndex = 20
              end
              item
                Caption = '-'
              end
              item
                Action = ActEstMinimo
                Caption = 'E&stoque M'#237'nimo'
                ImageIndex = 20
              end
              item
                Action = ActEstMaximo
                Caption = 'Est&oque M'#225'ximo'
                ImageIndex = 20
              end
              item
                Caption = '-'
              end
              item
                Action = ActEtiquetaProd
                ImageIndex = 45
              end
              item
                Action = ActEtiquetaSel
                Caption = 'E&tiquetas por Sele'#231#227'o...'
                ImageIndex = 45
              end>
            Action = ActReport
            ImageIndex = 20
            ShowCaption = False
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActUnidades
            ImageIndex = 37
            ShortCut = 118
          end
          item
            Action = ActPreco
            ImageIndex = 0
          end
          item
            Action = ActFornecido
            ImageIndex = 26
          end
          item
            Visible = False
            Action = ActComposto
            ImageIndex = 43
            ShortCut = 119
          end
          item
            Action = ActEmitente
            ImageIndex = 41
            ShortCut = 120
          end
          item
            Action = ActConjunto
            ImageIndex = 23
            ShortCut = 16505
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActImgScanner
                ImageIndex = 63
              end>
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 604
    Top = 8
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      ShortCut = 8312
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      ShortCut = 8313
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      ShortCut = 8314
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      ShortCut = 8315
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActCopiar: TAction
      Category = '2-Database'
      Caption = 'Copiar Produto'
      ImageIndex = 16
      OnExecute = ActCopiarExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Enabled = False
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
    object ActUnidades: TAction
      Category = '2-Database'
      Hint = 'Unidades do Produto'
      ImageIndex = 37
      ShortCut = 118
      OnExecute = ActUnidadesExecute
    end
    object ActComposto: TAction
      Category = '2-Database'
      Hint = 'Composi'#231#227'o do Produto'
      ImageIndex = 43
      ShortCut = 119
      Visible = False
      OnExecute = ActCompostoExecute
    end
    object ActEmitente: TAction
      Category = '2-Database'
      Hint = 'C'#243'digo do Produto no Fornecedor'
      ImageIndex = 41
      ShortCut = 120
      OnExecute = ActEmitenteExecute
    end
    object ActConjunto: TAction
      Category = '2-Database'
      Hint = 'Conjunto de Produtos'
      ImageIndex = 23
      ShortCut = 16505
      OnExecute = ActConjuntoExecute
    end
    object ActInventario: TAction
      Tag = 1
      Category = '2-Database'
      Caption = 'Inventario de Estoque'
      Enabled = False
      Hint = 'Inventario de Estoque'
      ImageIndex = 20
      OnExecute = ActInventarioExecute
    end
    object ActRepCustoEstoque: TAction
      Tag = 2
      Category = '2-Database'
      Caption = 'Custo do Estoque'
      Enabled = False
      Hint = 'Custo do Estoque'
      ImageIndex = 20
      OnExecute = ActInventarioExecute
    end
    object ActValorEstoque: TAction
      Tag = 3
      Category = '2-Database'
      Caption = 'Valores do Estoque'
      ImageIndex = 20
      OnExecute = ActInventarioExecute
    end
    object ActEstMinimo: TAction
      Tag = 4
      Category = '2-Database'
      Caption = 'Estoque M'#237'nimo'
      ImageIndex = 20
      OnExecute = ActInventarioExecute
    end
    object ActEstMaximo: TAction
      Tag = 5
      Category = '2-Database'
      Caption = 'Estoque M'#225'ximo'
      ImageIndex = 20
      OnExecute = ActInventarioExecute
    end
    object ActEtiquetaSel: TAction
      Category = '2-Database'
      Caption = 'Etiquetas por Sele'#231#227'o...'
      ImageIndex = 45
      OnExecute = ActEtiquetaSelExecute
    end
    object ActEtiquetaProd: TAction
      Category = '2-Database'
      Caption = 'Etiquetas do Produto (impressora matricial)...'
      Enabled = False
      Hint = 'Etiquetas do Produto'
      ImageIndex = 45
      OnExecute = ActEtiquetaProdExecute
    end
    object ActPreco: TAction
      Category = '2-Database'
      Hint = 'Atualizar Pre'#231'os do Produto'
      ImageIndex = 0
      OnExecute = ActPrecoExecute
    end
    object ActFornecido: TAction
      Category = '2-Database'
      Hint = #218'ltimos fornecimentos para o produto'
      ImageIndex = 26
      OnExecute = ActFornecidoExecute
    end
    object ActImgScanner: TAction
      Category = '3-Imagem'
      Caption = 'Carregar imagem do Scanner'
      ImageIndex = 63
      OnExecute = ActImgScannerExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,'#13#10'  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,'#13#10'  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, '#13#10'  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,'#13#10'  P.Sg_Estoque + '''' - '''' + UE.Ds_Unidade as Dp_Estoque,'#13#10'  P.Sg_Venda + '''' - '''' + UV.Ds_Unidade as Dp_Venda,'#13#10'  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,'#13#10'  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,'#13#10'  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,'#13#10'  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,'#13#10'  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, '#13#10'  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,'#13#10'  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,'#13#10'  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, '#13#10'  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,'#13#10'  P.Cd_CEST, P.Cd_cProdANP, P.Ds_DescANP'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Unidade UE'#13#10'on'#13#10'  UE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'left join'#13#10'  Produto PB'#13#10'on'#13#10'  PB.Cd_Produto = P.Cd_Baixa'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 26
    Top = 455
    object ADODsDadoscd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsDadosnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsDadosnr_sequencia: TIntegerField
      FieldName = 'nr_sequencia'
    end
    object ADODsDadoscd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsDadosnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsDadoscd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsDadosnm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
    end
    object ADODsDadoscd_classe: TSmallintField
      FieldName = 'cd_classe'
    end
    object ADODsDadosnm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
    end
    object ADODsDadosim_classe: TBlobField
      FieldName = 'im_classe'
    end
    object ADODsDadoscd_localizacao: TSmallintField
      FieldName = 'cd_localizacao'
    end
    object ADODsDadosds_localizacao: TStringField
      FieldName = 'ds_localizacao'
      Size = 50
    end
    object ADODsDadoscd_clasfiscal: TStringField
      FieldName = 'cd_clasfiscal'
      Size = 10
    end
    object ADODsDadosnr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsDadossg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosfl_estrutura: TStringField
      FieldName = 'fl_estrutura'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdp_estoque: TStringField
      FieldName = 'dp_estoque'
      Size = 254
    end
    object ADODsDadosfl_ativo: TStringField
      FieldName = 'fl_ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadospr_gerente: TBCDField
      FieldName = 'pr_gerente'
      Precision = 9
      Size = 2
    end
    object ADODsDadospr_vendedor: TBCDField
      FieldName = 'pr_vendedor'
      Precision = 9
      Size = 2
    end
    object ADODsDadosqt_est_minimo: TBCDField
      FieldName = 'qt_est_minimo'
      Precision = 18
      Size = 3
    end
    object ADODsDadosqt_est_maximo: TBCDField
      FieldName = 'qt_est_maximo'
      Precision = 18
      Size = 3
    end
    object ADODsDadosdt_cadastro: TDateTimeField
      FieldName = 'dt_cadastro'
    end
    object ADODsDadosdt_alteracao: TDateTimeField
      FieldName = 'dt_alteracao'
    end
    object ADODsDadospr_ipi: TBCDField
      FieldName = 'pr_ipi'
      Precision = 9
      Size = 2
    end
    object ADODsDadosps_produto: TBCDField
      FieldName = 'ps_produto'
      Precision = 18
      Size = 3
    end
    object ADODsDadosim_produto: TBlobField
      FieldName = 'im_produto'
    end
    object ADODsDadoscd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsDadoscd_barra: TStringField
      FieldName = 'cd_barra'
    end
    object ADODsDadostp_preco: TStringField
      FieldName = 'tp_preco'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_imgclasse: TStringField
      FieldName = 'fl_imgclasse'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_origem: TStringField
      FieldName = 'fl_origem'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnr_reg_federal: TStringField
      FieldName = 'nr_reg_federal'
      Size = 30
    end
    object ADODsDadosfl_psicotropico: TStringField
      FieldName = 'fl_psicotropico'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsDadossg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosdp_venda: TStringField
      FieldName = 'dp_venda'
      Size = 254
    end
    object ADODsDadosfl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadospr_lucro: TBCDField
      FieldName = 'pr_lucro'
      Precision = 7
      Size = 2
    end
    object ADODsDadospr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
    object ADODsDadoscd_tributacao: TSmallintField
      FieldName = 'cd_tributacao'
    end
    object ADODsDadosvl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_promocao: TBCDField
      FieldName = 'vl_promocao'
      Precision = 12
      Size = 3
    end
    object ADODsDadoscd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsDadosnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsDadosfl_perecivel: TStringField
      FieldName = 'fl_perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosvl_reposicao: TBCDField
      FieldName = 'vl_reposicao'
      Precision = 13
      Size = 3
    end
    object ADODsDadosCd_Arredondamento: TSmallintField
      FieldName = 'Cd_Arredondamento'
    end
    object ADODsDadosDs_Arredondamento: TStringField
      FieldName = 'Ds_Arredondamento'
      Size = 30
    end
    object ADODsDadosDt_AltPreco: TDateTimeField
      FieldName = 'Dt_AltPreco'
    end
    object ADODsDadosNr_MoldEspessura: TBCDField
      FieldName = 'Nr_MoldEspessura'
      Precision = 9
      Size = 2
    end
    object ADODsDadosNr_MoldPerda: TBCDField
      FieldName = 'Nr_MoldPerda'
      Precision = 9
      Size = 2
    end
    object ADODsDadosFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosVl_MVA: TBCDField
      FieldName = 'Vl_MVA'
      Precision = 12
      Size = 3
    end
    object ADODsDadosCd_Baixa: TIntegerField
      FieldName = 'Cd_Baixa'
    end
    object ADODsDadosNm_Baixa: TStringField
      FieldName = 'Nm_Baixa'
      Size = 120
    end
    object ADODsDadosDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsDadosCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
    object ADODsDadosCd_cProdANP: TIntegerField
      FieldName = 'Cd_cProdANP'
    end
    object ADODsDadosDs_DescANP: TStringField
      FieldName = 'Ds_DescANP'
      Size = 95
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into produto( cd_produto, nm_produto, fl_estrutura, nr_sequencia,'
      '   cd_grupo, cd_subgrupo, cd_classe, cd_localizacao, cd_clasfiscal, '
      '   nr_prazo, sg_estoque, sg_venda, fl_ativo, pr_gerente, pr_vendedor, ps_produto,'
      '   qt_est_minimo, qt_est_maximo, dt_cadastro, dt_alteracao, pr_ipi, im_produto,'
      '   fl_imgclasse, Tp_Preco, Cd_Fabricante, Cd_Barra, Fl_Origem, Nr_Reg_Federal,'
      '   Fl_Psicotropico, Fl_Lote, Nm_Abreviado, Fl_Produto, Pr_Lucro, Pr_Comissao,'
      '   Cd_Laboratorio, Cd_Tributacao, Fl_Perecivel, Cd_Arredondamento,'
      '   Nr_MoldEspessura, Nr_MoldPerda, Vl_MVA, Cd_Baixa, Cd_CEST, Cd_cProdANP, Ds_DescANP )'
      'values( :cd_produto, :nm_produto, :fl_estrutura, :nr_sequencia, :cd_grupo,'
      '   :cd_subgrupo, :cd_classe, :cd_localizacao, :cd_clasfiscal,'
      '   :nr_prazo, :sg_estoque, :sg_venda, :fl_ativo, :pr_gerente, :pr_vendedor,'
      '   :ps_produto, :qt_est_minimo, :qt_est_maximo, :dt_cadastro, :dt_alteracao,'
      '   :pr_ipi, :im_produto, :fl_imgclasse, :Tp_Preco, :Cd_Fabricante, :Cd_Barra,'
      '   :Fl_Origem, :Nr_Reg_Federal, :Fl_Psicotropico, :Fl_Lote, :Nm_Abreviado,'
      '   :Fl_Produto, :Pr_Lucro, :Pr_Comissao, :Cd_Laboratorio, :Cd_Tributacao,'
      '   :Fl_Perecivel, :Cd_Arredondamento, :Nr_MoldEspessura, :Nr_MoldPerda,'
      '   :Vl_MVA, :Cd_Baixa, :Cd_CEST, :Cd_cProdANP, :Ds_DescANP )'
    )
    SQLUpdate.Strings = (
      'update'
      '  produto   '
      ''
      'set'
      '  nm_produto          = :nm_produto,'
      '  fl_estrutura        = :fl_estrutura,'
      '  nr_sequencia        = :nr_sequencia,'
      '  cd_grupo            = :cd_grupo,'
      '  cd_subgrupo         = :cd_subgrupo,'
      '  cd_classe           = :cd_classe,'
      '  cd_localizacao      = :cd_localizacao,'
      '  cd_clasfiscal       = :cd_clasfiscal,'
      '  nr_prazo            = :nr_prazo,'
      '  sg_estoque          = :sg_estoque,'
      '  Sg_Venda            = :Sg_Venda,'
      '  fl_ativo            = :fl_ativo,'
      '  Fl_Origem           = :Fl_Origem,'
      '  pr_gerente          = :pr_gerente,'
      '  pr_vendedor         = :pr_vendedor,'
      '  ps_produto          = :ps_produto,'
      '  qt_est_minimo       = :qt_est_minimo,'
      '  qt_est_maximo       = :qt_est_maximo,'
      '  dt_alteracao        = :dt_alteracao,'
      '  pr_ipi              = :pr_ipi,'
      '  im_produto          = :im_produto,'
      '  fl_imgclasse        = :fl_imgclasse,'
      '  Tp_Preco            = :Tp_Preco,'
      '  Cd_Fabricante       = :Cd_Fabricante,'
      '  Cd_Barra            = :Cd_Barra,'
      '  Nr_Reg_Federal      = :Nr_Reg_Federal,'
      '  Fl_Psicotropico     = :Fl_Psicotropico,'
      '  Fl_Produto          = :Fl_Produto,'
      '  Fl_Lote             = :Fl_Lote,'
      '  Nm_Abreviado        = :Nm_Abreviado,'
      '  Pr_Lucro            = :Pr_Lucro,'
      '  Pr_Comissao         = :Pr_Comissao,'
      '  Cd_Laboratorio      = :Cd_Laboratorio,'
      '  Cd_Tributacao       = :Cd_Tributacao,'
      '  Fl_Perecivel        = :Fl_Perecivel,'
      '  Cd_Arredondamento   = :Cd_Arredondamento,'
      '  Nr_MoldEspessura    = :Nr_MoldEspessura,'
      '  Nr_MoldPerda        = :Nr_MoldPerda,'
      '  Vl_MVA              = :Vl_MVA,'
      '  Cd_Baixa            = :Cd_Baixa,'
      '  Cd_CEST             = :Cd_CEST,'
      '  Cd_cProdANP         = :Cd_cProdANP,'
      '  Ds_DescANP          = :Ds_DescANP  '
      '  '
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLDelete.Strings = (
      'declare @vCd_Produto Integer'
      'set @vCd_Produto = :Cd_Produto'
      ''
      'begin transaction'
      '  delete from Produto_Conjunto   where Cd_Produto_CJ = @vCd_Produto'
      '  delete from Produto_Unidade    where Cd_Produto    = @vCd_Produto'
      '  delete from Produto_Preco      where Cd_Produto    = @vCd_Produto'
      '  delete from Produto_Composicao where Cd_Produto    = @vCd_Produto'
      '  delete from Estoque            where Cd_Produto    = @vCd_Produto'
      ''
      '  delete from Produto            where Cd_Produto    = @vCd_Produto'
      '  '
      'if @@Error = 0'
      '  commit transaction'
      ''
      'else begin'
      '  rollback transaction'
      '  raiserror( ''''Erro na exclus'#227'o do Emitente'''', 16, 1 )'
      ''
      'end'
      ''
    )
    SQLOther0.Strings = (
      '-- Inclui a Unidade padr'#227'o'
      'insert into Produto_Unidade( Cd_Produto, Sg_Unidade, Nr_Fator, Nr_Indice )'
      'values( :Cd_Produto, :Sg_Unidade, 1.0, 1.0 )'
    )
    SQLOther1.Strings = (
      '-- Insere produto na tabela de pre'#231'o'
      'insert into Produto_Preco( Cd_Tabela, Cd_Produto, Vl_Venda, Vl_Custo,'
      '   Vl_Promocao, Vl_Reposicao, Dt_Alteracao )'
      'values( :Cd_Tabela, :Cd_Produto, :Vl_Venda, :Vl_Custo, :Vl_Promocao,'
      '   :Vl_Reposicao, :Dt_Alteracao )'
    )
    SQLOther2.Strings = (
      'update'
      '  Produto_Preco'
      ''
      'set'
      '  Vl_Venda     = :Vl_Venda,'
      '  Vl_Custo     = :Vl_Custo,'
      '  Vl_Promocao  = :Vl_Promocao,'
      '  Vl_Reposicao = :Vl_Reposicao,'
      '  Dt_Alteracao = :Dt_Alteracao'
      ''
      'where'
      '  Cd_Tabela  = :Cd_Tabela and'
      '  Cd_Produto = :Cd_Produto'
    )
    Left = 61
    Top = 455
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_Produto'#13#10#13#10'from'#13#10'  Produto'#13#10#13#10'order by'#13#10'  Cd_Produto'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Cd_Produto + 1 as Cd_Produto'
      ''
      'from'
      '  Produto A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Produto'
      ''
      '  from'
      '    Produto  B'
      ''
      '  where'
      '    B.Cd_Produto = A.Cd_Produto + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Produto'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'order by'
      '  Cd_Produto'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Produto < :Cd_Produto'
      ''
      'order by'
      '  Cd_Produto desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Produto > :Cd_Produto'
      ''
      'order by'
      '  Cd_Produto'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'order by'
      '  Cd_Produto desc'
    )
    SQLOther4.Strings = (
      '-- Sequencia'
      'select'
      '  max( Nr_Sequencia ) as Cd_Produto'
      ''
      'from'
      '  Produto'
    )
    SQLOther5.Strings = (
      '-- Verifica unicidade no codigo do fabricante'
      'select'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Fabricante = :Cd_Fabricante'
    )
    SQLOther9.Strings = (
      '-- Verifica se o produto existe na tabela de pre'#231'o'
      'select'
      '  Cd_Produto'
      ''
      'from'
      '  Produto_Preco'
      ''
      'where'
      '  Cd_Tabela  = :Cd_Tabela and'
      '  Cd_Produto = :Cd_Produto'
    )
    Left = 90
    Top = 455
    object ADODsNavegarcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 121
    Top = 455
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Produto, Nm_Produto, Im_Produto, Cd_ClasFiscal'#13#10#13#10'from'#13#10'  Produto'#13#10#13#10'order by'#13#10'  Nm_Produto'
    Parameters = <>
    Left = 151
    Top = 455
    object ADODsReportcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsReportnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsReportim_produto: TBlobField
      FieldName = 'im_produto'
    end
    object ADODsReportCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
  end
end
