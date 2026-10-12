object FrmApurar_Imposto: TFrmApurar_Imposto
  Left = 346
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Apurar Imposto'
  ClientHeight = 242
  ClientWidth = 602
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
    Height = 242
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 581
    Height = 242
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 212
      Width = 573
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 96
      Height = 13
      Caption = 'Apurar pela data de:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 408
      Top = 215
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 494
      Top = 215
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
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
      Glyph.Data = {binary 390 bytes}
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
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object SctReport: TSctReport
      Left = 235
      Top = 75
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
      TabOrder = 5
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
      MTop = 75
      MLeft = 235
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
        Description = 'Apura'#231#227'o de Imposto'
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
          DataSource = FrmCidade_Find.DsFind
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
        object adodsreportDt_ImpostoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Imposto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_BaseICMS_saiVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS_sai'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_ICMS_saiVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS_sai'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_IPI_saiVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI_sai'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_STB_saiVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_STB_sai'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_BaseICMS_entVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS_ent'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_ICMS_entVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS_ent'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_IPI_entVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI_ent'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_STB_entVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_STB_ent'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_BaseICMS_sai: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_BaseICMS_saiVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_ICMS_sai: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_ICMS_saiVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_IPI_sai: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_IPI_saiVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_STB_sai: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_STB_saiVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_BaseICMS_ent: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_BaseICMS_entVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_ICMS_ent: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_ICMS_entVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_IPI_ent: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_IPI_entVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_STB_ent: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_STB_entVar
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
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Apura'#231#227'o de Imposto'
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
            Top = 32
            Width = 736
            Height = 7
          end
          object SctVarPeriodo: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Periodo'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 131
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel9: TSctvarlabel
            Left = 2
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_ImpostoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 70
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_BaseICMS_saiVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 144
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_ICMS_saiVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 216
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_IPI_saiVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 290
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_STB_saiVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 432
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_BaseICMS_entVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 506
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_ICMS_entVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 578
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_IPI_entVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 652
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_STB_entVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 164
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
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 701
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
          Top = 199
          Width = 786
          Height = 59
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          OnBeforePrint = ReportFooterBandBeforePrint
          object Sctvarlabel14: TSctvarlabel
            Left = 4
            Top = 4
            Width = 47
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais:'
          end
          object SctLine5: TSctLine
            Left = 70
            Top = 1
            Width = 290
            Height = 4
          end
          object SctLine6: TSctLine
            Left = 432
            Top = 1
            Width = 290
            Height = 4
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 70
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_BaseICMS_sai
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 144
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_ICMS_sai
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 216
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_IPI_sai
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 290
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_STB_sai
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 432
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_BaseICMS_ent
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 506
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_ICMS_ent
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 578
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_IPI_ent
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 652
            Top = 4
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_STB_ent
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 360
            Top = 41
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Resultado:'
          end
          object SctVarBase: TSctvarlabel
            Left = 432
            Top = 40
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctVarICMS: TSctvarlabel
            Left = 506
            Top = 40
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctVarIPI: TSctvarlabel
            Left = 578
            Top = 40
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctVarSTB: TSctvarlabel
            Left = 652
            Top = 40
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctLine8: TSctLine
            Left = 432
            Top = 36
            Width = 290
            Height = 4
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 42
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 34
            Width = 736
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 2
            Top = 11
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 70
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base ICMS'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 144
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor do ICMS'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 216
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 290
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Substitui'#231#227'o'
          end
          object SctLine3: TSctLine
            Left = 70
            Top = 17
            Width = 290
            Height = 4
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 160
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Imposto de Sa'#237'da'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 432
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base ICMS'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 506
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor do ICMS'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 578
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 652
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Substitui'#231#227'o'
          end
          object SctLine7: TSctLine
            Left = 432
            Top = 17
            Width = 290
            Height = 4
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 522
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Imposto de Entrada'
          end
        end
      end
    end
    object CbApurar: TComboBox
      Left = 5
      Top = 53
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Entrada'
        'Lan'#231'amento'
      )
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'declare @Cd_Filial SmallInt'#13#10'declare @Dt_Start SmallDateTime'#13#10'declare @Dt_End SmallDateTime'#13#10#13#10'set @Cd_Filial  = :Cd_Filial'#13#10'set @Dt_Start   = :Dt_Start'#13#10'set @Dt_End     = :Dt_End'#13#10#13#10'if Object_ID( ''''TempDB..#ApurarImposto'''' ) is not null'#13#10'  truncate table #ApurarImposto'#13#10#13#10'else'#13#10'  create table #ApurarImposto'#13#10'    ('#13#10'    Dt_Imposto SmallDateTime,'#13#10'    Vl_BaseICMS_sai Numeric( 12, 3 ),'#13#10'    Vl_ICMS_sai numeric( 12, 3 ),'#13#10'    Vl_IPI_sai numeric( 12, 3 ),'#13#10'    Vl_STB_sai numeric( 12, 3 ),'#13#10'    Vl_BaseICMS_ent Numeric( 12, 3 ),'#13#10'    Vl_ICMS_ent numeric( 12, 3 ),'#13#10'    Vl_IPI_ent numeric( 12, 3 ),'#13#10'    Vl_STB_ent numeric( 12, 3 )'#13#10'    )'#13#10#13#10'-- Vendas'#13#10'insert into #ApurarImposto'#13#10'  select'#13#10'    Cast( Cast( Dt_Fatura as Char( 11 ) ) as SmallDateTime ),'#13#10'    sum( O.Vl_BaseICMS ) as Vl_BaseICMS,'#13#10'    sum( O.Vl_ICMS ) as Vl_ICMS, Sum( O.Vl_IPI ) as Vl_IPI,'#13#10'    sum( O.Vl_STB ) as Vl_STB, 0, 0, 0, 0'#13#10#13#10'  from'#13#10'    Orcamento O'#13#10#13#10'  where'#13#10'    O.Cd_Filial    = @Cd_Filial and'#13#10'    O.St_Orcamento = ''''9'''' and'#13#10'    O.Dt_Fatura   >= @Dt_Start and'#13#10'    O.Dt_Fatura    < @Dt_End'#13#10#13#10'  group by'#13#10'    Cast( Cast( O.Dt_Fatura as Char( 11 ) ) as SmallDateTime )'#13#10#13#10'-- Saidas'#13#10'insert into #ApurarImposto'#13#10'  select'#13#10'    Cast( Cast( Dt_Lancamento as Char( 11 ) ) as SmallDateTime ),'#13#10'    sum( S.Vl_BaseICMS ) as Vl_BaseICMS,'#13#10'    sum( S.Vl_ICMS ) as Vl_ICMS, Sum( S.Vl_IPI ) as Vl_IPI,'#13#10'    sum( S.Vl_Substituicao ) as Vl_STB, 0, 0, 0, 0'#13#10#13#10'  from'#13#10'    Saida S'#13#10#13#10'  where'#13#10'    S.Cd_Filial      = @Cd_Filial and'#13#10'    S.St_Saida       = ''''2'''' and'#13#10'    S.Dt_Lancamento >= @Dt_Start and'#13#10'    S.Dt_Lancamento  < @Dt_End'#13#10#13#10'  group by'#13#10'    Cast( Cast( S.Dt_Lancamento as Char( 11 ) ) as SmallDateTime )'#13#10#13#10'-- Entradas'#13#10'insert into #ApurarImposto'#13#10'  select'#13#10'    Cast( Cast( Dt_Lancamento as Char( 11 ) ) as SmallDateTime ),'#13#10'    0, 0, 0, 0, sum( E.Vl_BaseICMS ) as Vl_BaseICMS,'#13#10'    sum( E.Vl_ICMS ) as Vl_ICMS, Sum( E.Vl_IPI ) as Vl_IPI,'#13#10'    sum( E.Vl_Substituicao ) as Vl_STB'#13#10#13#10'  from'#13#10'    Entrada E'#13#10#13#10'  where'#13#10'    E.Cd_Filial      = @Cd_Filial and'#13#10'    E.St_Entrada       = ''''2'''' and'#13#10'    E.Dt_Lancamento >= @Dt_Start and'#13#10'    E.Dt_Lancamento  < @Dt_End'#13#10#13#10'  group by'#13#10'    Cast( Cast( E.Dt_Lancamento as Char( 11 ) ) as SmallDateTime )'#13#10#13#10'-- Resultado'#13#10'select'#13#10'  Dt_Imposto,'#13#10'  sum( Vl_BaseICMS_sai ) as Vl_BaseICMS_sai,'#13#10'  sum( Vl_ICMS_sai )     as Vl_ICMS_sai,'#13#10'  sum( Vl_IPI_sai )      as Vl_IPI_sai,'#13#10'  sum( Vl_STB_sai )      as Vl_STB_sai,'#13#10'  sum( Vl_BaseICMS_ent ) as Vl_BaseICMS_ent,'#13#10'  sum( Vl_ICMS_ent )     as Vl_ICMS_ent,'#13#10'  sum( Vl_IPI_ent )      as Vl_IPI_ent,'#13#10'  sum( Vl_STB_ent )      as Vl_STB_ent'#13#10#13#10'from'#13#10'  #ApurarImposto'#13#10#13#10'group by'#13#10'  Dt_Imposto'#13#10#13#10'order by'#13#10'  Dt_Imposto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = 40179.0
      end>
    SQLOther0.Strings = (
      'declare @Cd_Filial SmallInt'
      'declare @Dt_Start SmallDateTime'
      'declare @Dt_End SmallDateTime'
      ''
      'set @Cd_Filial  = :Cd_Filial'
      'set @Dt_Start   = :Dt_Start'
      'set @Dt_End     = :Dt_End'
      ''
      'if Object_ID( ''''TempDB..##ApurarImposto'''' ) is not null'
      '  truncate table ##ApurarImposto'
      ''
      'else'
      '  create table ##ApurarImposto'
      '    ('
      '    Dt_Imposto SmallDateTime,'
      '    Vl_BaseICMS_sai Numeric( 12, 3 ),'
      '    Vl_ICMS_sai numeric( 12, 3 ),'
      '    Vl_IPI_sai numeric( 12, 3 ),'
      '    Vl_STB_sai numeric( 12, 3 ),'
      '    Vl_BaseICMS_ent Numeric( 12, 3 ),'
      '    Vl_ICMS_ent numeric( 12, 3 ),'
      '    Vl_IPI_ent numeric( 12, 3 ),'
      '    Vl_STB_ent numeric( 12, 3 )'
      '    )'
      ''
      '-- Vendas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Fatura, 111 ) ),'
      '    sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_STB ) as Vl_STB, 0, 0, 0, 0'
      ''
      '  from'
      '    Orcamento Ori'
      ''
      '  where'
      '    Ori.Cd_Filial    = @Cd_Filial and'
      '    Ori.St_Orcamento = ''''9'''' and'
      '    Ori.Dt_Fatura   >= @Dt_Start and'
      '    Ori.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Fatura, 111 ) )'
      ''
      '-- Saidas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) ),'
      '    sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_Substituicao ) as Vl_STB, 0, 0, 0, 0'
      ''
      '  from'
      '    Saida Ori'
      ''
      '  where'
      '    Ori.Cd_Filial      = @Cd_Filial and'
      '    Ori.St_Saida       = ''''2'''' and'
      '    Ori.Dt_Lancamento >= @Dt_Start and'
      '    Ori.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) )'
      ''
      '-- Entradas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) ),'
      '    0, 0, 0, 0, sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_Substituicao ) as Vl_STB'
      ''
      '  from'
      '    Entrada Ori'
      ''
      '  where'
      '    Ori.Cd_Filial      = @Cd_Filial and'
      '    Ori.St_Entrada     = ''''2'''' and'
      '    Ori.Dt_Lancamento >= @Dt_Start and'
      '    Ori.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) )'
      ''
      '-- Coloca null nos campos zerados'
      'update'
      '  ##ApurarImposto'
      ''
      'set'
      '  Vl_BaseICMS_sai = case when Vl_BaseICMS_sai = 0 then null else Vl_BaseICMS_sai end,'
      '  Vl_ICMS_sai     = case when Vl_ICMS_sai     = 0 then null else Vl_ICMS_sai end,'
      '  Vl_IPI_sai      = case when Vl_IPI_sai      = 0 then null else Vl_IPI_sai end,'
      '  Vl_STB_sai      = case when Vl_STB_sai      = 0 then null else Vl_STB_sai end,'
      '  Vl_BaseICMS_ent = case when Vl_BaseICMS_ent = 0 then null else Vl_BaseICMS_ent end,'
      '  Vl_ICMS_ent     = case when Vl_ICMS_ent     = 0 then null else Vl_ICMS_ent end,'
      '  Vl_IPI_ent      = case when Vl_IPI_ent      = 0 then null else Vl_IPI_ent end,'
      '  Vl_STB_ent      = case when Vl_STB_ent      = 0 then null else Vl_STB_ent end'
      ''
      '-- Resultado'
      'select'
      '  Dt_Imposto,'
      '  sum( Vl_BaseICMS_sai ) as Vl_BaseICMS_sai,'
      '  sum( Vl_ICMS_sai )     as Vl_ICMS_sai,'
      '  sum( Vl_IPI_sai )      as Vl_IPI_sai,'
      '  sum( Vl_STB_sai )      as Vl_STB_sai,'
      '  sum( Vl_BaseICMS_ent ) as Vl_BaseICMS_ent,'
      '  sum( Vl_ICMS_ent )     as Vl_ICMS_ent,'
      '  sum( Vl_IPI_ent )      as Vl_IPI_ent,'
      '  sum( Vl_STB_ent )      as Vl_STB_ent'
      ''
      'from'
      '  ##ApurarImposto'
      ''
      'group by'
      '  Dt_Imposto'
      ''
      'order by'
      '  Dt_Imposto'
    )
    SQLOther1.Strings = (
      'declare @Cd_Filial SmallInt'
      'declare @Dt_Start SmallDateTime'
      'declare @Dt_End SmallDateTime'
      ''
      'set @Cd_Filial  = :Cd_Filial'
      'set @Dt_Start   = :Dt_Start'
      'set @Dt_End     = :Dt_End'
      ''
      'if Object_ID( ''''TempDB..##ApurarImposto'''' ) is not null'
      '  truncate table ##ApurarImposto'
      ''
      'else'
      '  create table ##ApurarImposto'
      '    ('
      '    Dt_Imposto SmallDateTime,'
      '    fl_origem char( 1 ),'
      '    Vl_BaseICMS_sai Numeric( 12, 3 ),'
      '    Vl_ICMS_sai numeric( 12, 3 ),'
      '    Vl_IPI_sai numeric( 12, 3 ),'
      '    Vl_STB_sai numeric( 12, 3 ),'
      '    Vl_BaseICMS_ent Numeric( 12, 3 ),'
      '    Vl_ICMS_ent numeric( 12, 3 ),'
      '    Vl_IPI_ent numeric( 12, 3 ),'
      '    Vl_STB_ent numeric( 12, 3 )'
      '    )'
      ''
      '-- Vendas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Fatura, 111 ) ), ''''V'''','
      '    sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_STB ) as Vl_STB, 0, 0, 0, 0'
      ''
      '  from'
      '    Orcamento Ori'
      ''
      '  where'
      '    Ori.Cd_Filial    = @Cd_Filial and'
      '    Ori.St_Orcamento = ''''9'''' and'
      '    Ori.Dt_Fatura   >= @Dt_Start and'
      '    Ori.Dt_Fatura    < @Dt_End'
      ''
      '  group by'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Fatura, 111 ) )'
      ''
      '-- Saidas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ), ''''S'''','
      '    sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_Substituicao ) as Vl_STB, 0, 0, 0, 0'
      ''
      '  from'
      '    Saida Ori'
      ''
      '  where'
      '    Ori.Cd_Filial      = @Cd_Filial and'
      '    Ori.St_Saida       = ''''2'''' and'
      '    Ori.Dt_Lancamento >= @Dt_Start and'
      '    Ori.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 )'
      ''
      '-- Entradas'
      'insert into ##ApurarImposto'
      '  select'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) ), ''''E'''','
      '    0, 0, 0, 0, sum( Ori.Vl_BaseICMS ) as Vl_BaseICMS,'
      '    sum( Ori.Vl_ICMS ) as Vl_ICMS, Sum( Ori.Vl_IPI ) as Vl_IPI,'
      '    sum( Ori.Vl_Substituicao ) as Vl_STB'
      ''
      '  from'
      '    Entrada Ori'
      ''
      '  where'
      '    Ori.Cd_Filial      = @Cd_Filial and'
      '    Ori.St_Entrada     = ''''2'''' and'
      '    Ori.Dt_Lancamento >= @Dt_Start and'
      '    Ori.Dt_Lancamento  < @Dt_End'
      ''
      '  group by'
      '    Convert( SmallDateTime, Convert(  VarChar( 11 ), Ori.Dt_Lancamento, 111 ) )'
      ''
      '-- Coloca null nos campos zerados'
      'update'
      '  ##ApurarImposto'
      ''
      'set'
      '  Vl_BaseICMS_sai = case when Vl_BaseICMS_sai = 0 then null else Vl_BaseICMS_sai end,'
      '  Vl_ICMS_sai     = case when Vl_ICMS_sai     = 0 then null else Vl_ICMS_sai end,'
      '  Vl_IPI_sai      = case when Vl_IPI_sai      = 0 then null else Vl_IPI_sai end,'
      '  Vl_STB_sai      = case when Vl_STB_sai      = 0 then null else Vl_STB_sai end,'
      '  Vl_BaseICMS_ent = case when Vl_BaseICMS_ent = 0 then null else Vl_BaseICMS_ent end,'
      '  Vl_ICMS_ent     = case when Vl_ICMS_ent     = 0 then null else Vl_ICMS_ent end,'
      '  Vl_IPI_ent      = case when Vl_IPI_ent      = 0 then null else Vl_IPI_ent end,'
      '  Vl_STB_ent      = case when Vl_STB_ent      = 0 then null else Vl_STB_ent end'
      ''
      '-- Resultado'
      'select'
      '  Dt_Imposto,'
      '  sum( Vl_BaseICMS_sai ) as Vl_BaseICMS_sai,'
      '  sum( Vl_ICMS_sai )     as Vl_ICMS_sai,'
      '  sum( Vl_IPI_sai )      as Vl_IPI_sai,'
      '  sum( Vl_STB_sai )      as Vl_STB_sai,'
      '  sum( Vl_BaseICMS_ent ) as Vl_BaseICMS_ent,'
      '  sum( Vl_ICMS_ent )     as Vl_ICMS_ent,'
      '  sum( Vl_IPI_ent )      as Vl_IPI_ent,'
      '  sum( Vl_STB_ent )      as Vl_STB_ent'
      ''
      'from'
      '  ##ApurarImposto'
      ''
      'group by'
      '  Dt_Imposto'
      ''
      'order by'
      '  Dt_Imposto'
    )
    Left = 53
    Top = 120
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 25
    Top = 120
  end
end
