object FrmProduto_Tabela: TFrmProduto_Tabela
  Left = 435
  Top = 348
  ActiveControl = EdtCd_Tabela
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Tabela de Pre'#231'o'
  ClientHeight = 253
  ClientWidth = 621
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
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
    Height = 253
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 600
    Height = 253
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 223
      Width = 592
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 7
      Top = 68
      Width = 71
      Height = 13
      Caption = 'Data de In'#237'cio:'
    end
    object Label4: TLabel
      Left = 197
      Top = 68
      Width = 27
      Height = 13
      Caption = 'Ativa:'
    end
    object Label5: TLabel
      Left = 102
      Top = 68
      Width = 82
      Height = 13
      Caption = 'Data de T'#233'rmino:'
    end
    object Label10: TLabel
      Left = 260
      Top = 68
      Width = 85
      Height = 13
      Caption = 'Prazo de Entrega:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 598
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 8
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 598
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 426
      Top = 226
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 512
      Top = 226
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 7
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Tabela: TLabeledEdit
      Left = 122
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 102
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o da Tabela:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 1
    end
    object EdtCd_Tabela: TLabeledEdit
      Left = 7
      Top = 45
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 0
      OnExit = EdtCd_TabelaExit
    end
    object EdtDt_Inicio: TDateEdit
      Left = 7
      Top = 82
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtDt_Termino: TDateEdit
      Left = 102
      Top = 82
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object CbAtiva: TComboBox
      Left = 197
      Top = 82
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object SctReport: TSctReport
      Left = 2
      Top = 137
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
      SHeight = 281
      MTop = 137
      MLeft = 2
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 8
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
        Description = 'Lista de Tabelas de Pre'#231'o'
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
          Top = -8
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = -8
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = -8
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = -8
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmUsuario_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object adodsfindsg_estadoVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'sg_estado'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnm_estadoVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'nm_estado'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindpr_contribuinteVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'pr_contribuinte'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindpr_naocontribVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'pr_naocontrib'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportcd_tabelaVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'cd_tabela'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_tabelaVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'ds_tabela'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdt_inicioVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'dt_inicio'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdt_terminoVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'dt_termino'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfdt_termino: TSctTotalvar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          Variable = adodsreportdt_terminoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDp_AtivaVar: TSctDBVar
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          DataField = 'Dp_Ativa'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = -8
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsTabela
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_Atual_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Atual_Custo'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_Atual_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Atual_Venda'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Venda'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNr_SequenciaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Sequencia'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_Atual_ReposicaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Atual_Reposicao'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_ReposicaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Reposicao'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNm_LaboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Laboratorio'
          DataSource = FrmProduto_Tabela_Update.DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -8
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 12
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
            Caption = 'Lista de Tabela de Pre'#231'o'
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
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 101
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel8: TSctvarlabel
            Left = 1
            Top = 1
            Width = 140
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportcd_tabelaVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 146
            Top = 1
            Width = 378
            Height = 17
            Variable = adodsreportds_tabelaVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 526
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportdt_inicioVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 597
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportdt_terminoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 667
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDp_AtivaVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 134
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
          Top = 169
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfdt_termino
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
          object Sctvarlabel14: TSctvarlabel
            Left = 560
            Top = 3
            Width = 97
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
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 66
          Width = 748
          Height = 20
          Color = 15790320
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
          object Sctvarlabel121: TSctvarlabel
            Left = 1
            Top = 2
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel122: TSctvarlabel
            Left = 146
            Top = 2
            Width = 65
            Height = 17
            Caption = 'Descri'#231#227'o'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 526
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Inicio'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 597
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'T'#233'rmino'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 667
            Top = 2
            Width = 31
            Height = 17
            Caption = 'Ativa'
          end
        end
      end
    end
    object SctRepTabFab: TSctReport
      Left = 90
      Top = 134
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 10
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 45
      SLeft = 15
      SWidth = 861
      SHeight = 406
      MTop = 134
      MLeft = 90
      SAlign = alNone
      Version = vAce1_0
      object ReportPage1: TSctGrouppage
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
        BorderType = btNone
        Description = 'Tabela de Pre'#231'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand1
        Detail = SctDtlTabela
        Foot = ReportFooterBand1
        PageHead = PageHeaderBand1
        PageFoot = PageFooterBand1
        DataSource = DsTabela
        Order = 1
        object ReportHeaderBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object PageFooterBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object ReportFooterBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object svarDateTime1: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBand1level
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage1: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBand1level
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DsReport
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DsTabela
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DmMaster.DsFilial
        end
        object adodstabelacd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelanm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelavl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodstabelacd_produtoVar
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object adodstabelasg_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object GrpLabFab: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdLabFab
          Footer = GrpFtLabFab
          Variable = adodstabelanm_laboratorioVar
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
        object adodstabelanm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelacd_fabricanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_fabricante'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBand1level
          Visible = False
        end
        object PageHeaderBand1: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 38
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBand1level
          object Sctvarlabel17: TSctvarlabel
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
            Caption = 'Tabela de Pre'#231'o'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctTxtFabLab: TSctvarlabel
            Left = 2
            Top = 18
            Width = 439
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = ' '
          end
        end
        object SctDtlTabela: TSctBand
          Left = 0
          Top = 159
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Detail'
          OnPrintWhen = SctDtlTabelaPrintWhen
          Updatelevel = DetailBand1level
          Stretch = True
          OnBeforePrint = SctDtlTabelaBeforePrint
          OnAfterPrint = SctDtlTabelaAfterPrint
          object Sctvarlabel32: TSctvarlabel
            Left = 72
            Top = 2
            Width = 324
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelanm_produtoVar
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 1
            Top = 2
            Width = 70
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_produtoVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 623
            Top = 2
            Width = 75
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelavl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 581
            Top = 2
            Width = 42
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelasg_vendaVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 465
            Top = 2
            Width = 116
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_fabricanteVar
          end
          object SctVarEstoque: TSctvarlabel
            Left = 396
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Caption = '0,00'
          end
        end
        object PageFooterBand1: TSctBand
          Left = 0
          Top = 218
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBand1level
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 2
            Top = 2
            Width = 529
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage1
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand1: TSctBand
          Left = 0
          Top = 253
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBand1level
          object SctLine8: TSctLine
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_produto
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
          object Sctvarlabel30: TSctvarlabel
            Left = 560
            Top = 3
            Width = 97
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
        end
        object PageHeaderBand1Sub: TSctSubBand
          Left = 0
          Top = 73
          Width = 748
          Height = 37
          Color = 15790320
          BandName = 'PageHeaderBand1Sub'
          Updatelevel = PageHeaderBand1level
          Band = PageHeaderBand1
          Above = False
          object SctLine6: TSctLine
            Left = 0
            Top = 29
            Width = 698
            Height = 7
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 1
            Top = 16
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 72
            Top = 16
            Width = 101
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 623
            Top = 2
            Width = 75
            Height = 31
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o de Venda'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 586
            Top = 16
            Width = 33
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 465
            Top = 16
            Width = 116
            Height = 17
            Caption = 'C'#243'digo do Fabricante'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 396
            Top = 16
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Estoque'
          end
        end
        object GrpHdLabFab: TSctBand
          Left = 0
          Top = 125
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'GrpHdLabFab'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel39: TSctvarlabel
            Left = 0
            Top = 1
            Width = 481
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstabelanm_laboratorioVar
          end
        end
        object GrpFtLabFab: TSctBand
          Left = 0
          Top = 194
          Width = 748
          Height = 9
          ParentColor = True
          BandName = 'GrpFtLabFab'
          Updatelevel = GroupFooterLevel
        end
      end
    end
    object SctRepTabNormal: TSctReport
      Left = 178
      Top = 134
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 11
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 45
      SLeft = 15
      SWidth = 946
      SHeight = 541
      MTop = 134
      MLeft = 178
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
        BorderType = btNone
        Description = 'Tabela de Pre'#231'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsTabela
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
          DataSource = DsTabela
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDBVar5: TSctDBVar
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
        object SctTotalvar1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdLabFab_2
          Footer = GrpFtLabFab_2
          Variable = adodstabelanm_laboratorioVar1
          Level = 0
        end
        object GroupHeaderLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodstabelanm_laboratorioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelasg_vendaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelavl_vendaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelasg_estoqueVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelacd_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelanm_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaVl_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Estoque'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaPs_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
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
          Height = 38
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel33: TSctvarlabel
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
            Caption = 'Tabela de Pre'#231'o'
          end
          object Sctvarlabel34: TSctvarlabel
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
          object Sctvarlabel40: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine9: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctTxtFabLab_2: TSctvarlabel
            Left = 2
            Top = 18
            Width = 439
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = ' '
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 160
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnAfterPrint = SctDtlTabelaAfterPrint
          object Sctvarlabel42: TSctvarlabel
            Left = 73
            Top = 1
            Width = 307
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelanm_produtoVar1
          end
          object Sctvarlabel43: TSctvarlabel
            Left = -4
            Top = 1
            Width = 70
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_produtoVar1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 375
            Top = 1
            Width = 53
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelasg_estoqueVar1
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 429
            Top = 1
            Width = 76
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelaVl_EstoqueVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 622
            Top = 1
            Width = 76
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelavl_vendaVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 506
            Top = 1
            Width = 59
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodstabelaPs_ProdutoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 568
            Top = 1
            Width = 53
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelasg_vendaVar1
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
          object SctLine10: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 2
            Top = 2
            Width = 529
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar5
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel51: TSctvarlabel
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
          object SctLine11: TSctLine
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = SctTotalvar1
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
          object Sctvarlabel52: TSctvarlabel
            Left = 560
            Top = 3
            Width = 97
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
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 73
          Width = 748
          Height = 37
          Color = 15790320
          BandName = 'PageHeaderBand1Sub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine12: TSctLine
            Left = 0
            Top = 29
            Width = 698
            Height = 7
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 1
            Top = 16
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 73
            Top = 16
            Width = 105
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 371
            Top = 2
            Width = 57
            Height = 31
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Unid. de Estoque'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 429
            Top = 16
            Width = 76
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 506
            Top = 16
            Width = 59
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 564
            Top = 2
            Width = 58
            Height = 31
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Unid. de Venda'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 622
            Top = 18
            Width = 76
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o'
          end
        end
        object GrpHdLabFab_2: TSctBand
          Left = 0
          Top = 125
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'GrpHdLabFab_2'
          Updatelevel = GroupHeaderLevel1
          object Sctvarlabel59: TSctvarlabel
            Left = 0
            Top = 1
            Width = 481
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstabelanm_laboratorioVar1
          end
        end
        object GrpFtLabFab_2: TSctBand
          Left = 0
          Top = 194
          Width = 748
          Height = 8
          ParentColor = True
          BandName = 'GrpFtLabFab_2'
          Updatelevel = GroupFooterLevel1
        end
      end
    end
    object EdtNr_Entrega: TCurrencyEdit
      Left = 260
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Items = <
              item
                Action = ActTabelaReport
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActPreco
            ImageIndex = 0
            ShortCut = 118
          end
          item
            Visible = False
            Action = ActTabela
            ImageIndex = 23
            ShortCut = 119
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 425
    Top = 10
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActPreco: TAction
      Category = '2-Database'
      Hint = 'Pre'#231'os do Produto'
      ImageIndex = 0
      ShortCut = 118
      OnExecute = ActPrecoExecute
    end
    object ActTabela: TAction
      Category = '2-Database'
      Hint = 'Impress'#227'o da Tabela de Pre'#231'os'
      ImageIndex = 23
      ShortCut = 119
      Visible = False
      OnExecute = ActTabelaExecute
    end
    object ActTabelaReport: TAction
      Category = '2-Database'
      Caption = 'Tabela de Pre'#231'o...'
      ImageIndex = 20
      OnExecute = ActTabelaReportExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa,'#13#10'  Nr_Entrega'#13#10#13#10'from'#13#10'  Produto_TblPreco'#13#10#13#10'where'#13#10'  Cd_Tabela = :Cd_Tabela'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end>
    Left = 335
    Top = 165
    object ADODsDadoscd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsDadosds_tabela: TStringField
      FieldName = 'ds_tabela'
      Size = 30
    end
    object ADODsDadosdt_inicio: TDateTimeField
      FieldName = 'dt_inicio'
    end
    object ADODsDadosdt_termino: TDateTimeField
      FieldName = 'dt_termino'
    end
    object ADODsDadosfl_ativa: TStringField
      FieldName = 'fl_ativa'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Produto_TblPreco( Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino,'
      '  Fl_Ativa, Nr_Entrega )'
      'values( :Cd_Tabela, :Ds_Tabela, :Dt_Inicio, :Dt_Termino, :Fl_Ativa, :Nr_Entrega )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Produto_TblPreco'
      ''
      'set'
      '  Ds_Tabela  = :Ds_Tabela,'
      '  Dt_Inicio  = :Dt_Inicio,'
      '  Dt_Termino = :Dt_Termino,'
      '  Fl_Ativa   = :Fl_Ativa,'
      '  Nr_Entrega = :Nr_Entrega'
      ''
      'where'
      '  Cd_Tabela = :Cd_Tabela'
    )
    SQLDelete.Strings = (
      'declare @vCd_Tabela VarChar( 10 )'
      'set @vCd_Tabela = :Cd_Tabela'
      ''
      'delete from'
      '  Produto_Preco'
      ''
      'where'
      '  Cd_Tabela = @vCd_Tabela'
      ''
      'delete from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Cd_Tabela = @vCd_Tabela'
    )
    SQLOther1.Strings = (
      'create table #TmpProdPreco'
      '  ('
      '  Cd_Produto Int,'
      '  Qt_Estoque Numeric( 12, 3 )'
      '  )'
    )
    SQLOther2.Strings = (
      'delete from #TmpProdPreco;'
    )
    SQLOther3.Strings = (
      '-- Carrega TmpProdPreco'
      'insert into #TmpProdPreco'
      'select'
      '  PP.Cd_Produto, sum( ES.Qt_Liquido ) as Qt_Estoque'
      ''
      'from'
      '  Produto_Preco PP'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = PP.Cd_Produto'
      '  /* Fl_Estoque */'
      ''
      'where'
      '  PP.Cd_Tabela = :Cd_Tabela'
      ''
      'group by'
      '  PP.Cd_Produto'
    )
    Left = 365
    Top = 165
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_Tabela'#13#10#13#10'from'#13#10'  Produto_TblPreco'#13#10#13#10'order by'#13#10'  Cd_Tabela'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Check Primary Key'
      'select'
      '  Cd_Tabela'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Cd_Tabela = :Cd_Tabela'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Cd_Tabela'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'order by'
      '  Cd_Tabela'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Cd_Tabela'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Cd_Tabela < :Cd_Tabela'
      ''
      'order by'
      '  Cd_Tabela desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Cd_Tabela'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Cd_Tabela > :Cd_Tabela'
      ''
      'order by'
      '  Cd_Tabela'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Cd_Tabela'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'order by'
      '  Cd_Tabela desc'
    )
    SQLOther9.Strings = (
      'select'
      '  max( cd_grupo ) as cd_grupo'
      ''
      'from'
      '  usuario_grupo'
    )
    Left = 396
    Top = 165
    object ADODsNavegarcd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 343
    Top = 119
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa'#13#10#13#10'from'#13#10'  Produto_TblPreco'#13#10#13#10'order by'#13#10'  Cd_Tabela'
    Parameters = <>
    Left = 373
    Top = 119
    object ADODsReportcd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsReportds_tabela: TStringField
      FieldName = 'ds_tabela'
      Size = 30
    end
    object ADODsReportdt_inicio: TDateTimeField
      FieldName = 'dt_inicio'
    end
    object ADODsReportdt_termino: TDateTimeField
      FieldName = 'dt_termino'
    end
    object ADODsReportfl_ativa: TStringField
      FieldName = 'fl_ativa'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Ativa: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Ativa'
      Size = 3
      Calculated = True
    end
  end
  object DsTabela: TDataSource
    DataSet = ADODsTabela
    Left = 427
    Top = 165
  end
  object ADODsTabela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'create table #TmpProdPreco'#13#10'  ('#13#10'  Cd_Produto Int,'#13#10'  Qt_Estoque Numeric( 12, 3 )'#13#10'  )'#13#10#13#10'select'#13#10'  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco,'#13#10'  P.Sg_Venda, L.Nm_Laboratorio, P.Cd_Fabricante,'#13#10'  TPP.Qt_Estoque, P.Ps_Produto,'#13#10'  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Venda,'#13#10'  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) as Vl_Estoque,'#13#10'  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Custo'#13#10#13#10'from'#13#10'  #TmpProdPreco TPP'#13#10#13#10'inner join'#13#10'  Produto_TblPreco PTP'#13#10'on'#13#10'  PTP.Cd_Tabela = :Cd_Tabela'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = TPP.Cd_Produto'#13#10#13#10'  and P.Nm_Produto like ''''a'#231'o%'''#13#10'  and P.Fl_Ativo = ''''1'''#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = PTP.Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10'inner join'#13#10'  Produto_Unidade PUV'#13#10'on'#13#10'  PUV.Cd_Produto = P.Cd_Produto and'#13#10'  PUV.Sg_Unidade = P.Sg_Venda'#13#10'inner join'#13#10'  Produto_Unidade PUE'#13#10'on'#13#10'  PUE.Cd_Produto = P.Cd_Produto and'#13#10'  PUE.Sg_Unidade = P.Sg_Estoque'#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10'  order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQLOther0.Strings = (
      'select'
      '  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco, P.Sg_Venda,'
      '  L.Nm_Laboratorio, P.Cd_Fabricante, TPP.Qt_Estoque, P.Ps_Produto,'
      '  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Venda,'
      '  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) as Vl_Estoque,'
      '  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Custo'
      ''
      'from'
      '  #TmpProdPreco TPP'
      ''
      'inner join'
      '  Produto_TblPreco PTP'
      'on'
      '  PTP.Cd_Tabela = :Cd_Tabela'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = TPP.Cd_Produto'
      ''
    )
    Left = 455
    Top = 165
    object ADODsTabelacd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsTabelanm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsTabelasg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsTabelatp_preco: TStringField
      FieldName = 'tp_preco'
      FixedChar = True
      Size = 1
    end
    object ADODsTabelavl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsTabelavl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 28
      Size = 6
    end
    object ADODsTabelasg_venda: TStringField
      FieldName = 'sg_venda'
      Size = 2
    end
    object ADODsTabelanm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsTabelacd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsTabelaQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      Size = 0
    end
    object ADODsTabelaVl_Estoque: TBCDField
      FieldName = 'Vl_Estoque'
    end
    object ADODsTabelaPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
  end
end
