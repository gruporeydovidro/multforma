object FrmTransportador: TFrmTransportador
  Left = 333
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Transportador'
  ClientHeight = 414
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
  object TSpeedButton
    Left = 0
    Top = 0
    Width = 23
    Height = 22
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 414
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 652
    Height = 414
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 384
      Width = 646
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 31
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label4: TLabel
      Left = 476
      Top = 141
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label3: TLabel
      Left = 563
      Top = 141
      Width = 35
      Height = 13
      Caption = 'Celular:'
    end
    object SbCEPEndereco: TSpeedButton
      Tag = 2
      Left = 310
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
    object Label6: TLabel
      Left = 307
      Top = 103
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Left = 357
      Top = 119
      Width = 23
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label5: TLabel
      Left = 5
      Top = 178
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label13: TLabel
      Left = 315
      Top = 142
      Width = 60
      Height = 13
      Caption = 'Capacidade:'
    end
    object SbCEP: TSpeedButton
      Tag = 1
      Left = 280
      Top = 119
      Width = 23
      Height = 19
      Hint = 'Consulta do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPClick
    end
    object Label2: TLabel
      Left = 401
      Top = 142
      Width = 30
      Height = 13
      Caption = 'Placa:'
    end
    object Label8: TLabel
      Left = 358
      Top = 33
      Width = 61
      Height = 13
      Caption = 'CNPJ / CPF:'
    end
    object Label9: TLabel
      Left = 6
      Top = 265
      Width = 45
      Height = 13
      Caption = 'Contatos:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 650
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 18
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
      Top = 387
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 565
      Top = 387
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Transportador: TCurrencyEdit
      Left = 5
      Top = 46
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
    object EdtNm_Transportador: TLabeledEdit
      Left = 50
      Top = 46
      Width = 303
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 115
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Transportador:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 476
      Top = 156
      Width = 82
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 13
    end
    object EdtNr_Celular: TMaskEdit
      Left = 563
      Top = 156
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 14
    end
    object EdtDs_Endereco: TLabeledEdit
      Left = 5
      Top = 82
      Width = 304
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
      Width = 206
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
    object EdtNr_CEP: TMaskEdit
      Left = 220
      Top = 119
      Width = 60
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 7
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtNm_Bairro: TLabeledEdit
      Left = 5
      Top = 119
      Width = 210
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
    object EdtCd_Cidade: TCurrencyEdit
      Left = 307
      Top = 119
      Width = 50
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
      Width = 260
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
      Width = 305
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 10
    end
    object MmObservacao: TMemo
      Left = 6
      Top = 193
      Width = 639
      Height = 68
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 15
    end
    object EdtNr_Capacidade: TCurrencyEdit
      Left = 315
      Top = 156
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 11
    end
    object EdtNr_Placa: TMaskEdit
      Left = 401
      Top = 156
      Width = 69
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 12
    end
    object EdtNr_Documento: TEditMF
      Left = 358
      Top = 46
      Width = 120
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
      Left = 483
      Top = 46
      Width = 120
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
    object SctReport: TSctReport
      Left = 531
      Top = 223
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
      TabOrder = 19
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 34
      SLeft = 5
      SWidth = 871
      SHeight = 462
      MTop = 223
      MLeft = 531
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
        Description = 'Grupos de Estoque'
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
        object adodsreportnr_telefoneVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_telefone'
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
          DataSource = FrmCEP.DsLogradouro
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsCEP
        end
        object adodsreportnr_celularVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_celular'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          DataSource = FrmCEP.DsBairro
        end
        object adodsreportnm_transportadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_transportador'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_placaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_placa'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_capacidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_capacidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_transportadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_transportador'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_transportador: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_transportadorVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsContato
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
            Caption = 'Transportador'
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
            Variable = adodsreportcd_transportadorVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 383
            Height = 17
            Variable = adodsreportnm_transportadorVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 433
            Top = 0
            Width = 80
            Height = 17
            Variable = adodsreportnr_telefoneVar
            DataFormat.DisplayFormat = '(##) ####-####;0; '
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 520
            Top = 1
            Width = 80
            Height = 17
            Variable = adodsreportnr_celularVar
            DataFormat.DisplayFormat = '(##) ####-####;0; '
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
            TotalVariable = TotalOfcd_transportador
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
            Caption = 'Nome do Transportador'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 433
            Top = 0
            Width = 80
            Height = 17
            Caption = 'Telefone'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 520
            Top = 0
            Width = 80
            Height = 17
            Caption = 'Celular'
          end
        end
      end
    end
    object DbGContatos: TDBGrid
      Left = 6
      Top = 279
      Width = 639
      Height = 102
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 20
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGContatosEnter
      OnExit = DbGContatosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 245
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Cargo'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Telefone'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Ramal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Celular'
          Width = 84
          Visible = True
        end>
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,'#13#10'  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,'#13#10'  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  T.Nr_Placa, T.Nr_InscEstadual '#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Cd_Transportador = :Cd_Transportador'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 85
    Top = 386
    object ADODsDadoscd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsDadosnm_transportador: TStringField
      FieldName = 'nm_transportador'
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
      Size = 11
    end
    object ADODsDadosds_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsDadosnr_capacidade: TBCDField
      FieldName = 'nr_capacidade'
      Precision = 12
      Size = 3
    end
    object ADODsDadosdp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsDadosnr_placa: TStringField
      FieldName = 'nr_placa'
      FixedChar = True
      Size = 7
    end
    object ADODsDadosnr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Transportador( Cd_Transportador, Nm_Transportador, Nr_Documento,'
      '  Nr_InscEstadual, Ds_Endereco, Nm_Bairro, Ds_Complemento, Cd_Cidade, Nr_Cep,'
      '  Nr_Telefone, Nr_Celular, Ds_Email, Nr_Capacidade, Nr_Placa, Mm_Observacao )'
      'values( :Cd_Transportador, :Nm_Transportador, :Nr_Documento, :Nr_InscEstadual,'
      '  :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Cd_Cidade, :Nr_Cep,'
      '  :Nr_Telefone, :Nr_Celular, :Ds_Email, :Nr_Capacidade, :Nr_Placa, :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Transportador'
      ''
      'set'
      '  Nm_Transportador  = :Nm_Transportador,'
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
      '  Nr_Capacidade     = :Nr_Capacidade,'
      '  Nr_Placa          = :Nr_Placa,'
      '  Mm_Observacao     = :Mm_Observacao'
      ''
      'where'
      '  Cd_Transportador = :Cd_Transportador'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Transportador'
      ''
      'where'
      '  Cd_Transportador = :Cd_Transportador'
    )
    SQLOther0.Strings = (
      '-- Exclus'#227'o do Contato'
      'delete from'
      '  Transportador_Contato'
      ''
      'where'
      '  Cd_Transportador = :Cd_Transportador and'
      '  Nr_Contato  = :Nr_Contato'
    )
    Left = 115
    Top = 386
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 25
    Top = 386
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Telefone, T.Nr_Celular, T.Nr_Placa, T.Nr_Capacidade'#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'order by'#13#10'  T.Nm_Transportador'
    Parameters = <>
    Left = 55
    Top = 386
    object ADODsReportnm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsReportnr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsReportnr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 11
    end
    object ADODsReportnr_placa: TStringField
      FieldName = 'nr_placa'
      FixedChar = True
      Size = 7
    end
    object ADODsReportnr_capacidade: TBCDField
      FieldName = 'nr_capacidade'
      Precision = 12
      Size = 3
    end
    object ADODsReportcd_transportador: TSmallintField
      FieldName = 'cd_transportador'
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
                Action = ActInsCont
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
            Items = <
              item
                Action = ActEditCont
                ImageIndex = 18
              end>
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Items = <
              item
                Action = ActDelCont
                ImageIndex = 19
              end>
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
    Left = 634
    Top = 2
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
    object ActInsCont: TAction
      Category = '2-Database'
      Caption = 'Contato'
      Hint = 'Contato'
      ImageIndex = 16
      OnExecute = ActInsContExecute
    end
    object ActEditCont: TAction
      Category = '2-Database'
      Caption = 'Contato'
      Hint = 'Contato'
      ImageIndex = 18
      OnExecute = ActEditContExecute
    end
    object ActDelCont: TAction
      Category = '2-Database'
      Caption = 'Contato'
      Hint = 'Contato'
      ImageIndex = 19
      OnExecute = ActDelContExecute
    end
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Transportador, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,'#13#10'  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular'#13#10#13#10'from'#13#10'  Transportador_Contato A'#13#10#13#10'where'#13#10'  A.Cd_Transportador = :Cd_Transportador'#13#10#13#10'order by'#13#10'  A.Cd_Transportador, A.Nm_Contato'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 173
    Top = 387
    object ADODsContatoNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsContatoNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoDt_Nascimento: TDateTimeField
      DisplayLabel = 'Nascimento'
      FieldName = 'Dt_Nascimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsContatoDs_Cargo: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'Ds_Cargo'
      Size = 30
    end
    object ADODsContatoDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 50
    end
    object ADODsContatoNr_Telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Nr_Telefone'
      EditMask = '(##) ####-####;0; '
      Size = 11
    end
    object ADODsContatoNr_Ramal: TSmallintField
      DisplayLabel = 'Ramal'
      FieldName = 'Nr_Ramal'
    end
    object ADODsContatoNr_Celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'Nr_Celular'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 145
    Top = 387
  end
end
