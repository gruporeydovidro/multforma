object FrmProducao_PrevEntrega: TFrmProducao_PrevEntrega
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Previs'#227'o de Entrega x Produ'#231#227'o'
  ClientHeight = 257
  ClientWidth = 632
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
    Height = 257
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 611
    Height = 257
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 227
      Width = 603
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
    object Label5: TLabel
      Left = 5
      Top = 108
      Width = 80
      Height = 13
      Caption = 'C&idade / Estado:'
      FocusControl = EdtCd_Cidade
    end
    object SbCidade: TSpeedButton
      Left = 55
      Top = 122
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object Label6: TLabel
      Left = 5
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbVendedor: TSpeedButton
      Left = 46
      Top = 51
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
    object Label10: TLabel
      Left = 5
      Top = 73
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 87
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
    object BitBtnConfirm: TBitBtn
      Left = 438
      Top = 230
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 524
      Top = 230
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
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
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 122
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 79
      Top = 122
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
      TabOrder = 7
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 51
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 70
      Top = 51
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
      TabOrder = 3
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 87
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 87
      Width = 507
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 210
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object SctReport: TSctReport
      Left = 384
      Top = 26
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
      TabOrder = 10
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 812
      SHeight = 581
      MTop = 26
      MLeft = 384
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
        PageSetup.Height = 11.692913385826772
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.2
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
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsreportQt_ItemOrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_ItemOrcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_ProduzidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Produzido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_EmProducaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_EmProducao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_DefeitoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Defeito'
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
          Variable = adodsreportDt_PrevEntregaVar
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
        object TotalOfQt_ItemOrcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportQt_ItemOrcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Produzido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportQt_ProduzidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_EmProducao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportQt_EmProducaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Defeito: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportQt_DefeitoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 796
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 796
          Height = 36
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
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
            Caption = 'Previs'#227'o de Entrega x Produ'#231#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 649
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 682
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 646
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 682
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctTxtPeriodo: TSctvarlabel
            Left = 0
            Top = 18
            Width = 640
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Or'#231'amento'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 141
          Width = 796
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 62
            Top = 0
            Width = 371
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 436
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_ItemOrcamentoVar
            DataFormat.DisplayFormat = '##,##0'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 513
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_ProduzidoVar
            DataFormat.DisplayFormat = '##,##0'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 592
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_EmProducaoVar
            DataFormat.DisplayFormat = '##,##0'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 670
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_DefeitoVar
            DataFormat.DisplayFormat = '##,##0'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 216
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 747
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
            Left = 665
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 712
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
          Top = 251
          Width = 796
          Height = 24
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 436
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_ItemOrcamento
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 513
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_Produzido
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 592
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_EmProducao
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 670
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_Defeito
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 309
            Top = 3
            Width = 121
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral'
          end
          object SctLine5: TSctLine
            Left = 309
            Top = 1
            Width = 438
            Height = 7
            AlignVertical = laTop
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 71
          Width = 796
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 747
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 62
            Top = 0
            Width = 362
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 436
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total de Pe'#231'as'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 513
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Produzidas'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 592
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Em Produ'#231#227'o'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 670
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Defeito'
          end
          object SctLine1: TSctLine
            Left = 2
            Top = 0
            Width = 747
            Height = 7
            AlignVertical = laTop
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 106
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel20: TSctvarlabel
            Left = 0
            Top = 0
            Width = 121
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Previs'#227'o de Entrega:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 123
            Top = 1
            Width = 121
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDt_PrevEntregaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 174
          Width = 796
          Height = 27
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 436
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_ItemOrcamento
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 513
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_Produzido
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 592
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_EmProducao
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 670
            Top = 3
            Width = 74
            Height = 17
            TotalVariable = TotalOfQt_Defeito
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 309
            Top = 3
            Width = 121
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total nesta data:'
          end
          object SctLine3: TSctLine
            Left = 309
            Top = 1
            Width = 438
            Height = 7
            AlignVertical = laTop
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 24
    Top = 163
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'if Object_ID( ''''TempDB..#ProducaoEntrega'''' ) is not null'#13#10'  drop table #ProducaoEntrega'#13#10#13#10'--------------- Or'#231'amentos confirmados - Estoque Reservado'#13#10'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'#13#10'  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'#13#10'  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) ) as Dt_PrevEntrega,'#13#10'  Qt_ItemOrcamento ='#13#10'  Coalesce('#13#10'    ('#13#10'    select'#13#10'      sum( Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Detalhe OD'#13#10#13#10'    where'#13#10'      OD.Cd_Filial    = O.Cd_Filial and'#13#10'      OD.Nr_Orcamento = O.Nr_Orcamento'#13#10'    ), 0 ) +'#13#10'  Coalesce('#13#10'    ('#13#10'    select'#13#10'      count( * )'#13#10#13#10'    from'#13#10'      Orcamento_Projeto_Item OPI'#13#10#13#10'    where'#13#10'      OPI.Cd_Filial    = O.Cd_Filial and'#13#10'      OPI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      OPI.Tp_Item      = ''''0'''#13#10'    ), 0 ),'#13#10#13#10'  Qt_Produzido ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is null and'#13#10'      not Exists('#13#10'        select'#13#10'          PS.Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Setor PS'#13#10#13#10'        where'#13#10'          PS.Cd_Filial   = PrI.Cd_Filial and'#13#10'          PS.Nr_Producao = PrI.Nr_Producao and'#13#10'          PS.Id_Producao = PrI.Id_Producao and'#13#10'          PS.Dt_Termino is null'#13#10'        )'#13#10'    ),'#13#10#13#10'  Qt_EmProducao ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is null and'#13#10'      Exists('#13#10'        select'#13#10'          PS.Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Setor PS'#13#10#13#10'        where'#13#10'          PS.Cd_Filial   = PrI.Cd_Filial and'#13#10'          PS.Nr_Producao = PrI.Nr_Producao and'#13#10'          PS.Id_Producao = PrI.Id_Producao and'#13#10'          PS.Dt_Termino is null'#13#10'        )'#13#10'    ),'#13#10#13#10'  Qt_Defeito ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is not null'#13#10'    )'#13#10#13#10'into'#13#10'  #ProducaoEntrega'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'/* Cidade */'#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  /* Cd_Emitente */'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''5'''' and'#13#10'  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) >= @Dt_Start and'#13#10'  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao )  < @Dt_End '#13#10#13#10'union'#13#10'--------------- Or'#231'amentos Fechado'#13#10'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'#13#10'  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'#13#10'  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) ) as Dt_PrevEntrega,'#13#10'  Qt_ItemOrcamento ='#13#10'  Coalesce('#13#10'    ('#13#10'    select'#13#10'      sum( Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Detalhe OD'#13#10#13#10'    where'#13#10'      OD.Cd_Filial    = O.Cd_Filial and'#13#10'      OD.Nr_Orcamento = O.Nr_Orcamento'#13#10'    ), 0 ) +'#13#10'  Coalesce('#13#10'    ('#13#10'    select'#13#10'      count( * )'#13#10#13#10'    from'#13#10'      Orcamento_Projeto_Item OPI'#13#10#13#10'    where'#13#10'      OPI.Cd_Filial    = O.Cd_Filial and'#13#10'      OPI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      OPI.Tp_Item      = ''''0'''#13#10'    ), 0 ),'#13#10#13#10'  Qt_Produzido ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is null and'#13#10'      not Exists('#13#10'        select'#13#10'          PS.Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Setor PS'#13#10#13#10'        where'#13#10'          PS.Cd_Filial   = PrI.Cd_Filial and'#13#10'          PS.Nr_Producao = PrI.Nr_Producao and'#13#10'          PS.Id_Producao = PrI.Id_Producao and'#13#10'          PS.Dt_Termino is null'#13#10'        )'#13#10'    ),'#13#10#13#10'  Qt_EmProducao ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is null and'#13#10'      Exists('#13#10'        select'#13#10'          PS.Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Setor PS'#13#10#13#10'        where'#13#10'          PS.Cd_Filial   = PrI.Cd_Filial and'#13#10'          PS.Nr_Producao = PrI.Nr_Producao and'#13#10'          PS.Id_Producao = PrI.Id_Producao and'#13#10'          PS.Dt_Termino is null'#13#10'        )'#13#10'    ),'#13#10#13#10'  Qt_Defeito ='#13#10'    ('#13#10'    select'#13#10'      count(*)'#13#10#13#10'    from'#13#10'      Producao_Item PrI'#13#10#13#10'    inner join'#13#10'      Producao P'#13#10'    on'#13#10'      P.Cd_Filial   = PrI.Cd_Filial and'#13#10'      P.Nr_Producao = PrI.Nr_Producao and'#13#10'      P.St_Producao < ''''4'''#13#10#13#10'    where'#13#10'      PrI.Cd_Filial    = O.Cd_Filial and'#13#10'      PrI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      PrI.Cd_Motivo is not null'#13#10'    )'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'/* Cidade */'#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  /* Cd_Emitente */'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao ) >= @Dt_Start and'#13#10'  DateAdd( Day, O.Nr_Entrega, O.Dt_Emissao )  < @Dt_End'#13#10#13#10#13#10'--------------- Seleciona somente os itens com detalhamentos'#13#10'select'#13#10'  Cd_Filial, Nr_Orcamento, Nm_Emitente, Dt_Fatura, Dt_Emissao,'#13#10'  Dt_Confirmado, Nr_Entrega, St_Orcamento, Dt_PrevEntrega,'#13#10'  Qt_ItemOrcamento, Qt_Produzido, Qt_EmProducao, Qt_Defeito'#13#10#13#10'from'#13#10'  #ProducaoEntrega'#13#10#13#10'where'#13#10'  Qt_ItemOrcamento > 0'#13#10#13#10'order by'#13#10'  Cd_Filial, Dt_PrevEntrega'
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
      'if Object_ID( ''''TempDB..#ProducaoEntrega'''' ) is not null'
      '  drop table #ProducaoEntrega'
      ''
      '--------------- Or'#231'amentos confirmados - Estoque Reservado'
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) as Dt_PrevEntrega,'
      '  Qt_ItemOrcamento ='
      '  Coalesce('
      '    ('
      '    select'
      '      sum( Qt_Item )'
      ''
      '    from'
      '      Orcamento_Detalhe OD'
      ''
      '    where'
      '      OD.Cd_Filial    = O.Cd_Filial and'
      '      OD.Nr_Orcamento = O.Nr_Orcamento'
      '    ), 0 ) +'
      '  Coalesce('
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      Orcamento_Projeto_Item OPI'
      ''
      '    where'
      '      OPI.Cd_Filial    = O.Cd_Filial and'
      '      OPI.Nr_Orcamento = O.Nr_Orcamento and'
      '      OPI.Tp_Item      = ''''0'''
      '    ), 0 ),'
      ''
      '  Qt_Produzido ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      not Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_EmProducao ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_Defeito ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is not null'
      '    )'
      ''
      'into'
      '  #ProducaoEntrega'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      '/* Cidade */'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''5'''' and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) >= @Dt_Start and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) )  < @Dt_End'
      ''
      'union'
      '--------------- Or'#231'amentos Fechado'
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) as Dt_PrevEntrega,'
      '  Qt_ItemOrcamento ='
      '  Coalesce('
      '    ('
      '    select'
      '      sum( Qt_Item )'
      ''
      '    from'
      '      Orcamento_Detalhe OD'
      ''
      '    where'
      '      OD.Cd_Filial    = O.Cd_Filial and'
      '      OD.Nr_Orcamento = O.Nr_Orcamento'
      '    ), 0 ) +'
      '  Coalesce('
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      Orcamento_Projeto_Item OPI'
      ''
      '    where'
      '      OPI.Cd_Filial    = O.Cd_Filial and'
      '      OPI.Nr_Orcamento = O.Nr_Orcamento and'
      '      OPI.Tp_Item      = ''''0'''
      '    ), 0 ),'
      ''
      '  Qt_Produzido ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      not Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_EmProducao ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_Defeito ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is not null'
      '    )'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      '/* Cidade */'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) >= @Dt_Start and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) )  < @Dt_End'
      ''
      'union'
      '--------------- Or'#231'amentos que est'#227'o em Separando no estoque'
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'
      '  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) as Dt_PrevEntrega,'
      '  Qt_ItemOrcamento ='
      '  Coalesce('
      '    ('
      '    select'
      '      sum( Qt_Item )'
      ''
      '    from'
      '      Orcamento_Detalhe OD'
      ''
      '    where'
      '      OD.Cd_Filial    = O.Cd_Filial and'
      '      OD.Nr_Orcamento = O.Nr_Orcamento'
      '    ), 0 ) +'
      '  Coalesce('
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      Orcamento_Projeto_Item OPI'
      ''
      '    where'
      '      OPI.Cd_Filial    = O.Cd_Filial and'
      '      OPI.Nr_Orcamento = O.Nr_Orcamento and'
      '      OPI.Tp_Item      = ''''0'''
      '    ), 0 ),'
      ''
      '  Qt_Produzido ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      not Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_EmProducao ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is null and'
      '      Exists('
      '        select'
      '          PS.Cd_Filial'
      ''
      '        from'
      '          Producao_Setor PS'
      ''
      '        where'
      '          PS.Cd_Filial   = PrI.Cd_Filial and'
      '          PS.Nr_Producao = PrI.Nr_Producao and'
      '          PS.Id_Producao = PrI.Id_Producao and'
      '          PS.Dt_Termino is null'
      '        )'
      '    ),'
      ''
      '  Qt_Defeito ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      Producao_Item PrI'
      ''
      '    inner join'
      '      Producao P'
      '    on'
      '      P.Cd_Filial   = PrI.Cd_Filial and'
      '      P.Nr_Producao = PrI.Nr_Producao and'
      '      P.St_Producao < ''''4'''
      ''
      '    where'
      '      PrI.Cd_Filial    = O.Cd_Filial and'
      '      PrI.Nr_Orcamento = O.Nr_Orcamento and'
      '      PrI.Cd_Motivo is not null'
      '    )'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      '/* Cidade */'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''4'''' and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) ) >= @Dt_Start and'
      '  Convert( SmallDateTime, DateAdd( Day, O.Nr_Entrega, O./* Data */ ) )  < @Dt_End'
      ''
      '--------------- Seleciona somente os itens com detalhamentos'
      'select'
      '  Cd_Filial, Nr_Orcamento, Nm_Emitente, Dt_Fatura, Dt_Emissao,'
      '  Dt_Confirmado, Nr_Entrega, St_Orcamento, Dt_PrevEntrega,'
      '  Qt_ItemOrcamento, Qt_Produzido, Qt_EmProducao, Qt_Defeito'
      ''
      'from'
      '  #ProducaoEntrega'
      ''
      'where'
      '  Qt_ItemOrcamento > 0'
      ''
      'order by'
      '  Cd_Filial, Dt_PrevEntrega'
    )
    SQLOther1.Strings = (
      '--------------- Filtro por cidade'
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco and'
      '  EE.Cd_Cidade   = /* Cd_Cidade */'
      ''
    )
    Left = 52
    Top = 163
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
      ReadOnly = True
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
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
    object ADODsReportQt_ItemOrcamento: TIntegerField
      FieldName = 'Qt_ItemOrcamento'
      ReadOnly = True
    end
    object ADODsReportQt_Produzido: TIntegerField
      FieldName = 'Qt_Produzido'
      ReadOnly = True
    end
    object ADODsReportQt_EmProducao: TIntegerField
      FieldName = 'Qt_EmProducao'
      ReadOnly = True
    end
    object ADODsReportQt_Defeito: TIntegerField
      FieldName = 'Qt_Defeito'
      ReadOnly = True
    end
  end
end
