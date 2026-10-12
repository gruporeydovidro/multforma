object FrmOrcamento_New: TFrmOrcamento_New
  Left = 288
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amento'
  ClientHeight = 624
  ClientWidth = 1009
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Height = 624
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 988
    Height = 624
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object LblDsOrcamento: TLabel
      Left = 5
      Top = 29
      Width = 118
      Height = 13
      Caption = 'Atendimento/Data/Hora:'
    end
    object Label3: TLabel
      Left = 576
      Top = 66
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 616
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object LblTabPreco: TLabel
      Left = 497
      Top = 29
      Width = 87
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
    end
    object SbTabPreco: TSpeedButton
      Left = 607
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Seleciona Tabela de Pre'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTabPrecoClick
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label2: TLabel
      Left = 5
      Top = 66
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitenteGo: TSpeedButton
      Left = 523
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Cadastro do Cliente'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteGoClick
    end
    object SbEmitenteNew: TSpeedButton
      Left = 547
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Inclus'#227'o R'#225'pida de Cliente'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteNewClick
    end
    object Label9: TLabel
      Left = 633
      Top = 29
      Width = 107
      Height = 13
      Caption = 'Desconto ( % / Valor ):'
      FocusControl = EdtPr_DescPed
    end
    object SbDescAcresc: TSpeedButton
      Left = 760
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Distribuir Desconto / Acr'#233'scimo'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDescAcrescClick
    end
    object SbProdPrecoTab: TSpeedButton
      Left = 785
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Retornar o Pre'#231'o definido em Tabela'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdPrecoTabClick
    end
    object Label6: TLabel
      Left = 274
      Top = 105
      Width = 48
      Height = 13
      Caption = 'N'#186' Fatura:'
    end
    object Label7: TLabel
      Left = 329
      Top = 105
      Width = 66
      Height = 13
      Caption = 'Cupom Fiscal:'
    end
    object Label4: TLabel
      Left = 118
      Top = 105
      Width = 59
      Height = 13
      Caption = 'Data Fatura:'
    end
    object Label32: TLabel
      Left = 231
      Top = 105
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label22: TLabel
      Left = 5
      Top = 105
      Width = 62
      Height = 13
      Caption = 'Confirma'#231#227'o:'
      FocusControl = DbEdtDt_Confirmado
    end
    object Label27: TLabel
      Left = 397
      Top = 105
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
      FocusControl = DbEdtDp_Usuario
    end
    object Label13: TLabel
      Left = 495
      Top = 104
      Width = 71
      Height = 13
      Caption = 'Base de ICMS:'
    end
    object Label20: TLabel
      Left = 580
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Aliquota:'
    end
    object Label28: TLabel
      Left = 625
      Top = 104
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label15: TLabel
      Left = 709
      Top = 104
      Width = 46
      Height = 13
      Caption = 'Liquido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 794
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object LblCusto: TLabel
      Left = 5
      Top = 140
      Width = 114
      Height = 13
      AutoSize = False
      Caption = 'Acr'#233'scimo (%/R$):'
    end
    object Label29: TLabel
      Left = 124
      Top = 140
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label19: TLabel
      Left = 514
      Top = 140
      Width = 67
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 597
      Top = 140
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label24: TLabel
      Left = 280
      Top = 141
      Width = 72
      Height = 13
      Caption = 'ICM Substituto:'
    end
    object Label14: TLabel
      Left = 436
      Top = 141
      Width = 20
      Height = 13
      Caption = 'ISS:'
    end
    object Label30: TLabel
      Left = 358
      Top = 141
      Width = 44
      Height = 13
      Caption = 'Servi'#231'os:'
    end
    object Label31: TLabel
      Left = 670
      Top = 140
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
    end
    object Label36: TLabel
      Left = 202
      Top = 141
      Width = 44
      Height = 13
      Caption = 'Base ST:'
    end
    object BvlSeparator_1: TBevel
      Left = 1
      Top = 103
      Width = 984
      Height = 5
      Shape = bsTopLine
    end
    object LblProjetos: TLabel
      Left = 876
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Projetos:'
    end
    object Bevel1: TBevel
      Left = 78
      Top = 103
      Width = 984
      Height = 5
      Shape = bsTopLine
    end
    object LblMargem: TLabel
      Left = 744
      Top = 140
      Width = 49
      Height = 13
      Caption = 'Margem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 986
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 37
      object PnlToolNavigator: TPanel
        Left = 0
        Top = 0
        Width = 107
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBNavigator: TActionToolBar
          Left = 0
          Top = 0
          Width = 107
          Height = 26
          ActionManager = ActManCadastro
          Caption = 'ActToolBNavigator'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
      object PnlDatabase: TPanel
        Left = 107
        Top = 0
        Width = 879
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 879
          Height = 26
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
    object PgCtOrcamento: TPageControl
      Left = 0
      Top = 178
      Width = 986
      Height = 445
      ActivePage = TabSProduto
      Images = FrmMain.ImgLstMenu
      TabOrder = 34
      object TabSProduto: TTabSheet
        Caption = '    Produtos     '
        ImageIndex = 8
        object Label38: TLabel
          Left = 436
          Top = 0
          Width = 92
          Height = 13
          Caption = 'Unidade de Venda:'
        end
        object Label39: TLabel
          Left = 603
          Top = 0
          Width = 58
          Height = 13
          Caption = 'Quantidade:'
        end
        object Label40: TLabel
          Left = 758
          Top = 0
          Width = 49
          Height = 13
          Caption = 'Desconto:'
        end
        object Label41: TLabel
          Left = 679
          Top = 0
          Width = 39
          Height = 13
          Caption = 'Unit'#225'rio:'
        end
        object Label42: TLabel
          Left = 810
          Top = 0
          Width = 27
          Height = 13
          Caption = 'Total:'
        end
        object SbProduto: TSpeedButton
          Left = 408
          Top = 15
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
        object DbTxtProduto: TDBText
          Left = 4
          Top = 34
          Width = 431
          Height = 25
          DataField = 'Dp_Produto'
          DataSource = DsProdSelect
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object DbTxtSaldo: TDBText
          Left = 437
          Top = 45
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'qt_estoque'
          DataSource = DsProdSelect
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 3
          Top = 382
          Width = 54
          Height = 13
          Caption = 'Tributa'#231#227'o:'
          FocusControl = DbEdtCd_Tributacao
        end
        object Label44: TLabel
          Left = 324
          Top = 382
          Width = 42
          Height = 13
          Caption = 'Estoque:'
          FocusControl = DbEdtQt_Estoque
        end
        object Label45: TLabel
          Left = 507
          Top = 382
          Width = 76
          Height = 13
          Caption = 'N'#186' de Item NFe:'
        end
        object Label46: TLabel
          Left = 401
          Top = 382
          Width = 104
          Height = 13
          Caption = 'N'#186' do Pedido da NFe:'
        end
        object EdtNm_Produto: TLabeledEdit
          Tag = 1
          Left = 4
          Top = 15
          Width = 404
          Height = 19
          EditLabel.Width = 253
          EditLabel.Height = 13
          EditLabel.Caption = '&Descri'#231#227'o do Produto / C'#243'digo de Barras/Fabricante:'
          LabelSpacing = 2
          MaxLength = 120
          TabOrder = 0
          OnEnter = EdtNm_ProdutoEnter
          OnExit = EdtNm_ProdutoExit
          OnKeyDown = EdtCd_FuncionarioKeyDown
        end
        object CbUnidade: TComboBox
          Left = 436
          Top = 14
          Width = 165
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          ItemHeight = 0
          ParentCtl3D = False
          TabOrder = 1
          OnChange = CbUnidadeChange
        end
        object EdtQt_Item: TCurrencyEdit
          Left = 603
          Top = 14
          Width = 70
          Height = 19
          Hint = 'Pressione a barra de espa'#231'os para abrir'#13#10'a tela de detalhamento do item'
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = EdtQt_ItemChange
          OnExit = EdtQt_ItemExit
          OnKeyPress = EdtQt_ItemKeyPress
        end
        object EdtPr_Desconto: TCurrencyEdit
          Left = 758
          Top = 14
          Width = 49
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DisplayFormat = '#,##0.00'
          TabOrder = 4
        end
        object EdtVl_Unitario: TCurrencyEdit
          Left = 679
          Top = 14
          Width = 75
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          TabOrder = 3
        end
        object EdtVl_Total: TCurrencyEdit
          Left = 810
          Top = 14
          Width = 75
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
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
          TabOrder = 5
          OnEnter = EdtVl_TotalEnter
        end
        object PnlAction_4: TPanel
          Left = 661
          Top = 34
          Width = 314
          Height = 26
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 7
          object ActToolBProdutos: TActionToolBar
            Left = 0
            Top = 0
            Width = 314
            Height = 26
            ActionManager = ActManCadastro
            Align = alClient
            Caption = 'ActToolBProdutos'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
        object DbGDetalhe: TDBGrid
          Left = 584
          Top = 303
          Width = 391
          Height = 111
          DataSource = DsDetalhe
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Detalhe'
              Width = 312
              Visible = True
            end>
        end
        object DbGProduto: TDBGrid
          Left = 4
          Top = 61
          Width = 971
          Height = 239
          DataSource = DsProduto
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGProdutoDblClick
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          OnKeyDown = DbGProdutoKeyDown
          OnKeyPress = DbGProdutoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Dp_Produto'
              Width = 490
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Ambiente'
              Width = 140
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'sg_unidade'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qt_item'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_unitario'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_margem'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end>
        end
        object DbEdtCd_Tributacao: TDBEdit
          Left = 3
          Top = 396
          Width = 33
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Cd_Tributacao'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DbEdtDs_Tributacao: TDBEdit
          Left = 37
          Top = 396
          Width = 285
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Tributacao'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DbEdtQt_Estoque: TDBEdit
          Left = 324
          Top = 396
          Width = 70
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'qt_estoque'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DbEdtnItemPed: TDBEdit
          Left = 507
          Top = 396
          Width = 42
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Ctl3D = False
          DataField = 'nItemPed'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DbEdtxPed: TDBEdit
          Left = 397
          Top = 396
          Width = 104
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'xPed'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
      object TabSInformacoes: TTabSheet
        Caption = '     Informa'#231#245'es Gerais     '
        ImageIndex = 59
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label17: TLabel
          Left = 380
          Top = 2
          Width = 104
          Height = 13
          Caption = 'Endere'#231'o de Entrega:'
        end
        object SbEndereco: TSpeedButton
          Left = 420
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Seleciona Endere'#231'o'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbEnderecoClick
        end
        object SbEmitenteContato: TSpeedButton
          Left = 353
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Seleciona Contatos do Emitente'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbEmitenteContatoClick
        end
        object Label5: TLabel
          Left = 4
          Top = 39
          Width = 31
          Height = 13
          Caption = 'CFOP:'
        end
        object SbCFOP: TSpeedButton
          Left = 36
          Top = 53
          Width = 23
          Height = 19
          Hint = 'Seleciona CFOP'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCFOPClick
        end
        object Label8: TLabel
          Left = 355
          Top = 38
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 405
          Top = 53
          Width = 23
          Height = 19
          Hint = 'Seleciona Transportador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbTransportadorClick
        end
        object Label10: TLabel
          Left = 289
          Top = 73
          Width = 41
          Height = 13
          Caption = 'Esp'#233'cie:'
        end
        object Label11: TLabel
          Left = 4
          Top = 73
          Width = 75
          Height = 13
          Caption = 'Frete por conta:'
        end
        object Label12: TLabel
          Left = 688
          Top = 74
          Width = 85
          Height = 13
          Caption = 'Prazo de Entrega:'
        end
        object Label21: TLabel
          Left = 798
          Top = 74
          Width = 44
          Height = 13
          Caption = 'Validade:'
        end
        object Label23: TLabel
          Left = 96
          Top = 73
          Width = 30
          Height = 13
          Caption = 'Placa:'
        end
        object Label25: TLabel
          Left = 532
          Top = 74
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label33: TLabel
          Left = 608
          Top = 74
          Width = 66
          Height = 13
          Caption = 'Peso L'#237'quido:'
        end
        object Label34: TLabel
          Left = 4
          Top = 111
          Width = 136
          Height = 13
          Caption = 'O&bserva'#231#245'es do Or'#231'amento:'
          FocusControl = MmObservacao
        end
        object Label35: TLabel
          Left = 488
          Top = 111
          Width = 107
          Height = 13
          Caption = 'Observa'#231#245'es da &Nota:'
          FocusControl = MmNota
        end
        object LblProducao: TLabel
          Left = 844
          Top = 74
          Width = 74
          Height = 13
          Caption = 'Produtos ser'#227'o:'
        end
        object EdtNr_Pedido_Emitente: TLabeledEdit
          Left = 4
          Top = 17
          Width = 145
          Height = 19
          CharCase = ecUpperCase
          EditLabel.Width = 141
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Pedido do Cliente:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 0
          OnExit = EdtNr_Pedido_EmitenteExit
        end
        object EdtNm_Contato: TLabeledEdit
          Tag = 2
          Left = 152
          Top = 17
          Width = 200
          Height = 19
          EditLabel.Width = 144
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Contato (Solicitante):'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 1
          OnKeyDown = EdtCd_FuncionarioKeyDown
        end
        object EdtNr_Endereco: TCurrencyEdit
          Tag = 4
          Left = 380
          Top = 17
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 2
          OnExit = EdtNr_EnderecoExit
          OnKeyDown = EdtCd_FuncionarioKeyDown
        end
        object EdtDs_Endereco: TEdit
          Left = 444
          Top = 17
          Width = 308
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
        object EdtCd_CFOP: TEdit
          Tag = 2
          Left = 4
          Top = 53
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 4
          OnExit = EdtCd_CFOPExit
          OnKeyDown = EdtCd_FuncionarioKeyDown
        end
        object EdtDs_CFOP: TEdit
          Left = 60
          Top = 53
          Width = 290
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
          TabOrder = 5
        end
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 5
          Left = 355
          Top = 53
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 6
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtCd_FuncionarioKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 430
          Top = 53
          Width = 308
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
          TabOrder = 7
        end
        object EdtDs_Quantidade: TLabeledEdit
          Left = 168
          Top = 88
          Width = 115
          Height = 19
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 10
        end
        object EdtDs_Marca: TLabeledEdit
          Left = 414
          Top = 88
          Width = 115
          Height = 19
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Marca:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 12
        end
        object CbEspecie: TComboBox
          Left = 289
          Top = 88
          Width = 121
          Height = 21
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 11
          Items.Strings = (
            'Volume'
            'Caixa'
            'Pe'#231'a'
            'Amarrados'
            'Pacote'
            'Rolo'
          )
        end
        object CbFrete: TComboBox
          Left = 4
          Top = 88
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 8
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
          )
        end
        object EdtDt_Entrega: TEdit
          Left = 728
          Top = 88
          Width = 65
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object EdtNr_Entrega: TCurrencyEdit
          Tag = 1
          Left = 688
          Top = 88
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 15
          OnChange = EdtNr_EntregaChange
        end
        object EdtNr_Validade: TCurrencyEdit
          Tag = 1
          Left = 798
          Top = 88
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 17
        end
        object EdtNr_Placa: TMaskEdit
          Left = 96
          Top = 88
          Width = 69
          Height = 19
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 7
          TabOrder = 9
        end
        object EdtPs_Bruto: TCurrencyEdit
          Left = 532
          Top = 88
          Width = 70
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object EdtPs_Liquido: TCurrencyEdit
          Left = 608
          Top = 88
          Width = 75
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          TabOrder = 14
        end
        object MmObservacao: TMemo
          Left = 4
          Top = 126
          Width = 478
          Height = 288
          ScrollBars = ssVertical
          TabOrder = 19
        end
        object MmNota: TMemo
          Left = 488
          Top = 126
          Width = 478
          Height = 288
          ScrollBars = ssVertical
          TabOrder = 20
        end
        object CbProducao: TComboBox
          Left = 844
          Top = 88
          Width = 133
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 20
          TabOrder = 18
          Text = 'Enviados a produ'#231#227'o'
          Items.Strings = (
            'Enviados a produ'#231#227'o'
            'Retirados no balc'#227'o'
            'Instala'#231#227'o'
          )
        end
      end
      object TabSDiversos: TTabSheet
        Caption = '     Condi'#231#245'es de Pagamento / Comiss'#227'o / Jun'#231#227'o     '
        ImageIndex = 23
        object Label43: TLabel
          Left = 0
          Top = -1
          Width = 44
          Height = 13
          Caption = 'Parcelas:'
        end
        object Label37: TLabel
          Left = 4
          Top = 267
          Width = 132
          Height = 13
          Caption = 'Vendedores comissionados:'
        end
        object LblJuncao: TLabel
          Left = 316
          Top = 266
          Width = 113
          Height = 13
          Caption = 'Or'#231'amentos da Jun'#231#227'o:'
        end
        object DbGParcelas: TDBGrid
          Left = 1
          Top = 13
          Width = 815
          Height = 243
          DataSource = DsPacelas
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Dp_Vencimento'
              Title.Alignment = taCenter
              Width = 155
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_parcela'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Parcela'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_portador'
              Width = 292
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_banco'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_agencia'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_conta'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_cheque'
              Width = 49
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 260
          Top = 256
          Width = 53
          Height = 25
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object ActToolBComissao: TActionToolBar
            Left = 0
            Top = 0
            Width = 53
            Height = 25
            ActionManager = ActManCadastro
            Align = alClient
            Caption = 'ActToolBComissao'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
        object DbGComissao: TDBGrid
          Left = 4
          Top = 282
          Width = 309
          Height = 133
          DataSource = DsComissao
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Cd_Funcionario'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Funcionario'
              Width = 248
              Visible = True
            end>
        end
        object DbGJuncao: TDBGrid
          Left = 316
          Top = 281
          Width = 660
          Height = 133
          DataSource = DsJuncao
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Orcamento'
              Title.Alignment = taRightJustify
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Emitente'
              Width = 289
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Funcionario'
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Orcamento'
              Title.Alignment = taRightJustify
              Width = 75
              Visible = True
            end>
        end
      end
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Left = 5
      Top = 44
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDt_Emissao: TDateEdit
      Left = 55
      Top = 44
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtSt_Orcamento: TLabeledEdit
      Left = 186
      Top = 44
      Width = 155
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelSpacing = 2
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 576
      Top = 81
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 640
      Top = 81
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
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 497
      Top = 44
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 5
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 81
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 81
      Width = 445
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
      TabOrder = 9
    end
    object EdtDs_Pagamento: TLabeledEdit
      Left = 344
      Top = 44
      Width = 150
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 120
      EditLabel.Height = 13
      EditLabel.Caption = 'Condi'#231#227'o de Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelSpacing = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtHr_Orcamento: TEdit
      Left = 145
      Top = 44
      Width = 38
      Height = 19
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '20:20'
    end
    object EdtPr_DescPed: TCurrencyEdit
      Tag = 1
      Left = 633
      Top = 44
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 6
    end
    object EdtVl_DescPed: TCurrencyEdit
      Tag = 2
      Left = 678
      Top = 44
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 7
    end
    object DbEdtNr_Fatura: TDBEdit
      Left = 274
      Top = 119
      Width = 50
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'nr_fatura'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object DbEdtNr_ECF: TDBEdit
      Left = 329
      Top = 119
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'nr_ecf'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object DbEdtDt_Fatura: TDBEdit
      Left = 118
      Top = 119
      Width = 110
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'dt_fatura'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object DbEdtCd_Serie: TDBEdit
      Left = 231
      Top = 119
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'cd_serie'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DbEdtDt_Confirmado: TDBEdit
      Left = 5
      Top = 119
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Confirmado'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DbEdtDp_Usuario: TDBEdit
      Left = 397
      Top = 119
      Width = 95
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dp_Usuario'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object EdtVl_BaseICMS: TDBEdit
      Left = 495
      Top = 119
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_baseicms'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object EdtPr_ICMS: TDBEdit
      Left = 580
      Top = 119
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'pr_icms'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object EdtVl_ICMS: TDBEdit
      Left = 625
      Top = 119
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_icms'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object EdtVl_Pedido: TDBEdit
      Left = 709
      Top = 119
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'vl_pedido'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object EdtVl_Pedido_Frete: TDBEdit
      Left = 794
      Top = 119
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_pedido_frete'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
    end
    object EdtPr_Custo: TDBEdit
      Tag = 3
      Left = 5
      Top = 154
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'pr_custo'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object EdtVl_Custo: TDBEdit
      Tag = 4
      Left = 46
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_custo'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object EdtVl_IPI: TDBEdit
      Left = 124
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_ipi'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object EdtVl_Pedido_Total: TDBEdit
      Left = 514
      Top = 154
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Vl_Total'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
    end
    object EdtPs_Pedido: TDBEdit
      Left = 597
      Top = 154
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'ps_pedido'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
    end
    object EdtVl_STB: TDBEdit
      Left = 280
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_stb'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
    end
    object DbEdtVl_ISS: TDBEdit
      Left = 436
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_ISS'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 29
    end
    object DbEdtVl_Servico: TDBEdit
      Left = 358
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_Servico'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
    end
    object DbEdtPs_Liquido: TDBEdit
      Left = 670
      Top = 154
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Ps_Liquido'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
    end
    object DbEdtVl_BaseST: TDBEdit
      Left = 202
      Top = 154
      Width = 75
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_BaseST'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
    object BitBtnConfirm: TBitBtn
      Left = 812
      Top = 148
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 35
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 898
      Top = 148
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 36
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object DbEdtVl_Projeto: TDBEdit
      Left = 876
      Top = 119
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_Projetos'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 38
    end
    object DbEdtPr_Margem: TDBEdit
      Tag = 3
      Left = 744
      Top = 154
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'mg_pedido'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
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
            Items = <
              item
                Action = ActRepEstoque
              end>
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
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
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
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
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
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActOptions
            ImageIndex = 1
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActOptions
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Caption = '-'
          end
          item
            Action = ActFirst
            ImageIndex = 12
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActReceber
              end
              item
                Action = ActFaturaInfo
              end>
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActCopia
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
            Items = <
              item
                Action = ActRepEstoque
                Caption = '&Ordem de Estoque...'
                ImageIndex = 20
              end
              item
                Action = ActOrdemServico
                Caption = 'O&rdem de Servi'#231'os...'
                ImageIndex = 20
              end
              item
                Action = ActEtiqueta
                Caption = '&Etiquetas...'
                ImageIndex = 20
              end
              item
                Tag = 2
                Action = SctRepCopia
                Caption = '&C'#243'pia do Or'#231'amento...'
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActFechamento
            ImageIndex = 5
            ShortCut = 16502
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActDividir
            ImageIndex = 47
          end
          item
            Items = <
              item
                Action = ActJuncaoOrc
                Caption = '&Jun'#231#227'o por Or'#231'amento...'
                ImageIndex = 48
              end>
            Action = ActJuncao
            ImageIndex = 48
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActPagamento
            ImageIndex = 39
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActContatoNew
                Caption = '&Incluir Novo Contato para o or'#231'amento'
                ImageIndex = 25
              end>
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Caption = '-'
          end
          item
            Action = ActShow
            ImageIndex = 36
          end
          item
            Items = <
              item
                Action = ActReceber
                Caption = '&Contas '#224' Receber...'
                ImageIndex = 39
              end
              item
                Action = ActFaturaInfo
                Caption = '&Informar Dados da Fatura...'
                ImageIndex = 59
              end
              item
                Visible = False
                Action = ActReCupom
                Caption = '&Re-Emitir Cupom Fiscal...'
                ImageIndex = 45
              end
              item
                Action = ActReNota
                Caption = 'R&e-Emitir Nota...'
                ImageIndex = 20
              end
              item
                Action = ActConsignacao
                Caption = '&Nota de Consigna'#231#227'o...'
                ImageIndex = 50
              end
              item
                Action = ActNotaSR
                Caption = 'N&ota de Simples Remessa...'
                ImageIndex = 43
              end
              item
                Action = ActSaidaCopiar
                Caption = 'Co&piar para Saida do Estoque...'
                ImageIndex = 34
              end
              item
                Action = ActProducao
                Caption = '&Aloca'#231#227'o em Processo de Produ'#231#227'o...'
                ImageIndex = 43
              end
              item
                Action = ActCarga
                Caption = 'A&loca'#231#227'o em Cargas...'
                ImageIndex = 52
              end
              item
                Action = ActNFe
                Caption = '&Gerar NFe...'
                ImageIndex = 10
              end
              item
                Action = ActNFCe
                Caption = 'Ge&rar NFC-e...'
                ImageIndex = 8
              end
              item
                Action = ActImportRTO
                ImageIndex = 34
              end>
            Caption = '&Ferramentas'
            ImageIndex = 1
            ShowCaption = False
          end>
        ActionBar = ActToolBDatabase
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = ActProdOldNegocio
            ImageIndex = 38
            ShortCut = 16498
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdFalta
            ImageIndex = 25
            ShortCut = 16507
          end
          item
            Action = ActProdSaldo
            ImageIndex = 26
            ShortCut = 16501
          end
          item
            Action = ActProdAvulso
            ImageIndex = 23
            ShortCut = 16503
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
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
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end>
      end
      item
        Items = <
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
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
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActRepOrcamento
                ShortCut = 117
              end
              item
                Action = ActRepEstoque
              end>
            Caption = ' '
            ImageIndex = 20
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActFaturaInfo
              end
              item
                Action = ActReceber
              end>
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActProjeto
            ImageIndex = 51
            ShortCut = 16497
          end
          item
            Action = ActProdOldNegocio
            ImageIndex = 38
            ShortCut = 16498
          end
          item
            Action = ActPerimetro
            ImageIndex = 62
            ShortCut = 24690
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdSaldo
            ImageIndex = 26
            ShortCut = 16501
          end
          item
            Action = ActProdConfirm
            ImageIndex = 22
            ShortCut = 16502
          end
          item
            Action = ActProdAvulso
            ImageIndex = 23
            ShortCut = 16503
          end
          item
            Action = ActDescritivo
            ImageIndex = 8
            ShortCut = 16506
          end
          item
            Action = ActProdFalta
            ImageIndex = 25
            ShortCut = 16507
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
        ActionBar = ActToolBNavigator
      end
      item
        Items = <
          item
            Action = ActProjeto
            ImageIndex = 51
            ShortCut = 16497
          end
          item
            Action = ActProdOldNegocio
            ImageIndex = 38
            ShortCut = 16498
          end
          item
            Action = ActPerimetro
            ImageIndex = 62
            ShortCut = 24690
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdSaldo
            ImageIndex = 26
            ShortCut = 16501
          end
          item
            Action = ActProdConfirm
            ImageIndex = 22
            ShortCut = 16502
          end
          item
            Action = ActProdAvulso
            ImageIndex = 23
            ShortCut = 16503
          end
          item
            Action = ActDetalhe
            ImageIndex = 36
            ShortCut = 16504
          end
          item
            Action = ActDescritivo
            ImageIndex = 8
            ShortCut = 16506
          end
          item
            Action = ActProdFalta
            ImageIndex = 25
            ShortCut = 16507
          end
          item
            Action = ActProdCopia
            ImageIndex = 16
          end
          item
            Items = <
              item
                Action = ActImgScanner
                ImageIndex = 63
              end>
            Action = ActImgLoad
            ImageIndex = 4
            ShortCut = 24699
          end>
        ActionBar = ActToolBProdutos
      end
      item
        Items = <
          item
            Action = ActComisIns
            ImageIndex = 16
          end
          item
            Action = ActComisDel
            ImageIndex = 19
          end>
        ActionBar = ActToolBComissao
      end>
    Images = FrmMain.ImgLstMenu
    Left = 852
    Top = 27
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActCopia: TAction
      Category = '2-Database'
      ImageIndex = 16
      OnExecute = ActCopiaExecute
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
    object ActRelatorios: TAction
      Category = '5-Relatorios'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
    end
    object ActReport: TAction
      Tag = 1
      Category = '5-Relatorios'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActRepEstoque: TAction
      Category = '5-Relatorios'
      Caption = 'Ordem de Estoque...'
      Hint = 'Impress'#227'o da Ordem de Estoque'
      ImageIndex = 20
      OnExecute = ActRepEstoqueExecute
    end
    object ActOrdemServico: TAction
      Category = '5-Relatorios'
      Caption = 'Ordem de Servi'#231'os...'
      ImageIndex = 20
      OnExecute = ActOrdemServicoExecute
    end
    object ActFechamento: TAction
      Category = '2-Database'
      Hint = 'Condi'#231#245'es de Pagamento'#13#10'Informa'#231#245'es Gerais'#13#10'Observa'#231#245'es'#13#10'Comiss'#227'o'
      ImageIndex = 5
      ShortCut = 16502
      OnExecute = ActFechamentoExecute
    end
    object ActConfirm: TAction
      Category = '2-Database'
      Hint = 'Confirmar Or'#231'amento'
      ImageIndex = 22
      ShortCut = 118
      OnExecute = ActConfirmExecute
    end
    object ActDividir: TAction
      Category = '2-Database'
      Hint = 'Dividir Atendimento'
      ImageIndex = 47
      OnExecute = ActDividirExecute
    end
    object ActJuncao: TAction
      Category = '2-Database'
      Hint = '"Juntar" Atendimentos'
      ImageIndex = 48
      OnExecute = ActJuncaoExecute
    end
    object ActJuncaoOrc: TAction
      Category = '2-Database'
      Caption = 'Jun'#231#227'o por Or'#231'amento...'
      ImageIndex = 48
      OnExecute = ActJuncaoOrcExecute
    end
    object ActEstoque: TAction
      Category = '2-Database'
      Hint = 'Confirma'#231#227'o de Estoque'
      ImageIndex = 26
      OnExecute = ActEstoqueExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar o Or'#231'amento'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar o Or'#231'amento para Situa'#231#227'o Inicial'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActFatura: TAction
      Category = '2-Database'
      Hint = 'Fechar o Or'#231'amento'
      ImageIndex = 40
      ShortCut = 121
      OnExecute = ActFaturaExecute
    end
    object ActContato: TAction
      Category = '2-Database'
      Hint = 'Gerenciar Contato do Or'#231'amento'
      ImageIndex = 25
      OnExecute = ActContatoExecute
    end
    object ActOptions: TAction
      Category = '2-Database'
      Hint = 'Op'#231#245'es'
      ImageIndex = 1
    end
    object ActProjeto: TAction
      Category = '4-Produto'
      Hint = 'Projetos do Or'#231'amento'
      ImageIndex = 51
      ShortCut = 16497
      OnExecute = ActProjetoExecute
    end
    object ActProdOldNegocio: TAction
      Category = '4-Produto'
      Hint = 'Negocia'#231#227'o anterior do produto'
      ImageIndex = 38
      ShortCut = 16498
      OnExecute = ActProdOldNegocioExecute
    end
    object ActPerimetro: TAction
      Category = '4-Produto'
      Hint = 'Per'#237'metro do Produto'
      ImageIndex = 62
      ShortCut = 24690
      OnExecute = ActPerimetroExecute
    end
    object ActProdDel: TAction
      Category = '4-Produto'
      Hint = 'Excluir este item'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActProdDelExecute
    end
    object ActProdSaldo: TAction
      Category = '4-Produto'
      Hint = 'Saldo de Estoque'
      ImageIndex = 26
      ShortCut = 16501
      OnExecute = ActProdSaldoExecute
    end
    object ActProdConfirm: TAction
      Category = '4-Produto'
      Hint = 'Confirmar Todos os Produtos'
      ImageIndex = 22
      ShortCut = 16502
      OnExecute = ActProdConfirmExecute
    end
    object ActProdAvulso: TAction
      Tag = 2
      Category = '4-Produto'
      Hint = 'Item Avulso'
      ImageIndex = 23
      ShortCut = 16503
      OnExecute = ActProdAvulsoExecute
    end
    object ActRepOrcamento: TAction
      Category = '5-Relatorios'
      Caption = 'Or'#231'amento...'
      Hint = 'Impress'#227'o do Or'#231'amento'
      ImageIndex = 20
      ShortCut = 117
    end
    object ActReceber: TAction
      Category = '6-Tools'
      Caption = 'Contas '#224' Receber...'
      ImageIndex = 39
      OnExecute = ActReceberExecute
    end
    object ActFaturaInfo: TAction
      Category = '6-Tools'
      Caption = 'Informar Dados da Fatura...'
      ImageIndex = 59
      OnExecute = ActFaturaInfoExecute
    end
    object ActReCupom: TAction
      Category = '6-Tools'
      Caption = 'Re-Emitir Cupom Fiscal...'
      ImageIndex = 45
      Visible = False
      OnExecute = ActReCupomExecute
    end
    object ActDetalhe: TAction
      Category = '4-Produto'
      Hint = 'Exibir / Ocultar detalhamentos'
      ImageIndex = 36
      ShortCut = 16504
      OnExecute = ActDetalheExecute
    end
    object ActDescritivo: TAction
      Category = '4-Produto'
      Hint = 'Fazer Or'#231'amento Descritivo'
      ImageIndex = 8
      ShortCut = 16506
      OnExecute = ActDescritivoExecute
    end
    object ActProdFalta: TAction
      Category = '4-Produto'
      Hint = 'Incluir no Pedido de Compra para produtos em Falta'
      ImageIndex = 25
      ShortCut = 16507
      OnExecute = ActProdFaltaExecute
    end
    object ActReNota: TAction
      Category = '6-Tools'
      Caption = 'Re-Emitir Nota...'
      ImageIndex = 20
      OnExecute = ActReNotaExecute
    end
    object ActPagamento: TAction
      Category = '2-Database'
      Hint = 'Condi'#231#245'es de Pagamento'
      ImageIndex = 39
      OnExecute = ActPagamentoExecute
    end
    object ActShow: TAction
      Category = '2-Database'
      Hint = 'Mostrar detalhes do Or'#231'amento'
      ImageIndex = 36
      OnExecute = ActShowExecute
    end
    object ActConsignacao: TAction
      Category = '6-Tools'
      Caption = 'Nota de Consigna'#231#227'o...'
      ImageIndex = 50
      OnExecute = ActConsignacaoExecute
    end
    object ActEtiqueta: TAction
      Category = '5-Relatorios'
      Caption = 'Etiquetas...'
      ImageIndex = 20
      OnExecute = ActEtiquetaExecute
    end
    object ActNotaSR: TAction
      Category = '6-Tools'
      Caption = 'Nota de Simples Remessa...'
      ImageIndex = 59
      OnExecute = ActNotaSRExecute
    end
    object ActSaidaCopiar: TAction
      Category = '6-Tools'
      Caption = 'Copiar para Saida do Estoque...'
      ImageIndex = 34
      OnExecute = ActSaidaCopiarExecute
    end
    object ActCarga: TAction
      Category = '6-Tools'
      Caption = 'Aloca'#231#227'o em Cargas...'
      ImageIndex = 52
      OnExecute = ActCargaExecute
    end
    object SctRepCopia: TAction
      Tag = 2
      Category = '5-Relatorios'
      Caption = 'C'#243'pia do Or'#231'amento...'
      ImageIndex = 20
      OnExecute = SctRepCopiaExecute
    end
    object ActProducao: TAction
      Category = '6-Tools'
      Caption = 'Aloca'#231#227'o em Processo de Produ'#231#227'o...'
      ImageIndex = 43
      OnExecute = ActProducaoExecute
    end
    object ActNFe: TAction
      Category = '6-Tools'
      Caption = 'Gerar NFe...'
      ImageIndex = 10
      OnExecute = ActNFeExecute
    end
    object ActComisIns: TAction
      Category = '7-Comissao'
      Hint = 'Incluir vendedor'
      ImageIndex = 16
      OnExecute = ActComisInsExecute
    end
    object ActComisDel: TAction
      Category = '7-Comissao'
      Hint = 'Excluir Vendedor'
      ImageIndex = 19
      OnExecute = ActComisDelExecute
    end
    object ActImgLoad: TAction
      Category = '4-Produto'
      Hint = 'Carregar imagem para o Item'
      ImageIndex = 4
      ShortCut = 24699
      OnExecute = ActImgLoadExecute
    end
    object ActImgScanner: TAction
      Category = '4-Produto'
      Caption = 'Carregar imagem do Scanner'
      ImageIndex = 63
      OnExecute = ActImgScannerExecute
    end
    object ActContatoNew: TAction
      Category = '2-Database'
      Caption = 'Incluir Novo Contato para o or'#231'amento'
      ImageIndex = 25
      OnExecute = ActContatoNewExecute
    end
    object ActNFCe: TAction
      Category = '6-Tools'
      Caption = 'Gerar NFC-e...'
      ImageIndex = 8
      OnExecute = ActNFCeExecute
    end
    object ActProdCopia: TAction
      Category = '4-Produto'
      Hint = 'Copiar Item'
      ImageIndex = 16
      OnExecute = ActProdCopiaExecute
    end
    object ActImportRTO: TAction
      Category = '6-Tools'
      Caption = 'Importar XML RTO'
      ImageIndex = 34
      OnExecute = ActImportRTOExecute
    end
  end
  object ADOCmdDados: TMultADOCMD
    CommandText = 'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'#13#10'  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'#13#10'  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'#13#10'  Vl_Coleta_Frete, Vl_Pedido_Frete )'#13#10#13#10'values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, ''''1'''',  :Tp_Carga,'#13#10'  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,'#13#10'  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,'#13#10'  :Vl_Coleta_Frete, :Vl_Pedido_Frete )'#13#10
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
        Name = 'Dt_Emissao'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Fl_Estoque'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Tp_Carga'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Fl_FormaPagto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Cd_Tabela'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end
      item
        Name = 'Pr_ICMS'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Pr_Desconto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Desconto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Pr_Custo'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Custo'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Coleta_Frete'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Pedido_Frete'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end>
    SQLSelect.Strings = (
      '-- Grava o n'#250'mero do cupom'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Nr_ECF = :Nr_ECF'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLInsert.Strings = (
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'
      '  Vl_Coleta_Frete, Vl_Pedido_Frete, Fl_Frete, Cd_Usuario, Mm_Nota,'
      '  Nr_Entrega, Cd_Transportador, Ds_Quantidade, Ds_Especie, Ds_Marca,'
      '  Cd_CFOP, Ps_Pedido, Ps_Liquido, Nr_Placa,'
      '  Nr_Pedido_Emitente, Nm_Contato, Mm_Observacao, Nr_Validade, Fl_Producao )'
      ''
      'values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, ''''1'''', :Tp_Carga,'
      '  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,'
      '  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,'
      '  :Vl_Coleta_Frete, :Vl_Pedido_Frete, :Fl_Frete, :Cd_Usuario, :Mm_Nota,'
      '  :Nr_Entrega, :Cd_Transportador, :Ds_Quantidade, :Ds_Especie, :Ds_Marca,'
      '  :Cd_CFOP, :Ps_Pedido, :Ps_Liquido, :Nr_Placa,'
      '  :Nr_Pedido_Emitente, :Nm_Contato, :Mm_Observacao, :Nr_Validade, :Fl_Producao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento'
      ''
      'set'
      '  Dt_Emissao         = :Dt_Emissao,'
      '  Tp_Carga           = :Tp_Carga,'
      '  Cd_Emitente        = :Cd_Emitente,'
      '  Nr_Endereco        = :Nr_Endereco,'
      '  Cd_Funcionario     = :Cd_Funcionario,'
      '  Cd_Tabela          = :Cd_Tabela,'
      '  Pr_ICMS            = :Pr_ICMS,'
      '  Cd_Usuario         = :Cd_Usuario,'
      '  Pr_Desconto        = :Pr_Desconto,'
      '  Vl_Desconto        = :Vl_Desconto,'
      '  Nr_Entrega         = :Nr_Entrega,'
      '  Cd_Transportador   = :Cd_Transportador,'
      '  Dt_Saida           = :Dt_Saida,'
      '  Ds_Quantidade      = :Ds_Quantidade,'
      '  Ds_Especie         = :Ds_Especie,'
      '  Ds_Marca           = :Ds_Marca,'
      '  Cd_CFOP            = :Cd_CFOP,'
      '  Fl_Frete           = :Fl_Frete,'
      '  Ps_Pedido          = :Ps_Pedido,'
      '  Ps_Liquido         = :Ps_Liquido,'
      '  Mm_Nota            = :Mm_Nota,'
      '  Mm_Observacao      = :Mm_Observacao,      '
      '  Nr_Placa           = :Nr_Placa,'
      '  Nr_Pedido_Emitente = :Nr_Pedido_Emitente,'
      '  Nm_Contato         = :Nm_Contato,'
      '  Nr_Validade        = :Nr_Validade,'
      '  Fl_Producao        = :Fl_Producao'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLDelete.Strings = (
      '/* Muda a situa'#231#227'o do or'#231'amento */'
      'update'
      '  Orcamento'
      ''
      'set'
      '  St_Orcamento = ''''9'''','
      '  Dt_Fatura    = :Dt_Fatura'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLPrimary.Strings = (
      '-- Inclui as parcelas do parcelamento a prazo'
      'insert into Orcamento_Parcela( Cd_Filial, Nr_Orcamento, Nr_Prazo, Cd_Portador,'
      '   Dt_Vencimento, Vl_Parcela )'
      'select'
      '  Cd_Filial, :Nr_Orcamento, Nr_Prazo, Cd_Portador, Dt_Vencimento, Vl_Parcela'
      ''
      'from'
      '  Orc_Par_Tmp'
    )
    SQLOther0.Strings = (
      '-- Excluir parcela do or'#231'amento'
      'delete from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
    )
    SQLOther1.Strings = (
      '--------------- Excluir item do or'#231'amento'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Item SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Item      = :Nr_Item'
      ''
      'delete from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_Item'
      ''
      '--------------- Corrige a ordem dos itens - 09/10/2012'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Nr_Item = Nr_Item - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      > @Nr_Item'
    )
    SQLOther2.Strings = (
      '-- Atualizar dados do or'#231'amentento'
      'execute Orcamento_Update :Cd_Filial, :Nr_Orcamento,  :Pr_ICMS,'
      '  :Fl_Exportador, :Fl_ReduzICMS, :Fl_Contribuinte, :Cd_Tabela, :Fl_Parcelar,'
      '  :Vl_Frete'
    )
    SQLOther3.Strings = (
      '-- Excluir todas as parcelas do or'#231'amento'
      'delete from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
    )
    SQLOther4.Strings = (
      '-- Altera a situa'#231#227'o de produto selecionado no estoque'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Fl_Confirmado = :Fl_Confirmado'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther5.Strings = (
      '-- Altera'#231#227'o do valor das parcelas'
      'update'
      '  Orcamento_Parcela'
      ''
      'set'
      '  Vl_Parcela = :Vl_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
    )
    SQLOther6.Strings = (
      '-- Atualiza'#231#227'o do situa'#231#227'o do or'#231'amento'
      'execute Orcamento_Situacao :Cd_Filial, :Nr_Orcamento, :St_New, :St_Old, :Dt_Confirmado '
    )
    SQLOther7.Strings = (
      '-- Atribui'#231#227'o de estoque te'#243'rico'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Qt_Estoque ='
      '    case'
      '      when Cd_Produto is null then Qt_Item'
      '      else Qt_Item * Coalesce('
      '      ('
      '      select'
      '        Nr_Fator'
      ''
      '      from'
      '        Produto_Unidade PU'
      ''
      '      where'
      '        PU.Cd_Produto = Orcamento_Item.Cd_Produto and'
      '        PU.Sg_Unidade = Orcamento_Item.Sg_Unidade'
      '      ), 1.0 )'
      ''
      '    end'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '-------------------- Inclus'#227'o de funcion'#225'rio na comiss'#227'o'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Funcionario SmallInt'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Nr_Orcamento   = :Nr_Orcamento,'
      '  @Cd_Funcionario = :Cd_Funcionario'
      ''
      'if not Exists('
      '   select'
      '     Cd_Filial'
      ''
      '   from'
      '     Orcamento_Comissao'
      ''
      '   where'
      '     Cd_Filial      = @Cd_Filial and'
      '     Nr_Orcamento   = @Nr_Orcamento and'
      '     Cd_Funcionario = @Cd_Funcionario'
      '   )'
      '  insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      '  values( @Cd_Filial, @Nr_Orcamento, @Cd_Funcionario )'
      ''
      '/*'
      '-- Cria a table para parcelamento a vista'
      'create temporary table orc_par_tmp'
      '  ('
      '  cd_filial smallint not null,'
      '  nr_orcamento int not null,'
      '  nr_prazo smallint not null,'
      '  cd_portador smallint not null,'
      '  dt_vencimento date,'
      '  vl_parcela numeric( 12, 2 ),'
      '  constraint orc_par_tmp_pkey primary key ( cd_filial, nr_orcamento, nr_prazo )'
      '  );'
      '*/'
    )
    SQLOther9.Strings = (
      '-------------------- Excluir o Vendedor da comiss'#227'o'
      'delete from'
      '  Orcamento_Comissao'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Orcamento   = :Nr_Orcamento and'
      '  Cd_Funcionario = :Cd_Funcionario'
      ''
      '/*'
      'delete from'
      '  Orc_Par_Tmp'
      '*/'
    )
    Left = 414
    Top = 557
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10'order by'#13#10'  Nr_Orcamento'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Orcamento ) as Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      '  '
      'order by'
      '  Nr_Orcamento'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento < :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Orcamento desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento > :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Orcamento'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      '  '
      'order by'
      '  Nr_Orcamento desc'
    )
    SQLOther4.Strings = (
      '--------------- Verifica se tem NFe para processamento'
      'select '
      '  Nr_Origem as Nr_Orcamento'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = ''''1'''' and'
      '  Nr_Origem = :Nr_Orcamento'
    )
    Left = 443
    Top = 557
    object ADODsNavegarnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'#13#10'  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,'#13#10'  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,'#13#10'  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,'#13#10'  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,'#13#10'  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,'#13#10'  P.Fl_Perecivel, G.Fl_Moldura, '#13#10#13#10'  OI.xPed, OI.nItemPed,'#13#10#13#10'  Coalesce( OI.Cd_Tributacao, P.Cd_Tributacao ) as Cd_Tributacao,'#13#10'  T.Ds_Tributacao'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = Coalesce( OI.Cd_Tributacao, P.Cd_Tributacao )'#13#10#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OI.Nr_Item desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 11
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 104
      end>
    Left = 502
    Top = 557
    object ADODsProdutocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsProdutonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutosg_unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutofl_confirmado: TStringField
      FieldName = 'fl_confirmado'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoqt_estoque: TBCDField
      FieldName = 'qt_estoque'
      Precision = 12
      Size = 3
    end
    object ADODsProdutopr_margem: TBCDField
      DisplayLabel = 'Margem'
      FieldName = 'pr_margem'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoqt_agregado: TBCDField
      FieldName = 'qt_agregado'
      Precision = 9
      Size = 3
    end
    object ADODsProdutopr_reducao: TBCDField
      FieldName = 'pr_reducao'
      Precision = 7
      Size = 2
    end
    object ADODsProdutofl_stb: TStringField
      FieldName = 'fl_stb'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutosg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutonm_prodestoque: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_prodestoque'
      Size = 120
    end
    object ADODsProdutosg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutops_produto: TBCDField
      FieldName = 'ps_produto'
      Precision = 18
      Size = 3
    end
    object ADODsProdutonm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsProdutofl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoDp_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 120
      Calculated = True
    end
    object ADODsProdutoVl_Total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsProdutopr_vendedor: TBCDField
      FieldName = 'pr_vendedor'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoNr_Lote: TStringField
      FieldName = 'Nr_Lote'
      Size = 15
    end
    object ADODsProdutoDt_Fabricacao: TDateTimeField
      FieldName = 'Dt_Fabricacao'
    end
    object ADODsProdutoDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsProdutoFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsProdutoDs_Ambiente: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsProdutoFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsProdutoFl_Perecivel: TStringField
      FieldName = 'Fl_Perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoxPed: TStringField
      FieldName = 'xPed'
    end
    object ADODsProdutonItemPed: TSmallintField
      FieldName = 'nItemPed'
    end
    object ADODsProdutoCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
      ReadOnly = True
    end
    object ADODsProdutoDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 472
    Top = 557
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Cd_Credito, E.Mm_Restricao,'#13#10'  E.Nr_Endereco, E.Fl_Contribuinte, EA.Pr_Contribuinte, EA.Pr_NaoContrib,'#13#10'  E.Fl_Exportador, EC.Nm_Emitente as Nm_Credito,'#13#10'  Cast( E.Cd_Credito as VarChar( 8 ) ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'#13#10'  EC.Mm_Restricao as Mm_Restricao_Titular, C.Sg_Estado,'#13#10'  E.Cd_Funcionario, F.Nm_Funcionario, ESG.Cd_Tabela, E.Mm_Nota, '#13#10'  E.Pr_Desconto, E.Nm_Fantasia,'#13#10#13#10'  E.Nr_Documento, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP, '#13#10'  E.Nr_Insc_Estadual'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = E.Cd_SubGrupo'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem  = :Sg_Origem and'#13#10'  EA.Sg_Destino = C.Sg_Estado'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = E.Cd_Funcionario'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 533
    Top = 557
    object ADODsEmitentecd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEmitentenm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentecd_credito: TIntegerField
      FieldName = 'cd_credito'
    end
    object ADODsEmitentenr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsEmitentefl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentepr_contribuinte: TBCDField
      FieldName = 'pr_contribuinte'
      Precision = 9
      Size = 2
    end
    object ADODsEmitentepr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
    object ADODsEmitentefl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentenm_credito: TStringField
      FieldName = 'nm_credito'
      Size = 50
    end
    object ADODsEmitentedp_credito: TStringField
      FieldName = 'dp_credito'
      Size = 254
    end
    object ADODsEmitentesg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEmitentecd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsEmitentenm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsEmitenteMm_Restricao: TMemoField
      FieldName = 'Mm_Restricao'
      BlobType = ftMemo
    end
    object ADODsEmitenteMm_Restricao_Titular: TMemoField
      FieldName = 'Mm_Restricao_Titular'
      BlobType = ftMemo
    end
    object ADODsEmitenteCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsEmitenteMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsEmitentePr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEmitenteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsEmitenteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsEmitenteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEmitenteNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '-- Verifica a exist'#234'ncia de produto sem confirma'#231#227'o de estoque'
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Fl_Confirmado = ''''1'''' and'
      '  ('
      '  Qt_Estoque is null or'
      '  Qt_Estoque = 0'
      '  )'
    )
    SQLOther1.Strings = (
      '-- Verifica produto com margem de lucro inferior a minima'
      'select top 1'
      '  OI.Cd_Produto'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OI.Cd_Produto and'
      '  P.Pr_Vendedor > OI.Pr_Margem'
      ''
      'where'
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Nr_Orcamento  = :Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther2.Strings = (
      '-------------------- Verifica produto sem estoque'
      'declare @Cd_Filial SmallInt'
      'declare @Nr_Orcamento Int'
      ''
      'set @Cd_Filial    = :Cd_Filial'
      'set @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------- Produtos'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2'''' and               -- n'#227'o considera pereciveis'
      '  P.Cd_Baixa is null '
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OI.Cd_Filial and'
      '  ES.Cd_Produto = OI.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < OI.Qt_Item'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'union all'
      ''
      '-------------------- Conjuntos'
      'select top 1'
      '  OC.Nr_Item'
      ''
      'from'
      '  Orcamento_Conjunto OC'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = OC.Cd_Filial and'
      '  OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '  OI.Nr_Item       = OC.Nr_Item and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OC.Cd_Filial and'
      '  ES.Cd_Produto = OC.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < ( OC.Qt_Item )'
      ''
      'where'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = @Nr_Orcamento'
      ''
      '--------------- Itens de baixa - 21/12/2010'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''1''''                      -- Critica somente os produtos'
      ''
      'inner join'
      '  Produto PB'
      'on'
      '  PB.Cd_Produto = P.Cd_Baixa'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = PB.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OI.Cd_Filial and'
      '  ES.Cd_Produto = PB.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < OI.Qt_Item'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Itens'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2''''                   -- n'#227'o considera pereciveis'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OI.Cd_Filial and'
      '      E.Cd_Produto = OI.Cd_Produto'
      '    )'
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Conjunto'
      'union all'
      'select top 1'
      '  OC.Nr_Item'
      ''
      'from'
      '  Orcamento_Conjunto OC'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = OC.Cd_Filial and'
      '  OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '  OI.Nr_Item       = OC.Nr_Item and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'where'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = @Nr_Orcamento and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OC.Cd_Filial and'
      '      E.Cd_Produto = OC.Cd_Produto '
      '    )'
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Itens de Baixa 21/12/2010'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2''''                   -- n'#227'o considera pereciveis'
      ''
      'inner join'
      '  Produto PB'
      'on'
      '  PB.Cd_Produto = PB.Cd_Baixa'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OI.Cd_Filial and'
      '      E.Cd_Produto = PB.Cd_Produto'
      '    )'
    )
    SQLOther3.Strings = (
      '/*  Valor Total dos Projetos do Or'#231'amento */'
      'select'
      '  cast(sum(Qt_Projeto * Vl_Projeto) as numeric(18,3)) as Vl_TotalProjetos'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther4.Strings = (
      '-------------------- Verifica se existem itens avulsos'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Cd_Produto is null'
    )
    SQLOther5.Strings = (
      '--------------- Verifica se o emitente tem mais de um endere'#231'o'
      'select'
      '  count( * ) as Nr_Enderecos'
      ''
      'from'
      '  Emitente_Endereco'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    Left = 561
    Top = 557
  end
  object ADODsProdSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdSelectCalcFields
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '#13#10'  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'#13#10'  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'#13#10'  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'#13#10'  P.Fl_Ativo'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque E'#13#10'on'#13#10'  E.Cd_Filial = :Cd_Filial and'#13#10'  E.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  P.Fl_Ativo = ''''1'''' and'#13#10'  P.Nm_Produto like :Find'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 0
      end
      item
        Name = 'Find'
        DataType = ftString
        Size = 2
        Value = 'a%'
      end>
    SQLInsert.Strings = (
      ''
    )
    SQLOther0.Strings = (
      '/* C'#243'digo de Barras com os 13 digitos */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )    -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Cd_Barra = :Find'
      ''
      'order by'
      '  P.Cd_Barra'
    )
    SQLOther1.Strings = (
      '/* Nome do Produto e SubProduto */'
      'declare @Find VarChar( 150 )'
      'set @Find = :Find'
      ''
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Sg_Venda, P.Cd_Fabricante,'
      '  P.Cd_Barra, P.Fl_Produto,'
      '   PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,'
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Nm_Produto like @Find'
      ''
      'union'
      ''
      'select'
      '  SP.Cd_SubProduto, SP.Nm_SubProduto, 0 as Nr_Sequencia, ''''M2'''','
      '  Cast( null as VarChar( 20 ) ) as Cd_Fabricante,'
      '  Cast( null as VarChar( 20 ) ) as Cd_Barra,'
      '  ''''4'''' as Fl_Produto,'
      '  0.0 as Vl_Venda,'
      '  0.0 as Vl_Promocao,'
      '  0.0 as Qt_Estoque,'
      '  ''''2'''' as Fl_Lote, 0.0 as Vl_Tabela, ''''1'''' as Tp_Preco, ''''2'''' as Fl_Moldura,'
      '  '''''' as Nm_Laboratorio, ''''1'''' as Fl_Ativo'
      ''
      'from'
      '  SubProduto SP'
      ''
      'where'
      '  SP.Fl_Ativo = ''''1'''' and'
      '  SP.Nm_SubProduto like @Find'
      ''
      'order by'
      '  /* Ordem */'
      ''
    )
    SQLOther2.Strings = (
      '/* C'#243'digo de Barras com parte do c'#243'digo */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Cd_Barra like :Find'
      ''
      'order by'
      '  P.Cd_Barra'
    )
    SQLOther3.Strings = (
      '/* C'#243'digo do Produto */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Cd_Produto = :Find'
    )
    SQLOther4.Strings = (
      '/* C'#243'digo do Fabricante */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Cd_Fabricante = :Find'
    )
    Left = 625
    Top = 557
    object ADODsProdSelectcd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdSelectnm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdSelectsg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdSelectvl_venda: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectvl_promocao: TBCDField
      FieldName = 'vl_promocao'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectcd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsProdSelectcd_barra: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'cd_barra'
    end
    object ADODsProdSelectqt_estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_estoque'
      Precision = 14
      Size = 7
    end
    object ADODsProdSelectfl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectVl_Tabela: TBCDField
      FieldName = 'Vl_Tabela'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 130
      Calculated = True
    end
    object ADODsProdSelectFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectNm_Laboratorio: TStringField
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
    object ADODsProdSelectFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
  end
  object DsProdSelect: TDataSource
    DataSet = ADODsProdSelect
    Left = 595
    Top = 557
  end
  object ADODsUnidLoad: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice'#13#10#13#10'from'#13#10'  Produto_Unidade PU'#13#10#13#10'where'#13#10'  PU.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 654
    Top = 557
    object ADODsUnidLoadsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidLoadnr_fator: TBCDField
      FieldName = 'nr_fator'
      Precision = 18
      Size = 3
    end
    object ADODsUnidLoadNr_Indice: TBCDField
      FieldName = 'Nr_Indice'
      Precision = 9
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,'
      '   Fl_STB, Ps_Produto, Fl_OrdemServico )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Fl_Confirmado, :Pr_Reducao, :Fl_STB,'
      '   :Ps_Produto, ''''2'''' )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Fl_Confirmado = :Fl_Confirmado,'
      '  Pr_Reducao    = :Pr_Reducao,'
      '  Fl_STB        = :Fl_STB,'
      '  Ps_Produto    = :Ps_Produto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther0.Strings = (
      '/* Incluir o item de conjunto */'
      'insert into Orcamento_Conjunto( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Vl_Unitario )'
    )
    SQLOther1.Strings = (
      '/* Alterar o item de conjunto */'
      'update'
      '  Orcamento_Conjunto'
      ''
      'set'
      '  Sg_Unidade  = :Sg_Unidade,'
      '  Qt_Item     = :Qt_Item,'
      '  Vl_Unitario = :Vl_Unitario'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item and'
      '  Cd_Produto   = :Cd_Produto'
    )
    SQLOther2.Strings = (
      '-------------- Conteudo antigo colocado no Other3'
      '  if Object_ID( ''''TempDB..#orcamento_conjunto_tmp'''' ) is not null'
      '    truncate table #orcamento_conjunto_tmp'
      ''
      '  else'
      '    create table #orcamento_conjunto_tmp'
      '      ('
      '      cd_filial smallint not null,'
      '      nr_orcamento int not null,'
      '      cd_produto int not null,'
      '      sg_unidade char( 2 ) not null,'
      '      qt_item numeric( 18, 3 ) not null,'
      '      vl_unitario numeric( 12, 3 ) not null,'
      '      nm_produto varchar( 120 ),'
      '      cd_oldproduto int,'
      '      vl_venda numeric( 12, 3 )'
      '      )'
      ''
    )
    SQLOther3.Strings = (
      'create table ##item_ou_tmp'
      '  ('
      '  fl_confirmado char( 1 ),'
      '  fl_produto char( 1 ),'
      '  vl_total numeric( 12, 3 ),'
      '  ps_total numeric( 12, 3 ),'
      '  vl_baseicms numeric( 12, 3 ),'
      '  vl_ipi numeric( 12, 3 ),'
      '  vl_stb numeric( 12, 3 ),'
      '  vl_custo numeric( 12, 3 )'
      '  );'
      ''
      'create table ##orcamento_conjunto_tmp'
      '  ('
      '  cd_filial smallint not null,'
      '  nr_orcamento int not null,'
      '  cd_produto int not null,'
      '  sg_unidade char( 2 ) not null,'
      '  qt_item numeric( 18, 3 ) not null,'
      '  vl_unitario numeric( 12, 3 ) not null,'
      '  nm_produto varchar( 120 ),'
      '  cd_oldproduto int,'
      '  vl_venda numeric( 12, 3 )'
      '  );'
    )
    SQLOther4.Strings = (
      '-------------------- Recalculo do pre'#231'o de venda na troca de tabela'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Tabela VarChar( 10 ),'
      '  @Vl_Dolar Numeric( 9, 4 )'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Cd_Tabela    = :Cd_Tabela,'
      '  @Vl_Dolar     = :Vl_Dolar'
      ''
      '-------------------- Itens de Venda'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Vl_Unitario = Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      ''
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Item.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Item.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento AND'
      '  Cd_Produto is not null'
      ''
      '-------------------- Itens de Conjunto'
      'update'
      '  Orcamento_Conjunto'
      ''
      'set'
      '  Vl_Unitario = @Vl_Dolar * Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      ''
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Conjunto.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Conjunto.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor total do conjunto nos itens'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Vl_Unitario ='
      '    ('
      '    select'
      '      sum( OC.Qt_Item * OC.Vl_Unitario )'
      ''
      '    from'
      '      Orcamento_Conjunto OC'
      ''
      '    where'
      '      OC.Cd_Filial    = OI.Cd_Filial and'
      '      OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '      OC.Nr_Item      = OI.Nr_Item'
      '    )'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''3'''
      ''
      'where'
      '  OI.Cd_Filial    = @Cd_Filial and'
      '  OI.Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor dos itens de projeto'
      'update'
      '  Orcamento_Projeto_Item'
      ''
      'set'
      '  Vl_Unitario = Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      '      '
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Projeto_Item.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Projeto_Item.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor dos projetos'
      'update'
      '  Orcamento_Projeto'
      ''
      'set'
      '  Vl_Projeto ='
      '    ('
      '    select'
      '      sum( OPI.Vl_Unitario * OPI.Qt_Item )'
      ''
      '    from'
      '      Orcamento_Projeto_Item OPI'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = OPI.Cd_Produto'
      ''
      '    where'
      '      OPI.Cd_Filial    = Orcamento_Projeto.Cd_Filial and'
      '      OPI.Nr_Orcamento = Orcamento_Projeto.Nr_Orcamento and'
      '      OPI.Nr_Projeto   = Orcamento_Projeto.Nr_Projeto'
      '    )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther5.Strings = (
      '--------------- Inclus'#227'o da imagem do item'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Im_SubProduto = :Im_SubProduto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther6.Strings = (
      '--------------- Inclus'#227'o de Bloqueio'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Bloqueio SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      'select'
      '  @Nr_Bloqueio  = Coalesce('
      '    ('
      '    select'
      '      max( Nr_Bloqueio ) + 1'
      ''
      '    from'
      '      Orcamento_Bloqueio'
      ''
      '    where'
      '      Cd_Filial    = @Cd_Filial and'
      '      Nr_Orcamento = @Nr_Orcamento'
      '    ), 1 )'
      ''
      'insert into Orcamento_Bloqueio( Cd_Filial, Nr_Orcamento, Nr_Bloqueio,'
      '   St_Bloqueio, Tp_Bloqueio, Dt_Bloqueio, Cd_Bloqueio )'
      'values( @Cd_Filial, @Nr_Orcamento, @Nr_Bloqueio,'
      '   ''''1'''', :Tp_Bloqueio, :Dt_Bloqueio, :Cd_Bloqueio )'
      ''
    )
    SQLOther7.Strings = (
      '--------------- Confirmar todos os itens do or'#231'amento'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Fl_Confirmado = ''''1'''
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
    )
    SQLOther8.Strings = (
      '--------------- Excluir o vendedor da comiss'#227'o'
      'delete from'
      '  Orcamento_Comissao'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Orcamento   = :Nr_Orcamento and'
      '  Cd_Funcionario = :cd_Funcionario'
    )
    SQLOther9.Strings = (
      '--------------- Copia do item'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_ItemNew SmallInt,'
      '  @Nr_ItemOld SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_ItemOld   = :Nr_ItemOld'
      ''
      'set @Nr_ItemNew = 1 +'
      '  ('
      '  select'
      '    max( Nr_Item )'
      ''
      '  from'
      '    Orcamento_Item'
      '  where'
      '    Cd_Filial    = @Cd_Filial and'
      '    Nr_Orcamento = @Nr_Orcamento'
      '  )'
      ''
      '--------------- Inclus'#227'o do item'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '   Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '   Fl_OrdemServico, Cd_Tributacao, xPed, nItemPed )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_ItemNew, Cd_Produto, Nm_Produto,'
      '  Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '  Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Fl_OrdemServico, Cd_Tributacao, xPed, nItemPed'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_ItemOld'
      ''
      '--------------- Inclus'#227'o dos detalhamentos'
      '--------------- Inclusao dos itens'
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_ItemNew, Nr_Detalhe, Qt_Item, Nr_Comprimento,'
      '  Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_ItemOld'
    )
    Left = 685
    Top = 557
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, '#13#10'  O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario,'#13#10'  O.Fl_FormaPagto, O.Nr_Endereco, EE.Ds_Titulo, O.Vl_Coleta_Frete, O.Ps_Coleta,'#13#10'  O.Vl_Coleta, O.Mg_Coleta, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,'#13#10'  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, O.Dt_Fatura, O.Nr_Fatura,'#13#10'  O.Cd_Serie, EC.Cd_Credito, EC.Vl_Limite_Credito, O.Vl_BaseICMS, O.Pr_ICMS,'#13#10'  O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, R.Nr_Receber, O.Nr_ECF, E.Fl_Exportador,'#13#10'  Cast( EC.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'#13#10'  C.Sg_Estado, E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Ds_EMail,'#13#10'  O.Mm_Nota, O.Cd_CFOP + '''' - '''' + CF.Ds_CFOP as Dp_CFOP, O.Vl_ISS,'#13#10'  Cast( O.Cd_Transportador as VarChar( 6 ) ) + '''' - '''' + T.NM_Transportador as Dp_Transportador,'#13#10'  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Nr_Entrega, '#13#10'  O.Nr_Validade, O.Dt_Confirmado, O.Cd_Usuario, O.Vl_Servico, O.Ps_Liquido,'#13#10'  O.Vl_BaseST, O.Dt_Conjunto, E.Cd_Portador, O.Fl_Impresso, E.Nm_Fantasia, O.Nr_Juncao,'#13#10'  O.Cd_Transportador, O.Cd_CFOP, CF.Ds_CFOP, T.Nm_Transportador, O.Nr_Placa,'#13#10'  O.Fl_Producao, O.Fl_ConFinal,'#13#10'  '#13#10'  Vl_Projetos = '#13#10'    ('#13#10'    select'#13#10'      sum( OP.Qt_Projeto * OP.Vl_Projeto ) '#13#10#13#10'    from'#13#10'      Orcamento_Projeto OP'#13#10#13#10'    where'#13#10'      OP.Cd_Filial    = O.Cd_Filial and'#13#10'      OP.Nr_Orcamento = O.Nr_Orcamento'#13#10'     )'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial     = O.Cd_Filial and'#13#10'  R.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  R.St_Receber   < ''''4'''#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = O.Cd_CFOP'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = O.Cd_Transportador'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'#13#10
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
      end>
    Left = 384
    Top = 557
    object ADODsDadoscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDadosnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosst_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsDadostp_carga: TStringField
      FieldName = 'tp_carga'
      FixedChar = True
      Size = 1
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadoscd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsDadosnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDadosfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsDadosds_titulo: TStringField
      FieldName = 'ds_titulo'
      Size = 50
    end
    object ADODsDadosvl_coleta_frete: TBCDField
      FieldName = 'vl_coleta_frete'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosps_coleta: TBCDField
      FieldName = 'ps_coleta'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_coleta: TBCDField
      FieldName = 'vl_coleta'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosmg_coleta: TBCDField
      FieldName = 'mg_coleta'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosps_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_pedido: TBCDField
      FieldName = 'vl_pedido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosmg_pedido: TBCDField
      FieldName = 'mg_pedido'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsDadoscd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsDadosdt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsDadosnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsDadoscd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsDadoscd_credito: TIntegerField
      FieldName = 'cd_credito'
    end
    object ADODsDadosvl_limite_credito: TBCDField
      FieldName = 'vl_limite_credito'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_icms: TBCDField
      FieldName = 'pr_icms'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_icms: TBCDField
      FieldName = 'vl_icms'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsDadosnr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsDadosdp_credito: TStringField
      FieldName = 'dp_credito'
      Size = 254
    end
    object ADODsDadosfl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsDadossg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosfl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosvl_stb: TBCDField
      FieldName = 'vl_stb'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosnr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsDadosnm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsDadospr_desconto: TBCDField
      FieldName = 'pr_desconto'
      DisplayFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_custo: TBCDField
      FieldName = 'pr_custo'
      DisplayFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_custo: TBCDField
      FieldName = 'vl_custo'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsDadosds_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsDadosmm_nota: TMemoField
      FieldName = 'mm_nota'
      BlobType = ftMemo
    end
    object ADODsDadosdp_cfop: TStringField
      FieldName = 'dp_cfop'
      Size = 8190
    end
    object ADODsDadosVl_ISS: TBCDField
      FieldName = 'Vl_ISS'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDadosDp_Transportador: TStringField
      FieldName = 'Dp_Transportador'
      ReadOnly = True
      Size = 59
    end
    object ADODsDadosFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsDadosDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsDadosDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsDadosDp_Frete: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Frete'
      Size = 16
      Calculated = True
    end
    object ADODsDadosNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsDadosDt_Entrega: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_Entrega'
      Calculated = True
    end
    object ADODsDadosNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsDadosDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsDadosDp_Usuario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 15
      Calculated = True
    end
    object ADODsDadosCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsDadosVl_Servico: TBCDField
      FieldName = 'Vl_Servico'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsDadosPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsDadosVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsDadosDt_Conjunto: TDateTimeField
      FieldName = 'Dt_Conjunto'
    end
    object ADODsDadosCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsDadosFl_Impresso: TStringField
      FieldName = 'Fl_Impresso'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 90
      Calculated = True
    end
    object ADODsDadosNr_Juncao: TIntegerField
      FieldName = 'Nr_Juncao'
    end
    object ADODsDadosDp_Pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Pagamento'
      Calculated = True
    end
    object ADODsDadosCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsDadosCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosDs_CFOP: TStringField
      FieldName = 'Ds_CFOP'
      Size = 50
    end
    object ADODsDadosNm_Transportador: TStringField
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsDadosNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsDadosVl_Projetos: TBCDField
      FieldName = 'Vl_Projetos'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object ADODsDadosFl_Producao: TStringField
      FieldName = 'Fl_Producao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 354
    Top = 557
  end
  object ADODsFindPedido: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Cd_Emitente = :Cd_Emitente and'#13#10'  Nr_Pedido_Emitente = :Nr_Pedido_Emitente'
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
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Pedido_Emitente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = nil?
      end>
    Left = 715
    Top = 556
    object ADODsFindPedidoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 745
    Top = 556
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe,'#13#10'  OD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe OD'#13#10#13#10'where'#13#10'  OD.Cd_Filial    = :Cd_Filial and'#13#10'  OD.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OD.Nr_Item      = :Nr_Item '#13#10#13#10'order by'#13#10'    OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe'
    DataSource = DsProduto
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 11
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 104
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 18
      end>
    Left = 777
    Top = 556
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDetalheNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
  end
  object ADODsComissao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsComissaoAfterOpen
    CommandText = 'select'#13#10'  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Funcionario, F.Nm_Funcionario'#13#10#13#10'from'#13#10'  Orcamento_Comissao OC'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = OC.Cd_Funcionario'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    DataSource = DsDados
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento'
    MasterFields = 'cd_filial;nr_orcamento'
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
      end>
    Left = 836
    Top = 556
    object ADODsComissaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsComissaoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsComissaoCd_Funcionario: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Funcionario'
    end
    object ADODsComissaoNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
  end
  object DsComissao: TDataSource
    DataSet = ADODsComissao
    Left = 806
    Top = 556
  end
  object ADODsPacelas: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsPacelasCalcFields
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento,'#13#10'  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,'#13#10'  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,'#13#10'  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10'  '#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Prazo, OP.Nr_Parcela'
    DataSource = DsDados
    MasterFields = 'Cd_Filial;Nr_Orcamento'
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
      end>
    Left = 896
    Top = 556
    object ADODsPacelasDp_Vencimento: TStringField
      DisplayLabel = 'Vencimento/Prazo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Vencimento'
      Size = 30
      Calculated = True
    end
    object ADODsPacelasnr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsPacelascd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsPacelasdt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsPacelasvl_parcela: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_parcela'
      DisplayFormat = '##,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsPacelascd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      Size = 3
    end
    object ADODsPacelascd_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cd_agencia'
      Size = 4
    end
    object ADODsPacelasnr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsPacelasnr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsPacelasdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsPacelasnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsPacelasnm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsPacelasnr_telefone: TStringField
      FieldName = 'nr_telefone'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsPacelasfl_parcela: TStringField
      FieldName = 'fl_parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsPacelasDp_Parcela: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldKind = fkCalculated
      FieldName = 'Dp_Parcela'
      Calculated = True
    end
    object ADODsPacelasnm_portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsPacelasNr_ParInterna: TSmallintField
      FieldName = 'Nr_ParInterna'
    end
    object ADODsPacelasCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsPacelasNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
  end
  object DsPacelas: TDataSource
    DataSet = ADODsPacelas
    Left = 866
    Top = 556
  end
  object ADODsJuncao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Cd_Emitente, OT.Nm_Emitente, OT.Nm_Funcionario,'#13#10'  OT.Vl_Orcamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = O.Cd_Filial and'#13#10'  OT.Nr_Orcamento = O.Nr_Orcamento'#13#10#13#10'where'#13#10'  O.Cd_Filial = :Cd_Filial and'#13#10'  O.Nr_Juncao = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  O.Cd_Filial, O.Nr_Orcamento'
    DataSource = DsDados
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Orcamento'
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 954
    Top = 555
    object ADODsJuncaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsJuncaoNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsJuncaoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsJuncaoNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsJuncaoNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsJuncaoVl_Orcamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
  end
  object DsJuncao: TDataSource
    DataSet = ADODsJuncao
    Left = 924
    Top = 555
  end
  object PopMenDescAcresc: TPopupMenu
    Left = 736
    Top = 72
    object ItemMenDesconto: TMenuItem
      Caption = 'Distribuir Desconto'
      OnClick = ItemMenDescontoClick
    end
    object AcrscimoDesconto1: TMenuItem
      Caption = 'Acr'#233'scimo / Desconto'
      OnClick = AcrscimoDesconto1Click
    end
  end
  object ADODsNFe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'  N.St_NFe'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.Fl_Origem = ''''1'''' and'#13#10'  N.Nr_Origem = :Nr_Orcamento and'#13#10'  N.St_NFe    > ''''1'''
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
      end>
    Left = 368
    Top = 520
  end
end
