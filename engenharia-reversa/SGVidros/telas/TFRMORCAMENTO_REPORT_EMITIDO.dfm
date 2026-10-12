object FrmOrcamento_Report_Emitido: TFrmOrcamento_Report_Emitido
  Left = 193
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amentos Emitidos'
  ClientHeight = 299
  ClientWidth = 691
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
    Height = 299
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 670
    Height = 299
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 267
      Width = 659
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object LblReport: TLabel
      Left = 252
      Top = 37
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object Label6: TLabel
      Left = 5
      Top = 73
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbVendedor: TSpeedButton
      Left = 46
      Top = 86
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
      Top = 108
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 122
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
    object Label2: TLabel
      Left = 192
      Top = 1
      Width = 115
      Height = 13
      Caption = 'Situa'#231#227'o do Or'#231'amento:'
    end
    object Label3: TLabel
      Left = 102
      Top = 37
      Width = 57
      Height = 13
      Caption = '&Pagamento:'
      FocusControl = CbPagamento
    end
    object Label4: TLabel
      Left = 5
      Top = 37
      Width = 64
      Height = 13
      Caption = 'Usar data de:'
      FocusControl = CbData
    end
    object Label5: TLabel
      Left = 5
      Top = 143
      Width = 80
      Height = 13
      Caption = 'C&idade / Estado:'
      FocusControl = EdtCd_Cidade
    end
    object SbCidade: TSpeedButton
      Left = 55
      Top = 157
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
    object Label7: TLabel
      Left = 374
      Top = 1
      Width = 116
      Height = 13
      Caption = 'Somente sem financeiro:'
    end
    object BitBtnReport: TBitBtn
      Left = 496
      Top = 271
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 13
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 582
      Top = 271
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 14
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
    object CbReport: TComboBox
      Left = 252
      Top = 52
      Width = 78
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Anal'#237'tico'
      Items.Strings = (
        'Anal'#237'tico'
        'Sint'#233'tico'
      )
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 86
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 70
      Top = 86
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
      TabOrder = 8
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 122
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 122
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
      TabOrder = 10
    end
    object CbSituacao: TComboBox
      Left = 192
      Top = 16
      Width = 180
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      ItemIndex = 9
      TabOrder = 2
      Text = 'Fechado / Estoque Reservado'
      OnChange = CbSituacaoChange
      Items.Strings = (
        'Todas'
        'Or'#231'amento'
        'Cancelado'
        'Bloqueado'
        'Separando no Estoque'
        'Estoque Reservado'
        'Jun'#231#227'o'
        'Dividido'
        'Fechado'
        'Fechado / Estoque Reservado'
      )
    end
    object CbPagamento: TComboBox
      Left = 102
      Top = 52
      Width = 146
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        '1) '#192' Vista - Dinheiro'
        '2) '#192' Prazo'
        '3) Cart'#227'o de Cr'#233'dito'
        '4) Cheque'
        '5) Contra Apresenta'#231#227'o'
        '6) Multi-parcelado'
        '7) Cart'#227'o de D'#233'bito'
        '8) PIX'
      )
    end
    object CbData: TComboBox
      Left = 5
      Top = 52
      Width = 96
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 3
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Cancelamento'
      Items.Strings = (
        'Emiss'#227'o'
        'Confirma'#231#227'o'
        'Fatura'
        'Cancelamento'
      )
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 157
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 79
      Top = 157
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
      TabOrder = 12
    end
    object CbSemFinanceiro: TComboBox
      Left = 375
      Top = 16
      Width = 55
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object SctRepEmitido: TSctReport
      Left = 278
      Top = 92
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
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 844
      SHeight = 581
      MTop = 92
      MLeft = 278
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
        PageSetup.LeftMargin = 0.15
        PageSetup.RightMargin = 0.15
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0.3
        BorderType = btNone
        Description = 'Or'#231'amentos Emitidos'
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
          DataSource = DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
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
        object adodsreportnr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
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
        object adodsreportst_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'st_orcamento'
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
        object adodsreportnm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportfl_formapagtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_formapagto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_orcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDp_PagamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Pagamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsItem
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
        object adodsitemcd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemnr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemnr_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemcd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemnm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemsg_unidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
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
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object SubDataItemFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
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
        object adodsreportDp_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Pedido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
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
        object TotalOfVl_Pedido_Frete: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_Pedido_FreteVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfDp_Custo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportDp_CustoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfDp_Desconto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportDp_DescontoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 815
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 815
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
            Caption = 'Or'#231'amentos Emitidos'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 667
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 700
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 664
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 700
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
            Width = 764
            Height = 7
          end
          object SctVarPeriodo: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Periodo'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 815
          Height = 18
          ParentColor = True
          BandName = 'DetailBand'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = -4
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsreportnr_orcamentoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 130
            Top = 0
            Width = 231
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportnm_emitenteVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 59
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodsreportdt_emissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 368
            Top = 0
            Width = 197
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportnm_funcionarioVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 568
            Top = 0
            Width = 127
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_PagamentoVar
            Caption = 'Contra-apresenta'#231#227'o'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 700
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsreportvl_orcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 246
          Width = 815
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 764
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
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 701
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
          Top = 281
          Width = 815
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 2
            Top = 1
            Width = 761
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 684
            Top = 3
            Width = 81
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
            Left = 629
            Top = 3
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
          object Sctvarlabel31: TSctvarlabel
            Left = 477
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amentos:'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 561
            Top = 3
            Width = 62
            Height = 17
            TotalVariable = TotalOfvl_orcamento
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laLeft
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 57
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Pedido_Frete
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 2
            Top = 3
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Frete:'
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 336
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfDp_Desconto
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 268
            Top = 3
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Desconto:'
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 190
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfDp_Custo
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 135
            Top = 3
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Custo:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 815
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 764
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 1
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 130
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 61
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 368
            Top = 0
            Width = 81
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 568
            Top = 0
            Width = 106
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Forma de Pagamento'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 700
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
        end
        object SubDataItem: TSctSubDataBand
          Left = 0
          Top = 177
          Width = 815
          Height = 19
          ParentColor = True
          BandName = 'SubDataItem'
          Updatelevel = DataLevel
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object Sctvarlabel26: TSctvarlabel
            Left = 25
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemcd_produtoVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 75
            Top = 1
            Width = 503
            Height = 17
            Variable = adodsitemnm_produtoVar
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 584
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsitemsg_unidadeVar
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 632
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 700
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemvl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SubDataHdItem: TSctDataHeadBand
          Left = 0
          Top = 142
          Width = 815
          Height = 20
          Color = 15987699
          BandName = 'SubDataHdItem'
          Updatelevel = DataHeaderLevel
          Band = SubDataItem
          object Sctvarlabel9: TSctvarlabel
            Left = 25
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 75
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 700
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 632
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 584
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 13
            Width = 764
            Height = 6
          end
          object SctLine6: TSctLine
            Left = 0
            Top = 1
            Width = 764
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 341
            Top = 1
            Width = 233
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_SituacaoVar
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 146
            Top = 1
            Width = 233
            Height = 17
            Variable = adodsreportDp_PedidoVar
          end
        end
        object SubDataFtItem: TSctDataFootBand
          Left = 0
          Top = 211
          Width = 815
          Height = 20
          ParentColor = True
          BandName = 'SubDataFtItem'
          Updatelevel = SubDataItemFooterLevel
          Band = SubDataItem
        end
      end
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Nm_Emitente,'#13#10'  O.Nm_Funcionario, O.Fl_FormaPagto, O.Vl_Orcamento, Oc.Nr_Pedido_Emitente,'#13#10'  O.Vl_Pedido_Frete, O.Pr_Desconto, Oc.Vl_Desconto, Oc.Pr_Custo, Oc.Vl_Custo,'#13#10'  Oc.Vl_Pedido'#13#10#13#10'from'#13#10'  Orcamento_Total O'#13#10#13#10'inner join'#13#10'  Orcamento Oc'#13#10'on'#13#10'  Oc.Cd_Filial = O.Cd_Filial and'#13#10'  Oc.Nr_Orcamento = O.Nr_Orcamento'#13#10#13#10'where'#13#10'  O.Cd_Filial   = :Cd_Filial and'#13#10'  O.Dt_Emissao >= :Dt_Start and'#13#10'  O.Dt_Emissao  < :Dt_End'#13#10'  and O.St_Orcamento = ''''1'''#13#10'order by'#13#10'  O.Nr_Orcamento'
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
      '  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Nm_Emitente,'
      '  O.Nm_Funcionario, O.Fl_FormaPagto, O.Vl_Orcamento, Oc.Nr_Pedido_Emitente,'
      '  O.Vl_Pedido_Frete, O.Pr_Desconto, Oc.Vl_Desconto, Oc.Pr_Custo, Oc.Vl_Custo,'
      '  Oc.Vl_Pedido'
      ''
      'from'
      '  Orcamento_Total O'
      ''
      'inner join'
      '  Orcamento Oc'
      'on'
      '  Oc.Cd_Filial    = O.Cd_Filial and'
      '  Oc.Nr_Orcamento = O.Nr_Orcamento'
      ''
      '/* Cidade */  '
      ''
      'where'
      '  O.Cd_Filial   = :Cd_Filial and'
      '  O./* Data */ >= :Dt_Start and'
      '  O./* Data */  < :Dt_End'
    )
    SQLOther1.Strings = (
      '--------------- Filtra a cidade'
      'inner join'
      '  Orcamento OE'
      'on'
      '  OE.Cd_Filial    = O.Cd_Filial and'
      '  OE.Nr_Orcamento = O.Nr_Orcamento'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = OE.Cd_Emitente and'
      '  EE.Nr_Endereco = OE.Nr_Endereco and'
      '  EE.Cd_Cidade   = :Cd_Cidade'
    )
    SQLOther2.Strings = (
      '--------------- Somente item sem financeiro - 26/06/2012'
      'and not Exists('
      '  select'
      '    C.Cd_Filial'
      ''
      '  from'
      '    Caixa C'
      ''
      '  where'
      '    C.Cd_Filial    = O.Cd_Filial and'
      '    C.Nr_Orcamento = O.Nr_Orcamento'
      ''
      '  union'
      '  select'
      '    R.Cd_Filial'
      ''
      '  from'
      '    Receber R'
      ''
      '  where'
      '    R.Cd_Filial    = O.Cd_Filial and'
      '    R.Nr_Orcamento = O.Nr_Orcamento and'
      '    R.St_Receber  <= ''''3'''
      ''
      '  union'
      '  select'
      '    C.Cd_Filial'
      ''
      '  from'
      '    Cheque C'
      ''
      '  where'
      '    C.Cd_Filial    = O.Cd_Filial and'
      '    C.Nr_Orcamento = O.Nr_Orcamento'
      '  )'
    )
    Left = 59
    Top = 219
    object ADODsReportcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReportnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsReportdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsReportst_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsReportnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsReportnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsReportfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsReportvl_orcamento: TBCDField
      FieldName = 'vl_orcamento'
      Precision = 28
      Size = 6
    end
    object ADODsReportDp_Pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Pagamento'
      Calculated = True
    end
    object ADODsReportDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsReportNr_Pedido_emitente: TStringField
      FieldName = 'Nr_Pedido_emitente'
      Size = 30
    end
    object ADODsReportDp_Pedido: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Pedido'
      Size = 60
      Calculated = True
    end
    object ADODsReportVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      ReadOnly = True
      Precision = 32
      Size = 16
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
    object ADODsReportDp_Desconto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Desconto'
      Calculated = True
    end
    object ADODsReportDp_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Custo'
      Calculated = True
    end
    object ADODsReportVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 12
      Size = 2
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 29
    Top = 219
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 89
    Top = 219
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'#13#10'  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Venda'#13#10#13#10'from'#13#10'  Orcamento_Item_Total OI'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = :Cd_Filial and'#13#10'  OI.Nr_Orcamento  = :Nr_Orcamento'#13#10
    DataSource = DsReport
    MasterFields = 'Cd_Filial;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = nil?
      end>
    Left = 119
    Top = 218
    object ADODsItemcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsItemnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsItemnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsItemcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsItemnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsItemsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemvl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsItemqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
  end
end
