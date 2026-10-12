object FrmEmitente_Report: TFrmEmitente_Report
  Left = 158
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Emitentes'
  ClientHeight = 332
  ClientWidth = 714
  Color = clWhite
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
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 693
    Height = 332
    Align = alClient
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    object SbStart: TSpeedButton
      Tag = 1
      Left = 66
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbStartClick
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 74
      Height = 13
      Caption = 'Emitente Inicial:'
    end
    object SbEnd: TSpeedButton
      Tag = 2
      Left = 66
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Seleciona Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbStartClick
    end
    object Label2: TLabel
      Left = 5
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Emitente Final:'
    end
    object Label4: TLabel
      Left = 405
      Top = 246
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object Label5: TLabel
      Left = 5
      Top = 77
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 92
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 129
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label46: TLabel
      Left = 5
      Top = 114
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 302
      Width = 685
      Height = 5
      Shape = bsTopLine
    end
    object SbSubGrupo: TSpeedButton
      Left = 382
      Top = 92
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 342
      Top = 76
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbFuncionario: TSpeedButton
      Left = 382
      Top = 129
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
    object Label6: TLabel
      Left = 342
      Top = 114
      Width = 86
      Height = 13
      Caption = 'Vendedor Padr'#227'o:'
    end
    object Label7: TLabel
      Left = 5
      Top = 149
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 46
      Top = 164
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object LblPagamento: TLabel
      Left = 333
      Top = 149
      Width = 150
      Height = 13
      Caption = 'Dia inicial e final de pagamento:'
    end
    object LblEMailCob: TLabel
      Left = 485
      Top = 149
      Width = 187
      Height = 13
      Caption = 'Imprimir os itens de E-Mail de cobran'#231'a:'
    end
    object Label8: TLabel
      Left = 581
      Top = 246
      Width = 84
      Height = 13
      Caption = 'Tipo do Relat'#243'rio:'
    end
    object EdtCd_Start: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_StartExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_Start: TEdit
      Left = 95
      Top = 18
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
      TabOrder = 1
    end
    object EdtCd_End: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_StartExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_End: TEdit
      Left = 90
      Top = 55
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
      TabOrder = 3
    end
    object GrBPeriodo: TGroupBox
      Left = 402
      Top = 186
      Width = 258
      Height = 58
      Caption = ' Per'#237'odo: '
      TabOrder = 18
      object EdtDt_Start: TDateEdit
        Left = 7
        Top = 33
        Width = 89
        Height = 19
        CheckOnExit = True
        DialogTitle = 'Selecione a Data'
        GlyphKind = gkCustom
        Glyph.Data = {binary 390 bytes}
        NumGlyphs = 1
        StartOfWeek = Sun
        TabOrder = 3
      end
      object EdtDt_End: TDateEdit
        Left = 102
        Top = 33
        Width = 89
        Height = 19
        CheckOnExit = True
        DialogTitle = 'Selecione a Data'
        GlyphKind = gkCustom
        Glyph.Data = {binary 390 bytes}
        NumGlyphs = 1
        StartOfWeek = Sun
        TabOrder = 4
      end
      object RdBtnCadastrado: TRadioButton
        Left = 7
        Top = 15
        Width = 82
        Height = 17
        Caption = 'Cadastrados'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RdBtnAlterado: TRadioButton
        Left = 102
        Top = 15
        Width = 66
        Height = 17
        Caption = 'Alterados'
        TabOrder = 1
      end
      object RdBtnAniversario: TRadioButton
        Left = 181
        Top = 15
        Width = 74
        Height = 17
        Caption = 'Anivers'#225'rio'
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 187
      Width = 391
      Height = 111
      Caption = ' Endere'#231'o: '
      TabOrder = 17
      object Label3: TLabel
        Left = 7
        Top = 32
        Width = 36
        Height = 13
        Caption = 'Estado:'
      end
      object SbEstado: TSpeedButton
        Left = 33
        Top = 47
        Width = 23
        Height = 19
        Hint = 'Seleciona Estado'
        Flat = True
        Glyph.Data = {binary 1430 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbEstadoClick
      end
      object SbCidade: TSpeedButton
        Left = 57
        Top = 86
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
      object Label1: TLabel
        Left = 7
        Top = 71
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label26: TLabel
        Left = 313
        Top = 32
        Width = 24
        Height = 13
        Caption = 'CEP:'
      end
      object EdtSg_Estado: TEdit
        Left = 7
        Top = 47
        Width = 26
        Height = 19
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 2
        OnExit = EdtSg_EstadoExit
        OnKeyDown = EdtCd_StartKeyDown
      end
      object EdtNm_Estado: TEdit
        Left = 57
        Top = 47
        Width = 250
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
        TabOrder = 3
      end
      object EdtCd_Cidade: TCurrencyEdit
        Tag = 5
        Left = 7
        Top = 86
        Width = 50
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 5
        OnExit = EdtCd_CidadeExit
        OnKeyDown = EdtCd_StartKeyDown
      end
      object EdtNm_Cidade: TEdit
        Left = 81
        Top = 86
        Width = 250
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
        TabOrder = 6
      end
      object EdtNr_CEP: TMaskEdit
        Left = 313
        Top = 47
        Width = 72
        Height = 19
        AutoSize = False
        EditMask = '##.###-###;0; '
        MaxLength = 10
        TabOrder = 4
      end
      object RdBtnEndereco: TRadioButton
        Left = 7
        Top = 15
        Width = 82
        Height = 17
        Caption = 'Endere'#231'o'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RdBtnEndCobranca: TRadioButton
        Left = 105
        Top = 15
        Width = 135
        Height = 17
        Caption = 'Endere'#231'o de Cobran'#231'a'
        TabOrder = 1
      end
    end
    object CbOrdem: TComboBox
      Left = 405
      Top = 260
      Width = 173
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 5
      ParentCtl3D = False
      TabOrder = 19
      Text = 'Dia de Pagamento / Alfabetica'
      Items.Strings = (
        'Alfabetica'
        'C'#243'digo'
        'Estado / Cidade / Alfabetica'
        'Estado / Cidade / C'#243'digo'
        'Limite de Cr'#233'dito'
        'Dia de Pagamento / Alfabetica'
      )
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 92
      Width = 268
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
      TabOrder = 5
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 129
      Width = 268
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
      TabOrder = 9
    end
    object CkBIncluir: TCheckBox
      Left = 586
      Top = 283
      Width = 95
      Height = 17
      Caption = 'Incluir Contatos'
      Enabled = False
      TabOrder = 21
    end
    object BitBtnReport: TBitBtn
      Left = 515
      Top = 305
      Width = 87
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 646 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 603
      Top = 305
      Width = 87
      Height = 25
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 6
      Left = 342
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 405
      Top = 92
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 7
      Left = 342
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 405
      Top = 129
      Width = 268
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
      TabOrder = 11
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 8
      Left = 5
      Top = 164
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 68
      Top = 164
      Width = 260
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtNr_PagStart: TCurrencyEdit
      Tag = 7
      Left = 333
      Top = 164
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 14
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object CbEMailCob: TComboBox
      Left = 485
      Top = 164
      Width = 62
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 16
      Items.Strings = (
        'Ambos'
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNr_PagEnd: TCurrencyEdit
      Tag = 7
      Left = 376
      Top = 164
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 15
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_StartKeyDown
    end
    object CbTpReport: TComboBox
      Left = 581
      Top = 260
      Width = 104
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 3
      ParentCtl3D = False
      TabOrder = 24
      Text = 'Lista com E-Mail'
      OnChange = CbTpReportChange
      Items.Strings = (
        'Lista'
        'Completa'
        'Etiqueta'
        'Lista com E-Mail'
      )
    end
    object CkBZebrado: TCheckBox
      Left = 406
      Top = 283
      Width = 95
      Height = 17
      Caption = 'Zebrado'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 25
    end
    object SctRepEtiqueta: TSctReport
      Left = 476
      Top = 12
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEtiquetaBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 1020
      SHeight = 664
      MTop = 12
      MLeft = 476
      SAlign = alNone
      Version = vAce1_0
      object ReportPage_Cliente: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psLegal
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 14.0
        PageSetup.Width = 8.5
        PageSetup.PrintQuality = pqCustom
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.25
        PageSetup.RightMargin = 0
        PageSetup.BottomMargin = 3.0
        BorderType = btNone
        Description = 'Etiqueta de Clientes'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = ReportPage_ClienteDataStart
        OnDataSkip = ReportPage_ClienteDataSkip
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsCliente
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
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCliente
        end
        object ExprLabel_01: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExprLabel_01GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExprLabel_02: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExprLabel_02GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object qryclienteDs_Endereco1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsCliente
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object qryclienteNr_CEP1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsCliente
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
          DataSource = DsContato
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmPortador_Find.DsFind
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 15
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 30
          Width = 842
          Height = 97
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnAfterPrint = DetailBandAfterPrint
          object Sctvarlabel70: TSctvarlabel
            Left = 4
            Top = 4
            Width = 366
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            BorderMargin = 1
            WrapText = True
            Variable = ExprLabel_01
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 405
            Top = 4
            Width = 366
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            BorderMargin = 1
            WrapText = True
            Variable = ExprLabel_02
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 157
          Width = 842
          Height = 1
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
      end
    end
  end
  object SctRepLista: TSctReport
    Left = 297
    Top = 7
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
    TabOrder = 1
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepListaBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 59
    SLeft = 27
    SWidth = 833
    SHeight = 426
    MTop = 7
    MLeft = 297
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
      PageSetup.LeftMargin = 0.15
      PageSetup.RightMargin = 0.15
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Lista de Emitentes'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = BdClienteLista
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsCliente
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
      object SctGroup2: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = SctGrpEstado
        Footer = SctGrpFtEstado
        Variable = msclienteDp_CidadeVar
        Level = 0
      end
      object SctLevel13: TSctLevel
        Left = 30
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel14: TSctLevel
        Left = 30
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
        UpdateLevel = SctLevel10
        DataSource = DsCliente
      end
      object msclienteCd_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNm_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_CidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Cidade'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsContato
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
      object msclienteNr_Telefone_1Var1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_1'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoNm_ContatoVar1: TSctDBVar
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
      object TotalOfCd_Emitente: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = msclienteCd_EmitenteVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object msclienteVl_Limite_CreditoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Limite_Credito'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide16: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsContato
      end
      object DataSourceGuide17: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEstado_Find.DsFind
      end
      object DataSourceGuide18: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmFuncionario_Find.DsFind
      end
      object msclienteDp_EnderecoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Endereco'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_DocumentosVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Documentos'
        DataSource = DsCliente
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide24: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmCidade_Find.DsFind
      end
      object DataSourceGuide25: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmPortador_Find.DsFind
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 0
        Width = 815
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel8
        Visible = False
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 22
        Width = 815
        Height = 38
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel9
        Stretch = True
        OnAfterPrint = SctBand9AfterPrint
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
          Caption = 'Rela'#231#227'o de Emitentes'
        end
        object Sctvarlabel105: TSctvarlabel
          Left = 661
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel106: TSctvarlabel
          Left = 699
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel114: TSctvarlabel
          Left = 661
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel115: TSctvarlabel
          Left = 699
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctTxtFiltro: TSctvarlabel
          Left = 3
          Top = 19
          Width = 652
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          WrapText = True
          Stretch = True
          Caption = 'filtro do relatorio'
        end
      end
      object BdClienteLista: TSctBand
        Left = 0
        Top = 143
        Width = 815
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'BdClienteLista'
        Updatelevel = SctLevel10
        Stretch = True
        OnBeforePrint = BdClienteListaBeforePrint
        object Sctvarlabel1: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 14
          AlignHorizontal = laRight
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteCd_EmitenteVar
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 57
          Top = 1
          Width = 354
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteNm_EmitenteVar
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 515
          Top = 1
          Width = 183
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = adodscontatoNm_ContatoVar1
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 417
          Top = 1
          Width = 91
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteNr_Telefone_1Var1
          DataFormat.DisplayFormat = '(##) ####-####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel74: TSctvarlabel
          Left = 701
          Top = 1
          Width = 63
          Height = 14
          AlignHorizontal = laRight
          Variable = msclienteVl_Limite_CreditoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 242
        Width = 815
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel11
        object SctLine9: TSctLine
          Left = 1
          Top = 1
          Width = 763
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
          Left = 681
          Top = 4
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel126: TSctvarlabel
          Left = 727
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
        Top = 280
        Width = 815
        Height = 22
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        object Sctvarlabel157: TSctvarlabel
          Left = 566
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
          Caption = 'Total de Emitentes:'
        end
        object SctLine11: TSctLine
          Left = 564
          Top = 1
          Width = 200
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 699
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
        Top = 75
        Width = 815
        Height = 18
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'PageHeaderBandSub'
        Updatelevel = SctLevel9
        Band = SctBand9
        Above = False
        object Sctvarlabel121: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
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
        object Sctvarlabel122: TSctvarlabel
          Left = 57
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Emitente'
        end
        object Sctvarlabel123: TSctvarlabel
          Left = 515
          Top = 1
          Width = 63
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Contato'
        end
        object Sctvarlabel133: TSctvarlabel
          Left = 417
          Top = 1
          Width = 91
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Telefone'
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 701
          Top = 1
          Width = 63
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Lim. Cr'#233'dito'
        end
        object SctLine8: TSctLine
          Left = 1
          Top = 0
          Width = 763
          Height = 6
          AlignVertical = laTop
        end
        object SctLine10: TSctLine
          Left = 1
          Top = 13
          Width = 763
          Height = 6
        end
      end
      object SctGrpEstado: TSctBand
        Left = 0
        Top = 108
        Width = 815
        Height = 20
        Color = 15987699
        BandName = 'SctGrpEstado'
        Updatelevel = SctLevel13
        object Sctvarlabel6: TSctvarlabel
          Left = 0
          Top = 1
          Width = 473
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = msclienteDp_CidadeVar
        end
      end
      object SctGrpFtEstado: TSctBand
        Left = 0
        Top = 205
        Width = 815
        Height = 22
        ParentColor = True
        BandName = 'SctGrpFtEstado'
        Updatelevel = SctLevel14
        Visible = False
        object Sctvarlabel22: TSctvarlabel
          Left = 334
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
          Caption = 'Total de Emitentes:'
        end
        object SctLine5: TSctLine
          Left = 335
          Top = 1
          Width = 197
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel4: TSctTotalvarLabel
          Left = 467
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
      object BdEndereco: TSctSubBand
        Left = 0
        Top = 174
        Width = 815
        Height = 16
        ParentColor = True
        BandName = 'BdEndereco'
        Updatelevel = SctLevel10
        Visible = False
        Stretch = True
        Band = BdClienteLista
        Above = False
        object Sctvarlabel75: TSctvarlabel
          Left = 57
          Top = 1
          Width = 354
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteDp_EnderecoVar
        end
        object Sctvarlabel86: TSctvarlabel
          Left = 417
          Top = 1
          Width = 342
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteDp_DocumentosVar
        end
      end
    end
  end
  object SctRepCompleta: TSctReport
    Left = 392
    Top = 7
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
    TabOrder = 2
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepCompletaBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 15
    SLeft = 5
    SWidth = 976
    SHeight = 533
    MTop = 7
    MLeft = 392
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
      PageSetup.Height = 11.6929133858268
      PageSetup.Width = 8.26771653543307
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.3
      PageSetup.RightMargin = 0.3
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Lista de Emitentes - Completa'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand1
      Detail = SctBand3
      Foot = SctBand5
      PageHead = SctBand2
      PageFoot = SctBand4
      DataSource = DsCliente
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
      object SctDataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DsCliente
      end
      object msclienteCd_EmitenteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNm_EmitenteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNm_FantasiaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Fantasia'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDt_CadastroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Cadastro'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDt_AlteracaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Alteracao'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_Insc_EstadualVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Insc_Estadual'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteVl_Limite_CreditoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Limite_Credito'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_CreditoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Credito'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_GrupoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Grupo'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_ContribuinteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Contribuinte'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_ExportadorVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Exportador'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDs_EMailVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_EMail'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDs_SiteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Site'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDs_TituloVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Titulo'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDs_EnderecoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Endereco'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNm_BairroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Bairro'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDs_ComplementoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Complemento'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_CEPVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_CEP'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_CidadeVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Cidade'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_Telefone_1Var: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_1'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_Telefone_2Var: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_2'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_Telefone_3Var: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_3'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_FAXVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_FAX'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Limite_Credito1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = msclienteVl_Limite_CreditoVar1
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidTotalVar
      end
      object msclienteDp_PortadorVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Portador'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel
        DataSource = DsContato
      end
      object adodscontatoNm_ContatoVar: TSctDBVar
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        DataField = 'Nm_Contato'
        DataSource = DsContato
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDs_CargoVar: TSctDBVar
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        DataField = 'Ds_Cargo'
        DataSource = DsContato
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoDs_EMailVar: TSctDBVar
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        DataField = 'Ds_EMail'
        DataSource = DsContato
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoNr_TelefoneVar: TSctDBVar
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone'
        DataSource = DsContato
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoNr_RamalVar: TSctDBVar
        Left = 0
        Top = 120
        Width = 0
        Height = 0
        DataField = 'Nr_Ramal'
        DataSource = DsContato
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
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
      object msclientemm_restricaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_restricao'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclientenr_documentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclientemm_observacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclientemm_obsentregaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_obsentrega'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialDp_FilialVar1: TSctDBVar
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
      object msclientedp_subgrupoVar: TSctDBVar
        Left = 0
        Top = 186
        Width = 0
        Height = 0
        DataField = 'dp_subgrupo'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmEmitente_Find.DsContato
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmEstado_Find.DsFind
      end
      object DataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmFuncionario_Find.DsFind
      end
      object DataSourceGuide22: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmCidade_Find.DsFind
      end
      object DataSourceGuide23: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = FrmPortador_Find.DsFind
      end
      object msclienteDs_NumeroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Numero'
        DataSource = DsCliente
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand1: TSctBand
        Left = 0
        Top = 0
        Width = 786
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel1
        Visible = False
      end
      object SctBand2: TSctBand
        Left = 0
        Top = 22
        Width = 786
        Height = 44
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel2
        object Sctvarlabel7: TSctvarlabel
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
          Caption = 'Rela'#231#227'o de Emitentes'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 633
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 671
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 633
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 671
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar1
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine1: TSctLine
          Left = 1
          Top = 38
          Width = 734
          Height = 6
        end
      end
      object SctBand3: TSctBand
        Left = 0
        Top = 441
        Width = 786
        Height = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Detail'
        Updatelevel = SctLevel3
      end
      object SctBand4: TSctBand
        Left = 0
        Top = 548
        Width = 786
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel4
        object SctLine2: TSctLine
          Left = 1
          Top = 1
          Width = 734
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel17: TSctvarlabel
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
          Variable = adodsfilialDp_FilialVar1
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 655
          Top = 4
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 701
          Top = 4
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar1
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object SctBand5: TSctBand
        Left = 0
        Top = 586
        Width = 786
        Height = 22
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel5
        object Sctvarlabel20: TSctvarlabel
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
          Caption = 'Total de Emitentes:'
        end
        object SctLine3: TSctLine
          Left = 544
          Top = 1
          Width = 191
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 670
          Top = 3
          Width = 65
          Height = 17
          TotalVariable = TotalOfVl_Limite_Credito1
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
      object SctSubEndereco: TSctSubBand
        Left = 0
        Top = 300
        Width = 786
        Height = 76
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctSubEndereco'
        Updatelevel = SctLevel3
        Band = SctBand3
        Order = 4
        Above = True
        object Sctvarlabel44: TSctvarlabel
          Left = 0
          Top = 1
          Width = 108
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'T'#237'tulo do Endere'#231'o:'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 109
          Top = 1
          Width = 448
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = msclienteDs_TituloVar
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 0
          Top = 19
          Width = 51
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Endere'#231'o:'
        end
        object Sctvarlabel47: TSctvarlabel
          Left = 52
          Top = 19
          Width = 311
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDs_EnderecoVar
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 0
          Top = 39
          Width = 34
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Bairro:'
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 34
          Top = 39
          Width = 254
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNm_BairroVar
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 473
          Top = 19
          Width = 69
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Complemento:'
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 542
          Top = 19
          Width = 191
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDs_ComplementoVar
        end
        object Sctvarlabel52: TSctvarlabel
          Left = 293
          Top = 39
          Width = 25
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'CEP:'
        end
        object Sctvarlabel53: TSctvarlabel
          Left = 318
          Top = 39
          Width = 60
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNr_CEPVar
          DataFormat.DisplayFormat = '##.###-###;0; '
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 383
          Top = 39
          Width = 39
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Cidade:'
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 425
          Top = 39
          Width = 274
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDp_CidadeVar1
        end
        object Sctvarlabel56: TSctvarlabel
          Left = 0
          Top = 57
          Width = 57
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Telefone 1:'
        end
        object Sctvarlabel57: TSctvarlabel
          Left = 56
          Top = 57
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNr_Telefone_1Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
        end
        object Sctvarlabel58: TSctvarlabel
          Left = 146
          Top = 57
          Width = 57
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Telefone 2:'
        end
        object Sctvarlabel59: TSctvarlabel
          Left = 202
          Top = 57
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNr_Telefone_2Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
        end
        object Sctvarlabel60: TSctvarlabel
          Left = 292
          Top = 57
          Width = 57
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Telefone 3:'
        end
        object Sctvarlabel61: TSctvarlabel
          Left = 348
          Top = 57
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNr_Telefone_3Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
        end
        object Sctvarlabel62: TSctvarlabel
          Left = 438
          Top = 57
          Width = 26
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'FAX:'
        end
        object Sctvarlabel63: TSctvarlabel
          Left = 465
          Top = 57
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteNr_FAXVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
        end
        object Sctvarlabel87: TSctvarlabel
          Left = 410
          Top = 19
          Width = 62
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDs_NumeroVar
        end
        object Sctvarlabel88: TSctvarlabel
          Left = 364
          Top = 19
          Width = 45
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'N'#250'mero:'
        end
      end
      object SctSubObs: TSctSubBand
        Left = 0
        Top = 234
        Width = 786
        Height = 35
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctSubObs'
        OnPrintWhen = SctSubObsPrintWhen
        Updatelevel = SctLevel3
        Stretch = True
        Band = SctBand3
        Order = 2
        Above = True
        object Sctvarlabel66: TSctvarlabel
          Left = 1
          Top = 2
          Width = 72
          Height = 17
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel67: TSctvarlabel
          Left = 0
          Top = 17
          Width = 364
          Height = 17
          WrapText = True
          Stretch = True
          Variable = msclientemm_observacaoVar
        end
        object Sctvarlabel68: TSctvarlabel
          Left = 372
          Top = 2
          Width = 111
          Height = 17
          Caption = 'Restri'#231#245'es de Cr'#233'dito:'
        end
        object Sctvarlabel69: TSctvarlabel
          Left = 371
          Top = 17
          Width = 364
          Height = 17
          WrapText = True
          Stretch = True
          Variable = msclientemm_restricaoVar
        end
        object SctVerticalDivider1: TSctVerticalDivider
          Left = 367
          Top = 1
          Width = 2
          Height = 34
        end
      end
      object SctSubObsEnd: TSctSubBand
        Left = 0
        Top = 391
        Width = 786
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctSubObsEnd'
        OnPrintWhen = SctSubObsEndPrintWhen
        Updatelevel = SctLevel3
        Stretch = True
        Band = SctBand3
        Order = 5
        Above = True
        object Sctvarlabel64: TSctvarlabel
          Left = 0
          Top = 1
          Width = 89
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 90
          Top = 1
          Width = 642
          Height = 17
          WrapText = True
          Stretch = True
          Variable = msclientemm_obsentregaVar
        end
      end
      object SctBand3Sub: TSctSubBand
        Left = 0
        Top = 135
        Width = 786
        Height = 84
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctBand3Sub'
        Updatelevel = SctLevel3
        Band = SctBand3
        Order = 1
        Above = True
        object SctNr_MF: TSctvarlabel
          Left = -1
          Top = 1
          Width = 31
          Height = 17
          Caption = 'CNPJ:'
        end
        object SctVarNr_MF: TSctvarlabel
          Left = 31
          Top = 1
          Width = 106
          Height = 17
          Variable = msclientenr_documentoVar
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 141
          Top = 1
          Width = 72
          Height = 17
          Caption = 'Insc. Estadual:'
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 215
          Top = 1
          Width = 106
          Height = 17
          Variable = msclienteNr_Insc_EstadualVar
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 323
          Top = 1
          Width = 62
          Height = 17
          Caption = 'Contribuinte:'
        end
        object Sctvarlabel27: TSctvarlabel
          Left = 387
          Top = 1
          Width = 32
          Height = 17
          Variable = msclienteDp_ContribuinteVar1
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 424
          Top = 1
          Width = 59
          Height = 17
          Caption = 'Exportador:'
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 485
          Top = 1
          Width = 32
          Height = 17
          Variable = msclienteDp_ExportadorVar
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 0
          Top = 18
          Width = 87
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Titular de Cr'#233'dito:'
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 88
          Top = 18
          Width = 448
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDp_CreditoVar
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 540
          Top = 18
          Width = 84
          Height = 17
          Caption = 'Limite de Cr'#233'dito:'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 626
          Top = 18
          Width = 79
          Height = 17
          Variable = msclienteVl_Limite_CreditoVar1
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 0
          Top = 34
          Width = 35
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Grupo:'
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 35
          Top = 34
          Width = 310
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDp_GrupoVar
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 305
          Top = 50
          Width = 62
          Height = 17
          Caption = 'Cadastrado:'
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 368
          Top = 50
          Width = 60
          Height = 17
          Variable = msclienteDt_CadastroVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 433
          Top = 50
          Width = 52
          Height = 17
          Caption = 'Altera'#231#227'o:'
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 487
          Top = 50
          Width = 60
          Height = 17
          Variable = msclienteDt_AlteracaoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 0
          Top = 66
          Width = 35
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'E-Mail:'
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 35
          Top = 66
          Width = 318
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDs_EMailVar
        end
        object Sctvarlabel42: TSctvarlabel
          Left = 358
          Top = 66
          Width = 23
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Site:'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 382
          Top = 66
          Width = 318
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDs_SiteVar
        end
        object Sctvarlabel72: TSctvarlabel
          Left = 45
          Top = 50
          Width = 310
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclienteDp_PortadorVar
        end
        object Sctvarlabel73: TSctvarlabel
          Left = -1
          Top = 50
          Width = 46
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Portador:'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 404
          Top = 34
          Width = 310
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = msclientedp_subgrupoVar
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 350
          Top = 34
          Width = 54
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'SubGrupo:'
        end
      end
      object SctSubDivCliente: TSctSubBand
        Left = 0
        Top = 425
        Width = 786
        Height = 1
        ParentColor = True
        BandName = 'SctSubDivCliente'
        Updatelevel = SctLevel3
        Band = SctBand3
        Order = 6
        Above = True
        object SctLine4: TSctLine
          Left = 1
          Top = 0
          Width = 734
          Height = 3
          AlignVertical = laTop
        end
      end
      object SctSubDivObs: TSctSubBand
        Left = 0
        Top = 284
        Width = 786
        Height = 1
        ParentColor = True
        BandName = 'SctSubDivObs'
        OnPrintWhen = SctSubObsPrintWhen
        Updatelevel = SctLevel3
        Band = SctBand3
        Order = 3
        Above = True
        object SctLine6: TSctLine
          Left = 1
          Top = 0
          Width = 734
          Height = 3
          AlignVertical = laTop
        end
      end
      object SctSubContatos: TSctSubDataBand
        Left = 0
        Top = 493
        Width = 786
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctSubContatos'
        Updatelevel = DataLevel
        Stretch = True
        Band = SctBand3
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsContato
        object Sctvarlabel81: TSctvarlabel
          Left = 1
          Top = 2
          Width = 214
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoNm_ContatoVar
        end
        object Sctvarlabel82: TSctvarlabel
          Left = 220
          Top = 2
          Width = 194
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoDs_CargoVar
        end
        object Sctvarlabel83: TSctvarlabel
          Left = 420
          Top = 2
          Width = 156
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoDs_EMailVar
        end
        object Sctvarlabel84: TSctvarlabel
          Left = 580
          Top = 2
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoNr_TelefoneVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
        end
        object Sctvarlabel85: TSctvarlabel
          Left = 670
          Top = 2
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodscontatoNr_RamalVar
        end
      end
      object SctSubDetail: TSctSubBand
        Left = 0
        Top = 81
        Width = 786
        Height = 39
        Color = 15987699
        BandName = 'SctSubDetail'
        Updatelevel = SctLevel3
        OnBeforePrint = SctSubDetailBeforePrint
        Band = SctBand3
        Above = True
        object Sctvarlabel12: TSctvarlabel
          Left = 0
          Top = 2
          Width = 55
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Emitente:'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 0
          Top = 20
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = msclienteCd_EmitenteVar1
          DataFormat.DisplayFormat = '#,##0'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 53
          Top = 20
          Width = 448
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = msclienteNm_EmitenteVar1
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 510
          Top = 2
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Nome Fantasia:'
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 510
          Top = 20
          Width = 225
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = msclienteNm_FantasiaVar
        end
        object SctLine7: TSctLine
          Left = 1
          Top = 33
          Width = 734
          Height = 6
        end
      end
      object SctHdContatos: TSctDataHeadBand
        Left = 0
        Top = 458
        Width = 786
        Height = 20
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'SctHdContatos'
        Updatelevel = DataHeaderLevel
        Band = SctSubContatos
        object Sctvarlabel76: TSctvarlabel
          Left = 1
          Top = 2
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Nome'
        end
        object Sctvarlabel77: TSctvarlabel
          Left = 220
          Top = 2
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Cargo'
        end
        object Sctvarlabel78: TSctvarlabel
          Left = 420
          Top = 2
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'E-Mail'
        end
        object Sctvarlabel79: TSctvarlabel
          Left = 580
          Top = 2
          Width = 57
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Telefone'
        end
        object Sctvarlabel80: TSctvarlabel
          Left = 670
          Top = 2
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Ramal'
        end
        object SctLine12: TSctLine
          Left = 1
          Top = 14
          Width = 734
          Height = 6
        end
      end
      object SctSubSeparator: TSctSubBand
        Left = 0
        Top = 528
        Width = 786
        Height = 5
        ParentColor = True
        BandName = 'SctSubSeparator'
        Updatelevel = DataLevel
        Band = SctSubContatos
        Above = False
      end
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 332
    Align = alLeft
    TabOrder = 3
  end
  object SctListaEMail: TSctReport
    Left = 611
    Top = 8
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
    TabOrder = 4
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepListaBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 59
    SLeft = -6
    SWidth = 1132
    SHeight = 426
    MTop = 8
    MLeft = 611
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage3: TSctGrouppage
      Left = 35
      Top = 55
      Width = 27
      Height = 0
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      ClipLabels = False
      PageSetup.Orientation = poLandscape
      PageSetup.Size = psA4
      PageSetup.Height = 8.26771653543307
      PageSetup.Width = 11.69291338582677
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.15
      PageSetup.RightMargin = 0.15
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Lista de Emitentes'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand6
      Detail = SctBand10
      Foot = SctBand14
      PageHead = SctBand7
      PageFoot = SctBand13
      DataSource = DsCliente
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
      object SctLevel15: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel16: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel17: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar3: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel6
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar3: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel7
        AutoVar = True
        ID = vidPageVar
      end
      object SctGrpCidade2: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = SctGrpEstado2
        Footer = SctGrpFtEstado2
        Variable = msclienteDp_CidadeVar2
        Level = 0
      end
      object SctLevel18: TSctLevel
        Left = 30
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel19: TSctLevel
        Left = 30
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = DsCliente
      end
      object SctDataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = DsContato
      end
      object SctDataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = DmMaster.DsFilial
      end
      object SctTotalvar1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidTotalVar
      end
      object SctDataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmEmitente_Find.DsFind
      end
      object SctDataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmEmitente_Find.DsContato
      end
      object SctDataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmEstado_Find.DsFind
      end
      object SctDataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmFuncionario_Find.DsFind
      end
      object SctDataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmCidade_Find.DsFind
      end
      object SctDataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel15
        DataSource = FrmPortador_Find.DsFind
      end
      object msclienteDs_EMailVar1: TSctDBVar
        Left = 71
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_EMail'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteCd_EmitenteVar2: TSctDBVar
        Left = 71
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNm_EmitenteVar2: TSctDBVar
        Left = 71
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_Telefone_1Var2: TSctDBVar
        Left = 71
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Telefone_1'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteNr_PagamentoVar: TSctDBVar
        Left = 71
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Pagamento'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodscontatoNm_ContatoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Contato'
        DataSource = DsContato
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_EnderecoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Endereco'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_DocumentosVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Documentos'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsfilialDp_FilialVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object msclienteDp_CidadeVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Cidade'
        DataSource = DsCliente
        UpdateLevel = SctLevel15
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand6: TSctBand
        Left = 0
        Top = 0
        Width = 1144
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel6
        Visible = False
      end
      object SctBand7: TSctBand
        Left = 0
        Top = 22
        Width = 1144
        Height = 38
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel7
        Stretch = True
        OnAfterPrint = SctBand9AfterPrint
        object Sctvarlabel89: TSctvarlabel
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
          Caption = 'Rela'#231#227'o de Emitentes'
        end
        object Sctvarlabel90: TSctvarlabel
          Left = 991
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel91: TSctvarlabel
          Left = 1029
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar3
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel92: TSctvarlabel
          Left = 991
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel93: TSctvarlabel
          Left = 1029
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar3
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctTxtFiltro2: TSctvarlabel
          Left = 3
          Top = 19
          Width = 652
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          WrapText = True
          Stretch = True
          Caption = 'filtro do relatorio'
        end
      end
      object SctBand10: TSctBand
        Left = 0
        Top = 143
        Width = 1144
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'BdClienteLista'
        Updatelevel = SctLevel15
        Stretch = True
        OnBeforePrint = SctBand10BeforePrint
        object Sctvarlabel95: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 14
          AlignHorizontal = laRight
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteCd_EmitenteVar2
        end
        object Sctvarlabel96: TSctvarlabel
          Left = 57
          Top = 1
          Width = 354
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteNm_EmitenteVar2
        end
        object Sctvarlabel97: TSctvarlabel
          Left = 515
          Top = 1
          Width = 183
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = adodscontatoNm_ContatoVar2
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel98: TSctvarlabel
          Left = 417
          Top = 1
          Width = 91
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteNr_Telefone_1Var2
          DataFormat.DisplayFormat = '(##) ####-####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel99: TSctvarlabel
          Left = 701
          Top = 1
          Width = 63
          Height = 14
          AlignHorizontal = laRight
          BorderMargin = 1
          Variable = msclienteNr_PagamentoVar
          DataFormat.DisplayFormat = '##'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel118: TSctvarlabel
          Left = 768
          Top = 1
          Width = 304
          Height = 14
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteDs_EMailVar1
          DataFormat.SuppressNulls = True
        end
      end
      object SctBand13: TSctBand
        Left = 0
        Top = 242
        Width = 1144
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel16
        object SctLine13: TSctLine
          Left = 1
          Top = 1
          Width = 1093
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel100: TSctvarlabel
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
          Variable = adodsfilialDp_FilialVar2
        end
        object Sctvarlabel101: TSctvarlabel
          Left = 1013
          Top = 4
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel102: TSctvarlabel
          Left = 1059
          Top = 4
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar3
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object SctBand14: TSctBand
        Left = 0
        Top = 280
        Width = 1144
        Height = 22
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel17
        object Sctvarlabel103: TSctvarlabel
          Left = 896
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
          Caption = 'Total de Emitentes:'
        end
        object SctLine14: TSctLine
          Left = 897
          Top = 1
          Width = 200
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 1029
          Top = 3
          Width = 65
          Height = 17
          TotalVariable = SctTotalvar1
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
      object SctSubBand1: TSctSubBand
        Left = 0
        Top = 75
        Width = 1144
        Height = 18
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'PageHeaderBandSub'
        Updatelevel = SctLevel7
        Band = SctBand7
        Above = False
        object Sctvarlabel104: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
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
        object Sctvarlabel107: TSctvarlabel
          Left = 57
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Emitente'
        end
        object Sctvarlabel108: TSctvarlabel
          Left = 515
          Top = 1
          Width = 63
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Contato'
        end
        object Sctvarlabel109: TSctvarlabel
          Left = 417
          Top = 1
          Width = 91
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Telefone'
        end
        object Sctvarlabel110: TSctvarlabel
          Left = 688
          Top = 1
          Width = 76
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Dia de Compra'
        end
        object SctLine15: TSctLine
          Left = 1
          Top = 0
          Width = 1093
          Height = 6
          AlignVertical = laTop
        end
        object SctLine16: TSctLine
          Left = 1
          Top = 13
          Width = 1093
          Height = 6
        end
        object Sctvarlabel117: TSctvarlabel
          Left = 768
          Top = 1
          Width = 63
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'E-Mail'
        end
      end
      object SctGrpEstado2: TSctBand
        Left = 0
        Top = 108
        Width = 1144
        Height = 20
        Color = 15987699
        BandName = 'SctGrpCidade2 Header'
        Updatelevel = SctLevel18
        object Sctvarlabel111: TSctvarlabel
          Left = 0
          Top = 1
          Width = 473
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = msclienteDp_CidadeVar2
        end
      end
      object SctGrpFtEstado2: TSctBand
        Left = 0
        Top = 205
        Width = 1144
        Height = 22
        ParentColor = True
        BandName = 'SctGrpCidade2 Footer'
        Updatelevel = SctLevel19
        Visible = False
        object Sctvarlabel112: TSctvarlabel
          Left = 896
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
          Caption = 'Total de Emitentes:'
        end
        object SctLine17: TSctLine
          Left = 897
          Top = 1
          Width = 197
          Height = 6
          AlignVertical = laTop
        end
        object SctTotalvarLabel5: TSctTotalvarLabel
          Left = 1029
          Top = 3
          Width = 65
          Height = 17
          TotalVariable = SctTotalvar1
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
      object BdEndereco2: TSctSubBand
        Left = 0
        Top = 174
        Width = 1144
        Height = 16
        ParentColor = True
        BandName = 'BdEndereco2'
        Updatelevel = SctLevel15
        Visible = False
        Stretch = True
        Band = SctBand10
        Above = False
        object Sctvarlabel113: TSctvarlabel
          Left = 57
          Top = 1
          Width = 354
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteDp_EnderecoVar1
        end
        object Sctvarlabel116: TSctvarlabel
          Left = 417
          Top = 1
          Width = 342
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = msclienteDp_DocumentosVar1
        end
      end
    end
  end
  object DsCliente: TDataSource
    DataSet = MSCliente
    Left = 464
    Top = 97
  end
  object MSCliente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = MSClienteCalcFields
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nm_Emitente, A.Nm_Fantasia, A.Dt_Cadastro, A.Dt_Alteracao,'#13#10'  A.Tp_Pessoa,'#13#10'  case A.Tp_Pessoa'#13#10'    when ''''1'''' then ''''F'#237'sica'''#13#10'    else ''''Jur'#237'dica'''#13#10'  end as Dp_Pessoa,'#13#10'  A.Nr_Documento, A.Nr_Insc_Estadual, A.Vl_Limite_Credito,'#13#10'  Cast( A.Cd_Credito  as VarChar( 5 ) ) + '''' - '''' + B.Nm_Emitente as Dp_Credito,'#13#10'  Cast( A.Cd_Grupo    as VarChar( 3 ) ) + '''' - '''' + C.Nm_Grupo as Dp_Grupo,'#13#10'  Cast( A.Cd_SubGrupo as VarChar( 3 ) ) + '''' - '''' + ESG.Nm_SubGrupo as Dp_SubGrupo,'#13#10'  Cast( A.Cd_Portador as VarChar( 5 ) ) + '''' - '''' + F.Nm_Portador as Dp_Portador,'#13#10'  case A.Fl_Contribuinte when ''''1'''' then ''''Sim'''' else ''''N'#227'o'''' end as Dp_Contribuinte,'#13#10'  case A.Fl_Exportador   when ''''1'''' then ''''Sim'''' else ''''N'#227'o'''' end as Dp_Exportador,'#13#10'  A.Ds_EMail, A.Ds_Site, A.Mm_Observacao, A.Mm_Restricao,'#13#10'  D.Ds_Titulo, D.Ds_Endereco, D.Nm_Bairro, D.Ds_Complemento, D.Nr_CEP,'#13#10'  Cast( D.Cd_Cidade as VarChar ) + '''' - '''' +'#13#10'    E.Nm_Cidade + '''' - '''' + Cast( E.Sg_Estado as VarChar( 2 ) ) as Dp_Cidade,'#13#10'  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX,'#13#10'  D.Mm_Observacao as Mm_ObsEntrega,'#13#10'  E.Nm_Cidade + '''' - '''' + E.Sg_Estado as Dp_CidEtiqueta,'#13#10'  EC.Nm_Contato, D.Ds_Numero, A.Nr_Pagamento'#13#10#13#10'from'#13#10'  Emitente A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Credito'#13#10#13#10'inner join'#13#10'  Emitente_Grupo C'#13#10'on'#13#10'  C.Cd_Grupo = A.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = A.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Emitente_Endereco D'#13#10'on'#13#10'  D.Cd_Emitente = A.Cd_Emitente and'#13#10'  D.Nr_Endereco = A.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade E'#13#10'on'#13#10'  E.Cd_Cidade = D.Cd_Cidade'#13#10#13#10'inner join'#13#10'  Emitente_Contato EC'#13#10'on'#13#10'  EC.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'left join'#13#10'  Portador F'#13#10'on'#13#10'  F.Cd_Portador = A.Cd_Portador'#13#10#13#10'order by'#13#10'  A.Nm_Emitente'
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  A.Cd_Emitente, A.Nm_Emitente, A.Nm_Fantasia, A.Dt_Cadastro, A.Dt_Alteracao,'
      '  A.Tp_Pessoa,'
      '  case A.Tp_Pessoa'
      '    when ''''1'''' then ''''F'#237'sica'''
      '    else ''''Jur'#237'dica'''
      '  end as Dp_Pessoa,'
      '  A.Nr_Documento, A.Nr_Insc_Estadual, A.Vl_Limite_Credito,'
      '  Cast( A.Cd_Credito  as VarChar( 5 ) ) + '''' - '''' + B.Nm_Emitente as Dp_Credito,'
      '  Cast( A.Cd_Grupo    as VarChar( 3 ) ) + '''' - '''' + C.Nm_Grupo as Dp_Grupo,'
      '  Cast( A.Cd_SubGrupo as VarChar( 3 ) ) + '''' - '''' + ESG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( A.Cd_Portador as VarChar( 5 ) ) + '''' - '''' + F.Nm_Portador as Dp_Portador,'
      '  case A.Fl_Contribuinte when ''''1'''' then ''''Sim'''' else ''''N'#227'o'''' end as Dp_Contribuinte,'
      '  case A.Fl_Exportador   when ''''1'''' then ''''Sim'''' else ''''N'#227'o'''' end as Dp_Exportador,'
      '  A.Ds_EMail, A.Ds_Site, A.Mm_Observacao, A.Mm_Restricao,'
      '  D.Ds_Titulo, D.Ds_Endereco, D.Nm_Bairro, D.Ds_Complemento, D.Nr_CEP,'
      '  Cast( D.Cd_Cidade as VarChar ) + '''' - '''' +'
      '    E.Nm_Cidade + '''' - '''' + E.Sg_Estado as Dp_Cidade,'
      '  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX,'
      '  D.Mm_Observacao as Mm_ObsEntrega,'
      '  E.Nm_Cidade + '''' - '''' + E.Sg_Estado as Dp_CidEtiqueta, D.Ds_Numero,'
      '  A.Nr_Pagamento'
      ''
      '  /* Contato */'
      '  '
      'from'
      '  Emitente A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Credito'
      ''
      'inner join'
      '  Emitente_Grupo C'
      'on'
      '  C.Cd_Grupo = A.Cd_Grupo'
      ''
      'inner join'
      '  Emitente_SubGrupo ESG'
      'on'
      '  ESG.Cd_SubGrupo = A.Cd_SubGrupo'
    )
    Left = 494
    Top = 97
    object MSClienteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object MSClienteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object MSClienteNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object MSClienteDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
    end
    object MSClienteDt_Alteracao: TDateTimeField
      FieldName = 'Dt_Alteracao'
    end
    object MSClienteTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object MSClienteDp_Pessoa: TStringField
      FieldName = 'Dp_Pessoa'
      ReadOnly = True
      Size = 8
    end
    object MSClienteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object MSClienteVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      Precision = 19
    end
    object MSClienteDp_Credito: TStringField
      FieldName = 'Dp_Credito'
      ReadOnly = True
      Size = 58
    end
    object MSClienteDp_Grupo: TStringField
      FieldName = 'Dp_Grupo'
      ReadOnly = True
      Size = 58
    end
    object MSClienteDp_Contribuinte: TStringField
      FieldName = 'Dp_Contribuinte'
      ReadOnly = True
      Size = 3
    end
    object MSClienteDp_Exportador: TStringField
      FieldName = 'Dp_Exportador'
      ReadOnly = True
      Size = 3
    end
    object MSClienteDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 100
    end
    object MSClienteDs_Site: TStringField
      FieldName = 'Ds_Site'
      Size = 50
    end
    object MSClienteDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object MSClienteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object MSClienteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object MSClienteDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object MSClienteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object MSClienteDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object MSClienteNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 11
    end
    object MSClienteNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 11
    end
    object MSClienteNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 11
    end
    object MSClienteNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 11
    end
    object MSClienteDp_CidEtiqueta: TStringField
      FieldName = 'Dp_CidEtiqueta'
      ReadOnly = True
      Size = 35
    end
    object MSClienteDp_Portador: TStringField
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
    end
    object MSClientenr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object MSClientemm_restricao: TMemoField
      FieldName = 'mm_restricao'
      BlobType = ftMemo
    end
    object MSClientemm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object MSClientemm_obsentrega: TMemoField
      FieldName = 'mm_obsentrega'
      BlobType = ftMemo
    end
    object MSClientedp_subgrupo: TStringField
      FieldName = 'dp_subgrupo'
      Size = 254
    end
    object MSClienteNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object MSClienteDp_Endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Endereco'
      Size = 100
      Calculated = True
    end
    object MSClienteDp_Documentos: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Documentos'
      Size = 150
      Calculated = True
    end
    object MSClienteDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object MSClienteNr_Pagamento: TSmallintField
      FieldName = 'Nr_Pagamento'
    end
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,'#13#10'  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular'#13#10#13#10'from'#13#10'  Emitente_Contato A'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  A.Cd_Emitente, A.Nm_Contato'
    DataSource = DsCliente
    IndexFieldNames = 'Cd_Emitente'
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 555
    Top = 97
    object ADODsContatoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsContatoNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsContatoNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoDs_Cargo: TStringField
      FieldName = 'Ds_Cargo'
      Size = 30
    end
    object ADODsContatoDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 50
    end
    object ADODsContatoNr_Telefone: TStringField
      FieldName = 'Nr_Telefone'
      Size = 11
    end
    object ADODsContatoNr_Ramal: TSmallintField
      FieldName = 'Nr_Ramal'
    end
    object ADODsContatoNr_Celular: TStringField
      FieldName = 'Nr_Celular'
      Size = 11
    end
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 525
    Top = 97
  end
end
