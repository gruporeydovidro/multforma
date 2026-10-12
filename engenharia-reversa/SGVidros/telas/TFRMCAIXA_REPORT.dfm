object FrmCaixa_Report: TFrmCaixa_Report
  Left = 330
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Caixa'
  ClientHeight = 347
  ClientWidth = 736
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
    Height = 347
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 661
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 715
    Height = 347
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 1085
    ExplicitHeight = 661
    object BvlSeparator: TBevel
      Left = 3
      Top = 316
      Width = 707
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 194
      Top = 3
      Width = 101
      Height = 13
      Caption = 'Tipo de Lan'#231'amento:'
    end
    object Label19: TLabel
      Left = 5
      Top = 40
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 45
      Top = 56
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label7: TLabel
      Left = 5
      Top = 77
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 91
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
      Top = 112
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 45
      Top = 126
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
    object Label5: TLabel
      Left = 344
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object SbUsuario: TSpeedButton
      Left = 454
      Top = 18
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
    object BitBtnConfirm: TBitBtn
      Left = 542
      Top = 319
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 890 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 628
      Top = 319
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 18
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
      Top = 18
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
    object CbTp_Lancamento: TComboBox
      Left = 192
      Top = 18
      Width = 146
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbTp_LancamentoChange
      Items.Strings = (
        'Todos os Lan'#231'amentos'
        'Entrada'
        'Sa'#237'da'
        'Estorno de Entrada'
        'Estorno de Sa'#237'da'
      )
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 56
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 68
      Top = 56
      Width = 308
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
      TabOrder = 5
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 91
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 91
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
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 126
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 67
      Top = 126
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
      TabOrder = 9
    end
    object CkBZebrado: TCheckBox
      Left = 5
      Top = 207
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object EdtCd_Usuario: TEdit
      Tag = 1
      Left = 344
      Top = 18
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 3
      OnExit = EdtCd_UsuarioExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object CkBOrcamento: TCheckBox
      Left = 5
      Top = 149
      Width = 278
      Height = 17
      Caption = 'N'#186' de Or'#231'amento de lan'#231'amento de Contas '#224' Receber'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CkBEmitente: TCheckBox
      Left = 331
      Top = 149
      Width = 164
      Height = 17
      Caption = 'Nome do Cliente/Fornecedor'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CkBHistorico: TCheckBox
      Left = 6
      Top = 167
      Width = 128
      Height = 17
      TabStop = False
      Caption = 'Resumo por Hist'#243'rico'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CkBPortador: TCheckBox
      Left = 331
      Top = 167
      Width = 123
      Height = 17
      TabStop = False
      Caption = 'Resumo por Portador'
      TabOrder = 14
    end
    object CkBSaldoAtual: TCheckBox
      Left = 151
      Top = 167
      Width = 142
      Height = 17
      TabStop = False
      Caption = 'Saldo atual por Hist'#243'rico'
      TabOrder = 13
    end
  end
  object SctReport: TSctReport
    Left = 273
    Top = 65
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
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 81
    SLeft = 72
    SWidth = 849
    SHeight = 599
    MTop = 65
    MLeft = 273
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
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Caixa'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctDetail
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsReport
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
      object adodsfilialDp_FilialVar1: TSctDBVar
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
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsReport
      end
      object adodsreportnr_lancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_lancamento'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportdt_lancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_lancamento'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportvl_lancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_lancamento'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Lancamento'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_EspecieVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Especie'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DocumentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Documento'
        DataSource = DsReport
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 29
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmHistorico_Find.DsFind
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel
        DataSource = DsSintetico
      end
      object adodssinteticoCd_HistoricoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Historico'
        DataSource = DsSintetico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodssinteticoDs_HistoricoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Historico'
        DataSource = DsSintetico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodssinteticoVl_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Lancamento'
        DataSource = DsSintetico
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
      object RfBSinteticoHeaderLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object adodssinteticoDp_HistoricoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Historico'
        DataSource = DsSintetico
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel1
        DataSource = DsPortador
      end
      object DataLevel1: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object RfBPortadorHeaderLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object adodsportadorDs_OrigemVar: TSctDBVar
        Left = 0
        Top = 29
        Width = 0
        Height = 0
        DataField = 'Ds_Origem'
        DataSource = DsPortador
        UpdateLevel = DataLevel1
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsportadorCd_PortadorVar: TSctDBVar
        Left = 0
        Top = 29
        Width = 0
        Height = 0
        DataField = 'Cd_Portador'
        DataSource = DsPortador
        UpdateLevel = DataLevel1
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsportadorNm_PortadorVar: TSctDBVar
        Left = 0
        Top = 29
        Width = 0
        Height = 0
        DataField = 'Nm_Portador'
        DataSource = DsPortador
        UpdateLevel = DataLevel1
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsportadorVl_LancamentoVar: TSctDBVar
        Left = 0
        Top = 29
        Width = 0
        Height = 0
        DataField = 'Vl_Lancamento'
        DataSource = DsPortador
        UpdateLevel = DataLevel1
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 64
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel2
        DataSource = DsSaldoAtual
      end
      object DataLevel2: TSctLevel
        Left = 0
        Top = 64
        Width = 0
        Height = 0
      end
      object RfBSaldoAtualHeaderLevel: TSctLevel
        Left = 0
        Top = 64
        Width = 0
        Height = 0
        IsHeader = True
      end
      object adodssaldoatualCd_HistoricoVar: TSctDBVar
        Left = 0
        Top = 169
        Width = 0
        Height = 0
        DataField = 'Cd_Historico'
        DataSource = DsSaldoAtual
        UpdateLevel = DataLevel2
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodssaldoatualDs_HistoricoVar: TSctDBVar
        Left = 0
        Top = 169
        Width = 0
        Height = 0
        DataField = 'Ds_Historico'
        DataSource = DsSaldoAtual
        UpdateLevel = DataLevel2
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodssaldoatualVl_LancamentoVar: TSctDBVar
        Left = 0
        Top = 169
        Width = 0
        Height = 0
        DataField = 'Vl_Lancamento'
        DataSource = DsSaldoAtual
        UpdateLevel = DataLevel2
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodssaldoatualDp_HistoricoVar: TSctDBVar
        Left = 0
        Top = 178
        Width = 0
        Height = 0
        DataField = 'Dp_Historico'
        DataSource = DsSaldoAtual
        UpdateLevel = DataLevel2
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = SctLevel10
        DataSource = FrmUsuario_Find.DsFind
      end
      object adodsfindcd_usuarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_usuario'
        DataSource = FrmUsuario_Find.DsFind
        UpdateLevel = SctLevel10
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsfindnm_usuarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_usuario'
        DataSource = FrmUsuario_Find.DsFind
        UpdateLevel = SctLevel10
        AutoVar = True
        ID = vidAutoDataVar
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel8
        Visible = False
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 22
        Width = 805
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
          Caption = 'Caixa'
        end
        object Sctvarlabel105: TSctvarlabel
          Left = 653
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel106: TSctvarlabel
          Left = 691
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel114: TSctvarlabel
          Left = 653
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel115: TSctvarlabel
          Left = 691
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine8: TSctLine
          Left = 0
          Top = 38
          Width = 756
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
      object SctDetail: TSctBand
        Left = 0
        Top = 178
        Width = 805
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctDetail'
        Updatelevel = SctLevel10
        Stretch = True
        OnBeforePrint = SctDetailBeforePrint
        object Sctvarlabel3: TSctvarlabel
          Left = 0
          Top = 1
          Width = 57
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsreportnr_lancamentoVar
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 55
          Top = 1
          Width = 76
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsreportdt_lancamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctVarSaldo: TSctvarlabel
          Left = 656
          Top = 1
          Width = 100
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
          Caption = '0.00'
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 591
          Top = 1
          Width = 114
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsreportDp_EspecieVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 496
          Top = 1
          Width = 93
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsreportvl_lancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 125
          Top = 1
          Width = 281
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsreportDp_LancamentoVar
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 406
          Top = 1
          Width = 115
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsreportDp_DocumentoVar
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 213
        Width = 805
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel11
        object SctLine9: TSctLine
          Left = 1
          Top = 1
          Width = 756
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
          Variable = adodsfilialDp_FilialVar1
        end
        object Sctvarlabel125: TSctvarlabel
          Left = 673
          Top = 4
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel126: TSctvarlabel
          Left = 719
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
        Top = 251
        Width = 805
        Height = 88
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        OnBeforePrint = SctBand12BeforePrint
        object Sctvarlabel10: TSctvarlabel
          Left = 504
          Top = 69
          Width = 144
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Saldo Atual:'
        end
        object SctVarNewSaldo: TSctvarlabel
          Left = 649
          Top = 69
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 5
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Legenda:'
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 15
          Top = 18
          Width = 167
          Height = 48
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Lines.Strings = (
            'CR - Contas '#224' Receber'
            'CP - Contas '#224' Pagar'
            'OR - Or'#231'amento'
          )
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 504
          Top = 1
          Width = 144
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Todal de Entradas (+):'
        end
        object SctVarEntrada: TSctvarlabel
          Left = 649
          Top = 1
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object SctLine1: TSctLine
          Left = 1
          Top = 1
          Width = 756
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 504
          Top = 18
          Width = 144
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Todal de Sa'#237'das (-):'
        end
        object SctVarSaida: TSctvarlabel
          Left = 649
          Top = 18
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 504
          Top = 35
          Width = 144
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Estornos de Entrada (-):'
        end
        object SctVarEstEntrada: TSctvarlabel
          Left = 649
          Top = 35
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 504
          Top = 52
          Width = 144
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Estornos de Sa'#237'da (+):'
        end
        object SctVarEstSaida: TSctvarlabel
          Left = 649
          Top = 52
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 188
          Top = 18
          Width = 235
          Height = 48
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Lines.Strings = (
            'LM - Lan'#231'amento Manual'
            ''
            'LE - Lan'#231'amento Estornado'
          )
        end
      end
      object PgHdPedido: TSctSubBand
        Left = 0
        Top = 81
        Width = 805
        Height = 47
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
        object Sctvarlabel42: TSctvarlabel
          Left = 0
          Top = 30
          Width = 76
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Lan'#231'amento'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 55
          Top = 30
          Width = 70
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Caption = 'Data'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 685
          Top = 30
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 590
          Top = 30
          Width = 84
          Height = 17
          WrapText = True
          Stretch = True
          DataFormat.SuppressNulls = True
          Caption = 'Lan'#231'amento'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 515
          Top = 30
          Width = 73
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          DataFormat.SuppressNulls = True
          Caption = 'Valor'
        end
        object SctLine10: TSctLine
          Left = 1
          Top = 41
          Width = 756
          Height = 6
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 130
          Top = 30
          Width = 158
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Descri'#231#227'o do Lan'#231'amento'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 405
          Top = 0
          Width = 112
          Height = 47
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Caption = 'Documento e/ou Origem do Lan'#231'amento'
        end
      end
      object SctBdOldSaldo: TSctSubBand
        Left = 0
        Top = 143
        Width = 805
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctBdOldSaldo'
        Updatelevel = SctLevel9
        OnAfterPrint = SctBdOldSaldoAfterPrint
        Band = SctBand9
        Order = 1
        Above = False
        object Sctvarlabel5: TSctvarlabel
          Left = 555
          Top = 1
          Width = 94
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Saldo Anterior:'
        end
        object SctVarOldSaldo: TSctvarlabel
          Left = 650
          Top = 1
          Width = 105
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
      end
      object RfBSintetico: TSctSubDataBand
        Left = 0
        Top = 423
        Width = 805
        Height = 17
        ParentColor = True
        BandName = 'RfBSintetico'
        Updatelevel = DataLevel
        OnBeforePrint = RfBSinteticoBeforePrint
        OnAfterPrint = RfBSinteticoAfterPrint
        Band = SctBand12
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsSintetico
        object Sctvarlabel49: TSctvarlabel
          Left = 22
          Top = 1
          Width = 50
          Height = 17
          AlignHorizontal = laRight
          Variable = adodssinteticoCd_HistoricoVar
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 74
          Top = 1
          Width = 304
          Height = 17
          Variable = adodssinteticoDs_HistoricoVar
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 385
          Top = 1
          Width = 121
          Height = 17
          AlignHorizontal = laRight
          Variable = adodssinteticoVl_LancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object RfBSinteticoHeader: TSctDataHeadBand
        Left = 0
        Top = 354
        Width = 805
        Height = 19
        ParentColor = True
        BandName = 'RfBSinteticoHeader'
        Updatelevel = RfBSinteticoHeaderLevel
        Band = RfBSintetico
        object Sctvarlabel41: TSctvarlabel
          Left = 22
          Top = 0
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel47: TSctvarlabel
          Left = 74
          Top = 0
          Width = 304
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Hist'#243'rico - RESUMO DO PERIODO'
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 385
          Top = 0
          Width = 121
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor do Lan'#231'amento'
        end
        object SctLine13: TSctLine
          Left = 18
          Top = 14
          Width = 488
          Height = 5
        end
      end
      object RfBSinteticoSub: TSctSubBand
        Left = 0
        Top = 388
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'RfBSinteticoSub'
        OnPrintWhen = RfBSinteticoSubPrintWhen
        Updatelevel = DataLevel
        Band = RfBSintetico
        Above = True
        object Sctvarlabel37: TSctvarlabel
          Left = 18
          Top = 0
          Width = 201
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodssinteticoDp_HistoricoVar
        end
      end
      object RfBPortador: TSctSubDataBand
        Left = 0
        Top = 534
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'RfBPortador'
        Updatelevel = DataLevel1
        OnBeforePrint = RfBSinteticoBeforePrint
        OnAfterPrint = RfBPortadorAfterPrint
        Band = SctBand12
        Order = 1
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsPortador
        object Sctvarlabel21: TSctvarlabel
          Left = 22
          Top = 1
          Width = 50
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsportadorCd_PortadorVar
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 74
          Top = 1
          Width = 304
          Height = 17
          Variable = adodsportadorNm_PortadorVar
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 385
          Top = 1
          Width = 121
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsportadorVl_LancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object RfBPortadorHeader: TSctDataHeadBand
        Left = 0
        Top = 455
        Width = 805
        Height = 29
        ParentColor = True
        BandName = 'RfBPortadorHeader'
        Updatelevel = RfBPortadorHeaderLevel
        Band = RfBPortador
        object Sctvarlabel17: TSctvarlabel
          Left = 22
          Top = 10
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 74
          Top = 10
          Width = 304
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Portador'
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 385
          Top = 10
          Width = 121
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor do Lan'#231'amento'
        end
        object SctLine2: TSctLine
          Left = 18
          Top = 24
          Width = 488
          Height = 5
        end
      end
      object RfBPortadorSub: TSctSubBand
        Left = 0
        Top = 499
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'RfBPortadorSub'
        OnPrintWhen = RfBPortadorSubPrintWhen
        Updatelevel = DataLevel1
        Band = RfBPortador
        Above = True
        object Sctvarlabel24: TSctvarlabel
          Left = 18
          Top = 0
          Width = 351
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsportadorDs_OrigemVar
        end
      end
      object RfBSaldoAtual: TSctSubDataBand
        Left = 0
        Top = 648
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'RfBSaldoAtual'
        Updatelevel = DataLevel2
        OnBeforePrint = RfBSinteticoBeforePrint
        OnAfterPrint = RfBSaldoAtualAfterPrint
        Band = SctBand12
        Order = 2
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsSaldoAtual
        object Sctvarlabel29: TSctvarlabel
          Left = 22
          Top = 1
          Width = 50
          Height = 17
          AlignHorizontal = laRight
          Variable = adodssaldoatualCd_HistoricoVar
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 74
          Top = 1
          Width = 304
          Height = 17
          Variable = adodssaldoatualDs_HistoricoVar
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 385
          Top = 1
          Width = 121
          Height = 17
          AlignHorizontal = laRight
          Variable = adodssaldoatualVl_LancamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object RfBSaldoAtualHeader: TSctDataHeadBand
        Left = 0
        Top = 569
        Width = 805
        Height = 29
        ParentColor = True
        BandName = 'RfBSaldoAtualHeader'
        Updatelevel = RfBSaldoAtualHeaderLevel
        Band = RfBSaldoAtual
        object Sctvarlabel25: TSctvarlabel
          Left = 22
          Top = 9
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 74
          Top = 9
          Width = 304
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Hist'#243'rico - SALDO ATUAL'
        end
        object Sctvarlabel27: TSctvarlabel
          Left = 385
          Top = 9
          Width = 121
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor do Lan'#231'amento'
        end
        object SctLine3: TSctLine
          Left = 18
          Top = 23
          Width = 488
          Height = 5
        end
      end
      object RfBSaldoAtualSub: TSctSubBand
        Left = 0
        Top = 613
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'RfBSaldoAtualSub'
        OnPrintWhen = RfBSaldoAtualSubPrintWhen
        Updatelevel = DataLevel2
        Band = RfBSaldoAtual
        Above = True
        object Sctvarlabel28: TSctvarlabel
          Left = 18
          Top = 0
          Width = 201
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodssaldoatualDp_HistoricoVar
        end
      end
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Vl_Lancamento, C.Ds_Lancamento, C.Cd_Historico, H.Ds_Historico,'#13#10'  H.Tp_Historico, C.Nr_Documento, C.Nr_Estorno, C.Nr_Orcamento, C.Nr_Receber,'#13#10'  C.Nr_Receber_Par, C.Nr_Receber_Lancto, C.Nr_Pagar, C.Nr_Pagar_Par,'#13#10'  C.Nr_Pagar_Lancto, C.Nr_Balcao, R.Nr_Orcamento as Nr_OrcReceber,'#13#10'  OT.Cd_Emitente as Cd_Cliente, OT.Nm_Emitente as Nm_Cliente,'#13#10'  P.Cd_Emitente as Cd_Fornecedor, E.NM_Emitente as Nm_Fornecedor'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial  = C.Cd_Filial and'#13#10'  R.Nr_Receber = C.Nr_Receber'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = C.Cd_Filial and'#13#10'  OT.Nr_Orcamento = C.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Pagar P'#13#10'on'#13#10'  P.Cd_Filial = C.Cd_Filial and'#13#10'  P.Nr_Pagar  = C.Nr_Pagar'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = P.Cd_Emitente'#13#10#13#10'where'#13#10'  C.Cd_Filial  = :Cd_Filial '
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
        Name = 'Fl_Estoque'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '''1'''
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'
      '  C.Vl_Lancamento, C.Ds_Lancamento, C.Cd_Historico, H.Ds_Historico,'
      '  H.Tp_Historico, C.Nr_Documento, C.Nr_Estorno, C.Nr_Orcamento, C.Nr_Receber,'
      '  C.Nr_Receber_Par, C.Nr_Receber_Lancto, C.Nr_Pagar, C.Nr_Pagar_Par,'
      '  C.Nr_Pagar_Lancto, C.Nr_Balcao, R.Nr_Orcamento as Nr_OrcReceber,'
      '  OT.Cd_Emitente as Cd_Cliente, OT.Nm_Emitente as Nm_Cliente,'
      '  P.Cd_Emitente as Cd_Fornecedor, E.NM_Emitente as Nm_Fornecedor'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = C.Cd_Historico'
      ''
      'left join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = C.Cd_Filial and'
      '  R.Nr_Receber = C.Nr_Receber'
      ''
      'left join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = R.Cd_Filial and'
      '  OT.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'left join'
      '  Pagar P'
      'on'
      '  P.Cd_Filial = C.Cd_Filial and'
      '  P.Nr_Pagar  = C.Nr_Pagar'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = P.Cd_Emitente'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial '
    )
    Left = 438
    Top = 47
    object ADODsReportcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReportnr_lancamento: TIntegerField
      FieldName = 'nr_lancamento'
    end
    object ADODsReportdt_lancamento: TDateTimeField
      FieldName = 'dt_lancamento'
    end
    object ADODsReporttp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsReportvl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsReportds_lancamento: TStringField
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsReportcd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsReportds_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsReporttp_historico: TStringField
      FieldName = 'tp_historico'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Especie: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Especie'
      Calculated = True
    end
    object ADODsReportnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsReportnr_estorno: TIntegerField
      FieldName = 'nr_estorno'
    end
    object ADODsReportnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsReportnr_receber_par: TSmallintField
      FieldName = 'nr_receber_par'
    end
    object ADODsReportnr_receber_lancto: TSmallintField
      FieldName = 'nr_receber_lancto'
    end
    object ADODsReportnr_pagar: TIntegerField
      FieldName = 'nr_pagar'
    end
    object ADODsReportnr_pagar_par: TSmallintField
      FieldName = 'nr_pagar_par'
    end
    object ADODsReportnr_pagar_lancto: TSmallintField
      FieldName = 'nr_pagar_lancto'
    end
    object ADODsReportDp_Lancamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Lancamento'
      Size = 200
      Calculated = True
    end
    object ADODsReportDp_Documento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Documento'
      Size = 50
      Calculated = True
    end
    object ADODsReportnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsReportnr_balcao: TIntegerField
      FieldName = 'nr_balcao'
    end
    object ADODsReportCd_Cliente: TIntegerField
      FieldName = 'Cd_Cliente'
    end
    object ADODsReportNm_Cliente: TStringField
      FieldName = 'Nm_Cliente'
      Size = 50
    end
    object ADODsReportCd_Fornecedor: TIntegerField
      FieldName = 'Cd_Fornecedor'
    end
    object ADODsReportNm_Fornecedor: TStringField
      FieldName = 'Nm_Fornecedor'
      Size = 50
    end
    object ADODsReportNr_OrcReceber: TIntegerField
      FieldName = 'Nr_OrcReceber'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 409
    Top = 47
  end
  object ADODsSaldoAnterior: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  sum( Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa'#13#10#13#10'where'#13#10'  Cd_Filial     = :Cd_Filial and'#13#10'  Dt_Lancamento < :Dt_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Lancamento'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  sum( Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Tp_Lancamento = :Tp_Lancamento and'
      '  Dt_Lancamento < :Dt_Lancamento'
      '  /* Cd_Usuario */  '
    )
    SQLOther1.Strings = (
      'select'
      '  sum('
      '    case'
      '      when Tp_Lancamento in ( ''''1'''', ''''4'''' ) then Vl_Lancamento'
      '      else -1 * Vl_Lancamento'
      '    end ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Dt_Lancamento < :Dt_Lancamento'
      '  /* Cd_Usuario */'
    )
    Left = 467
    Top = 47
    object ADODsSaldoAnteriorVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      Precision = 28
      Size = 6
    end
  end
  object DsSintetico: TDataSource
    DataSet = ADODsSintetico
    Left = 427
    Top = 87
  end
  object ADODsSintetico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSinteticoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,'#13#10'  Sum( C.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial  = :Cd_Filial '#13#10#13#10'group by'#13#10'    C.Cd_Historico, H.Ds_Historico, H.Tp_Historico'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,'
      '  Sum( C.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = C.Cd_Historico'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial '
    )
    Left = 455
    Top = 87
    object ADODsSinteticoCd_Historico: TSmallintField
      FieldName = 'Cd_Historico'
    end
    object ADODsSinteticoDs_Historico: TStringField
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsSinteticoTp_Historico: TStringField
      FieldName = 'Tp_Historico'
      FixedChar = True
      Size = 1
    end
    object ADODsSinteticoVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsSinteticoDp_Historico: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Calculated = True
    end
  end
  object DsPortador: TDataSource
    DataSet = ADODsPortador
    Left = 399
    Top = 119
  end
  object ADODsPortador: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Contas Recebidas'#13#10'select'#13#10'  ''''Contas Recebidas'''' as Ds_Origem, RP.Cd_Portador, P.Nm_Portador,'#13#10'  Sum( C.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  = C.Cd_Filial and'#13#10'  RP.Nr_Receber = C.Nr_Receber and'#13#10'  RP.Nr_Parcela = C.Nr_Receber_Par'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RP.Cd_Portador'#13#10#13#10'where'#13#10'  C.Cd_Filial  = 1 '#13#10#13#10'group by'#13#10'RP.Cd_Portador, P.Nm_Portador'#13#10#13#10'union'#13#10#13#10'--------------- Contas Pagas'#13#10'select'#13#10'  ''''Contas Pagas'''' as Ds_Origem, PP.Cd_Portador, P.Nm_Portador,'#13#10'  Sum( C.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Pagar_Parcela PP'#13#10'on'#13#10'  PP.Cd_Filial  = C.Cd_Filial and'#13#10'  PP.Nr_Pagar   = C.Nr_Pagar and'#13#10'  PP.Nr_Parcela = C.Nr_Pagar_Par'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = PP.Cd_Portador'#13#10#13#10'where'#13#10'  C.Cd_Filial  = 1'#13#10#13#10'group by'#13#10'  PP.Cd_Portador, P.Nm_Portador'#13#10'  '#13#10'order by'#13#10'  1, 2, 3'
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Contas Recebidas'
      'select'
      '  ''''Contas Recebidas'''' as Ds_Origem, RP.Cd_Portador, P.Nm_Portador,'
      '  Sum( C.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = C.Cd_Filial and'
      '  RP.Nr_Receber = C.Nr_Receber and'
      '  RP.Nr_Parcela = C.Nr_Receber_Par'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = RP.Cd_Portador'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial '
    )
    SQLOther1.Strings = (
      '--------------- Contas Pagas'
      'select'
      '  ''''Contas Pagas'''' as Ds_Origem, PP.Cd_Portador, P.Nm_Portador,'
      '  Sum( C.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Pagar_Parcela PP'
      'on'
      '  PP.Cd_Filial  = C.Cd_Filial and'
      '  PP.Nr_Pagar   = C.Nr_Pagar and'
      '  PP.Nr_Parcela = C.Nr_Pagar_Par'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = PP.Cd_Portador'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial '
    )
    Left = 429
    Top = 119
    object ADODsPortadorDs_Origem: TStringField
      FieldName = 'Ds_Origem'
      ReadOnly = True
      Size = 16
    end
    object ADODsPortadorCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
      ReadOnly = True
    end
    object ADODsPortadorNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      ReadOnly = True
      Size = 50
    end
    object ADODsPortadorVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object ADODsSaldoAtual: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSinteticoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,'#13#10'  Sum( C.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial  = :Cd_Filial '#13#10#13#10'group by'#13#10'    C.Cd_Historico, H.Ds_Historico, H.Tp_Historico'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Historico, H.Ds_Historico, H.Tp_Historico,'
      '  Sum( C.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = C.Cd_Historico'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial '
    )
    Left = 511
    Top = 119
    object ADODsSaldoAtualCd_Historico: TSmallintField
      FieldName = 'Cd_Historico'
    end
    object ADODsSaldoAtualDs_Historico: TStringField
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsSaldoAtualTp_Historico: TStringField
      FieldName = 'Tp_Historico'
      FixedChar = True
      Size = 1
    end
    object ADODsSaldoAtualVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsSaldoAtualDp_Historico: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Calculated = True
    end
  end
  object DsSaldoAtual: TDataSource
    DataSet = ADODsSaldoAtual
    Left = 483
    Top = 119
  end
end
