object FrmFuncionario: TFrmFuncionario
  Left = 309
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Funcion'#225'rio'
  ClientHeight = 390
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
    Height = 390
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 652
    Height = 390
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 360
      Width = 646
      Height = 5
      Shape = bsTopLine
    end
    object LblFuncionario: TLabel
      Left = 2
      Top = 369
      Width = 69
      Height = 13
      Caption = 'LblFuncionario'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 650
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
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
      Top = 363
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 565
      Top = 363
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCFuncionario: TPageControl
      Left = -1
      Top = 27
      Width = 646
      Height = 331
      ActivePage = TabSDocumento
      TabOrder = 3
      OnChange = PgCFuncionarioChange
      object TabSFuncinario: TTabSheet
        Caption = '                                       Funcion'#225'rio                                      '
        object Bevel1: TBevel
          Left = 362
          Top = 165
          Width = 273
          Height = 135
          Shape = bsFrame
        end
        object Label1: TLabel
          Left = 5
          Top = 1
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label4: TLabel
          Left = 458
          Top = 1
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label3: TLabel
          Left = 548
          Top = 1
          Width = 35
          Height = 13
          Caption = 'Celular:'
        end
        object SbCEPEndereco: TSpeedButton
          Tag = 2
          Left = 314
          Top = 54
          Width = 21
          Height = 19
          Hint = 'Selecionar o Endere'#231'o a partir do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCEPClick
        end
        object Label7: TLabel
          Left = 553
          Top = 40
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object SbCEP: TSpeedButton
          Tag = 1
          Left = 613
          Top = 54
          Width = 23
          Height = 19
          Hint = 'Consulta do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCEPClick
        end
        object Label6: TLabel
          Left = 219
          Top = 75
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object SbCidade: TSpeedButton
          Left = 279
          Top = 91
          Width = 23
          Height = 19
          Hint = 'Consulta de Cidades'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCidadeClick
        end
        object Label10: TLabel
          Left = 362
          Top = 150
          Width = 153
          Height = 13
          Caption = 'Foto do Funcion'#225'rio (130 x 268):'
        end
        object ImgFoto: TImage
          Left = 364
          Top = 167
          Width = 268
          Height = 130
          Center = True
        end
        object Label5: TLabel
          Left = 5
          Top = 150
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label8: TLabel
          Left = 363
          Top = 1
          Width = 59
          Height = 13
          Caption = 'Nascimento:'
        end
        object EdtCd_Funcionario: TCurrencyEdit
          Left = 5
          Top = 16
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
        object EdtNm_Funcionario: TLabeledEdit
          Left = 50
          Top = 16
          Width = 308
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Funcion'#225'rio:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 1
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNr_Telefone: TMaskEdit
          Left = 458
          Top = 16
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 3
        end
        object EdtNr_Celular: TMaskEdit
          Left = 548
          Top = 16
          Width = 81
          Height = 19
          AutoSize = False
          EditMask = '(##) #####-####;0; '
          MaxLength = 15
          TabOrder = 4
        end
        object EdtDs_Endereco: TLabeledEdit
          Left = 5
          Top = 54
          Width = 305
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 5
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_Complemento: TLabeledEdit
          Left = 341
          Top = 54
          Width = 207
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 6
        end
        object EdtNr_CEP: TMaskEdit
          Left = 553
          Top = 54
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
          Top = 91
          Width = 210
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 8
        end
        object EdtCd_Cidade: TCurrencyEdit
          Tag = 1
          Left = 219
          Top = 91
          Width = 60
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 9
          OnExit = EdtCd_CidadeExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Cidade: TEdit
          Left = 302
          Top = 91
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
          TabOrder = 10
        end
        object EdtDs_EMail: TLabeledEdit
          Left = 5
          Top = 128
          Width = 308
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 11
        end
        object MmObservacao: TMemo
          Left = 6
          Top = 165
          Width = 353
          Height = 135
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 12
        end
        object EdtDt_Nascimento: TDateEdit
          Left = 363
          Top = 16
          Width = 89
          Height = 19
          CheckOnExit = True
          DialogTitle = 'Selecione uma Data'
          GlyphKind = gkCustom
          Glyph.Data = {binary 1338 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          TabOrder = 2
        end
      end
      object TabSDocumento: TTabSheet
        Caption = '                                   Documentos / Comiss'#227'o                                   '
        ImageIndex = 1
        object Label2: TLabel
          Left = 5
          Top = 74
          Width = 23
          Height = 13
          Caption = 'CPF:'
        end
        object Label9: TLabel
          Left = 5
          Top = 37
          Width = 48
          Height = 13
          Caption = 'Admiss'#227'o:'
        end
        object Label11: TLabel
          Left = 99
          Top = 37
          Width = 65
          Height = 13
          Caption = 'Sal'#225'rio Inicial:'
        end
        object Label12: TLabel
          Left = 185
          Top = 37
          Width = 62
          Height = 13
          Caption = 'Sal'#225'rio Atual:'
        end
        object BvlAssinatura: TBevel
          Left = 5
          Top = 198
          Width = 196
          Height = 95
          Shape = bsFrame
        end
        object Label14: TLabel
          Left = 5
          Top = 183
          Width = 102
          Height = 13
          Caption = 'Assinatura (90 x 190):'
        end
        object ImgAssinatura: TImage
          Left = 7
          Top = 200
          Width = 190
          Height = 90
          Center = True
        end
        object Label13: TLabel
          Left = 237
          Top = 148
          Width = 48
          Height = 13
          Caption = 'Comiss'#227'o:'
        end
        object Label15: TLabel
          Left = 205
          Top = 183
          Width = 91
          Height = 13
          Caption = 'Faixa de Comiss'#227'o:'
        end
        object Label16: TLabel
          Left = 288
          Top = 148
          Width = 220
          Height = 13
          Caption = 'Fornecedor (para gera'#231#227'o do Contas '#224' Pagar):'
        end
        object SbEmitente: TSpeedButton
          Left = 338
          Top = 163
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
        object EdtNr_Documento: TEditMF
          Left = 5
          Top = 88
          Width = 83
          Height = 19
          AutoSize = False
          MaxLength = 18
          TabOrder = 5
          Kind = dkCPF
          Formated = True
          LockOnError = True
          Check = True
        end
        object EdtNr_Identidade: TLabeledEdit
          Left = 93
          Top = 88
          Width = 119
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 53
          EditLabel.Height = 13
          EditLabel.Caption = 'Identidade:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 6
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNm_Orgao_Emissor: TLabeledEdit
          Left = 217
          Top = 88
          Width = 59
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = #211'rg'#227'o Emissor:'
          LabelSpacing = 2
          MaxLength = 10
          TabOrder = 7
          OnChange = EdtNm_FuncionarioChange
        end
        object CbEstado_Emissor: TComboBox
          Left = 278
          Top = 88
          Width = 208
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 8
        end
        object EdtDs_Setor: TLabeledEdit
          Left = 5
          Top = 16
          Width = 210
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Setor:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 0
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtDs_Cargo: TLabeledEdit
          Left = 220
          Top = 16
          Width = 210
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = 'Cargo:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 1
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtDt_Admissao: TDateEdit
          Left = 5
          Top = 52
          Width = 89
          Height = 19
          CheckOnExit = True
          DialogTitle = 'Seleciona uma Data'
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          ButtonWidth = 16
          NumGlyphs = 1
          StartOfWeek = Sun
          TabOrder = 2
        end
        object EdtVl_Salario_Ini: TCurrencyEdit
          Left = 100
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 3
        end
        object EdtVl_Salario_Atual: TCurrencyEdit
          Left = 186
          Top = 52
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 4
        end
        object EdtNr_CTPS: TLabeledEdit
          Left = 5
          Top = 125
          Width = 145
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 99
          EditLabel.Height = 13
          EditLabel.Caption = 'Carteira de Trabalho:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 9
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNr_TituloEleitor: TLabeledEdit
          Left = 155
          Top = 125
          Width = 145
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = 'T'#237'tulo de Eleitor:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 10
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNr_PIS: TLabeledEdit
          Left = 305
          Top = 125
          Width = 145
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 66
          EditLabel.Height = 13
          EditLabel.Caption = 'PIS / PASEP:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 11
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNr_Habilitacao: TLabeledEdit
          Left = 455
          Top = 125
          Width = 145
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 110
          EditLabel.Height = 13
          EditLabel.Caption = 'Carteira de Habilita'#231#227'o:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 12
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtNr_Reservista: TLabeledEdit
          Left = 5
          Top = 163
          Width = 145
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 121
          EditLabel.Height = 13
          EditLabel.Caption = 'Certificado de Reservista:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 13
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtDs_Tipo_Sanguineo: TLabeledEdit
          Left = 155
          Top = 163
          Width = 60
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = 'Tipo Sanguineo:'
          LabelSpacing = 2
          MaxLength = 4
          TabOrder = 14
          OnChange = EdtNm_FuncionarioChange
        end
        object EdtPr_Comissao: TCurrencyEdit
          Left = 237
          Top = 163
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          TabOrder = 15
        end
        object DbGFaixa: TDBGrid
          Left = 205
          Top = 198
          Width = 399
          Height = 95
          DataSource = DsFaixa
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 18
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Cd_Faixa'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Faixa'
              Width = 335
              Visible = True
            end>
        end
        object PnlFaixa: TPanel
          Left = 609
          Top = 198
          Width = 26
          Height = 58
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 19
          object ActToolBFaixa: TActionToolBar
            Left = 0
            Top = 0
            Width = 26
            Height = 54
            Cursor = crHandPoint
            ActionManager = ActManCadastro
            Caption = 'ActToolBFaixa'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
        object EdtCd_Emitente: TCurrencyEdit
          Tag = 2
          Left = 288
          Top = 163
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 16
          OnExit = EdtCd_EmitenteExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Emitente: TEdit
          Left = 360
          Top = 163
          Width = 275
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
          TabOrder = 17
        end
      end
    end
    object SctReport: TSctReport
      Left = 371
      Top = 329
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
      TabOrder = 4
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 59
      SLeft = 80
      SWidth = 568
      SHeight = 292
      MTop = 329
      MLeft = 371
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
          DataSource = FrmFuncionario_Find.DsFind
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
        object adodsreportcd_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
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
        object TotalOfcd_funcionario: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_funcionarioVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
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
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DsFaixa
        end
        object adodsfaixaCd_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Funcionario'
          DataSource = DsFaixa
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfaixaCd_FaixaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Faixa'
          DataSource = DsFaixa
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfaixaDs_FaixaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Faixa'
          DataSource = DsFaixa
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
            Caption = 'Funcion'#225'rios'
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
            Variable = adodsreportcd_funcionarioVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 383
            Height = 17
            Variable = adodsreportnm_funcionarioVar
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
            TotalVariable = TotalOfcd_funcionario
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
            Caption = 'Nome do Funcion'#225'rio'
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
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  F.Cd_Funcionario, F.Nm_Funcionario, F.Nr_Documento,'#13#10'  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,'#13#10'  F.Nr_Telefone, F.Nr_Celular, F.Ds_Email, F.Ds_Setor, F.Ds_Cargo, F.Im_Foto,'#13#10'  F.Dt_Nascimento, F.Dt_Admissao, F.Ds_Tipo_Sanguineo, F.Nr_Identidade,'#13#10'  F.Nm_Orgao_Emissor, F.Sg_Estado_Emissor, F.Nr_CTPS, F.Nr_Titulo_Eleitor,'#13#10'  F.Nr_PIS, F.Nr_Habilitacao, F.Nr_Reservista, F.Vl_Salario_Ini,'#13#10'  F.Vl_Salario_Atual, F.Mm_Observacao, F.Pr_Comissao, F.Im_Assinatura,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  F.Sg_Estado_Emissor + '''' - '''' + E.Nm_Estado as Dp_Estado_Emissor,'#13#10'  F.Cd_Emitente, EM.Nm_Emitente'#13#10#13#10'from'#13#10'  Funcionario F'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado E'#13#10'on'#13#10'  E.Sg_Estado = F.Sg_Estado_Emissor'#13#10#13#10'left join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente = F.Cd_Emitente'#13#10#13#10'where'#13#10'  F.Cd_Funcionario = :Cd_Funcionario'
    Parameters = <
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 84
    Top = 358
    object ADODsDadoscd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsDadosnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 11
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
    object ADODsDadosds_setor: TStringField
      FieldName = 'ds_setor'
      Size = 30
    end
    object ADODsDadosds_cargo: TStringField
      FieldName = 'ds_cargo'
      Size = 30
    end
    object ADODsDadosim_foto: TBlobField
      FieldName = 'im_foto'
    end
    object ADODsDadosdt_nascimento: TDateTimeField
      FieldName = 'dt_nascimento'
    end
    object ADODsDadosdt_admissao: TDateTimeField
      FieldName = 'dt_admissao'
    end
    object ADODsDadosds_tipo_sanguineo: TStringField
      FieldName = 'ds_tipo_sanguineo'
      Size = 4
    end
    object ADODsDadosnr_identidade: TStringField
      FieldName = 'nr_identidade'
    end
    object ADODsDadosnm_orgao_emissor: TStringField
      FieldName = 'nm_orgao_emissor'
      Size = 10
    end
    object ADODsDadossg_estado_emissor: TStringField
      FieldName = 'sg_estado_emissor'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosnr_ctps: TStringField
      FieldName = 'nr_ctps'
    end
    object ADODsDadosnr_titulo_eleitor: TStringField
      FieldName = 'nr_titulo_eleitor'
    end
    object ADODsDadosnr_pis: TStringField
      FieldName = 'nr_pis'
    end
    object ADODsDadosnr_habilitacao: TStringField
      FieldName = 'nr_habilitacao'
    end
    object ADODsDadosnr_reservista: TStringField
      FieldName = 'nr_reservista'
    end
    object ADODsDadosvl_salario_ini: TBCDField
      FieldName = 'vl_salario_ini'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_salario_atual: TBCDField
      FieldName = 'vl_salario_atual'
      Precision = 12
      Size = 2
    end
    object ADODsDadosdp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsDadosdp_estado_emissor: TStringField
      FieldName = 'dp_estado_emissor'
      Size = 254
    end
    object ADODsDadospr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
    object ADODsDadosim_assinatura: TBlobField
      FieldName = 'im_assinatura'
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Funcionario( Cd_Funcionario, Nm_Funcionario, Nr_Documento,'
      '  Ds_Endereco, Nm_Bairro, Ds_Complemento, Cd_Cidade, Nr_Cep,'
      '  Nr_Telefone, Nr_Celular, Ds_Email, Ds_Setor, Ds_Cargo, Im_Foto,'
      '  Dt_Nascimento, Dt_Admissao, Ds_Tipo_Sanguineo, Nr_Identidade,'
      '  Nm_Orgao_Emissor, Sg_Estado_Emissor, Nr_CTPS, Nr_Titulo_Eleitor,'
      '  Nr_PIS, Nr_Habilitacao, Nr_Reservista, Vl_Salario_Ini,'
      '  Vl_Salario_Atual, Mm_Observacao, Pr_Comissao, Im_Assinatura, Cd_Emitente )'
      'values( :Cd_Funcionario, :Nm_Funcionario, :Nr_Documento,'
      '  :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Cd_Cidade, :Nr_Cep,'
      '  :Nr_Telefone, :Nr_Celular, :Ds_Email, :Ds_Setor, :Ds_Cargo, :Im_Foto,'
      '  :Dt_Nascimento, :Dt_Admissao, :Ds_Tipo_Sanguineo, :Nr_Identidade,'
      '  :Nm_Orgao_Emissor, :Sg_Estado_Emissor, :Nr_CTPS, :Nr_Titulo_Eleitor,'
      '  :Nr_PIS, :Nr_Habilitacao, :Nr_Reservista, :Vl_Salario_Ini,'
      '  :Vl_Salario_Atual, :Mm_Observacao, :Pr_Comissao, :Im_Assinatura, :Cd_Emitente )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Funcionario'
      ''
      'set'
      '  Nm_Funcionario    = :Nm_Funcionario,'
      '  Nr_Documento      = :Nr_Documento,'
      '  Ds_Endereco       = :Ds_Endereco,'
      '  Nm_Bairro         = :Nm_Bairro,'
      '  Ds_Complemento    = :Ds_Complemento,'
      '  Cd_Cidade         = :Cd_Cidade,'
      '  Nr_Cep            = :Nr_Cep,'
      '  Nr_Telefone       = :Nr_Telefone,'
      '  Nr_Celular        = :Nr_Celular,'
      '  Ds_Email          = :Ds_Email,'
      '  Pr_Comissao       = :Pr_Comissao,'
      '  Ds_Setor          = :Ds_Setor,'
      '  Ds_Cargo          = :Ds_Cargo,'
      '  Im_Foto           = :Im_Foto,'
      '  Dt_Nascimento     = :Dt_Nascimento,'
      '  Dt_Admissao       = :Dt_Admissao,'
      '  Ds_Tipo_Sanguineo = :Ds_Tipo_Sanguineo,'
      '  Nr_Identidade     = :Nr_Identidade,'
      '  Nm_Orgao_Emissor  = :Nm_Orgao_Emissor,'
      '  Sg_Estado_Emissor = :Sg_Estado_Emissor,'
      '  Nr_CTPS           = :Nr_CTPS,'
      '  Nr_Titulo_Eleitor = :Nr_Titulo_Eleitor,'
      '  Nr_PIS            = :Nr_PIS,'
      '  Nr_Habilitacao    = :Nr_Habilitacao,'
      '  Nr_Reservista     = :Nr_Reservista,'
      '  Vl_Salario_Ini    = :Vl_Salario_Ini,'
      '  Vl_Salario_Atual  = :Vl_Salario_Atual,'
      '  Im_Assinatura     = :Im_Assinatura,'
      '  Mm_Observacao     = :Mm_Observacao,'
      '  Cd_Emitente       = :Cd_Emitente'
      ''
      'where'
      '  Cd_Funcionario    = :Cd_Funcionario'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Funcionario'
      ''
      'where'
      '  Cd_Funcionario = :Cd_Funcionario'
    )
    SQLOther0.Strings = (
      '-------------------- Incluir Faixa'
      'declare'
      '  @Cd_Funcionario SmallInt,'
      '  @Cd_Faixa SmallInt'
      ''
      'select'
      '  @Cd_Funcionario = :Cd_Funcionario,'
      '  @Cd_Faixa       = :Cd_Faixa'
      ''
      'if not Exists('
      '   select'
      '     Cd_Faixa'
      ''
      '   from'
      '     Funcionario_Faixa'
      ''
      '   where'
      '     Cd_Funcionario = @Cd_Funcionario and'
      '     Cd_Faixa       = @Cd_Faixa'
      '   )'
      '  insert into Funcionario_Faixa( Cd_Funcionario, Cd_Faixa )'
      '  values( @Cd_Funcionario, @Cd_Faixa )'
    )
    SQLOther1.Strings = (
      '-------------------- Excluir faixa'
      'delete from'
      '  Funcionario_Faixa'
      ''
      'where'
      '  Cd_Funcionario = :Cd_Funcionario and'
      '  Cd_Faixa       = :Cd_Faixa'
    )
    Left = 114
    Top = 358
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 24
    Top = 358
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  F.Cd_Funcionario, F.Nm_Funcionario, F.Nr_Documento,'#13#10'  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,'#13#10'  F.Nr_Telefone, F.Nr_Celular, F.Ds_Email, F.Ds_Setor, F.Ds_Cargo, F.Im_Foto,'#13#10'  F.Dt_Nascimento, F.Dt_Admissao, F.Ds_Tipo_Sanguineo, F.Nr_Identidade,'#13#10'  F.Nm_Orgao_Emissor, F.Sg_Estado_Emissor, F.Nr_CTPS, F.Nr_Titulo_Eleitor,'#13#10'  F.Nr_PIS, F.Nr_Habilitacao, F.Nr_Reservista, F.Vl_Salario_Ini,'#13#10'  F.Vl_Salario_Atual, F.Mm_Observacao, F.Im_Assinatura,'#13#10'  F.Cd_Emitente, E.Nm_Emitente'#13#10#13#10'from'#13#10'  Funcionario F'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = F.Cd_Emitente'#13#10#13#10'order by'#13#10'  F.Nm_Funcionario'
    Parameters = <>
    Left = 54
    Top = 358
    object ADODsReportcd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsReportnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsReportnr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 11
    end
    object ADODsReportds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsReportnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsReportds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsReportcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsReportnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
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
    object ADODsReportds_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsReportds_setor: TStringField
      FieldName = 'ds_setor'
      Size = 30
    end
    object ADODsReportds_cargo: TStringField
      FieldName = 'ds_cargo'
      Size = 30
    end
    object ADODsReportim_foto: TBlobField
      FieldName = 'im_foto'
    end
    object ADODsReportdt_nascimento: TDateTimeField
      FieldName = 'dt_nascimento'
    end
    object ADODsReportdt_admissao: TDateTimeField
      FieldName = 'dt_admissao'
    end
    object ADODsReportds_tipo_sanguineo: TStringField
      FieldName = 'ds_tipo_sanguineo'
      Size = 4
    end
    object ADODsReportnr_identidade: TStringField
      FieldName = 'nr_identidade'
    end
    object ADODsReportnm_orgao_emissor: TStringField
      FieldName = 'nm_orgao_emissor'
      Size = 10
    end
    object ADODsReportsg_estado_emissor: TStringField
      FieldName = 'sg_estado_emissor'
      FixedChar = True
      Size = 2
    end
    object ADODsReportnr_ctps: TStringField
      FieldName = 'nr_ctps'
    end
    object ADODsReportnr_titulo_eleitor: TStringField
      FieldName = 'nr_titulo_eleitor'
    end
    object ADODsReportnr_pis: TStringField
      FieldName = 'nr_pis'
    end
    object ADODsReportnr_habilitacao: TStringField
      FieldName = 'nr_habilitacao'
    end
    object ADODsReportnr_reservista: TStringField
      FieldName = 'nr_reservista'
    end
    object ADODsReportvl_salario_ini: TBCDField
      FieldName = 'vl_salario_ini'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_salario_atual: TBCDField
      FieldName = 'vl_salario_atual'
      Precision = 12
      Size = 2
    end
    object ADODsReportim_assinatura: TBlobField
      FieldName = 'im_assinatura'
    end
    object ADODsReportMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
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
          end
          item
            Action = ActFaixaProd
            ImageIndex = 26
            ShortCut = 118
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActFaixaIns
            ImageIndex = 16
          end
          item
            Action = ActFaixaDel
            ImageIndex = 19
          end>
        ActionBar = ActToolBFaixa
      end>
    Images = FrmMain.ImgLstMenu
    Left = 639
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
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
    object ActFaixaIns: TAction
      Category = '4-Faixa'
      Hint = 'Incluir faixa'
      ImageIndex = 16
      OnExecute = ActFaixaInsExecute
    end
    object ActFaixaDel: TAction
      Category = '4-Faixa'
      Hint = 'Excluir faixa'
      ImageIndex = 19
      OnExecute = ActFaixaDelExecute
    end
    object ActFaixaProd: TAction
      Category = '2-Database'
      Hint = 'Comiss'#227'o por Produto'
      ImageIndex = 26
      ShortCut = 118
      OnExecute = ActFaixaProdExecute
    end
  end
  object DsFaixa: TDataSource
    DataSet = ADODsFaixa
    Left = 145
    Top = 359
  end
  object ADODsFaixa: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  FF.Cd_Funcionario, FF.Cd_Faixa, CF.Ds_Faixa'#13#10#13#10'from'#13#10'  Funcionario_Faixa FF'#13#10#13#10'inner join'#13#10'  Comissao_Faixa CF'#13#10'on'#13#10'  CF.Cd_Faixa = FF.Cd_Faixa'#13#10#13#10'where'#13#10'  FF.Cd_Funcionario = :Cd_Funcionario'
    Parameters = <
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 175
    Top = 358
    object ADODsFaixaCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsFaixaCd_Faixa: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Faixa'
    end
    object ADODsFaixaDs_Faixa: TStringField
      DisplayLabel = 'Descri'#231#227'o da Faixa'
      FieldName = 'Ds_Faixa'
      Size = 50
    end
  end
end
