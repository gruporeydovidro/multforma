object FrmCompra_Report: TFrmCompra_Report
  Left = 354
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Compras no Per'#237'odo'
  ClientHeight = 207
  ClientWidth = 499
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
    Height = 207
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 206
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 478
    Height = 207
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 477
    ExplicitHeight = 206
    object BvlSeparator: TBevel
      Left = 3
      Top = 176
      Width = 470
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
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
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
    object LblReport: TLabel
      Left = 317
      Top = 2
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object Label2: TLabel
      Left = 195
      Top = 2
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object BitBtnReport: TBitBtn
      Left = 304
      Top = 179
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 6
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 179
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 7
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
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 52
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
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
      TabOrder = 5
    end
    object CbReport: TComboBox
      Left = 317
      Top = 16
      Width = 78
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Anal'#237'tico'
        'Sint'#233'tico'
      )
    end
    object CbSituacao: TComboBox
      Left = 195
      Top = 16
      Width = 119
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Todas'
        'Aberto'
        'Pendente'
        'Recebido'
        'Cancelado'
      )
    end
    object SctRepAnalitico: TSctReport
      Left = 10
      Top = 80
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
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 493
      MTop = 80
      MLeft = 10
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
        BorderType = btNone
        Description = 'Compras no Per'#237'odo'
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsProduto
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsprodutonr_compraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_compra'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonr_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsProduto
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutosg_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsProduto
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutofl_loteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_lote'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produto_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto_emitente'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_prodchangeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_prodchange'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_compraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_compra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdt_emissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
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
        object DataLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsreportDp_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Custo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_DescontoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Desconto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Compras no Per'#237'odo'
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
            Width = 735
            Height = 7
          end
          object SctSubTitle_1: TSctvarlabel
            Left = 2
            Top = 20
            Width = 429
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo dd/mm/yyyy a dd/mm/yyyy'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel10: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportnr_compraVar
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Variable = adodsreportDs_SituacaoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportdt_emissaoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 222
            Top = 0
            Width = 293
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_EmitenteVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 588
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 518
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_DescontoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 235
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 735
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
            Left = 653
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 700
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
          Top = 270
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 600
            Top = 2
            Width = 135
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 604
            Top = 4
            Width = 50
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
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 660
            Top = 4
            Width = 75
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
            Width = 735
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Compra N '#186
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 222
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 588
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Custo Adic.'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 518
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desconto'
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 176
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsProduto
          object Sctvarlabel25: TSctvarlabel
            Left = 9
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutocd_produtoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 60
            Top = 1
            Width = 356
            Height = 17
            Variable = adodsprodutonm_prodchangeVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 610
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutovl_totalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 539
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutovl_unitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 419
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsprodutosg_unidadeVar
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 141
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = Data
          object Sctvarlabel19: TSctvarlabel
            Left = 9
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object SctLine5: TSctLine
            Left = 0
            Top = 13
            Width = 735
            Height = 7
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 60
            Top = 1
            Width = 356
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 610
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 539
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 419
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
        end
        object DataFooter: TSctDataFootBand
          Left = 0
          Top = 210
          Width = 786
          Height = 10
          ParentColor = True
          BandName = 'DataFooter'
          Updatelevel = DataFooterLevel
          Band = Data
        end
      end
    end
    object SctRepSintetico: TSctReport
      Left = 95
      Top = 80
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
      TabOrder = 9
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 493
      MTop = 80
      MLeft = 95
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
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Compras no Per'#237'odo'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsReport
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
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmHistorico_Find.DsFind
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEstado_Find.DsFind
        end
        object SctDBVar1: TSctDBVar
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
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReport
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_compra'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
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
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
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
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
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
        object SctDBVar9: TSctDBVar
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
        object SctDBVar10: TSctDBVar
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
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_lote'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto_emitente'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_prodchange'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_EmitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_compraVar1: TSctDBVar
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
        object adodsreportdt_emissaoVar1: TSctDBVar
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
        object adodsreportDs_SituacaoVar1: TSctDBVar
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
        object adodsreportVl_TotalVar1: TSctDBVar
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
        object adodsreportDp_CustoVar1: TSctDBVar
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
        object adodsreportDp_DescontoVar1: TSctDBVar
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
        object TotalOfVl_Total1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_TotalVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel35: TSctvarlabel
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
            Caption = 'Compras no Per'#237'odo'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine6: TSctLine
            Left = 0
            Top = 31
            Width = 735
            Height = 7
          end
          object SctSubTitle_2: TSctvarlabel
            Left = 2
            Top = 20
            Width = 429
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo dd/mm/yyyy a dd/mm/yyyy'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          object Sctvarlabel41: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportnr_compraVar1
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Variable = adodsreportDs_SituacaoVar1
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportdt_emissaoVar1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 222
            Top = 0
            Width = 293
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_EmitenteVar1
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 588
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_CustoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 518
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_DescontoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 735
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel48: TSctvarlabel
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
            Variable = SctDBVar1
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 653
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 700
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
          Top = 176
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine8: TSctLine
            Left = 600
            Top = 2
            Width = 135
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 604
            Top = 4
            Width = 50
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
            Left = 660
            Top = 4
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Total1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine9: TSctLine
            Left = 0
            Top = 13
            Width = 735
            Height = 7
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Compra N '#186
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 222
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 588
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Custo Adic.'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 518
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desconto'
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 126
    Top = 111
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Compra, C.Dt_Emissao, C.St_Compra, C.Cd_Emitente,'#13#10'  E.Nm_Emitente, C.Nr_Pedido_Emitente, C.Nm_Contato, C.Vl_Compra,'#13#10'  C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo, C.Mm_Observacao, '#13#10'  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros'#13#10#13#10'from'#13#10'  Compra C'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'where'#13#10'  C.Cd_Filial = :Cd_Filial and'#13#10'  C.Dt_Emissao >= :Dt_Start and'#13#10'  C.Dt_Emissao  < :Dt_End'#13#10'  /* C.Cd_Emitente */ '#13#10#13#10'order by'#13#10'  C.Nr_Compra'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Filial, C.Nr_Compra, C.Dt_Emissao, C.St_Compra, C.Cd_Emitente,'
      '  E.Nm_Emitente, C.Nr_Pedido_Emitente, C.Nm_Contato, C.Vl_Compra,'
      '  C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo, C.Mm_Observacao,'
      '  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros'
      ''
      'from'
      '  Compra C'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      ''
      'where'
      '  C.Cd_Filial = :Cd_Filial and'
      '  C.Dt_Emissao >= :Dt_Start and'
      '  C.Dt_Emissao  < :Dt_End'
      '  /* C.Cd_Emitente */'
      '  /* C.St_Compra */'
      ''
      'order by'
      '  C.Nr_Compra'
    )
    Left = 156
    Top = 110
    object ADODsReportcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReportnr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsReportdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsReportst_compra: TStringField
      FieldName = 'st_compra'
      FixedChar = True
      Size = 1
    end
    object ADODsReportcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsReportnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsReportnr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsReportnm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsReportvl_compra: TBCDField
      FieldName = 'vl_compra'
      Precision = 12
      Size = 2
    end
    object ADODsReportpr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsReportvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsReportpr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsReportvl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsReportmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsReportDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsReportVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsReportDp_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Custo'
      Calculated = True
    end
    object ADODsReportDp_Desconto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Desconto'
      Calculated = True
    end
    object ADODsReportvl_frete: TBCDField
      FieldName = 'vl_frete'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_seguro: TBCDField
      FieldName = 'vl_seguro'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_outros: TBCDField
      FieldName = 'vl_outros'
      Precision = 12
      Size = 2
    end
    object ADODsReportDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 150
      Calculated = True
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Compra, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade, B.Sg_Estoque, A.Qt_Item,'#13#10'  A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente, B.Nm_Produto, A.Nm_Produto as Nm_ProdChange,'#13#10'  A.Vl_Unitario * A.Qt_Item as Vl_Total, PF.Cd_Emitente'#13#10#13#10'from'#13#10'  Compra_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto = A.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Compra = :Nr_Compra'#13#10#13#10'order by'#13#10'  A.Nr_Item'
    DataSource = DsReport
    MasterFields = 'Cd_Emitente;Cd_Filial;Nr_Compra'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Value = nil?
      end>
    Left = 217
    Top = 110
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
    object ADODsProdutocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsProdutocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 187
    Top = 110
  end
end
