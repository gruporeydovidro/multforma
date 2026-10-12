object FrmProducao_Motivo_Report: TFrmProducao_Motivo_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rel. de Produtos com Problemas na produ'#231#227'o'
  ClientHeight = 179
  ClientWidth = 594
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
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
    Height = 179
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 573
    Height = 179
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 149
      Width = 565
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
      Width = 35
      Height = 13
      Caption = 'Motivo:'
    end
    object SbMotivo: TSpeedButton
      Left = 234
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona o Motivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbMotivoClick
    end
    object Label1: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 53
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
    object Label4: TLabel
      Left = 5
      Top = 74
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object SbSetor: TSpeedButton
      Left = 45
      Top = 89
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
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 126
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
      Top = 111
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object BitBtnReport: TBitBtn
      Left = 400
      Top = 152
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 486
      Top = 152
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
    end
    object EdtCd_Motivo: TCurrencyEdit
      Left = 194
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 4
      OnExit = EdtCd_MotivoExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtDs_Motivo: TEdit
      Left = 258
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
      TabOrder = 5
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 53
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
    object EdtCd_Setor: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 8
      OnExit = EdtCd_SetorExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtNm_Setor: TEdit
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
      TabOrder = 9
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 126
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
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
      TabOrder = 11
    end
    object SctReport: TSctReport
      Left = 442
      Top = 64
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
      STop = 43
      SLeft = 29
      SWidth = 836
      SHeight = 581
      MTop = 64
      MLeft = 442
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0.3
        BorderType = btNone
        Description = 'Produtos com Problemas na Produ'#231#227'o'
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
        object adodsreportDs_RotaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Rota'
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
        object adodsreportBarCodeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'BarCode'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportSg_SetorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Setor'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_MotivoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Motivo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportNr_OrcamentoVar
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
        object adodsreportNm_VendedorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Vendedor'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportId_ReproducaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Id_Reproducao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfNr_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportNr_OrcamentoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 255
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Produtos com Problemas na Produ'#231#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 671
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
            Width = 736
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 167
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel20: TSctvarlabel
            Left = 0
            Top = 1
            Width = 115
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodsreportBarCodeVar
            DataFormat.DisplayFormat = '##.#######.#######;0; '
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 114
            Top = 1
            Width = 223
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 528
            Top = 1
            Width = 38
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodsreportSg_SetorVar
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 567
            Top = 1
            Width = 119
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDs_MotivoVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 338
            Top = 1
            Width = 188
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_DetalheVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportId_ReproducaoVar
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.SuppressNulls = True
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 216
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 736
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
            Left = 659
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 706
            Top = 2
            Width = 30
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 251
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 504
            Top = 1
            Width = 232
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 508
            Top = 0
            Width = 155
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Total de itens defeituosos:'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 672
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfNr_Orcamento
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 39
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 31
            Width = 736
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 69
            Top = 0
            Width = 288
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 359
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 548
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Rota'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 3
            Top = 18
            Width = 110
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'ID Produ'#231#227'o'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 114
            Top = 18
            Width = 223
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 528
            Top = 18
            Width = 38
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Setor'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 567
            Top = 18
            Width = 98
            Height = 17
            Caption = 'Motivo'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 338
            Top = 18
            Width = 188
            Height = 17
            Caption = 'Medidas'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Reprodu'#231#227'o'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 128
          Width = 786
          Height = 24
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 6
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 69
            Top = 6
            Width = 288
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 359
            Top = 6
            Width = 188
            Height = 17
            Variable = adodsreportNm_VendedorVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 548
            Top = 6
            Width = 188
            Height = 17
            Variable = adodsreportDs_RotaVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 200
          Width = 786
          Height = 1
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          Visible = False
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 536
    Top = 6
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,'#13#10'  P.Dt_Producao,'#13#10#13#10'  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,'#13#10'  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,'#13#10'  PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10#13#10'  OI.Fl_Medida,'#13#10#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,'#13#10'  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end,'#13#10#13#10'  Ps_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Ps_Produto'#13#10'      else POPI.Ps_Produto'#13#10#13#10'    end,'#13#10#13#10'  OD.Ds_Detalhe, F.Nm_Funcionario as Nm_Vendedor, S.Sg_Setor, M.Ds_Motivo'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Producao P'#13#10'on'#13#10'  P.Cd_Filial   = PRI.Cd_Filial and'#13#10'  P.Nr_Producao = PRI.Nr_Producao'#13#10#13#10'inner join'#13#10'  Producao_Setor PS'#13#10'on'#13#10'  PS.Cd_Filial      = P.Cd_Filial and'#13#10'  PS.Nr_Producao    = P.Nr_Producao and'#13#10'  PS.Fl_Setor       = ''''5''''                        -- Defeito'#13#10'  /* Setor */'#13#10'  /* Funcionario */'#13#10#13#10'inner join'#13#10'  Setor S'#13#10'on'#13#10'  S.Cd_Setor = PS.Cd_Setor'#13#10#13#10'inner join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = PRI.Cd_Filial and'#13#10'  O.Nr_Orcamento = PRI.Nr_Orcamento'#13#10'  /* Emitente */'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OD.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OD.Nr_Item      = PRI.Nr_Item and'#13#10'  OD.Nr_Detalhe   = PRI.Nr_Detalhe'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  /* Motivo */'#13#10'  PRI.Dt_Motivo  >= :Dt_Start and'#13#10'  PRI.Dt_Motivo   < :Dt_End'#13#10'  '#13#10'order by'#13#10'  PRI.Cd_Filial, PRI.Nr_Orcamento, PRI.Nr_Producao, PRI.Id_Producao'
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
      '  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,'
      '  P.Dt_Producao,'
      ''
      '  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,'
      '  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,'
      '  PRI.Nr_Altura, PRI.Id_Reproducao,'
      ''
      '  OI.Fl_Medida,'
      ''
      '  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,'
      '  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end,'
      ''
      '  Ps_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Ps_Produto'
      '      else POPI.Ps_Produto'
      ''
      '    end,'
      ''
      '  OD.Ds_Detalhe, F.Nm_Funcionario as Nm_Vendedor, S.Sg_Setor, M.Ds_Motivo'
      ''
      'from'
      '  Producao_Item PRI'
      ''
      'inner join'
      '  Producao P'
      'on'
      '  P.Cd_Filial   = PRI.Cd_Filial and'
      '  P.Nr_Producao = PRI.Nr_Producao'
      ''
      'inner join'
      '  Producao_Setor PS'
      'on'
      '  PS.Cd_Filial      = PRI.Cd_Filial and'
      '  PS.Nr_Producao    = PRI.Nr_Producao and'
      '  PS.Id_Producao    = PRI.Id_Producao and'
      '  PS.Fl_Setor       = ''''5''''                        -- Defeito'
      '  /* Setor */'
      '  /* Funcionario */'
      ''
      'inner join'
      '  Setor S'
      'on'
      '  S.Cd_Setor = PS.Cd_Setor'
      ''
      'inner join'
      '  Motivo M'
      'on'
      '  M.Cd_Motivo = PRI.Cd_Motivo'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = PRI.Cd_Filial and'
      '  O.Nr_Orcamento = PRI.Nr_Orcamento'
      '  /* Emitente */'
      ''
      '-------------------- Vendedor'
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PRI.Cd_Filial and'
      '  OI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OI.Nr_Item      = PRI.Nr_Item'
      ''
      'left join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = PRI.Cd_Filial and'
      '  OD.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OD.Nr_Item      = PRI.Nr_Item and'
      '  OD.Nr_Detalhe   = PRI.Nr_Detalhe'
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
      '  PRI.Cd_Filial   = :Cd_Filial and'
      '  /* Motivo */'
      '  PRI.Dt_Motivo  >= :Dt_Start and'
      '  PRI.Dt_Motivo   < :Dt_End'
      '  '
      'order by'
      '  PRI.Cd_Filial, PRI.Nr_Orcamento, PRI.Nr_Producao, PRI.Id_Producao'
    )
    Left = 565
    Top = 6
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsReportDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsReportDt_Previsto: TDateTimeField
      FieldName = 'Dt_Previsto'
    end
    object ADODsReportDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsReportDt_Producao: TDateTimeField
      FieldName = 'Dt_Producao'
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
    object ADODsReportNr_Item_Projeto: TSmallintField
      FieldName = 'Nr_Item_Projeto'
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
    object ADODsReportFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsReportNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsReportNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsReportSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsReportDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsReportPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsReportDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsReportDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsReportBarCode: TStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'BarCode'
      Calculated = True
    end
    object ADODsReportSg_Setor: TStringField
      FieldName = 'Sg_Setor'
      Size = 15
    end
    object ADODsReportDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 50
    end
    object ADODsReportNm_Vendedor: TStringField
      FieldName = 'Nm_Vendedor'
      Size = 50
    end
  end
end
