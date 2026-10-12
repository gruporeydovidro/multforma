object FrmFuncionario_Ranking: TFrmFuncionario_Ranking
  Left = 327
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ranking de Vendedores'
  ClientHeight = 520
  ClientWidth = 753
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
    Height = 520
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 732
    Height = 520
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 490
      Width = 725
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
      Width = 216
      Height = 13
      Caption = '"X" Maiores clientes (somente para o gr'#225'fico):'
    end
    object Label19: TLabel
      Left = 5
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label20: TLabel
      Left = 323
      Top = 38
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 363
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label3: TLabel
      Left = 6
      Top = 75
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbFuncionario: TSpeedButton
      Left = 55
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object SbFile: TSpeedButton
      Tag = 1
      Left = 706
      Top = 86
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
      Left = 553
      Top = 492
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 15
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 644
      Top = 492
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 16
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
      Left = 3
      Top = 492
      Width = 85
      Height = 25
      Caption = '&Gr'#225'fico'
      TabOrder = 14
      OnClick = BitBtnChartClick
      Glyph.Data = {binary 826 bytes}
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 68
      Top = 52
      Width = 250
      Height = 19
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
      TabOrder = 7
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 323
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 386
      Top = 52
      Width = 250
      Height = 19
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
      TabOrder = 9
    end
    object CkBOutros: TCheckBox
      Left = 445
      Top = 2
      Width = 161
      Height = 17
      Caption = 'Incluir fatia "Demais Clientes"'
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
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 89
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 89
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
      Top = 112
      Width = 715
      Height = 374
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
      Gradient.EndColor = 14155735
      Gradient.StartColor = 12713983
      Gradient.Visible = True
      Legend.TextStyle = ltsLeftPercent
      Title.AdjustFrame = False
      Title.Alignment = taRightJustify
      Title.Font.Height = -16
      Title.Font.Style = [fsBold, fsItalic]
      Title.Frame.Color = clScrollBar
      Title.Text.Strings = (
        '10 maiores vendedores'
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
      TabOrder = 18
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
    object SctReport: TSctReport
      Left = 625
      Top = 7
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
      TabOrder = 17
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
      MTop = 7
      MLeft = 625
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
        Description = 'Ranking de Vendedores'
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
        object adodsclientevl_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_orcamento'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsclientevl_orcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsrankingcd_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsrankingnm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsRanking
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
            Caption = 'Ranking de Vendedores'
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
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 395
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsrankingcd_funcionarioVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 54
            Top = 0
            Width = 342
            Height = 17
            Variable = adodsrankingnm_funcionarioVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 600
            Top = 0
            Width = 97
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclientevl_orcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 398
            Top = 0
            Width = 199
            Height = 17
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 428
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
          Top = 463
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 550
            Top = 1
            Width = 146
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 600
            Top = 3
            Width = 97
            Height = 17
            TotalVariable = TotalOfvl_orcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 553
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
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 360
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
            Caption = 'Nome do Vendedor'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 600
            Top = 0
            Width = 97
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total de Vendas'
          end
        end
        object PgHdChat: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 271
          ParentColor = True
          BandName = 'PgHdChat'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          OnAfterPrint = PgHdChatAfterPrint
          Band = PageHeaderBand
          Above = False
          object SctImgChat: TSctImageLabel
            Left = 34
            Top = 0
            Width = 615
            Height = 270
            Center = True
            Stretch = True
          end
        end
      end
    end
    object EdtNm_File: TLabeledEdit
      Left = 393
      Top = 89
      Width = 307
      Height = 19
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do arquivo CSV:'
      TabOrder = 12
      Text = 'Ranking de Vendedores.CSV'
    end
    object BitBtnArquivo: TBitBtn
      Left = 437
      Top = 492
      Width = 110
      Height = 25
      Caption = 'Arquivo'
      TabOrder = 13
      OnClick = BitBtnArquivoClick
      Glyph.Data = {binary 826 bytes}
    end
  end
  object ADODsRanking: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  O.Cd_Funcionario, O.Nm_Funcionario, '#13#10'  sum( Vl_Orcamento ) as Vl_Orcamento,'#13#10'   count( * ) as Nr_Orcamentos'#13#10#13#10'from'#13#10'  Orcamento_Total O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10'  '#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10'  '#13#10'group by'#13#10'  O.Cd_Funcionario, O.Nm_Funcionario'#13#10#13#10'order by'#13#10'  3 desc'#13#10#13#10'/* Limit */'
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select /* Limit */'
      '  O.Cd_Funcionario, O.Nm_Funcionario, '
      '  sum( O.Vl_Orcamento ) as Vl_Orcamento,'
      '   count( * ) as Nr_Orcamentos'
      ''
      'from'
      '  Orcamento_Total O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  '
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      '  '
      'group by'
      '  O.Cd_Funcionario, O.Nm_Funcionario'
      ''
      'order by'
      '  3 desc'
      ''
      '/* Limit */'
    )
    Left = 156
    Top = 385
    object ADODsRankingCd_Funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsRankingNm_Funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsRankingVl_Orcamento: TBCDField
      FieldName = 'vl_orcamento'
      Precision = 28
      Size = 6
    end
    object ADODsRankingNr_Orcamentos: TIntegerField
      FieldName = 'Nr_Orcamentos'
      ReadOnly = True
    end
  end
  object DsRanking: TDataSource
    DataSet = ADODsRanking
    Left = 126
    Top = 385
  end
end
