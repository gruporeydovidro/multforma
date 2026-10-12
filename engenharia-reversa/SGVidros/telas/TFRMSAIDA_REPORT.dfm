object FrmSaida_Report: TFrmSaida_Report
  Left = 354
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sa'#237'das no Per'#237'odo'
  ClientHeight = 326
  ClientWidth = 709
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
    Height = 326
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 688
    Height = 326
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 296
      Width = 680
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
      Width = 35
      Height = 13
      Caption = 'Cliente:'
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
    object Label5: TLabel
      Left = 5
      Top = 72
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 36
      Top = 86
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label3: TLabel
      Left = 5
      Top = 107
      Width = 123
      Height = 13
      Caption = 'Excluir acerto de estoque:'
    end
    object BitBtnReport: TBitBtn
      Left = 515
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 9
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 601
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 10
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
        'Fechado'
        'Cancelado'
      )
    end
    object SctRepAnalitico: TSctReport
      Left = 405
      Top = 112
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
      TabOrder = 11
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
      MTop = 112
      MLeft = 405
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
        Description = 'Entradas no Per'#237'odo'
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
        object adodsreportcd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
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
        object adodsreportcd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportmm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsreportvl_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_nota'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_nota: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_notaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_produtoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
        object adodsreportDt_LancamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Lancamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_SaidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Saida'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
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
            Caption = 'Sa'#237'das no Per'#237'odo'
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
          object Sctvarlabel10: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_SaidaVar
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
            Variable = adodsreportDt_LancamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 222
            Top = 0
            Width = 276
            Height = 17
            Variable = adodsreportnm_emitenteVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_notaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 588
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_produtoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_FaturaVar
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
            Left = 530
            Top = 2
            Width = 205
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 532
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
            Caption = 'Totais:'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 660
            Top = 4
            Width = 75
            Height = 17
            TotalVariable = TotalOfvl_nota
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 588
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_produto
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
            Caption = 'Sa'#237'da N '#186
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
            Caption = 'Lan'#231'amento'
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
            Left = 571
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Produtos'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'S'#233'rie/Fatura'
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
            Variable = adodsprodutonm_produtoVar
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
      Left = 493
      Top = 117
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
      TabOrder = 12
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
      MTop = 117
      MLeft = 493
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
        Description = 'Entradas no Per'#237'odo'
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
        object adodsreportcd_filialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_emitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_emitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_produto'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_notaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_nota'
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
        object adodsreportmm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_produto1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_produtoVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_nota1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_notaVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDt_LancamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Lancamento'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_SaidaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Saida'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
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
            Caption = 'Sa'#237'das no Per'#237'odo'
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
          object Sctvarlabel41: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_SaidaVar1
            DataFormat.SuppressNulls = True
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
            Variable = adodsreportDt_LancamentoVar1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 222
            Top = 0
            Width = 276
            Height = 17
            Variable = adodsreportnm_emitenteVar1
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_notaVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 571
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_produtoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_FaturaVar1
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
            Left = 530
            Top = 2
            Width = 205
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 532
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
            Caption = 'Totais:'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 660
            Top = 4
            Width = 75
            Height = 17
            TotalVariable = TotalOfvl_nota1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 588
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_produto1
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
            Caption = 'Sa'#237'da N '#186
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
            Caption = 'Lan'#231'amento'
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
            Left = 571
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Produtos'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'S'#233'rie/Fatura'
          end
        end
      end
    end
    object EdtCd_CFOP: TEdit
      Tag = 2
      Left = 5
      Top = 86
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 6
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 60
      Top = 86
      Width = 287
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object CbAcerto: TComboBox
      Left = 5
      Top = 122
      Width = 50
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 8
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
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
    CommandText = 'select'#13#10'  S.Cd_Filial, S.Nr_Saida, S.Dt_Emissao, S.St_Saida, S.Cd_Emitente,'#13#10'  F.Nm_Emitente, S.Vl_Produto, S.Vl_Nota, S.Mm_Observacao, S.Dt_Lancamento,'#13#10'  S.Cd_Serie, S.Nr_Fatura'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'left join'#13#10'  Emitente F /* Fornecedor */'#13#10'on'#13#10'  F.Cd_Emitente = S.Cd_Emitente'#13#10#13#10'where'#13#10'  S.Cd_Filial      = :Cd_Filial and'#13#10'  S.Dt_Lancamento >= :Dt_Start and'#13#10'  S.Dt_Lancamento  < :Dt_End'#13#10'  /* S.Cd_Emitente */'#13#10'  /* S.St_Compra */'#13#10'  /* S.Fl_Estoque */'#13#10#13#10'order by'#13#10'  S.Nr_Saida'
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
    SQLOther0.Strings = (
      'select'
      '  S.Cd_Filial, S.Nr_Saida, S.Dt_Emissao, S.St_Saida, S.Cd_Emitente,'
      '  F.Nm_Emitente, S.Vl_Produto, S.Vl_Nota, S.Mm_Observacao, S.Dt_Lancamento,'
      '  S.Cd_Serie, S.Nr_Fatura'
      ''
      'from'
      '  Saida S'
      ''
      '  /* CFOP */'
      ''
      'left join'
      '  Emitente F /* Fornecedor */'
      'on'
      '  F.Cd_Emitente = S.Cd_Emitente'
      ''
      'where'
      '  S.Cd_Filial      = :Cd_Filial and'
      '  S.Dt_Lancamento >= :Dt_Start and'
      '  S.Dt_Lancamento  < :Dt_End'
      '  /* S.Cd_Emitente */'
      '  /* S.Cd_CFOP */'
      '  /* S.St_Saida */'
      ''
      'order by'
      '  S.Nr_Saida'
    )
    SQLOther1.Strings = (
      '--------------- Desconsidera acerto de estoque'
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = S.Cd_CFOP and'
      '  CF.Tp_Operacao <= ''''3'''
    )
    Left = 156
    Top = 110
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportSt_Saida: TStringField
      FieldName = 'St_Saida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportVl_Produto: TBCDField
      FieldName = 'Vl_Produto'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      Precision = 12
      Size = 2
    end
    object ADODsReportMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsReportDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsReportDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Size = 12
      Calculated = True
    end
    object ADODsReportCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsReportNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsReportDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Size = 10
      Calculated = True
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  SI.Cd_Filial, SI.Nr_Saida, SI.Nr_Item, SI.Cd_Produto, SI.Sg_Unidade,'#13#10'  B.Sg_Estoque, SI.Qt_Item, SI.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente,'#13#10'  case'#13#10'    when SI.Cd_Produto is null then SI.Nm_Produto'#13#10'    else B.NM_Produto'#13#10'  end as Nm_Produto,'#13#10'  SI.Vl_Unitario * SI.Qt_Item as Vl_Total, PF.Cd_Emitente'#13#10#13#10'from'#13#10'  Saida_Item SI'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = SI.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto = SI.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  SI.Cd_Filial = :Cd_Filial and'#13#10'  SI.Nr_Saida  = :Nr_Saida'#13#10#13#10'order by'#13#10'  SI.Nr_Item'
    DataSource = DsReport
    IndexFieldNames = 'Cd_Filial;Nr_Saida'
    MasterFields = 'Cd_Filial;Nr_Saida'
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
        Name = 'Nr_Saida'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 217
    Top = 110
    object ADODsProdutoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsProdutoNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
    end
    object ADODsProdutoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoCd_Produto_Emitente: TStringField
      FieldName = 'Cd_Produto_Emitente'
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsProdutoVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsProdutoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 187
    Top = 110
  end
end
