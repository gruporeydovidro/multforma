object FrmCarga_Report: TFrmCarga_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Cargas - Resumo Sint'#233'tico por Or'#231'amento'
  ClientHeight = 231
  ClientWidth = 570
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
    Height = 231
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 549
    Height = 231
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 201
      Width = 542
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 39
      Width = 51
      Height = 13
      Caption = 'Romaneio:'
      Transparent = True
    end
    object SbTransportador: TSpeedButton
      Left = 142
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
    object Label15: TLabel
      Left = 91
      Top = 38
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object Label2: TLabel
      Left = 304
      Top = 0
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbEmitente: TSpeedButton
      Left = 142
      Top = 88
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
    object Label12: TLabel
      Left = 92
      Top = 73
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 5
      Top = 74
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
      Transparent = True
    end
    object SbOrcamento: TSpeedButton
      Left = 67
      Top = 88
      Width = 23
      Height = 19
      Hint = 'Seleciona Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object SbRomaneio: TSpeedButton
      Left = 66
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Romaneio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbRomaneioClick
    end
    object Label4: TLabel
      Left = 5
      Top = 2
      Width = 125
      Height = 13
      Caption = 'No romaneio usar data de:'
    end
    object Label5: TLabel
      Left = 141
      Top = 1
      Width = 132
      Height = 13
      Caption = 'No or'#231'amento usar data de:'
    end
    object Label6: TLabel
      Left = 5
      Top = 110
      Width = 153
      Height = 13
      Caption = 'Listar or'#231'amentos n'#227'o alocados:'
    end
    object BitBtnCancel: TBitBtn
      Left = 462
      Top = 204
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Romaneio: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyDown = EdtNr_RomaneioKeyDown
    end
    object EdtDt_End: TDateEdit
      Left = 398
      Top = 14
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object EdtNm_Transportador: TEdit
      Left = 166
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
      TabOrder = 6
    end
    object EdtCd_Transportador: TCurrencyEdit
      Tag = 2
      Left = 91
      Top = 53
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtNr_RomaneioKeyDown
    end
    object EdtDt_Start: TDateEdit
      Left = 304
      Top = 14
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object BitBtnReport: TBitBtn
      Left = 376
      Top = 204
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 12
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 92
      Top = 88
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtNr_RomaneioKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 165
      Top = 88
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
      TabOrder = 9
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 88
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyDown = EdtNr_RomaneioKeyDown
    end
    object CbDtRomaneio: TComboBox
      Left = 5
      Top = 15
      Width = 134
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Emiss'#227'o do Romaneio'
      Items.Strings = (
        'Emiss'#227'o do Romaneio'
        'Previs'#227'o de Sa'#237'da'
      )
    end
    object CkBZebrado: TCheckBox
      Left = 5
      Top = 208
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CbDtOrcamento: TComboBox
      Left = 141
      Top = 14
      Width = 160
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 1
      Text = 'Fechamento do Or'#231'amento'
      Items.Strings = (
        'Emiss'#227'o do Or'#231'amento'
        'Confirma'#231#227'o do Or'#231'amento'
        'Fechamento do Or'#231'amento'
      )
    end
    object SctReport: TSctReport
      Left = 452
      Top = 3
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
      TabOrder = 14
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 1124
      SHeight = 581
      MTop = 3
      MLeft = 452
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
        PageSetup.Orientation = poLandscape
        PageSetup.Size = psA4
        PageSetup.Height = 8.26771653543307
        PageSetup.Width = 11.692913385826772
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Cargas por Or'#231'amento'
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
        object adodsreportQt_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_EntregueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Entregue'
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
        object adodsreportVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportNr_OrcamentoVar
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
        object adodsreportVl_TotalOrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_TotalOrcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_TotalEntregueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_TotalEntregue'
          DataSource = DsReport
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
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsreportVl_TotalSaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_TotalSaldo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_TotalOrcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_TotalOrcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_TotalEntregue: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_TotalEntregueVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_TotalSaldo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_TotalSaldoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 1115
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 1115
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 284
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cargas - Resumo Sint'#233'tico por Or'#231'amento'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 968
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 1001
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 965
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 1001
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
            Width = 1066
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 145
          Width = 1115
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel8: TSctvarlabel
            Left = 2
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_ProdutoVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 73
            Top = -1
            Width = 470
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 930
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00###'
            DataFormat.Digits = 5
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 859
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalEntregueVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 792
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_EntregueVar
            DataFormat.DisplayFormat = '#,##0.00###'
            DataFormat.Digits = 5
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 712
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalOrcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 645
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0.00###'
            DataFormat.Digits = 5
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 578
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 546
            Top = 1
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportSg_UnidadeVar
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 1001
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalSaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 219
          Width = 1115
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 1066
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
            Left = 985
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 1032
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
          Top = 254
          Width = 1115
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 74
          Width = 1115
          Height = 56
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 6
            Width = 69
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 71
            Top = 6
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportNr_OrcamentoVar
            DataFormat.DisplayFormat = '#,###0'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 128
            Top = 6
            Width = 47
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 179
            Top = 6
            Width = 398
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 2
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 73
            Top = 38
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 934
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 859
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 792
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 712
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 645
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 578
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 546
            Top = 38
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid'
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 49
            Width = 1066
            Height = 7
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 829
            Top = 21
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Entregue'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 646
            Top = 21
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Or'#231'amento'
          end
          object SctLine3: TSctLine
            Left = 578
            Top = 31
            Width = 200
            Height = 7
          end
          object SctLine5: TSctLine
            Left = 793
            Top = 31
            Width = 131
            Height = 7
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 1001
            Top = 38
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 178
          Width = 1115
          Height = 26
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 696
            Top = 2
            Width = 81
            Height = 17
            TotalVariable = TotalOfVl_TotalOrcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 840
            Top = 2
            Width = 84
            Height = 17
            TotalVariable = TotalOfVl_TotalEntregue
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 968
            Top = 2
            Width = 98
            Height = 17
            TotalVariable = TotalOfVl_TotalSaldo
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctLine6: TSctLine
            Left = 568
            Top = 1
            Width = 498
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 578
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais:'
          end
        end
      end
    end
    object CbNaoAlocado: TComboBox
      Left = 5
      Top = 124
      Width = 51
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto,'#13#10'  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade,'#13#10'  sum( CI.Qt_Item ) as Qt_Entregue, OI.Vl_Unitario,'#13#10#13#10'  OT.Nm_Emitente'#13#10#13#10'from'#13#10'  Carga_Item CI'#13#10#13#10'inner join'#13#10'  Carga C'#13#10'on'#13#10'  C.Cd_Filial   = CI.Cd_Filial and'#13#10'  C.Nr_Romaneio = CI.Nr_Romaneio'#13#10'  /* Cd_Transportador */'#13#10'  /* Dt_Start */'#13#10'  /* Dt_End */'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = CI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = CI.Nr_Item'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = OI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = OI.Nr_Orcamento'#13#10#13#10'  /* Cd_Emitente */'#13#10#13#10'where'#13#10'  CI.Cd_Filial    = :Cd_Filial'#13#10#13#10'  /* Nr_Romaneio */'#13#10'  /* Nr_Orcamento */'#13#10#13#10'group by'#13#10'  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto,'#13#10'  P.Nm_Produto, OI.Qt_Item, OI.Sg_Unidade, OI.Vl_Unitario,'#13#10#13#10'  OT.Nm_Emitente'#13#10#13#10'order by'#13#10'  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQLOther0.Strings = (
      '--------------- Itens alocados em carga'
      'if Object_ID( ''''TempDB..#CargaTMP'''' ) is not null'
      '  drop table #CargaTMP'
      ''
      'if Object_ID( ''''TempDB..#CargaTMP2'''' ) is not null'
      '  drop table #CargaTMP2'
      ''
      'select'
      '  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto, CI.Nr_Item,'
      '  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade,'
      '  sum( CI.Qt_Item ) as Qt_Entregue, OI.Vl_UnitarioVenda as Vl_Unitario,'
      ''
      '  OT.Nm_Emitente'
      ''
      'into'
      '  #CargaTMP'
      ''
      'from'
      '  Carga_Item CI'
      ''
      'inner join'
      '  Carga C'
      'on'
      '  C.Cd_Filial   = CI.Cd_Filial and'
      '  C.Nr_Romaneio = CI.Nr_Romaneio'
      '  /* Cd_Transportador */'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial    = CI.Cd_Filial and'
      '  OI.Nr_Orcamento = CI.Nr_Orcamento and'
      '  OI.Nr_Item      = CI.Nr_Item'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = OI.Cd_Filial and'
      '  OT.Nr_Orcamento = OI.Nr_Orcamento'
      ''
      '  /* Cd_Emitente */'
      ''
      'where'
      '  CI.Cd_Filial    = :Cd_Filial'
      ''
      '  /* Nr_Romaneio */'
      '  /* Nr_Orcamento */'
      ''
      'group by'
      '  CI.Cd_Filial, CI.Nr_Orcamento, OI.Cd_Produto, CI.Nr_Item,'
      '  P.Nm_Produto, OI.Qt_Item, OI.Sg_Unidade, OI.Vl_UnitarioVenda,'
      ''
      '  OT.Nm_Emitente'
    )
    SQLOther1.Strings = (
      '--------------- Itens n'#227'o alocados em carga'
      'insert into #CargaTMP'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OI.Cd_Produto, OI.Nr_Item,'
      '  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade,'
      '  0.0 as Qt_Entregue, OI.Vl_UnitarioVenda as Vl_Unitario,'
      ''
      '  OT.Nm_Emitente'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial    = OT.Cd_Filial and'
      '  OI.Nr_Orcamento = OT.Nr_Orcamento and'
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Carga_Item CI'
      ''
      '    where'
      '      CI.Cd_Filial    = OI.Cd_Filial and'
      '      CI.Nr_Orcamento = OI.Nr_Orcamento and'
      '      CI.Nr_Item      = OI.Nr_Item'
      '    )'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'where'
      '  OT.Cd_Filial    = :Cd_Filial'
      ''
      '  /* Cd_Emitente */'
      '  /* Nr_Orcamento */'
      '  /* Dt_Start */'
      '  /* Dt_End */'
    )
    SQLOther2.Strings = (
      '--------------- Itens de Or'#231'amento n'#227'o alocado mas que existem itens do or'#231'amento alocado'
      'select distinct'
      '  Cd_Filial, Nr_Orcamento'
      ''
      'into'
      '  #CargaTMP2'
      ''
      'from'
      '  #CargaTMP'
      ''
      'insert into #CargaTMP'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OI.Cd_Produto, OI.Nr_Item,'
      '  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade,'
      '  0.0 as Qt_Entregue, OI.Vl_UnitarioVenda as Vl_Unitario,'
      ''
      '  OT.Nm_Emitente'
      ''
      'from'
      '  #CargaTMP2 CT'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = CT.Cd_Filial and'
      '  OT.Nr_Orcamento = CT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial    = OT.Cd_Filial and'
      '  OI.Nr_Orcamento = OT.Nr_Orcamento and'
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      #CargaTMP CI'
      ''
      '    where'
      '      CI.Cd_Filial    = OI.Cd_Filial and'
      '      CI.Nr_Orcamento = OI.Nr_Orcamento and'
      '      CI.Nr_Item      = OI.Nr_Item'
      '    )'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'select'
      '  Cd_Filial, Nr_Orcamento, Cd_Produto,'
      '  Nm_Produto, Qt_Orcamento, Sg_Unidade,'
      '  Qt_Entregue, Vl_Unitario, Nm_Emitente'
      ''
      'from'
      '  #CargaTMP'
      ''
      'order by'
      '  1, 2, 3'
    )
    Left = 64
    Top = 152
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsReportNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsReportQt_Orcamento: TBCDField
      DisplayLabel = 'Orcamento'
      FieldName = 'Qt_Orcamento'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsReportSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsReportQt_Entregue: TBCDField
      DisplayLabel = 'Entregue'
      FieldName = 'Qt_Entregue'
      ReadOnly = True
      DisplayFormat = '#,##0.###'
      Precision = 32
      Size = 3
    end
    object ADODsReportQt_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Qt_Saldo'
      DisplayFormat = '#,##0.###'
      Calculated = True
    end
    object ADODsReportVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 13
      Size = 5
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportVl_TotalOrcamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_TotalOrcamento'
      Calculated = True
    end
    object ADODsReportVl_TotalEntregue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_TotalEntregue'
      Calculated = True
    end
    object ADODsReportVl_TotalSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_TotalSaldo'
      Calculated = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 32
    Top = 152
  end
end
