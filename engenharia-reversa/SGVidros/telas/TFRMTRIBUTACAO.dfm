object FrmTributacao: TFrmTributacao
  Left = 305
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Tributa'#231#227'o de Produtos'
  ClientHeight = 479
  ClientWidth = 721
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
    Height = 479
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 700
    Height = 479
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 449
      Width = 692
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 30
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 197
      Top = 67
      Width = 59
      Height = 13
      Caption = 'Contribuinte:'
    end
    object Label3: TLabel
      Left = 261
      Top = 67
      Width = 82
      Height = 13
      Caption = 'N'#227'o Contribuinte:'
    end
    object Label4: TLabel
      Left = 4
      Top = 67
      Width = 93
      Height = 13
      Caption = 'Tipo de Tributa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 5
      Top = 287
      Width = 324
      Height = 13
      Caption = 'Observa'#231#245'es para Nota Fiscal (procure escrever o m'#237'nimo poss'#237'vel):'
    end
    object Label6: TLabel
      Left = 5
      Top = 252
      Width = 131
      Height = 13
      Caption = 'CFOP DENTRO do Estado:'
    end
    object SbCFOPDentro: TSpeedButton
      Tag = 1
      Left = 36
      Top = 266
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPDentroClick
    end
    object Label7: TLabel
      Left = 352
      Top = 252
      Width = 114
      Height = 13
      Caption = 'CFOP FORA do Estado:'
    end
    object SbCFOPFora: TSpeedButton
      Tag = 2
      Left = 383
      Top = 266
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPDentroClick
    end
    object Label41: TLabel
      Left = 5
      Top = 181
      Width = 106
      Height = 13
      Caption = 'CST PIS / Percentual:'
    end
    object Label42: TLabel
      Left = 117
      Top = 181
      Width = 118
      Height = 13
      Caption = 'CST Cofins / Percentual:'
    end
    object Label8: TLabel
      Left = 5
      Top = 216
      Width = 126
      Height = 13
      Caption = 'MVA DENTRO do Estado:'
    end
    object Label9: TLabel
      Left = 135
      Top = 216
      Width = 109
      Height = 13
      Caption = 'MVA FORA do Estado:'
    end
    object Label10: TLabel
      Left = 247
      Top = 216
      Width = 189
      Height = 13
      Caption = 'Aliquota para ECF (Optante do Simples):'
    end
    object Label11: TLabel
      Left = 438
      Top = 216
      Width = 85
      Height = 13
      Caption = 'Reten'#231#227'o de ISS:'
    end
    object SbEntrada: TSpeedButton
      Left = 44
      Top = 427
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object Label12: TLabel
      Left = 5
      Top = 412
      Width = 109
      Height = 13
      Caption = 'Tributa'#231#227'o de Entrada:'
    end
    object Label13: TLabel
      Left = 348
      Top = 67
      Width = 95
      Height = 13
      Caption = '% FCP Substitui'#231#227'o:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 698
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 25
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 698
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 698
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
      Left = 527
      Top = 452
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 26
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 613
      Top = 452
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 27
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Tributacao: TLabeledEdit
      Left = 48
      Top = 45
      Width = 489
      Height = 19
      AutoSelect = False
      EditLabel.Width = 117
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o da Tributa'#231#227'o'
      LabelSpacing = 2
      MaxLength = 60
      TabOrder = 1
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Left = 4
      Top = 45
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object SctReport: TSctReport
      Left = 302
      Top = 10
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
      TabOrder = 28
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
      MTop = 10
      MLeft = 302
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
        Description = 'Tributa'#231#227'o de Produtos'
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
        object adodsreportcd_tributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_tributacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_tributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_tributacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportpr_contribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_contrib'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportpr_naocontribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_naocontrib'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_tributacao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_tributacaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportcd_cstVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cst'
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
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCFOP_Find.DsFind
        end
        object adodsfindcd_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cfop'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindds_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_cfop'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindCd_CFOPVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CFOP'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindDs_CFOPVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_CFOP'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindDp_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Estoque'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindDp_TerceirosVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Terceiros'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindDp_SintegraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Sintegra'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindDp_OperacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Operacao'
          DataSource = FrmCFOP_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsconexaoNm_BancoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Banco'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoHr_LoginVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Hr_Login'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNr_TransacoesAbertasVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_TransacoesAbertas'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNt_UsuarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nt_Usuario'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNm_EstacaoTrabalhoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_EstacaoTrabalho'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNm_AplicacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Aplicacao'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoStatusVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Status'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoDs_ComandoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Comando'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoLoginameVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Loginame'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaospidVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'spid'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNet_AddressVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Net_Address'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNr_VersaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Versao'
          DataSource = DmMaster.DsConexao
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconectadomesNm_HostVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Host'
          DataSource = DmMaster.DsConecadoMes
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
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
            Caption = 'Tributa'#231#227'o de Produto'
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
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_tributacaoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 435
            Height = 17
            Variable = adodsreportds_tributacaoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 484
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportpr_contribVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 553
            Top = 0
            Width = 91
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportpr_naocontribVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 650
            Top = 0
            Width = 47
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportcd_cstVar
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
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_tributacao
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
            Left = 620
            Top = 3
            Width = 37
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
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 43
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Descri'#231#227'o da Tributa'#231#227'o'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 484
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Contribuinte'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 553
            Top = 0
            Width = 91
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#227'o Contribuinte'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 650
            Top = 0
            Width = 47
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'CST'
          end
        end
      end
    end
    object EdtPr_Contrib: TCurrencyEdit
      Left = 197
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.00#;-0.00#'
      TabOrder = 3
    end
    object EdtPr_NaoContrib: TCurrencyEdit
      Left = 261
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.00#;-0.00#'
      TabOrder = 4
    end
    object CbTipo: TComboBox
      Left = 4
      Top = 82
      Width = 189
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Tributado'
      OnChange = CbTipoChange
      Items.Strings = (
        'Tributado'
        'Substitui'#231#227'o Tribut'#225'ria'
        'Isento'
        'Servi'#231'o (ISS)'
        'N'#227'o Incid'#234'ncia'
      )
    end
    object EdtCd_CST: TLabeledEdit
      Left = 4
      Top = 121
      Width = 40
      Height = 19
      AutoSelect = False
      EditLabel.Width = 235
      EditLabel.Height = 13
      EditLabel.Caption = 'CST / CSOSN Contribuinte DENTRO DO Estado:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 6
    end
    object MmObsNota: TMemo
      Left = 5
      Top = 302
      Width = 689
      Height = 109
      TabOrder = 22
    end
    object EdtCd_CFOPDentro: TEdit
      Tag = 1
      Left = 5
      Top = 266
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 18
      OnExit = EdtCd_CFOPDentroExit
      OnKeyDown = EdtCd_CFOPDentroKeyDown
    end
    object EdtDs_CFOPDentro: TEdit
      Left = 60
      Top = 266
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
      TabOrder = 19
    end
    object EdtCd_CFOPFora: TEdit
      Tag = 2
      Left = 352
      Top = 266
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 20
      OnExit = EdtCd_CFOPDentroExit
      OnKeyDown = EdtCd_CFOPDentroKeyDown
    end
    object EdtDs_CFOPFora: TEdit
      Left = 407
      Top = 266
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
      TabOrder = 21
    end
    object EdtCd_CST_PIS: TEdit
      Tag = 7
      Left = 5
      Top = 196
      Width = 31
      Height = 19
      MaxLength = 3
      TabOrder = 10
    end
    object EdtPr_PIS: TCurrencyEdit
      Tag = 6
      Left = 39
      Top = 196
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '##0.00#'
      TabOrder = 11
    end
    object EdtCd_CST_Cofins: TEdit
      Tag = 7
      Left = 117
      Top = 196
      Width = 31
      Height = 19
      MaxLength = 3
      TabOrder = 12
    end
    object EdtPr_Cofins: TCurrencyEdit
      Tag = 6
      Left = 151
      Top = 196
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '##0.00#'
      TabOrder = 13
    end
    object EdtPr_MVA_Dentro: TCurrencyEdit
      Left = 5
      Top = 231
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 14
    end
    object EdtPr_MVA_Fora: TCurrencyEdit
      Left = 135
      Top = 231
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 15
    end
    object EdtPr_ECF: TCurrencyEdit
      Left = 247
      Top = 231
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 16
    end
    object CbISSRetido: TComboBox
      Left = 438
      Top = 229
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 17
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtCd_CST_NC: TLabeledEdit
      Left = 241
      Top = 121
      Width = 40
      Height = 19
      AutoSelect = False
      EditLabel.Width = 275
      EditLabel.Height = 13
      EditLabel.Caption = 'CST / CSOSN N'#195'O Contribuinte DENTRO DO ESTADO :'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 7
    end
    object EdtCd_Entrada: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 427
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 23
      OnExit = EdtCd_EntradaExit
      OnKeyDown = EdtCd_CFOPDentroKeyDown
    end
    object EdtDs_Entrada: TEdit
      Left = 67
      Top = 427
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
      TabOrder = 24
    end
    object EdtCd_CST_Fora: TLabeledEdit
      Left = 4
      Top = 156
      Width = 40
      Height = 19
      AutoSelect = False
      EditLabel.Width = 229
      EditLabel.Height = 13
      EditLabel.Caption = 'CST / CSOSN Contribuinte FORA DO ESTADO:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 8
    end
    object EdtCd_CST_Fora_NC: TLabeledEdit
      Left = 241
      Top = 156
      Width = 40
      Height = 19
      AutoSelect = False
      EditLabel.Width = 255
      EditLabel.Height = 13
      EditLabel.Caption = 'CST / CSOSN N'#195'O Contribuinte FORA DO ESTADO:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 9
    end
    object EdtDs_cBeneficio: TLabeledEdit
      Left = 524
      Top = 231
      Width = 110
      Height = 19
      AutoSelect = False
      EditLabel.Width = 98
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Beneficio:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 29
    end
    object EdtPr_pFCPST: TCurrencyEdit
      Left = 348
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
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
            Items = <
              item
                Action = ActCopiar
                ImageIndex = 16
              end>
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
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
    object ActCopiar: TAction
      Category = '2-Database'
      Caption = 'Copiar Tributa'#231#227'o'
      ImageIndex = 16
      OnExecute = ActCopiarExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,'#13#10'  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,'#13#10'  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,'#13#10'  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,'#13#10'  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,'#13#10'  T.Pr_MVA_Dentro, T.Pr_MVA_Fora, T.Pr_ECF, T.Fl_ISSRetido,'#13#10'  T.Cd_CST_NC, T.Cd_CST_Fora_NC, T.Cd_CST_Fora, T.Ds_cBeneficio,'#13#10#13#10'  T.Cd_Entrada, TE.Ds_Tributacao as Ds_Entrada, T.Pr_pFCPST'#13#10#13#10'from'#13#10'  Tributacao T'#13#10#13#10'left join'#13#10'  CFOP CFIn'#13#10'on'#13#10'  CFIn.Cd_CFOP = T.Cd_CFOPDentro'#13#10#13#10'left join'#13#10'  CFOP CFOut'#13#10'on'#13#10'  CFOut.Cd_CFOP = T.Cd_CFOPFora'#13#10#13#10'left join'#13#10'  Tributacao TE'#13#10'on'#13#10'  TE.Cd_Tributacao = T.Cd_Entrada'#13#10#13#10'where'#13#10'  T.Cd_Tributacao = :Cd_Tributacao'
    Parameters = <
      item
        Name = 'Cd_Tributacao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 138
    Top = 451
    object ADODsDadoscd_tributacao: TSmallintField
      FieldName = 'cd_tributacao'
    end
    object ADODsDadosds_tributacao: TStringField
      FieldName = 'ds_tributacao'
      Size = 60
    end
    object ADODsDadospr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsDadospr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsDadostp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadoscd_cst: TStringField
      FieldName = 'cd_cst'
      Size = 5
    end
    object ADODsDadosMm_ObsNota: TMemoField
      FieldName = 'Mm_ObsNota'
      BlobType = ftMemo
    end
    object ADODsDadosCd_CFOPDentro: TStringField
      FieldName = 'Cd_CFOPDentro'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosDs_CFOPDentro: TStringField
      FieldName = 'Ds_CFOPDentro'
      Size = 50
    end
    object ADODsDadosCd_CFOPFora: TStringField
      FieldName = 'Cd_CFOPFora'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosDs_CFOPFora: TStringField
      FieldName = 'Ds_CFOPFora'
      Size = 50
    end
    object ADODsDadosCd_CST_Pis: TStringField
      FieldName = 'Cd_CST_Pis'
      Size = 3
    end
    object ADODsDadosPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 9
      Size = 3
    end
    object ADODsDadosCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
    object ADODsDadosPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 9
      Size = 3
    end
    object ADODsDadosPr_MVA_Dentro: TBCDField
      FieldName = 'Pr_MVA_Dentro'
      Precision = 7
      Size = 3
    end
    object ADODsDadosPr_MVA_Fora: TBCDField
      FieldName = 'Pr_MVA_Fora'
      Precision = 7
      Size = 3
    end
    object ADODsDadosPr_ECF: TBCDField
      FieldName = 'Pr_ECF'
      Precision = 7
      Size = 3
    end
    object ADODsDadosFl_ISSRetido: TStringField
      FieldName = 'Fl_ISSRetido'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_CST_NC: TStringField
      FieldName = 'Cd_CST_NC'
      Size = 5
    end
    object ADODsDadosCd_Entrada: TSmallintField
      FieldName = 'Cd_Entrada'
    end
    object ADODsDadosDs_Entrada: TStringField
      FieldName = 'Ds_Entrada'
      Size = 30
    end
    object ADODsDadosCd_CST_Fora_NC: TStringField
      FieldName = 'Cd_CST_Fora_NC'
      Size = 3
    end
    object ADODsDadosCd_CST_Fora: TStringField
      FieldName = 'Cd_CST_Fora'
      Size = 3
    end
    object ADODsDadosDs_cBeneficio: TStringField
      FieldName = 'Ds_cBeneficio'
    end
    object ADODsDadosPr_pFCPST: TBCDField
      FieldName = 'Pr_pFCPST'
      Precision = 7
      Size = 2
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Tributacao( Cd_Tributacao, Ds_Tributacao, Tp_Tributacao,'
      '   Pr_Contrib, Pr_NaoContrib, Cd_CST, Mm_ObsNota, Cd_CFOPDentro, Cd_CFOPFora,'
      '   Cd_CST_Pis, Pr_PIS, Cd_CST_Cofins, Pr_Cofins, Pr_MVA_Dentro, Pr_MVA_Fora,'
      '   Pr_ECF, Fl_ISSRetido, Cd_CST_NC, Cd_Entrada, Cd_CST_Fora, Cd_CST_Fora_NC,'
      '   Ds_cBeneficio, Pr_pFCPST )'
      'values( :Cd_Tributacao, :Ds_Tributacao, :Tp_Tributacao,'
      '   :Pr_Contrib, :Pr_NaoContrib, :Cd_CST, :Mm_ObsNota, :Cd_CFOPDentro,'
      '   :Cd_CFOPFora, :Cd_CST_Pis, :Pr_PIS, :Cd_CST_Cofins, :Pr_Cofins,'
      '   :Pr_MVA_Dentro, :Pr_MVA_Fora, :Pr_ECF, :Fl_ISSRetido, :Cd_CST_NC, :Cd_Entrada,'
      '   :Cd_CST_Fora, :Cd_CST_Fora_NC, :Ds_cBeneficio, :Pr_pFCPST )'
    )
    SQLUpdate.Strings = (
      'update'
      '  tributacao'
      ''
      'set'
      '  Ds_Tributacao  = :Ds_Tributacao,'
      '  Tp_Tributacao  = :Tp_Tributacao,'
      '  Pr_Contrib     = :Pr_Contrib,'
      '  Pr_NaoContrib  = :Pr_NaoContrib,'
      '  Cd_CST         = :Cd_CST,'
      '  Mm_ObsNota     = :Mm_ObsNota,'
      '  Cd_CFOPDentro  = :Cd_CFOPDentro,'
      '  Cd_CFOPFora    = :Cd_CFOPFora,'
      '  Cd_CST_Pis     = :Cd_CST_Pis,'
      '  Pr_PIS         = :Pr_PIS,'
      '  Cd_CST_Cofins  = :Cd_CST_Cofins,'
      '  Pr_Cofins      = :Pr_Cofins,'
      '  Pr_MVA_Dentro  = :Pr_MVA_Dentro,'
      '  Pr_MVA_Fora    = :Pr_MVA_Fora,'
      '  Pr_ECF         = :Pr_ECF,'
      '  Fl_ISSRetido   = :Fl_ISSRetido,'
      '  Cd_CST_NC      = :Cd_CST_NC,'
      '  Cd_Entrada     = :Cd_Entrada,'
      '  Cd_CST_Fora    = :Cd_CST_Fora,'
      '  Cd_CST_Fora_NC = :Cd_CST_Fora_NC,'
      '  Ds_cBeneficio  = :Ds_cBeneficio,'
      '  Pr_pFCPST      = :Pr_pFCPST'
      ''
      'where'
      '  Cd_Tributacao = :Cd_Tributacao'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Tributacao'
      ''
      'where'
      '  Cd_Tributacao = :Cd_Tributacao'
    )
    Left = 168
    Top = 451
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 228
    Top = 451
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Tributacao, Ds_Tributacao, Pr_Contrib, Pr_NaoContrib, Cd_CST'#13#10#13#10'from'#13#10'  Tributacao'#13#10#13#10'order by'#13#10'  Cd_Tributacao'
    Parameters = <>
    Left = 258
    Top = 451
    object ADODsReportcd_tributacao: TSmallintField
      FieldName = 'cd_tributacao'
    end
    object ADODsReportds_tributacao: TStringField
      FieldName = 'ds_tributacao'
      Size = 30
    end
    object ADODsReportpr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsReportpr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsReportcd_cst: TStringField
      FieldName = 'cd_cst'
      Size = 5
    end
  end
end
