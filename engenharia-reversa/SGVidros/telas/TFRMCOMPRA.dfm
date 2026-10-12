object FrmCompra: TFrmCompra
  Left = 312
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Pedido de Compra'
  ClientHeight = 446
  ClientWidth = 754
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
    Height = 446
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 733
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 416
      Width = 728
      Height = 5
      Shape = bsTopLine
    end
    object LblEmitente: TLabel
      Left = 5
      Top = 425
      Width = 55
      Height = 13
      Caption = 'LblEmitente'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 731
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 731
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 731
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
      Left = 560
      Top = 419
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 646
      Top = 419
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCCompra: TPageControl
      Left = -1
      Top = 27
      Width = 729
      Height = 387
      ActivePage = TabSProdutos
      TabOrder = 3
      OnChange = PgCCompraChange
      object TabSCompra: TTabSheet
        Caption = '                    Dados da Compra                    '
        object Label1: TLabel
          Left = 4
          Top = 2
          Width = 54
          Height = 13
          Caption = 'Compra N'#186':'
        end
        object Label10: TLabel
          Left = 256
          Top = 1
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object SbFornecedor: TSpeedButton
          Left = 306
          Top = 16
          Width = 23
          Height = 19
          Hint = 'Seleciona Fornecedor'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbFornecedorClick
        end
        object Label4: TLabel
          Left = 4
          Top = 148
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label18: TLabel
          Left = 64
          Top = 2
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object Label5: TLabel
          Left = 87
          Top = 38
          Width = 107
          Height = 13
          Caption = 'Desconto ( % / Valor ):'
        end
        object Label6: TLabel
          Left = 217
          Top = 38
          Width = 120
          Height = 13
          Caption = 'Custos Adic. ( % / Valor ):'
        end
        object Label7: TLabel
          Left = 601
          Top = 38
          Width = 54
          Height = 13
          Caption = 'Valor Total:'
        end
        object Label2: TLabel
          Left = 4
          Top = 38
          Width = 78
          Height = 13
          Caption = 'Valor do Pedido:'
        end
        object Label3: TLabel
          Left = 347
          Top = 38
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label8: TLabel
          Left = 431
          Top = 38
          Width = 37
          Height = 13
          Caption = 'Seguro:'
        end
        object Label9: TLabel
          Left = 516
          Top = 38
          Width = 34
          Height = 13
          Caption = 'Outros:'
        end
        object Label11: TLabel
          Left = 588
          Top = 165
          Width = 35
          Height = 13
          Caption = 'Prazos:'
        end
        object SbEmitenteContato: TSpeedButton
          Left = 291
          Top = 87
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
        object Label15: TLabel
          Left = 4
          Top = 108
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 54
          Top = 123
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
        object Label12: TLabel
          Left = 390
          Top = 108
          Width = 118
          Height = 13
          Caption = 'Funcion'#225'rio (Comprador):'
        end
        object SbFuncionario: TSpeedButton
          Left = 430
          Top = 123
          Width = 23
          Height = 19
          Hint = 'Seleciona Comprador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbFuncionarioClick
        end
        object Label13: TLabel
          Left = 492
          Top = 72
          Width = 113
          Height = 13
          Caption = 'Prazo de Entrega (dias):'
        end
        object EdtNr_Compra: TCurrencyEdit
          Left = 4
          Top = 16
          Width = 55
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Color = clSilver
          DecimalPlaces = 0
          DisplayFormat = '#,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdtCd_Fornecedor: TCurrencyEdit
          Tag = 1
          Left = 256
          Top = 16
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 3
          OnExit = EdtCd_FornecedorExit
          OnKeyDown = EdtCd_FornecedorKeyDown
        end
        object EdtNm_Fornecedor: TEdit
          Left = 329
          Top = 16
          Width = 390
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
          TabOrder = 4
          OnChange = EdtNm_FornecedorChange
        end
        object MmObservacao: TMemo
          Left = 4
          Top = 162
          Width = 577
          Height = 197
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 21
        end
        object EdtDs_Situacao: TEdit
          Left = 64
          Top = 16
          Width = 112
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
        object EdtPr_Desconto: TCurrencyEdit
          Tag = 1
          Left = 87
          Top = 52
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DisplayFormat = '#,##0.00'
          TabOrder = 6
          OnChange = EdtPr_DescontoChange
        end
        object EdtVl_Desconto: TCurrencyEdit
          Tag = 2
          Left = 132
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 7
          OnChange = EdtPr_DescontoChange
        end
        object EdtPr_Custo: TCurrencyEdit
          Tag = 3
          Left = 217
          Top = 52
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DisplayFormat = '#,##0.00'
          TabOrder = 8
          OnChange = EdtPr_DescontoChange
        end
        object EdtVl_Custo: TCurrencyEdit
          Tag = 4
          Left = 262
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 9
          OnChange = EdtPr_DescontoChange
        end
        object EdtVl_Total: TCurrencyEdit
          Left = 601
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object EdtVl_Compra: TCurrencyEdit
          Left = 4
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object EdtNm_Contato: TLabeledEdit
          Left = 4
          Top = 87
          Width = 287
          Height = 19
          EditLabel.Width = 86
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Contato:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 14
          OnKeyDown = EdtCd_FornecedorKeyDown
        end
        object EdtNr_Pedido_Emitente: TLabeledEdit
          Left = 317
          Top = 87
          Width = 170
          Height = 19
          CharCase = ecUpperCase
          EditLabel.Width = 163
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Pedido do Fornecedor:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 15
        end
        object EdtDt_Emissao: TLabeledEdit
          Left = 181
          Top = 16
          Width = 70
          Height = 19
          TabStop = False
          Color = clSilver
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdtVl_Frete: TCurrencyEdit
          Tag = 1
          Left = 347
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 10
          OnChange = EdtPr_DescontoChange
        end
        object EdtVl_Seguro: TCurrencyEdit
          Tag = 1
          Left = 431
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 11
          OnChange = EdtPr_DescontoChange
        end
        object EdtVl_Outros: TCurrencyEdit
          Tag = 1
          Left = 516
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 12
          OnChange = EdtPr_DescontoChange
        end
        object DbGPrazo: TDBGrid
          Left = 588
          Top = 180
          Width = 129
          Height = 111
          DataSource = DsPrazo
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 22
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
              FieldName = 'Dp_Prazo'
              Width = 106
              Visible = True
            end>
        end
        object PnlPrazo: TPanel
          Left = 666
          Top = 146
          Width = 53
          Height = 27
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 23
          object ActToolBPrazo: TActionToolBar
            Left = 0
            Top = 0
            Width = 53
            Height = 26
            Cursor = crHandPoint
            ActionManager = ActManCadastro
            Caption = 'ActToolBPrazo'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 2
          Left = 4
          Top = 123
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 17
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtCd_FornecedorKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 77
          Top = 123
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
          TabOrder = 18
        end
        object EdtCd_Funcionario: TCurrencyEdit
          Tag = 3
          Left = 390
          Top = 123
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 19
          OnExit = EdtCd_FuncionarioExit
          OnKeyDown = EdtCd_FornecedorKeyDown
        end
        object EdtNm_Funcionario: TEdit
          Left = 453
          Top = 123
          Width = 267
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
          TabOrder = 20
        end
        object EdtNr_PrazoEntrega: TCurrencyEdit
          Tag = 3
          Left = 492
          Top = 87
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 16
        end
      end
      object TabSProdutos: TTabSheet
        Caption = '                         Produtos                         '
        ImageIndex = 1
        object Label17: TLabel
          Left = 4
          Top = 2
          Width = 99
          Height = 13
          Caption = 'Produtos da Compra:'
        end
        object DbTxtProduto: TDBText
          Left = 3
          Top = 330
          Width = 66
          Height = 13
          AutoSize = True
          DataField = 'Nm_Produto'
          DataSource = DsProduto
        end
        object LblTotal: TLabel
          Left = 456
          Top = 345
          Width = 238
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'LblTotal'
        end
        object DbTxtItem: TDBText
          Left = 3
          Top = 345
          Width = 49
          Height = 13
          AutoSize = True
          DataField = 'Dp_Item'
          DataSource = DsProduto
        end
        object DbGProduto: TDBGrid
          Left = 3
          Top = 16
          Width = 714
          Height = 308
          DataSource = DsProduto
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
              FieldName = 'cd_produto'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_produto_emitente'
              Title.Alignment = taRightJustify
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_produto'
              Width = 322
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sg_unidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qt_item'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_unitario'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
      end
    end
    object SctReport: TSctReport
      Left = 299
      Top = 259
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
      TabOrder = 4
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 72
      SLeft = -24
      SWidth = 883
      SHeight = 540
      MTop = 259
      MLeft = 299
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage1: TSctGrouppage
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.25
        BorderType = btNone
        Description = 'Pedido de Compra'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = PgHdCompra
        PageFoot = SctBand4
        DataSource = DsProduto
        Order = 1
        object SctLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel2: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel3: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel4: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel5: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar1: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel1
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar1: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel2
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReport
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCidade_Find.DsFind
        end
        object adodsdadoscd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosdt_emissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosmm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object adodsprodutocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutosg_unidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutovl_unitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutovl_totalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_compraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_compra'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDp_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Custo'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDp_DescontoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Desconto'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnr_compraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_compra'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnr_pedido_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_pedido_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnm_contatoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_contato'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_freteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_frete'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_seguroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_seguro'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_outrosVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_outros'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsPrazo
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsfilialNm_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_InscEstadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_enderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_endereco'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialnm_bairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_TelefoneVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_FaxVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fax'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_EMailVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_EMail'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsFornecedor
        end
        object adodsfornecedorNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_EmailVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Email'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNr_Insc_estadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_estadual'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsTransportador
        end
        object adodstransportadorCd_TransportadorVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Cd_Transportador'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNm_TransportadorVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNm_BairroVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorCd_CidadeVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Cd_Cidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_CepVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Cep'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_TelefoneVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_CelularVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Celular'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDs_EmailVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Email'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_CapacidadeVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Capacidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_PlacaVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Placa'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_InscEstadualVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DsTransportador
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNm_AbreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoPr_ICMSVar: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoPr_IPIVar: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDp_EmitenteVar: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 37
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 37
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 378
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 791
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object PgHdCompra: TSctBand
          Left = 0
          Top = 147
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'PgHdCompra'
          Updatelevel = SctLevel2
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 467
          Width = 791
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel18: TSctvarlabel
            Left = 0
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsprodutocd_produtoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 58
            Top = 1
            Width = 387
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsprodutoDp_ProdutoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 676
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutovl_totalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 607
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutovl_unitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 549
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutoqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 519
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutosg_unidadeVar
          end
          object SctVerticalDivider3: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider10: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 17
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 482
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoPr_ICMSVar
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.Digits = 2
          end
          object Sctvarlabel112: TSctvarlabel
            Left = 446
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoPr_IPIVar
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.Digits = 2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 500
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine6: TSctLine
            Left = 0
            Top = 1
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel20: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 659
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 706
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 535
          Width = 791
          Height = 58
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          Stretch = True
          OnBeforePrint = SctBand5BeforePrint
          object Sctvarlabel4: TSctvarlabel
            Left = 169
            Top = 3
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Pedido'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 270
            Top = 3
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosvl_compraVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarDesconto: TSctvarlabel
            Left = 361
            Top = 3
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Desconto:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 462
            Top = 3
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosDp_DescontoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarCusto: TSctvarlabel
            Left = 551
            Top = 3
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Custo:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 652
            Top = 3
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosDp_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 551
            Top = 40
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total a Pagar:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 652
            Top = 40
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctLine4: TSctLine
            Left = 557
            Top = 38
            Width = 182
            Height = 3
            AlignVertical = laTop
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 169
            Top = 20
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Frete:'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 270
            Top = 20
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosvl_freteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 361
            Top = 20
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Seguro:'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 462
            Top = 20
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosvl_seguroVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 551
            Top = 20
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Outros:'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 652
            Top = 20
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadosvl_outrosVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 57
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 57
          end
          object SctLine7: TSctLine
            Left = 0
            Top = 2
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object SctVarPrazo: TSctvarlabel
            Left = 0
            Top = 40
            Width = 409
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Forma de Pagamento:'
          end
        end
        object PgHdFilial: TSctSubBand
          Left = 0
          Top = 162
          Width = 791
          Height = 118
          Color = 16316664
          BandName = 'PgHdFilial'
          Updatelevel = SctLevel2
          Stretch = True
          Band = PgHdCompra
          Above = False
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 117
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 117
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 0
            Top = 2
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 34
            Top = 2
            Width = 61
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosdt_emissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            Caption = 'Data:'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 98
            Top = 2
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 153
            Top = 2
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar
            Caption = 'Data:'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 0
            Top = 18
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Empresa:'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 56
            Top = 18
            Width = 354
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNm_FilialVar
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 414
            Top = 18
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Nome Fantasia:'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 503
            Top = 18
            Width = 191
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNm_AbreviadoVar
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 0
            Top = 34
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 34
            Top = 34
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsfilialNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 145
            Top = 34
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 170
            Top = 34
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsfilialNr_InscEstadualVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 0
            Top = 50
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 52
            Top = 50
            Width = 344
            Height = 17
            Variable = adodsfilialDs_enderecoVar
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 491
            Top = 50
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 526
            Top = 50
            Width = 211
            Height = 17
            Variable = adodsfilialnm_bairroVar
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 0
            Top = 67
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 71
            Top = 67
            Width = 230
            Height = 17
            Variable = adodsfilialDs_ComplementoVar
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 303
            Top = 67
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 332
            Top = 67
            Width = 67
            Height = 17
            Variable = adodsfilialNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 402
            Top = 67
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 443
            Top = 67
            Width = 254
            Height = 17
            Variable = adodsfilialDp_CidadeVar
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 0
            Top = 84
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 51
            Top = 84
            Width = 98
            Height = 17
            Variable = adodsfilialNr_TelefoneVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 151
            Top = 84
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 183
            Top = 84
            Width = 98
            Height = 17
            Variable = adodsfilialNr_FaxVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 283
            Top = 84
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 317
            Top = 84
            Width = 379
            Height = 17
            Variable = adodsfilialDs_EMailVar
            DataFormat.SuppressNulls = True
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 0
            Width = 741
            Height = 7
            AlignVertical = laTop
          end
          object SctVarPedido: TSctvarlabel
            Left = 576
            Top = 2
            Width = 164
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pedido N'#186': 00000'
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 0
            Top = 100
            Width = 72
            Height = 17
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 71
            Top = 99
            Width = 664
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsdadosmm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 398
            Top = 50
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel128: TSctvarlabel
            Left = 443
            Top = 50
            Width = 47
            Height = 17
            Variable = adodsfilialDs_NumeroVar
          end
        end
        object PgHdProduto: TSctSubBand
          Left = 0
          Top = 431
          Width = 791
          Height = 21
          Color = 16316664
          BandName = 'PgHdProduto'
          Updatelevel = SctLevel2
          OnAfterPrint = PgHdProdutoAfterPrint
          Band = PgHdCompra
          Order = 3
          Above = False
          object Sctvarlabel48: TSctvarlabel
            Left = 3
            Top = 1
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 58
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 676
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 607
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 549
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 519
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 14
            Width = 741
            Height = 7
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 20
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 20
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 482
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Caption = 'ICMS'
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 446
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
        end
        object PgHdFornecedor: TSctSubBand
          Left = 0
          Top = 311
          Width = 791
          Height = 105
          ParentColor = True
          BandName = 'PgHdFornecedor'
          Updatelevel = SctLevel2
          Band = PgHdCompra
          Order = 2
          Above = False
          object Sctvarlabel61: TSctvarlabel
            Left = 0
            Top = 2
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Fornecedor:'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 72
            Top = 2
            Width = 487
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfornecedorDp_EmitenteVar
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 0
            Top = 18
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 34
            Top = 18
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsfornecedorNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 145
            Top = 18
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 170
            Top = 18
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsfornecedorNr_Insc_estadualVar
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 0
            Top = 34
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 50
            Top = 34
            Width = 344
            Height = 17
            Variable = adodsfornecedorDs_EnderecoVar
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 491
            Top = 34
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 526
            Top = 34
            Width = 211
            Height = 17
            Variable = adodsfornecedorNm_BairroVar
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 0
            Top = 51
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 71
            Top = 51
            Width = 230
            Height = 17
            Variable = adodsfornecedorDs_ComplementoVar
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 303
            Top = 51
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 332
            Top = 51
            Width = 67
            Height = 17
            Variable = adodsfornecedorNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 402
            Top = 51
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 443
            Top = 51
            Width = 254
            Height = 17
            Variable = adodsfornecedorDp_CidadeVar
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 0
            Top = 68
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 51
            Top = 68
            Width = 98
            Height = 17
            Variable = adodsfornecedorNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 151
            Top = 68
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 183
            Top = 68
            Width = 98
            Height = 17
            Variable = adodsfornecedorNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 283
            Top = 68
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 317
            Top = 68
            Width = 379
            Height = 17
            Variable = adodsfornecedorDs_EmailVar
            DataFormat.SuppressNulls = True
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 104
          end
          object SctVerticalDivider9: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 104
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 0
            Top = 84
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Contato:'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 51
            Top = 84
            Width = 470
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosnm_contatoVar
            DataFormat.SuppressNulls = True
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 99
            Width = 741
            Height = 7
          end
          object SctVarPedFornecedor: TSctvarlabel
            Left = 443
            Top = 2
            Width = 297
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pedido N'#186': 00000'
          end
          object Sctvarlabel138: TSctvarlabel
            Left = 443
            Top = 34
            Width = 47
            Height = 17
            Variable = adodsfornecedorDs_NumeroVar
          end
          object Sctvarlabel167: TSctvarlabel
            Left = 398
            Top = 34
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
        end
        object PgFtTransportador: TSctSubBand
          Left = 0
          Top = 608
          Width = 791
          Height = 87
          ParentColor = True
          BandName = 'PgFtTransportador'
          Updatelevel = SctLevel5
          Band = SctBand5
          Above = False
          object Sctvarlabel85: TSctvarlabel
            Left = 0
            Top = 2
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 87
            Top = 2
            Width = 487
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstransportadorNm_TransportadorVar
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 0
            Top = 18
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 34
            Top = 18
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 145
            Top = 18
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 170
            Top = 18
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorNr_InscEstadualVar
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 0
            Top = 34
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 50
            Top = 34
            Width = 361
            Height = 17
            Variable = adodstransportadorDs_EnderecoVar
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 417
            Top = 34
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 452
            Top = 34
            Width = 245
            Height = 17
            Variable = adodstransportadorNm_BairroVar
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 0
            Top = 51
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 71
            Top = 51
            Width = 230
            Height = 17
            Variable = adodstransportadorDs_ComplementoVar
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 303
            Top = 51
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 332
            Top = 51
            Width = 67
            Height = 17
            Variable = adodstransportadorNr_CepVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 402
            Top = 51
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 443
            Top = 51
            Width = 254
            Height = 17
            Variable = adodstransportadorDp_CidadeVar
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 0
            Top = 68
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 51
            Top = 68
            Width = 98
            Height = 17
            Variable = adodstransportadorNr_TelefoneVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 151
            Top = 68
            Width = 37
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 189
            Top = 68
            Width = 98
            Height = 17
            Variable = adodstransportadorNr_CelularVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 289
            Top = 68
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 323
            Top = 68
            Width = 379
            Height = 17
            Variable = adodstransportadorDs_EmailVar
            DataFormat.SuppressNulls = True
          end
          object SctVerticalDivider11: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 86
          end
          object SctVerticalDivider12: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 86
          end
        end
        object SctBand5Sub: TSctSubBand
          Left = 0
          Top = 710
          Width = 791
          Height = 116
          ParentColor = True
          BandName = 'SctBand5Sub'
          Updatelevel = SctLevel5
          Stretch = True
          Band = SctBand5
          Order = 1
          Above = False
          object SctImgAssinatura: TSctImageLabel
            Left = 48
            Top = 2
            Width = 190
            Height = 90
            Center = True
            Stretch = True
          end
          object SctVerticalDivider13: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 115
          end
          object SctVerticalDivider14: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 115
          end
          object SctLine9: TSctLine
            Left = 0
            Top = 108
            Width = 741
            Height = 7
          end
          object SctVarComprador: TSctvarlabel
            Left = 4
            Top = 89
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
          object SctLnVendedor: TSctLine
            Left = 4
            Top = 79
            Width = 279
            Height = 9
          end
        end
        object PgHdFilial_Img: TSctSubBand
          Left = 0
          Top = 20
          Width = 791
          Height = 58
          ParentColor = True
          BandName = 'PgHdFilial_Img'
          Updatelevel = SctLevel2
          Stretch = True
          Band = PgHdCompra
          Above = True
          object SctImgCabecalho: TSctImageLabel
            Left = 0
            Top = -9
            Width = 742
            Height = 66
            Center = True
          end
        end
        object PgHdCompra_1: TSctSubBand
          Left = 0
          Top = 93
          Width = 791
          Height = 39
          ParentColor = True
          BandName = 'PgHdCompra_1'
          Updatelevel = SctLevel2
          Band = PgHdCompra
          Order = 1
          Above = True
          object Sctvarlabel9: TSctvarlabel
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
            Caption = 'Pedido de Compra'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 642
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 675
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 639
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 675
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
        end
        object PgHdTraco: TSctSubBand
          Left = 0
          Top = 295
          Width = 791
          Height = 1
          ParentColor = True
          BandName = 'PgHdTraco'
          Updatelevel = SctLevel2
          Band = PgHdCompra
          Order = 1
          Above = False
          object SctLine5: TSctLine
            Left = 0
            Top = 0
            Width = 741
            Height = 1
            AlignVertical = laTop
          end
        end
      end
    end
    object SctRepCotacao: TSctReport
      Left = 387
      Top = 259
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
      TabOrder = 5
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 86
      SLeft = 12
      SWidth = 836
      SHeight = 463
      MTop = 259
      MLeft = 387
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage2: TSctGrouppage
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.25
        BorderType = btNone
        Description = 'Cota'#231#227'o de Pre'#231'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand2
        Detail = SctBand7
        Foot = SctBand9
        PageHead = PgHdCompra2
        PageFoot = SctBand8
        DataSource = DsProduto
        Order = 1
        object SctLevel6: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar2: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel6
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel7
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsReport
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmCidade_Find.DsFind
        end
        object SctDBVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsProduto
        end
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_compra'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Custo'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar14: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Desconto'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar15: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar16: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_compra'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar17: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_pedido_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar18: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_contato'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar20: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_frete'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar21: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_seguro'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar22: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_outros'
          DataSource = DsReport
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsPrazo
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFuncionario_Find.DsFind
        end
        object SctDBVar23: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar24: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar25: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar28: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar29: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar30: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar31: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fax'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar32: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_EMail'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar33: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsFornecedor
        end
        object SctDBVar34: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar35: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Email'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar38: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar39: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar40: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar41: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar42: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar43: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_estadual'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsTransportador
        end
        object SctDBVar44: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Cd_Transportador'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar45: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar46: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar47: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar48: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar49: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar50: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Cd_Cidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar51: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Cep'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar52: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar53: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Celular'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar54: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Email'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar55: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar56: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Capacidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar57: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar58: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_Placa'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar59: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DsTransportador
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar60: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar61: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar62: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar63: TSctDBVar
          Left = 29
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_NumeroVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDs_enderecoVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'Ds_endereco'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialnm_bairroVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'nm_bairro'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorNm_BairroVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfornecedorDs_NumeroVar1: TSctDBVar
          Left = 0
          Top = 62
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsFornecedor
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoDp_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 187
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 0
          Width = 791
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object PgHdCompra2: TSctBand
          Left = 0
          Top = 147
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'PgHdCompra2'
          Updatelevel = SctLevel7
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 467
          Width = 791
          Height = 32
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel113: TSctvarlabel
            Left = 0
            Top = 14
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = SctDBVar7
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 58
            Top = 14
            Width = 387
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsprodutoDp_ProdutoVar1
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 676
            Top = 14
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '_________'
          end
          object Sctvarlabel116: TSctvarlabel
            Left = 607
            Top = 14
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '_________'
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 549
            Top = 14
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar9
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 519
            Top = 14
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar8
          end
          object SctVerticalDivider15: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 31
          end
          object SctVerticalDivider16: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 31
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 482
            Top = 14
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.Digits = 2
            Caption = '_____'
          end
          object Sctvarlabel120: TSctvarlabel
            Left = 446
            Top = 14
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.Digits = 2
            Caption = '_____'
          end
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 514
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          object SctLine8: TSctLine
            Left = 0
            Top = 1
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel121: TSctvarlabel
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
            Variable = SctDBVar5
          end
          object Sctvarlabel122: TSctvarlabel
            Left = 659
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel123: TSctvarlabel
            Left = 706
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 549
          Width = 791
          Height = 44
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          Stretch = True
          OnBeforePrint = SctBand5BeforePrint
          object Sctvarlabel130: TSctvarlabel
            Left = 451
            Top = 16
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total a Pagar:'
          end
          object SctLine10: TSctLine
            Left = 557
            Top = 38
            Width = 182
            Height = 3
            AlignVertical = laTop
          end
          object SctVerticalDivider17: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 43
          end
          object SctVerticalDivider18: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 43
          end
          object SctLine11: TSctLine
            Left = 0
            Top = 2
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object SctVarPrazo2: TSctvarlabel
            Left = 0
            Top = 24
            Width = 409
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Forma de Pagamento:'
          end
        end
        object PgHdFilial2: TSctSubBand
          Left = 0
          Top = 162
          Width = 791
          Height = 118
          Color = 16316664
          BandName = 'PgHdFilial2'
          Updatelevel = SctLevel7
          Stretch = True
          Band = PgHdCompra2
          Above = False
          object SctVerticalDivider19: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 117
          end
          object SctVerticalDivider20: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 117
          end
          object Sctvarlabel139: TSctvarlabel
            Left = 0
            Top = 2
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Data:'
          end
          object Sctvarlabel140: TSctvarlabel
            Left = 34
            Top = 2
            Width = 61
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar3
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            Caption = 'Data:'
          end
          object Sctvarlabel141: TSctvarlabel
            Left = 98
            Top = 2
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel142: TSctvarlabel
            Left = 153
            Top = 2
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar6
            Caption = 'Data:'
          end
          object Sctvarlabel143: TSctvarlabel
            Left = 0
            Top = 18
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Empresa:'
          end
          object Sctvarlabel144: TSctvarlabel
            Left = 56
            Top = 18
            Width = 354
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar23
          end
          object Sctvarlabel145: TSctvarlabel
            Left = 414
            Top = 18
            Width = 88
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Nome Fantasia:'
          end
          object Sctvarlabel146: TSctvarlabel
            Left = 503
            Top = 18
            Width = 191
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar60
          end
          object Sctvarlabel147: TSctvarlabel
            Left = 0
            Top = 34
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel148: TSctvarlabel
            Left = 34
            Top = 34
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar24
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel149: TSctvarlabel
            Left = 145
            Top = 34
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel150: TSctvarlabel
            Left = 170
            Top = 34
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar25
          end
          object Sctvarlabel151: TSctvarlabel
            Left = 0
            Top = 50
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel155: TSctvarlabel
            Left = 0
            Top = 67
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel156: TSctvarlabel
            Left = 71
            Top = 67
            Width = 230
            Height = 17
            Variable = SctDBVar28
          end
          object Sctvarlabel157: TSctvarlabel
            Left = 303
            Top = 67
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel158: TSctvarlabel
            Left = 332
            Top = 67
            Width = 67
            Height = 17
            Variable = SctDBVar29
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel159: TSctvarlabel
            Left = 402
            Top = 67
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel160: TSctvarlabel
            Left = 443
            Top = 67
            Width = 254
            Height = 17
            Variable = SctDBVar33
          end
          object Sctvarlabel161: TSctvarlabel
            Left = 0
            Top = 84
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel162: TSctvarlabel
            Left = 51
            Top = 84
            Width = 98
            Height = 17
            Variable = SctDBVar30
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel163: TSctvarlabel
            Left = 151
            Top = 84
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel164: TSctvarlabel
            Left = 183
            Top = 84
            Width = 98
            Height = 17
            Variable = SctDBVar31
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel165: TSctvarlabel
            Left = 283
            Top = 84
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel166: TSctvarlabel
            Left = 317
            Top = 84
            Width = 379
            Height = 17
            Variable = SctDBVar32
            DataFormat.SuppressNulls = True
          end
          object SctLine12: TSctLine
            Left = 0
            Top = 0
            Width = 741
            Height = 7
            AlignVertical = laTop
          end
          object SctVarPedido2: TSctvarlabel
            Left = 576
            Top = 2
            Width = 164
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pedido N'#186': 00000'
          end
          object Sctvarlabel168: TSctvarlabel
            Left = 0
            Top = 100
            Width = 72
            Height = 17
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel169: TSctvarlabel
            Left = 71
            Top = 99
            Width = 664
            Height = 17
            WrapText = True
            Stretch = True
            Variable = SctDBVar4
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel152: TSctvarlabel
            Left = 52
            Top = 50
            Width = 344
            Height = 17
            Variable = adodsfilialDs_enderecoVar1
          end
          object Sctvarlabel153: TSctvarlabel
            Left = 491
            Top = 50
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel154: TSctvarlabel
            Left = 526
            Top = 50
            Width = 211
            Height = 17
            Variable = adodsfilialnm_bairroVar1
          end
          object Sctvarlabel202: TSctvarlabel
            Left = 398
            Top = 50
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel225: TSctvarlabel
            Left = 443
            Top = 50
            Width = 47
            Height = 17
            Variable = adodsfilialDs_NumeroVar1
          end
        end
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 431
          Width = 791
          Height = 21
          Color = 16316664
          BandName = 'PgHdProduto'
          Updatelevel = SctLevel7
          Band = PgHdCompra2
          Order = 3
          Above = False
          object Sctvarlabel170: TSctvarlabel
            Left = 3
            Top = 1
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel171: TSctvarlabel
            Left = 58
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel172: TSctvarlabel
            Left = 676
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel173: TSctvarlabel
            Left = 607
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel174: TSctvarlabel
            Left = 549
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel175: TSctvarlabel
            Left = 519
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object SctLine13: TSctLine
            Left = 0
            Top = 14
            Width = 741
            Height = 7
          end
          object SctVerticalDivider21: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 20
          end
          object SctVerticalDivider22: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 20
          end
          object Sctvarlabel176: TSctvarlabel
            Left = 482
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Caption = 'ICMS'
          end
          object Sctvarlabel177: TSctvarlabel
            Left = 446
            Top = 1
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
        end
        object PgHdFornecedor2: TSctSubBand
          Left = 0
          Top = 311
          Width = 791
          Height = 105
          ParentColor = True
          BandName = 'PgHdFornecedor2'
          Updatelevel = SctLevel7
          Band = PgHdCompra2
          Order = 2
          Above = False
          object Sctvarlabel178: TSctvarlabel
            Left = 0
            Top = 2
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Fornecedor:'
          end
          object Sctvarlabel179: TSctvarlabel
            Left = 72
            Top = 2
            Width = 487
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar63
          end
          object Sctvarlabel180: TSctvarlabel
            Left = 0
            Top = 18
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel181: TSctvarlabel
            Left = 34
            Top = 18
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar34
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel182: TSctvarlabel
            Left = 145
            Top = 18
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel183: TSctvarlabel
            Left = 170
            Top = 18
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar43
          end
          object Sctvarlabel184: TSctvarlabel
            Left = 0
            Top = 34
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel188: TSctvarlabel
            Left = 0
            Top = 51
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel189: TSctvarlabel
            Left = 71
            Top = 51
            Width = 230
            Height = 17
            Variable = SctDBVar38
          end
          object Sctvarlabel190: TSctvarlabel
            Left = 303
            Top = 51
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel191: TSctvarlabel
            Left = 332
            Top = 51
            Width = 67
            Height = 17
            Variable = SctDBVar39
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel192: TSctvarlabel
            Left = 402
            Top = 51
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel193: TSctvarlabel
            Left = 443
            Top = 51
            Width = 254
            Height = 17
            Variable = SctDBVar40
          end
          object Sctvarlabel194: TSctvarlabel
            Left = 0
            Top = 68
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel195: TSctvarlabel
            Left = 51
            Top = 68
            Width = 98
            Height = 17
            Variable = SctDBVar41
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel196: TSctvarlabel
            Left = 151
            Top = 68
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel197: TSctvarlabel
            Left = 183
            Top = 68
            Width = 98
            Height = 17
            Variable = SctDBVar42
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel198: TSctvarlabel
            Left = 283
            Top = 68
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel199: TSctvarlabel
            Left = 317
            Top = 68
            Width = 379
            Height = 17
            Variable = SctDBVar35
            DataFormat.SuppressNulls = True
          end
          object SctVerticalDivider23: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 104
          end
          object SctVerticalDivider24: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 104
          end
          object Sctvarlabel200: TSctvarlabel
            Left = 0
            Top = 84
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Contato:'
          end
          object Sctvarlabel201: TSctvarlabel
            Left = 51
            Top = 84
            Width = 470
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar18
            DataFormat.SuppressNulls = True
          end
          object SctLine14: TSctLine
            Left = 0
            Top = 99
            Width = 741
            Height = 7
          end
          object SctVarPedFornecedor2: TSctvarlabel
            Left = 443
            Top = 2
            Width = 297
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pedido N'#186': 00000'
          end
          object Sctvarlabel185: TSctvarlabel
            Left = 52
            Top = 34
            Width = 344
            Height = 17
            Variable = adodsfornecedorDs_EnderecoVar1
          end
          object Sctvarlabel186: TSctvarlabel
            Left = 491
            Top = 34
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel187: TSctvarlabel
            Left = 526
            Top = 34
            Width = 211
            Height = 17
            Variable = adodsfornecedorNm_BairroVar1
          end
          object Sctvarlabel231: TSctvarlabel
            Left = 443
            Top = 34
            Width = 47
            Height = 17
            Variable = adodsfornecedorDs_NumeroVar1
          end
          object Sctvarlabel232: TSctvarlabel
            Left = 398
            Top = 34
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
        end
        object PgFtTransportador2: TSctSubBand
          Left = 0
          Top = 608
          Width = 791
          Height = 87
          ParentColor = True
          BandName = 'PgFtTransportador2'
          Updatelevel = SctLevel10
          Band = SctBand9
          Above = False
          object Sctvarlabel203: TSctvarlabel
            Left = 0
            Top = 2
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel204: TSctvarlabel
            Left = 87
            Top = 2
            Width = 487
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar45
          end
          object Sctvarlabel205: TSctvarlabel
            Left = 0
            Top = 18
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ:'
          end
          object Sctvarlabel206: TSctvarlabel
            Left = 34
            Top = 18
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar46
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel207: TSctvarlabel
            Left = 145
            Top = 18
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'I. E.:'
          end
          object Sctvarlabel208: TSctvarlabel
            Left = 170
            Top = 18
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar59
          end
          object Sctvarlabel209: TSctvarlabel
            Left = 0
            Top = 34
            Width = 51
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel210: TSctvarlabel
            Left = 50
            Top = 34
            Width = 361
            Height = 17
            Variable = SctDBVar47
          end
          object Sctvarlabel211: TSctvarlabel
            Left = 417
            Top = 34
            Width = 34
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel212: TSctvarlabel
            Left = 452
            Top = 34
            Width = 245
            Height = 17
            Variable = SctDBVar48
          end
          object Sctvarlabel213: TSctvarlabel
            Left = 0
            Top = 51
            Width = 72
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel214: TSctvarlabel
            Left = 71
            Top = 51
            Width = 230
            Height = 17
            Variable = SctDBVar49
          end
          object Sctvarlabel215: TSctvarlabel
            Left = 303
            Top = 51
            Width = 27
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel216: TSctvarlabel
            Left = 332
            Top = 51
            Width = 67
            Height = 17
            Variable = SctDBVar51
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel217: TSctvarlabel
            Left = 402
            Top = 51
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel218: TSctvarlabel
            Left = 443
            Top = 51
            Width = 254
            Height = 17
            Variable = SctDBVar57
          end
          object Sctvarlabel219: TSctvarlabel
            Left = 0
            Top = 68
            Width = 49
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel220: TSctvarlabel
            Left = 51
            Top = 68
            Width = 98
            Height = 17
            Variable = SctDBVar52
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel221: TSctvarlabel
            Left = 151
            Top = 68
            Width = 37
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel222: TSctvarlabel
            Left = 189
            Top = 68
            Width = 98
            Height = 17
            Variable = SctDBVar53
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel223: TSctvarlabel
            Left = 289
            Top = 68
            Width = 35
            Height = 17
            Caption = 'E-Mail:'
          end
          object Sctvarlabel224: TSctvarlabel
            Left = 323
            Top = 68
            Width = 379
            Height = 17
            Variable = SctDBVar54
            DataFormat.SuppressNulls = True
          end
          object SctVerticalDivider25: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 86
          end
          object SctVerticalDivider26: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 86
          end
        end
        object SctSubBand5: TSctSubBand
          Left = 0
          Top = 710
          Width = 791
          Height = 116
          ParentColor = True
          BandName = 'SctBand5Sub'
          Updatelevel = SctLevel10
          Stretch = True
          Band = SctBand9
          Order = 1
          Above = False
          object SctImgAssinatura2: TSctImageLabel
            Left = 48
            Top = 2
            Width = 190
            Height = 90
            Center = True
            Stretch = True
          end
          object SctVerticalDivider27: TSctVerticalDivider
            Left = 741
            Top = 1
            Width = 2
            Height = 115
          end
          object SctVerticalDivider28: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 115
          end
          object SctLine15: TSctLine
            Left = 0
            Top = 108
            Width = 741
            Height = 7
          end
          object SctVarComprador2: TSctvarlabel
            Left = 4
            Top = 89
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
          object SctLine16: TSctLine
            Left = 4
            Top = 79
            Width = 279
            Height = 9
          end
        end
        object PgHdFilial_Img2: TSctSubBand
          Left = 0
          Top = 20
          Width = 791
          Height = 58
          ParentColor = True
          BandName = 'PgHdFilial_Img2'
          Updatelevel = SctLevel7
          Stretch = True
          Band = PgHdCompra2
          Above = True
          object SctImgCabecalho2: TSctImageLabel
            Left = 0
            Top = -9
            Width = 742
            Height = 66
            Center = True
          end
        end
        object PgHdCompra_2: TSctSubBand
          Left = 0
          Top = 93
          Width = 791
          Height = 39
          ParentColor = True
          BandName = 'PgHdCompra_2'
          Updatelevel = SctLevel7
          Band = PgHdCompra2
          Order = 1
          Above = True
          object Sctvarlabel226: TSctvarlabel
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
            Caption = 'Pedido de Compra'
          end
          object Sctvarlabel227: TSctvarlabel
            Left = 642
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel228: TSctvarlabel
            Left = 675
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel229: TSctvarlabel
            Left = 639
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel230: TSctvarlabel
            Left = 675
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
        end
        object SctSubBand8: TSctSubBand
          Left = 0
          Top = 295
          Width = 791
          Height = 1
          ParentColor = True
          BandName = 'PgHdTraco'
          Updatelevel = SctLevel7
          Band = PgHdCompra2
          Order = 1
          Above = False
          object SctLine17: TSctLine
            Left = 0
            Top = 0
            Width = 741
            Height = 1
            AlignVertical = laTop
          end
        end
      end
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
            Items = <
              item
                Action = ActItens
                Caption = '&Incluir itens por sele'#231#227'o...'
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
                Action = ActCotacao
                Caption = '&Cota'#231#227'o...'
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Items = <
              item
                Action = ActEstoqueMinimo
                ImageIndex = 35
              end>
            Action = ActOrcamento
            ImageIndex = 8
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
            Visible = False
            Action = ActGerar
            ImageIndex = 8
            ShortCut = 121
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActPrazoIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActPrazoDel
            ImageIndex = 19
            ShortCut = 16500
          end>
        ActionBar = ActToolBPrazo
      end>
    Images = FrmMain.ImgLstMenu
    Left = 615
    Top = 20
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
    object ActItens: TAction
      Category = '2-Database'
      Caption = 'Incluir itens por sele'#231#227'o...'
      ImageIndex = 16
      OnExecute = ActItensExecute
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
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActCotacao: TAction
      Tag = 2
      Category = '2-Database'
      Caption = 'Cota'#231#227'o...'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
    object ActConfirm: TAction
      Category = '2-Database'
      Hint = 'Confirmar Compra'
      ImageIndex = 22
      ShortCut = 118
      OnExecute = ActConfirmExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar da Compra'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar o Pedido para "Aberto"'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActGerar: TAction
      Category = '2-Database'
      Hint = 'Gerar o Arquivo de Pedido'
      ImageIndex = 8
      ShortCut = 121
      Visible = False
      OnExecute = ActGerarExecute
    end
    object ActPrazoIns: TAction
      Category = '2-Database'
      Hint = 'Incluir Prazo'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActPrazoInsExecute
    end
    object ActPrazoDel: TAction
      Category = '2-Database'
      Hint = 'Excluir Prazo'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActPrazoDelExecute
    end
    object ActOrcamento: TAction
      Category = '2-Database'
      Hint = 'Itens do Or'#231'amento'
      ImageIndex = 8
      OnExecute = ActOrcamentoExecute
    end
    object ActEstoqueMinimo: TAction
      Category = '2-Database'
      Caption = 'Produtos com Estoque M'#237'nimo'
      ImageIndex = 35
      OnExecute = ActEstoqueMinimoExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Compra, C.Dt_Emissao, C.St_Compra, C.Cd_Emitente,'#13#10'  E.Nm_Emitente, C.Nr_Pedido_Emitente, C.Nm_Contato, C.Vl_Compra,'#13#10'  C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo, C.Mm_Observacao,'#13#10'  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros, C.Cd_Transportador, T.Nm_Transportador,'#13#10'  C.Cd_Funcionario, F.Nm_Funcionario, F.Im_Assinatura, C.Nr_PrazoEntrega'#13#10#13#10'from'#13#10'  Compra C'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = C.Cd_Transportador'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = C.Cd_Funcionario'#13#10#13#10'where'#13#10'  C.Cd_Filial = :Cd_Filial and'#13#10'  C.Nr_Compra = :Nr_Compra'
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
        Name = 'Nr_Compra'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 126
    Top = 339
    object ADODsDadoscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDadosnr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosst_compra: TStringField
      FieldName = 'st_compra'
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
    object ADODsDadosnr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsDadosnm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsDadosvl_compra: TBCDField
      FieldName = 'vl_compra'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsDadosmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsDadosVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsDadosDp_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Custo'
      Calculated = True
    end
    object ADODsDadosDp_Desconto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Desconto'
      Calculated = True
    end
    object ADODsDadosvl_frete: TBCDField
      FieldName = 'vl_frete'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_seguro: TBCDField
      FieldName = 'vl_seguro'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_outros: TBCDField
      FieldName = 'vl_outros'
      Precision = 12
      Size = 2
    end
    object ADODsDadosCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsDadosNm_Transportador: TStringField
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsDadosCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsDadosNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsDadosIm_Assinatura: TBlobField
      FieldName = 'Im_Assinatura'
    end
    object ADODsDadosNr_PrazoEntrega: TSmallintField
      FieldName = 'Nr_PrazoEntrega'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Compra( Cd_Filial, Nr_Compra, Dt_Emissao, St_Compra, Cd_Emitente,'
      '  Nr_Pedido_Emitente, Nm_Contato, Pr_Desconto, Vl_Desconto,'
      '  Pr_Custo, Vl_Custo, Mm_Observacao, Vl_Frete, Vl_Seguro, Vl_Outros,'
      '  Cd_Transportador, Cd_Funcionario, Nr_PrazoEntrega )'
      'values( :Cd_Filial, :Nr_Compra, :Dt_Emissao, ''''1'''', :Cd_Emitente,'
      '  :Nr_Pedido_Emitente, :Nm_Contato, :Pr_Desconto, :Vl_Desconto, :Pr_Custo,'
      '  :Vl_Custo, :Mm_Observacao, :Vl_Frete, :Vl_Seguro, :Vl_Outros,'
      '  :Cd_Transportador, :Cd_Funcionario, :Nr_PrazoEntrega )'
      ''
    )
    SQLUpdate.Strings = (
      'update'
      '  Compra'
      ''
      'set'
      '  Cd_Emitente        = :Cd_Emitente,'
      '  Nr_Pedido_Emitente = :Nr_Pedido_Emitente,'
      '  Nm_Contato         = :Nm_Contato,'
      '  Pr_Desconto        = :Pr_Desconto,'
      '  Vl_Desconto        = :Vl_Desconto,'
      '  Pr_Custo           = :Pr_Custo,'
      '  Vl_Custo           = :Vl_Custo,'
      '  Vl_Frete           = :Vl_Frete,'
      '  Vl_Seguro          = :Vl_Seguro,'
      '  Vl_Outros          = :Vl_Outros,'
      '  Mm_Observacao      = :Mm_Observacao,'
      '  Cd_Transportador   = :Cd_Transportador,'
      '  Cd_Funcionario     = :Cd_Funcionario,'
      '  Nr_PrazoEntrega    = :Nr_PrazoEntrega'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLOther0.Strings = (
      'update'
      '  Compra'
      ''
      'set'
      '  St_Compra = :St_Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLOther1.Strings = (
      '-- Excluir item de compra'
      'delete from'
      '  Compra_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther2.Strings = (
      '-- Atualiza a situa'#231#227'o da compra'
      'update'
      '  Compra'
      ''
      'set'
      '  Vl_Compra = :Vl_Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLOther3.Strings = (
      '-- Zera a quantidade recebida'
      'update'
      '  Compra_Item'
      ''
      'set'
      '  Qt_Recebida = 0'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLOther4.Strings = (
      'delete from'
      '  Compra_Prazo'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Nr_Prazo  = :Nr_Prazo'
    )
    Left = 156
    Top = 339
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Compra'#13#10#13#10'from'#13#10'  Compra'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Compra'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Compra ) + 1 as Nr_Compra'
      ''
      'from'
      '  Compra A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Compra'
      ''
      'from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Compra'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Compra'
      ''
      'from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Compra < :Nr_Compra'
      ''
      'order by'
      '  Nr_Compra desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Compra'
      ''
      'from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra > :Nr_Compra'
      ''
      'order by'
      '  Nr_Compra'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Compra'
      ''
      'from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Compra desc'
    )
    Left = 186
    Top = 339
    object ADODsNavegarnr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsDados
    Left = 98
    Top = 339
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,'#13#10'  A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente, B.Nm_Produto, A.Nm_Produto as Nm_ProdChange,'#13#10'  A.Vl_Unitario * A.Qt_Item as Vl_Total, A.Qt_Recebida, A.Pr_ICMS, A.Pr_IPI,'#13#10'  B.Cd_Fabricante  '#13#10#13#10'from'#13#10'  Compra_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto = A.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Compra = :Nr_Compra'#13#10#13#10'order by'#13#10'  A.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 247
    Top = 339
    object ADODsProdutonr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutosg_unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutosg_estoque: TStringField
      FieldName = 'sg_estoque'
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
      DisplayFormat = '#,##0.00#'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsProdutofl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutocd_produto_emitente: TStringField
      DisplayLabel = 'C'#243'digo no Fornecedor'
      FieldName = 'cd_produto_emitente'
    end
    object ADODsProdutonm_prodchange: TStringField
      FieldName = 'nm_prodchange'
      Size = 120
    end
    object ADODsProdutoDp_Item: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Item'
      Size = 150
      Calculated = True
    end
    object ADODsProdutoqt_recebida: TBCDField
      FieldName = 'qt_recebida'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 9
      Size = 3
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 9
      Size = 3
    end
    object ADODsProdutoCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsProdutoDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 145
      Calculated = True
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 217
    Top = 339
  end
  object DsPrazo: TDataSource
    DataSet = ADODsPrazo
    Left = 281
    Top = 340
  end
  object ADODsPrazo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsPrazoCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Compra, Nr_Prazo'#13#10#13#10'from'#13#10'  Compra_Prazo'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra'#13#10#13#10'order by'#13#10'  Nr_Prazo'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 311
    Top = 340
    object ADODsPrazocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsPrazonr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsPrazonr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsPrazoDp_Prazo: TStringField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Prazo'
      Size = 15
      Calculated = True
    end
  end
  object DsFornecedor: TDataSource
    DataSet = ADODsFornecedor
    Left = 352
    Top = 344
  end
  object ADODsFornecedor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  E.Nm_Emitente, E.Nr_Documento, E.Ds_Email, EE.Cd_Emitente, EE.Nr_Endereco,'#13#10'  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado  as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_FAX, E.Nr_Insc_Estadual,'#13#10'  Convert( VarChar( 7 ), E.Cd_Emitente ) + '''' - '''' + E.Nm_Emitente as Dp_Emitente,'#13#10'  EE.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 380
    Top = 344
    object ADODsFornecedorNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFornecedorNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsFornecedorDs_Email: TStringField
      FieldName = 'Ds_Email'
      Size = 100
    end
    object ADODsFornecedorCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFornecedorNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsFornecedorDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsFornecedorNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsFornecedorDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsFornecedorNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsFornecedorCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsFornecedorDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsFornecedorNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsFornecedorNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 10
    end
    object ADODsFornecedorNr_Insc_estadual: TStringField
      FieldName = 'Nr_Insc_estadual'
    end
    object ADODsFornecedorDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 60
    end
    object ADODsFornecedorDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object ADODsTransportador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,'#13#10'  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,'#13#10'  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  T.Nr_Placa, T.Nr_InscEstadual '#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Cd_Transportador = :Cd_Transportador'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 439
    Top = 344
    object ADODsTransportadorCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsTransportadorNm_Transportador: TStringField
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsTransportadorNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsTransportadorDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsTransportadorNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsTransportadorDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsTransportadorCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsTransportadorNr_Cep: TStringField
      FieldName = 'Nr_Cep'
      FixedChar = True
      Size = 8
    end
    object ADODsTransportadorNr_Telefone: TStringField
      FieldName = 'Nr_Telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsTransportadorNr_Celular: TStringField
      FieldName = 'Nr_Celular'
      FixedChar = True
      Size = 10
    end
    object ADODsTransportadorDs_Email: TStringField
      FieldName = 'Ds_Email'
      Size = 50
    end
    object ADODsTransportadorMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsTransportadorNr_Capacidade: TBCDField
      FieldName = 'Nr_Capacidade'
      Precision = 12
      Size = 3
    end
    object ADODsTransportadorDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsTransportadorNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      FixedChar = True
      Size = 7
    end
    object ADODsTransportadorNr_InscEstadual: TStringField
      FieldName = 'Nr_InscEstadual'
      Size = 18
    end
  end
  object DsTransportador: TDataSource
    DataSet = ADODsTransportador
    Left = 411
    Top = 344
  end
end
