object FrmContato_View: TFrmContato_View
  Left = 256
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contatos'
  ClientHeight = 522
  ClientWidth = 926
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
    Height = 522
    Align = alLeft
    TabOrder = 1
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 905
    Height = 522
    Align = alClient
    ParentColor = True
    TabOrder = 2
    object BvlSeparator: TBevel
      Left = 2
      Top = 489
      Width = 899
      Height = 3
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 44
      Height = 13
      Caption = 'Emitente:'
    end
    object SbEmitente: TSpeedButton
      Left = 60
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label13: TLabel
      Left = 411
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label1: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Por data de:'
    end
    object Label2: TLabel
      Left = 104
      Top = 38
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label15: TLabel
      Left = 293
      Top = 37
      Width = 73
      Height = 13
      Caption = 'Hora (Per'#237'odo):'
    end
    object Label4: TLabel
      Left = 5
      Top = 74
      Width = 55
      Height = 13
      Caption = 'Ocorr'#234'ncia:'
    end
    object Label3: TLabel
      Left = 309
      Top = 73
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 372
      Top = 37
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object SbUsuario: TSpeedButton
      Left = 482
      Top = 51
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbUsuarioClick
    end
    object Label7: TLabel
      Left = 407
      Top = 72
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 467
      Top = 86
      Width = 23
      Height = 19
      Hint = 'Seleciona Venda'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object SbOpen: TSpeedButton
      Left = 814
      Top = 87
      Width = 85
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label6: TLabel
      Left = 5
      Top = 114
      Width = 45
      Height = 13
      Caption = 'Contatos:'
    end
    object Label8: TLabel
      Left = 5
      Top = 348
      Width = 55
      Height = 13
      Caption = 'Ocorr'#234'ncia:'
    end
    object Label9: TLabel
      Left = 265
      Top = 348
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label11: TLabel
      Left = 363
      Top = 348
      Width = 69
      Height = 13
      Caption = 'Agendamento:'
    end
    object Label12: TLabel
      Left = 462
      Top = 348
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label27: TLabel
      Left = 574
      Top = 348
      Width = 56
      Height = 13
      Caption = 'Telefone(s):'
    end
    object Label14: TLabel
      Left = 5
      Top = 383
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object BvlSeparator_2: TBevel
      Left = 2
      Top = 111
      Width = 899
      Height = 5
      Shape = bsTopLine
    end
    object Label17: TLabel
      Left = 509
      Top = 37
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object Label16: TLabel
      Left = 756
      Top = 347
      Width = 35
      Height = 13
      Caption = 'Celular:'
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 54
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 84
      Top = 17
      Width = 325
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtNm_Contato: TEdit
      Left = 411
      Top = 17
      Width = 245
      Height = 19
      MaxLength = 50
      TabOrder = 2
    end
    object CbData: TComboBox
      Left = 5
      Top = 51
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Contato'
        'Agendamento'
      )
    end
    object EdtDt_Start: TDateEdit
      Left = 104
      Top = 51
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1606 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtDt_End: TDateEdit
      Left = 199
      Top = 51
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1606 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
    end
    object EdtHr_Start: TMaskEdit
      Left = 293
      Top = 51
      Width = 35
      Height = 19
      AutoSize = False
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 6
    end
    object EdtHr_End: TMaskEdit
      Left = 332
      Top = 51
      Width = 35
      Height = 19
      AutoSize = False
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 7
    end
    object CbOcorrencia: TComboBox
      Left = 5
      Top = 87
      Width = 302
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 9
    end
    object CbSituacao: TComboBox
      Left = 309
      Top = 86
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'Aberto'
        'Encerrado'
        'Ambos'
      )
    end
    object EdtCd_Usuario: TEdit
      Left = 372
      Top = 51
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 8
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 2
      Left = 407
      Top = 86
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object DbGContato: TDBGrid
      Left = 5
      Top = 128
      Width = 895
      Height = 219
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopMenContato
      ReadOnly = True
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGContatoDblClick
      OnEnter = DbGContatoEnter
      OnExit = DbGContatoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Cadastro'
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 150
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'dt_novocontato'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Contato'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Usuario'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DbEdtDs_Ocorrencia: TDBEdit
      Left = 5
      Top = 362
      Width = 254
      Height = 19
      TabStop = False
      DataField = 'Dp_Ocorrencia'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtDt_Contato: TDBEdit
      Left = 265
      Top = 362
      Width = 95
      Height = 19
      TabStop = False
      DataField = 'Dt_Contato'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object EdtDt_NovoContato: TDBEdit
      Left = 363
      Top = 362
      Width = 96
      Height = 19
      TabStop = False
      DataField = 'Dt_NovoContato'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object DbEdtCd_Usuario: TDBEdit
      Left = 462
      Top = 362
      Width = 110
      Height = 19
      TabStop = False
      DataField = 'Dp_Usuario'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object DbEdtNr_Telefone_1: TDBEdit
      Left = 574
      Top = 362
      Width = 90
      Height = 19
      DataField = 'Nr_Telefone_1'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object DbEdtNr_Telefone_2: TDBEdit
      Left = 665
      Top = 362
      Width = 90
      Height = 19
      DataField = 'Nr_Telefone_2'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object DbEdtNr_Celular_1: TDBEdit
      Left = 756
      Top = 362
      Width = 90
      Height = 19
      DataField = 'Nr_Celular_1'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object DbMObservacao: TDBMemo
      Left = 5
      Top = 397
      Width = 894
      Height = 89
      DataField = 'Mm_Observacao'
      DataSource = DsContato
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 20
    end
    object CkBReport: TCheckBox
      Left = 3
      Top = 498
      Width = 125
      Height = 17
      Caption = 'Relat'#243'rio detalhado'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object BitBtnReport: TBitBtn
      Left = 728
      Top = 493
      Width = 87
      Height = 27
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 816
      Top = 493
      Width = 87
      Height = 27
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 23
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object CbOrdem: TComboBox
      Left = 511
      Top = 51
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 24
      Items.Strings = (
        'Alfabetica'
        'C'#243'digo'
        'Contato'
        'Agendamento'
      )
    end
  end
  object SctReport: TSctReport
    Left = 330
    Top = 464
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 50
    SLeft = 0
    SWidth = 833
    SHeight = 426
    MTop = 464
    MLeft = 330
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
      PageSetup.Height = 11.6929133858268
      PageSetup.Width = 8.26771653543307
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.3
      PageSetup.RightMargin = 0.3
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Rela'#231#227'o de Contatos Efetuados'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctDetailVendaPeriodo
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsContato
      Order = 1
      object SctLevel8: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel9: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel10: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel11: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel12: TSctLevel
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
        UpdateLevel = SctLevel8
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar2: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel9
        AutoVar = True
        ID = vidPageVar
      end
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsContato
      end
      object adodscontatoCd_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Emitente'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDt_ContatoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Contato'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoNm_ContatoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Contato'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoCd_UsuarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Usuario'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDp_OcorrenciaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Ocorrencia'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDp_ContatoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Contato'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfCd_Emitente: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodscontatoCd_EmitenteVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsEndereco
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsContato
      end
      object adodscontatoNr_Telefone_1Var: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_1'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialDp_FilialVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmOrcamento.DsProduto
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsDuplicata
      end
      object adodscontatomm_observacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmOrcamento.DsProdSelect
      end
      object DataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsDados
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsContato
      end
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsAgenda
      end
      object adodscontatoDp_AgendamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Agendamento'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente.DsCredito
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConexao
      end
      object adodscontatonr_orcamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_orcamento'
        DataSource = DsContato
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 0
        Width = 786
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel8
        Visible = False
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 22
        Width = 786
        Height = 44
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel9
        object SctVendaPeriodo: TSctvarlabel
          Left = 2
          Top = 2
          Width = 289
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Rela'#231#227'o de Contatos Efetuados'
        end
        object Sctvarlabel105: TSctvarlabel
          Left = 633
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel106: TSctvarlabel
          Left = 671
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel114: TSctvarlabel
          Left = 633
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel115: TSctvarlabel
          Left = 671
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine8: TSctLine
          Left = 1
          Top = 38
          Width = 734
          Height = 6
        end
      end
      object SctDetailVendaPeriodo: TSctBand
        Left = 0
        Top = 117
        Width = 786
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Detail'
        Updatelevel = SctLevel10
        Stretch = True
        object Sctvarlabel1: TSctvarlabel
          Left = 1
          Top = 1
          Width = 265
          Height = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoDp_EmitenteVar
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 272
          Top = 1
          Width = 114
          Height = 16
          WrapText = True
          Stretch = True
          Variable = adodscontatoNm_ContatoVar
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 391
          Top = 1
          Width = 77
          Height = 16
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodscontatoDt_ContatoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 464
          Top = 1
          Width = 108
          Height = 16
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodscontatoDp_AgendamentoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 665
          Top = 1
          Width = 71
          Height = 16
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodscontatoDp_ContatoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 570
          Top = 1
          Width = 100
          Height = 16
          WrapText = True
          Stretch = True
          Variable = adodscontatoNr_Telefone_1Var
          DataFormat.DisplayFormat = '(##) ####-####;0; '
          DataFormat.SuppressNulls = True
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 222
        Width = 786
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel11
        object SctLine9: TSctLine
          Left = 1
          Top = 1
          Width = 734
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel124: TSctvarlabel
          Left = 1
          Top = 4
          Width = 460
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar
        end
        object Sctvarlabel125: TSctvarlabel
          Left = 655
          Top = 4
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel126: TSctvarlabel
          Left = 701
          Top = 4
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar2
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object SctBand12: TSctBand
        Left = 0
        Top = 260
        Width = 786
        Height = 22
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        object Sctvarlabel157: TSctvarlabel
          Left = 537
          Top = 3
          Width = 110
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total de Contatos:'
        end
        object SctLine11: TSctLine
          Left = 535
          Top = 1
          Width = 200
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 670
          Top = 3
          Width = 65
          Height = 17
          TotalVariable = TotalOfCd_Emitente
          TotalType = ttCount
          DataFormat.DisplayFormat = '#,##0'
          DataFormat.Digits = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object PgHdPedido: TSctSubBand
        Left = 0
        Top = 81
        Width = 786
        Height = 21
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'PgHdPedido'
        Updatelevel = SctLevel9
        Band = SctBand9
        Above = False
        object Sctvarlabel121: TSctvarlabel
          Left = 1
          Top = 2
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Emitente'
        end
        object Sctvarlabel122: TSctvarlabel
          Left = 272
          Top = 2
          Width = 89
          Height = 17
          Caption = 'Nome do Contato'
        end
        object Sctvarlabel133: TSctvarlabel
          Left = 391
          Top = 2
          Width = 71
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Contato'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 464
          Top = 2
          Width = 108
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Agendamento'
        end
        object SctLine1: TSctLine
          Left = 1
          Top = 15
          Width = 734
          Height = 6
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 665
          Top = 2
          Width = 71
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Situa'#231#227'o'
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 570
          Top = 2
          Width = 90
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Telefone'
        end
      end
      object SctSubBandCompleta: TSctSubBand
        Left = 0
        Top = 151
        Width = 786
        Height = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctSubBandCompleta'
        Updatelevel = SctLevel10
        Stretch = True
        Band = SctDetailVendaPeriodo
        Above = False
        object Sctvarlabel8: TSctvarlabel
          Left = 1
          Top = 0
          Width = 60
          Height = 17
          Caption = 'Ocorr'#234'ncia:'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 63
          Top = 0
          Width = 356
          Height = 17
          Variable = adodscontatoDp_OcorrenciaVar
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 425
          Top = 0
          Width = 43
          Height = 17
          Caption = 'Usu'#225'rio:'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 470
          Top = 0
          Width = 110
          Height = 17
          Variable = adodscontatoCd_UsuarioVar
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 621
          Top = 0
          Width = 54
          Height = 17
          Caption = 'Venda N'#186':'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 675
          Top = 0
          Width = 62
          Height = 17
          Variable = adodscontatonr_orcamentoVar
          DataFormat.DisplayFormat = '#,##0'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 1
          Top = 15
          Width = 90
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 72
          Top = 15
          Width = 553
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodscontatomm_observacaoVar
        end
      end
      object SctSubBandCompleta_1: TSctSubBand
        Left = 0
        Top = 199
        Width = 786
        Height = 8
        ParentColor = True
        BandName = 'SctSubBandCompleta_1'
        Updatelevel = SctLevel10
        Band = SctDetailVendaPeriodo
        Order = 1
        Above = False
        object SctLine2: TSctLine
          Left = 1
          Top = 1
          Width = 734
          Height = 3
          AlignVertical = laTop
        end
      end
    end
  end
  object ADODsContato: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsContatoCalcFields
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'#13#10'  C.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'#13#10'  A.Mm_Observacao, A.Cd_Filial, A.Nr_Orcamento,'#13#10'  Cast( A.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + B.Nm_Emitente as Dp_Emitente,'#13#10'  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + C.Ds_Ocorrencia as Dp_Ocorrencia,'#13#10'    case A.St_Contato'#13#10'      when ''''1'''' then ''''Aberto'''#13#10'      when ''''2'''' then ''''Encerrado'''#13#10'    end as Dp_Contato,'#13#10'  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX, B.Nm_Fantasia,'#13#10'  D.Nr_Celular_1'#13#10#13#10'from'#13#10'  Contato A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia C'#13#10'on'#13#10'  C.Cd_Ocorrencia = A.Cd_Ocorrencia'#13#10#13#10'left join'#13#10'  Emitente_Endereco D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente and'#13#10'  D.Nr_Endereco = B.Nr_Endereco'
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  A.Cd_Emitente, A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'
      '  C.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'
      '  A.Mm_Observacao, A.Cd_Filial, A.Nr_Orcamento,'
      '  Cast( A.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + B.Nm_Emitente as Dp_Emitente,'
      '  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + C.Ds_Ocorrencia as Dp_Ocorrencia,'
      '    case A.St_Contato'
      '      when ''''1'''' then ''''Aberto'''
      '      when ''''2'''' then ''''Encerrado'''
      '    end as Dp_Contato,'
      '  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX, B.Nm_Fantasia,'
      '  D.Nr_Celular_1'
      ''
      'from'
      '  Contato A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Contato_Ocorrencia C'
      'on'
      '  C.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'left join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente and'
      '  D.Nr_Endereco = B.Nr_Endereco'
    )
    Left = 119
    Top = 227
    object ADODsContatoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsContatoNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsContatoDt_Contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Contato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatoNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsContatoDs_Ocorrencia: TStringField
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsContatoSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsContatoCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsContatoDp_Emitente: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 90
    end
    object ADODsContatoDp_Ocorrencia: TStringField
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 58
    end
    object ADODsContatoDp_Contato: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Dp_Contato'
      ReadOnly = True
      Size = 9
    end
    object ADODsContatoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoDp_Telefone: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Telefone'
      Size = 80
      Calculated = True
    end
    object ADODsContatomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsContatocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsContatonr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsContatoDp_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Orcamento'
      Calculated = True
    end
    object ADODsContatodt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object ADODsContatoNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsContatoDp_Cadastro: TStringField
      DisplayLabel = 'Emitente'
      FieldKind = fkCalculated
      FieldName = 'Dp_Cadastro'
      Size = 90
      Calculated = True
    end
    object ADODsContatoDp_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 15
      Calculated = True
    end
    object ADODsContatoDp_Agendamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Agendamento'
      Calculated = True
    end
    object ADODsContatoNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      EditMask = '(##) #####-#####;0; '
      Size = 11
    end
  end
  object DsContato: TDataSource
    AutoEdit = False
    DataSet = ADODsContato
    Left = 89
    Top = 227
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Emitente'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Size = -1
        Value = nil?
      end>
    Left = 57
    Top = 227
    object ADODsOrcamentoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
  end
  object PopMenContato: TPopupMenu
    OnPopup = PopMenContatoPopup
    Left = 525
    Top = 194
    object ItemMenEmitente: TMenuItem
      Caption = 'Emitente'
      OnClick = ItemMenEmitenteClick
    end
    object ItemMenOrcamento: TMenuItem
      Caption = 'Or'#231'amento'
      OnClick = ItemMenOrcamentoClick
    end
  end
end
