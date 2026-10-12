object FrmEmitente: TFrmEmitente
  Left = 352
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Emitente (Clientes / Fornecedores)'
  ClientHeight = 594
  ClientWidth = 991
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
    Height = 594
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 970
    Height = 594
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 564
      Width = 965
      Height = 5
      Shape = bsTopLine
    end
    object LblEmitente: TLabel
      Left = 5
      Top = 570
      Width = 67
      Height = 13
      Caption = 'LblEmitente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 968
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 968
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 968
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
      Left = 797
      Top = 567
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 883
      Top = 567
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCEmitente: TPageControl
      Left = 0
      Top = 25
      Width = 965
      Height = 537
      ActivePage = TabSPF
      Images = FrmMain.ImgLstMenu
      TabOrder = 3
      OnChange = PgCEmitenteChange
      object TabSEmitente: TTabSheet
        Caption = '     Emitente     '
        ImageIndex = 41
        object Label1: TLabel
          Left = 2
          Top = 1
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label4: TLabel
          Left = 93
          Top = 221
          Width = 54
          Height = 13
          Caption = 'Telefone 2:'
        end
        object Label3: TLabel
          Left = 363
          Top = 221
          Width = 44
          Height = 13
          Caption = 'Celular 1:'
        end
        object SbCEPEndereco: TSpeedButton
          Tag = 2
          Left = 434
          Top = 162
          Width = 21
          Height = 19
          Hint = 'Selecionar o Endere'#231'o a partir do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCEPClick
        end
        object Label7: TLabel
          Left = 218
          Top = 185
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object SbCEP: TSpeedButton
          Tag = 1
          Left = 279
          Top = 199
          Width = 23
          Height = 19
          Hint = 'Consulta do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCEPClick
        end
        object Label6: TLabel
          Left = 307
          Top = 183
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object SbCidade: TSpeedButton
          Tag = 1
          Left = 357
          Top = 199
          Width = 23
          Height = 19
          Hint = 'Consulta de Cidades'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCidadeClick
        end
        object Label2: TLabel
          Left = 56
          Top = 3
          Width = 61
          Height = 13
          Caption = 'CNPJ / CPF:'
        end
        object Label5: TLabel
          Left = 2
          Top = 221
          Width = 54
          Height = 13
          Caption = 'Telefone 1:'
        end
        object Label9: TLabel
          Left = 183
          Top = 221
          Width = 54
          Height = 13
          Caption = 'Telefone 3:'
        end
        object Label10: TLabel
          Left = 453
          Top = 221
          Width = 44
          Height = 13
          Caption = 'Celular 2:'
        end
        object Label11: TLabel
          Left = 273
          Top = 221
          Width = 23
          Height = 13
          Caption = 'FAX:'
        end
        object Label12: TLabel
          Left = 2
          Top = 38
          Width = 38
          Height = 13
          Caption = 'Pessoa:'
        end
        object Label15: TLabel
          Left = 314
          Top = 38
          Width = 59
          Height = 13
          Caption = 'Contribuinte:'
        end
        object Label16: TLabel
          Left = 506
          Top = 38
          Width = 54
          Height = 13
          Caption = 'Exportador:'
        end
        object Label17: TLabel
          Left = 2
          Top = 112
          Width = 99
          Height = 13
          Caption = 'Endere'#231'o do Cliente:'
        end
        object Label18: TLabel
          Left = 315
          Top = 112
          Width = 113
          Height = 13
          Caption = 'Endere'#231'o de Cobran'#231'a:'
        end
        object Label19: TLabel
          Left = 2
          Top = 75
          Width = 91
          Height = 13
          Caption = 'Grupo de Emitente:'
        end
        object SbGrupo: TSpeedButton
          Left = 42
          Top = 89
          Width = 23
          Height = 19
          Hint = 'Consulta Grupo de Emitente'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbGrupoClick
        end
        object Label20: TLabel
          Left = 373
          Top = 75
          Width = 110
          Height = 13
          Caption = 'SubGrupo de Emitente:'
        end
        object SbSubGrupo: TSpeedButton
          Left = 413
          Top = 89
          Width = 23
          Height = 19
          Hint = 'Consulta SubGrupo de Emitente'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbSubGrupoClick
        end
        object Label64: TLabel
          Left = 2
          Top = 256
          Width = 130
          Height = 13
          Caption = 'Observa'#231#245'es do Endere'#231'o:'
        end
        object Label65: TLabel
          Left = 480
          Top = 256
          Width = 125
          Height = 13
          Caption = 'Observa'#231#245'es do Emitente:'
        end
        object Label73: TLabel
          Left = 72
          Top = 38
          Width = 90
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object SbCNPJFind: TSpeedButton
          Left = 182
          Top = 16
          Width = 23
          Height = 19
          Hint = 'Consulta por CNPJ'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCNPJFindClick
        end
        object Label77: TLabel
          Left = 422
          Top = 38
          Width = 83
          Height = 13
          Caption = 'Consumidor Final:'
        end
        object EdtCd_Emitente: TCurrencyEdit
          Left = 2
          Top = 16
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Color = clSilver
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdtNm_Emitente: TLabeledEdit
          Left = 208
          Top = 16
          Width = 450
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 90
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Emitente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          LabelSpacing = 2
          MaxLength = 50
          ParentFont = False
          TabOrder = 2
          OnChange = EdtNm_EmitenteChange
          OnKeyDown = EdtNm_EmitenteKeyDown
        end
        object EdtNr_Telefone_2: TMaskEdit
          Left = 93
          Top = 236
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 28
        end
        object EdtNr_Celular_1: TMaskEdit
          Left = 363
          Top = 236
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) #####-####;0; '
          MaxLength = 15
          TabOrder = 31
          Text = '27988224823'
        end
        object EdtDs_Endereco: TLabeledEdit
          Left = 127
          Top = 162
          Width = 305
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 20
          OnChange = EdtDs_EnderecoChange
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtDs_Complemento: TLabeledEdit
          Left = 532
          Top = 162
          Width = 169
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 22
          OnChange = EdtDs_ComplementoChange
        end
        object EdtNr_CEP: TMaskEdit
          Left = 218
          Top = 199
          Width = 60
          Height = 19
          AutoSize = False
          EditMask = '##.###-###;0; '
          MaxLength = 10
          TabOrder = 24
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Bairro: TLabeledEdit
          Left = 2
          Top = 199
          Width = 212
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 23
          OnChange = EdtNm_BairroChange
        end
        object EdtCd_Cidade: TCurrencyEdit
          Tag = 3
          Left = 307
          Top = 199
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 25
          OnExit = EdtCd_CidadeExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Cidade: TEdit
          Left = 380
          Top = 199
          Width = 323
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 26
          OnKeyDown = EdtNm_CidadeKeyDown
        end
        object EdtDs_EMail: TLabeledEdit
          Left = 357
          Top = 486
          Width = 598
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail:'
          LabelSpacing = 0
          MaxLength = 150
          TabOrder = 36
        end
        object EdtDs_Site: TLabeledEdit
          Left = 2
          Top = 486
          Width = 352
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 21
          EditLabel.Height = 13
          EditLabel.Caption = 'Site:'
          LabelSpacing = 0
          MaxLength = 50
          TabOrder = 35
        end
        object EdtNr_Documento: TEditMF
          Left = 56
          Top = 16
          Width = 125
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 1
          OnChange = EdtNr_DocumentoChange
          OnEnter = EdtNr_DocumentoEnter
          OnExit = EdtNr_DocumentoExit
          Kind = dkBoth
          Formated = True
          LockOnError = True
          Check = True
        end
        object EdtNr_Telefone_1: TMaskEdit
          Left = 2
          Top = 236
          Width = 81
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 27
        end
        object EdtNr_Telefone_3: TMaskEdit
          Left = 183
          Top = 236
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 29
        end
        object EdtNr_Celular_2: TMaskEdit
          Left = 453
          Top = 236
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) #####-####;0; '
          MaxLength = 15
          TabOrder = 32
        end
        object EdtNr_FAX: TMaskEdit
          Left = 273
          Top = 236
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 30
        end
        object EdtNm_Fantasia: TLabeledEdit
          Left = 661
          Top = 16
          Width = 268
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 120
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome Fantasia / Apelido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          LabelSpacing = 2
          MaxLength = 30
          ParentFont = False
          TabOrder = 3
          OnChange = EdtNm_EmitenteChange
        end
        object CbTpPessoa: TComboBox
          Left = 2
          Top = 53
          Width = 65
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 4
          Text = 'F'#237'sica'
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica'
          )
        end
        object CbContribuinte: TComboBox
          Left = 314
          Top = 53
          Width = 107
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 7
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'Isento'
            'N'#227'o Contribuinte'
          )
        end
        object CbExportador: TComboBox
          Left = 506
          Top = 53
          Width = 60
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 9
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbEndereco: TComboBox
          Left = 2
          Top = 126
          Width = 308
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 17
          OnChange = CbEnderecoChange
        end
        object CbCobranca: TComboBox
          Left = 315
          Top = 126
          Width = 308
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 18
        end
        object EdtDs_Titulo: TLabeledEdit
          Left = 2
          Top = 162
          Width = 122
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 88
          EditLabel.Height = 13
          EditLabel.Caption = 'Tipo do Endere'#231'o:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 19
        end
        object EdtCd_Usuario: TLabeledEdit
          Left = 567
          Top = 53
          Width = 110
          Height = 19
          TabStop = False
          AutoSelect = False
          AutoSize = False
          Color = clSilver
          EditLabel.Width = 39
          EditLabel.Height = 13
          EditLabel.Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          LabelSpacing = 2
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object EdtDt_Cadastro: TLabeledEdit
          Left = 680
          Top = 53
          Width = 110
          Height = 19
          TabStop = False
          AutoSelect = False
          AutoSize = False
          Color = clSilver
          EditLabel.Width = 62
          EditLabel.Height = 13
          EditLabel.Caption = 'Cadastro em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          LabelSpacing = 2
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '20/20/2020 20:20'
        end
        object EdtDt_Alteracao: TLabeledEdit
          Left = 792
          Top = 53
          Width = 110
          Height = 19
          TabStop = False
          AutoSelect = False
          AutoSize = False
          Color = clSilver
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.Caption = 'Alterado em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          LabelSpacing = 2
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object EdtCd_Grupo: TCurrencyEdit
          Tag = 1
          Left = 2
          Top = 89
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 13
          OnExit = EdtCd_GrupoExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Grupo: TEdit
          Left = 65
          Top = 89
          Width = 305
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object EdtCd_SubGrupo: TCurrencyEdit
          Tag = 2
          Left = 373
          Top = 89
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 15
          OnExit = EdtCd_SubGrupoExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_SubGrupo: TEdit
          Left = 436
          Top = 89
          Width = 305
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object MmAux: TMemo
          Left = 806
          Top = -1
          Width = 16
          Height = 18
          Lines.Strings = (
            'M'
            'm'
            'A'
            'ux'
          )
          TabOrder = 37
          Visible = False
        end
        object MmObsEndereco: TMemo
          Left = 2
          Top = 270
          Width = 473
          Height = 201
          ScrollBars = ssVertical
          TabOrder = 33
        end
        object MmObservacaoII: TMemo
          Left = 480
          Top = 270
          Width = 473
          Height = 201
          ScrollBars = ssVertical
          TabOrder = 34
          OnChange = MmObservacaoIIChange
        end
        object EdtNr_InscMunicipal: TLabeledEdit
          Left = 196
          Top = 53
          Width = 116
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Municipal:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 6
        end
        object EdtDs_Numero: TLabeledEdit
          Left = 458
          Top = 162
          Width = 70
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 40
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero:'
          LabelSpacing = 2
          MaxLength = 10
          TabOrder = 21
        end
        object CbInscEstadual: TComboBox
          Left = 71
          Top = 53
          Width = 123
          Height = 21
          ItemHeight = 13
          TabOrder = 5
          Items.Strings = (
            'Isento'
          )
        end
        object CbConFinal: TComboBox
          Left = 422
          Top = 53
          Width = 60
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 8
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object SctRepEnvelope: TSctReport
          Left = 561
          Top = 220
          Width = 82
          Height = 44
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          TabOrder = 38
          Visible = False
          Minimized = True
          Prompt = True
          AutoRun = False
          SuppressStatus = False
          PixelsPerInch = 96
          STop = 21
          SLeft = 3
          SWidth = 953
          SHeight = 441
          MTop = 220
          MLeft = 561
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
            PageSetup.Size = psCustom
            PageSetup.Height = 25.0
            PageSetup.Width = 17.5
            PageSetup.Units = unitCentiMeters
            PageSetup.LeftMargin = 1.27
            PageSetup.RightMargin = 0.27
            PageSetup.TopMargin = 1.27
            PageSetup.BottomMargin = 1.27
            BorderType = btNone
            Description = 'Envelope'
            CloseDataSet = False
            DataRange = drAllRecords
            OmitLastPgFt = False
            Head = ReportHeaderBand
            Detail = DetailBand
            Foot = ReportFooterBand
            PageHead = PageHeaderBand
            PageFoot = PageFooterBand
            DataSource = DsDados
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
              Top = 24
              Width = 0
              Height = 0
              UpdateLevel = ReportHeaderBandlevel
              AutoVar = True
              ID = vidDateTimeVar
            end
            object svarPage: TSctPageVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              UpdateLevel = PageHeaderBandlevel
              AutoVar = True
              ID = vidPageVar
            end
            object DataSourceGuide: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DsEndereco
            end
            object DataSourceGuide1: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DsAgenda
            end
            object DataSourceGuide2: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = True
              UpdateLevel = DetailBandlevel
              DataSource = DsContato
            end
            object DataSourceGuide3: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DsDuplicata
            end
            object DataSourceGuide4: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DsDados
            end
            object DataSourceGuide5: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DmMaster.DsUsuario
            end
            object DataSourceGuide6: TSctDataSourceGuide
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DmMaster.DsFilial
            end
            object adodsdadosnm_emitenteVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nm_emitente'
              DataSource = DsDados
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsdadosnr_documentoVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nr_documento'
              DataSource = DsDados
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsenderecods_enderecoVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'ds_endereco'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsendereconm_bairroVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nm_bairro'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsenderecods_complementoVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'ds_complemento'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsenderecodp_cidadeVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'dp_cidade'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsendereconr_cepVar: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nr_cep'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsendereconr_telefone_1Var: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nr_telefone_1'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsendereconr_telefone_2Var: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nr_telefone_2'
              DataSource = DsEndereco
              UpdateLevel = DetailBandlevel
              AutoVar = False
              ID = vidAutoDataVar
            end
            object adodsendereconr_telefone_3Var: TSctDBVar
              Left = 0
              Top = 24
              Width = 0
              Height = 0
              DataField = 'nr_telefone_3'
              DataSource = DsEndereco
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
            object DataSourceGuide9: TSctDataSourceGuide
              Left = 0
              Top = 0
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmFuncionario_Find.DsFind
            end
            object DataSourceGuide10: TSctDataSourceGuide
              Left = 0
              Top = 88
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmCidade_Find.DsFind
            end
            object DataSourceGuide11: TSctDataSourceGuide
              Left = 0
              Top = 88
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmCEP.DsLogradouro
            end
            object DataSourceGuide12: TSctDataSourceGuide
              Left = 0
              Top = 88
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmCEP.DsCEP
            end
            object DataSourceGuide13: TSctDataSourceGuide
              Left = 0
              Top = 88
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmCEP.DsBairro
            end
            object DataSourceGuide14: TSctDataSourceGuide
              Left = 0
              Top = 87
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmPortador_Find.DsFind
            end
            object OverlayBandLevel: TSctLevel
              Left = 0
              Top = 104
              Width = 0
              Height = 0
            end
            object DataSourceGuide15: TSctDataSourceGuide
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DsCredito
            end
            object DataSourceGuide16: TSctDataSourceGuide
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DmMaster.DsConexao
            end
            object DataSourceGuide17: TSctDataSourceGuide
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmReceber.DsParcela
            end
            object DataSourceGuide18: TSctDataSourceGuide
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = FrmReceber.DsHistorico
            end
            object DataSourceGuide19: TSctDataSourceGuide
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              CreateVariables = False
              UpdateLevel = DetailBandlevel
              DataSource = DmMaster.DsConecadoMes
            end
            object adodscontatoCd_EmitenteVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Cd_Emitente'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNr_ContatoVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nr_Contato'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNm_ContatoVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nm_Contato'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoDt_NascimentoVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Dt_Nascimento'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoDs_CargoVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Ds_Cargo'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoDs_EMailVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Ds_EMail'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNr_TelefoneVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nr_Telefone'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNr_RamalVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nr_Ramal'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNr_CelularVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nr_Celular'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object adodscontatoNr_FaxVar: TSctDBVar
              Left = 0
              Top = 262
              Width = 0
              Height = 0
              DataField = 'Nr_Fax'
              DataSource = DsContato
              UpdateLevel = DetailBandlevel
              AutoVar = True
              ID = vidAutoDataVar
            end
            object ReportHeaderBand: TSctBand
              Left = 0
              Top = 0
              Width = 653
              Height = 5
              ParentColor = True
              BandName = 'Report Header'
              Updatelevel = ReportHeaderBandlevel
              Visible = False
            end
            object PageHeaderBand: TSctBand
              Left = 0
              Top = 20
              Width = 653
              Height = 134
              ParentColor = True
              BandName = 'Page Header'
              Updatelevel = PageHeaderBandlevel
              object SctImageLabel1: TSctImageLabel
                Left = 3
                Top = 2
                Width = 231
                Height = 102
                Picture.Data = {binary 8703 bytes}
                Stretch = True
              end
              object SctShape2: TSctShape
                Left = 597
                Top = 1
                Width = 9
                Height = 9
              end
            end
            object DetailBand: TSctBand
              Left = 0
              Top = 169
              Width = 653
              Height = 86
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              BandName = 'Detail'
              Updatelevel = DetailBandlevel
              Stretch = True
              object Sctvarlabel3: TSctvarlabel
                Left = 6
                Top = 6
                Width = 601
                Height = 35
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                AlignHorizontal = laCenter
                Caption = 'DESTINAT'#193'RIO'
              end
              object Sctvarlabel4: TSctvarlabel
                Left = 6
                Top = 41
                Width = 601
                Height = 20
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                AlignHorizontal = laCenter
                Variable = adodsdadosnm_emitenteVar
              end
              object SctVarEndereco: TSctvarlabel
                Left = 6
                Top = 61
                Width = 601
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                AlignHorizontal = laCenter
                WrapText = True
                Stretch = True
              end
            end
            object PageFooterBand: TSctBand
              Left = 0
              Top = 270
              Width = 653
              Height = 54
              ParentColor = True
              BandName = 'Page Footer'
              Updatelevel = PageFooterBandlevel
              object Sctvarlabel1: TSctvarlabel
                Left = 3
                Top = 3
                Width = 601
                Height = 35
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                AlignHorizontal = laCenter
                WrapText = True
                Stretch = True
                Lines.Strings = (
                  'Av. Santa Leopoldina, N'#186' 2711 Loja 8 '#8211' Ed. Royal Center '#8211' Praia de Itaparica'
                  'CEP 29102-040     Vila Velha '#8211' ES   Tel.: (27) 3329-6783'
                )
              end
              object SctLine1: TSctLine
                Left = -1
                Top = 1
                Width = 601
                Height = 6
                AlignVertical = laTop
              end
              object Sctvarlabel2: TSctvarlabel
                Left = 69
                Top = 34
                Width = 149
                Height = 17
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                AlignHorizontal = laCenter
                Caption = 'www.multforma.com.br'
              end
              object Sctvarlabel5: TSctvarlabel
                Left = 320
                Top = 34
                Width = 178
                Height = 17
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Caption = 'multforma@multforma.com.br'
              end
              object SctShape1: TSctShape
                Left = 597
                Top = 49
                Width = 9
                Height = 5
              end
              object SctShape3: TSctShape
                Left = 1
                Top = 49
                Width = 9
                Height = 5
              end
            end
            object ReportFooterBand: TSctBand
              Left = 0
              Top = 339
              Width = 653
              Height = 12
              ParentColor = True
              BandName = 'Report Footer'
              Updatelevel = ReportFooterBandlevel
              Visible = False
            end
            object OvlBdFragil: TSctOverlayBand
              Left = 0
              Top = 366
              Width = 653
              Height = 4
              ParentColor = True
              BandName = 'OvlBdFragil'
              Updatelevel = OverlayBandLevel
              Visible = False
            end
          end
        end
      end
      object TabSPF: TTabSheet
        Caption = '   Pessoa F'#237'sica   '
        ImageIndex = 54
        object Label35: TLabel
          Left = 5
          Top = 2
          Width = 59
          Height = 13
          Caption = 'Nascimento:'
          Transparent = True
        end
        object Label36: TLabel
          Left = 525
          Top = 2
          Width = 83
          Height = 13
          Caption = 'Data de Emiss'#227'o:'
          Transparent = True
        end
        object Label37: TLabel
          Left = 5
          Top = 85
          Width = 88
          Height = 13
          Caption = 'Grau de Instru'#231#227'o:'
          Transparent = True
        end
        object Label38: TLabel
          Left = 153
          Top = 85
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Transparent = True
        end
        object Label39: TLabel
          Left = 5
          Top = 125
          Width = 58
          Height = 13
          Caption = 'Estado Civil:'
          Transparent = True
        end
        object Label40: TLabel
          Left = 467
          Top = 122
          Width = 59
          Height = 13
          Caption = 'Nascimento:'
          Transparent = True
        end
        object EdtDt_Nascimento: TDateEdit
          Left = 5
          Top = 19
          Width = 89
          Height = 19
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          YearDigits = dyFour
          TabOrder = 0
        end
        object EdtNr_Identidade: TLabeledEdit
          Left = 97
          Top = 19
          Width = 150
          Height = 19
          EditLabel.Width = 53
          EditLabel.Height = 13
          EditLabel.Caption = 'Identidade:'
          EditLabel.Transparent = True
          MaxLength = 20
          TabOrder = 1
        end
        object EdtDt_Emissao_ID: TDateEdit
          Left = 527
          Top = 19
          Width = 89
          Height = 19
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          YearDigits = dyFour
          TabOrder = 4
        end
        object EdtNm_Pai: TLabeledEdit
          Left = 5
          Top = 59
          Width = 308
          Height = 19
          EditLabel.Width = 18
          EditLabel.Height = 13
          EditLabel.Caption = 'Pai:'
          EditLabel.Transparent = True
          MaxLength = 50
          TabOrder = 5
        end
        object EdtNm_Mae: TLabeledEdit
          Left = 318
          Top = 59
          Width = 308
          Height = 19
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'M'#227'e:'
          EditLabel.Transparent = True
          MaxLength = 50
          TabOrder = 6
        end
        object CbGrauInstrucao: TComboBox
          Left = 5
          Top = 100
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 7
          Items.Strings = (
            'Analfabeto'
            'Primario'
            'Secund'#225'rio'
            'P'#243's-m'#233'dio'
            'Superior'
          )
        end
        object CbSituacaoInstrucao: TComboBox
          Left = 153
          Top = 100
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 8
          Items.Strings = (
            'Completo'
            'Incompleto'
          )
        end
        object EdtDs_Naturalidade: TLabeledEdit
          Left = 303
          Top = 99
          Width = 228
          Height = 19
          EditLabel.Width = 63
          EditLabel.Height = 13
          EditLabel.Caption = 'Naturalidade:'
          EditLabel.Transparent = True
          MaxLength = 30
          TabOrder = 9
        end
        object CbEstadoCivil: TComboBox
          Left = 5
          Top = 140
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 10
          Items.Strings = (
            'Solteiro'
            'Casado'
            'Desquitado'
            'Divorciado'
            'Vi'#250'vo'
            'Outros'
          )
        end
        object EdtNm_Conjuge: TLabeledEdit
          Left = 155
          Top = 139
          Width = 308
          Height = 19
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Conjuge:'
          EditLabel.Transparent = True
          MaxLength = 50
          TabOrder = 11
        end
        object EdtDt_NascConjuge: TDateEdit
          Left = 467
          Top = 139
          Width = 89
          Height = 19
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          YearDigits = dyFour
          TabOrder = 12
        end
        object EdtNm_Orgao_Emissor: TLabeledEdit
          Left = 252
          Top = 19
          Width = 59
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = #211'rg'#227'o Emissor:'
          LabelSpacing = 2
          MaxLength = 10
          TabOrder = 2
        end
        object CbEstado_Emissor: TComboBox
          Left = 313
          Top = 19
          Width = 208
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
        end
      end
      object TabSObservacao: TTabSheet
        Caption = '  Cr'#233'dito/Observa'#231#245'es  '
        ImageIndex = 8
        object Label8: TLabel
          Left = 4
          Top = 331
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label14: TLabel
          Left = 4
          Top = 147
          Width = 227
          Height = 13
          Caption = 'Restri'#231#245'es de Cr'#233'dito / Informa'#231#245'es de Vendas:'
        end
        object Label21: TLabel
          Left = 5
          Top = 2
          Width = 139
          Height = 13
          Caption = 'Conv'#234'nio / Titular de Cr'#233'dito:'
        end
        object SbCredito: TSpeedButton
          Left = 56
          Top = 18
          Width = 23
          Height = 19
          Hint = 'Consulta Conv'#234'nio'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCreditoClick
        end
        object Label13: TLabel
          Left = 390
          Top = 3
          Width = 81
          Height = 13
          Caption = 'Limite de Cr'#233'dito:'
        end
        object Label22: TLabel
          Left = 5
          Top = 74
          Width = 80
          Height = 13
          Caption = 'Portador Padr'#227'o:'
        end
        object SbPortador: TSpeedButton
          Left = 45
          Top = 90
          Width = 23
          Height = 19
          Hint = 'Consulta Portador'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object Label54: TLabel
          Left = 381
          Top = 74
          Width = 99
          Height = 13
          Caption = 'Dia para pagamento:'
        end
        object Label55: TLabel
          Left = 555
          Top = 73
          Width = 45
          Height = 13
          Caption = 'Dia " X ":'
        end
        object Label63: TLabel
          Left = 5
          Top = 112
          Width = 86
          Height = 13
          Caption = 'Vendedor Padr'#227'o:'
        end
        object SbFuncionario: TSpeedButton
          Left = 45
          Top = 127
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
        object Label66: TLabel
          Left = 382
          Top = 112
          Width = 198
          Height = 13
          Caption = 'Data de Inicio das Atividades (Funda'#231#227'o):'
        end
        object Label69: TLabel
          Left = 480
          Top = 331
          Width = 185
          Height = 13
          Caption = 'Observa'#231#245'es para Nota Fiscal (Fatura):'
        end
        object Label71: TLabel
          Left = 473
          Top = 3
          Width = 49
          Height = 13
          Caption = 'Desconto:'
        end
        object MmObservacao: TMemo
          Left = 4
          Top = 345
          Width = 473
          Height = 161
          ScrollBars = ssVertical
          TabOrder = 14
          OnChange = MmObservacaoChange
        end
        object MmRestricao: TMemo
          Left = 4
          Top = 161
          Width = 950
          Height = 168
          ScrollBars = ssVertical
          TabOrder = 13
        end
        object EdtCd_Credito: TCurrencyEdit
          Tag = 4
          Left = 5
          Top = 18
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          OnExit = EdtCd_CreditoExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Credito: TEdit
          Left = 79
          Top = 18
          Width = 308
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdtVl_Limite_Credito: TCurrencyEdit
          Left = 390
          Top = 18
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 2
        end
        object EdtCd_Portador: TCurrencyEdit
          Tag = 5
          Left = 5
          Top = 90
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 6
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Portador: TEdit
          Left = 68
          Top = 90
          Width = 308
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object CbPagamento: TComboBox
          Left = 381
          Top = 89
          Width = 169
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 8
          Text = '" X  " dias da venda'
          Items.Strings = (
            '" X  " dias da venda'
            'No dia " X " do m'#234's seguinte'
          )
        end
        object EdtNr_Pagamento: TCurrencyEdit
          Tag = 5
          Left = 555
          Top = 89
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 9
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtCd_Funcionario: TCurrencyEdit
          Tag = 6
          Left = 5
          Top = 127
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 10
          OnExit = EdtCd_FuncionarioExit
          OnKeyDown = EdtCd_GrupoKeyDown
        end
        object EdtNm_Funcionario: TEdit
          Left = 68
          Top = 127
          Width = 308
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 30
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object EdtDt_Atividade: TDateEdit
          Left = 382
          Top = 127
          Width = 90
          Height = 19
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          TabOrder = 12
        end
        object MmNota: TMemo
          Left = 480
          Top = 345
          Width = 473
          Height = 161
          ScrollBars = ssVertical
          TabOrder = 15
          OnChange = MmObservacaoChange
        end
        object EdtDs_EMailCob: TLabeledEdit
          Left = 5
          Top = 53
          Width = 473
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 96
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail de Cobran'#231'a:'
          LabelSpacing = 1
          MaxLength = 150
          TabOrder = 4
        end
        object EdtPr_Desconto: TCurrencyEdit
          Left = 473
          Top = 18
          Width = 49
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DisplayFormat = '#,##0.00'
          TabOrder = 3
        end
        object EdtDs_EMailNFe: TLabeledEdit
          Left = 480
          Top = 53
          Width = 473
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 155
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail para DF-e (NF-e / NFC-e):'
          LabelSpacing = 1
          MaxLength = 150
          TabOrder = 5
        end
      end
      object TabSEndereco: TTabSheet
        Caption = '     Endere'#231'os     '
        ImageIndex = 52
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label23: TLabel
          Left = 424
          Top = 75
          Width = 54
          Height = 13
          Caption = 'Telefone 2:'
        end
        object Label24: TLabel
          Left = 95
          Top = 112
          Width = 44
          Height = 13
          Caption = 'Celular 1:'
        end
        object Label26: TLabel
          Left = 5
          Top = 75
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object Label27: TLabel
          Left = 334
          Top = 75
          Width = 54
          Height = 13
          Caption = 'Telefone 1:'
        end
        object Label28: TLabel
          Left = 514
          Top = 75
          Width = 54
          Height = 13
          Caption = 'Telefone 3:'
        end
        object Label29: TLabel
          Left = 185
          Top = 112
          Width = 44
          Height = 13
          Caption = 'Celular 2:'
        end
        object Label30: TLabel
          Left = 5
          Top = 112
          Width = 23
          Height = 13
          Caption = 'FAX:'
        end
        object Label31: TLabel
          Left = 5
          Top = 147
          Width = 61
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label32: TLabel
          Left = 5
          Top = 0
          Width = 95
          Height = 13
          Caption = 'T'#237'tulo do Endere'#231'o:'
        end
        object Label33: TLabel
          Left = 300
          Top = 0
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label34: TLabel
          Left = 5
          Top = 37
          Width = 67
          Height = 13
          Caption = 'Complemento:'
        end
        object Label41: TLabel
          Left = 429
          Top = 37
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object Label25: TLabel
          Left = 217
          Top = 37
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label67: TLabel
          Left = 275
          Top = 112
          Width = 26
          Height = 13
          Caption = 'Rota:'
        end
        object Label70: TLabel
          Left = 583
          Top = 112
          Width = 89
          Height = 13
          Caption = 'Ordem de Entrega:'
        end
        object Label72: TLabel
          Left = 611
          Top = 0
          Width = 40
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object DbEdtDs_Titulo: TDBEdit
          Left = 5
          Top = 16
          Width = 292
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'ds_titulo'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 0
        end
        object DbEdtDs_Endereco: TDBEdit
          Left = 300
          Top = 16
          Width = 308
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'ds_endereco'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 1
        end
        object DbEdtDs_Complemento: TDBEdit
          Left = 5
          Top = 53
          Width = 207
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'ds_complemento'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtNr_CEP: TDBEdit
          Left = 429
          Top = 53
          Width = 60
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'nr_cep'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 3
        end
        object DbEdtNm_Bairro: TDBEdit
          Left = 217
          Top = 53
          Width = 207
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'nm_bairro'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 4
        end
        object DbEdtCd_Cidade: TDBEdit
          Left = 5
          Top = 90
          Width = 60
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'cd_cidade'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 5
        end
        object DbEdtNm_Cidade: TDBEdit
          Left = 66
          Top = 90
          Width = 263
          Height = 19
          DataField = 'dp_cidade'
          DataSource = DsEndereco
          TabOrder = 6
        end
        object DbEdtNr_Telefone_1: TDBEdit
          Left = 334
          Top = 90
          Width = 85
          Height = 19
          DataField = 'nr_telefone_1'
          DataSource = DsEndereco
          TabOrder = 7
        end
        object DbEdtNr_Telefone_2: TDBEdit
          Left = 424
          Top = 90
          Width = 85
          Height = 19
          DataField = 'nr_telefone_2'
          DataSource = DsEndereco
          TabOrder = 8
        end
        object DbEdtNr_Telefone_3: TDBEdit
          Left = 514
          Top = 90
          Width = 85
          Height = 19
          DataField = 'nr_telefone_3'
          DataSource = DsEndereco
          TabOrder = 9
        end
        object DbEdtNr_FAX: TDBEdit
          Left = 5
          Top = 126
          Width = 85
          Height = 19
          DataField = 'nr_fax'
          DataSource = DsEndereco
          TabOrder = 10
        end
        object DbEdtNr_Celular_1: TDBEdit
          Left = 95
          Top = 126
          Width = 85
          Height = 19
          DataField = 'nr_celular_1'
          DataSource = DsEndereco
          TabOrder = 11
        end
        object DbEdtNr_Celular_2: TDBEdit
          Left = 185
          Top = 126
          Width = 85
          Height = 19
          DataField = 'nr_celular_2'
          DataSource = DsEndereco
          TabOrder = 12
        end
        object DbMmObservacao: TDBMemo
          Left = 5
          Top = 160
          Width = 949
          Height = 345
          TabStop = False
          DataField = 'mm_observacao'
          DataSource = DsEndereco
          MaxLength = 8190
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 15
        end
        object DBEdtCd_Rota: TDBEdit
          Left = 275
          Top = 126
          Width = 40
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'Cd_Rota'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 13
        end
        object DbEdtDs_Rota: TDBEdit
          Left = 316
          Top = 126
          Width = 263
          Height = 19
          DataField = 'Ds_Rota'
          DataSource = DsEndereco
          TabOrder = 14
        end
        object EdtNr_Ordem: TDBEdit
          Left = 583
          Top = 126
          Width = 40
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'Nr_Ordem'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 16
        end
        object DbEdtDs_Numero: TDBEdit
          Left = 611
          Top = 16
          Width = 62
          Height = 19
          TabStop = False
          AutoSize = False
          DataField = 'Ds_Numero'
          DataSource = DsEndereco
          ReadOnly = True
          TabOrder = 17
        end
      end
      object TabSContato: TTabSheet
        Caption = '      Contatos      '
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label47: TLabel
          Left = 2
          Top = 303
          Width = 104
          Height = 13
          Caption = 'Contato/Dependente:'
        end
        object Label48: TLabel
          Left = 313
          Top = 303
          Width = 59
          Height = 13
          Caption = 'Nascimento:'
        end
        object Label49: TLabel
          Left = 2
          Top = 339
          Width = 90
          Height = 13
          Caption = 'Cargo/Parentesco:'
        end
        object Label50: TLabel
          Left = 295
          Top = 339
          Width = 32
          Height = 13
          Caption = 'E-Mail:'
        end
        object Label51: TLabel
          Left = 2
          Top = 378
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label52: TLabel
          Left = 95
          Top = 378
          Width = 33
          Height = 13
          Caption = 'Ramal:'
        end
        object Label53: TLabel
          Left = 150
          Top = 378
          Width = 35
          Height = 13
          Caption = 'Celular:'
        end
        object Label56: TLabel
          Left = 2
          Top = 0
          Width = 154
          Height = 13
          Caption = 'Lista de Contatos/Dependentes:'
        end
        object Label68: TLabel
          Left = 246
          Top = 378
          Width = 20
          Height = 13
          Caption = 'Fax:'
        end
        object DbEdtNm_Contato: TDBEdit
          Left = 2
          Top = 318
          Width = 308
          Height = 19
          DataField = 'Nm_Contato'
          DataSource = DsContato
          TabOrder = 1
        end
        object DbEdtDt_Nascimento: TDBEdit
          Left = 313
          Top = 318
          Width = 70
          Height = 19
          DataField = 'Dt_Nascimento'
          DataSource = DsContato
          TabOrder = 2
        end
        object DbEdtDs_Cargo: TDBEdit
          Left = 2
          Top = 354
          Width = 290
          Height = 19
          DataField = 'Ds_Cargo'
          DataSource = DsContato
          TabOrder = 3
        end
        object DbEdtDs_EMail: TDBEdit
          Left = 295
          Top = 354
          Width = 290
          Height = 19
          DataField = 'Ds_EMail'
          DataSource = DsContato
          TabOrder = 4
        end
        object DbEdtNr_Telefone: TDBEdit
          Left = 2
          Top = 393
          Width = 90
          Height = 19
          DataField = 'Nr_Telefone'
          DataSource = DsContato
          TabOrder = 5
        end
        object DbEdtNr_Ramal: TDBEdit
          Left = 95
          Top = 393
          Width = 50
          Height = 19
          DataField = 'Nr_Ramal'
          DataSource = DsContato
          TabOrder = 6
        end
        object DbEdtNr_Celular: TDBEdit
          Left = 150
          Top = 393
          Width = 90
          Height = 19
          DataField = 'Nr_Celular'
          DataSource = DsContato
          TabOrder = 7
        end
        object DbGAgenda: TDBGrid
          Left = 2
          Top = 16
          Width = 952
          Height = 287
          DataSource = DsContato
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGDuplicataEnter
          OnExit = DbGDuplicataExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Contato'
              Width = 358
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dt_Nascimento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Cargo'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Telefone'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Celular'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_EMail'
              Width = 169
              Visible = True
            end>
        end
        object DbEdtNr_FaxCon: TDBEdit
          Left = 246
          Top = 393
          Width = 90
          Height = 19
          DataField = 'Nr_Fax'
          DataSource = DsContato
          TabOrder = 8
        end
      end
      object TabSContatoReal: TTabSheet
        Caption = '          Agenda          '
        ImageIndex = 29
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label46: TLabel
          Left = 3
          Top = 307
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object DbGContato: TDBGrid
          Left = 3
          Top = 5
          Width = 953
          Height = 301
          DataSource = DsAgenda
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGDuplicataEnter
          OnExit = DbGDuplicataExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Contato'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Contato'
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dt_Contato'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_novocontato'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Hora'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Ocorrencia'
              Width = 265
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Usuario'
              Title.Alignment = taCenter
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Contato'
              Width = 65
              Visible = True
            end>
        end
        object DbMObsContato: TDBMemo
          Left = 3
          Top = 321
          Width = 953
          Height = 185
          DataField = 'Mm_Observacao'
          DataSource = DsAgenda
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSCredito: TTabSheet
        Caption = '      Cr'#233'ditos      '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label74: TLabel
          Left = 3
          Top = 2
          Width = 100
          Height = 13
          Caption = 'Hist'#243'ricos de Cr'#233'dito:'
        end
        object Label75: TLabel
          Left = 504
          Top = 128
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object Label76: TLabel
          Left = 860
          Top = 473
          Width = 30
          Height = 13
          Caption = 'Saldo:'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 1
          Top = 471
          Width = 953
          Height = 5
          Shape = bsTopLine
        end
        object DbGCredito: TDBGrid
          Left = 3
          Top = 17
          Width = 950
          Height = 450
          DataSource = DsCredito
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Lancamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Lancamento'
              Width = 517
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cd_Usuario'
              Title.Alignment = taCenter
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dt_Lancamento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Lancamento'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Lancamento'
              Title.Alignment = taRightJustify
              Width = 94
              Visible = True
            end>
        end
        object EdtVl_Credito: TCurrencyEdit
          Left = 860
          Top = 487
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object TabSReceber: TTabSheet
        Caption = 'Contas a Receber'
        ImageIndex = 39
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label57: TLabel
          Left = 3
          Top = 0
          Width = 89
          Height = 13
          Caption = 'Contas '#224' Receber:'
        end
        object BvlSeparator_1: TBevel
          Left = 1
          Top = 468
          Width = 955
          Height = 5
          Shape = bsTopLine
        end
        object Label58: TLabel
          Left = 6
          Top = 472
          Width = 34
          Height = 13
          Caption = 'Aberto:'
          Transparent = True
        end
        object Label59: TLabel
          Left = 110
          Top = 472
          Width = 33
          Height = 13
          Caption = 'Atraso:'
          Transparent = True
        end
        object Label60: TLabel
          Left = 213
          Top = 472
          Width = 28
          Height = 13
          Caption = 'Pago:'
          Transparent = True
        end
        object Label61: TLabel
          Left = 317
          Top = 472
          Width = 27
          Height = 13
          Caption = 'Total:'
          Transparent = True
        end
        object Label62: TLabel
          Left = 421
          Top = 472
          Width = 88
          Height = 13
          Caption = 'Cr'#233'dito dispon'#237'vel:'
          Transparent = True
        end
        object DbGDuplicata: TDBGrid
          Left = 3
          Top = 15
          Width = 952
          Height = 450
          Hint = 'Pressione Enter ou de um Click duplo para ir ao Contas '#224' Receber'
          DataSource = DsDuplicata
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DbGDuplicataDrawColumnCell
          OnDblClick = DbGDuplicataDblClick
          OnEnter = DbGDuplicataEnter
          OnExit = DbGDuplicataExit
          OnKeyPress = DbGDuplicataKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nm_abreviado'
              Width = 93
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Receber'
              Title.Alignment = taRightJustify
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_funcionario'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Portador'
              Width = 151
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_Emissao'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'dt_vencimento'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_parcela'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_Recebimento'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Atraso'
              Title.Alignment = taRightJustify
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_recebido'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Saldo'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
        object EdtVl_Aberto: TCurrencyEdit
          Left = 6
          Top = 486
          Width = 100
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdtVl_Atraso: TCurrencyEdit
          Left = 110
          Top = 486
          Width = 100
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdtVl_Pago: TCurrencyEdit
          Left = 213
          Top = 486
          Width = 100
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object EdtVl_Total: TCurrencyEdit
          Left = 317
          Top = 486
          Width = 100
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object EdtVl_CredDisp: TCurrencyEdit
          Left = 421
          Top = 486
          Width = 100
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro, E.Dt_Alteracao,'#13#10'  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,'#13#10'  E.Cd_Credito, EC.Nm_Emitente as Nm_Credito, E.Cd_Grupo, EG.Nm_Grupo, E.Cd_SubGrupo,'#13#10'  ES.Nm_SubGrupo, E.Fl_Contribuinte, E.Fl_Exportador, E.Ds_EMail, E.Ds_Site,'#13#10'  E.Cd_Usuario, E.Cd_Portador, P.Nm_Portador, E.Dt_Nascimento, E.Nr_Identidade,'#13#10'  E.Nm_Orgao_emissor, E.Dt_Emissao_ID, E.Nm_Pai, E.Nm_Mae, E.Fl_Grau_Instrucao,'#13#10'  E.St_Grau_Instrucao, E.Ds_Naturalidade, E.Fl_Estado_Civil, E.Nm_Conjuje,'#13#10'  E.Dt_Nascimento_conjuje, E.Mm_Observacao, E.Mm_Restricao,'#13#10'  Cast( E.Sg_Estado_Emissor as VarChar( 2 ) ) + '''' - '''' + ET.Nm_Estado as Dp_Estado_Emissor,'#13#10'  E.Nr_Endereco, E.Nr_EndCobranca, E.Fl_Pagamento, E.Nr_Pagamento,'#13#10'  E.Cd_Funcionario, F.Nm_Funcionario, E.Nr_Insc_Municipal, E.Dt_Atividade, E.Mm_Nota,'#13#10'  E.Ds_EMailCob, E.Pr_Desconto, E.Ds_EMailNFe, E.Fl_ConFinal'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'left join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'inner join'#13#10'  Emitente_Grupo EG'#13#10'on'#13#10'  EG.Cd_Grupo = E.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ES'#13#10'on'#13#10'  ES.Cd_SubGrupo = E.Cd_SubGrupo'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = E.Cd_Portador'#13#10#13#10'left join'#13#10'  Estado ET'#13#10'on'#13#10'  ET.Sg_Estado = E.Sg_Estado_Emissor'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = E.Cd_Funcionario'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 3089
      end>
    Left = 119
    Top = 463
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadosnm_fantasia: TStringField
      FieldName = 'nm_fantasia'
      Size = 30
    end
    object ADODsDadosdt_cadastro: TDateTimeField
      FieldName = 'dt_cadastro'
    end
    object ADODsDadosdt_alteracao: TDateTimeField
      FieldName = 'dt_alteracao'
    end
    object ADODsDadostp_pessoa: TStringField
      FieldName = 'tp_pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsDadosnr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsDadosvl_limite_credito: TBCDField
      FieldName = 'vl_limite_credito'
      Precision = 12
      Size = 2
    end
    object ADODsDadoscd_credito: TIntegerField
      FieldName = 'cd_credito'
    end
    object ADODsDadosnm_credito: TStringField
      FieldName = 'nm_credito'
      Size = 50
    end
    object ADODsDadoscd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsDadosnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsDadoscd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsDadosnm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
    end
    object ADODsDadosfl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosds_email: TStringField
      FieldName = 'ds_email'
      Size = 150
    end
    object ADODsDadosds_site: TStringField
      FieldName = 'ds_site'
      Size = 50
    end
    object ADODsDadoscd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsDadosdt_nascimento: TDateTimeField
      FieldName = 'dt_nascimento'
    end
    object ADODsDadosnr_identidade: TStringField
      FieldName = 'nr_identidade'
    end
    object ADODsDadosnm_orgao_emissor: TStringField
      FieldName = 'nm_orgao_emissor'
      Size = 10
    end
    object ADODsDadosdt_emissao_id: TDateTimeField
      FieldName = 'dt_emissao_id'
    end
    object ADODsDadosnm_pai: TStringField
      FieldName = 'nm_pai'
      Size = 50
    end
    object ADODsDadosnm_mae: TStringField
      FieldName = 'nm_mae'
      Size = 50
    end
    object ADODsDadosfl_grau_instrucao: TStringField
      FieldName = 'fl_grau_instrucao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosst_grau_instrucao: TStringField
      FieldName = 'st_grau_instrucao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosds_naturalidade: TStringField
      FieldName = 'ds_naturalidade'
      Size = 30
    end
    object ADODsDadosfl_estado_civil: TStringField
      FieldName = 'fl_estado_civil'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnm_conjuje: TStringField
      FieldName = 'nm_conjuje'
      Size = 50
    end
    object ADODsDadosdt_nascimento_conjuje: TDateTimeField
      FieldName = 'dt_nascimento_conjuje'
    end
    object ADODsDadosdp_estado_emissor: TStringField
      FieldName = 'dp_estado_emissor'
      Size = 254
    end
    object ADODsDadosnr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsDadosnr_endcobranca: TSmallintField
      FieldName = 'nr_endcobranca'
    end
    object ADODsDadosfl_pagamento: TStringField
      FieldName = 'fl_pagamento'
      Size = 1
    end
    object ADODsDadosnr_pagamento: TSmallintField
      FieldName = 'nr_pagamento'
    end
    object ADODsDadoscd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsDadosnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosMm_Restricao: TMemoField
      FieldName = 'Mm_Restricao'
      BlobType = ftMemo
    end
    object ADODsDadosNr_Insc_Municipal: TStringField
      FieldName = 'Nr_Insc_Municipal'
    end
    object ADODsDadosDt_Atividade: TDateTimeField
      FieldName = 'Dt_Atividade'
    end
    object ADODsDadosMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsDadosDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsDadosPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsDadosDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
    object ADODsDadosFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente( Cd_Emitente, Nm_Emitente, Nm_Fantasia, Dt_Cadastro,'
      '   Dt_Alteracao, Tp_Pessoa, Nr_Documento, Nr_Insc_Estadual, Vl_Limite_Credito,'
      '   Cd_Credito, Cd_Grupo, Cd_SubGrupo, Fl_Contribuinte, Fl_Exportador, Ds_EMail,'
      '   Ds_Site, Cd_Usuario, Cd_Portador, Dt_Nascimento, Nr_Identidade,'
      '   Nm_Orgao_emissor, Dt_Emissao_ID, Nm_Pai, Nm_Mae, Fl_Grau_Instrucao,'
      '   St_Grau_Instrucao, Ds_Naturalidade, Fl_Estado_Civil, Nm_Conjuje,'
      '   Dt_Nascimento_conjuje, Mm_Observacao, Mm_Restricao, Sg_Estado_Emissor,'
      '   Fl_Pagamento, Nr_Pagamento, Cd_Funcionario, Nr_Insc_Municipal, Dt_Atividade,'
      '   Mm_Nota, Ds_EMailCob, Pr_Desconto, Ds_EMailNFe, Fl_ConFinal )'
      ''
      'values( :Cd_Emitente, :Nm_Emitente, :Nm_Fantasia, :Dt_Cadastro,'
      '   :Dt_Alteracao, :Tp_Pessoa, :Nr_Documento, :Nr_Insc_Estadual, :Vl_Limite_Credito,'
      '   :Cd_Credito, :Cd_Grupo, :Cd_SubGrupo, :Fl_Contribuinte, :Fl_Exportador, :Ds_EMail,'
      '   :Ds_Site, :Cd_Usuario, :Cd_Portador, :Dt_Nascimento, :Nr_Identidade,'
      '   :Nm_Orgao_emissor, :Dt_Emissao_ID, :Nm_Pai, :Nm_Mae, :Fl_Grau_Instrucao,'
      '   :St_Grau_Instrucao, :Ds_Naturalidade, :Fl_Estado_Civil, :Nm_Conjuje,'
      '   :Dt_Nascimento_conjuje, :Mm_Observacao, :Mm_Restricao, :Sg_Estado_Emissor,'
      '   :Fl_Pagamento, :Nr_Pagamento, :Cd_Funcionario, :Nr_Insc_Municipal,'
      '   :Dt_Atividade, :Mm_Nota, :Ds_EMailCob, :Pr_Desconto, :Ds_EMailNFe, :Fl_ConFinal )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente'
      ''
      'set'
      '  Nm_Emitente           = :Nm_Emitente,'
      '  Nm_Fantasia           = :Nm_Fantasia,'
      '  Dt_Alteracao          = :Dt_Alteracao,'
      '  Tp_Pessoa             = :Tp_Pessoa,'
      '  Nr_Documento          = :Nr_Documento,'
      '  Nr_Insc_Estadual      = :Nr_Insc_Estadual,'
      '  Nr_Insc_Municipal     = :Nr_Insc_Municipal,'
      '  Vl_Limite_Credito     = :Vl_Limite_Credito,'
      '  Cd_Credito            = :Cd_Credito,'
      '  Cd_Grupo              = :Cd_Grupo,'
      '  Cd_SubGrupo           = :Cd_SubGrupo,'
      '  Fl_Contribuinte       = :Fl_Contribuinte,'
      '  Fl_Exportador         = :Fl_Exportador,'
      '  Ds_EMail              = :Ds_EMail,'
      '  Ds_Site               = :Ds_Site,'
      '  Cd_Usuario            = :Cd_Usuario,'
      '  Cd_Portador           = :Cd_Portador,'
      '  Cd_Funcionario        = :Cd_Funcionario,'
      '  Dt_Nascimento         = :Dt_Nascimento,'
      '  Nr_Identidade         = :Nr_Identidade,'
      '  Nm_Orgao_emissor      = :Nm_Orgao_emissor,'
      '  Dt_Emissao_ID         = :Dt_Emissao_ID,'
      '  Nm_Pai                = :Nm_Pai,'
      '  Nm_Mae                = :Nm_Mae,'
      '  Fl_Grau_Instrucao     = :Fl_Grau_Instrucao,'
      '  St_Grau_Instrucao     = :St_Grau_Instrucao,'
      '  Ds_Naturalidade       = :Ds_Naturalidade,'
      '  Fl_Estado_Civil       = :Fl_Estado_Civil,'
      '  Nm_Conjuje            = :Nm_Conjuje,'
      '  Dt_Nascimento_conjuje = :Dt_Nascimento_conjuje,'
      '  Mm_Observacao         = :Mm_Observacao,'
      '  Mm_Restricao          = :Mm_Restricao,'
      '  Sg_Estado_Emissor     = :Sg_Estado_Emissor,'
      '  Nr_Endereco           = :Nr_Endereco,'
      '  Nr_EndCobranca        = :Nr_EndCobranca,'
      '  Fl_Pagamento          = :Fl_Pagamento,'
      '  Nr_Pagamento          = :Nr_Pagamento,'
      '  Dt_Atividade          = :Dt_Atividade,'
      '  Mm_Nota               = :Mm_Nota,'
      '  Ds_EMailCob           = :Ds_EMailCob,'
      '  Pr_Desconto           = :Pr_Desconto,'
      '  Ds_EMailNFe           = :Ds_EMailNFe,'
      '  Fl_ConFinal           = :Fl_ConFinal'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLDelete.Strings = (
      'declare  @vCd_Emitente Integer'
      'set @vCd_Emitente = :Cd_Emitente'
      ''
      'begin transaction'
      ''
      '  -- Retirar as indica'#231#245'es de endere'#231'os e t'#237'tular de cr'#233'dito'
      '  update'
      '    Emitente'
      ''
      '  set'
      '    Nr_Endereco    = null,'
      '    Nr_EndCobranca = null,'
      '    Cd_Credito     = null'
      ''
      '  where'
      '    Cd_Emitente = @vCd_Emitente'
      ''
      '  -- Endere'#231'os'
      '  delete from'
      '    Emitente_Endereco'
      ''
      '  where'
      '    Cd_Emitente = @vCd_Emitente'
      ''
      '  -- Contatos (Pessoas)'
      '  delete from'
      '    Emitente_Contato'
      ''
      '  where'
      '    Cd_Emitente = @vCd_Emitente'
      ''
      '  -- Contatos (Agendamento)'
      '  delete from'
      '    Contato'
      ''
      '  where'
      '    Cd_Emitente = @vCd_Emitente'
      ''
      '  -- Emitente'
      '  delete from'
      '    Emitente'
      ''
      '  where'
      '    Cd_Emitente = @vCd_Emitente'
      ''
      'if @@Error = 0 '
      '  Commit Transaction'
      ''
      'else begin'
      '  Rollback Transaction'
      '  raiserror( ''''Erro na exclus'#227'o do Emitente'''', 16, 1 )'
      ''
      'end'
    )
    SQLOther0.Strings = (
      'insert into Emitente_Endereco( Cd_Emitente, Nr_Endereco, Ds_Titulo, Ds_Endereco,'
      '   Nm_Bairro, Ds_Complemento, Nr_CEP, Cd_Cidade, Nr_Telefone_1, Nr_Telefone_2,'
      '   Nr_Telefone_3, Nr_FAX, Nr_Celular_1, Nr_Celular_2, Mm_Observacao, Ds_Numero )'
      ''
      'values( :Cd_Emitente, :Nr_Endereco, :Ds_Titulo, :Ds_Endereco, :Nm_Bairro,'
      '   :Ds_Complemento, :Nr_CEP, :Cd_Cidade, :Nr_Telefone_1, :Nr_Telefone_2,'
      '   :Nr_Telefone_3, :Nr_FAX, :Nr_Celular_1, :Nr_Celular_2, :Mm_Observacao,'
      '   :Ds_Numero )'
    )
    SQLOther1.Strings = (
      'update'
      '  Emitente_Endereco'
      ''
      'set'
      '  Ds_Titulo      = :Ds_Titulo,'
      '  Ds_Endereco    = :Ds_Endereco,'
      '  Ds_Numero      = :Ds_Numero,'
      '  Nm_Bairro      = :Nm_Bairro,'
      '  Ds_Complemento = :Ds_Complemento,'
      '  Nr_CEP         = :Nr_CEP,'
      '  Cd_Cidade      = :Cd_Cidade,'
      '  Nr_Telefone_1  = :Nr_Telefone_1,'
      '  Nr_Telefone_2  = :Nr_Telefone_2,'
      '  Nr_Telefone_3  = :Nr_Telefone_3,'
      '  Nr_FAX         = :Nr_FAX,'
      '  Nr_Celular_1   = :Nr_Celular_1,'
      '  Nr_Celular_2   = :Nr_Celular_2,'
      '  Mm_Observacao  = :Mm_Observacao'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Endereco = :Nr_Endereco'
    )
    SQLOther2.Strings = (
      '-- Atualiza o endere'#231'o do cliente'
      'update'
      '  Emitente'
      ''
      'set'
      '  Nr_Endereco    = :Nr_Endereco,'
      '  Nr_EndCobranca = :Nr_EndCobranca'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther3.Strings = (
      'declare @vCd_Emitente Integer'
      'declare @vNr_Endereco SmallInt'
      ''
      'set @vCd_Emitente = :Cd_Emitente'
      'set @vNr_Endereco = :Nr_Endereco'
      ''
      '-- Retira o relacionamento na Table Emitentes'
      'update'
      '  Emitente'
      ''
      'set'
      '  Nr_Endereco ='
      '    case'
      '      when Nr_Endereco = @vNr_Endereco then null'
      '      else Nr_Endereco'
      '    end,'
      '  Nr_EndCobranca ='
      '    case'
      '      when Nr_EndCobranca = @vNr_Endereco then null'
      '      else Nr_EndCobranca'
      '    end'
      ''
      'where'
      '  Cd_Emitente = @vCd_Emitente;'
      ''
      '-- Apaga o registro'
      'delete from'
      '  Emitente_Endereco'
      ''
      'where'
      '  Cd_Emitente = @vCd_Emitente and'
      '  Nr_Endereco = @vNr_Endereco;'
    )
    SQLOther4.Strings = (
      '--------------- Exclus'#227'o de credito do cliente'
      'delete from'
      '  Emitente_Credito'
      ''
      'where'
      '  Cd_Emitente   = :Cd_Emitente and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    SQLOther5.Strings = (
      '-- Exclus'#227'o do Contato'
      'delete from'
      '  Emitente_Contato'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Contato  = :Nr_Contato'
    )
    SQLOther6.Strings = (
      '-- Exclus'#227'o do Contato Realizado'
      'delete from'
      '  Contato'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Contato  = :Nr_Contato'
    )
    Left = 148
    Top = 463
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_Emitente'#13#10#13#10'from'#13#10'  Emitente'#13#10#13#10'order by'#13#10'  Cd_Emitente'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      '--------------- Sequencia do c'#243'digo do cliente'
      'select'
      '  max( A.Cd_Emitente ) as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'order by'
      '  cd_Emitente'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  cd_Emitente < :cd_Emitente'
      ''
      'order by'
      '  cd_Emitente desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  cd_Emitente > :Cd_Emitente'
      ''
      'order by'
      '  cd_Emitente'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'order by'
      '  cd_Emitente desc'
    )
    SQLOther4.Strings = (
      '-- Verifica se existe algum cadastrado com o CNPJ / CPF'
      'select'
      '  Cd_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    SQLOther9.Strings = (
      '--------------- Sequencia do c'#243'digo do cliente - pega "furo" na numera'#231#227'o'
      'select top 1'
      '  A.Cd_Emitente + 1 as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
      ''
      'where'
      '  not exists('
      '  select'
      '    B.Cd_Emitente'
      ''
      '  from'
      '    Emitente  B'
      ''
      '  where'
      '    B.Cd_Emitente = A.Cd_Emitente + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Emitente'
    )
    Left = 178
    Top = 463
    object ADODsNavegarcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 14
            ShortCut = 8315
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
            ShortCut = 8315
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
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
            ShortCut = 8312
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
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
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
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
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
            Caption = '-'
          end
          item
            Action = ActLicenca
            ImageIndex = 2
          end
          item
            Action = ActTerceiros
            ImageIndex = 50
            ShortCut = 118
          end
          item
            Action = ActRepresentada
            ImageIndex = 47
            ShortCut = 119
          end
          item
            Action = ActEnvelope
            ImageIndex = 53
            ShortCut = 120
          end
          item
            Action = ActGas
            ImageIndex = 56
          end
          item
            Action = ActMS
            ImageIndex = 36
            ShortCut = 16502
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 775
    Top = 194
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      ShortCut = 8312
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      ShortCut = 8313
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      ShortCut = 8314
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      ShortCut = 8315
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
    object ActTerceiros: TAction
      Category = '2-Database'
      Hint = 'Produtos em Poder de Terceiros'
      ImageIndex = 50
      ShortCut = 118
      OnExecute = ActTerceirosExecute
    end
    object ActRepresentada: TAction
      Category = '2-Database'
      Hint = 'C'#243'digo nas Representadas'
      ImageIndex = 47
      ShortCut = 119
      OnExecute = ActRepresentadaExecute
    end
    object ActLicenca: TAction
      Category = '2-Database'
      Hint = 'ID do Cliente e Validade'
      ImageIndex = 2
      OnExecute = ActLicencaExecute
    end
    object ActEnvelope: TAction
      Category = '2-Database'
      Hint = 'Imprimir envelope'
      ImageIndex = 53
      ShortCut = 120
      OnExecute = ActEnvelopeExecute
    end
    object ActGas: TAction
      Category = '2-Database'
      Hint = 'Contrato de Fornecimento de G'#225's'
      ImageIndex = 56
      OnExecute = ActGasExecute
    end
    object ActMS: TAction
      Category = '2-Database'
      Hint = 'Detalhamento de Informa'#231#245'es da Multforma'
      ImageIndex = 36
      ShortCut = 16502
      OnExecute = ActMSExecute
    end
  end
  object ADODsEndereco: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  dbo.IntToStrZero( EE.Nr_Endereco, 2 ) + '''' - '''' + EE.Ds_Titulo as Dp_Titulo,'#13#10'  EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento,'#13#10'  EE.Cd_Cidade, C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Cep, EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3,'#13#10'  EE.Nr_Celular_1, EE.Nr_Celular_2, EE.Nr_Fax, EE.Mm_Observacao,'#13#10'  EE.Cd_Rota, R.Ds_Rota, EE.Nr_Ordem, EE.Ds_Endereco, EE.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco EE'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'where'#13#10'  EE.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 238
    Top = 463
    object ADODsEnderecodp_titulo: TStringField
      FieldName = 'dp_titulo'
      Size = 254
    end
    object ADODsEndereconr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsEnderecods_titulo: TStringField
      FieldName = 'ds_titulo'
      Size = 50
    end
    object ADODsEnderecods_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsEndereconm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsEnderecods_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsEnderecocd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsEnderecodp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsEndereconr_cep: TStringField
      FieldName = 'nr_cep'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEndereconr_telefone_1: TStringField
      FieldName = 'nr_telefone_1'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsEndereconr_telefone_2: TStringField
      FieldName = 'nr_telefone_2'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsEndereconr_telefone_3: TStringField
      FieldName = 'nr_telefone_3'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsEndereconr_celular_1: TStringField
      FieldName = 'nr_celular_1'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
    object ADODsEndereconr_celular_2: TStringField
      FieldName = 'nr_celular_2'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
    object ADODsEndereconr_fax: TStringField
      FieldName = 'nr_fax'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsEnderecoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsEnderecoCd_Rota: TSmallintField
      FieldName = 'Cd_Rota'
    end
    object ADODsEnderecoDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
    object ADODsEnderecoNr_Ordem: TSmallintField
      FieldName = 'Nr_Ordem'
    end
    object ADODsEnderecoDs_Endereco_1: TStringField
      FieldName = 'Ds_Endereco_1'
      Size = 50
    end
    object ADODsEnderecoDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsEndereco: TDataSource
    DataSet = ADODsEndereco
    Left = 209
    Top = 463
  end
  object ADODsEndNovo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select top 1'#13#10'  A.Nr_Endereco + 1 as Nr_Endereco'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  not exists('#13#10'  select'#13#10'    B.Nr_Endereco'#13#10#13#10'  from'#13#10'    Emitente_Endereco B'#13#10#13#10'  where'#13#10'    B.Cd_Emitente = A.Cd_Emitente and'#13#10'    B.Nr_Endereco = A.Nr_Endereco + 1'#13#10'  )'#13#10#13#10'order by'#13#10'  A.Nr_Endereco'#13#10
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 268
    Top = 463
    object ADODsEndNovonr_endereco: TIntegerField
      FieldName = 'nr_endereco'
    end
  end
  object ADODsAgenda: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsAgendaCalcFields
    CommandText = 'select'#13#10'  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'#13#10'  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'#13#10'  A.Mm_Observacao, A.Nr_Orcamento,'#13#10'  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + B.Ds_Ocorrencia as Dp_Ocorrencia,'#13#10'  case A.St_Contato'#13#10'    when ''''1'''' then ''''Aberto'''#13#10'    when ''''2'''' then ''''Encerrado'''#13#10'  end as Dp_Contato'#13#10#13#10'from'#13#10'  Contato A'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia B'#13#10'on'#13#10'  B.Cd_Ocorrencia = A.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente '#13#10#13#10'order by'#13#10'  Nr_Contato desc'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 5092
      end>
    Left = 328
    Top = 463
    object ADODsAgendaNr_Contato: TSmallintField
      DisplayLabel = 'N'#186
      FieldName = 'Nr_Contato'
      DisplayFormat = '#,##0'
    end
    object ADODsAgendaDt_Contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Contato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsAgendaNm_Contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsAgendaCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsAgendaDs_Ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsAgendaSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsAgendaCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsAgendaDp_Ocorrencia: TStringField
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 58
    end
    object ADODsAgendaDp_Contato: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Dp_Contato'
      ReadOnly = True
      Size = 9
    end
    object ADODsAgendaDp_Hora: TStringField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'Dp_Hora'
      Size = 5
      Calculated = True
    end
    object ADODsAgendanr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsAgendadt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsAgendaDp_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 15
      Calculated = True
    end
    object ADODsAgendaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object DsAgenda: TDataSource
    DataSet = ADODsAgenda
    Left = 299
    Top = 463
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,'#13#10'  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular, A.Nr_Fax'#13#10#13#10'from'#13#10'  Emitente_Contato A'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  A.Cd_Emitente, A.Nm_Contato'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 386
    Top = 463
    object ADODsContatoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
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
      DisplayLabel = 'Cargo/Parentesco'
      FieldName = 'Ds_Cargo'
      Size = 30
    end
    object ADODsContatoDs_EMail: TStringField
      DisplayLabel = 'E-Mail'
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
      FieldName = 'Nr_Ramal'
    end
    object ADODsContatoNr_Celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'Nr_Celular'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
    object ADODsContatoNr_Fax: TStringField
      FieldName = 'Nr_Fax'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 358
    Top = 463
  end
  object ADODsDuplicata: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDuplicataCalcFields
    CommandText = 'select'#13#10'  R.Cd_Filial, F.Nm_Abreviado, R.Nr_Receber, R.Dt_Emissao, R.Nr_Orcamento,'#13#10'  R.St_Receber, RP.Nr_Parcela, RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido,'#13#10'  FO.Nm_Funcionario, O.Nr_Fatura,'#13#10'  RP.Dp_Portador,'#13#10'  RP.Dt_Recebimento, RP.Vl_Saldo'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = R.Cd_Filial'#13#10#13#10'inner join'#13#10'  Receber_ParcelaVw RP'#13#10'on'#13#10'  RP.Cd_Filial  = R.Cd_Filial and'#13#10'  RP.Nr_Receber = R.Nr_Receber'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Funcionario FO'#13#10'on'#13#10'  FO.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'where'#13#10'  R.Cd_Emitente = :Cd_Emitente and'#13#10'  R.St_Receber < ''''4'''#13#10#13#10'order by'#13#10'  R.Cd_Emitente, RP.Dt_Vencimento desc'#13#10#13#10'    -- R.Cd_Filial, R.Nr_Receber desc, RP.Nr_Parcela desc'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 3641
      end>
    Left = 443
    Top = 463
    object ADODsDuplicataDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDuplicatanr_receber: TIntegerField
      DisplayLabel = 'N'#186' Receber'
      FieldName = 'nr_receber'
    end
    object ADODsDuplicatavl_recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'vl_recebido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDuplicatast_receber: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'st_receber'
      FixedChar = True
      Size = 1
    end
    object ADODsDuplicataDp_Receber: TStringField
      DisplayLabel = 'N'#186' Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Calculated = True
    end
    object ADODsDuplicatanr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsDuplicatanm_abreviado: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'nm_abreviado'
    end
    object ADODsDuplicatanm_funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDuplicatacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDuplicatanr_parcela: TSmallintField
      FieldName = 'nr_parcela'
    end
    object ADODsDuplicatadt_vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDuplicatavl_parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'vl_parcela'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDuplicataNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsDuplicataDp_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
    end
    object ADODsDuplicataNr_Atraso: TSmallintField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'Nr_Atraso'
      EditFormat = '#,###'
      Calculated = True
    end
    object ADODsDuplicataVl_Saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'Vl_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsDuplicataDt_Recebimento: TDateTimeField
      DisplayLabel = 'Recebimento'
      FieldName = 'Dt_Recebimento'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DsDuplicata: TDataSource
    DataSet = ADODsDuplicata
    Left = 414
    Top = 463
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 91
    Top = 463
  end
  object ADODsCFG: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Fl_PastaMensal, Ds_PathCancelar, Nr_Intervalo, Nm_LogoMarca,'#13#10'  Ds_PathDPEC, Ds_PathInu, Ds_PathNFe, Nr_Certificado, Sh_Certificado,'#13#10'  Ds_PathSalvar, Ds_PathSchemas, Fl_Ambiente, Tp_DANFe, Ds_PathPDF,'#13#10'  Nm_DANFe, Nr_Decimais, Ds_Assunto, Mm_EMail, Fl_FormaEmissao, Nr_Copia,'#13#10'  Dt_Contingencia, Ds_Contingencia'#13#10#13#10'from'#13#10'  NFe_CFG'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 506
    Top = 463
    object ADODsCFGCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsCFGFl_Ambiente: TStringField
      FieldName = 'Fl_Ambiente'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGTp_DANFe: TStringField
      FieldName = 'Tp_DANFe'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGFl_PastaMensal: TStringField
      FieldName = 'Fl_PastaMensal'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGNr_Certificado: TStringField
      FieldName = 'Nr_Certificado'
      Size = 100
    end
    object ADODsCFGSh_Certificado: TStringField
      FieldName = 'Sh_Certificado'
      Size = 100
    end
    object ADODsCFGDs_PathCancelar: TStringField
      FieldName = 'Ds_PathCancelar'
      Size = 255
    end
    object ADODsCFGDs_PathDPEC: TStringField
      FieldName = 'Ds_PathDPEC'
      Size = 255
    end
    object ADODsCFGDs_PathInu: TStringField
      FieldName = 'Ds_PathInu'
      Size = 255
    end
    object ADODsCFGDs_PathNFe: TStringField
      FieldName = 'Ds_PathNFe'
      Size = 255
    end
    object ADODsCFGDs_PathSalvar: TStringField
      FieldName = 'Ds_PathSalvar'
      Size = 255
    end
    object ADODsCFGDs_PathSchemas: TStringField
      FieldName = 'Ds_PathSchemas'
      Size = 255
    end
    object ADODsCFGDs_PathPDF: TStringField
      FieldName = 'Ds_PathPDF'
      Size = 255
    end
    object ADODsCFGNr_Intervalo: TSmallintField
      FieldName = 'Nr_Intervalo'
    end
    object ADODsCFGNm_LogoMarca: TStringField
      FieldName = 'Nm_LogoMarca'
      Size = 255
    end
    object ADODsCFGNm_DANFe: TStringField
      FieldName = 'Nm_DANFe'
      Size = 255
    end
    object ADODsCFGNr_Decimais: TSmallintField
      FieldName = 'Nr_Decimais'
    end
    object ADODsCFGDs_Assunto: TStringField
      FieldName = 'Ds_Assunto'
      Size = 100
    end
    object ADODsCFGMm_EMail: TMemoField
      FieldName = 'Mm_EMail'
      BlobType = ftMemo
    end
    object ADODsCFGFl_FormaEmissao: TStringField
      FieldName = 'Fl_FormaEmissao'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGNr_Copia: TSmallintField
      FieldName = 'Nr_Copia'
    end
    object ADODsCFGDt_Contingencia: TDateTimeField
      FieldName = 'Dt_Contingencia'
    end
    object ADODsCFGDs_Contingencia: TStringField
      FieldName = 'Ds_Contingencia'
      Size = 256
    end
  end
  object ADODsCidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Cidade, Nm_Cidade, Sg_Estado'#13#10#13#10'from'#13#10'  Cidade'#13#10#13#10'where'#13#10'  Cd_IBGE = :Cd_IBGE'#13#10'  '
    Parameters = <
      item
        Name = 'Cd_IBGE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end>
    SQLOther0.Strings = (
      '--------------- Consulta pelo Codigo do IBGE'
      'select'
      '  Cd_Cidade, Nm_Cidade, Sg_Estado'
      ''
      'from'
      '  Cidade'
      ''
      'where'
      '  Cd_IBGE = :Cd_IBGE'
      '  '
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo Nome'
      'select'
      '  Cd_Cidade, Nm_Cidade, Sg_Estado'
      ''
      'from'
      '  Cidade'
      ''
      'where'
      '  Sg_Estado = :Sg_Estado and'
      '  Nm_Cidade = :Nm_Cidade'
    )
    Left = 536
    Top = 464
    object ADODsCidadeCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsCidadeNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsCidadeSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
  end
  object ADODsCredito: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsCreditoCalcFields
    CommandText = 'select'#13#10'  Cd_Emitente, Nr_Lancamento, Dt_Lancamento, Tp_Lancamento, Vl_Lancamento, '#13#10'  Ds_Lancamento, Cd_Usuario'#13#10#13#10'from'#13#10'  Emitente_Credito '#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  Cd_Emitente, Nr_Lancamento desc'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 599
    Top = 463
    object ADODsCreditoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsCreditoNr_Lancamento: TSmallintField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'Nr_Lancamento'
    end
    object ADODsCreditoTp_Lancamento: TStringField
      FieldName = 'Tp_Lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsCreditoVl_Lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Lancamento'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsCreditoDs_Lancamento: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Lancamento'
      Size = 100
    end
    object ADODsCreditoCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsCreditoDp_Lancamento: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Lancamento'
      Size = 10
      Calculated = True
    end
    object ADODsCreditoDt_Lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DsCredito: TDataSource
    DataSet = ADODsCredito
    Left = 568
    Top = 463
  end
end
