object FrmOrcamento_Report_Margem: TFrmOrcamento_Report_Margem
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Vendas por Margem de Lucro'
  ClientHeight = 294
  ClientWidth = 740
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
    Height = 294
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 413
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 719
    Height = 294
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 889
    ExplicitHeight = 413
    object BvlSeparator: TBevel
      Left = 3
      Top = 264
      Width = 711
      Height = 5
      Shape = bsTopLine
    end
    object SbVendedor: TSpeedButton
      Left = 44
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbVendedorClick
    end
    object Label6: TLabel
      Left = 3
      Top = 2
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label10: TLabel
      Left = 3
      Top = 38
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 53
      Top = 52
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
    object Label19: TLabel
      Left = 3
      Top = 74
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 43
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label20: TLabel
      Left = 322
      Top = 74
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 362
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label1: TLabel
      Left = 3
      Top = 110
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object BitBtnReport: TBitBtn
      Left = 546
      Top = 267
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 14
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 632
      Top = 267
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 15
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 2
      Left = 3
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 67
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
      TabOrder = 1
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 3
      Top = 52
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_EmitenteExit
    end
    object EdtNm_Emitente: TEdit
      Left = 76
      Top = 52
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 5
      Left = 3
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
    end
    object EdtNm_Grupo: TEdit
      Left = 66
      Top = 90
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
      TabOrder = 5
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 6
      Left = 322
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_SubGrupoExit
    end
    object EdtNm_SubGrupo: TEdit
      Left = 385
      Top = 90
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
    object EdtDt_Start: TDateEdit
      Left = 3
      Top = 125
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 8
    end
    object EdtDt_End: TDateEdit
      Left = 98
      Top = 125
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 9
    end
    object CkBMaior: TCheckBox
      Left = 194
      Top = 110
      Width = 73
      Height = 17
      Caption = 'Maior que:'
      TabOrder = 10
    end
    object EdtPr_Maior: TCurrencyEdit
      Tag = 6
      Left = 194
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '##0.00#'
      TabOrder = 11
      OnExit = EdtCd_SubGrupoExit
    end
    object CkBMenor: TCheckBox
      Left = 265
      Top = 109
      Width = 73
      Height = 17
      Caption = 'Menor que:'
      TabOrder = 12
    end
    object EdtPr_Menor: TCurrencyEdit
      Tag = 6
      Left = 265
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '##0.00#'
      TabOrder = 13
      OnExit = EdtCd_SubGrupoExit
    end
    object CkBCesta: TCheckBox
      Left = 614
      Top = 244
      Width = 97
      Height = 17
      Caption = 'Ignorar cestas'
      TabOrder = 16
    end
    object SctReport: TSctReport
      Left = 426
      Top = 23
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
      STop = 21
      SLeft = 6
      SWidth = 836
      SHeight = 581
      MTop = 23
      MLeft = 426
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
        Description = 'Cidades'
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
        object adodsreportNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportMg_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_OrcamentoVar
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
          DataSource = FrmFuncionario_Find.DsFind
        end
        object TotalOfMg_Pedido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportMg_PedidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
        object TotalOfVl_Custo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_CustoVar
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
            Left = 0
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Margem de Lucro'
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
          object SctTxtPeriodo: TSctvarlabel
            Left = 0
            Top = 18
            Width = 241
            Height = 17
            Caption = 'Periodo:'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 60
            Top = 0
            Width = 317
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 651
            Top = 0
            Width = 46
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportMg_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 502
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 447
            Top = 0
            Width = 54
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_FaturaVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 376
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_FaturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 578
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
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
          Top = 177
          Width = 748
          Height = 40
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          OnBeforePrint = ReportFooterBandBeforePrint
          object SctLine5: TSctLine
            Left = 4
            Top = 1
            Width = 692
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 502
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Orcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 466
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Orcamento
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
          object Sctvarlabel21: TSctvarlabel
            Left = 362
            Top = 3
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'N'#186' de Vendas:'
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 60
            Top = 20
            Width = 50
            Height = 17
            TotalVariable = TotalOfMg_Pedido
            TotalType = ttMin
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laLeft
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 10
            Top = 20
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Menor:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 0
            Top = 3
            Width = 93
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Margens'
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 166
            Top = 20
            Width = 50
            Height = 17
            TotalVariable = TotalOfMg_Pedido
            TotalType = ttMax
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laLeft
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 116
            Top = 20
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Maior:'
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 578
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Custo
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctVarMargem: TSctvarlabel
            Left = 651
            Top = 3
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
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
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 60
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 651
            Top = 0
            Width = 46
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Margem'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 502
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Venda'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 447
            Top = 0
            Width = 54
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#186' Fatura'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 376
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 578
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Custo'
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 24
    Top = 152
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento, OT.Nm_Emitente, OT.Dt_Fatura, OT.Nr_Fatura,'#13#10'  OT.Vl_Orcamento, OT.Mg_Pedido'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'/* Grupo */'#13#10#13#10'where'#13#10'  OT.Cd_Filial  = :Cd_Filial and'#13#10'  OT.Dt_Fatura >= :Dt_Start and'#13#10'  OT.Dt_Fatura  < :Dt_End'#13#10'  /* Cd_Emitente */'#13#10'  /* Cd_Funcionario */'#13#10#13#10'order by'#13#10'  OT.Cd_Filial, OT.Dt_Fatura, OT.Nr_Orcamento'
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
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OT.Nm_Emitente, OT.Dt_Fatura, OT.Nr_Fatura,'
      '  OT.Vl_Orcamento, OT.Mg_Pedido'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      '/* Grupo */'
      ''
      'where'
      '  OT.Cd_Filial    = :Cd_Filial and'
      '  OT.St_Orcamento = ''''9'''' and'
      '  OT.Dt_Fatura   >= :Dt_Start and'
      '  OT.Dt_Fatura    < :Dt_End'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  /* Nr_Maior */'
      '  /* Nr_Menor */'
      '  /* Cesta */'
      ''
      'order by'
      '  OT.Cd_Filial, OT.Dt_Fatura, OT.Nr_Orcamento'
    )
    SQLOther1.Strings = (
      '-------------------- Join para grupo/subgrupo de emitente'
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = OT.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
    )
    SQLOther2.Strings = (
      '-------------------- Exclus'#227'o de vendas de cestas'
      '  and not exists'
      '  ('
      '  select'
      '    OC.Cd_Filial'
      ''
      '  from'
      '    Orcamento_Conjunto OC'
      ''
      '  where'
      '    OC.Cd_Filial     = OT.Cd_Filial and'
      '    OC.Nr_Orcamento  = OT.Nr_Orcamento '
      '  )'
    )
    Left = 56
    Top = 152
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsReportNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsReportVl_Orcamento: TBCDField
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsReportMg_Pedido: TBCDField
      FieldName = 'Mg_Pedido'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Custo'
      Calculated = True
    end
  end
end
