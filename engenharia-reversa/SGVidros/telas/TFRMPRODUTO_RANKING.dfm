object FrmProduto_Ranking: TFrmProduto_Ranking
  Left = 318
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ranking de Produtos'
  ClientHeight = 535
  ClientWidth = 832
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
    Height = 535
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 811
    Height = 535
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 5
      Top = 502
      Width = 800
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label2: TLabel
      Left = 195
      Top = 2
      Width = 222
      Height = 13
      Caption = '"X" Maiores Produtos (somente para o gr'#225'fico):'
    end
    object Label3: TLabel
      Left = 5
      Top = 109
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 123
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
    object SbGrupoSel: TSpeedButton
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoSelClick
    end
    object Label4: TLabel
      Left = 5
      Top = 37
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupoSel: TSpeedButton
      Left = 45
      Top = 70
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
      Top = 88
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseSelClick
    end
    object Label5: TLabel
      Left = 382
      Top = 110
      Width = 49
      Height = 13
      Caption = 'Ordem de:'
    end
    object SbFile: TSpeedButton
      Tag = 1
      Left = 775
      Top = 121
      Width = 22
      Height = 21
      Hint = 'Escolha o nome do arquivo'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFileClick
    end
    object BitBtnReport: TBitBtn
      Left = 637
      Top = 507
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 16
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 723
      Top = 507
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtNr_Maiores: TRxSpinEdit
      Left = 195
      Top = 16
      Width = 58
      Height = 19
      MaxValue = 100.0
      MinValue = 2.0
      Value = 10.0
      TabOrder = 2
      OnChange = EdtNr_MaioresChange
    end
    object BitBtnChart: TBitBtn
      Left = 5
      Top = 507
      Width = 85
      Height = 25
      Caption = '&Gr'#225'fico'
      TabOrder = 15
      OnClick = BitBtnChartClick
      Glyph.Data = {binary 826 bytes}
    end
    object CkBOutros: TCheckBox
      Left = 445
      Top = 2
      Width = 161
      Height = 17
      Caption = 'Incluir fatia "Demais Produtos"'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CkbPrint: TCheckBox
      Left = 445
      Top = 17
      Width = 174
      Height = 17
      Caption = 'Imprimir somente os "X" maiores'
      TabOrder = 4
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 123
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
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
      TabOrder = 11
    end
    object ChtRanking: TChart
      Left = 6
      Top = 148
      Width = 790
      Height = 348
      AllowPanning = pmNone
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      Foot.Alignment = taLeftJustify
      Foot.Font.Height = -12
      Foot.Frame.Color = clScrollBar
      Foot.Text.Strings = (
        ''
      )
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = 14286809
      Gradient.StartColor = 13303807
      Gradient.Visible = True
      Legend.TextStyle = ltsLeftPercent
      Title.AdjustFrame = False
      Title.Alignment = taRightJustify
      Title.Font.Height = -16
      Title.Font.Style = [fsBold, fsItalic]
      Title.Frame.Color = clScrollBar
      Title.Text.Strings = (
        '10 produtos mais vendidos'
      )
      AxisVisible = False
      BottomAxis.Grid.Color = clScrollBar
      BottomAxis.LabelsAngle = 90
      BottomAxis.LabelsFont.Color = clTeal
      BottomAxis.LabelsFont.Height = -12
      BottomAxis.Title.Caption = 'Stock Market Date'
      BottomAxis.Title.Font.Color = clGreen
      BottomAxis.Title.Font.Height = -16
      BottomAxis.Title.Font.Style = [fsItalic]
      ClipPoints = False
      Frame.Visible = False
      LeftAxis.Grid.Color = clScrollBar
      LeftAxis.LabelsFont.Color = clWhite
      LeftAxis.LabelsFont.Height = -13
      LeftAxis.Title.Caption = 'Stock Price'
      LeftAxis.Title.Font.Color = clNavy
      LeftAxis.Title.Font.Height = -15
      LeftAxis.Title.Font.Style = [fsBold]
      RightAxis.Grid.Color = clScrollBar
      TopAxis.Grid.Color = clScrollBar
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DWalls = False
      Zoom.Allow = False
      Color = clSilver
      TabOrder = 13
      object PieSrRanking: TPieSeries
        Cursor = 2020
        Marks.Callout.Brush.Color = clBlack
        Marks.Style = smsPercent
        Marks.Visible = False
        PercentFormat = '##0.00 %'
        ValueFormat = '#.##0,##'
        Gradient.Direction = gdRadial
        OtherSlice.Legend.Visible = False
        OtherSlice.Text = 'Other'
        PieValues.Name = 'Y'
        PieValues.Order = loNone
        Left = 78
        Top = 94
      end
    end
    object CkBGrafico: TCheckBox
      Left = 445
      Top = 33
      Width = 97
      Height = 17
      Caption = 'Imprimir Gr'#225'fico'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object MmEstruturaSel: TMemo
      Left = 69
      Top = 52
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
      TabOrder = 9
    end
    object EdtCd_GrupoSel: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_GrupoSelExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_SubGrupoSel: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 70
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_SubGrupoSelExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_ClasseSel: TCurrencyEdit
      Tag = 5
      Left = 5
      Top = 88
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_ClasseSelExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object SctReport: TSctReport
      Left = 723
      Top = 73
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
      TabOrder = 18
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
      MTop = 73
      MLeft = 723
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
        Description = 'Ranking de Produtos'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsRanking
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
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsRanking
        end
        object adodsrankingcd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingnm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingsg_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingnm_abreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_abreviado'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingvl_vendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_vendido'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingqt_vendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_vendido'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_vendido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsrankingvl_vendidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfqt_vendido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsrankingqt_vendidoVar
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
            Caption = 'Ranking de Produtos'
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
          object SctVarPeriodo: TSctvarlabel
            Left = 2
            Top = 20
            Width = 269
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 397
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsrankingcd_produtoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 54
            Top = -2
            Width = 437
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsrankingnm_produtoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 615
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsrankingvl_vendidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 527
            Top = 1
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsrankingqt_vendidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 496
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsrankingsg_estoqueVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 430
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
          Top = 465
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 485
            Top = 1
            Width = 211
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 615
            Top = 3
            Width = 82
            Height = 17
            TotalVariable = TotalOfvl_vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 484
            Top = 3
            Width = 42
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
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 527
            Top = 3
            Width = 82
            Height = 17
            TotalVariable = TotalOfqt_vendido
            DataFormat.DisplayFormat = '#,##0.0##'
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
          Top = 362
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Order = 1
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
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 54
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 615
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 527
            Top = 1
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 496
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unid.'
          end
        end
        object PgHdChat: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 273
          ParentColor = True
          BandName = 'PgHdChat'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          OnAfterPrint = PgHdChatAfterPrint
          Band = PageHeaderBand
          Above = False
          object SctImgChat: TSctImageLabel
            Left = 41
            Top = 1
            Width = 615
            Height = 270
            Center = True
            Stretch = True
          end
        end
      end
    end
    object CbOrdem: TComboBox
      Left = 382
      Top = 123
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 0
      TabOrder = 12
      Items.Strings = (
        'Valor'
        'Quantidade'
      )
    end
    object EdtNm_File: TLabeledEdit
      Left = 480
      Top = 123
      Width = 289
      Height = 19
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do arquivo CSV:'
      TabOrder = 19
      Text = 'Ranking de Produtos.CSV'
    end
    object BitBtnArquivo: TBitBtn
      Left = 521
      Top = 507
      Width = 110
      Height = 25
      Caption = 'Arquivo'
      TabOrder = 14
      OnClick = BitBtnArquivoClick
      Glyph.Data = {binary 826 bytes}
    end
    object CkBFilial: TCheckBox
      Left = 709
      Top = 33
      Width = 97
      Height = 17
      Caption = 'Todas as filiais'
      Checked = True
      State = cbChecked
      TabOrder = 20
      Visible = False
    end
  end
  object ADODsRanking: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select /* Limit */'#13#10'  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque, P.Nm_Abreviado,'#13#10'  sum( OI.Vl_Venda ) as Vl_Vendido,'#13#10'  sum( OI.Qt_Estoque ) as Qt_Vendido'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  /* Fl_Estoque */'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10#13#10'group by'#13#10'  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque, P.Nm_Abreviado'#13#10#13#10'order by'#13#10'  5 desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 39448.0
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      'if Object_ID( ''''TempDB..#ProdRank'''' ) is not null'
      '  drop table #ProdRank'
      ''
      '------------------------- Seleciona os produtos'
      'select'
      '  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque, P.Nm_Abreviado,'
      '  sum( OI.Vl_Venda ) as Vl_Vendido,'
      '  sum( OI.Qt_Estoque ) as Qt_Vendido'
      ''
      'into'
      '  #ProdRank'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OI.Cd_Produto, OI.Nm_Produto, OI.SG_Estoque, P.Nm_Abreviado'
      ''
      '------------------------- Seleciona os produtos de conjunto'
      'insert into #ProdRank'
      'select'
      '  OC.Cd_Produto, OC.Nm_Produto, OC.Sg_Unidade as Sg_Estoque, P.Nm_Abreviado,'
      '  sum( OC.Vl_Venda ) as Vl_Vendido,'
      '  sum( OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Conjunto_Total OC'
      'on'
      '  OC.Cd_Filial     = O.Cd_Filial and'
      '  OC.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OC.Cd_Produto'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OC.Cd_Produto, OC.Nm_Produto, OC.Sg_Unidade, P.Nm_Abreviado'
      ''
      '/* Itens de Projeto */'
      ''
      '------------------------- Cria o result set'
      'select /* Limit */'
      '  Cd_Produto, Nm_Produto, Sg_Estoque, Nm_Abreviado,'
      '  sum( Vl_Vendido ) as Vl_Vendido, sum( Qt_Vendido ) as Qt_Vendido'
      ''
      'from'
      '  #ProdRank'
      ''
      'group by'
      '  Cd_Produto, Nm_Produto, Sg_Estoque, Nm_Abreviado'
      ''
      'order by'
      '  /* Order */'
    )
    SQLOther1.Strings = (
      '-- ---------------------- Seleciona os produtos de projeto'
      'insert into #ProdRank'
      'select'
      '  OP.Cd_Produto, OP.Nm_Produto, OP.Sg_Unidade as Sg_Estoque, P.Nm_Abreviado,'
      '  sum( OP.Vl_Venda ) as Vl_Vendido,'
      '  sum( OP.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Projeto_Item_Total OP'
      'on'
      '  OP.Cd_Filial     = O.Cd_Filial and'
      '  OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OP.Cd_Produto'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OP.Cd_Produto and'
      '  PU.Sg_Unidade = OP.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OP.Cd_Produto, OP.Nm_Produto, OP.Sg_Unidade, P.Nm_Abreviado'
      ''
    )
    Left = 156
    Top = 385
    object ADODsRankingCd_Produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsRankingNm_Produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsRankingSg_Estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsRankingNm_Abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsRankingVl_Vendido: TBCDField
      FieldName = 'vl_vendido'
      Precision = 12
      Size = 3
    end
    object ADODsRankingQt_Vendido: TBCDField
      FieldName = 'qt_vendido'
      Precision = 12
      Size = 3
    end
  end
  object DsRanking: TDataSource
    DataSet = ADODsRanking
    Left = 126
    Top = 385
  end
end
