object FrmInventario_Trimestral: TFrmInventario_Trimestral
  Left = 365
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Invent'#225'rio Trimestral de Estoque'
  ClientHeight = 506
  ClientWidth = 928
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
    Height = 506
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 907
    Height = 506
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 69
      Width = 443
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 6
      Top = 31
      Width = 46
      Height = 13
      Caption = 'Trimestre:'
    end
    object Label6: TLabel
      Left = 118
      Top = 31
      Width = 150
      Height = 13
      Caption = 'Data de Gera'#231#227'o do Invent'#225'rio:'
    end
    object DbTxtProduto: TDBText
      Left = 6
      Top = 487
      Width = 545
      Height = 15
      DataField = 'Nm_Produto'
      DataSource = DsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SbSelect: TSpeedButton
      Left = 417
      Top = 106
      Width = 85
      Height = 19
      Hint = 'Seleciona Produtos'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 646 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSelectClick
    end
    object Label2: TLabel
      Left = 270
      Top = 31
      Width = 92
      Height = 13
      Caption = 'Total do Invent'#225'rio:'
    end
    object Label3: TLabel
      Left = 528
      Top = 27
      Width = 217
      Height = 81
      AutoSize = False
      Caption = 'Movimenta'#231#227'o do Produto no Inventario:'#13#10'    M. P.     = Mat'#233'ria Prima'#13#10'    I. M. S.  = Insumos ou Material Secund'#225'rio'#13#10'    P. A.      = Produtos Acabados'#13#10'    M. P. T. = Material em Poder de Terceiros'#13#10'    M. R.     = Material de Revenda'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 905
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 6
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 905
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 905
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
      Left = 278
      Top = 73
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 364
      Top = 73
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 6
      Top = 106
      Width = 410
      Height = 19
      AutoSelect = False
      EditLabel.Width = 101
      EditLabel.Height = 13
      EditLabel.Caption = 'Produtos a Consultar:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 5
    end
    object EdtDt_Inventario: TDateEdit
      Left = 118
      Top = 46
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtSt_Inventario: TLabeledEdit
      Left = 54
      Top = 46
      Width = 58
      Height = 19
      TabStop = False
      AutoSelect = False
      Color = clSilver
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      MaxLength = 120
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Fechado'
    end
    object DbGProdutos: TDBGrid
      Left = 6
      Top = 130
      Width = 897
      Height = 357
      DataSource = DsProdutos
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutosDblClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      OnKeyPress = DbGProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 372
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Estoque'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Inventario'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Anterior'
          Title.Alignment = taRightJustify
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Entradas'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saidas'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Custo'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saldo'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end>
    end
    object ActToolItem: TActionToolBar
      Left = 772
      Top = 102
      Width = 129
      Height = 26
      Cursor = crHandPoint
      ActionManager = ActManCadastro
      Align = alNone
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
    end
    object SctReport: TSctReport
      Left = 615
      Top = 211
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
      TabOrder = 7
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 13
      SLeft = 0
      SWidth = 803
      SHeight = 581
      MTop = 211
      MLeft = 615
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0.3
        BorderType = btNone
        Description = 'Invent'#225'rio Trimestral de Estoque'
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
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmUsuario_Find.DsFind
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
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmBanco_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsProdutos
        end
        object adodsreportCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportSg_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estoque'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsreportVl_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Saldo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_TotalVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object GrpGrupo: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdGrupo
          Footer = GroupFooter
          Variable = adodsreportDp_InventarioVar
          Level = 0
        end
        object GroupHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsreportDp_InventarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Inventario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 247
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Registro de Inventario Trimestral'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 671
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
            Width = 736
            Height = 7
          end
          object SctTxtEmpresa: TSctvarlabel
            Left = 0
            Top = 18
            Width = 632
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Firma: xxxxxxxxxxxxxxxxxxxxxxx CNPJ:  xx.xxx.xxx/xxxx-xx    I.E. xxxxxxxxxx'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 185
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 2
            Width = 47
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportCd_ProdutoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 534
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsreportQt_SaldoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 603
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsreportVl_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 672
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 487
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportSg_EstoqueVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 396
            Top = 1
            Width = 88
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportCd_ClasFiscalVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 51
            Top = 0
            Width = 341
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 288
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          OnBeforePrint = PageFooterBandBeforePrint
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 736
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
          object SctTxtPagina: TSctvarlabel
            Left = 654
            Top = 2
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 323
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 520
            Top = 1
            Width = 217
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 633
            Top = 3
            Width = 104
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 530
            Top = 3
            Width = 97
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
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 736
            Height = 7
          end
          object TSctTextLabel: TSctvarlabel
            Left = 0
            Top = 2
            Width = 47
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 534
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 603
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 672
            Top = 2
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 487
            Top = 2
            Width = 45
            Height = 17
            Caption = 'Unidade'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 382
            Top = 2
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Class. Fiscal (NCM)'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 51
            Top = 2
            Width = 44
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Caption = 'Produto'
          end
        end
        object GrpHdGrupo: TSctBand
          Left = 0
          Top = 144
          Width = 786
          Height = 26
          ParentColor = True
          BandName = 'GrpGrupo Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel13: TSctvarlabel
            Left = 0
            Top = 8
            Width = 488
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_InventarioVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 218
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'GrpGrupo Footer'
          Updatelevel = GroupFooterLevel
          object SctLine3: TSctLine
            Left = 565
            Top = 1
            Width = 172
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 661
            Top = 3
            Width = 76
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 558
            Top = 3
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Sub-Total:'
          end
        end
        object PgHdTransporte: TSctSubBand
          Left = 0
          Top = 109
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'PgHdTransporte'
          OnPrintWhen = PgHdTransportePrintWhen
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Order = 1
          Above = False
          object SctVarHdTransporte: TSctvarlabel
            Left = 520
            Top = 3
            Width = 216
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'P'#225'gina de Transporte'
          end
        end
        object PgFtTransporte: TSctSubBand
          Left = 0
          Top = 253
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'PageFooterBandSub'
          OnPrintWhen = PgFtTransportePrintWhen
          Updatelevel = PageFooterBandlevel
          Band = PageFooterBand
          Above = True
          object SctVarFtTransporte: TSctvarlabel
            Left = 520
            Top = 3
            Width = 216
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'P'#225'gina a Transportar'
          end
        end
      end
    end
    object EdtVl_Inventario: TCurrencyEdit
      Left = 270
      Top = 46
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Color = clSilver
      DisplayFormat = '##,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Value = 2000.0
    end
    object CkBContendo: TCheckBox
      Left = 508
      Top = 107
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object EdtNr_Ano: TMaskEdit
      Left = 6
      Top = 46
      Width = 45
      Height = 19
      EditMask = '####/#;0; '
      MaxLength = 6
      TabOrder = 0
      Text = '20171'
      OnExit = EdtNr_AnoExit
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
            Action = ActGerar
            ImageIndex = 26
            ShortCut = 118
          end
          item
            Action = ActCusto
            ImageIndex = 0
          end
          item
            Action = ActFechar
            ImageIndex = 22
            ShortCut = 119
          end
          item
            Items = <
              item
                Action = ActProsoft
                Caption = '&Exportar padr'#227'o Prosoft'
                ImageIndex = 57
              end
              item
                Action = ActExportaCSV
                ImageIndex = 67
              end>
            Action = ActExportar
            ImageIndex = 57
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActProdIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActProdEdit
            ImageIndex = 18
            ShortCut = 16499
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActIndex
            ImageIndex = 56
          end
          item
            Action = ActNegativo
            ImageIndex = 32
          end>
        ActionBar = ActToolItem
      end>
    Images = FrmMain.ImgLstMenu
    Left = 705
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
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
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
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActGerar: TAction
      Category = '2-Database'
      Hint = 'Gerar movimenta'#231#227'o do Ano'
      ImageIndex = 26
      ShortCut = 118
      OnExecute = ActGerarExecute
    end
    object ActCusto: TAction
      Category = '2-Database'
      Hint = 'Alterar o valor de Custo Unit'#225'rio'
      ImageIndex = 0
      OnExecute = ActCustoExecute
    end
    object ActFechar: TAction
      Tag = 2
      Category = '2-Database'
      Hint = 'Fechar Invent'#225'rio'
      ImageIndex = 22
      ShortCut = 119
      OnExecute = ActFecharExecute
    end
    object ActRedo: TAction
      Tag = 2
      Category = '2-Database'
      Hint = 'Abrir invent'#225'rio fechado'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActProdIns: TAction
      Tag = 1
      Category = '3-Produtos'
      Hint = 'Incluir Produto'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActProdInsExecute
    end
    object ActProdEdit: TAction
      Tag = 2
      Category = '3-Produtos'
      Hint = 'Alterar o Produto'
      ImageIndex = 18
      ShortCut = 16499
      OnExecute = ActProdInsExecute
    end
    object ActProdDel: TAction
      Category = '3-Produtos'
      Hint = 'Excluir o produto'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActProdDelExecute
    end
    object ActExportar: TAction
      Category = '2-Database'
      ImageIndex = 57
      OnExecute = ActExportarExecute
    end
    object ActProsoft: TAction
      Category = '2-Database'
      Caption = 'Exportar padr'#227'o Prosoft'
      ImageIndex = 57
      OnExecute = ActProsoftExecute
    end
    object ActIndex: TAction
      Tag = 1
      Category = '3-Produtos'
      Hint = 'Mudar a Ordem dos Produtos'
      ImageIndex = 56
      OnExecute = ActIndexExecute
    end
    object ActNegativo: TAction
      Category = '3-Produtos'
      Hint = 'Apagar itens com saldo negativo'
      ImageIndex = 32
      OnExecute = ActNegativoExecute
    end
    object ActExportaCSV: TAction
      Category = '2-Database'
      Caption = 'Exportar para Excel (CSV)...'
      ImageIndex = 67
      OnExecute = ActExportaCSVExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Ano, Dt_Inventario, St_Inventario, Vl_Inventario'#13#10#13#10'from'#13#10'   Inventario_Trimestral'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Ano    = :Nr_Ano'
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
        Name = 'Nr_Ano'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = nil?
      end>
    Left = 220
    Top = 473
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosDt_Inventario: TDateTimeField
      FieldName = 'Dt_Inventario'
    end
    object ADODsDadosSt_Inventario: TStringField
      FieldName = 'St_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosVl_Inventario: TBCDField
      FieldName = 'Vl_Inventario'
      Precision = 15
      Size = 3
    end
    object ADODsDadosNr_Ano: TStringField
      FieldName = 'Nr_Ano'
      Size = 5
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Inventario_Trimestral( Cd_Filial, Nr_Ano, Dt_Inventario, St_Inventario )'
      'values( :Cd_Filial, :Nr_Ano, :Dt_Inventario, ''''1'''' )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Inventario_Trimestral'
      ''
      'set'
      '  Dt_Inventario = :Dt_Inventario'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Inventario_Trimestral'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
    )
    SQLOther0.Strings = (
      '-------------------- Mudar a situa'#231#227'o do inventario'
      'update'
      '  Inventario_Trimestral'
      ''
      'set'
      '  St_Inventario = :St_Inventario'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
    )
    SQLOther1.Strings = (
      '-------------------- Excluir produto do inventario'
      'delete from'
      '  Inventario_Trimestral_Produto'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Ano        = :Nr_Ano and'
      '  Cd_Produto    = :Cd_Produto and'
      '  Fl_Inventario = :Fl_Inventario'
    )
    SQLOther2.Strings = (
      '-------------------- Total do Inventario'
      'update'
      '  Inventario_Trimestral'
      ''
      'set'
      '  Vl_Inventario ='
      '    ('
      '    select'
      '      sum( ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo )'
      ''
      '    from'
      '      Inventario_Trimestral_Produto IP'
      ''
      '    where'
      '      IP.Cd_Filial = Inventario_Trimestral.Cd_Filial and'
      '      IP.Nr_Ano    = Inventario_Trimestral.Nr_Ano and'
      '      IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas > 0'
      '    )'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
      ''
    )
    SQLOther3.Strings = (
      '--------------- Apagar itens com saldo negativo'
      'delete from'
      '  Inventario_Trimestral_Produto'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano and'
      '  ( Qt_Anterior + Qt_Entradas - Qt_Saidas ) <= 0.0'
    )
    Left = 250
    Top = 473
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 161
    Top = 473
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Ano'#13#10#13#10'from'#13#10'  Inventario_Trimestral'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Ano'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  A.Nr_Ano'
      ''
      'from'
      '  Inventario_Trimestral A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Ano'
      ''
      'from'
      '  Inventario_Trimestral'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Ano'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Ano'
      ''
      'from'
      '  Inventario_Trimestral'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Ano < :Nr_Ano'
      ''
      'order by'
      '  Nr_Ano desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Ano'
      ''
      'from'
      '  Inventario_Trimestral'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Ano > :Nr_Ano'
      ''
      'order by'
      '  Nr_Ano'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Ano'
      ''
      'from'
      '  Inventario_Trimestral'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Ano desc'
    )
    Left = 283
    Top = 473
    object ADODsNavegarNr_Ano: TStringField
      FieldName = 'Nr_Ano'
      Size = 5
    end
  end
  object DsProdutos: TDataSource
    DataSet = ADODsProdutos
    Left = 315
    Top = 473
  end
  object ADODsProdutos: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsProdutosCalcFields
    CommandText = 'select'#13#10'  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'#13#10'  P.Nr_Sequencia, IP.Fl_Inventario,'#13#10'  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,'#13#10'  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,'#13#10'  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas * IP.Vl_Custo as Vl_Total'#13#10#13#10'from'#13#10'  Inventario_Trimestral_Produto IP'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = IP.Cd_Produto'#13#10'  /* Nm_Produto */'#13#10#13#10'where'#13#10'  IP.Cd_Filial = :Cd_Filial and'#13#10'  IP.Nr_Ano    = :Nr_Ano'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
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
        Name = 'Nr_Ano'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,'
      '  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'
      '  P.Nr_Sequencia, IP.Fl_Inventario,'
      '  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,'
      '  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo'
      ''
      'from'
      '  Inventario_Trimestral_Produto IP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = IP.Cd_Produto and'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'where'
      '  IP.Cd_Filial = :Cd_Filial and'
      '  IP.Nr_Ano    = :Nr_Ano '
      ''
      'order by'
      '  /* Ordem */'
    )
    Left = 345
    Top = 473
    object ADODsProdutosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsProdutosNr_Ano: TStringField
      FieldName = 'Nr_Ano'
      Size = 5
    end
    object ADODsProdutosCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutosSg_Estoque: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutosNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutosQt_Anterior: TBCDField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'Qt_Anterior'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosQt_Entradas: TBCDField
      DisplayLabel = 'Entradas'
      FieldName = 'Qt_Entradas'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosQt_Saidas: TBCDField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'Qt_Saidas'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosVl_Custo: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Custo'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosQt_Saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'Qt_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      Precision = 14
      Size = 3
    end
    object ADODsProdutosVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 26
      Size = 6
    end
    object ADODsProdutosNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsProdutosFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutosDp_Inventario: TStringField
      DisplayLabel = 'Movto'
      FieldKind = fkCalculated
      FieldName = 'Dp_Inventario'
      Size = 10
      Calculated = True
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'#13#10'  P.Nr_Sequencia, P.Cd_ClasFiscal, U.Ds_Unidade,'#13#10'  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,'#13#10'  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,'#13#10'  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,'#13#10'  P.Cd_Grupo, G.Nm_Grupo, IP.Fl_Inventario, T.Ds_Tributacao,'#13#10'    ('#13#10'    case'#13#10'      when T.Tp_Tributacao = ''''1'''' then ''''Tributado'''#13#10'      when T.Tp_Tributacao = ''''2'''' then ''''Substitui'#231#227'o Tribut'#225'ria'''#13#10'      when T.Tp_Tributacao = ''''3'''' then ''''Isento'''#13#10'      when T.Tp_Tributacao = ''''4'''' then ''''Servi'#231'o (ISS)'''#13#10'      when T.Tp_Tributacao = ''''5'''' then ''''N'#227'o Incid'#234'ncia'''#13#10'    end'#13#10'    ) as Dp_Tributacao,'#13#10#13#10'  ('#13#10'  select top 1'#13#10'    EI.Pr_ICMS'#13#10'  from'#13#10'    Entrada_Item EI'#13#10#13#10'  inner join'#13#10'    Entrada E'#13#10'  on'#13#10'    E.Cd_Filial  = EI.Cd_Filial and'#13#10'    E.Nr_Entrada = EI.Nr_Entrada'#13#10#13#10'  where'#13#10'    EI.Cd_Filial  = IP.Cd_Filial and'#13#10'    EI.Cd_Produto = IP.Cd_Produto'#13#10#13#10'  order by'#13#10'    E.Dt_Lancamento desc'#13#10'  ) as Pr_AliquotaEntrada'#13#10#13#10'from'#13#10'  Inventario_Trimestral_Produto IP'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = IP.Cd_Produto and'#13#10'  P.Fl_Produto = ''''1'''#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'where'#13#10'  IP.Cd_Filial = :Cd_Filial and'#13#10'  IP.Nr_Ano    = :Nr_Ano'#13#10#13#10'order by'#13#10'  IP.Fl_Inventario'
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
        Name = 'Nr_Ano'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  IP.Cd_Filial, IP.Nr_Ano, IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'
      '  P.Nr_Sequencia, P.Cd_ClasFiscal, U.Ds_Unidade,'
      '  IP.Qt_Anterior, IP.Qt_Entradas, IP.Qt_Saidas, IP.Vl_Custo,'
      '  IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas as Qt_Saldo,'
      '  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo as Vl_Total,'
      '  P.Cd_Grupo, G.Nm_Grupo, IP.Fl_Inventario, T.Ds_Tributacao,'
      '    ('
      '    case'
      '      when T.Tp_Tributacao = ''''1'''' then ''''Tributado'''
      '      when T.Tp_Tributacao = ''''2'''' then ''''Substitui'#231#227'o Tribut'#225'ria'''
      '      when T.Tp_Tributacao = ''''3'''' then ''''Isento'''
      '      when T.Tp_Tributacao = ''''4'''' then ''''Servi'#231'o (ISS)'''
      '      when T.Tp_Tributacao = ''''5'''' then ''''N'#227'o Incid'#234'ncia'''
      '    end'
      '    ) as Dp_Tributacao, T.Pr_Contrib'
      ''
      'from'
      '  Inventario_Trimestral_Produto IP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = IP.Cd_Produto and'
      '  P.Fl_Produto = ''''1'''
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'inner join'
      '  Unidade U'
      'on'
      '  U.Sg_Unidade = P.Sg_Estoque'
      '  '
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'where'
      '  IP.Cd_Filial = :Cd_Filial and'
      '  IP.Nr_Ano    = :Nr_Ano '
      ''
      'order by'
      '  IP.Fl_Inventario, /* Ordem */'
    )
    Left = 190
    Top = 473
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Ano: TStringField
      FieldName = 'Nr_Ano'
      Size = 5
    end
    object ADODsReportCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsReportSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsReportNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsReportCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsReportQt_Anterior: TBCDField
      FieldName = 'Qt_Anterior'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Entradas: TBCDField
      FieldName = 'Qt_Entradas'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Saidas: TBCDField
      FieldName = 'Qt_Saidas'
      Precision = 12
      Size = 3
    end
    object ADODsReportVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Saldo: TBCDField
      FieldName = 'Qt_Saldo'
      ReadOnly = True
      Precision = 14
      Size = 3
    end
    object ADODsReportVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 26
      Size = 6
    end
    object ADODsReportFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Inventario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Inventario'
      Size = 50
      Calculated = True
    end
    object ADODsReportCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsReportDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsReportNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsReportDp_Tributacao: TStringField
      FieldName = 'Dp_Tributacao'
      ReadOnly = True
      Size = 23
    end
    object ADODsReportDs_Unidade: TStringField
      FieldName = 'Ds_Unidade'
      Size = 30
    end
    object ADODsReportPr_AliquotaEntrada: TBCDField
      FieldName = 'Pr_AliquotaEntrada'
      ReadOnly = True
      Precision = 7
      Size = 2
    end
  end
end
