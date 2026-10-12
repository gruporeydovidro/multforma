object FrmCCorrente_Lancto_Report: TFrmCCorrente_Lancto_Report
  Left = 328
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Lan'#231'amentos'
  ClientHeight = 269
  ClientWidth = 658
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 269
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 637
    Height = 269
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 238
      Width = 625
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
      Left = 340
      Top = 3
      Width = 101
      Height = 13
      Caption = 'Tipo de Lan'#231'amento:'
    end
    object Label19: TLabel
      Left = 5
      Top = 38
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 45
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label5: TLabel
      Left = 514
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Compensado:'
    end
    object Label1: TLabel
      Left = 194
      Top = 4
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object Label4: TLabel
      Left = 5
      Top = 112
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object SbSave: TSpeedButton
      Left = 283
      Top = 124
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSaveClick
    end
    object BitBtnConfirm: TBitBtn
      Tag = 1
      Left = 462
      Top = 241
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 890 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 548
      Top = 241
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 11
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
      Left = 340
      Top = 18
      Width = 170
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        '0 - Todos os Lan'#231'amentos'
        '1 - Dep'#243'sito em Dinheiro'
        '2 - Dep'#243'sito em Cheque'
        '3 - Tranfer'#234'ncia (Entrada)'
        '4 - Saque'
        '5 - Transfer'#234'ncia (Sa'#237'da)'
        '6 - Cheque'
        '7 - Pagamento de Cobran'#231'a'
        '8 - Outros'
        '9 - Tarifas'
      )
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 5
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 68
      Top = 54
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
      TabOrder = 6
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 215
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CbCompensado: TComboBox
      Left = 514
      Top = 18
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Sim'
        'N'#227'o'
        'Ambos'
      )
    end
    object CbReport: TComboBox
      Left = 196
      Top = 18
      Width = 142
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Anal'#237'tico'
      OnChange = CbReportChange
      Items.Strings = (
        'Anal'#237'tico'
        'Anal'#237'tico com Resumo'
        'Sint'#233'tico'
      )
    end
    object CkBDocto: TCheckBox
      Left = 5
      Top = 79
      Width = 202
      Height = 17
      TabStop = False
      Caption = 'Incluir o n'#186' do documento no hist'#243'rico'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object SctReport: TSctReport
      Left = 413
      Top = 54
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
      TabOrder = 13
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 4
      SLeft = 6
      SWidth = 833
      SHeight = 701
      MTop = 54
      MLeft = 413
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
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Conta Corrente - Anal'#237'tico'
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
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 29
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmHistorico_Find.DsFind
        end
        object adodsreportnr_documentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
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
        object adodsreportDp_TipoLanctoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_TipoLancto'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodssinteticocd_historicoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_historico'
          DataSource = DsSintetico
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticods_historicoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_historico'
          DataSource = DsSintetico
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticovl_lancamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_lancamento'
          DataSource = DsSintetico
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticotp_historicoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'tp_historico'
          DataSource = DsSintetico
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticoDp_HistoricoVar1: TSctDBVar
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
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsConecadoMes
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
          Height = 60
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
            Caption = 'Controle Banc'#225'rio (Conta Corrente)'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 633
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 671
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 633
            Top = 39
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 671
            Top = 39
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine8: TSctLine
            Left = 1
            Top = 53
            Width = 734
            Height = 6
          end
          object SctPeriodo: TSctvarlabel
            Left = 2
            Top = 20
            Width = 604
            Height = 36
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Lines.Strings = (
              'Conta'
              'Per'#237'odo: dd/mm/yyyy'
            )
          end
        end
        object SctDetail: TSctBand
          Left = 0
          Top = 165
          Width = 786
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
            Left = 635
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
            Left = 570
            Top = 1
            Width = 114
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_TipoLanctoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 475
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
            Width = 361
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_LancamentoVar
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 200
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
            Variable = adodsfilialDp_FilialVar1
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
          Top = 238
          Width = 786
          Height = 167
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
          object Sctvarlabel11: TSctvarlabel
            Left = 5
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Legenda:'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 15
            Top = 18
            Width = 151
            Height = 75
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Lines.Strings = (
              'DD - Dep'#243'sito em Dinheiro'
              'DC - Dep'#243'sito em Cheque'
              'TE - Tranfer'#234'ncia (Entrada)'
              'SQ - Saque'
              'TS - Transfer'#234'ncia (Sa'#237'da)'
              'CK - Cheque'
            )
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 513
            Top = 3
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Dep'#243'sito em Dinheiro:'
          end
          object SctVarDepDinheiro: TSctvarlabel
            Left = 658
            Top = 3
            Width = 80
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
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object SctVarDepChequeca: TSctvarlabel
            Left = 513
            Top = 20
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Dep'#243'sito em Cheque:'
          end
          object SctVarDepCheque: TSctvarlabel
            Left = 658
            Top = 20
            Width = 80
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
            Left = 513
            Top = 37
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Transfer'#234'ncia de Entrada:'
          end
          object SctVarTransEntrada: TSctvarlabel
            Left = 658
            Top = 37
            Width = 80
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
            Left = 513
            Top = 58
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Entradas (+):'
          end
          object SctVarEntradas: TSctvarlabel
            Left = 658
            Top = 58
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 151
            Top = 18
            Width = 157
            Height = 75
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Lines.Strings = (
              'PC - Pagamento de Cobran'#231'a'
              'OT - Outras Sa'#237'das'
              'TA - Tarifas'
              'B - Bloqueado (na frente de qualtquer tipo de lan'#231'amento)'
            )
          end
          object SctLine2: TSctLine
            Left = 513
            Top = 53
            Width = 225
            Height = 5
            AlignVertical = laMiddle
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 288
            Top = 3
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saque:'
          end
          object SctVarSaque: TSctvarlabel
            Left = 433
            Top = 3
            Width = 80
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
          object Sctvarlabel14: TSctvarlabel
            Left = 288
            Top = 20
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Transfer'#234'ncia de Sa'#237'da:'
          end
          object SctVarTransSaida: TSctvarlabel
            Left = 433
            Top = 20
            Width = 80
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
          object Sctvarlabel17: TSctvarlabel
            Left = 288
            Top = 37
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Cheque:'
          end
          object SctVarCheque: TSctvarlabel
            Left = 433
            Top = 37
            Width = 80
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
          object Sctvarlabel20: TSctvarlabel
            Left = 288
            Top = 112
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Sa'#237'das:'
          end
          object SctVarSaidas: TSctvarlabel
            Left = 433
            Top = 112
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctLine3: TSctLine
            Left = 295
            Top = 107
            Width = 217
            Height = 5
            AlignVertical = laMiddle
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 288
            Top = 54
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pagamento de Cobran'#231'a:'
          end
          object SctVarPgCob: TSctvarlabel
            Left = 433
            Top = 54
            Width = 80
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
          object Sctvarlabel22: TSctvarlabel
            Left = 288
            Top = 71
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Outras Sa'#237'das:'
          end
          object SctVarOutras: TSctvarlabel
            Left = 433
            Top = 71
            Width = 80
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
            Left = 513
            Top = 148
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo Dispo'#237'vel:'
          end
          object SctVarSaldoF: TSctvarlabel
            Left = 658
            Top = 148
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 513
            Top = 92
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Bloqueado (-):'
          end
          object SctVarBloqueado: TSctvarlabel
            Left = 658
            Top = 92
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctLine4: TSctLine
            Left = 513
            Top = 144
            Width = 225
            Height = 5
            AlignVertical = laMiddle
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 513
            Top = 127
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Limite de Cr'#233'dito (+):'
          end
          object SctVarLimite: TSctvarlabel
            Left = 658
            Top = 127
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 513
            Top = 75
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo:'
          end
          object SctVarSAtual: TSctvarlabel
            Left = 658
            Top = 75
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 513
            Top = 109
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo Liquido:'
          end
          object SctVarLiquido: TSctvarlabel
            Left = 658
            Top = 109
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 288
            Top = 89
            Width = 144
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Tarifas:'
          end
          object SctVarTarifas: TSctvarlabel
            Left = 433
            Top = 89
            Width = 80
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
        object PgHdPedido: TSctSubBand
          Left = 0
          Top = 97
          Width = 786
          Height = 19
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
            Top = 1
            Width = 75
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 55
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'Data'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 665
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Saldo'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 570
            Top = 1
            Width = 84
            Height = 17
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 495
            Top = 1
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
            Top = 12
            Width = 734
            Height = 6
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 130
            Top = 1
            Width = 158
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Descri'#231#227'o do Lan'#231'amento'
          end
        end
        object SctBdOldSaldo: TSctSubBand
          Left = 0
          Top = 131
          Width = 786
          Height = 19
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
            Left = 535
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
            Left = 630
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
        object DtBdSintetico: TSctSubDataBand
          Left = 0
          Top = 488
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'DtBdSintetico'
          Updatelevel = DataLevel
          OnAfterPrint = DtBdSinteticoAfterPrint
          Band = SctBand12
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsSintetico
          object Sctvarlabel49: TSctvarlabel
            Left = 22
            Top = 0
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticocd_historicoVar
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 74
            Top = 0
            Width = 304
            Height = 17
            Variable = adodssinteticods_historicoVar
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 385
            Top = 0
            Width = 121
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticovl_lancamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 420
          Width = 786
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = DtBdSintetico
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
            Caption = 'Hist'#243'rico'
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
        object BdSubHistorico: TSctSubBand
          Left = 0
          Top = 455
          Width = 786
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'BdSubHistorico'
          OnPrintWhen = BdSubHistoricoPrintWhen
          Updatelevel = DataLevel
          Band = DtBdSintetico
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
            Variable = adodssinteticoDp_HistoricoVar1
          end
        end
      end
    end
    object SctRepSintetico: TSctReport
      Left = 516
      Top = 38
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
      TabOrder = 12
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 125
      SLeft = 20
      SWidth = 836
      SHeight = 581
      MTop = 38
      MLeft = 516
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
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.PreviewSettings.Zoom = azHeight
        BorderType = btNone
        Description = 'Conta Corrente - Sint'#233'tico'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsSintetico
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
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsSintetico
        end
        object adodssinteticocd_historicoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_historico'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticods_historicoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_historico'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticovl_lancamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_lancamento'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_lancamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodssinteticovl_lancamentoVar1
          UpdateLevel = DetailBandlevel
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
          Variable = adodssinteticotp_historicoVar
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
        object adodssinteticotp_historicoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'tp_historico'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticoDp_HistoricoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Historico'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide10: TSctDataSourceGuide
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
          Height = 60
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 299
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Controle Banc'#225'rio (Conta Corrente) - Sint'#233'tico'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 601
            Top = 22
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 634
            Top = 22
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 598
            Top = 39
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 634
            Top = 39
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine5: TSctLine
            Left = 0
            Top = 52
            Width = 698
            Height = 7
          end
          object SctPeriodo_2: TSctvarlabel
            Left = 2
            Top = 20
            Width = 604
            Height = 36
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Lines.Strings = (
              'Conta'
              'Per'#237'odo: dd/mm/yyyy'
            )
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 163
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel30: TSctvarlabel
            Left = 5
            Top = 0
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticocd_historicoVar1
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 57
            Top = 0
            Width = 449
            Height = 17
            Variable = adodssinteticods_historicoVar1
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 512
            Top = 0
            Width = 108
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticovl_lancamentoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 231
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine6: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel34: TSctvarlabel
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
          object Sctvarlabel35: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel36: TSctvarlabel
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
          Top = 266
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 95
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine11: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 5
            Top = 0
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 57
            Top = 0
            Width = 304
            Height = 17
            Caption = 'Hist'#243'rico'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 512
            Top = 0
            Width = 108
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor do Lan'#231'amento'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 130
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object SctVarTp_Lancto: TSctvarlabel
            Left = 1
            Top = 0
            Width = 190
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
        object GroupFooter: TSctBand
          Left = 0
          Top = 196
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine12: TSctLine
            Left = 430
            Top = 1
            Width = 190
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 512
            Top = 3
            Width = 108
            Height = 17
            TotalVariable = TotalOfvl_lancamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 420
            Top = 3
            Width = 97
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
      end
    end
    object EdtNm_File: TEdit
      Left = 6
      Top = 126
      Width = 274
      Height = 19
      TabOrder = 8
      Text = 'Remessa.TXT'
    end
    object BitBtnExporta: TBitBtn
      Tag = 2
      Left = 6
      Top = 241
      Width = 85
      Height = 25
      Caption = 'Exportar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2170 bytes}
      NumGlyphs = 2
    end
  end
  object ADODsReport: TMultADODS
    Tag = 1
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta      = :Id_Conta'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'
      '  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'
      '  CL.Nr_Documento, CL.Fl_Bloqueado'
      ''
      'from'
      '  CCorrente_Lancto CL'
      ''
      'inner join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = Cl.Cd_Historico'
      ''
      'where'
      '  CL.Id_Conta      = :Id_Conta'
    )
    Left = 430
    Top = 37
    object ADODsReportid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsReportnr_lancamento: TIntegerField
      FieldName = 'nr_lancamento'
    end
    object ADODsReporttp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsReportdt_lancamento: TDateField
      FieldName = 'dt_lancamento'
    end
    object ADODsReportvl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsReportcd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsReportds_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsReportnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsReportfl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Lancamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Lancamento'
      Size = 5000
      Calculated = True
    end
    object ADODsReportDp_TipoLancto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_TipoLancto'
      Size = 25
      Calculated = True
    end
    object ADODsReportDs_Lancamento: TMemoField
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 402
    Top = 37
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
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
      '  Tp_Lancamento = :Tp_Lancamento and'
      '  Dt_Lancamento < :Dt_Lancamento'
    )
    SQLOther1.Strings = (
      'select'
      '  sum('
      '    case'
      '      when Tp_Lancamento < ''''4'''' then Vl_Lancamento'
      '      else -1.0 * Vl_Lancamento'
      '    end ) as Vl_Lancamento'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
      '  Dt_Lancamento < :Dt_Lancamento'
    )
    Left = 460
    Top = 37
    object ADODsSaldoAnteriorVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      Precision = 28
      Size = 6
    end
  end
  object ADODsConta: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia,'#13#10'  CC.Nr_Conta, CC.Vl_Limite'#13#10#13#10'from'#13#10'  CCorrente CC'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = CC.Cd_Banco'#13#10#13#10'where'#13#10'  CC.Id_Conta = :Id_Conta'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 489
    Top = 37
    object ADODsContaid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsContads_conta: TStringField
      FieldName = 'ds_conta'
      Size = 50
    end
    object ADODsContacd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 4
    end
    object ADODsContasg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsContacd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsContanr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsContavl_limite: TBCDField
      FieldName = 'vl_limite'
      Precision = 12
      Size = 2
    end
  end
  object ADODsSintetico: TMultADODS
    Tag = 2
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsSinteticoCalcFields
    CommandText = 'select'#13#10'  H.Tp_Historico, CL.Cd_Historico, H.Ds_Historico,'#13#10'  sum( CL.Vl_Lancamento ) as Vl_Lancamento'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta      = :Id_Conta'#13#10#13#10'group by'#13#10'  H.Tp_Historico, CL.Cd_Historico, H.Ds_Historico'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  H.Tp_Historico, CL.Cd_Historico, H.Ds_Historico,'
      '  sum( CL.Vl_Lancamento ) as Vl_Lancamento'
      ''
      'from'
      '  CCorrente_Lancto CL'
      ''
      'inner join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = Cl.Cd_Historico'
      ''
      'where'
      '  CL.Id_Conta      = :Id_Conta'
      ''
    )
    Left = 545
    Top = 37
    object ADODsSinteticocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsSinteticods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsSinteticovl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 28
      Size = 6
    end
    object ADODsSinteticotp_historico: TStringField
      FieldName = 'tp_historico'
      FixedChar = True
      Size = 1
    end
    object ADODsSinteticoDp_Historico: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 7
      Calculated = True
    end
  end
  object DsSintetico: TDataSource
    DataSet = ADODsSintetico
    Left = 517
    Top = 37
  end
end
