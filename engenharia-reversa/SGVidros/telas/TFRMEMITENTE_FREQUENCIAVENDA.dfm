object FrmEmitente_FrequenciaVenda: TFrmEmitente_FrequenciaVenda
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Acompanhamento de Frequ'#234'ncia de venda'
  ClientHeight = 285
  ClientWidth = 838
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
    Height = 285
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 817
    Height = 285
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 255
      Width = 809
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 53
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
    object SbSubGrupo: TSpeedButton
      Left = 382
      Top = 53
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
      Top = 37
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 90
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
      Left = 5
      Top = 75
      Width = 86
      Height = 13
      Caption = 'Vendedor Padr'#227'o:'
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 161
      Height = 13
      Caption = #218'ltima venda a mais de " X " dias:'
    end
    object Label2: TLabel
      Left = 170
      Top = 1
      Width = 93
      Height = 13
      Caption = 'Situa'#231#227'o da venda:'
    end
    object SbGrupoProd: TSpeedButton
      Left = 45
      Top = 127
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoProdClick
    end
    object Label7: TLabel
      Left = 5
      Top = 112
      Width = 87
      Height = 13
      Caption = 'Grupo de Produto:'
    end
    object Label28: TLabel
      Left = 363
      Top = 112
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object SbLaboratorio: TSpeedButton
      Left = 413
      Top = 127
      Width = 23
      Height = 19
      Hint = 'Seleciona Laborat'#243'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLaboratorioClick
    end
    object Label3: TLabel
      Left = 5
      Top = 148
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Tag = 1
      Left = 55
      Top = 164
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
    object Label12: TLabel
      Left = 405
      Top = 149
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object BitBtnReport: TBitBtn
      Left = 644
      Top = 258
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 16
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 730
      Top = 258
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 53
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
      TabOrder = 3
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 342
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 405
      Top = 53
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
      TabOrder = 5
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 68
      Top = 90
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
      TabOrder = 7
    end
    object EdtNr_Dias: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
    end
    object CbSituacao: TComboBox
      Left = 170
      Top = 15
      Width = 296
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'N'#227'o Compra a mais de " X " dias'
      Items.Strings = (
        'N'#227'o Compra a mais de " X " dias'
        'J'#225' comprou e n'#227'o compra a mais de " X " dias'
        'Fez o or'#231'amento e n'#227'o comprou'
      )
    end
    object EdtCd_GrupoProd: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 127
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_GrupoProdExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_GrupoProd: TEdit
      Left = 68
      Top = 127
      Width = 290
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
    object EdtCd_Laboratorio: TCurrencyEdit
      Tag = 2
      Left = 363
      Top = 127
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_LaboratorioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Laboratorio: TEdit
      Left = 436
      Top = 127
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object SctReport: TSctReport
      Left = 270
      Top = 65
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
      TabOrder = 18
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 65
      MLeft = 270
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
        BorderType = btNone
        Description = 'Rel. de Acompanhamento de Frequ'#234'ncia de venda'
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
          DataSource = FrmEstado_Find.DsFind
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
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsreportCd_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Emitente'
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
        object adodsreportVl_VendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Vendido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_UltimaVendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_UltimaVenda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_PrimeiraVendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_PrimeiraVenda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_MenorVendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_MenorVenda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_MaiorVendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_MaiorVenda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_VendasVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Vendas'
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
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object TotalOfCd_Emitente: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportCd_EmitenteVar
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
            Width = 295
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Acompanhamento de Frequ'#234'ncia de Vendas'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 639
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 672
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 636
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 672
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
            Width = 735
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 110
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_EmitenteVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 54
            Top = 1
            Width = 295
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 690
            Top = 1
            Width = 46
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_VendasVar
            DataFormat.DisplayFormat = '#,##0'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 622
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_MenorVendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 554
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_MaiorVendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 487
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_VendidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 422
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDt_UltimaVendaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 355
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDt_PrimeiraVendaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 143
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 735
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
            Left = 653
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 700
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
          Top = 178
          Width = 786
          Height = 25
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 487
            Top = 4
            Width = 248
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 559
            Top = 7
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Clientes:'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 670
            Top = 7
            Width = 65
            Height = 17
            TotalVariable = TotalOfCd_Emitente
            TotalType = ttCount
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
          Height = 21
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 14
            Width = 735
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 54
            Top = 1
            Width = 278
            Height = 17
            Caption = 'Nome'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 690
            Top = 1
            Width = 46
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#250'mero'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 622
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Menor'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 554
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Maior'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 487
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 422
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laCenter
            Caption = #218'ltima'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 355
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Primeira'
          end
        end
      end
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 262
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 164
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 78
      Top = 164
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
      TabOrder = 13
    end
    object CbTpPessoa: TComboBox
      Left = 405
      Top = 164
      Width = 76
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 14
      Text = 'Todas'
      Items.Strings = (
        'Todas'
        'F'#237'sica'
        'Jur'#237'dica'
      )
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente,'#13#10'  sum( OT.Vl_Orcamento ) as Vl_Vendido,'#13#10'  max( OT.Dt_Fatura ) as Dt_UltimaVenda,'#13#10'  min( OT.Dt_Fatura ) as Dt_PrimeiraVenda,'#13#10'  min( OT.Vl_Orcamento ) as Vl_MenorVenda,'#13#10'  max( OT.Vl_Orcamento ) as Vl_MaiorVenda,'#13#10'  count( OT.Vl_Orcamento ) as Nr_Vendas'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = @Cd_Filial and'#13#10'  OT.Cd_Emitente  = E.Cd_Emitente and'#13#10'  OT.St_Orcamento = ''''9'''' and'#13#10'  OT.Dt_Fatura    < @Dt_End'#13#10#13#10'where'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'  -------------------- Verifica se n'#227'o fez compra'#13#10'  not Exists('#13#10'    -------------------- Faturado'#13#10'    select'#13#10'      Cd_Filial'#13#10#13#10'    from'#13#10'      Orcamento O'#13#10#13#10'    where'#13#10'      O.Cd_Filial    = @Cd_Filial and'#13#10'      O.Cd_Emitente  = E.Cd_Emitente and'#13#10'      O.St_Orcamento = ''''9'''' and'#13#10'      O.Dt_Fatura   >= @Dt_Start and'#13#10'      O.Dt_Fatura    < @Dt_End'#13#10#13#10'    union'#13#10'    -------------------- Reservado'#13#10'    select'#13#10'      Cd_Filial'#13#10#13#10'    from'#13#10'      Orcamento O'#13#10#13#10'    where'#13#10'      O.Cd_Filial    = @Cd_Filial and'#13#10'      O.Cd_Emitente  = E.Cd_Emitente and'#13#10'      O.St_Orcamento = ''''5'''' and'#13#10'      O.Dt_Fatura   >= @Dt_Start and'#13#10'      O.Dt_Fatura    < @Dt_End'#13#10'    )'#13#10#13#10'  /* Condicao */'#13#10#13#10'group by'#13#10'  E.Cd_Emitente, E.Nm_Emitente'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Dt_Start'
        DataType = ftString
        Size = 10
        Value = '01/01/2000'
      end
      item
        Name = 'Dt_End'
        DataType = ftString
        Size = 10
        Value = '01/01/2010'
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente,'
      '  sum( OT.Vl_Orcamento ) as Vl_Vendido,'
      '  max( OT.Dt_Fatura ) as Dt_UltimaVenda,'
      '  min( OT.Dt_Fatura ) as Dt_PrimeiraVenda,'
      '  min( OT.Vl_Orcamento ) as Vl_MenorVenda,'
      '  max( OT.Vl_Orcamento ) as Vl_MaiorVenda,'
      '  count( OT.Vl_Orcamento ) as Nr_Vendas'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'left join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = @Cd_Filial and'
      '  OT.Cd_Emitente  = E.Cd_Emitente and'
      '  OT.St_Orcamento = ''''9'''' and'
      '  OT.Dt_Fatura    < @Dt_End'
      ''
      'where'
      '  /* Tp_Pessoa */'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  /* Cd_Funcionario */'
      ''
      '  -------------------- Verifica se n'#227'o fez compra'
      '  not Exists('
      '    -------------------- Faturado'
      '    select'
      '      O.Cd_Filial'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Orcamento Item */'
      ''
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.Cd_Emitente  = E.Cd_Emitente and'
      '      O.St_Orcamento = ''''9'''' and'
      '      O.Dt_Fatura   >= @Dt_Start and'
      '      O.Dt_Fatura    < @Dt_End'
      ''
      '    union'
      '    -------------------- Reservado'
      '    select'
      '      O.Cd_Filial'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Orcamento Item */'
      '    '
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.Cd_Emitente  = E.Cd_Emitente and'
      '      O.St_Orcamento = ''''5'''' and'
      '      O.Dt_Fatura   >= @Dt_Start and'
      '      O.Dt_Fatura    < @Dt_End'
      '    )'
      ''
      '  /* Condicao */'
      ''
      'group by'
      '  E.Cd_Emitente, E.Nm_Emitente'
      ''
    )
    SQLOther1.Strings = (
      '  -------------------- Verifica se ja fez compra'
      '  and Exists('
      '    -------------------- Faturado'
      '    select'
      '      O.Cd_Filial'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Orcamento Item */'
      ''
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.Cd_Emitente  = E.Cd_Emitente and'
      '      O.St_Orcamento = ''''9'''' and'
      '      O.Dt_Fatura    < @Dt_Start'
      ''
      '    union'
      '    -------------------- Reservado'
      '    select'
      '      O.Cd_Filial'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Orcamento Item */  '
      ''
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.Cd_Emitente  = E.Cd_Emitente and'
      '      O.St_Orcamento = ''''5'''' and'
      '      O.Dt_Fatura    < @Dt_Start'
      '    )'
      ''
    )
    SQLOther2.Strings = (
      '  -------------------- Verifica se ja or'#231'ou nesse periodo'
      '  and Exists('
      '    -------------------- Reservado'
      '    select'
      '      O.Cd_Filial'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    /* Orcamento Item */'
      ''
      '    where'
      '      O.Cd_Filial     = @Cd_Filial and'
      '      O.Cd_Emitente   = E.Cd_Emitente and'
      '      O.St_Orcamento <= ''''5'''' and'
      '      O.Dt_Fatura     < @Dt_End'
      '    )'
    )
    SQLOther4.Strings = (
      '--------------- Condi'#231#227'o para itens do or'#231'amento'
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* GrupoProduto */'
      '  /* Fabricante */'
    )
    Left = 60
    Top = 205
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportVl_Vendido: TBCDField
      FieldName = 'Vl_Vendido'
      ReadOnly = True
      Precision = 32
      Size = 9
    end
    object ADODsReportDt_UltimaVenda: TDateTimeField
      FieldName = 'Dt_UltimaVenda'
      ReadOnly = True
    end
    object ADODsReportDt_PrimeiraVenda: TDateTimeField
      FieldName = 'Dt_PrimeiraVenda'
      ReadOnly = True
    end
    object ADODsReportVl_MenorVenda: TBCDField
      FieldName = 'Vl_MenorVenda'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsReportVl_MaiorVenda: TBCDField
      FieldName = 'Vl_MaiorVenda'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsReportNr_Vendas: TIntegerField
      FieldName = 'Nr_Vendas'
      ReadOnly = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 32
    Top = 205
  end
end
