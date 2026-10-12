object FrmEmitente_Terceiros: TFrmEmitente_Terceiros
  Left = 238
  Top = 215
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produtos em Poder de Terceiros'
  ClientHeight = 324
  ClientWidth = 725
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
    Height = 324
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 704
    Height = 324
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 294
      Width = 698
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 30
      Width = 136
      Height = 13
      Caption = 'C'#243'digos nas Representadas:'
    end
    object DbTxtNm_Produto: TDBText
      Left = 5
      Top = 301
      Width = 606
      Height = 17
      DataField = 'Nm_Produto'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 702
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 702
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 702
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
      Left = 617
      Top = 297
      Width = 85
      Height = 25
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 486 bytes}
    end
    object DbGDados: TDBGrid
      Left = 4
      Top = 45
      Width = 695
      Height = 245
      DataSource = DsDados
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGDadosEnter
      OnExit = DbGDadosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 247
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Fabricante'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saldo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Devedor'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Excesso'
          Title.Alignment = taRightJustify
          Width = 65
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
      TabOrder = 3
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
        PageSetup.LeftMargin = 0.03
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Produtos em Poder de Terceiros'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsDados
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
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente.DsEndereco
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente.DsContato
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente.DsDuplicata
        end
        object adodsdadosCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosCd_FabricanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Fabricante'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Saldo'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_DevedorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Devedor'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_ExcessoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Excesso'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfQt_Item: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsdadosQt_ItemVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Saldo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsdadosQt_SaldoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Devedor: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsdadosQt_DevedorVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Excesso: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsdadosQt_ExcessoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 812
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 812
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
            Caption = 'Produtos em Poder de Terceiros'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 656
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 689
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 653
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 689
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
            Width = 754
            Height = 7
          end
          object SctVarEmitente: TSctvarlabel
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
            Caption = 'Nome do Cliente'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 124
          Width = 812
          Height = 17
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 0
            Width = 40
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsdadosCd_ProdutoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 45
            Top = -1
            Width = 321
            Height = 16
            WrapText = True
            Stretch = True
            Variable = adodsdadosNm_ProdutoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 619
            Top = 0
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsdadosQt_DevedorVar
            DataFormat.DisplayFormat = '#,###.###'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 549
            Top = 0
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsdadosQt_SaldoVar
            DataFormat.DisplayFormat = '#,###.###'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 480
            Top = 0
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsdadosQt_ItemVar
            DataFormat.DisplayFormat = '#,###.###'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 690
            Top = 0
            Width = 65
            Height = 16
            AlignHorizontal = laRight
            Variable = adodsdadosQt_ExcessoVar
            DataFormat.DisplayFormat = '#,###.###'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 368
            Top = 0
            Width = 106
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsdadosCd_FabricanteVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 156
          Width = 812
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 754
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
            Left = 672
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 719
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
          Top = 191
          Width = 812
          Height = 19
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object Sctvarlabel20: TSctvarlabel
            Left = 297
            Top = 1
            Width = 107
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
          object SctLine3: TSctLine
            Left = 295
            Top = 0
            Width = 460
            Height = 9
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 407
            Top = 1
            Width = 52
            Height = 17
            TotalVariable = TotalOfQt_Item
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
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 480
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Item
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 549
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Saldo
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 619
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Devedor
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 690
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Excesso
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 812
          Height = 35
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 28
            Width = 754
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 16
            Width = 40
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 45
            Top = 16
            Width = 46
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 619
            Top = 16
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Devedor'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 480
            Top = 1
            Width = 65
            Height = 33
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Estoque M'#237'nimo'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 690
            Top = 16
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Excesso'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 368
            Top = 16
            Width = 106
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo do Fabricante'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 549
            Top = 1
            Width = 65
            Height = 33
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Estoque Atual'
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
  object ADODsDados: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsDadosBeforeScroll
    AfterScroll = ADODsDadosAfterScroll
    OnCalcFields = ADODsDadosCalcFields
    CommandText = '----- Verifica se a tabela temporaria existe'#13#10'if Object_ID( ''''TempDB..#estoque_proter'''' ) is not null'#13#10'  truncate table #estoque_proter'#13#10#13#10'else'#13#10'  create table #estoque_proter'#13#10'    ('#13#10'    cd_produto int,'#13#10'    qt_envio numeric( 12, 3 ),'#13#10'    qt_vendido numeric( 12, 3 ),'#13#10'    qt_devolvido numeric( 12, 3 )'#13#10'    );'#13#10#13#10'-- Mercadorias enviadas'#13#10'insert into #Estoque_ProTer( Cd_Produto, Qt_Envio )'#13#10'select'#13#10'  SI.Cd_Produto, sum( SI.Qt_Estoque ) as Qt_Envio'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = S.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'inner join'#13#10'  Saida_Item SI'#13#10'on'#13#10'  SI.Cd_Filial = S.Cd_Filial and'#13#10'  SI.Nr_Saida  = S.Nr_Saida'#13#10#13#10'where'#13#10'  S.Cd_Filial   = 1 and'#13#10'  S.Cd_Emitente = 1 and'#13#10'  S.St_Saida  = ''''2'''#13#10#13#10'group by'#13#10'  SI.Cd_Produto;'#13#10#13#10'-- Devolvido'#13#10'insert into #Estoque_ProTer( Cd_Produto, Qt_Devolvido )'#13#10'select'#13#10'  EI.Cd_Produto, sum( EI.Qt_Estoque ) as Qt_Envio'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = E.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'inner join'#13#10'  Entrada_Item EI'#13#10'on'#13#10'  EI.Cd_Filial  = E.Cd_Filial and'#13#10'  EI.Nr_Entrada = E.Nr_Entrada'#13#10#13#10'where'#13#10'  E.Cd_Filial   = 1 and'#13#10'  E.Cd_Emitente = 1'#13#10#13#10'group by'#13#10'  EI.Cd_Produto;'#13#10#13#10'-- Mercadorias Vendidas'#13#10'insert into #Estoque_ProTer( Cd_Produto, Qt_Vendido )'#13#10'select'#13#10'  OI.Cd_Produto, sum( OI.Qt_Estoque ) as Qt_Vendido'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = O.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = 1 and'#13#10'  O.Cd_Emitente  = 1 and'#13#10'  O.St_Orcamento  = ''''9'''#13#10#13#10'group by'#13#10'  OI.Cd_Produto;'#13#10#13#10'-- Cria o Result Set'#13#10'select'#13#10'  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante,'#13#10'  sum( ET.Qt_Envio ) as Qt_Envio,  '#13#10'  sum( ET.Qt_Vendido ) as Qt_Vendido, '#13#10'  sum( ET.Qt_Devolvido ) as  Qt_Devolvido'#13#10#13#10'from'#13#10'  Emitente_Terceiros T'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = T.Cd_Produto'#13#10#13#10'left join'#13#10'  #Estoque_ProTer ET'#13#10'on'#13#10'  ET.Cd_Produto = T.Cd_Produto'#13#10#13#10'where'#13#10'  T.Cd_Emitente = 1'#13#10#13#10'group by'#13#10'  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <>
    SQLOther0.Strings = (
      '----- Verifica se a tabela temporaria existe'
      'if Object_ID( ''''TempDB..#estoque_proter'''' ) is not null'
      '  truncate table #estoque_proter'
      ''
      'else'
      '  create table #estoque_proter'
      '    ('
      '    cd_produto int,'
      '    qt_envio numeric( 12, 3 ),'
      '    qt_vendido numeric( 12, 3 ),'
      '    qt_devolvido numeric( 12, 3 )'
      '    );'
      ''
      '-- Mercadorias enviadas'
      'insert into #Estoque_ProTer( Cd_Produto, Qt_Envio )'
      'select'
      '  SI.Cd_Produto, sum( SI.Qt_Estoque ) as Qt_Envio'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = S.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'inner join'
      '  Saida_Item SI'
      'on'
      '  SI.Cd_Filial = S.Cd_Filial and'
      '  SI.Nr_Saida  = S.Nr_Saida'
      ''
      'where'
      '  S.Cd_Filial   = :Cd_Filial and'
      '  S.Cd_Emitente = :Cd_Emitente and'
      '  S.St_Saida  = ''''2'''
      ''
      'group by'
      '  SI.Cd_Produto;'
      ''
      '-- Devolvido'
      'insert into #Estoque_ProTer( Cd_Produto, Qt_Devolvido )'
      'select'
      '  EI.Cd_Produto, sum( EI.Qt_Estoque ) as Qt_Envio'
      ''
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = E.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      ''
      'where'
      '  E.Cd_Filial   = :Cd_Filial and'
      '  E.Cd_Emitente = :Cd_Emitente'
      ''
      'group by'
      '  EI.Cd_Produto;'
      ''
      '-- Mercadorias Vendidas'
      'insert into #Estoque_ProTer( Cd_Produto, Qt_Vendido )'
      'select'
      '  OI.Cd_Produto, sum( OI.Qt_Estoque ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = O.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Cd_Emitente  = :Cd_Emitente and'
      '  O.St_Orcamento  = ''''9'''
      ''
      'group by'
      '  OI.Cd_Produto;'
      ''
      '-- Cria o Result Set'
      'select'
      '  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante,'
      '  sum( ET.Qt_Envio ) as Qt_Envio,  '
      '  sum( ET.Qt_Vendido ) as Qt_Vendido, '
      '  sum( ET.Qt_Devolvido ) as  Qt_Devolvido'
      ''
      'from'
      '  Emitente_Terceiros T'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = T.Cd_Produto'
      ''
      'left join'
      '  #Estoque_ProTer ET'
      'on'
      '  ET.Cd_Produto = T.Cd_Produto'
      ''
      'where'
      '  T.Cd_Emitente = :Cd_Emitente'
      ''
      'group by'
      '  T.Cd_Produto, P.Nm_Produto, T.Qt_Item, P.Cd_Fabricante'
      ''
      'order by'
      '  P.Nm_Produto'
    )
    Left = 54
    Top = 215
    object ADODsDadosCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsDadosNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsDadosQt_Item: TBCDField
      DisplayLabel = 'Est. M'#237'nimo'
      FieldName = 'Qt_Item'
      Precision = 13
      Size = 3
    end
    object ADODsDadosCd_Fabricante: TStringField
      DisplayLabel = 'C'#243'digo do Fabricante'
      FieldName = 'Cd_Fabricante'
    end
    object ADODsDadosQt_Envio: TBCDField
      FieldName = 'Qt_Envio'
      DisplayFormat = '#,###.###'
      Precision = 32
      Size = 3
    end
    object ADODsDadosQt_Vendido: TBCDField
      FieldName = 'Qt_Vendido'
      DisplayFormat = '#,###.###'
      Precision = 32
      Size = 3
    end
    object ADODsDadosQt_Devolvido: TBCDField
      FieldName = 'Qt_Devolvido'
      DisplayFormat = '#,###.###'
      Precision = 32
      Size = 3
    end
    object ADODsDadosQt_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Qt_Saldo'
      DisplayFormat = '#,###.###'
      Calculated = True
    end
    object ADODsDadosQt_Devedor: TFloatField
      DisplayLabel = 'Devedor'
      FieldKind = fkCalculated
      FieldName = 'Qt_Devedor'
      DisplayFormat = '#,###.###'
      Calculated = True
    end
    object ADODsDadosQt_Excesso: TFloatField
      DisplayLabel = 'Excesso'
      FieldKind = fkCalculated
      FieldName = 'Qt_Excesso'
      DisplayFormat = '#,###.###'
      Calculated = True
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
      '  Emitente_Terceiros'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Cd_Produto  = :Cd_Produto'
    )
    SQLOther0.Strings = (
      '-- Incluir o produto na tabela de pre'#231'o'
      'insert into Produto_Preco( Cd_Tabela, Cd_Produto, Vl_Venda, Vl_Custo,'
      '  Vl_Reposicao, Vl_Promocao )'
      'values( :Cd_Tabela, :Cd_Produto, :Vl_Venda, :Vl_Custo, Vl_Reposicao, 0 )'
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
    Top = 215
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 26
    Top = 215
  end
end
