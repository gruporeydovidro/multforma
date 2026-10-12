object FrmProduto_Conjunto: TFrmProduto_Conjunto
  Left = 270
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Conjunto do Produto'
  ClientHeight = 364
  ClientWidth = 749
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
    Height = 364
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 728
    Height = 364
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 334
      Width = 721
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 30
      Width = 162
      Height = 13
      Caption = 'Produtos de comp'#245'em o conjunto:'
    end
    object LblVenda: TLabel
      Left = 589
      Top = 319
      Width = 68
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblItens: TLabel
      Left = 3
      Top = 318
      Width = 105
      Height = 13
      Caption = 'Itens do Conjunto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 318
      Top = 319
      Width = 192
      Height = 13
      Caption = 'Totais (Custo / Venda / Margem):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblCusto: TLabel
      Left = 516
      Top = 319
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMargem: TLabel
      Left = 659
      Top = 319
      Width = 44
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
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
      Width = 726
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 726
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 726
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
    object BitBtnCancel: TBitBtn
      Left = 641
      Top = 337
      Width = 85
      Height = 25
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 0
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 486 bytes}
    end
    object DbGDados: TDBGrid
      Left = 3
      Top = 45
      Width = 718
      Height = 274
      DataSource = DsDados
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = DbGDadosColEnter
      OnEnter = DbGDadosEnter
      OnExit = DbGDadosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Estoque'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_item'
          Title.Alignment = taRightJustify
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_venda'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_custo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_total'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Total'
          Title.Alignment = taRightJustify
          Width = 43
          Visible = True
        end>
    end
    object SctReport: TSctReport
      Left = 318
      Top = 164
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
      TabOrder = 2
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 164
      MLeft = 318
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
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.PreviewSettings.Zoom = azHeight
        BorderType = btNone
        Description = 'Conjunto de Produto'
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
          DataSource = FrmUnidade_Find.DsFind
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
          DataSource = DsDados
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto.DsReport
        end
        object adodsreportcd_produto_cjVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto_cj'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsreportqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfqt_item: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportqt_itemVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportvl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_totalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_total: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_totalVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Caption = 'Conjunto de Produto'
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
          object SctVarProduto: TSctvarlabel
            Left = 2
            Top = 19
            Width = 524
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Nome do Produto'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 17
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 0
            Width = 40
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_produtoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 45
            Top = 0
            Width = 373
            Height = 17
            Variable = adodsreportnm_produtoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 425
            Top = 0
            Width = 63
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 493
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 558
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_totalVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
          object SctVarPercentual: TSctvarlabel
            Left = 621
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00%'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 141
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
          Top = 176
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 255
            Top = 1
            Width = 441
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 370
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfqt_item
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
            Left = 250
            Top = 3
            Width = 114
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Produtos:'
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 558
            Top = 3
            Width = 60
            Height = 17
            TotalVariable = TotalOfvl_total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 425
            Top = 3
            Width = 63
            Height = 17
            TotalVariable = TotalOfqt_item
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 621
            Top = 3
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '100.00%'
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
            Width = 40
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 45
            Top = 0
            Width = 278
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 425
            Top = 0
            Width = 63
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 621
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = '% Sobre Total'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 493
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unitario'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 558
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
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
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 285
    Top = 5
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
      Tag = 1
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
      Tag = 2
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActInsertExecute
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
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsDadosBeforeScroll
    AfterScroll = ADODsDadosAfterScroll
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  PC.Cd_Produto_CJ, PC.Cd_Produto, P.Nm_Produto, PC.Qt_Item,'#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Venda,'#13#10'  PP.Vl_Venda * PC.Qt_Item * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Total,'#13#10'  PP.Vl_Reposicao * PC.Qt_Item * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Custo,'#13#10'  P.Sg_Estoque'#13#10#13#10'from'#13#10'  Produto_Conjunto PC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela = :Cd_Tabela and'#13#10'  PP.Cd_Produto = PC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10#13#10'where'#13#10'  PC.Cd_Produto_CJ = :Cd_Produto_CJ'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end
      item
        Name = 'Cd_Produto_CJ'
        DataType = ftInteger
        Size = -1
        Value = 282
      end>
    Left = 54
    Top = 205
    object ADODsDadoscd_produto_cj: TIntegerField
      FieldName = 'cd_produto_cj'
    end
    object ADODsDadoscd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsDadosnm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsDadosqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsDadosvl_venda: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_total: TBCDField
      DisplayLabel = 'Venda'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsDadosPr_Total: TFloatField
      DisplayLabel = '% Total'
      FieldKind = fkCalculated
      FieldName = 'Pr_Total'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Calculated = True
    end
    object ADODsDadosvl_custo: TBCDField
      DisplayLabel = 'Custo'
      FieldName = 'vl_custo'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsDadosQt_Estoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldKind = fkCalculated
      FieldName = 'Qt_Estoque'
      Calculated = True
    end
    object ADODsDadosSg_Estoque: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Produto_Composicao( Cd_Produto_CJ, Cd_Produto, Qt_Item )'
      'values( :Cd_Produto_CJ, :Cd_Produto, :Qt_Item )'
    )
    SQLUpdate.Strings = (
      ''
    )
    SQLDelete.Strings = (
      'delete from'
      '  Produto_Conjunto'
      ''
      'where'
      '  Cd_Produto_CJ = :Cd_Produto_CJ and'
      '  Cd_Produto    = :Cd_Produto'
    )
    SQLOther0.Strings = (
      '-- Incluir o produto na tabela de pre'#231'o'
      'insert into Produto_Preco( Cd_Tabela, Cd_Produto, Vl_Venda, Vl_Custo,'
      '  Vl_Reposicao, Vl_Promocao )'
      'values( :Cd_Tabela, :Cd_Produto, :Vl_Venda, :Vl_Custo, :Vl_Reposicao, 0 )'
    )
    SQLOther1.Strings = (
      '-- Alterar o produto na tabela de pre'#231'o'
      'update'
      '  Produto_Preco'
      ''
      'set'
      '  Vl_Venda     = :Vl_Venda,'
      '  Vl_Custo     = :Vl_Custo,'
      '  Vl_Reposicao = :Vl_Reposicao'
      ''
      'where'
      '  Cd_Tabela  = :Cd_Tabela and'
      '  Cd_Produto = :Cd_Produto'
    )
    Left = 82
    Top = 205
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 113
    Top = 205
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PC.Cd_Produto_CJ, PC.Cd_Produto, P.Nm_Produto, PC.Qt_Item,'#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,'#13#10'  PP.Vl_Venda * PC.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Total'#13#10#13#10'from'#13#10'  Produto_Conjunto PC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela = :Cd_Tabela and'#13#10'  PP.Cd_Produto = PC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10#13#10'where'#13#10'  PC.Cd_Produto_CJ = :Cd_Produto_CJ'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Produto_CJ'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 143
    Top = 205
    object ADODsReportcd_produto_cj: TIntegerField
      FieldName = 'cd_produto_cj'
    end
    object ADODsReportcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsReportnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsReportqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsReportvl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 12
      Size = 3
    end
    object ADODsReportvl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 28
      Size = 6
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 26
    Top = 205
  end
  object ADODsPreco: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Produto'#13#10#13#10'from'#13#10'  Produto_Preco'#13#10#13#10'where'#13#10'  Cd_Tabela  = :Cd_Tabela and'#13#10'  Cd_Produto = :Cd_Produto'
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
        Size = 1
        Value = 0
      end>
    Left = 176
    Top = 205
  end
end
