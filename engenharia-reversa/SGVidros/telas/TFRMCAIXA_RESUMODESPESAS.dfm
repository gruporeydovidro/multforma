object FrmCaixa_ResumoDespesas: TFrmCaixa_ResumoDespesas
  Left = 428
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Resumo de Despesas'
  ClientHeight = 255
  ClientWidth = 646
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 625
    Height = 255
    Align = alClient
    ParentColor = True
    TabOrder = 2
    object BvlSeparator: TBevel
      Left = 3
      Top = 224
      Width = 615
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label7: TLabel
      Left = 5
      Top = 38
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label9: TLabel
      Left = 5
      Top = 75
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 45
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object Label1: TLabel
      Left = 5
      Top = 111
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 45
      Top = 125
      Width = 23
      Height = 19
      Hint = 'Seleciona Hist'#243'rico'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbHistoricoClick
    end
    object Label3: TLabel
      Left = 195
      Top = 2
      Width = 90
      Height = 13
      Caption = 'Origem dos Dados:'
    end
    object Label4: TLabel
      Left = 303
      Top = 1
      Width = 45
      Height = 13
      Caption = 'Relat'#243'rio:'
    end
    object BitBtnReport: TBitBtn
      Left = 451
      Top = 228
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 8
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 890 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 537
      Top = 228
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 52
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
      TabOrder = 5
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 69
      Top = 89
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
      TabOrder = 7
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 69
      Top = 125
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
      TabOrder = 11
    end
    object CbOrigem: TComboBox
      Left = 195
      Top = 16
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbOrigemChange
      Items.Strings = (
        'Caixa'
        'Conta '#224' Pagar'
      )
    end
    object CbReport: TComboBox
      Left = 303
      Top = 15
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnChange = CbOrigemChange
      Items.Strings = (
        'Anal'#237'tico'
        'Sint'#233'tico'
      )
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 255
    Align = alLeft
    TabOrder = 1
  end
  object SctRepPagar: TSctReport
    Left = 139
    Top = 125
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
    MTop = 125
    MLeft = 139
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
      Description = 'Resumo de Despesas'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctDtlSubGrupo
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsResDespesa
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
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsResDespesa
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide7: TSctDataSourceGuide
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
      object adodsresdespesacd_grupoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_grupo'
        DataSource = DsResDespesa
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresdespesanm_grupoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_grupo'
        DataSource = DsResDespesa
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresdespesacd_subgrupoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_subgrupo'
        DataSource = DsResDespesa
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresdespesanm_subgrupoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_subgrupo'
        DataSource = DsResDespesa
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresdespesavl_lancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_lancamento'
        DataSource = DsResDespesa
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfvl_lancamento: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsresdespesavl_lancamentoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object Group: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = GroupHeader
        Footer = GroupFooter
        Variable = adodsresdespesacd_grupoVar
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
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel
        DataSource = DsAnalitico
      end
      object adodsanaliticoVl_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Lancamento'
        DataSource = DsAnalitico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsanaliticoDs_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Lancamento'
        DataSource = DsAnalitico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsanaliticoNr_DocumentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Documento'
        DataSource = DsAnalitico
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
      object adodsanaliticoDt_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Lancamento'
        DataSource = DsAnalitico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SubBdAnaliticoFooterLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
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
          Caption = 'Resumo de Despesas'
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
        object SctPeriodo: TSctvarlabel
          Left = 2
          Top = 20
          Width = 604
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Caption = 'Per'#237'odo: dd/mm/yyyy'
        end
      end
      object SctDtlSubGrupo: TSctBand
        Left = 0
        Top = 149
        Width = 786
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctDtlSubGrupo'
        Updatelevel = SctLevel10
        OnBeforePrint = SctDtlSubGrupoBeforePrint
        object SctVarVlSubGrupo: TSctvarlabel
          Left = 666
          Top = 2
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresdespesavl_lancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object SctVarCdSubGrupo: TSctvarlabel
          Left = 46
          Top = 2
          Width = 41
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsresdespesacd_subgrupoVar
        end
        object SctVarDsSubGrupo: TSctvarlabel
          Left = 91
          Top = 2
          Width = 569
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsresdespesanm_subgrupoVar
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 311
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
        Top = 349
        Width = 786
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        object SctLine7: TSctLine
          Left = 570
          Top = 2
          Width = 166
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel24: TSctTotalvarLabel
          Left = 666
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfvl_lancamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel47: TSctvarlabel
          Left = 554
          Top = 5
          Width = 103
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Total Geral:'
        end
      end
      object PgHdPedido: TSctSubBand
        Left = 0
        Top = 81
        Width = 786
        Height = 19
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'PageHeaderBandSub'
        Updatelevel = SctLevel9
        Band = SctBand9
        Above = False
        object Sctvarlabel42: TSctvarlabel
          Left = 0
          Top = 1
          Width = 109
          Height = 17
          Caption = 'Grupo / SubGrupo'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 112
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Aplica'#231#227'o'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 666
          Top = 1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Valor'
        end
        object SctLine10: TSctLine
          Left = 1
          Top = 13
          Width = 734
          Height = 6
        end
      end
      object GroupHeader: TSctBand
        Left = 0
        Top = 115
        Width = 786
        Height = 19
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'Group Header'
        Updatelevel = GroupHeaderLevel
        object Sctvarlabel2: TSctvarlabel
          Left = 0
          Top = 2
          Width = 41
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsresdespesacd_grupoVar
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 45
          Top = 2
          Width = 501
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsresdespesanm_grupoVar
        end
      end
      object GroupFooter: TSctBand
        Left = 0
        Top = 276
        Width = 786
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        BandName = 'Group Footer'
        Updatelevel = GroupFooterLevel
        object SctLine1: TSctLine
          Left = 570
          Top = 2
          Width = 166
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 666
          Top = 3
          Width = 70
          Height = 17
          TotalVariable = TotalOfvl_lancamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 554
          Top = 3
          Width = 103
          Height = 17
          AlignHorizontal = laRight
          Caption = 'SubTotal:'
        end
      end
      object SubBdAnalitico: TSctSubDataBand
        Left = 0
        Top = 217
        Width = 786
        Height = 18
        ParentColor = True
        BandName = 'SubBdAnalitico'
        Updatelevel = DataLevel
        Band = SctDtlSubGrupo
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsAnalitico
        object Sctvarlabel9: TSctvarlabel
          Left = 31
          Top = 0
          Width = 82
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsanaliticoDt_LancamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 117
          Top = 0
          Width = 360
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsanaliticoDs_LancamentoVar
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 480
          Top = 0
          Width = 154
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsanaliticoNr_DocumentoVar
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 640
          Top = 0
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsanaliticoVl_LancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object DataHeader: TSctDataHeadBand
        Left = 0
        Top = 182
        Width = 786
        Height = 20
        ParentColor = True
        BandName = 'DataHeader'
        Updatelevel = DataHeaderLevel
        Band = SubBdAnalitico
        object SctTxtDtLancto: TSctvarlabel
          Left = 31
          Top = 0
          Width = 82
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Caption = 'Data'
        end
        object SctTxtDsLancto: TSctvarlabel
          Left = 117
          Top = 0
          Width = 360
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Descri'#231#227'o / Fornecedor'
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 480
          Top = 0
          Width = 154
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Documento'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 640
          Top = 0
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Caption = 'Valor'
        end
        object SctLine2: TSctLine
          Left = 31
          Top = 13
          Width = 674
          Height = 6
        end
      end
      object SubBdAnaliticoFooter: TSctDataFootBand
        Left = 0
        Top = 250
        Width = 786
        Height = 11
        ParentColor = True
        BandName = 'SubBdAnaliticoFooter'
        Updatelevel = SubBdAnaliticoFooterLevel
        Band = SubBdAnalitico
      end
    end
  end
  object DsResDespesa: TDataSource
    DataSet = ADODsResDespesa
    Left = 339
    Top = 52
  end
  object ADODsResDespesa: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsResDespesaCalcFields
    CommandText = 'select'#13#10'  C.Cd_Grupo, C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Aplicacao_Grupo AG'#13#10'on'#13#10'  AG.Cd_Grupo = C.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Aplicacao_SubGrupo ASG'#13#10'on'#13#10'  ASG.Cd_SubGrupo = C.Cd_SubGrupo'#13#10#13#10'group by'#13#10'  C.Cd_Grupo, C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '/* Dados Originados do Caixa */'
      'select'
      '  C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo,'
      '  sum( C.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Aplicacao_Grupo AG'
      'on'
      '  AG.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  Aplicacao_SubGrupo ASG'
      'on'
      '  ASG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'where'
      ''
    )
    SQLOther1.Strings = (
      '/* Dados Originados do Contas a Pagar */'
      'select'
      '  C.Cd_Grupo, AG.Nm_Grupo, C.Cd_SubGrupo, ASG.Nm_SubGrupo,'
      '  sum( PP.Vl_Parcela ) as Vl_Lancamento'
      ''
      'from'
      '  Pagar_Parcela PP'
      ''
      'inner join'
      '  Pagar C'
      'on'
      '  C.Cd_Filial = PP.Cd_Filial and'
      '  C.Nr_Pagar  = PP.Nr_Pagar and'
      ''
    )
    SQLOther2.Strings = (
      '  C.St_Pagar  <= ''''3'''
      'inner join'
      '  Aplicacao_Grupo AG'
      'on'
      '  AG.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  Aplicacao_SubGrupo ASG'
      'on'
      '  ASG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'where'
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) || '''' - '''' || D.Nm_Emitente'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      'order by'
      '  A.Dt_Vencimento, A.Nr_Pagar, A.Nr_Parcela'
    )
    Left = 369
    Top = 52
    object ADODsResDespesacd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsResDespesanm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsResDespesacd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsResDespesanm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
    end
    object ADODsResDespesavl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 28
      Size = 6
    end
    object ADODsResDespesaCd_Filial: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Cd_Filial'
      Calculated = True
    end
    object ADODsResDespesaDt_Start: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_Start'
      Calculated = True
    end
    object ADODsResDespesaDt_End: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_End'
      Calculated = True
    end
  end
  object ADODsAnalitico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '------------------------- Dados do Caixa'#13#10'declare'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Dt_Start = :Dt_Start,'#13#10'  @Dt_End   = :Dt_End'#13#10#13#10'select'#13#10'  Ori.Cd_Filial, Ori.Cd_Grupo, Ori.Cd_SubGrupo, Ori.Vl_Lancamento, Ori.Ds_Lancamento, Ori.Nr_Documento,'#13#10'  Ori.Dt_Lancamento, @Dt_Start as Dt_Start, @Dt_End as Dt_End'#13#10#13#10'from'#13#10'  Caixa Ori'#13#10#13#10'where'#13#10'  Ori.Cd_Filial = :Cd_Filial and'#13#10'  /* Cd_Historico */'#13#10'  Ori.Cd_Grupo       = :Cd_Grupo and'#13#10'  Ori.Cd_SubGrupo    = :Cd_SubGrupo and'#13#10'  Ori.Dt_Lancamento >= @Dt_Start and'#13#10'  Ori.Dt_Lancamento  < @Dt_End'#13#10#13#10#13#10
    IndexFieldNames = 'Cd_Filial;Cd_Grupo;Cd_SubGrupo;Dt_Start;Dt_End'
    Parameters = <
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Cd_Grupo'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Cd_SubGrupo'
        DataType = ftSmallint
        Value = nil?
      end>
    SQLOther0.Strings = (
      '------------------------- Dados do Caixa'
      'declare'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Dt_Start = :Dt_Start,'
      '  @Dt_End   = :Dt_End'
      ''
      'select'
      '  Ori.Cd_Filial, Ori.Cd_Grupo, Ori.Cd_SubGrupo, Ori.Vl_Lancamento, Ori.Ds_Lancamento, Ori.Nr_Documento,'
      '  Ori.Dt_Lancamento, @Dt_Start as Dt_Start, @Dt_End as Dt_End'
      ''
      'from'
      '  Caixa Ori'
      ''
      'where'
      '  Ori.Cd_Filial = :Cd_Filial and'
      '  /* Cd_Historico */'
      '  Ori.Cd_Grupo       = :Cd_Grupo and'
      '  Ori.Cd_SubGrupo    = :Cd_SubGrupo and'
      '  Ori.Dt_Lancamento >= @Dt_Start and'
      '  Ori.Dt_Lancamento  < @Dt_End'
      ''
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Dados Originados do Contas a Pagar'
      'declare'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Dt_Start = :Dt_Start,'
      '  @Dt_End   = :Dt_End'
      ''
      'select'
      '  PP.Cd_Filial, Ori.Cd_Grupo, Ori.Cd_SubGrupo, PP.Vl_Parcela as Vl_Lancamento,'
      '  E.Nm_Emitente as Ds_Lancamento, PP.Nr_Documento, '
      '  PP.Dt_Vencimento as  Dt_Lancamento, '
      '  @Dt_Start as Dt_Start, @Dt_End as Dt_End'
      ''
      'from'
      '  Pagar_Parcela PP'
      ''
      'inner join'
      '  Pagar Ori'
      'on'
      '  Ori.Cd_Filial   = PP.Cd_Filial and'
      '  Ori.Nr_Pagar    = PP.Nr_Pagar and'
      '  Ori.St_Pagar   <= ''''3'''' and'
      '  Ori.Cd_Grupo    = :Cd_Grupo and'
      '  Ori.Cd_SubGrupo = :Cd_SubGrupo'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = Ori.Cd_Emitente'
      ''
      'where'
      '  PP.Cd_Filial      = :Cd_Filial and'
      '  PP.Dt_Vencimento >= @Dt_Start and'
      '  PP.Dt_Vencimento  < @Dt_End'
    )
    Left = 92
    Top = 150
    object ADODsAnaliticoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsAnaliticoCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsAnaliticoCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsAnaliticoVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsAnaliticoDs_Lancamento: TStringField
      FieldName = 'Ds_Lancamento'
      Size = 80
    end
    object ADODsAnaliticoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 50
    end
    object ADODsAnaliticoDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsAnaliticoDt_Start: TDateTimeField
      FieldName = 'Dt_Start'
      ReadOnly = True
    end
    object ADODsAnaliticoDt_End: TDateTimeField
      FieldName = 'Dt_End'
      ReadOnly = True
    end
  end
  object DsAnalitico: TDataSource
    DataSet = ADODsAnalitico
    Left = 64
    Top = 150
  end
end
