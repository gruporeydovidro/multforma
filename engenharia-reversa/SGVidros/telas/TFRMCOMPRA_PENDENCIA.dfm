object FrmCompra_Pendencia: TFrmCompra_Pendencia
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. Pend'#234'ncia de Compras'
  ClientHeight = 193
  ClientWidth = 498
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
    Height = 193
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 351
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 193
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = 13
    ExplicitWidth = 812
    ExplicitHeight = 445
    object BvlSeparator: TBevel
      Left = 3
      Top = 163
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
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbFornecedor: TSpeedButton
      Left = 55
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFornecedorClick
    end
    object Label1: TLabel
      Left = 195
      Top = 4
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 166
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 166
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
    object EdtCd_Fornecedor: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_FornecedorExit
      OnKeyDown = EdtCd_FornecedorKeyDown
    end
    object EdtNm_Fornecedor: TEdit
      Left = 78
      Top = 53
      Width = 390
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
      TabOrder = 4
    end
    object CbSituacao: TComboBox
      Left = 195
      Top = 18
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Aberto / Pendente'
      Items.Strings = (
        'Aberto / Pendente'
        'Aberto'
        'Pendente'
      )
    end
    object SctReport: TSctReport
      Left = 364
      Top = 113
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
      MTop = 113
      MLeft = 364
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
        PageSetup.TopMargin = 0.3
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
          CreateVariables = True
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
        object adodsreportNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object TotalOfNr_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportNr_CompraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Compra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportCd_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportSt_CompraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'St_Compra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
          AutoVar = True
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
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportCd_Produto_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportQt_CompraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Compra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportQt_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Pedido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportQt_RestanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Restante'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportQt_RecebidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Recebida'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_CompraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Compra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportPr_DescontoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Desconto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_DescontoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Desconto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportPr_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Custo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Frete'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_SeguroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Seguro'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_OutrosVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Outros'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportNr_CompraVar
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
        object adodsreportVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
          AutoVar = True
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
          AutoVar = True
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 767
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 767
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
            Caption = 'Pend'#234'ncia de Compra'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 618
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 651
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 615
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 651
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
            Width = 717
            Height = 7
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
          Top = 170
          Width = 767
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel25: TSctvarlabel
            Left = 26
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_ProdutoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 88
            Top = -1
            Width = 375
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 646
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_RestanteVar
            DataFormat.DisplayFormat = '#,##0.###'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 498
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_CompraVar
            DataFormat.DisplayFormat = '#,##0.###'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 466
            Top = 1
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportSg_UnidadeVar
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 572
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_RecebidaVar
            DataFormat.DisplayFormat = '#,##0.###'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 228
          Width = 767
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
          Top = 263
          Width = 767
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 767
          Height = 1
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 90
          Width = 767
          Height = 65
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object SctLine2: TSctLine
            Left = 0
            Top = 14
            Width = 717
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Compra N'#186
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 62
            Top = 1
            Width = 434
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 634
            Top = 1
            Width = 83
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Total'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 568
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Situa'#231#227'o'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 502
            Top = 1
            Width = 64
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 22
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_CompraVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 62
            Top = 22
            Width = 434
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 634
            Top = 22
            Width = 83
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 568
            Top = 22
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDs_SituacaoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 502
            Top = 22
            Width = 64
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine3: TSctLine
            Left = 26
            Top = 58
            Width = 693
            Height = 7
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 26
            Top = 45
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 88
            Top = 45
            Width = 125
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 646
            Top = 45
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Restante'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 498
            Top = 45
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Pedido'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 466
            Top = 45
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 572
            Top = 45
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'J'#225' entregue'
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 203
          Width = 767
          Height = 10
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 32
    Top = 121
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'-------------------- Incluir itens do pedido de compra'#13#10'select'#13#10'  C.Cd_Filial, C.Nr_Compra, C.Cd_Emitente, E.Nm_Emitente, C.St_Compra,'#13#10'  C.Dt_Emissao,'#13#10#13#10'  CI.Nr_Item, CI.Cd_Produto, P.Nm_Produto, PF.Cd_Produto_Emitente,'#13#10'  CI.Qt_Item as Qt_Compra, CI.Qt_Item as Qt_Pedido, CI.Vl_Unitario,'#13#10'  CI.Qt_Item - CI.Qt_Recebida as Qt_Restante, CI.Qt_Recebida,'#13#10'  CI.Sg_Unidade,'#13#10#13#10'  C.Vl_Compra, C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo,'#13#10'  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros'#13#10#13#10'from'#13#10'  Compra C'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Compra_Item CI'#13#10'on'#13#10'  CI.Cd_Filial = C.Cd_Filial and'#13#10'  CI.Nr_Compra = C.Nr_Compra and'#13#10'  CI.Qt_Item - CI.Qt_Recebida > 0.0'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = CI.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto  = CI.Cd_Produto and'#13#10'  PF.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'where'#13#10'  C.Cd_Filial   = @Cd_Filial and'#13#10'  /* Cd_Fornecedor */'#13#10'  /* St_Compra */'#13#10'  C.Dt_Emissao >= @Dt_Start and'#13#10'  C.Dt_Emissao  < @Dt_End'#13#10#13#10'order by'#13#10'  C.Cd_Filial, C.Cd_Emitente, CI.Nr_Item'
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
      '-------------------- Incluir itens do pedido de compra'
      'select'
      '  C.Cd_Filial, C.Nr_Compra, C.Cd_Emitente, E.Nm_Emitente, C.St_Compra,'
      '  C.Dt_Emissao,'
      ''
      '  CI.Nr_Item, CI.Cd_Produto, P.Nm_Produto, PF.Cd_Produto_Emitente,'
      '  CI.Qt_Item as Qt_Compra, CI.Qt_Item as Qt_Pedido, CI.Vl_Unitario,'
      '  CI.Qt_Item - Coalesce( CI.Qt_Recebida, 0.0 ) as Qt_Restante, CI.Qt_Recebida,'
      '  CI.Sg_Unidade,'
      ''
      '  C.Vl_Compra, C.Pr_Desconto, C.Vl_Desconto, C.Pr_Custo, C.Vl_Custo,'
      '  C.Vl_Frete, C.Vl_Seguro, C.Vl_Outros'
      ''
      'from'
      '  Compra C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      ''
      'inner join'
      '  Compra_Item CI'
      'on'
      '  CI.Cd_Filial = C.Cd_Filial and'
      '  CI.Nr_Compra = C.Nr_Compra and'
      '  CI.Qt_Item - Coalesce( CI.Qt_Recebida, 0.0 ) > 0.0'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = CI.Cd_Produto'
      ''
      'left join'
      '  Produto_Fornecedor PF'
      'on'
      '  PF.Cd_Produto  = CI.Cd_Produto and'
      '  PF.Cd_Emitente = C.Cd_Emitente'
      ''
      'where'
      '  C.Cd_Filial   = @Cd_Filial and'
      '  /* Cd_Fornecedor */'
      '  /* St_Compra */'
      '  C.Dt_Emissao >= @Dt_Start and'
      '  C.Dt_Emissao  < @Dt_End'
      ''
      'order by'
      '  C.Cd_Filial, C.Cd_Emitente, C.Nr_Compra, CI.Nr_Item'
    )
    SQLOther1.Strings = (
      ''
    )
    Left = 60
    Top = 121
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Compra: TIntegerField
      FieldName = 'Nr_Compra'
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportSt_Compra: TStringField
      FieldName = 'St_Compra'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsReportCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsReportCd_Produto_Emitente: TStringField
      FieldName = 'Cd_Produto_Emitente'
    end
    object ADODsReportQt_Compra: TBCDField
      FieldName = 'Qt_Compra'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Pedido: TBCDField
      FieldName = 'Qt_Pedido'
      Precision = 12
      Size = 3
    end
    object ADODsReportVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Restante: TBCDField
      FieldName = 'Qt_Restante'
      ReadOnly = True
      Precision = 13
      Size = 3
    end
    object ADODsReportQt_Recebida: TBCDField
      FieldName = 'Qt_Recebida'
      Precision = 12
      Size = 3
    end
    object ADODsReportSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsReportVl_Compra: TBCDField
      FieldName = 'Vl_Compra'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 7
      Size = 2
    end
    object ADODsReportVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Custo: TBCDField
      FieldName = 'Pr_Custo'
      Precision = 7
      Size = 2
    end
    object ADODsReportVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Frete: TBCDField
      FieldName = 'Vl_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Seguro: TBCDField
      FieldName = 'Vl_Seguro'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Outros: TBCDField
      FieldName = 'Vl_Outros'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
  end
end
