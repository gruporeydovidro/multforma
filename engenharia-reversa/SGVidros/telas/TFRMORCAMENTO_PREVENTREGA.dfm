object FrmOrcamento_PrevEntrega: TFrmOrcamento_PrevEntrega
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Previs'#227'o de Entrega'
  ClientHeight = 309
  ClientWidth = 724
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
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
    Height = 309
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 310
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 703
    Height = 309
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitHeight = 310
    object BvlSeparator: TBevel
      Left = 4
      Top = 278
      Width = 693
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 95
      Height = 13
      Caption = 'Per'#237'odo de entrega:'
    end
    object Label12: TLabel
      Left = 5
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object LblOrigem: TLabel
      Left = 196
      Top = 4
      Width = 90
      Height = 13
      Caption = 'Origem dos Dados:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 529
      Top = 282
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 615
      Top = 282
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 55
      Width = 390
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
      TabOrder = 4
    end
    object CbOrigem: TComboBox
      Left = 196
      Top = 18
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Or'#231'amentos'
      Items.Strings = (
        'Or'#231'amentos'
        'Ordem de Servi'#231'o'
      )
    end
    object SctReport: TSctReport
      Left = 548
      Top = 82
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
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 82
      MLeft = 548
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
        PageSetup.LeftMargin = 0.03
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Previs'#227'o de Entrega'
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
          DataSource = FrmEstado_Find.DsFind
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
        object adodsreportNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_ConfirmadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Confirmado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_PrevEntregaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_PrevEntrega'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfNr_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportNr_OrcamentoVar
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
        object adodsreportNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
            Caption = 'Previs'#227'o de Entrega'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 651
            Top = 2
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 684
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 648
            Top = 19
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 684
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 25
            Width = 751
            Height = 13
          end
          object SctTxtPeriodo: TSctvarlabel
            Left = 0
            Top = 18
            Width = 361
            Height = 17
            Caption = 'Or'#231'amento'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 812
          Height = 22
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 3
            Top = 4
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 70
            Top = 2
            Width = 390
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 681
            Top = 4
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDt_PrevEntregaVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 609
            Top = 4
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDt_FaturaVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 537
            Top = 4
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDt_ConfirmadoVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 464
            Top = 4
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDt_EmissaoVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 146
          Width = 812
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 751
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
            Left = 669
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 716
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
          Top = 181
          Width = 812
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 718
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfNr_Orcamento
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 615
            Top = 3
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
          Width = 812
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 751
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 3
            Top = 0
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 70
            Top = 0
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cliente'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 681
            Top = 0
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Entrega'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 609
            Top = 0
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fechado'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 537
            Top = 0
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Confirmado'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 464
            Top = 0
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 40
    Top = 233
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Pela OServico'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, Concat( O.Cd_Emitente, '''' - '''', E.Nm_Emitente, '''' - OS '''', OS.Nr_OS ) as Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'#13#10'  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento, OS.Dt_Entrega as Dt_PrevEntrega'#13#10#13#10'from'#13#10'  OServico OS'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OS.Cd_Filial and'#13#10'  /* Cd_Emitente */'#13#10'  O.Nr_Orcamento = OS.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  OS.Cd_Filial    = @Cd_Filial and'#13#10'  OS.Dt_Entrega  >= @Dt_Start and'#13#10'  OS.Dt_Entrega   < @Dt_End'#13#10#13#10'order by'#13#10'  O.Cd_Filial, OS.Dt_Entrega'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = 40543.0
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
      '--------------- Or'#231'amentos confirmados - Estoque Reservado'
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, Concat( O.Cd_Emitente, '''' - '''', E.Nm_Emitente ) as Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ ) as Dt_PrevEntrega'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  O.St_Orcamento = ''''5'''' and'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ ) >= @Dt_Start and'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ )  < @Dt_End'
      ''
      'union'
      '--------------- Or'#231'amentos Fechado'
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, Concat( O.Cd_Emitente, '''' - '''', E.Nm_Emitente ) as Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ ) as Dt_PrevEntrega'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  O.St_Orcamento = ''''9'''' and'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ ) >= @Dt_Start and'
      '  DateAdd( Day, O.Nr_Entrega, O./* Data */ )  < @Dt_End'
      ''
      'order by'
      '  O.Cd_Filial, DateAdd( Day, O.Nr_Entrega, O./* Data */ )'
    )
    SQLOther1.Strings = (
      '--------------- Pela OServico'
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
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, Concat( O.Cd_Emitente, '''' - '''', E.Nm_Emitente, '''' - OS '''', OS.Nr_OS ) as Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento, OS.Dt_Entrega as Dt_PrevEntrega'
      ''
      'from'
      '  OServico OS'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OS.Cd_Filial and'
      '  /* Cd_Emitente */'
      '  O.Nr_Orcamento = OS.Nr_Orcamento'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'where'
      '  OS.Cd_Filial    = @Cd_Filial and'
      '  OS.Dt_Entrega  >= @Dt_Start and'
      '  OS.Dt_Entrega   < @Dt_End'
      ''
      'order by'
      '  O.Cd_Filial, OS.Dt_Entrega'
    )
    Left = 68
    Top = 233
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
      ReadOnly = True
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
    object ADODsReportDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
      ReadOnly = True
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      ReadOnly = True
    end
    object ADODsReportDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
      ReadOnly = True
    end
    object ADODsReportNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
      ReadOnly = True
    end
    object ADODsReportSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object ADODsReportDt_PrevEntrega: TDateTimeField
      FieldName = 'Dt_PrevEntrega'
      ReadOnly = True
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 83
    end
  end
end
