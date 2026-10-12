object FrmOrcamento_Descritivo: TFrmOrcamento_Descritivo
  Left = 265
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amento Descritivo'
  ClientHeight = 488
  ClientWidth = 882
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 488
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 861
    Height = 488
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 27
      Width = 38
      Height = 13
      Caption = 'Item N'#186':'
      Transparent = True
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 456
      Width = 852
      Height = 5
      Shape = bsTopLine
    end
    object Bevel1: TBevel
      Left = 6
      Top = 249
      Width = 344
      Height = 203
      Shape = bsFrame
    end
    object ImgItem: TImage
      Left = 8
      Top = 251
      Width = 338
      Height = 197
      Center = True
    end
    object Label4: TLabel
      Left = 221
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 292
      Top = 27
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 370
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label2: TLabel
      Left = 5
      Top = 69
      Width = 89
      Height = 13
      Caption = 'Descri'#231#227'o do Item:'
    end
    object Label3: TLabel
      Left = 6
      Top = 235
      Width = 77
      Height = 13
      Caption = 'Imagem do item:'
    end
    object LblTotal: TLabel
      Left = 5
      Top = 459
      Width = 518
      Height = 26
      AutoSize = False
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object SbImportar: TSpeedButton
      Left = 821
      Top = 60
      Width = 23
      Height = 21
      Hint = 'Importar Descri'#231#227'o dos Itens do Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1338 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbImportarClick
    end
    object Label6: TLabel
      Left = 48
      Top = 27
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 859
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 7
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 859
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 859
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
      Left = 687
      Top = 460
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 773
      Top = 460
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Item: TCurrencyEdit
      Left = 5
      Top = 42
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 221
      Top = 42
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Item: TCurrencyEdit
      Left = 292
      Top = 42
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 2
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 370
      Top = 42
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
      TabOrder = 3
    end
    object MmItem: TMemo
      Left = 6
      Top = 83
      Width = 843
      Height = 150
      Lines.Strings = (
        'Mm_Item'
      )
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object SctReport: TSctReport
      Left = 606
      Top = 35
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
      TabOrder = 8
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 60
      SLeft = 6
      SWidth = 836
      SHeight = 664
      MTop = 35
      MLeft = 606
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage1: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 27
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.25
        PageSetup.TopMargin = 0.4999999999999999
        PageSetup.BottomMargin = 0.4999999999999999
        BorderType = btNone
        Description = 'Or'#231'amento Descritivo'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = SctBand3
        Foot = RepFtBdVendedor
        PageHead = PgHdFilial
        PageFoot = SctBand4
        DataSource = DsReport
        Order = 1
        object SctLevel1: TSctLevel
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel2: TSctLevel
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel3: TSctLevel
          Left = 0
          Top = -27
          Width = 0
          Height = 0
        end
        object SctLevel4: TSctLevel
          Left = 0
          Top = -27
          Width = 0
          Height = 0
        end
        object SctLevel5: TSctLevel
          Left = 0
          Top = -27
          Width = 0
          Height = 0
        end
        object SctDateTimeVar1: TSctDateTimeVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          UpdateLevel = SctLevel1
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar1: TSctPageVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          UpdateLevel = SctLevel2
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDados
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsEndView
        end
        object adodsendviewDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNm_BairroVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_CEPVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDp_CidadeVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_FAXVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = -27
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsOrcamento
        end
        object adodsorcamentoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_FormaPagtoVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'Dp_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Insc_EstadualVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_documentoVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 61
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReport
        end
        object adodsreportNr_ItemVar: TSctDBVar
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_ItemVar: TSctDBVar
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          DataField = 'Ds_Item'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_ItemVar: TSctDBVar
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_ItemVar: TSctDBVar
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          DataField = 'Vl_Item'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_TotalVar: TSctDBVar
          Left = 0
          Top = 90
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_DescritivoVar: TSctDBVar
          Left = 0
          Top = 81
          Width = 0
          Height = 0
          DataField = 'Vl_Descritivo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_IdentidadeVar: TSctDBVar
          Left = 0
          Top = 81
          Width = 0
          Height = 0
          DataField = 'Nr_Identidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonm_contatoVar: TSctDBVar
          Left = 0
          Top = -2
          Width = 0
          Height = 0
          DataField = 'nm_contato'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialMm_RodapeVar: TSctDBVar
          Left = 0
          Top = 86
          Width = 0
          Height = 0
          DataField = 'Mm_Rodape'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsprodutocd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonr_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutosg_unidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutovl_unitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutofl_confirmadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_confirmado'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_estoque'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutopr_margemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_margem'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_agregadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_agregado'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutopr_reducaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_reducao'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutofl_stbVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_stb'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutosg_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonm_prodestoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_prodestoque'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutosg_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutops_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ps_produto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonm_abreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_abreviado'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutofl_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_produto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutopr_vendedorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_vendedor'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoNr_LoteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Lote'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoDt_FabricacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fabricacao'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoDt_ValidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Validade'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoFl_LoteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Lote'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoIm_SubProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Im_SubProduto'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoFl_PerecivelVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Perecivel'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectcd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectnm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectsg_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectvl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectvl_promocaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_promocao'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectcd_fabricanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_fabricante'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectcd_barraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_barra'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectqt_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_estoque'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectfl_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_produto'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectFl_LoteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Lote'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectVl_TabelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Tabela'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectTp_PrecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Preco'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectNm_LaboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Laboratorio'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectFl_AtivoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Ativo'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoDs_AmbienteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Ambiente'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoFl_MedidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Medida'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoFl_MolduraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Moldura'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutoxPedVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'xPed'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodutonItemPedVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nItemPed'
          DataSource = FrmOrcamento.DsProduto
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsprodselectFl_MolduraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Moldura'
          DataSource = FrmOrcamento.DsProdSelect
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -27
          Width = 791
          Height = 6
          ParentColor = True
          BandName = 'ReportHeaderBand'
          Updatelevel = SctLevel1
          Visible = False
        end
        object PgHdFilial: TSctBand
          Left = 0
          Top = 65
          Width = 791
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdFilial'
          Updatelevel = SctLevel2
          BorderType = btSingle
          object Sctvarlabel143: TSctvarlabel
            Left = 1
            Top = 2
            Width = 375
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsfilialDp_FilialVar
          end
          object SctEndereco: TSctvarlabel
            Left = 430
            Top = 1
            Width = 310
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = '<<< Endere'#231'o >>>'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 385
          Width = 791
          Height = 19
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel13: TSctvarlabel
            Left = 652
            Top = 1
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Variable = adodsreportVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 502
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Variable = adodsreportQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 4
            Top = 1
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Variable = adodsreportNr_ItemVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 37
            Top = 1
            Width = 424
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsreportDs_ItemVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 571
            Top = 1
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Variable = adodsreportVl_ItemVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 36
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 498
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider9: TSctVerticalDivider
            Left = 569
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider10: TSctVerticalDivider
            Left = 648
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider12: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider11: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider16: TSctVerticalDivider
            Left = 464
            Top = 1
            Width = 2
            Height = 18
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 467
            Top = 2
            Width = 30
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = adodsreportSg_UnidadeVar
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 472
          Width = 791
          Height = 54
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine1: TSctLine
            Left = 0
            Top = 34
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 2
            Top = 35
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
          object Sctvarlabel66: TSctvarlabel
            Left = 658
            Top = 35
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 705
            Top = 35
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario: TSctvarlabel
            Left = 400
            Top = 35
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object RepFtBdVendedor: TSctBand
          Left = 0
          Top = 541
          Width = 791
          Height = 65
          ParentColor = True
          BandName = 'RepFtBdVendedor'
          Updatelevel = SctLevel5
          BorderType = btSingle
          object SctTxtTotal: TSctvarlabel
            Left = 264
            Top = 1
            Width = 473
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
            Caption = 'Total'
          end
          object SctVarVendedor: TSctvarlabel
            Left = 4
            Top = 45
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
            Top = 35
            Width = 279
            Height = 9
          end
          object SctVarContato: TSctvarlabel
            Left = 455
            Top = 46
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsorcamentonm_contatoVar
          end
          object SctLnContato: TSctLine
            Left = 455
            Top = 35
            Width = 279
            Height = 9
          end
          object SctImgAssinatura: TSctImageLabel
            Left = 48
            Top = 2
            Width = 190
            Height = 90
            Center = True
          end
        end
        object PgHdEndereco: TSctSubBand
          Left = 0
          Top = 212
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'PgHdEndereco'
          Updatelevel = SctLevel2
          Visible = False
          Stretch = True
          BorderType = btSingle
          OnAfterPrint = PgHdEnderecoAfterPrint
          Band = PgHdFilial
          Order = 1
          Above = False
          object Sctvarlabel84: TSctvarlabel
            Left = 1
            Top = 1
            Width = 53
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 55
            Top = 1
            Width = 338
            Height = 17
            Variable = adodsendviewDs_EnderecoVar
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 473
            Top = 1
            Width = 35
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 509
            Top = 1
            Width = 226
            Height = 17
            Variable = adodsendviewNm_BairroVar
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 1
            Top = 18
            Width = 70
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 73
            Top = 18
            Width = 230
            Height = 17
            Variable = adodsendviewDs_ComplementoVar
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 323
            Top = 18
            Width = 25
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 349
            Top = 18
            Width = 67
            Height = 17
            Variable = adodsendviewNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 418
            Top = 18
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 458
            Top = 18
            Width = 240
            Height = 17
            Variable = adodsendviewDp_CidadeVar
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 1
            Top = 35
            Width = 54
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 56
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 144
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 230
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 316
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 348
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 1
            Top = 52
            Width = 192
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es /Ponto de Refer'#234'ncia:'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 176
            Top = 52
            Width = 522
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsendviewMm_ObservacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 435
            Top = 35
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 477
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 565
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 417
            Top = 1
            Width = 55
            Height = 17
            Variable = adodsendviewDs_NumeroVar
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 394
            Top = 1
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
        end
        object PgHdFilialSub: TSctSubBand
          Left = 0
          Top = 118
          Width = 791
          Height = 79
          ParentColor = True
          BandName = 'PgHdFilialSub'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          Band = PgHdFilial
          Above = False
          object SctVarDt_Impressao: TSctvarlabel
            Left = 581
            Top = 2
            Width = 146
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '"Data: " dd/mm/yyyy'
          end
          object SctTitle: TSctvarlabel
            Left = 0
            Top = 2
            Width = 196
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 60
            Top = 19
            Width = 69
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 131
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 191
            Top = 19
            Width = 95
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_SituacaoVar
          end
          object SctVarPagto: TSctvarlabel
            Left = 458
            Top = 19
            Width = 128
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Forma de Pagamento:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 589
            Top = 19
            Width = 145
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_FormaPagtoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 1
            Top = 34
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 51
            Top = 34
            Width = 676
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_EmitenteVar
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 1
            Top = 61
            Width = 106
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 88
            Top = 61
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 1
            Top = 49
            Width = 62
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'CNPJ/CPF:'
          end
          object SctVarDocto: TSctvarlabel
            Left = 65
            Top = 49
            Width = 136
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentonr_documentoVar
          end
          object SctTxtInscricao: TSctvarlabel
            Left = 206
            Top = 49
            Width = 111
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object SctVarInscricao: TSctvarlabel
            Left = 319
            Top = 48
            Width = 116
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoNr_Insc_EstadualVar
          end
          object SctTxtFatura: TSctvarlabel
            Left = 202
            Top = 2
            Width = 326
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
          object SctTxtValidade: TSctvarlabel
            Left = 439
            Top = 48
            Width = 294
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Validade'
          end
        end
        object PgHdFilial_Img: TSctSubBand
          Left = 0
          Top = -6
          Width = 791
          Height = 56
          ParentColor = True
          BandName = 'PgHdFilial_Img'
          Updatelevel = SctLevel2
          Stretch = True
          Band = PgHdFilial
          Above = True
          object SctImgCabecalho: TSctImageLabel
            Left = 0
            Top = -12
            Width = 741
            Height = 67
            Center = True
          end
        end
        object PgHdSubVencto: TSctSubBand
          Left = 0
          Top = 297
          Width = 791
          Height = 37
          ParentColor = True
          BandName = 'PgHdSubVencto'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = PgHdSubVenctoBeforePrint
          OnAfterPrint = PgHdSubVenctoAfterPrint
          Band = PgHdFilial
          Order = 2
          Above = False
          object LblVl_Vencto_1: TSctvarlabel
            Left = 2
            Top = 1
            Width = 108
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object SctDt_Vencto_1: TSctvarlabel
            Left = 2
            Top = 18
            Width = 108
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_1: TSctvarlabel
            Left = 93
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_2: TSctvarlabel
            Left = 245
            Top = 18
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_2: TSctvarlabel
            Left = 339
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_3: TSctvarlabel
            Left = 492
            Top = 18
            Width = 114
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_3: TSctvarlabel
            Left = 589
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_1: TSctvarlabel
            Left = 93
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object LblVl_Vencto_2: TSctvarlabel
            Left = 245
            Top = 1
            Width = 111
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Valor_2: TSctvarlabel
            Left = 339
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object LblVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Vencto_3: TSctvarlabel
            Left = 492
            Top = 1
            Width = 114
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_3: TSctvarlabel
            Left = 589
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 243
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 491
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
        end
        object PgHdDescricao: TSctSubBand
          Left = 0
          Top = 349
          Width = 791
          Height = 21
          ParentColor = True
          BandName = 'PgHdDescricao'
          Updatelevel = SctLevel2
          BorderType = btSingle
          Band = PgHdFilial
          Order = 3
          Above = False
          object Sctvarlabel8: TSctvarlabel
            Left = 650
            Top = 1
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.DisplayFormat = '##,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Total'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 502
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
            Caption = 'Quantidade'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 2
            Top = 1
            Width = 33
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Item'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 37
            Top = 1
            Width = 136
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            BorderMargin = 1
            Caption = 'Descri'#231#227'o'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 571
            Top = 1
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.DisplayFormat = '##,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Unit'#225'rio'
          end
          object SctVerticalDivider3: TSctVerticalDivider
            Left = 36
            Top = 1
            Width = 2
            Height = 20
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 498
            Top = 1
            Width = 2
            Height = 20
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 569
            Top = 1
            Width = 2
            Height = 20
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 648
            Top = 1
            Width = 2
            Height = 20
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 467
            Top = 2
            Width = 30
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Unid.'
          end
          object SctVerticalDivider15: TSctVerticalDivider
            Left = 464
            Top = 1
            Width = 2
            Height = 20
          end
        end
        object PgDtImg: TSctSubBand
          Left = 0
          Top = 419
          Width = 791
          Height = 22
          ParentColor = True
          BandName = 'PgDtImg'
          OnPrintWhen = PgDtImgPrintWhen
          Updatelevel = SctLevel3
          Stretch = True
          Band = SctBand3
          Above = False
          object SctVerticalDivider13: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 21
          end
          object SctVerticalDivider14: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 21
          end
          object SctImgItem: TSctImageLabel
            Left = 339
            Top = 2
            Width = 49
            Height = 18
            Center = True
          end
        end
        object PgDtDivider: TSctSubBand
          Left = 0
          Top = 456
          Width = 791
          Height = 1
          ParentColor = True
          BandName = 'PgDtDivider'
          Updatelevel = SctLevel3
          BorderType = btSingle
          Band = SctBand3
          Order = 1
          Above = False
        end
        object RepFtBdVendedorSub: TSctSubBand
          Left = 0
          Top = 621
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'RepFtBdVendedorSub'
          Updatelevel = SctLevel5
          Stretch = True
          Band = RepFtBdVendedor
          Above = False
          object Sctvarlabel3: TSctvarlabel
            Left = 5
            Top = 1
            Width = 729
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsfilialMm_RodapeVar
            DataFormat.SuppressNulls = True
          end
        end
      end
    end
    object CbUnidade: TComboBox
      Left = 48
      Top = 42
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 9
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
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
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
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
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActItemIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActItemOrca
            ImageIndex = 8
            ShortCut = 16502
          end
          item
            Action = ActItemEdit
            ImageIndex = 18
            ShortCut = 16499
          end
          item
            Action = ActItemDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActItemDraw
            ImageIndex = 51
            ShortCut = 16503
          end
          item
            Action = ActItemRep
            ImageIndex = 20
            ShortCut = 16501
          end
          item
            Action = ActItemView
            ImageIndex = 36
            ShortCut = 16504
          end>
      end>
    Images = FrmMain.ImgLstMenu
    Left = 686
    Top = 2
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
    object ActItemIns: TAction
      Tag = 1
      Category = '3-Itens'
      Hint = 'Incluir novo item'
      ImageIndex = 16
      ShortCut = 16497
    end
    object ActItemEdit: TAction
      Tag = 2
      Category = '3-Itens'
      Hint = 'Alterar o Item'
      ImageIndex = 18
      ShortCut = 16499
    end
    object ActItemDel: TAction
      Category = '3-Itens'
      Hint = 'Excluir o Item'
      ImageIndex = 19
      ShortCut = 16500
    end
    object ActItemRep: TAction
      Tag = 3
      Category = '3-Itens'
      Hint = 'ActItemRep'
      ImageIndex = 20
      ShortCut = 16501
    end
    object ActItemOrca: TAction
      Category = '3-Itens'
      Hint = 'Importar item do Or'#231'amento'
      ImageIndex = 8
      ShortCut = 16502
    end
    object ActItemDraw: TAction
      Category = '3-Itens'
      Hint = 'Desenhar'
      ImageIndex = 51
      ShortCut = 16503
    end
    object ActItemView: TAction
      Category = '3-Itens'
      Hint = 'Visualizar o Desenho'
      ImageIndex = 36
      ShortCut = 16504
    end
    object ActLoad: TAction
      Category = '4-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '4-Imagem'
      Hint = 'Apagar imagem'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '4-Imagem'
      Hint = 'Salvar imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '4-Imagem'
      Hint = 'Ajustar Imagem ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '4-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Ds_Item, OD.Qt_Item,'#13#10'  OD.Vl_Item, OD.Im_Item, O.Vl_Descritivo, O.Vl_Desconto, O.Pr_Desconto,'#13#10'  O.Pr_Custo, O.Vl_Custo, '#13#10'  Dp_Unidade = OD.Sg_Unidade + '''' - '''' + U.Ds_Unidade'#13#10#13#10'from'#13#10'  Orcamento_Descritivo OD'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OD.Cd_Filial and'#13#10'  O.Nr_Orcamento = OD.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OD.Sg_Unidade'#13#10#13#10'where'#13#10'  OD.Cd_Filial    = :Cd_Filial and'#13#10'  OD.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OD.Nr_Item      = :Nr_Item'
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
      end>
    Left = 245
    Top = 292
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDadosDs_Item: TMemoField
      FieldName = 'Ds_Item'
      BlobType = ftMemo
    end
    object ADODsDadosQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsDadosVl_Item: TBCDField
      FieldName = 'Vl_Item'
      Precision = 12
      Size = 3
    end
    object ADODsDadosIm_Item: TBlobField
      FieldName = 'Im_Item'
    end
    object ADODsDadosVl_Descritivo: TBCDField
      FieldName = 'Vl_Descritivo'
      Precision = 12
      Size = 2
    end
    object ADODsDadosVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 2
    end
    object ADODsDadosPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 7
      Size = 2
    end
    object ADODsDadosPr_Custo: TBCDField
      FieldName = 'Pr_Custo'
      Precision = 7
      Size = 2
    end
    object ADODsDadosVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 2
    end
    object ADODsDadosDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Descritivo( Cd_Filial, Nr_Orcamento, Nr_Item,'
      '  Ds_Item, Qt_Item, Vl_Item, Im_Item, Sg_Unidade )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Ds_Item, :Qt_Item,'
      '  :Vl_Item, :Im_Item, :Sg_Unidade )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento_Descritivo'
      ''
      'set'
      '  Ds_Item    = :Ds_Item,'
      '  Qt_Item    = :Qt_Item,'
      '  Vl_Item    = :Vl_Item,'
      '  Im_Item    = :Im_Item,'
      '  Sg_Unidade = :Sg_Unidade'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
      ''
    )
    SQLDelete.Strings = (
      'delete from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
      ''
      ''
    )
    SQLOther0.Strings = (
      '-------------------- Atualiza o valor total dos itens descritivos'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Vl_Descritivo ='
      '    ('
      '    select'
      '      sum( OD.Qt_Item * Vl_Item )'
      ''
      '    from'
      '      Orcamento_Descritivo OD'
      ''
      '    where'
      '      OD.Cd_Filial    = Orcamento.Cd_Filial and'
      '      OD.Nr_Orcamento = Orcamento.Nr_Orcamento'
      '    )'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Muda Situa'#231#227'o da OM'
      'update'
      '  OMedicao'
      ''
      'set'
      '  St_Medicao    = :St_Medicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao = :Nr_Medicao'
    )
    SQLOther4.Strings = (
      ''
    )
    SQLOther5.Strings = (
      '-------------------- Excluir itens da O.S.'
      'delete from'
      '  OServico_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther6.Strings = (
      '-------------------- Salvar o desenho no banco'
      'update'
      '  OServico_Item'
      ''
      'set'
      '  Im_Item   = :Im_Item,'
      '  Im_Draw   = :Im_Draw,'
      '  Nr_Width  = :Nr_Width,'
      '  Nr_Height = :Nr_Height'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
      ''
    )
    Left = 275
    Top = 292
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 217
    Top = 292
  end
  object ADODsEndView: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,'#13#10'  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,'#13#10'  B.Nm_Cidade + '''' - '''' + B.Sg_Estado  as Dp_Cidade,'#13#10'  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Nr_Celular_1,'#13#10'  A.Nr_Celular_2, A.Mm_Observacao, '#13#10'  Cast( A.Cd_Rota as VarChar ) + '''' - '''' + C.Ds_Rota as Dp_Rota,'#13#10'  A.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'inner join'#13#10'  Cidade B'#13#10'on'#13#10'  B.Cd_Cidade = A.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota C'#13#10'on'#13#10'  C.Cd_Rota = A.Cd_Rota'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  A.Nr_Endereco = :Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 367
    Top = 292
    object ADODsEndViewCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEndViewNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEndViewDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEndViewDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEndViewNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEndViewDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEndViewNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEndViewCd_Cidade: TSmallintField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEndViewDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsEndViewNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsEndViewDp_Rota: TStringField
      FieldName = 'Dp_Rota'
      ReadOnly = True
      Size = 83
    end
    object ADODsEndViewNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 10
    end
    object ADODsEndViewNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 10
    end
    object ADODsEndViewDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsEndView: TDataSource
    AutoEdit = False
    DataSet = ADODsEndView
    Left = 337
    Top = 292
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Item'#13#10#13#10'from'#13#10'  Orcamento_Descritivo'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  Nr_Item'
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
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Item ) + 1 as Nr_Item'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Item'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item   < :Nr_Item'
      ''
      'order by'
      '  Nr_Item desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item   > :Nr_Item'
      ''
      'order by'
      '  Nr_Item'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
      ''
      'order by'
      '  Nr_Item desc'
    )
    Left = 305
    Top = 292
    object ADODsNavegarNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Fl_Estoque, O.Tp_Carga,'#13#10'  O.Fl_FormaPagto,'#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,'#13#10'  Cast( O.Cd_Funcionario as VarChar ) + '''' - '''' + F.Nm_Funcionario as Dp_Funcionario,'#13#10'  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,'#13#10'  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo,'#13#10'  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia, '#13#10'  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega, O.Dt_Confirmado,'#13#10'  O.Vl_Descritivo,'#13#10#13#10'  case O.Fl_FormaPagto'#13#10'    when ''''1'''' then ''''A Vista'''#13#10'    when ''''2'''' then ''''A Prazo'''#13#10'    when ''''3'''' then ''''Cart'#227'o'''#13#10'    when ''''4'''' then ''''Cheque'''#13#10'    when ''''5'''' then ''''Contra-Apresenta'#231#227'o'''#13#10'    when ''''6'''' then ''''Multi-parcelado'''#13#10#13#10'  end as Dp_FormaPagto,'#13#10#13#10'  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,'#13#10'  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,'#13#10'  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,'#13#10'  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,'#13#10'  E.Fl_Exportador, O.Cd_Transportador, E.Nr_Identidade, E.Tp_Pessoa,'#13#10#13#10'  case O.Tp_Carga'#13#10'    when ''''1'''' then ''''Normal'''#13#10'    when ''''2'''' then ''''Estirado'''#13#10'    when ''''3'''' then ''''Industrializado'''#13#10'    when ''''4'''' then ''''Especial'''#13#10#13#10'  end as Dp_Carga,'#13#10#13#10'  EEE.Nr_Endereco as Ent_Nr_Endereco,'#13#10'  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,'#13#10'  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,'#13#10'  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + '''' - '''' + CEE.Nm_Cidade +'#13#10'     '''' - '''' + CEE.Sg_Estado as Ent_Dp_Cidade,'#13#10'  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,'#13#10'  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,'#13#10'  EEE.Mm_Observacao as Ent_Mm_Observacao,'#13#10#13#10'  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,'#13#10'  Cast( EE.Cd_Cidade as VarChar ) + '''' - '''' + CE.Nm_Cidade + '''' - '''' + CE.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,'#13#10'  EE.Mm_Observacao as Mm_ObsEndereco'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EEE'#13#10'on'#13#10'  EEE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EEE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade CEE'#13#10'on'#13#10'  CEE.Cd_Cidade = EEE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_EndCobranca'#13#10#13#10'left join'#13#10'  Cidade CE'#13#10'on'#13#10'  CE.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 427
    Top = 292
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsOrcamentoTp_Carga: TStringField
      FieldName = 'Tp_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 208
      Calculated = True
    end
    object ADODsOrcamentoDp_FormaPagto: TStringField
      FieldName = 'Dp_FormaPagto'
      ReadOnly = True
      Size = 19
    end
    object ADODsOrcamentoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsOrcamentoDp_Prazo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Prazo'
      Size = 30
      Calculated = True
    end
    object ADODsOrcamentoDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoVl_Coleta_Frete: TBCDField
      FieldName = 'Vl_Coleta_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Coleta: TBCDField
      FieldName = 'Ps_Coleta'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Coleta: TBCDField
      FieldName = 'Vl_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Coleta: TBCDField
      FieldName = 'Mg_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Pedido: TBCDField
      FieldName = 'Mg_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsOrcamentoDp_Carga: TStringField
      FieldName = 'Dp_Carga'
      ReadOnly = True
      Size = 15
    end
    object ADODsOrcamentoEnt_Nr_Endereco: TSmallintField
      FieldName = 'Ent_Nr_Endereco'
    end
    object ADODsOrcamentoEnt_Ds_Titulo: TStringField
      FieldName = 'Ent_Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoEnt_Ds_Endereco: TStringField
      FieldName = 'Ent_Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoEnt_Nm_Bairro: TStringField
      FieldName = 'Ent_Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoEnt_Ds_Complemento: TStringField
      FieldName = 'Ent_Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoEnt_Nr_CEP: TStringField
      FieldName = 'Ent_Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoEnt_Dp_Cidade: TStringField
      FieldName = 'Ent_Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoEnt_Nr_Telefone_1: TStringField
      FieldName = 'Ent_Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_2: TStringField
      FieldName = 'Ent_Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_3: TStringField
      FieldName = 'Ent_Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_FAX: TStringField
      FieldName = 'Ent_Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoVl_Coleta_Total: TBCDField
      FieldName = 'Vl_Coleta_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Total: TBCDField
      FieldName = 'Vl_Pedido_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcamentoVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsOrcamentoNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsOrcamentoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentodp_funcionario: TStringField
      FieldName = 'dp_funcionario'
      Size = 8190
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsOrcamentoent_mm_observacao: TMemoField
      FieldName = 'ent_mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_obsendereco: TMemoField
      FieldName = 'mm_obsendereco'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentocd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsOrcamentonr_endcobranca: TSmallintField
      FieldName = 'nr_endcobranca'
    end
    object ADODsOrcamentoim_assinatura: TBlobField
      FieldName = 'im_assinatura'
    end
    object ADODsOrcamentonm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcamentods_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsOrcamentonm_fantasia: TStringField
      FieldName = 'nm_fantasia'
      Size = 30
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentoNr_Identidade: TStringField
      FieldName = 'Nr_Identidade'
    end
    object ADODsOrcamentoTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsOrcamentoNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoDs_Email_Emitente: TStringField
      FieldName = 'Ds_Email_Emitente'
      Size = 100
    end
    object ADODsOrcamentoDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsOrcamentoVl_Descritivo: TBCDField
      FieldName = 'Vl_Descritivo'
      Precision = 12
      Size = 2
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 397
    Top = 292
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,'#13#10'  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OP.Nr_Prazo, OP.Fl_Parcela'
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
    Left = 456
    Top = 291
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsParcelacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParcelanr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParcelavl_parcela: TBCDField
      FieldName = 'vl_parcela'
      Precision = 12
      Size = 2
    end
    object ADODsParcelapr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Ds_Item, OD.Qt_Item,'#13#10'  OD.Vl_Item, OD.Im_Item, OD.Vl_Item * OD.Qt_Item as Vl_Total,'#13#10'  OD.Sg_Unidade'#13#10#13#10'from'#13#10'  Orcamento_Descritivo OD'#13#10#13#10'where'#13#10'  OD.Cd_Filial    = :Cd_Filial and'#13#10'  OD.Nr_Orcamento = :Nr_Orcamento '#13#10#13#10'order by'#13#10'  OD.Nr_Item'
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
    Left = 517
    Top = 291
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsReportDs_Item: TMemoField
      FieldName = 'Ds_Item'
      BlobType = ftMemo
    end
    object ADODsReportQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsReportVl_Item: TBCDField
      FieldName = 'Vl_Item'
      Precision = 12
      Size = 3
    end
    object ADODsReportIm_Item: TBlobField
      FieldName = 'Im_Item'
    end
    object ADODsReportVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
    object ADODsReportSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 489
    Top = 291
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item, Nm_Produto'#13#10#13#10'from'#13#10'  Orcamento_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item'
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
    Top = 120
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
  end
end
