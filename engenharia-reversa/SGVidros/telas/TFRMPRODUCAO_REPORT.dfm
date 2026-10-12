object FrmProducao_Report: TFrmProducao_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. da Produ'#231#227'o'
  ClientHeight = 267
  ClientWidth = 635
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Height = 267
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 614
    Height = 267
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 237
      Width = 607
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 124
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 54
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
    object Label12: TLabel
      Left = 5
      Top = 39
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 315
      Top = 2
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label3: TLabel
      Left = 5
      Top = 2
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label4: TLabel
      Left = 5
      Top = 77
      Width = 49
      Height = 13
      Caption = 'Produ'#231#227'o:'
    end
    object SbProducao: TSpeedButton
      Left = 58
      Top = 92
      Width = 23
      Height = 19
      Hint = 'Seleciona Produ'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProducaoClick
    end
    object Label5: TLabel
      Left = 5
      Top = 113
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object SbSetor: TSpeedButton
      Left = 45
      Top = 128
      Width = 23
      Height = 19
      Hint = 'Seleciona o Setor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSetorClick
    end
    object BitBtnCancel: TBitBtn
      Left = 527
      Top = 240
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnReport: TBitBtn
      Left = 440
      Top = 240
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 7
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object EdtDt_Start: TDateEdit
      Left = 124
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
    object EdtDt_End: TDateEdit
      Left = 219
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 54
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 54
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
    object CbSituacao: TComboBox
      Left = 315
      Top = 16
      Width = 117
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = 'Em producao'
      Items.Strings = (
        'Todas'
        'Aberto'
        'Em producao'
        'Produzido'
        'Cancelada'
      )
    end
    object CbPeriodo: TComboBox
      Left = 5
      Top = 16
      Width = 117
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Previs'#227'o de Inicio'
      Items.Strings = (
        'Previs'#227'o de Inicio'
        'Inicio'
        'T'#233'rmino'
      )
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 244
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object EdtNr_Producao: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 92
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtCd_Setor: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 128
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 11
      OnExit = EdtCd_SetorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Setor: TEdit
      Left = 69
      Top = 128
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
      TabOrder = 12
    end
    object SctReport: TSctReport
      Left = 503
      Top = 178
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
      TabOrder = 9
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 79
      SLeft = 6
      SWidth = 1123
      SHeight = 548
      MTop = 178
      MLeft = 503
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
        PageSetup.Orientation = poLandscape
        PageSetup.Size = psA4
        PageSetup.Height = 8.26771653543307
        PageSetup.Width = 11.692913385826772
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.2
        PageSetup.BottomMargin = 0.2
        BorderType = btNone
        Description = 'Rel. da Produ'#231#227'o'
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
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstacao_Find.DsFind
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
        object adodsreportNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_ProducaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Producao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_TerminoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Termino'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_PrevistoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Previsto'
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
          UpdateLevel = DataLevel
          DataSource = DsItem
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_AreaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Area'
          DataSource = DsItem
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
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 1105
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 1105
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 264
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Produ'#231#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 957
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 990
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 954
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 990
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
            Width = 1057
            Height = 7
          end
          object SctTxtPerEmissao: TSctvarlabel
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
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 1105
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel16: TSctvarlabel
            Left = 0
            Top = 0
            Width = 109
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDp_ProducaoVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 110
            Top = 0
            Width = 222
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 335
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 903
            Top = 0
            Width = 59
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_PrevistoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 398
            Top = 0
            Width = 378
            Height = 17
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 964
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_TerminoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy hh:mm'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 777
            Top = 0
            Width = 122
            Height = 17
            Variable = adodsreportDp_DetalheVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 1057
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
            Left = 974
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 1021
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
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 1105
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 1057
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 109
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'ID'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 110
            Top = 0
            Width = 222
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 335
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 903
            Top = 0
            Width = 59
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Inicio'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 398
            Top = 0
            Width = 378
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 964
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'T'#233'rmino'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 777
            Top = 0
            Width = 122
            Height = 17
            Caption = 'Detalhamento'
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 282
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel
          OnBeforePrint = DataBeforePrint
          Band = ReportFooterBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object SctShpItem: TSctShape
            Left = 10
            Top = 1
            Width = 615
            Height = 20
            Pen.Style = psClear
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 10
            Top = 2
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemCd_ProdutoVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 72
            Top = 2
            Width = 484
            Height = 17
            Variable = adodsitemNm_ProdutoVar
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 560
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemQt_AreaVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 212
          Width = 1105
          Height = 55
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = Data
          object Sctvarlabel14: TSctvarlabel
            Left = 1
            Top = 11
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Resumo'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 10
            Top = 32
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 72
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 560
            Top = 32
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = #193'rea'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 45
            Width = 625
            Height = 7
          end
        end
      end
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  P.Dt_Inicio, P.Dt_Termino, P.Dt_Previsto,'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,'#13#10#13#10'  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,'#13#10'  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10'  PRI.Cd_Motivo, M.Ds_Motivo,'#13#10#13#10'  OI.Fl_Medida,'#13#10#13#10'  OT.Nm_Emitente,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Producao P'#13#10#13#10'inner join'#13#10'  Producao_Item PRI'#13#10'on'#13#10'  PRI.Cd_Filial   = P.Cd_Filial and'#13#10'  PRI.Nr_Producao = P.Nr_Producao'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10'  /* Cd_Emitente */'#13#10#13#10'left join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  P.Cd_Filial   = :Cd_Filial and'#13#10'  P.Dt_Inicio  >= :Dt_Start and'#13#10'  P.Dt_Inicio   < :Dt_End'#13#10#13#10'order by'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  P.Dt_Inicio, P.Dt_Termino, P.Dt_Previsto,'
      '  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,'
      ''
      '  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,'
      '  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,'
      '  PRI.Cd_Motivo, M.Ds_Motivo,'
      ''
      '  OI.Fl_Medida,'
      ''
      '  OT.Nm_Emitente,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end'
      ''
      'from'
      '  Producao P'
      ''
      'inner join'
      '  Producao_Item PRI'
      'on'
      '  PRI.Cd_Filial   = P.Cd_Filial and'
      '  PRI.Nr_Producao = P.Nr_Producao'
      ''
      '/* Producao_Setor */'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = PRI.Cd_Filial and'
      '  OT.Nr_Orcamento = PRI.Nr_Orcamento'
      '  /* Cd_Emitente */'
      ''
      'left join'
      '  Motivo M'
      'on'
      '  M.Cd_Motivo = PRI.Cd_Motivo'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PRI.Cd_Filial and'
      '  OI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OI.Nr_Item      = PRI.Nr_Item'
      ''
      'left join'
      '  Produto POI'
      'on'
      '  POI.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = PRI.Cd_Filial and'
      '  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = PRI.Nr_Projeto and'
      '  OPI.Nr_Item      = PRI.Nr_Item_Projeto'
      ''
      'left join'
      '  Produto POPI'
      'on'
      '  POPI.Cd_Produto = OPI.Cd_Produto'
      ''
      'where'
      '  P.Cd_Filial   = :Cd_Filial and'
      '  /* Dt_Periodo */  >= :Dt_Start and'
      '  /* Dt_Periodo */   < :Dt_End'
      '  /* Nr_Producao */'
      '  /* St_Producao */'
      ''
      'order by'
      '  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao'
    )
    SQLOther1.Strings = (
      '--------------- Filtra por setores da producao'
      'inner join'
      '  Producao_Setor PS'
      'on'
      '  PS.Cd_Filial   = PRI.Cd_Filial and'
      '  PS.Nr_Producao = PRI.Nr_Producao and'
      '  PS.Id_Producao = PRI.Id_Producao and'
      '  PS.Cd_Setor    = /* Cd_Setor */'
    )
    Left = 296
    Top = 152
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsReportId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsReportNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsReportNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsReportNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsReportNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsReportNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsReportId_Reproducao: TSmallintField
      FieldName = 'Id_Reproducao'
    end
    object ADODsReportCd_Motivo: TSmallintField
      FieldName = 'Cd_Motivo'
    end
    object ADODsReportDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 50
    end
    object ADODsReportFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsReportDp_Producao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Producao'
      Size = 18
      Calculated = True
    end
    object ADODsReportDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsReportDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsReportDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsReportDt_Previsto: TDateTimeField
      FieldName = 'Dt_Previsto'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 264
    Top = 152
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 328
    Top = 152
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then OI.Cd_Produto'#13#10'      else OPI.Cd_Produto'#13#10#13#10'    end,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end,'#13#10#13#10'  Qt_Area = sum('#13#10'    case'#13#10'      when PRI.Nr_Projeto is not null then'#13#10'        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) / 100000.0'#13#10'      else'#13#10'        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) /'#13#10'          case'#13#10'            when OI.Fl_Medida = ''''1'''' then 10000.0      -- Centimetros'#13#10'            when OI.Fl_Medida = ''''2'''' then 100.0        -- Metros'#13#10'            when OI.Fl_Medida = ''''3'''' then 1000000.0    -- Milimetros'#13#10#13#10'          end'#13#10#13#10'    end )'#13#10#13#10'from'#13#10'  Producao P'#13#10#13#10'inner join'#13#10'  Producao_Item PRI'#13#10'on'#13#10'  PRI.Cd_Filial   = P.Cd_Filial and'#13#10'  PRI.Nr_Producao = P.Nr_Producao'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10'  /* Cd_Emitente */'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  P.Cd_Filial   = :Cd_Filial '#13#10#13#10'group by'#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then OI.Cd_Produto'#13#10'      else OPI.Cd_Produto'#13#10#13#10'    end,'#13#10'    '#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end'#13#10#13#10'order by'#13#10'  3 desc'
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
      '  Cd_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then OI.Cd_Produto'
      '      else OPI.Cd_Produto'
      ''
      '    end,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end,'
      ''
      '  Qt_Area = sum('
      '    case'
      '      when PRI.Nr_Projeto is not null then'
      '        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) / 100000.0'
      '      else'
      '        Coalesce( PRI.Nr_Comprimento, 1.0 ) * Coalesce( PRI.Nr_Largura, 1.0 ) * Coalesce( PRI.Nr_Altura, 1.0 ) /'
      '          case'
      '            when OI.Fl_Medida = ''''1'''' then 10000.0      -- Centimetros'
      '            when OI.Fl_Medida = ''''2'''' then 100.0        -- Metros'
      '            when OI.Fl_Medida = ''''3'''' then 1000000.0    -- Milimetros'
      ''
      '          end'
      ''
      '    end )'
      ''
      'from'
      '  Producao P'
      ''
      'inner join'
      '  Producao_Item PRI'
      'on'
      '  PRI.Cd_Filial   = P.Cd_Filial and'
      '  PRI.Nr_Producao = P.Nr_Producao'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = PRI.Cd_Filial and'
      '  OT.Nr_Orcamento = PRI.Nr_Orcamento'
      '  /* Cd_Emitente */'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PRI.Cd_Filial and'
      '  OI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OI.Nr_Item      = PRI.Nr_Item'
      ''
      'left join'
      '  Produto POI'
      'on'
      '  POI.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = PRI.Cd_Filial and'
      '  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = PRI.Nr_Projeto and'
      '  OPI.Nr_Item      = PRI.Nr_Item_Projeto'
      ''
      'left join'
      '  Produto POPI'
      'on'
      '  POPI.Cd_Produto = OPI.Cd_Produto'
      ''
      'where'
      '  P.Cd_Filial   = :Cd_Filial and'
      '  /* Dt_Periodo */  >= :Dt_Start and'
      '  /* Dt_Periodo */   < :Dt_End'
      '  /* Nr_Producao */'
      '  /* St_Producao */'
      ''
      'group by'
      '    case'
      '      when PRI.Nr_Projeto is null then OI.Cd_Produto'
      '      else OPI.Cd_Produto'
      ''
      '    end,'
      '    '
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end'
      ''
      'order by'
      '  3 desc    '
    )
    Left = 360
    Top = 152
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsItemQt_Area: TBCDField
      FieldName = 'Qt_Area'
      ReadOnly = True
      Precision = 32
      Size = 11
    end
  end
end
