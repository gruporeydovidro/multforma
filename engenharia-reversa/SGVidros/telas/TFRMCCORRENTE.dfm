object FrmCCorrente: TFrmCCorrente
  Left = 388
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Controle Banc'#225'rio (Conta Corrente)'
  ClientHeight = 548
  ClientWidth = 1005
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
    Height = 548
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 984
    Height = 548
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 143
      Width = 484
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
    object Label2: TLabel
      Left = 7
      Top = 68
      Width = 34
      Height = 13
      Caption = 'Banco:'
    end
    object SbBanco: TSpeedButton
      Tag = 1
      Left = 45
      Top = 83
      Width = 23
      Height = 19
      Hint = 'Consulta de Banco'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbBancoClick
    end
    object Label4: TLabel
      Left = 322
      Top = 69
      Width = 42
      Height = 13
      Caption = 'Ag'#234'ncia:'
    end
    object Label5: TLabel
      Left = 385
      Top = 69
      Width = 31
      Height = 13
      Caption = 'Conta:'
    end
    object Label3: TLabel
      Left = 478
      Top = 69
      Width = 43
      Height = 13
      Caption = 'Abertura:'
    end
    object Label6: TLabel
      Left = 7
      Top = 105
      Width = 79
      Height = 13
      Caption = 'Limite (Especial):'
    end
    object Label7: TLabel
      Left = 92
      Top = 105
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object Label8: TLabel
      Left = 177
      Top = 105
      Width = 54
      Height = 13
      Caption = 'Bloqueado:'
    end
    object Label9: TLabel
      Left = 262
      Top = 105
      Width = 67
      Height = 13
      Caption = 'Saldo Liquido:'
    end
    object Label10: TLabel
      Left = 347
      Top = 105
      Width = 54
      Height = 13
      Caption = 'Dispon'#237'vel:'
    end
    object Label11: TLabel
      Left = 7
      Top = 163
      Width = 100
      Height = 13
      Caption = #218'ltimos lan'#231'amentos:'
    end
    object Label12: TLabel
      Left = 7
      Top = 473
      Width = 128
      Height = 13
      Caption = 'Descri'#231#227'o do Lan'#231'amento:'
    end
    object Label77: TLabel
      Left = 431
      Top = 103
      Width = 218
      Height = 13
      Caption = 'Apresentar no relat'#243'rio de Resumo Financeiro:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 13
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 982
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 982
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
      Left = 321
      Top = 148
      Width = 85
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 408
      Top = 148
      Width = 85
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 15
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Conta: TLabeledEdit
      Left = 52
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 97
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o da Conta:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtId_Conta: TCurrencyEdit
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
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtCd_Banco: TMaskEdit
      Left = 7
      Top = 83
      Width = 37
      Height = 19
      EditMask = '###;0; '
      MaxLength = 3
      TabOrder = 2
      OnExit = EdtCd_BancoExit
      OnKeyDown = EdtCd_BancoKeyDown
    end
    object EdtSg_Banco: TEdit
      Left = 68
      Top = 83
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCd_Agencia: TMaskEdit
      Left = 322
      Top = 83
      Width = 56
      Height = 19
      EditMask = '####;0; '
      MaxLength = 4
      TabOrder = 4
    end
    object EdtNr_Conta: TEdit
      Left = 385
      Top = 83
      Width = 88
      Height = 19
      MaxLength = 10
      TabOrder = 5
    end
    object EdtDt_Abertura: TDateEdit
      Left = 478
      Top = 83
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
    end
    object EdtVl_Limite: TCurrencyEdit
      Left = 7
      Top = 119
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object EdtVl_Saldo: TCurrencyEdit
      Left = 92
      Top = 119
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtVl_Bloqueado: TCurrencyEdit
      Left = 177
      Top = 119
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtVl_Liquido: TCurrencyEdit
      Left = 262
      Top = 119
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object EdtVl_Disponivel: TCurrencyEdit
      Left = 347
      Top = 119
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DbGLancto: TDBGrid
      Left = 7
      Top = 176
      Width = 970
      Height = 296
      DataSource = DsLancto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGLanctoEnter
      OnExit = DbGLanctoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Lancamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Lancamento'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Lancamento'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Historico'
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Historico'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mm_Lancamento'
          Width = 379
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Lancamento'
          Title.Alignment = taCenter
          Width = 149
          Visible = True
        end>
    end
    object DbMmLancamento: TDBMemo
      Left = 7
      Top = 487
      Width = 970
      Height = 57
      TabStop = False
      Color = clSilver
      DataField = 'Ds_Lancamento'
      DataSource = DsLancto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 18
    end
    object CbResumo: TComboBox
      Left = 431
      Top = 118
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 12
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object SctReport: TSctReport
      Left = 733
      Top = 33
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
      TabOrder = 17
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 144
      SLeft = 24
      SWidth = 836
      SHeight = 581
      MTop = 33
      MLeft = 733
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
        Description = 'Controle Banc'#225'rio (Conta Corrente)'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = SctDetail
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCCorrente_Find.DsFind
        end
        object adodsreportid_contaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'id_conta'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_contaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_conta'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_bancoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_banco'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportsg_bancoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_banco'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_agenciaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_agencia'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_contaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_conta'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdt_aberturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_abertura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_limiteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_limite'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_bloqueadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_bloqueado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_saldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_saldo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfid_conta: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportid_contaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportVl_LiquidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Liquido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_DisponivelVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Disponivel'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsLancto
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCCorrente_Lancto_Report.DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCCorrente_Lancto_Report.DsSintetico
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmBanco_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
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
        object TotalOfvl_bloqueado: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_bloqueadoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_saldo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_saldoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Liquido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_LiquidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Disponivel: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_DisponivelVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Width = 244
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Controle Banc'#225'rio (Conta Corrente)'
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
        object SctDetail: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'SctDetail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = SctDetailBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportid_contaVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportds_contaVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 400
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportcd_bancoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 444
            Top = 0
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportcd_agenciaVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 493
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportnr_contaVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 563
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportdt_aberturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 633
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_limiteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 195
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
          Top = 230
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 528
            Top = 1
            Width = 168
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfid_conta
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
            Left = 544
            Top = 3
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'N'#250'mero de Contas:'
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
            Caption = 'Descri'#231#227'o da Conta'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 633
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Limite'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 563
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Abertura'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 493
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Conta'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 444
            Top = 0
            Width = 45
            Height = 17
            Caption = 'Ag'#234'ncia'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 400
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Banco'
          end
        end
        object BdSaldos: TSctSubBand
          Left = 0
          Top = 142
          Width = 748
          Height = 38
          ParentColor = True
          BandName = 'BdSaldos'
          Updatelevel = DetailBandlevel
          Band = SctDetail
          Above = False
          object Sctvarlabel23: TSctvarlabel
            Left = 633
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Dispon'#237'vel:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 544
            Top = 0
            Width = 84
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo Liquido'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 478
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Bloqueado:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 409
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo:'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 633
            Top = 17
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_DisponivelVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 544
            Top = 17
            Width = 84
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_LiquidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 478
            Top = 17
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_bloqueadoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 409
            Top = 17
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_saldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SctBdSubSaldos: TSctSubBand
          Left = 0
          Top = 265
          Width = 748
          Height = 43
          ParentColor = True
          BandName = 'SctBdSubSaldos'
          Updatelevel = ReportFooterBandlevel
          Band = ReportFooterBand
          Above = False
          object Sctvarlabel31: TSctvarlabel
            Left = 633
            Top = 4
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Dispon'#237'vel:'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 544
            Top = 4
            Width = 84
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo L'#237'quido:'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 478
            Top = 4
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Bloqueado:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 362
            Top = 4
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo TOTAL:'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 409
            Top = 22
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_saldo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 478
            Top = 22
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_bloqueado
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 558
            Top = 22
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Liquido
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 633
            Top = 22
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Disponivel
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
        end
      end
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
                Action = ActReport
                Caption = '&Lista das Contas...'
                ImageIndex = 20
                ShortCut = 117
              end
              item
                Action = ActExtrato
                Caption = '&Extrato da Conta (Lan'#231'amentos)...'
                ImageIndex = 20
              end>
            Action = ActReport
            Caption = '&Lista das Contas...'
            ImageIndex = 20
            ShowCaption = False
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActLancto
            ImageIndex = 8
            ShortCut = 118
          end
          item
            Action = ActSaldos
            ImageIndex = 5
            ShortCut = 119
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 441
    Top = 42
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
      Caption = 'Lista das Contas...'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActExtrato: TAction
      Category = '2-Database'
      Caption = 'Extrato da Conta (Lan'#231'amentos)...'
      ImageIndex = 20
      OnExecute = ActExtratoExecute
    end
    object ActLancto: TAction
      Category = '2-Database'
      Hint = 'Lan'#231'amentos'
      ImageIndex = 8
      ShortCut = 118
      OnExecute = ActLanctoExecute
    end
    object ActSaldos: TAction
      Category = '2-Database'
      Hint = 'Saldos Mensais em Conta'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = ActSaldosExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta,'#13#10'  CC.Dt_Abertura, CC.Vl_Limite, CC.Vl_Bloqueado, CC.Vl_Saldo, CC.Fl_Resumo'#13#10#13#10'from'#13#10'  CCorrente CC'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = CC.Cd_Banco'#13#10#13#10'where'#13#10'  CC.Id_Conta = :Id_Conta'
    Parameters = <
      item
        Name = 'Id_Conta'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 594
    Top = 144
    object ADODsDadosid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsDadosds_conta: TStringField
      FieldName = 'ds_conta'
      Size = 50
    end
    object ADODsDadoscd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsDadossg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsDadoscd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosnr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsDadosdt_abertura: TDateTimeField
      FieldName = 'dt_abertura'
    end
    object ADODsDadosvl_limite: TBCDField
      FieldName = 'vl_limite'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_bloqueado: TBCDField
      FieldName = 'vl_bloqueado'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_saldo: TBCDField
      FieldName = 'vl_saldo'
      Precision = 12
      Size = 2
    end
    object ADODsDadosFl_Resumo: TStringField
      FieldName = 'Fl_Resumo'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into CCorrente( Id_Conta, Ds_Conta, Cd_Banco, Cd_Agencia, Nr_Conta,'
      '  Dt_Abertura, Vl_Limite, Vl_Bloqueado, Vl_Saldo, Fl_Resumo )'
      'values( :Id_Conta, :Ds_Conta, :Cd_Banco, :Cd_Agencia, :Nr_Conta,'
      '  :Dt_Abertura, :Vl_Limite, 0, 0, :Fl_Resumo )'
    )
    SQLUpdate.Strings = (
      'update'
      '  CCorrente'
      ''
      'set'
      '  Ds_Conta    = :Ds_Conta,'
      '  Cd_Banco    = :Cd_Banco,'
      '  Cd_Agencia  = :Cd_Agencia,'
      '  Nr_Conta    = :Nr_Conta,'
      '  Dt_Abertura = :Dt_Abertura,'
      '  Vl_Limite   = :Vl_Limite,'
      '  Fl_Resumo   = :Fl_Resumo'
      ''
      'where'
      '  Id_Conta    = :Id_Conta'
    )
    SQLDelete.Strings = (
      'delete from'
      '  CCorrente'
      ''
      'where'
      '  Id_Conta = :Id_Conta'
    )
    SQLOther0.Strings = (
      '--------------- Atualiza os Saldos'
      'update'
      '  CCorrente'
      ''
      'set'
      '  Vl_Saldo     = :Vl_Saldo,'
      '  Vl_Bloqueado = :Vl_Bloqueado'
      ''
      'where'
      '  Id_Conta = :Id_Conta'
    )
    Left = 624
    Top = 144
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Id_Conta'#13#10#13#10'from'#13#10'  CCorrente'#13#10#13#10'order by'#13#10'  Id_Conta'#13#10#13#10#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Id_Conta + 1 as Id_Conta'
      ''
      'from'
      '  CCorrente A'
      ''
      'where'
      '  not exists('
      '  select'
      '    B.Id_Conta'
      ''
      '  from'
      '    CCorrente B'
      ''
      '  where'
      '    B.Id_Conta = A.Id_Conta + 1'
      '  )'
      ''
      'order by'
      '  A.Id_Conta'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Id_Conta'
      ''
      'from'
      '  CCorrente'
      ''
      'order by'
      '  Id_Conta'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Id_Conta'
      ''
      'from'
      '  CCorrente'
      ''
      'where'
      '  Id_Conta < :Id_Conta'
      ''
      'order by'
      '  Id_Conta desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Id_Conta'
      ''
      'from'
      '  CCorrente'
      ''
      'where'
      '  Id_Conta > :Id_Conta'
      ''
      'order by'
      '  Id_Conta'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Id_Conta'
      ''
      'from'
      '  CCorrente'
      ''
      'order by'
      '  Id_Conta desc'
    )
    Left = 654
    Top = 144
    object ADODsNavegarid_conta: TSmallintField
      FieldName = 'id_conta'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 684
    Top = 144
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta,'#13#10'  CC.Dt_Abertura, CC.Vl_Limite, CC.Vl_Bloqueado, CC.Vl_Saldo'#13#10#13#10'from'#13#10'  CCorrente CC'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = CC.Cd_Banco'#13#10#13#10'order by'#13#10'  CC.Id_Conta '
    Parameters = <>
    Left = 714
    Top = 144
    object ADODsReportid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsReportds_conta: TStringField
      FieldName = 'ds_conta'
      Size = 50
    end
    object ADODsReportcd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsReportsg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsReportcd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsReportnr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsReportdt_abertura: TDateTimeField
      FieldName = 'dt_abertura'
    end
    object ADODsReportvl_limite: TBCDField
      FieldName = 'vl_limite'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_bloqueado: TBCDField
      FieldName = 'vl_bloqueado'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_saldo: TBCDField
      FieldName = 'vl_saldo'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Liquido'
      Calculated = True
    end
    object ADODsReportVl_Disponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Disponivel'
      Calculated = True
    end
  end
  object ADODsSaldo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  sum('#13#10'    case'#13#10'      when Tp_Lancamento <= ''''3'''' then Vl_Lancamento'#13#10'      else -1 * Vl_Lancamento'#13#10'    end ) as Vl_Saldo,'#13#10#13#10'  sum('#13#10'    case'#13#10'      when Fl_Bloqueado = ''''1'''' then Vl_Lancamento'#13#10'      else 0'#13#10'    end ) as Vl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto'#13#10#13#10'where'#13#10'  Id_Conta      = :Id_Conta and'#13#10'  Fl_Compensado = ''''1'''
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 746
    Top = 144
    object ADODsSaldovl_saldo: TBCDField
      FieldName = 'vl_saldo'
      Precision = 28
      Size = 6
    end
    object ADODsSaldovl_bloqueado: TBCDField
      FieldName = 'vl_bloqueado'
      Precision = 28
      Size = 6
    end
  end
  object DsLancto: TDataSource
    DataSet = ADODsLancto
    Left = 776
    Top = 144
  end
  object ADODsLancto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsLanctoCalcFields
    CommandText = 'select top 50'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado, CL.Fl_Compensado, CL.Nr_Resumo'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta      = :Id_Conta '#13#10#13#10'order by'#13#10'  CL.Id_Conta, CL.Nr_Lancamento desc'
    DataSource = DmMaster.DsConexao
    Parameters = <
      item
        Name = 'Id_Conta'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 808
    Top = 144
    object ADODsLanctoId_Conta: TSmallintField
      FieldName = 'Id_Conta'
    end
    object ADODsLanctoNr_Lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'Nr_Lancamento'
    end
    object ADODsLanctoTp_Lancamento: TStringField
      FieldName = 'Tp_Lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctoDt_Lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsLanctoVl_Lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Lancamento'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsLanctoCd_Historico: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Historico'
    end
    object ADODsLanctoDs_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsLanctoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 50
    end
    object ADODsLanctoFl_Bloqueado: TStringField
      FieldName = 'Fl_Bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctoFl_Compensado: TStringField
      FieldName = 'Fl_Compensado'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctoNr_Resumo: TIntegerField
      FieldName = 'Nr_Resumo'
    end
    object ADODsLanctoDp_Lancamento: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Lancamento'
      Size = 25
      Calculated = True
    end
    object ADODsLanctoDs_Lancamento: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
    object ADODsLanctoMm_Lancamento: TStringField
      DisplayLabel = 'Descri'#231#227'o do Lan'#231'amento'
      FieldKind = fkCalculated
      FieldName = 'Mm_Lancamento'
      Size = 5000
      Calculated = True
    end
  end
end
