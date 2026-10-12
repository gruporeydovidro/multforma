object FrmOMedicao_Report: TFrmOMedicao_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Ordem de Medi'#231#227'o - O. M.'
  ClientHeight = 175
  ClientWidth = 537
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
    Height = 175
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 516
    Height = 175
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 145
      Width = 509
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 4
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label11: TLabel
      Left = 189
      Top = 1
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label6: TLabel
      Left = 5
      Top = 37
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbVendedor: TSpeedButton
      Tag = 4
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbVendedorClick
    end
    object Label7: TLabel
      Left = 5
      Top = 71
      Width = 38
      Height = 13
      Caption = 'Medidor'
    end
    object SbMedidor: TSpeedButton
      Tag = 5
      Left = 45
      Top = 86
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbMedidorClick
    end
    object Label1: TLabel
      Left = 5
      Top = 107
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 46
      Top = 122
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object Label3: TLabel
      Left = 363
      Top = 1
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label4: TLabel
      Left = 261
      Top = 1
      Width = 64
      Height = 13
      Caption = 'Usar data de:'
    end
    object BitBtnReport: TBitBtn
      Left = 343
      Top = 148
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 12
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 429
      Top = 148
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 4
      Top = 15
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
      OnChange = EdtDt_StartChange
    end
    object EdtDt_End: TDateEdit
      Left = 96
      Top = 15
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnChange = EdtDt_StartChange
    end
    object EdtHr_Start: TMaskEdit
      Left = 188
      Top = 15
      Width = 33
      Height = 19
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 2
      Text = '08:00'
      OnExit = EdtHr_StartExit
    end
    object EdtHr_End: TMaskEdit
      Left = 224
      Top = 15
      Width = 33
      Height = 19
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 3
      Text = '18:00'
      OnExit = EdtHr_StartExit
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 68
      Top = 52
      Width = 320
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
    object EdtCd_Medidor: TCurrencyEdit
      Tag = 5
      Left = 5
      Top = 86
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Medidor: TEdit
      Left = 68
      Top = 86
      Width = 320
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
      TabOrder = 8
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 122
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 67
      Top = 122
      Width = 320
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
      TabOrder = 10
    end
    object CbSituacao: TComboBox
      Left = 363
      Top = 14
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Todas'
        'Aguardando Medi'#231#227'o'
        'Medido'
        'Vendido'
        'Cancelada'
      )
    end
    object CbData: TComboBox
      Left = 261
      Top = 14
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 14
      Items.Strings = (
        'Agendamento'
        'Emiss'#227'o da OM'
      )
    end
    object SctReport: TSctReport
      Left = 394
      Top = 71
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
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 14
      SLeft = -27
      SWidth = 1092
      SHeight = 432
      MTop = 71
      MLeft = 394
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0.3
        BorderType = btNone
        Description = 'Rel. Ordem de Medi'#231#227'o'
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFoto_Find.DsFind
        end
        object adodsreportNr_MedicaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Medicao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_AgendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Agenda'
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
        object adodsreportDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfNr_Medicao: TSctTotalvar
          Left = 80
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportNr_MedicaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 1115
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 1115
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
            Caption = 'Ordens de Medi'#231#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 966
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 999
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 963
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 999
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
            Width = 1065
            Height = 7
          end
          object SctTxtPeriodo: TSctvarlabel
            Left = 0
            Top = 18
            Width = 317
            Height = 17
            Caption = 'N'#186' O.M.'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 1115
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_MedicaoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 47
            Top = 0
            Width = 98
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 952
            Top = 0
            Width = 111
            Height = 17
            Variable = adodsreportDs_SituacaoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 839
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_AgendaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 678
            Top = 0
            Width = 157
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDs_RotaVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 434
            Top = 0
            Width = 241
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_VendedorVar
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 147
            Top = 0
            Width = 283
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_EmitenteVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 1115
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 1065
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
            Left = 982
            Top = 3
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 1029
            Top = 3
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
          Width = 1115
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 982
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 1030
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfNr_Medicao
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
            Left = 987
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
          Width = 1115
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 1065
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#186' O.M.'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 47
            Top = 0
            Width = 98
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 952
            Top = 0
            Width = 111
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 839
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data/hora da medi'#231#227'o'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 678
            Top = 0
            Width = 111
            Height = 17
            Caption = 'Rota'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 434
            Top = 0
            Width = 111
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 147
            Top = 0
            Width = 111
            Height = 17
            Caption = 'Cliente'
          end
        end
      end
    end
    object CkBZebrado: TCheckBox
      Left = 392
      Top = 123
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 363
    Top = 24
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.St_Medicao, OM.Dt_Agenda, OM.Cd_Emitente,'#13#10'  E.Nm_Emitente, OM.Nr_Endereco, EE.Ds_Titulo, OM.Nm_Contato, OM.Cd_Vendedor,'#13#10'  FV.Nm_Funcionario as Nm_Vendedor, OM.Cd_Medidor, FM.Nm_Funcionario as Nm_Medidor,'#13#10'  OM.Mm_Medicao, EE.Cd_Rota, R.Ds_Rota'#13#10#13#10'from'#13#10'  OMedicao OM'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OM.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = OM.Cd_Emitente and'#13#10'  EE.Nr_Endereco = OM.Nr_Endereco'#13#10'  /* Cd_Rota */'#13#10#13#10'inner join'#13#10'  Funcionario FV'#13#10'on'#13#10'  FV.Cd_Funcionario = OM.Cd_Vendedor'#13#10#13#10'left join'#13#10'  Funcionario FM'#13#10'on'#13#10'  FM.Cd_Funcionario = OM.Cd_Medidor'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'where'#13#10'  OM.Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.St_Medicao, OM.Dt_Agenda, OM.Cd_Emitente,'
      '  E.Nm_Emitente, OM.Nr_Endereco, EE.Ds_Titulo, OM.Nm_Contato, OM.Cd_Vendedor,'
      '  FV.Nm_Funcionario as Nm_Vendedor, OM.Cd_Medidor, FM.Nm_Funcionario as Nm_Medidor,'
      '  OM.Mm_Medicao, EE.Cd_Rota, R.Ds_Rota'
      ''
      'from'
      '  OMedicao OM'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = OM.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = OM.Cd_Emitente and'
      '  EE.Nr_Endereco = OM.Nr_Endereco'
      '  /* Cd_Rota */'
      ''
      'inner join'
      '  Funcionario FV'
      'on'
      '  FV.Cd_Funcionario = OM.Cd_Vendedor'
      ''
      'left join'
      '  Funcionario FM'
      'on'
      '  FM.Cd_Funcionario = OM.Cd_Medidor'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'where'
      '  OM.Cd_Filial = :Cd_Filial and'
      '  /* St_Medicao */'
      '  /* Dt_Referencia */ >= :Dt_Start and'
      '  /* Dt_Referencia */  < :Dt_End'
      '  /* Cd_Vendedor */'
      '  /* Cd_Medidor */'
      ''
      'order by'
      '  /* Order */  '
    )
    Left = 392
    Top = 24
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Medicao: TIntegerField
      FieldName = 'Nr_Medicao'
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportSt_Medicao: TStringField
      FieldName = 'St_Medicao'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDt_Agenda: TDateTimeField
      FieldName = 'Dt_Agenda'
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsReportDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsReportNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsReportCd_Vendedor: TSmallintField
      FieldName = 'Cd_Vendedor'
    end
    object ADODsReportNm_Vendedor: TStringField
      FieldName = 'Nm_Vendedor'
      Size = 50
    end
    object ADODsReportCd_Medidor: TSmallintField
      FieldName = 'Cd_Medidor'
    end
    object ADODsReportNm_Medidor: TStringField
      FieldName = 'Nm_Medidor'
      Size = 50
    end
    object ADODsReportMm_Medicao: TMemoField
      FieldName = 'Mm_Medicao'
      BlobType = ftMemo
    end
    object ADODsReportCd_Rota: TSmallintField
      FieldName = 'Cd_Rota'
    end
    object ADODsReportDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
    object ADODsReportDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
  end
end
