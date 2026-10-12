object FrmNFCe_Report: TFrmNFCe_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de NFC-e'
  ClientHeight = 191
  ClientWidth = 497
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
    Height = 191
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 476
    Height = 191
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 477
    object BvlSeparator: TBevel
      Left = 2
      Top = 160
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label1: TLabel
      Left = 5
      Top = 40
      Width = 84
      Height = 13
      Caption = 'Tipo do Relat'#243'rio:'
    end
    object BitBtnCancel: TBitBtn
      Left = 389
      Top = 163
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
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
    object BitBtnReport: TBitBtn
      Left = 302
      Top = 163
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object CbReport: TComboBox
      Left = 5
      Top = 56
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Sint'#233'tico'
      Items.Strings = (
        'Sint'#233'tico'
        'Anal'#237'tico'
        'CFOP'
      )
    end
    object SctReport: TSctReport
      Left = 270
      Top = 65
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
      TabOrder = 5
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
      MTop = 65
      MLeft = 270
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
        Description = 'Relat'#243'rio de NFC-e'
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
        object adodsreportDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
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
          Variable = adodsreportDp_SituacaoVar
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
        object adodsreportNr_DFeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_DFe'
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
        object adodsreportDs_dhRecbtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_dhRecbto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_OrigemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Origem'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_DfeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Dfe'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Dfe: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_DfeVar
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
          UpdateLevel = DataLevel
          DataSource = DsItem
        end
        object adodsitemCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemId_EstacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Id_Estacao'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemId_DFeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Id_DFe'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_AbreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Venda'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_BarraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Barra'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_ClasFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_CESTVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CEST'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_MVAVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_MVA'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemFl_OriProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_OriProduto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_CFOPProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CFOPProduto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_CSTVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CST'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_MVAVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_MVA'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
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
        object BdDtItemFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsitemDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
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
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsreportVl_DFe_LiquidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_DFe_Liquido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_DFe_Liquido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_DFe_LiquidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCFOP
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
            Caption = 'NFC-e'
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
          object SctPerPago: TSctvarlabel
            Left = 2
            Top = 20
            Width = 604
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo: dd/mm/yyyy'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 144
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel10: TSctvarlabel
            Left = 0
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_DFeVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 68
            Top = 0
            Width = 317
            Height = 17
            Variable = adodsreportDp_EmitenteVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 502
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrigemVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 566
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_DfeVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 410
            Top = 0
            Width = 81
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDs_dhRecbtoVar
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 633
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_DFe_LiquidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 312
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
          Top = 347
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 410
            Top = 1
            Width = 288
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 534
            Top = 3
            Width = 97
            Height = 17
            TotalVariable = TotalOfVl_Dfe
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 402
            Top = 3
            Width = 78
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 492
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Dfe
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
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 633
            Top = 3
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_DFe_Liquido
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
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#186' Cupom'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 68
            Top = 0
            Width = 333
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 502
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 566
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Bruto'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 410
            Top = 1
            Width = 81
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Processada'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 633
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Liquido'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 1
            Width = 213
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_SituacaoVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 272
          Width = 748
          Height = 25
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine3: TSctLine
            Left = 450
            Top = 3
            Width = 249
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 534
            Top = 5
            Width = 97
            Height = 17
            TotalVariable = TotalOfVl_Dfe
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 450
            Top = 5
            Width = 38
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
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 492
            Top = 5
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Dfe
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
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 633
            Top = 5
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_DFe_Liquido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdDtItem: TSctSubDataBand
          Left = 0
          Top = 212
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'BdDtItem'
          Updatelevel = DataLevel
          Stretch = True
          OnBeforePrint = BdDtItemBeforePrint
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object Sctvarlabel28: TSctvarlabel
            Left = 643
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 585
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 522
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemQt_ProdutoVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 489
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsitemSg_VendaVar
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 457
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsitemCd_CFOPProdutoVar
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 70
            Top = 1
            Width = 386
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitemDp_ProdutoVar
          end
        end
        object BdDtHdItem: TSctDataHeadBand
          Left = 0
          Top = 177
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'BdDtHdItem'
          Updatelevel = DataHeaderLevel
          Band = BdDtItem
          object Sctvarlabel21: TSctvarlabel
            Left = 643
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 585
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 522
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 489
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 457
            Top = 1
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'CFOP'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 70
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object SctLine6: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
        end
        object BdFtDtItem: TSctDataFootBand
          Left = 0
          Top = 247
          Width = 748
          Height = 10
          ParentColor = True
          BandName = 'BdFtDtItem'
          Updatelevel = BdDtItemFooterLevel
          Band = BdDtItem
        end
      end
    end
    object SctRepCFOP: TSctReport
      Left = 30
      Top = 83
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
      TabOrder = 6
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 65
      SLeft = 31
      SWidth = 836
      SHeight = 581
      MTop = 83
      MLeft = 30
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
        BorderType = btNone
        Description = 'Relat'#243'rio de NFC-e - CFOP'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsCFOP
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
          DataSource = DsReport
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmHistorico_Find.DsFind
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
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
        object SctGroup1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand6
          Footer = SctBand7
          Variable = adodscfopDp_SituacaoVar
          Level = 0
        end
        object SctLevel6: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItem
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Id_Estacao'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Id_DFe'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar14: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Venda'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar15: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar16: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar17: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar18: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Barra'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar19: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar20: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar21: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CEST'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar22: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_MVA'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar23: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_OriProduto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar24: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CFOPProduto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar25: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CST'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar26: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_MVA'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object SctDBVar27: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCFOP
        end
        object adodscfopDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsCFOP
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscfopCd_CFOPProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CFOPProduto'
          DataSource = DsCFOP
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscfopVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsCFOP
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscfopVl_LiquidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Liquido'
          DataSource = DsCFOP
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscfopVl_TotalVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Liquido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscfopVl_LiquidoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 748
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
            Caption = 'NFC-e - CFOP'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine7: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctPerido2: TSctvarlabel
            Left = 2
            Top = 20
            Width = 604
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo: dd/mm/yyyy'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 144
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel42: TSctvarlabel
            Left = 68
            Top = 0
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodscfopCd_CFOPProdutoVar
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 226
            Top = 0
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodscfopVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 336
            Top = 0
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodscfopVl_LiquidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 217
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine8: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel47: TSctvarlabel
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
          object Sctvarlabel48: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 663
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
          Top = 252
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine9: TSctLine
            Left = 120
            Top = 2
            Width = 288
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 226
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 101
            Top = 4
            Width = 78
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 187
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Liquido
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 336
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfVl_Liquido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine10: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 68
            Top = 0
            Width = 101
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CFOP'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 226
            Top = 0
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor Bruto'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 336
            Top = 0
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Liquido'
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = SctLevel6
          object Sctvarlabel57: TSctvarlabel
            Left = 0
            Top = 1
            Width = 213
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodscfopDp_SituacaoVar
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 177
          Width = 748
          Height = 25
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel7
          object SctLine11: TSctLine
            Left = 156
            Top = 2
            Width = 249
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 226
            Top = 5
            Width = 80
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 141
            Top = 4
            Width = 38
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
          object SctTotalvarLabel11: TSctTotalvarLabel
            Left = 187
            Top = 4
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Total
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel12: TSctTotalvarLabel
            Left = 336
            Top = 5
            Width = 80
            Height = 17
            TotalVariable = TotalOfVl_Liquido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Dp_Situacao, Nr_DFe, '#13#10'  Dp_Emitente = '#13#10'    case'#13#10'      when D.Cd_Emitente is not null then Convert( VarChar( 7 ), D.Cd_Emitente ) + '''' - '''' + D.Nm_Emitente '#13#10'    end,'#13#10'  Ds_dhRecbto, DI.Nr_Origem, D.Vl_DFe, D.Vl_DFe_Liquido,'#13#10#13#10'  D.Cd_Filial, D.Id_Estacao, D.Id_DFe, D.Sg_Estado, D.Fl_Contribuinte'#13#10#13#10'from  '#13#10'  DFe_Vw D'#13#10#13#10'left join'#13#10'  DFe_Importar DI'#13#10'on'#13#10'  DI.Cd_Filial  = D.Cd_Filial and'#13#10'  DI.Id_Estacao = D.Id_Estacao and'#13#10'  DI.Id_DFe     = D.Id_DFe'#13#10#13#10'where'#13#10'  D.Cd_Filial = :Cd_Filial and'#13#10'  D.Dt_Dfe   >= :Dt_Start and'#13#10'  D.Dt_DFe    < :Dt_End'#13#10#13#10'order by'#13#10'  D.Dp_Situacao, D.Ds_dhRecbto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 43831.0
      end>
    Left = 322
    Top = 8
    object ADODsReportDp_Situacao: TStringField
      FieldName = 'Dp_Situacao'
      ReadOnly = True
      Size = 24
    end
    object ADODsReportNr_DFe: TIntegerField
      FieldName = 'Nr_DFe'
    end
    object ADODsReportDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 60
    end
    object ADODsReportDs_dhRecbto: TStringField
      FieldName = 'Ds_dhRecbto'
      Size = 25
    end
    object ADODsReportNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsReportVl_Dfe: TBCDField
      FieldName = 'Vl_Dfe'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
    object ADODsReportSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ADODsReportFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      ReadOnly = True
      Size = 1
    end
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportId_Estacao: TStringField
      FieldName = 'Id_Estacao'
      Size = 100
    end
    object ADODsReportId_DFe: TIntegerField
      FieldName = 'Id_DFe'
    end
    object ADODsReportVl_DFe_Liquido: TBCDField
      FieldName = 'Vl_DFe_Liquido'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 292
    Top = 8
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 360
    Top = 8
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'declare'#13#10'  @Sg_Estado Char( 2 ),'#13#10'  @Sg_Filial Char( 2 ),'#13#10'  @Fl_Contribuinte Char( 1 )'#13#10#13#10'select'#13#10'  @Sg_Estado       = :Sg_Estado,'#13#10'  @Sg_Filial       = :Sg_Filial,'#13#10'  @Fl_Contribuinte = :Fl_Contribuinte'#13#10#13#10'select'#13#10'  DI.Cd_Filial, DI.Id_Estacao, DI.Id_DFe, DI.Nr_Item, DI.Cd_Produto,'#13#10'  P.Nm_Abreviado, P.Sg_Venda, DI.Qt_Produto, DI.Vl_Unitario,'#13#10'  Vl_Total = DI.Qt_Produto * DI.Vl_Unitario,'#13#10#13#10'  P.Cd_Barra, P.Nm_Produto, P.Cd_ClasFiscal, P.Cd_CEST, P.Vl_MVA,'#13#10#13#10'  Fl_OriProduto = P.Fl_Origem,'#13#10#13#10'  Cd_CFOPProduto = case when ( @Sg_Estado = @Sg_Filial ) then T.Cd_CFOPDentro else T.Cd_CFOPFora end,'#13#10#13#10'  Cd_CST  ='#13#10'    case'#13#10'      when ( @Fl_Contribuinte = ''''1'''' )  and ( @Sg_Estado  = @Sg_Filial ) then T.Cd_CST'#13#10'      when ( @Fl_Contribuinte = ''''1'''' )  and ( @Sg_Estado <> @Sg_Filial ) then T.Cd_CST_Fora'#13#10'      when ( @Fl_Contribuinte >= ''''2'''' ) and ( @Sg_Estado  = @Sg_Filial ) then T.Cd_CST_NC'#13#10'      when ( @Fl_Contribuinte >= ''''2'''' ) and ( @Sg_Estado <> @Sg_Filial ) then T.Cd_CST_Fora_NC'#13#10#13#10'    end,'#13#10#13#10'  Pr_MVA ='#13#10'    ('#13#10'    case'#13#10'      when ( @Sg_Estado  = @Sg_Filial ) then T.Pr_MVA_Dentro'#13#10'      when ( @Sg_Estado <> @Sg_Filial ) then T.pr_MVA_Fora'#13#10#13#10'    end'#13#10'    )'#13#10#13#10'from'#13#10'  DFe_Item DI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = DI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  DI.Cd_Filial  = :Cd_Filial and'#13#10'  DI.Id_Estacao = :Id_Estacao and'#13#10'  DI.Id_DFe     = :Id_DFe'#13#10#13#10'order by'#13#10'  DI.Cd_Filial, DI.Id_Estacao, DI.Id_DFe, DI.Nr_Item'#13#10
    DataSource = DsReport
    Parameters = <
      item
        Name = 'Sg_Estado'
        DataType = ftString
        Size = 2
        Value = nil?
      end
      item
        Name = 'Sg_Filial'
        DataType = ftString
        Size = 2
        Value = nil?
      end
      item
        Name = 'Fl_Contribuinte'
        DataType = ftString
        Size = 1
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Id_Estacao'
        DataType = ftString
        Size = 100
        Value = nil?
      end
      item
        Name = 'Id_DFe'
        DataType = ftInteger
        Value = nil?
      end>
    Left = 392
    Top = 8
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemId_Estacao: TStringField
      FieldName = 'Id_Estacao'
      Size = 100
    end
    object ADODsItemId_DFe: TIntegerField
      FieldName = 'Id_DFe'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsItemSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsItemQt_Produto: TBCDField
      FieldName = 'Qt_Produto'
      Precision = 12
      Size = 5
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 5
    end
    object ADODsItemVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 25
      Size = 10
    end
    object ADODsItemCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsItemCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
    object ADODsItemVl_MVA: TBCDField
      FieldName = 'Vl_MVA'
      Precision = 12
      Size = 3
    end
    object ADODsItemFl_OriProduto: TStringField
      FieldName = 'Fl_OriProduto'
      FixedChar = True
      Size = 1
    end
    object ADODsItemCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object ADODsItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      ReadOnly = True
      Size = 5
    end
    object ADODsItemPr_MVA: TBCDField
      FieldName = 'Pr_MVA'
      ReadOnly = True
      Precision = 7
      Size = 3
    end
    object ADODsItemDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 150
      Calculated = True
    end
  end
  object DsCFOP: TDataSource
    DataSet = ADODsCFOP
    Left = 128
    Top = 112
  end
  object ADODsCFOP: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Dp_Situacao, Cd_CFOPProduto, '#13#10'  sum( Vl_Total ) as Vl_Total,'#13#10'  sum( Vl_Liquido ) as Vl_Liquido'#13#10#13#10'from'#13#10'  DFe_Item_Vw'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Dt_DFe >= :Dt_Start and'#13#10'  Dt_DFe  < :Dt_End'#13#10'  '#13#10'group by'#13#10'  Dp_Situacao, Cd_CFOPProduto'#13#10#13#10'order by'#13#10'  Dp_Situacao, Cd_CFOPProduto'
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
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 160
    Top = 112
    object ADODsCFOPDp_Situacao: TStringField
      FieldName = 'Dp_Situacao'
      ReadOnly = True
      Size = 24
    end
    object ADODsCFOPCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object ADODsCFOPVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object ADODsCFOPVl_Liquido: TBCDField
      FieldName = 'Vl_Liquido'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
end
