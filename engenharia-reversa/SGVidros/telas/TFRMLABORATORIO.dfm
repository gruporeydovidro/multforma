object FrmLaboratorio: TFrmLaboratorio
  Left = 313
  Top = 273
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Laborat'#243'rio/Fabricante'
  ClientHeight = 362
  ClientWidth = 673
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
    Height = 362
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 652
    Height = 362
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 332
      Width = 644
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label8: TLabel
      Left = 365
      Top = 32
      Width = 61
      Height = 13
      Caption = 'CNPJ / CPF:'
    end
    object SbCEPEndereco: TSpeedButton
      Tag = 2
      Left = 305
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Selecionar o Endere'#231'o a partir do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPClick
    end
    object Label7: TLabel
      Left = 220
      Top = 105
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object SbCEP: TSpeedButton
      Tag = 1
      Left = 275
      Top = 119
      Width = 23
      Height = 19
      Hint = 'Consulta do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPClick
    end
    object Label6: TLabel
      Left = 307
      Top = 103
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Left = 352
      Top = 119
      Width = 23
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label4: TLabel
      Left = 319
      Top = 141
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label3: TLabel
      Left = 406
      Top = 141
      Width = 35
      Height = 13
      Caption = 'Celular:'
    end
    object Label5: TLabel
      Left = 5
      Top = 214
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label25: TLabel
      Left = 495
      Top = 142
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 650
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 19
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 650
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
      Left = 478
      Top = 335
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 564
      Top = 335
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Laboratorio: TLabeledEdit
      Left = 52
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 102
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Laborat'#243'rio:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_Laboratorio: TCurrencyEdit
      Left = 7
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
      Left = 210
      Top = 35
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
      TabOrder = 20
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
      MTop = 35
      MLeft = 210
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
        Description = 'Laborat'#243'rios'
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
        object adodsreportcd_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_laboratorio: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_laboratorioVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsLogradouro
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsCEP
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsBairro
        end
        object adodsfindnm_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfinddp_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_estado'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindcd_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindsg_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estado'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnr_cepVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslogradouronm_logradouroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_logradouro'
          DataSource = FrmCEP.DsLogradouro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslogradouronm_bairro_iniVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro_ini'
          DataSource = FrmCEP.DsLogradouro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslogradouronm_bairro_fimVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro_fim'
          DataSource = FrmCEP.DsLogradouro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslogradouronr_cepVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = FrmCEP.DsLogradouro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscepnr_cepVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = FrmCEP.DsCEP
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscepnm_bairro_iniVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro_ini'
          DataSource = FrmCEP.DsCEP
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscepdp_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_cidade'
          DataSource = FrmCEP.DsCEP
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscepcd_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = FrmCEP.DsCEP
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscepnm_logradouroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_logradouro'
          DataSource = FrmCEP.DsCEP
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsbairronm_bairro_iniVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro_ini'
          DataSource = FrmCEP.DsBairro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsbairronm_bairro_fimVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_bairro_fim'
          DataSource = FrmCEP.DsBairro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsbairronr_cepVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = FrmCEP.DsBairro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsbairronm_logradouroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_logradouro'
          DataSource = FrmCEP.DsBairro
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
            Caption = 'Laborat'#243'rios'
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
            Variable = adodsreportcd_laboratorioVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportnm_laboratorioVar
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
            TotalVariable = TotalOfcd_laboratorio
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
            Caption = 'Nome do Laborat'#243'rio'
          end
        end
      end
    end
    object EdtNr_Documento: TEditMF
      Left = 365
      Top = 45
      Width = 115
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 2
      Kind = dkBoth
      Formated = True
      LockOnError = True
      Check = True
    end
    object EdtNr_InscEstadual: TLabeledEdit
      Left = 487
      Top = 45
      Width = 115
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
      LabelSpacing = 2
      MaxLength = 18
      TabOrder = 3
    end
    object EdtDs_Endereco: TLabeledEdit
      Left = 5
      Top = 82
      Width = 299
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 4
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtDs_Complemento: TLabeledEdit
      Left = 341
      Top = 82
      Width = 201
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 5
    end
    object EdtNm_Bairro: TLabeledEdit
      Left = 5
      Top = 119
      Width = 205
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 6
    end
    object EdtNr_CEP: TMaskEdit
      Left = 215
      Top = 119
      Width = 61
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 7
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtCd_Cidade: TCurrencyEdit
      Left = 307
      Top = 119
      Width = 46
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 380
      Top = 119
      Width = 256
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtDs_EMail: TLabeledEdit
      Left = 5
      Top = 156
      Width = 310
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 10
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 319
      Top = 156
      Width = 80
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 11
    end
    object EdtNr_Celular: TMaskEdit
      Left = 406
      Top = 156
      Width = 84
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 12
    end
    object MmObservacao: TMemo
      Left = 6
      Top = 229
      Width = 639
      Height = 93
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object EdtNm_Comercial: TLabeledEdit
      Left = 5
      Top = 192
      Width = 310
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 89
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato Comercial:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 14
    end
    object EdtNm_Financeiro: TLabeledEdit
      Left = 320
      Top = 192
      Width = 310
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato Financeiro:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 15
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 495
      Top = 156
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
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
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,'#13#10'  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,'#13#10'  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, '#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  L.Nr_InscEstadual, L.Nm_Comercial, L.Nm_Financeiro, L.Pr_Comissao'#13#10#13#10'from'#13#10'  Laboratorio L'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = L.Cd_Cidade'#13#10#13#10'where'#13#10'  L.Cd_Laboratorio = :Cd_Laboratorio'
    Parameters = <
      item
        Name = 'Cd_Laboratorio'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 31
    Top = 330
    object ADODsDadoscd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsDadosnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsDadosds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsDadosnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsDadosds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsDadoscd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsDadosnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsDadosnr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsDadosnr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 10
    end
    object ADODsDadosds_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsDadosdp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsDadosnr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsDadosnm_comercial: TStringField
      FieldName = 'nm_comercial'
      Size = 50
    end
    object ADODsDadosnm_financeiro: TStringField
      FieldName = 'nm_financeiro'
      Size = 50
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 9
      Size = 3
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Laboratorio( Cd_Laboratorio, Nm_Laboratorio, Nr_Documento,'
      '  Nr_InscEstadual, Ds_Endereco, Nm_Bairro, Ds_Complemento, Cd_Cidade, Nr_Cep,'
      '  Nr_Telefone, Nr_Celular, Ds_Email, Mm_Observacao, Nm_Comercial,'
      '  Nm_Financeiro, Pr_Comissao )'
      'values( :Cd_Laboratorio, :Nm_Laboratorio, :Nr_Documento, :Nr_InscEstadual,'
      '  :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Cd_Cidade, :Nr_Cep,'
      '  :Nr_Telefone, :Nr_Celular, :Ds_Email, :Mm_Observacao, :Nm_Comercial,'
      '  :Nm_Financeiro, :Pr_Comissao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Laboratorio'
      ''
      'set'
      '  Nm_Laboratorio  = :Nm_Laboratorio,'
      '  Nr_Documento      = :Nr_Documento,'
      '  Nr_InscEstadual   = :Nr_InscEstadual,'
      '  Ds_Endereco       = :Ds_Endereco,'
      '  Nm_Bairro         = :Nm_Bairro,'
      '  Ds_Complemento    = :Ds_Complemento,'
      '  Cd_Cidade         = :Cd_Cidade,'
      '  Nr_Cep            = :Nr_Cep,'
      '  Nr_Telefone       = :Nr_Telefone,'
      '  Nr_Celular        = :Nr_Celular,'
      '  Ds_Email          = :Ds_Email,'
      '  Nm_Comercial      = :Nm_Comercial,'
      '  Nm_Financeiro     = :Nm_Financeiro,'
      '  Mm_Observacao     = :Mm_Observacao,'
      '  Pr_Comissao       = :Pr_Comissao'
      ''
      'where'
      '  Cd_Laboratorio = :Cd_Laboratorio'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Laboratorio'
      ''
      'where'
      '  cd_Laboratorio = :Cd_Laboratorio'
    )
    Left = 61
    Top = 330
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 121
    Top = 330
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  cd_laboratorio, nm_laboratorio'#13#10#13#10'from'#13#10'  Laboratorio'#13#10#13#10'order by'#13#10'  nm_laboratorio'
    Parameters = <>
    Left = 151
    Top = 330
    object ADODsReportcd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsReportnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
  end
end
