object FrmProducao_Report_Setor: TFrmProducao_Report_Setor
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Produ'#231#227'o por Setor'
  ClientHeight = 229
  ClientWidth = 577
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
    Height = 229
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 205
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 556
    Height = 229
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = 13
    ExplicitTop = -32
    ExplicitWidth = 918
    ExplicitHeight = 641
    object BvlSeparator: TBevel
      Left = 4
      Top = 199
      Width = 548
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 39
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object SbSetor: TSpeedButton
      Left = 45
      Top = 54
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
    object Label2: TLabel
      Left = 70
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 5
      Top = 2
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 90
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
      Top = 75
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object BitBtnCancel: TBitBtn
      Left = 469
      Top = 202
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Setor: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 3
      OnExit = EdtCd_SetorExit
      OnKeyDown = EdtCd_SetorKeyDown
    end
    object EdtNm_Setor: TEdit
      Left = 69
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
      TabOrder = 4
    end
    object CkBZebrado: TCheckBox
      Left = 7
      Top = 206
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object EdtDt_Start: TDateEdit
      Left = 70
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
      Left = 165
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
    object CbPeriodo: TComboBox
      Left = 5
      Top = 16
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Inicio'
      Items.Strings = (
        'Inicio'
        'T'#233'rmino'
      )
    end
    object BitBtnReport: TBitBtn
      Left = 382
      Top = 202
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 8
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 90
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_SetorKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 90
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
      TabOrder = 6
    end
    object SctReport: TSctReport
      Left = 266
      Top = 1
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
      TabOrder = 10
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
      MTop = 1
      MLeft = 266
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
        PageSetup.LeftMargin = 0.2
        PageSetup.RightMargin = 0.2
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0.3
        BorderType = btNone
        Description = 'Rel. de Produ'#231#227'o por Setor'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DtlBand
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportCd_SetorVar
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
        object adodsreportCd_SetorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Setor'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_ParametroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Parametro'
          DataSource = DsReport
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
        object adodsreportNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_SetorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Setor'
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
        object TotalOfCd_Setor: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportCd_SetorVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 805
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 805
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Produ'#231#227'o por Setor'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 656
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 689
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 653
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 689
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
            Width = 755
            Height = 7
          end
          object SctVarPeriodo: TSctvarlabel
            Left = 0
            Top = 18
            Width = 647
            Height = 17
            Caption = 'Periodo do relatorio'
          end
        end
        object DtlBand: TSctBand
          Left = 0
          Top = 144
          Width = 805
          Height = 18
          ParentColor = True
          BandName = 'DtlBand'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DtlBandBeforePrint
          object SctVarItem: TSctvarlabel
            Left = 0
            Top = 2
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Item'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 31
            Top = 2
            Width = 109
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportBarCodeVar
            DataFormat.DisplayFormat = '00.0000000.0000000;0; '
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 142
            Top = 1
            Width = 271
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 414
            Top = 2
            Width = 107
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDp_DetalheVar
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 523
            Top = 3
            Width = 64
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_ParametroVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 589
            Top = 3
            Width = 64
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 656
            Top = 3
            Width = 99
            Height = 17
            Variable = adodsreportNm_FuncionarioVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 200
          Width = 805
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 755
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
            Left = 672
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 719
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
          Top = 235
          Width = 805
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
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
            Left = 620
            Top = 3
            Width = 37
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
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 805
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 755
            Height = 7
          end
          object SctLblItem: TSctvarlabel
            Left = 0
            Top = 0
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Item'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 31
            Top = 0
            Width = 109
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo de Barras'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 142
            Top = -1
            Width = 271
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Produto'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 414
            Top = 0
            Width = 107
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Medida'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 523
            Top = 1
            Width = 64
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 589
            Top = 1
            Width = 64
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 656
            Top = 1
            Width = 99
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 805
          Height = 20
          Color = 14803425
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          OnAfterPrint = GroupHeaderAfterPrint
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 3
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportSg_SetorVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 60
            Top = 3
            Width = 458
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportNm_SetorVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 177
          Width = 805
          Height = 8
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
        end
      end
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, PS.Id_Producao,'#13#10'  PS.Dt_Inicio as Dt_Parametro,'#13#10'  PItem.Nr_Orcamento, PItem.Nr_Item, PItem.Nr_Detalhe,'#13#10'  PItem.Nr_Projeto, PItem.Nr_Item_Projeto, PItem.Nr_Comprimento,'#13#10'  PItem.Nr_Largura, PItem.Nr_Altura,'#13#10#13#10'  OT.Nm_Funcionario,'#13#10#13#10'  S.Nm_Setor, S.Sg_Setor,'#13#10#13#10'  OI.Fl_Medida,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PItem.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Producao_Setor PS'#13#10#13#10'inner join'#13#10'  Setor S'#13#10'on'#13#10'  S.Cd_Setor = PS.Cd_Setor'#13#10#13#10'inner join'#13#10'  Producao P'#13#10'on'#13#10'  P.Cd_Filial   = PS.Cd_Filial and'#13#10'  P.Nr_Producao = PS.Nr_Producao and'#13#10'  P.St_Producao < ''''4''''                  ----- Somente itens n'#227'o cancelados'#13#10#13#10'inner join'#13#10'  Producao_Item PItem'#13#10'on'#13#10'  PItem.Cd_Filial   = PS.Cd_Filial and'#13#10'  PItem.Nr_Producao = PS.Nr_Producao and'#13#10'  PItem.Id_Producao = PS.Id_Producao'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PItem.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PItem.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PItem.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PItem.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PItem.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PItem.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PItem.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PItem.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PItem.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  PS.Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  PS.Cd_Filial, PS.Cd_Setor'
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
      '  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, PS.Id_Producao,'
      '  /* Dt_Parametro */ as Dt_Parametro,'
      '  PItem.Nr_Orcamento, PItem.Nr_Item, PItem.Nr_Detalhe,'
      '  PItem.Nr_Projeto, PItem.Nr_Item_Projeto, PItem.Nr_Comprimento,'
      '  PItem.Nr_Largura, PItem.Nr_Altura,'
      ''
      '  OT.Nm_Funcionario,'
      ''
      '  S.Nm_Setor, S.Sg_Setor,'
      ''
      '  OI.Fl_Medida,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PItem.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end'
      ''
      'from'
      '  Producao_Setor PS'
      ''
      'inner join'
      '  Setor S'
      'on'
      '  S.Cd_Setor = PS.Cd_Setor'
      ''
      'inner join'
      '  Producao P'
      'on'
      '  P.Cd_Filial   = PS.Cd_Filial and'
      '  P.Nr_Producao = PS.Nr_Producao and'
      '  P.St_Producao < ''''4''''                  ----- Somente itens n'#227'o cancelados'
      ''
      'inner join'
      '  Producao_Item PItem'
      'on'
      '  PItem.Cd_Filial   = PS.Cd_Filial and'
      '  PItem.Nr_Producao = PS.Nr_Producao and'
      '  PItem.Id_Producao = PS.Id_Producao'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = PItem.Cd_Filial and'
      '  OT.Nr_Orcamento = PItem.Nr_Orcamento'
      '  /* Cd_Emitente */'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PItem.Cd_Filial and'
      '  OI.Nr_Orcamento = PItem.Nr_Orcamento and'
      '  OI.Nr_Item      = PItem.Nr_Item'
      ''
      'left join'
      '  Produto POI'
      'on'
      '  POI.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = PItem.Cd_Filial and'
      '  OPI.Nr_Orcamento = PItem.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = PItem.Nr_Projeto and'
      '  OPI.Nr_Item      = PItem.Nr_Item_Projeto'
      ''
      'left join'
      '  Produto POPI'
      'on'
      '  POPI.Cd_Produto = OPI.Cd_Produto'
      ''
      'where'
      '  PS.Cd_Filial = :Cd_Filial and'
      '  /* Cd_Setor */ '
      '  /* Dt_Parametro */ >= :Dt_Start and'
      '  /* Dt_Parametro */ <= :Dt_End'
      ''
      'order by'
      '  PS.Cd_Filial, PS.Cd_Setor, /* Dt_Parametro */'
    )
    Left = 80
    Top = 112
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsReportCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsReportId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsReportDt_Parametro: TDateTimeField
      FieldName = 'Dt_Parametro'
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
    object ADODsReportNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsReportNm_Setor: TStringField
      FieldName = 'Nm_Setor'
      Size = 50
    end
    object ADODsReportSg_Setor: TStringField
      FieldName = 'Sg_Setor'
      Size = 15
    end
    object ADODsReportFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsReportBarCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarCode'
      Size = 16
      Calculated = True
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 48
    Top = 112
  end
end
