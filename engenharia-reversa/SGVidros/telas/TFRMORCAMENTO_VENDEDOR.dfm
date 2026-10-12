object FrmOrcamento_Vendedor: TFrmOrcamento_Vendedor
  Left = 265
  Top = 279
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Vendas por Vendedor'
  ClientHeight = 255
  ClientWidth = 634
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
    Height = 255
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 613
    Height = 255
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 224
      Width = 607
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
    object Label3: TLabel
      Left = 5
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label2: TLabel
      Left = 193
      Top = 0
      Width = 115
      Height = 13
      Caption = 'Situa'#231#227'o do Or'#231'amento:'
    end
    object Label4: TLabel
      Left = 5
      Top = 95
      Width = 596
      Height = 127
      AutoSize = False
      Caption = 'Importante:'#13#10'Estoque Reservado - considera data de Confirma'#231#227'o do Or'#231'amento'#13#10'Fechado - considerada a data de Fatura'#13#10'Demais situa'#231#245'es - Data de Emiss'#227'o'#13#10#13#10'Caso a op'#231#227'o de "Incluir todos os vendedores comissionados" esteja marcada ser'#227'o impressos os vendedores comissionados e n'#227'o somente o vendedor do or'#231'amento.'
      WordWrap = True
    end
    object BitBtnReport: TBitBtn
      Left = 440
      Top = 228
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 6
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 526
      Top = 228
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
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
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
      TabOrder = 4
    end
    object CbSituacao: TComboBox
      Left = 193
      Top = 15
      Width = 180
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      ItemIndex = 8
      TabOrder = 2
      Text = 'Fechado'
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
    object SctRepVendedor: TSctReport
      Left = 336
      Top = 111
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
      STop = 6
      SLeft = -21
      SWidth = 806
      SHeight = 581
      MTop = 111
      MLeft = 336
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
        Description = 'Vendas por Vendedor'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsVendedor
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
        object GrpVendedor: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsvendedornm_funcionarioVar
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsVendedor
        end
        object adodsvendedornr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedordt_faturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_fatura'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedornm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedornm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedornm_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedorvl_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_orcamento'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendedorvl_orcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsvendedorDp_PagamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Pagamento'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedorVl_IPIVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_IPI: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendedorVl_IPIVar
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
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsvendedorDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object GrpSituacao: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = Group1Header
          Footer = Group1Footer
          Variable = adodsvendedorDp_SituacaoVar
          Level = 1
        end
        object Group1HeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group1FooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsvendedorDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsVendedor
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendedorDt_ConfirmadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Confirmado'
          DataSource = DsVendedor
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
            Caption = 'Vendas por Vendedor'
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
            Width = 736
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
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 174
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel7: TSctvarlabel
            Left = -4
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsvendedornr_orcamentoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 130
            Top = 0
            Width = 231
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsvendedornm_emitenteVar
          end
          object SctVarData: TSctvarlabel
            Left = 59
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodsvendedordt_faturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 360
            Top = 0
            Width = 206
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsvendedornm_cidadeVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 559
            Top = 0
            Width = 122
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsvendedorDp_PagamentoVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 655
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsvendedorvl_orcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 262
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 736
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
          Top = 297
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          OnBeforePrint = ReportFooterBandBeforePrint
          object SctLine3: TSctLine
            Left = 125
            Top = 1
            Width = 609
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 373
            Top = 3
            Width = 85
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
            Left = 125
            Top = 3
            Width = 125
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
          object Sctvarlabel26: TSctvarlabel
            Left = 279
            Top = 3
            Width = 92
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Vendido:'
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 492
            Top = 3
            Width = 85
            Height = 17
            TotalVariable = TotalOfVl_IPI
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 458
            Top = 3
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'IPI:'
          end
          object SctVarTotal: TSctvarlabel
            Left = 650
            Top = 3
            Width = 85
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
          object Sctvarlabel28: TSctvarlabel
            Left = 595
            Top = 3
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Liquido:'
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
            Width = 736
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
          object SctTxtData: TSctvarlabel
            Left = 61
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 360
            Top = 0
            Width = 81
            Height = 17
            Caption = 'Cidade'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 559
            Top = 0
            Width = 106
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Forma de Pagamento'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'GrpVendedor Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel9: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsvendedornm_funcionarioVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 224
          Width = 786
          Height = 23
          ParentColor = True
          BandName = 'GrpVendedor Footer'
          Updatelevel = GroupFooterLevel
          OnBeforePrint = GroupFooterBeforePrint
          object SctLine6: TSctLine
            Left = 125
            Top = 1
            Width = 609
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 373
            Top = 3
            Width = 85
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
          object Sctvarlabel22: TSctvarlabel
            Left = 125
            Top = 3
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais do Vendedor'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 279
            Top = 3
            Width = 92
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Vendido:'
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 492
            Top = 3
            Width = 85
            Height = 17
            TotalVariable = TotalOfVl_IPI
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 458
            Top = 3
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'IPI:'
          end
          object SctVarVendedor: TSctvarlabel
            Left = 650
            Top = 3
            Width = 85
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
          object Sctvarlabel25: TSctvarlabel
            Left = 595
            Top = 3
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Liquido:'
          end
        end
        object Group1Header: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'GrpSituacao Header'
          Updatelevel = Group1HeaderLevel
          OnAfterPrint = Group1HeaderAfterPrint
          object Sctvarlabel29: TSctvarlabel
            Left = 30
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsvendedorDp_SituacaoVar
          end
        end
        object Group1Footer: TSctBand
          Left = 0
          Top = 207
          Width = 786
          Height = 2
          ParentColor = True
          BandName = 'GrpSituacao Footer'
          Updatelevel = Group1FooterLevel
          Visible = False
        end
      end
    end
    object CkBComissionado: TCheckBox
      Left = 7
      Top = 76
      Width = 226
      Height = 17
      Caption = 'Incluir todos os vendedores comissionados'
      TabOrder = 5
    end
  end
  object ADODsVendedor: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsVendedorCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, E.Nm_Emitente, F.Nm_Funcionario,'#13#10'  O.Fl_FormaPagto, O.Nr_Fatura, C.Nm_Cidade, OT.Vl_Orcamento,'#13#10'  O.Vl_IPI, O.St_Orcamento, O.Dt_Confirmado, O.Dt_Fatura'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = OT.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OT.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = :Cd_Filial and'#13#10'  /* OT.Fl_Estoque */'#13#10'  OT.St_Orcamento = ''''9'''' and'#13#10'  /* OT.Cd_Funcionario */'#13#10'  OT.Dt_Fatura   >= :Dt_Start and'#13#10'  OT.Dt_Fatura    < :Dt_End'#13#10#13#10'order by'#13#10'  OT.Cd_Funcionario, OT.Dt_Fatura, OT.Nr_Orcamento'
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
      '  /* Cd_Funcionario */, O.Nr_Orcamento, O.Dt_Emissao, E.Nm_Emitente,'
      '  F.Nm_Funcionario, O.Fl_FormaPagto, O.Nr_Fatura, C.Nm_Cidade,'
      '  OT.Vl_Orcamento, O.Vl_IPI, O.St_Orcamento, O.Dt_Confirmado, O.Dt_Fatura'
      ''
      'from'
      '  Orcamento O'
      ''
      '/* Funcionario Join */'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = O.Cd_Filial and'
      '  OT.Nr_Orcamento = O.Nr_Orcamento'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  /* O.St_Orcamento */ '
      '  /* O.Cd_Funcionario */'
      '  /* O.Dt_Orcamento */   >= :Dt_Start and'
      '  /* O.Dt_Orcamento */    < :Dt_End'
    )
    SQLOther1.Strings = (
      '--------------- Somente o vendedor do pedido'
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
    )
    SQLOther2.Strings = (
      '--------------- Todos os vendedores comissionados na venda'
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = O.Cd_Filial and'
      '  OC.Nr_Orcamento = O.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
    )
    Left = 52
    Top = 185
    object ADODsVendedornr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsVendedordt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
    object ADODsVendedornm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsVendedornm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsVendedorfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsVendedornr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsVendedornm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsVendedorvl_orcamento: TBCDField
      FieldName = 'vl_orcamento'
      Precision = 28
      Size = 6
    end
    object ADODsVendedorDp_Pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Pagamento'
      Calculated = True
    end
    object ADODsVendedorVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsVendedorSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsVendedorDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsVendedorDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsVendedorDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
  end
  object DsVendedor: TDataSource
    DataSet = ADODsVendedor
    Left = 24
    Top = 185
  end
end
