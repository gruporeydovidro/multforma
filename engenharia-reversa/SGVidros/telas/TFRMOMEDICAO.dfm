object FrmOMedicao: TFrmOMedicao
  Left = 265
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ordem de Medi'#231#227'o'
  ClientHeight = 505
  ClientWidth = 931
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
    Height = 505
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 910
    Height = 505
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 35
      Height = 13
      Caption = 'OM N'#186':'
      Transparent = True
    end
    object Label2: TLabel
      Left = 147
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 69
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 474
      Width = 902
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 307
      Top = 30
      Width = 76
      Height = 13
      Caption = 'Agendado para:'
    end
    object Label10: TLabel
      Left = 5
      Top = 67
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 82
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
    object Label5: TLabel
      Left = 6
      Top = 175
      Width = 118
      Height = 13
      Caption = 'Medi'#231#227'o / Observa'#231#245'es:'
    end
    object Label17: TLabel
      Left = 411
      Top = 67
      Width = 104
      Height = 13
      Caption = 'Endere'#231'o de Entrega:'
    end
    object SbEndereco: TSpeedButton
      Left = 451
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Seleciona Endere'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEnderecoClick
    end
    object Label3: TLabel
      Left = 5
      Top = 103
      Width = 86
      Height = 13
      Caption = 'Nome do Contato:'
    end
    object SbEmitenteContato: TSpeedButton
      Left = 311
      Top = 117
      Width = 23
      Height = 19
      Hint = 'Seleciona Contatos do Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteContatoClick
    end
    object Label6: TLabel
      Left = 5
      Top = 138
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbVendedor: TSpeedButton
      Tag = 4
      Left = 45
      Top = 153
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
    object Label7: TLabel
      Left = 353
      Top = 138
      Width = 38
      Height = 13
      Caption = 'Medidor'
    end
    object SbMedidor: TSpeedButton
      Tag = 5
      Left = 393
      Top = 153
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
    object SbEmitenteNew: TSpeedButton
      Left = 387
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Inclus'#227'o R'#225'pida de Cliente'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteNewClick
    end
    object Label9: TLabel
      Left = 437
      Top = 30
      Width = 93
      Height = 13
      Caption = 'Or'#231'amento Gerado:'
      Transparent = True
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 908
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 15
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 908
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
      Left = 737
      Top = 478
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 823
      Top = 478
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 14
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Medicao: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtSt_Medicao: TEdit
      Left = 147
      Top = 45
      Width = 156
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtDt_Emissao: TEdit
      Left = 69
      Top = 45
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDt_Agenda: TDateEdit
      Left = 307
      Top = 45
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 82
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object MmMedicao: TMemo
      Left = 6
      Top = 194
      Width = 418
      Height = 277
      Lines.Strings = (
        'MmObservacao'
      )
      ScrollBars = ssVertical
      TabOrder = 12
    end
    object EdtHr_Medicao: TMaskEdit
      Left = 398
      Top = 45
      Width = 35
      Height = 19
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 4
      Text = '  :  '
      OnExit = EdtHr_MedicaoExit
    end
    object EdtNr_Endereco: TCurrencyEdit
      Tag = 2
      Left = 411
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtNr_EnderecoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_Titulo: TEdit
      Left = 475
      Top = 82
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtNm_Contato: TEdit
      Tag = 3
      Left = 5
      Top = 117
      Width = 306
      Height = 19
      MaxLength = 50
      TabOrder = 9
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 68
      Top = 153
      Width = 280
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object EdtCd_Medidor: TCurrencyEdit
      Tag = 5
      Left = 353
      Top = 153
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Medidor: TEdit
      Left = 416
      Top = 153
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object PgCtrlImagem: TPageControl
      Left = 426
      Top = 177
      Width = 476
      Height = 295
      ActivePage = TabSProjeto
      TabOrder = 19
      OnChange = PgCtrlImagemChange
      object TabSCliente: TTabSheet
        Caption = '          Medi'#231#227'o do Cliente         '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object BvlMoldura: TBevel
          Left = 0
          Top = 0
          Width = 469
          Height = 267
          Shape = bsFrame
        end
        object ImgCliente: TImage
          Left = 2
          Top = 2
          Width = 463
          Height = 261
          Center = True
        end
      end
      object TabSProjeto: TTabSheet
        Caption = '               Projeto               '
        ImageIndex = 1
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 469
          Height = 267
          Shape = bsFrame
        end
        object ImgProjeto: TImage
          Left = 2
          Top = 2
          Width = 463
          Height = 261
          Center = True
        end
      end
    end
    object SctRepNormal: TSctReport
      Left = 404
      Top = 103
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
      TabOrder = 16
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepNormalBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 3
      SLeft = -21
      SWidth = 836
      SHeight = 448
      MTop = 103
      MLeft = 404
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
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.25
        PageSetup.TopMargin = 0.4999999999999999
        PageSetup.BottomMargin = 0.4999999999999999
        BorderType = btNone
        Description = 'Ordem de Medi'#231#227'o'
        CloseDataSet = False
        DataRange = drSingleRecord
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = SctBand3
        Foot = SctBand5
        PageHead = PgHdFilial
        PageFoot = SctBand4
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
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDados
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsEndView
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOServico_Orcamento.DsOrcamento
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOServico_Orcamento.DsDetalhe
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
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
        object adodsdadosNr_MedicaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Medicao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_AgendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Agenda'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_ContatoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Contato'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_VendedorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Vendedor'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_MedidorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Medidor'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosMm_MedicaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Medicao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 214
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 214
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsendviewDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 214
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente.DsEndereco
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente.DsAgenda
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente.DsContato
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente.DsDuplicata
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente.DsDados
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 791
          Height = 6
          ParentColor = True
          BandName = 'ReportHeaderBand'
          Updatelevel = SctLevel1
          Visible = False
        end
        object PgHdFilial: TSctBand
          Left = 0
          Top = 92
          Width = 791
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdFilial'
          Updatelevel = SctLevel2
          BorderType = btSingle
          object Sctvarlabel143: TSctvarlabel
            Left = 1
            Top = 2
            Width = 375
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsfilialDp_FilialVar
          end
          object SctEndereco: TSctvarlabel
            Left = 430
            Top = 1
            Width = 310
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = '<<< Endere'#231'o >>>'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 349
          Width = 791
          Height = 100
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          object Sctvarlabel8: TSctvarlabel
            Left = 306
            Top = 1
            Width = 130
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'M E D I '#199' '#195' O'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 2
            Top = 22
            Width = 738
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsdadosMm_MedicaoVar
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 464
          Width = 791
          Height = 54
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine1: TSctLine
            Left = 0
            Top = 34
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 2
            Top = 35
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
          object Sctvarlabel66: TSctvarlabel
            Left = 658
            Top = 35
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 705
            Top = 35
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 9
            Top = 7
            Width = 326
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsdadosNm_VendedorVar
          end
          object SctLine2: TSctLine
            Left = 9
            Top = 5
            Width = 326
            Height = 8
            AlignVertical = laTop
          end
          object SctTxtUsuario: TSctvarlabel
            Left = 400
            Top = 35
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 533
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          Visible = False
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 196
          Width = 791
          Height = 53
          ParentColor = True
          BandName = 'PgHdCliente'
          Updatelevel = SctLevel2
          BorderType = btSingle
          Band = PgHdFilial
          Order = 1
          Above = False
          object Sctvarlabel68: TSctvarlabel
            Left = 2
            Top = 1
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object SctVarCliente1: TSctvarlabel
            Left = 51
            Top = 1
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'preenchido em tempo de execu'#231#227'o'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 575
            Top = 0
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o da O.M.:'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 673
            Top = 0
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 1
            Top = 34
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Agendado pra:'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 78
            Top = 34
            Width = 143
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosDt_AgendaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 2
            Top = 17
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendedor:'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 64
            Top = 17
            Width = 290
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_VendedorVar
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 411
            Top = 17
            Width = 283
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_MedidorVar
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 359
            Top = 17
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Medidor:'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 272
            Top = 34
            Width = 283
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosNm_ContatoVar
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 224
            Top = 34
            Width = 44
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Contato:'
          end
        end
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 264
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'PgHdEndereco'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          Band = PgHdFilial
          Order = 2
          Above = False
          object Sctvarlabel84: TSctvarlabel
            Left = 1
            Top = 1
            Width = 53
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 55
            Top = 1
            Width = 357
            Height = 17
            Variable = adodsendviewDs_EnderecoVar
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 532
            Top = 1
            Width = 35
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 568
            Top = 1
            Width = 172
            Height = 17
            Variable = adodsendviewNm_BairroVar
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 1
            Top = 18
            Width = 70
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 73
            Top = 18
            Width = 230
            Height = 17
            Variable = adodsendviewDs_ComplementoVar
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 323
            Top = 18
            Width = 25
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 349
            Top = 18
            Width = 67
            Height = 17
            Variable = adodsendviewNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 418
            Top = 18
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 458
            Top = 18
            Width = 240
            Height = 17
            Variable = adodsendviewDp_CidadeVar
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 1
            Top = 35
            Width = 54
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 56
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 144
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 230
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 316
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 348
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 1
            Top = 52
            Width = 192
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es /Ponto de Refer'#234'ncia:'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 176
            Top = 52
            Width = 522
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsendviewMm_ObservacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 435
            Top = 35
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 477
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 565
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 413
            Top = 1
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 457
            Top = 1
            Width = 72
            Height = 17
            Variable = adodsendviewDs_NumeroVar
          end
        end
        object PgHdFilialSub: TSctSubBand
          Left = 0
          Top = 145
          Width = 791
          Height = 36
          ParentColor = True
          BandName = 'PgHdFilialSub'
          Updatelevel = SctLevel2
          BorderType = btSingle
          Band = PgHdFilial
          Above = False
          object Sctvarlabel54: TSctvarlabel
            Left = -1
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Ordem de Medi'#231#227'o'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 643
            Top = 1
            Width = 31
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 676
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 640
            Top = 18
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 676
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = -1
            Top = 18
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'O.M. N'#186
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 53
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosNr_MedicaoVar
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 127
            Top = 18
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 192
            Top = 18
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar
          end
        end
        object PgHdFilial_Img: TSctSubBand
          Left = 0
          Top = 21
          Width = 791
          Height = 56
          ParentColor = True
          BandName = 'PgHdFilial_Img'
          Updatelevel = SctLevel2
          Stretch = True
          Band = PgHdFilial
          Above = True
          object SctImgCabecalho: TSctImageLabel
            Left = 0
            Top = -12
            Width = 741
            Height = 67
            Center = True
          end
        end
      end
    end
    object SctRepPautada: TSctReport
      Left = 506
      Top = 231
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
      OnBeforePrint = SctRepNormalBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 33
      SLeft = 6
      SWidth = 836
      SHeight = 559
      MTop = 231
      MLeft = 506
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage2: TSctGrouppage
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
        PageSetup.RightMargin = 0.25
        PageSetup.TopMargin = 0.4999999999999999
        PageSetup.BottomMargin = 0.4999999999999999
        BorderType = btNone
        Description = 'Ordem de Medi'#231#227'o Pautada'
        CloseDataSet = False
        DataRange = drSingleRecord
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand6
        Foot = SctBand8
        PageHead = PgHdFilial2
        PageFoot = SctBand7
        Order = 1
        object SctLevel6: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar2: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel6
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel7
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsDados
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsEndView
        end
        object SctDataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmOServico_Orcamento.DsOrcamento
        end
        object SctDataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmOServico_Orcamento.DsDetalhe
        end
        object SctDataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFuncionario_Find.DsFind
        end
        object SctDBVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Medicao'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Agenda'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Contato'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Vendedor'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Medidor'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Medicao'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar14: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar15: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar16: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar17: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar18: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar19: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar20: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar21: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar22: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 588
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 588
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsendviewDs_NumeroVar1: TSctDBVar
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsEndView
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente.DsEndereco
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente.DsAgenda
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente.DsContato
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente.DsDuplicata
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 123
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente.DsDados
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 791
          Height = 6
          ParentColor = True
          BandName = 'ReportHeaderBand'
          Updatelevel = SctLevel6
          Visible = False
        end
        object PgHdFilial2: TSctBand
          Left = 0
          Top = 92
          Width = 791
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdFilial2'
          Updatelevel = SctLevel7
          BorderType = btSingle
          object Sctvarlabel11: TSctvarlabel
            Left = 1
            Top = 2
            Width = 375
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = SctDBVar1
          end
          object SctEndereco2: TSctvarlabel
            Left = 430
            Top = 2
            Width = 310
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = '<<< Endere'#231'o >>>'
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 349
          Width = 791
          Height = 618
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          Stretch = True
          object Sctvarlabel82: TSctvarlabel
            Left = 0
            Top = 0
            Width = 46
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Boxes:'
          end
          object SctLine20: TSctLine
            Left = 40
            Top = 0
            Width = 122
            Height = 20
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 162
            Top = 0
            Width = 38
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Inst:'
          end
          object SctLine21: TSctLine
            Left = 188
            Top = 0
            Width = 122
            Height = 20
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 313
            Top = 0
            Width = 51
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Caixilho:'
          end
          object SctLine22: TSctLine
            Left = 357
            Top = 0
            Width = 122
            Height = 20
          end
          object SctLine23: TSctLine
            Left = 575
            Top = 0
            Width = 122
            Height = 20
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 481
            Top = 0
            Width = 102
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Espelho / Tampo:'
          end
          object SctShape5: TSctShape
            Left = 311
            Top = 22
            Width = 350
            Height = 73
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 315
            Top = 22
            Width = 83
            Height = 18
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Observa'#231#245'es:'
          end
          object SctLine24: TSctLine
            Left = 394
            Top = 25
            Width = 262
            Height = 15
          end
          object SctLine25: TSctLine
            Left = 315
            Top = 41
            Width = 341
            Height = 15
          end
          object SctLine26: TSctLine
            Left = 315
            Top = 57
            Width = 341
            Height = 14
          end
          object SctLine27: TSctLine
            Left = 315
            Top = 73
            Width = 341
            Height = 14
          end
          object SctShape6: TSctShape
            Left = 668
            Top = 22
            Width = 73
            Height = 73
            Pen.Width = 2
          end
          object SctLine28: TSctLine
            Left = 668
            Top = 51
            Width = 70
            Height = 9
            Pen.Width = 2
          end
          object SctLine29: TSctLine
            Left = 704
            Top = 22
            Width = 9
            Height = 71
            Pen.Width = 2
            LineType = ltVertical
          end
          object SctLine7: TSctLine
            Left = 0
            Top = 127
            Width = 740
            Height = 20
          end
          object SctLine8: TSctLine
            Left = 0
            Top = 145
            Width = 740
            Height = 20
          end
          object SctLine9: TSctLine
            Left = 0
            Top = 163
            Width = 740
            Height = 20
          end
          object SctLine10: TSctLine
            Left = 0
            Top = 181
            Width = 740
            Height = 20
          end
          object SctLine11: TSctLine
            Left = 0
            Top = 199
            Width = 740
            Height = 20
          end
          object SctLine12: TSctLine
            Left = 0
            Top = 217
            Width = 740
            Height = 20
          end
          object SctLine13: TSctLine
            Left = 0
            Top = 235
            Width = 740
            Height = 20
          end
          object SctLine14: TSctLine
            Left = 0
            Top = 253
            Width = 740
            Height = 20
          end
          object SctLine15: TSctLine
            Left = 0
            Top = 271
            Width = 740
            Height = 20
          end
          object SctLine16: TSctLine
            Left = 0
            Top = 289
            Width = 740
            Height = 20
          end
          object SctLine17: TSctLine
            Left = 0
            Top = 307
            Width = 740
            Height = 20
          end
          object SctLine18: TSctLine
            Left = 0
            Top = 325
            Width = 740
            Height = 20
          end
          object SctLine19: TSctLine
            Left = 0
            Top = 343
            Width = 740
            Height = 20
          end
          object SctLine35: TSctLine
            Left = 0
            Top = 361
            Width = 740
            Height = 20
          end
          object SctLine36: TSctLine
            Left = 0
            Top = 379
            Width = 740
            Height = 20
          end
          object SctLine37: TSctLine
            Left = 0
            Top = 397
            Width = 740
            Height = 20
          end
          object SctLine38: TSctLine
            Left = 0
            Top = 415
            Width = 740
            Height = 20
          end
          object SctLine39: TSctLine
            Left = 0
            Top = 433
            Width = 740
            Height = 20
          end
          object SctLine40: TSctLine
            Left = 0
            Top = 451
            Width = 740
            Height = 20
          end
          object SctLine41: TSctLine
            Left = 0
            Top = 469
            Width = 740
            Height = 20
          end
          object SctLine42: TSctLine
            Left = 0
            Top = 487
            Width = 740
            Height = 20
          end
          object SctLine43: TSctLine
            Left = 0
            Top = 505
            Width = 740
            Height = 20
          end
          object SctLine44: TSctLine
            Left = 0
            Top = 523
            Width = 740
            Height = 20
          end
          object SctLine45: TSctLine
            Left = 0
            Top = 541
            Width = 740
            Height = 20
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 0
            Top = 21
            Width = 46
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Vidro:'
          end
          object SctLine57: TSctLine
            Left = 36
            Top = 21
            Width = 225
            Height = 20
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 0
            Top = 42
            Width = 46
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cor:'
          end
          object SctLine58: TSctLine
            Left = 27
            Top = 42
            Width = 234
            Height = 20
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 0
            Top = 63
            Width = 70
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Espessura:'
          end
          object SctLine5: TSctLine
            Left = 67
            Top = 63
            Width = 194
            Height = 20
          end
          object Sctvarlabel112: TSctvarlabel
            Left = 0
            Top = 84
            Width = 73
            Height = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Fornecedor:'
          end
          object SctLine6: TSctLine
            Left = 67
            Top = 84
            Width = 194
            Height = 20
          end
          object SctLine46: TSctLine
            Left = -1
            Top = 113
            Width = 740
            Height = 15
          end
          object SctLine4: TSctLine
            Left = 0
            Top = 559
            Width = 740
            Height = 20
          end
          object SctLine30: TSctLine
            Left = 0
            Top = 577
            Width = 740
            Height = 20
          end
          object SctLine31: TSctLine
            Left = 0
            Top = 595
            Width = 740
            Height = 20
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 982
          Width = 791
          Height = 21
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          object SctLine3: TSctLine
            Left = 0
            Top = 2
            Width = 742
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 2
            Top = 3
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar1
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 661
            Top = 3
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 708
            Top = 3
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario2: TSctvarlabel
            Left = 400
            Top = 4
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 1018
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          Visible = False
        end
        object SctSubBand4: TSctSubBand
          Left = 0
          Top = 196
          Width = 791
          Height = 53
          ParentColor = True
          BandName = 'PgHdCliente'
          Updatelevel = SctLevel7
          BorderType = btSingle
          Band = PgHdFilial2
          Order = 1
          Above = False
          object Sctvarlabel19: TSctvarlabel
            Left = 2
            Top = 1
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object SctVarCliente2: TSctvarlabel
            Left = 51
            Top = 1
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'preenchido em tempo de execu'#231#227'o'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 576
            Top = 0
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o da O.M.:'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 674
            Top = 0
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar3
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 1
            Top = 34
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Agendado pra:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 78
            Top = 34
            Width = 143
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar4
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 2
            Top = 17
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendedor:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 64
            Top = 17
            Width = 290
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar7
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 411
            Top = 17
            Width = 283
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar8
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 359
            Top = 17
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Medidor:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 272
            Top = 34
            Width = 283
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar6
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 224
            Top = 34
            Width = 44
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Contato:'
          end
        end
        object SctSubBand5: TSctSubBand
          Left = 0
          Top = 264
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'PgHdEndereco'
          Updatelevel = SctLevel7
          Stretch = True
          BorderType = btSingle
          Band = PgHdFilial2
          Order = 2
          Above = False
          object Sctvarlabel31: TSctvarlabel
            Left = 1
            Top = 1
            Width = 53
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 55
            Top = 1
            Width = 338
            Height = 17
            Variable = SctDBVar11
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 504
            Top = 0
            Width = 35
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 540
            Top = 0
            Width = 199
            Height = 17
            Variable = SctDBVar12
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 1
            Top = 18
            Width = 70
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 73
            Top = 18
            Width = 230
            Height = 17
            Variable = SctDBVar13
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 323
            Top = 18
            Width = 25
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 349
            Top = 18
            Width = 67
            Height = 17
            Variable = SctDBVar14
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 418
            Top = 18
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 458
            Top = 18
            Width = 240
            Height = 17
            Variable = SctDBVar15
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 1
            Top = 35
            Width = 54
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 56
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar16
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 144
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar17
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 230
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar18
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 316
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 348
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar19
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 1
            Top = 52
            Width = 192
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es /Ponto de Refer'#234'ncia:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 176
            Top = 52
            Width = 522
            Height = 17
            WrapText = True
            Stretch = True
            Variable = SctDBVar20
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 435
            Top = 35
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 477
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar21
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 565
            Top = 35
            Width = 85
            Height = 17
            Variable = SctDBVar22
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 396
            Top = 1
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 441
            Top = 1
            Width = 61
            Height = 17
            Variable = adodsendviewDs_NumeroVar1
          end
        end
        object SctSubBand7: TSctSubBand
          Left = 0
          Top = 145
          Width = 791
          Height = 36
          ParentColor = True
          BandName = 'PgHdFilialSub'
          Updatelevel = SctLevel7
          BorderType = btSingle
          Band = PgHdFilial2
          Above = False
          object Sctvarlabel53: TSctvarlabel
            Left = -1
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Ordem de Medi'#231#227'o - Pautada'
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 642
            Top = 1
            Width = 31
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 675
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 639
            Top = 18
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 675
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = -1
            Top = 18
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'O.M. N'#186
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 53
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar2
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 127
            Top = 18
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 192
            Top = 18
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar10
          end
        end
        object PgHdFilial_Img2: TSctSubBand
          Left = 0
          Top = 21
          Width = 791
          Height = 56
          ParentColor = True
          BandName = 'PgHdFilial_Img2'
          Updatelevel = SctLevel7
          Stretch = True
          Band = PgHdFilial2
          Above = True
          object SctImgCabecalho2: TSctImageLabel
            Left = 0
            Top = -8
            Width = 742
            Height = 66
            Center = True
          end
        end
      end
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Left = 437
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
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
                Action = ActRepPautada
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
            Action = ActMedido
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActOrcamento
            ImageIndex = 8
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
          end
          item
            Caption = '-'
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActItemIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActItemOrca
            ImageIndex = 8
            ShortCut = 16502
          end
          item
            Action = ActItemEdit
            ImageIndex = 18
            ShortCut = 16499
          end
          item
            Action = ActItemDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActItemDraw
            ImageIndex = 51
            ShortCut = 16503
          end
          item
            Action = ActItemRep
            ImageIndex = 20
            ShortCut = 16501
          end
          item
            Action = ActItemView
            ImageIndex = 36
            ShortCut = 16504
          end>
      end>
    Images = FrmMain.ImgLstMenu
    Left = 686
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
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Relat'#243'rio - O.M. Normal'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActRepPautada: TAction
      Tag = 2
      Category = '2-Database'
      Caption = 'O.M. Pautada'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
    object ActMedido: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Confirmar medi'#231#227'o'
      ImageIndex = 22
      ShortCut = 118
      OnExecute = ActMedidoExecute
    end
    object ActProduzido: TAction
      Category = '2-Database'
      Hint = 'Marcar OS como Produzida'
      ImageIndex = 9
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar O.M.'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Abrir O.M.'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActItemIns: TAction
      Tag = 1
      Category = '3-Itens'
      Hint = 'Incluir novo item'
      ImageIndex = 16
      ShortCut = 16497
    end
    object ActItemEdit: TAction
      Tag = 2
      Category = '3-Itens'
      Hint = 'Alterar o Item'
      ImageIndex = 18
      ShortCut = 16499
    end
    object ActItemDel: TAction
      Category = '3-Itens'
      Hint = 'Excluir o Item'
      ImageIndex = 19
      ShortCut = 16500
    end
    object ActItemRep: TAction
      Tag = 3
      Category = '3-Itens'
      Hint = 'ActItemRep'
      ImageIndex = 20
      ShortCut = 16501
      OnExecute = ActItemRepExecute
    end
    object ActItemOrca: TAction
      Category = '3-Itens'
      Hint = 'Importar item do Or'#231'amento'
      ImageIndex = 8
      ShortCut = 16502
    end
    object ActItemDraw: TAction
      Category = '3-Itens'
      Hint = 'Desenhar'
      ImageIndex = 51
      ShortCut = 16503
    end
    object ActItemView: TAction
      Category = '3-Itens'
      Hint = 'Visualizar o Desenho'
      ImageIndex = 36
      ShortCut = 16504
    end
    object ActLoad: TAction
      Category = '4-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '4-Imagem'
      Hint = 'Apagar imagem'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '4-Imagem'
      Hint = 'Salvar imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '4-Imagem'
      Hint = 'Ajustar Imagem ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '4-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
    object ActOrcamento: TAction
      Category = '2-Database'
      ImageIndex = 8
      OnExecute = ActOrcamentoExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.St_Medicao, OM.Dt_Agenda, OM.Cd_Emitente,'#13#10'  E.Nm_Emitente, OM.Nr_Endereco, EE.Ds_Titulo, OM.Nm_Contato, OM.Cd_Vendedor, '#13#10'  FV.Nm_Funcionario as Nm_Vendedor, OM.Cd_Medidor, FM.Nm_Funcionario as Nm_Medidor,'#13#10'  OM.Mm_Medicao, OM.Im_Cliente, OM.Im_Projeto, OM.Nr_Orcamento,'#13#10'  E.Nm_Fantasia'#13#10#13#10'from'#13#10'  OMedicao OM'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OM.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = OM.Cd_Emitente and'#13#10'  EE.Nr_Endereco = OM.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Funcionario FV'#13#10'on'#13#10'  FV.Cd_Funcionario = OM.Cd_Vendedor'#13#10#13#10'left join'#13#10'  Funcionario FM'#13#10'on'#13#10'  FM.Cd_Funcionario = OM.Cd_Medidor'#13#10#13#10'where'#13#10'  OM.Cd_Filial = :Cd_Filial and'#13#10'  OM.Nr_Medicao = :Nr_Medicao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Medicao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 57
    Top = 411
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Medicao: TIntegerField
      FieldName = 'Nr_Medicao'
    end
    object ADODsDadosDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsDadosSt_Medicao: TStringField
      FieldName = 'St_Medicao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDt_Agenda: TDateTimeField
      FieldName = 'Dt_Agenda'
    end
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsDadosDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsDadosNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsDadosCd_Vendedor: TSmallintField
      FieldName = 'Cd_Vendedor'
    end
    object ADODsDadosNm_Vendedor: TStringField
      FieldName = 'Nm_Vendedor'
      Size = 50
    end
    object ADODsDadosCd_Medidor: TSmallintField
      FieldName = 'Cd_Medidor'
    end
    object ADODsDadosNm_Medidor: TStringField
      FieldName = 'Nm_Medidor'
      Size = 50
    end
    object ADODsDadosMm_Medicao: TMemoField
      FieldName = 'Mm_Medicao'
      BlobType = ftMemo
    end
    object ADODsDadosIm_Cliente: TBlobField
      FieldName = 'Im_Cliente'
    end
    object ADODsDadosIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into OMedicao( Cd_Filial, Nr_Medicao, Dt_Emissao, St_Medicao,'
      '   Dt_Agenda, Cd_Emitente, Nr_Endereco, Nm_Contato, Cd_Vendedor, Cd_Medidor,'
      '   Mm_Medicao, Im_Cliente, Im_Projeto )'
      'values( :Cd_Filial, :Nr_Medicao, :Dt_Emissao, ''''1'''', :Dt_Agenda,'
      '   :Cd_Emitente, :Nr_Endereco, :Nm_Contato, :Cd_Vendedor, :Cd_Medidor,'
      '   :Mm_Medicao, :Im_Cliente, :Im_Projeto )'
    )
    SQLUpdate.Strings = (
      'update'
      '  OMedicao'
      ''
      'set'
      '  Dt_Agenda    = :Dt_Agenda,'
      '  Cd_Emitente  = :Cd_Emitente,'
      '  Nr_Endereco  = :Nr_Endereco,'
      '  Nm_Contato   = :Nm_Contato,'
      '  Cd_Vendedor  = :Cd_Vendedor,'
      '  Cd_Medidor   = :Cd_Medidor,'
      '  Mm_Medicao   = :Mm_Medicao,'
      '  Im_Cliente   = :Im_Cliente,'
      '  Im_Projeto   = :Im_Projeto'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao = :Nr_Medicao'
    )
    SQLDelete.Strings = (
      'delete from'
      '  OMedicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao = :Nr_Medicao'
    )
    SQLOther0.Strings = (
      '-------------------- Inclus'#227'o de funcion'#225'rio na comiss'#227'o'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Funcionario SmallInt,'
      '  @Cd_Medidor SmallInt'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Nr_Orcamento   = :Nr_Orcamento,'
      '  @Cd_Funcionario = :Cd_Funcionario,'
      '  @Cd_Medidor     = :Cd_Medidor'
      ''
      '--------------- Vendedor'
      'insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      'values( @Cd_Filial, @Nr_Orcamento, @Cd_Funcionario )'
      ''
      '--------------- Montador'
      'if @Cd_Medidor is not null begin'
      '  insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      '  values( @Cd_Filial, @Nr_Orcamento, @Cd_Medidor )'
      ''
      'end'
      ''
      '--------------- Altera a OMedicao'
      'update'
      '  OMedicao'
      ''
      'set'
      '  Nr_Orcamento = @Nr_Orcamento'
      ''
      'where'
      '  Cd_Filial  = @Cd_Filial and'
      '  Nr_Medicao = :Nr_Medicao'
    )
    SQLOther1.Strings = (
      '-------------------- Elimina tabelas temporarias'
      'if Object_ID( ''''TempDB..##Comis_Receber'''' ) is not null'
      '  drop table ##Comis_Receber'
      ''
      'if Object_ID( ''''TempDB..##Comis_Faixa'''' ) is not null'
      '  drop table ##Comis_Faixa'
      ''
      'if Object_ID( ''''TempDB..##Comis_Produto'''' ) is not null'
      '  drop table ##Comis_Produto'
      ''
      'if Object_ID( ''''TempDB..##Comis_Apurada'''' ) is not null'
      '  drop table ##Comis_Apurada'
      ''
      'if Object_ID( ''''TempDB..##Comis_ApuradaAux'''' ) is not null'
      '  drop table ##Comis_ApuradaAux'
      ''
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Comissao SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Comissao = :Nr_Comissao,'
      '  @Dt_Start    = :Dt_Start,'
      '  @Dt_End      = :Dt_End'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo pelo Contas a Receber'
      'select'
      '  RH.Cd_Filial, RH.Nr_Receber, RH.Nr_Parcela, RH.Nr_Lancamento, OT.Nr_Orcamento,'
      '  OC.Cd_Funcionario, F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto, RH.Vl_Lancamento, '
      '  Cast( null as Char( 1 ) ) as Fl_Estoque, Cast( Null as Int ) as Nr_Caixa'
      ''
      'into'
      '  ##Comis_Receber'
      ''
      'from'
      '  Receber_Historico RH'
      ''
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RH.Cd_Filial and'
      '  R.Nr_Receber = RH.Nr_Receber and'
      '  R.St_Receber < ''''4''''                    ----- Menos cancelado'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber'
      '  /* Portador */'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = R.Cd_Filial and'
      '  OT.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  RH.Cd_Filial      = @Cd_Filial and'
      '  RH.Dt_Lancamento >= @Dt_Start and'
      '  RH.Dt_Lancamento  < @Dt_End and'
      '  RH.Tp_Lancamento  = ''''2'''' and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial     = RH.Cd_Filial and'
      '      CI.Nr_Receber    = RH.Nr_Receber and'
      '      CI.Nr_Lancamento = RH.Nr_Lancamento'
      '    )'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo pelo Caixa'
      'union'
      'select'
      '  C.Cd_Filial, null, null, null, OT.Nr_Orcamento,'
      '  OC.Cd_Funcionario, F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto, C.Vl_Lancamento, C.Fl_Estoque, C.Nr_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = C.Cd_Filial and'
      '  OT.Nr_Orcamento = C.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  C.Cd_Filial      = @Cd_Filial and'
      '  C.Dt_Lancamento >= @Dt_Start and'
      '  C.Dt_Lancamento  < @Dt_End and'
      '  C.Tp_Lancamento  = ''''1'''' and'
      '  /* Historico */'
      ''
      '  ----- Exclui os lan'#231'amentos estornados'
      '  not exists('
      '    select'
      '      CE.Cd_Filial'
      ''
      '    from'
      '      Caixa CE'
      ''
      '    where'
      '      CE.Cd_Filial  = C.Cd_Filial and'
      '      CE.Fl_Estoque = C.Fl_Estoque and'
      '      CE.Nr_Estorno = C.Nr_Lancamento'
      '    ) and  '
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao CO'
      '    on'
      '      CO.Cd_Filial   = CI.Cd_Filial and'
      '      CO.Nr_Comissao = CI.Nr_Comissao and'
      '      CO.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial     = C.Cd_Filial and'
      '      CI.Fl_Estoque    = C.Fl_Estoque and'
      '      CI.Nr_Lancamento = C.Nr_Lancamento'
      '    )'
      ''
      '-------------------- Verifica a comiss'#227'o do Item'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_Produto, OI.Vl_Venda as Vl_Apurado,'
      '  CO.Cd_Funcionario, P.Pr_Comissao as Pr_Produto,'
      '  FP.Pr_Comissao as Pr_FuncProduto,'
      ''
      '  -------------------- Faixa do Funcionario'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Faixa FF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FF.Cd_Funcionario = CO.Cd_Funcionario'
      '    ) as Cd_Faixa_Funcionario,'
      ''
      '    -------------------- Faixa do Produto'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Produto_Faixa FPF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FPF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FPF.Cd_Funcionario = CO.Cd_Funcionario and'
      '      FPF.Cd_Produto     = OI.Cd_Produto'
      '    ) as Cd_Faixa_Produto'
      ''
      'into'
      '  ##Comis_Faixa'
      ''
      'from'
      '  ##Comis_Receber CO'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = CO.Cd_Filial and'
      '  OI.Nr_Orcamento  = CO.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OI.Cd_Filial and'
      '  O.Nr_Orcamento = OI.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = O.Cd_Funcionario and'
      '  FP.Cd_Produto     = OI.Cd_Produto'
      ''
      '-------------------- Atribui valores das faixas ( Comissao, Desconto e Perda )'
      'select distinct'
      '  TCF.Cd_Filial, TCF.Nr_Orcamento, TCF.Cd_Produto, TCF.Vl_Apurado,'
      '  CO.Cd_Funcionario, TCF.Cd_Faixa_Funcionario, TCF.Cd_Faixa_Produto,'
      ''
      '  ---------- 1'#186' Produto-Faixa 2'#186' Funcionario-Faixa 3'#186' Funcionario-Produto'
      '  ---------- 4'#186' Funcionario   5'#186' Produto'
      '  Coalesce( FP.Pr_Comissao, FF.Pr_Comissao, TCF.Pr_FuncProduto, CO.Pr_Funcionario, TCF.Pr_Produto, 0.0 ) as Pr_Comissao,'
      '  Coalesce( FP.Pr_Desconto, FF.Pr_Desconto ) as Pr_Desc_Faixa,'
      '  Coalesce( FP.Pr_Perda, FF.Pr_Perda ) as Pr_Perda_Faixa'
      ''
      'into'
      '  ##Comis_Produto'
      ''
      'from'
      '  ##Comis_Faixa TCF'
      ''
      'inner join'
      '  ##Comis_Receber CO'
      'on'
      '  CO.Cd_Filial    = TCF.Cd_Filial and'
      '  CO.Nr_Orcamento = TCF.Nr_Orcamento'
      ''
      'left join'
      '  Comissao_Faixa FP'
      'on'
      '  FP.Cd_Faixa = TCF.Cd_Faixa_Produto'
      ''
      'left join'
      '  Comissao_Faixa FF'
      'on'
      '  FF.Cd_Faixa = TCF.Cd_Faixa_Funcionario'
      ''
      '-------------------- Calcula a comiss'#227'o por Or'#231'amento'
      'select'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento, CO.Nr_Receber,'
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa,'
      '  sum( CPA.Vl_Apurado ) as Vl_Apurado,'
      '  sum( CPA.Vl_Apurado / 100.0 *'
      '     ('
      '     case when ( CO.Pr_Desconto = 0.0 ) or ( CPA.Pr_Desc_Faixa is null and CPA.Pr_Perda_Faixa is null )  then CPA.Pr_Comissao'
      '     else'
      '       ('
      '       case'
      '         when ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / CPA.Pr_Desc_Faixa) * CPA.Pr_Perda_Faixa ) / 100.0 ) ) > CPA.Pr_Comissao then CPA.Pr_Comissao'
      '         else ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / CPA.Pr_Desc_Faixa) * CPA.Pr_Perda_Faixa ) / 100.0 ) )'
      '       end'
      '       )'
      '     end'
      '     ) ) as Vl_Comissionado'
      ''
      'into'
      '  ##Comis_ApuradaAux'
      ''
      'from'
      '  ##Comis_Produto CPA'
      ''
      'inner join'
      '  ##Comis_Receber CO'
      'on'
      '  CO.Cd_Filial      = CPA.Cd_Filial and'
      '  CO.Nr_Orcamento   = CPA.Nr_Orcamento and'
      '  CO.Cd_Funcionario = CPA.Cd_Funcionario'
      ''
      'group by'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento, CO.Nr_Receber,'
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa'
      ''
      '-------------------- Calculo da rela'#231#227'o proporcional ao recebido'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado,'
      '  Cast( Null as SmallInt ) as Nr_Item'
      ''
      'into'
      '  ##Comis_Apurada'
      ''
      'from'
      '  ##Comis_ApuradaAux CAA'
      ''
      'inner join'
      '  ##Comis_Receber CR'
      'on'
      '  CR.Cd_Filial     = CAA.Cd_Filial and'
      '  CR.Nr_Receber    = CAA.Nr_Receber and'
      '  CR.Nr_Parcela    = CAA.Nr_Parcela and'
      '  CR.Nr_Lancamento = CAA.Nr_Lancamento'
      ''
      'insert into ##Comis_Apurada'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado, '
      '  null as Nr_Item'
      ''
      'from'
      '  ##Comis_ApuradaAux CAA'
      ''
      'inner join'
      '  ##Comis_Receber CR'
      'on'
      '  CR.Cd_Filial = CAA.Cd_Filial and'
      '  CR.Nr_Caixa  = CAA.Nr_Caixa'
      ''
      '-------------------- Atualiza o numero do item'
      'update'
      '  ##Comis_Apurada'
      ''
      'set'
      '  Nr_Item ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from    '
      '      ##Comis_Apurada CA'
      ''
      '    where'
      '      CA.Cd_Filial      = ##Comis_Apurada.Cd_Filial and'
      '      CA.Cd_Funcionario = ##Comis_Apurada.Cd_Funcionario and'
      '      ('
      '      Cast( Coalesce( CA.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Caixa, 0 ) as Char( 7 ) ) <='
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Caixa, 0 ) as Char( 7 ) )'
      '      )'
      '    )'
      ''
      '-------------------- Funcionarios comissionados'
      'insert into Comissao_Funcionario( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Vl_Apurado, Vl_Comissionado )'
      'select'
      '  Cd_Filial, @Nr_Comissao, Cd_Funcionario, sum( Vl_Apurado ), sum( Vl_Comissionado )'
      ''
      'from'
      '  ##Comis_Apurada'
      ''
      'where'
      '  Vl_Comissionado is not null and'
      '  Vl_Comissionado > 0'
      ''
      'group by'
      '  Cd_Filial, Cd_Funcionario'
      ''
      '-------------------- Itens calculados'
      'insert into Comissao_Item( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Nr_Receber, Nr_Parcela, Nr_Lancamento, Nr_Caixa, Vl_Apurado,'
      '  Vl_Comissionado, Nr_Item )'
      'select'
      '  CA.Cd_Filial, @Nr_Comissao, CA.Cd_Funcionario, CA.Nr_Receber, CA.Nr_Parcela,'
      '  CA.Nr_Lancamento, CA.Nr_Caixa, sum( CA.Vl_Apurado ), sum( CA.Vl_Comissionado ), CA.Nr_Item'
      ''
      'from'
      '  ##Comis_Apurada CA'
      ''
      'where'
      '  CA.Vl_Comissionado is not null and'
      '  CA.Vl_Comissionado > 0'
      ''
      'group by'
      '  CA.Cd_Filial, CA.Cd_Funcionario, CA.Nr_Receber, CA.Nr_Parcela,'
      '  CA.Nr_Lancamento, CA.Nr_Caixa, CA.Nr_Item'
      ''
      '-------------------- Totais da comiss'#227'o'
      'update'
      '  Comissao'
      ''
      'set'
      '  St_Comissao = ''''2'''','
      '  Vl_Apurado  ='
      '    ('
      '    select'
      '      sum( Vl_Apurado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    ),'
      ''
      '  Vl_Comissionado ='
      '    ('
      '    select'
      '      sum( Vl_Comissionado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    )'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Muda Situa'#231#227'o da OM'
      'update'
      '  OMedicao'
      ''
      'set'
      '  St_Medicao    = :St_Medicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao = :Nr_Medicao'
    )
    SQLOther5.Strings = (
      '-------------------- Excluir itens da O.S.'
      'delete from'
      '  OServico_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther6.Strings = (
      '-------------------- Salvar o desenho no banco'
      'update'
      '  OServico_Item'
      ''
      'set'
      '  Im_Item   = :Im_Item,'
      '  Im_Draw   = :Im_Draw,'
      '  Nr_Width  = :Nr_Width,'
      '  Nr_Height = :Nr_Height'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
      ''
    )
    Left = 87
    Top = 411
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Prior'#13#10'select top 1'#13#10'  Nr_Medicao'#13#10#13#10'from'#13#10'  OMedicao'#13#10#13#10'where'#13#10'  Cd_Filial   = :Cd_Filial and'#13#10'  Nr_Medicao= :Nr_Medicao'#13#10#13#10'order by'#13#10'  Nr_Medicao desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Medicao'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Medicao ) + 1 as Nr_Medicao'
      ''
      'from'
      '  OMedicao A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Medicao'
      ''
      'from'
      '  OMedicao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Medicao'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Medicao'
      ''
      'from'
      '  OMedicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao < :Nr_Medicao'
      ''
      'order by'
      '  Nr_Medicao desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Medicao'
      ''
      'from'
      '  OMedicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Medicao > :Nr_Medicao'
      ''
      'order by'
      '  Nr_Medicao'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Medicao'
      ''
      'from'
      '  OMedicao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Medicao desc'
    )
    Left = 117
    Top = 411
    object ADODsNavegarNr_Medicao: TIntegerField
      FieldName = 'Nr_Medicao'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 29
    Top = 411
  end
  object ADODsEndView: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,'#13#10'  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,'#13#10'  B.Nm_Cidade + '''' - '''' + B.Sg_Estado  as Dp_Cidade,'#13#10'  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Nr_Celular_1,'#13#10'  A.Nr_Celular_2, A.Mm_Observacao, '#13#10'  Cast( A.Cd_Rota as VarChar ) + '''' - '''' + C.Ds_Rota as Dp_Rota,'#13#10'  A.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'inner join'#13#10'  Cidade B'#13#10'on'#13#10'  B.Cd_Cidade = A.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota C'#13#10'on'#13#10'  C.Cd_Rota = A.Cd_Rota'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  A.Nr_Endereco = :Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 179
    Top = 411
    object ADODsEndViewCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEndViewNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEndViewDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEndViewDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEndViewNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEndViewDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEndViewNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEndViewCd_Cidade: TSmallintField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEndViewDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsEndViewNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsEndViewDp_Rota: TStringField
      FieldName = 'Dp_Rota'
      ReadOnly = True
      Size = 83
    end
    object ADODsEndViewNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsEndViewNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 11
    end
    object ADODsEndViewDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsEndView: TDataSource
    AutoEdit = False
    DataSet = ADODsEndView
    Left = 149
    Top = 411
  end
end
