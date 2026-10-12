object FrmPagar_ResumoAplicacao: TFrmPagar_ResumoAplicacao
  Left = 367
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de Resumo de Aplica'#231#227'o'
  ClientHeight = 252
  ClientWidth = 633
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
    Height = 252
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 612
    Height = 252
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 222
      Width = 607
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 149
      Top = 2
      Width = 90
      Height = 13
      Caption = 'Origem dos Dados:'
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
      Top = 2
      Width = 77
      Height = 13
      Caption = 'M'#234's/Ano Inicial:'
    end
    object BitBtnReport: TBitBtn
      Left = 439
      Top = 224
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 7
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 525
      Top = 224
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbOrigem: TComboBox
      Left = 149
      Top = 16
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Caixa'
        'Contas Pagas'
      )
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
    end
    object CbMes: TComboBox
      Left = 5
      Top = 16
      Width = 86
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 0
      Text = 'Novembro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Ano: TRxSpinEdit
      Left = 91
      Top = 16
      Width = 53
      Height = 19
      Value = 9999.0
      TabOrder = 1
    end
    object SctReport: TSctReport
      Left = 163
      Top = 55
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
      TabOrder = 9
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 50
      SLeft = 0
      SWidth = 1131
      SHeight = 631
      MTop = 55
      MLeft = 163
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
        PageSetup.Orientation = poLandscape
        PageSetup.Size = psA4
        PageSetup.Height = 8.26771653543307
        PageSetup.Width = 11.69291338582677
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.5500000000000002
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Resumo de Aplica'#231#227'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand8
        Detail = SctDetailVendaPeriodo
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
        object SctGroup2: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctGrpEstado
          Footer = SctGrpFtEstado
          Variable = adodsreportcd_grupoVar
          Level = 0
        end
        object SctLevel13: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel14: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
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
        object adodsreportcd_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_grupo'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_grupo'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_subgrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_subgrupo'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_totalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_01Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_01'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_02Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_02'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_03Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_03'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_04Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_04'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_05Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_05'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_06Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_06'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_total: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_totalVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_01: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_01Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_02: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_02Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_03: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_03Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_04: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_04Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_05: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_05Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_06: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_06Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportvl_mes_07Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_07'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_08Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_08'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_09Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_09'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_10Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_10'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_11Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_11'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_mes_12Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_mes_12'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_mes_07: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_07Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_08: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_08Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_09: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_09Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_10: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_10Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_11: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_11Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_mes_12: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_mes_12Var
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDp_GrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Grupo'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_SubGrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_SubGrupo'
          DataSource = DsReport
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 0
          Width = 1091
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel8
          Visible = False
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 22
          Width = 1091
          Height = 39
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
            Caption = 'Resumo de Aplica'#231#227'o'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 938
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 976
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 938
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 976
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctOrigem: TSctvarlabel
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
            Caption = 'Origem'
          end
        end
        object SctDetailVendaPeriodo: TSctBand
          Left = 0
          Top = 144
          Width = 1091
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = SctLevel10
          Stretch = True
          BorderType = btSingle
          object Sctvarlabel2: TSctvarlabel
            Left = 2
            Top = 1
            Width = 185
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_SubGrupoVar
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 975
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_totalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 517
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_06Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 451
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_05Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 320
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_03Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 386
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_04Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 189
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_01Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 255
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_02Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 188
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider9: TSctVerticalDivider
            Left = 254
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider10: TSctVerticalDivider
            Left = 319
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider11: TSctVerticalDivider
            Left = 385
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider12: TSctVerticalDivider
            Left = 451
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider13: TSctVerticalDivider
            Left = 516
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider14: TSctVerticalDivider
            Left = 583
            Top = 1
            Width = 2
            Height = 18
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 909
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_12Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 843
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_11Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 712
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_09Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 778
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_10Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 581
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_07Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 647
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_mes_08Var
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVerticalDivider35: TSctVerticalDivider
            Left = 646
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider36: TSctVerticalDivider
            Left = 711
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider37: TSctVerticalDivider
            Left = 777
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider38: TSctVerticalDivider
            Left = 843
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider39: TSctVerticalDivider
            Left = 908
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider40: TSctVerticalDivider
            Left = 973
            Top = 1
            Width = 2
            Height = 18
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 231
          Width = 1091
          Height = 21
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel11
          object SctLine9: TSctLine
            Left = 1
            Top = 1
            Width = 1040
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel124: TSctvarlabel
            Left = 1
            Top = 3
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
            Left = 958
            Top = 3
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 1004
            Top = 3
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand12: TSctBand
          Left = 0
          Top = 267
          Width = 1091
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel12
          BorderType = btSingle
          object SctVerticalDivider22: TSctVerticalDivider
            Left = 188
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider23: TSctVerticalDivider
            Left = 254
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider24: TSctVerticalDivider
            Left = 319
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider25: TSctVerticalDivider
            Left = 385
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider26: TSctVerticalDivider
            Left = 451
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider27: TSctVerticalDivider
            Left = 516
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider28: TSctVerticalDivider
            Left = 582
            Top = 1
            Width = 2
            Height = 18
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 189
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_01
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 255
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_02
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 320
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_03
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel11: TSctTotalvarLabel
            Left = 386
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_04
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel12: TSctTotalvarLabel
            Left = 451
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_05
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel13: TSctTotalvarLabel
            Left = 517
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_06
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel14: TSctTotalvarLabel
            Left = 975
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_total
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 6
            Top = 1
            Width = 176
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctVerticalDivider47: TSctVerticalDivider
            Left = 646
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider48: TSctVerticalDivider
            Left = 711
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider49: TSctVerticalDivider
            Left = 777
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider50: TSctVerticalDivider
            Left = 843
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider51: TSctVerticalDivider
            Left = 908
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider52: TSctVerticalDivider
            Left = 973
            Top = 1
            Width = 2
            Height = 18
          end
          object SctTotalvarLabel21: TSctTotalvarLabel
            Left = 581
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_07
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel22: TSctTotalvarLabel
            Left = 647
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_08
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel23: TSctTotalvarLabel
            Left = 712
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_09
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel24: TSctTotalvarLabel
            Left = 778
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_10
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel25: TSctTotalvarLabel
            Left = 843
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_11
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel26: TSctTotalvarLabel
            Left = 909
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_12
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdPedido: TSctSubBand
          Left = 0
          Top = 76
          Width = 1091
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
          BorderType = btSingle
          Band = SctBand9
          Above = False
          object Sctvarlabel42: TSctvarlabel
            Left = 0
            Top = 1
            Width = 186
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'SubGrupo de Aplica'#231#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 975
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object SctTxtMes_06: TSctvarlabel
            Left = 517
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 6'
          end
          object SctTxtMes_05: TSctvarlabel
            Left = 451
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 5'
          end
          object SctTxtMes_03: TSctvarlabel
            Left = 320
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 3'
          end
          object SctTxtMes_04: TSctvarlabel
            Left = 386
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 4'
          end
          object SctTxtMes_01: TSctvarlabel
            Left = 189
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 1'
          end
          object SctTxtMes_02: TSctvarlabel
            Left = 255
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 2'
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 188
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 254
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider3: TSctVerticalDivider
            Left = 319
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 385
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 451
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 516
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 581
            Top = 1
            Width = 2
            Height = 18
          end
          object SctTxtMes_12: TSctvarlabel
            Left = 909
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 12'
          end
          object SctTxtMes_11: TSctvarlabel
            Left = 843
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 11'
          end
          object SctTxtMes_09: TSctvarlabel
            Left = 712
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 9'
          end
          object SctTxtMes_10: TSctvarlabel
            Left = 778
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 10'
          end
          object SctTxtMes_07: TSctvarlabel
            Left = 581
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 7'
          end
          object SctTxtMes_08: TSctvarlabel
            Left = 647
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'M'#234's 8'
          end
          object SctVerticalDivider29: TSctVerticalDivider
            Left = 646
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider30: TSctVerticalDivider
            Left = 711
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider31: TSctVerticalDivider
            Left = 777
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider32: TSctVerticalDivider
            Left = 843
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider33: TSctVerticalDivider
            Left = 908
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider34: TSctVerticalDivider
            Left = 973
            Top = 1
            Width = 2
            Height = 18
          end
        end
        object SctGrpEstado: TSctBand
          Left = 0
          Top = 110
          Width = 1091
          Height = 19
          Color = 15987699
          BandName = 'SctGrpEstado'
          Updatelevel = SctLevel13
          BorderType = btSingle
          object Sctvarlabel40: TSctvarlabel
            Left = 0
            Top = 1
            Width = 1039
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDp_GrupoVar
          end
        end
        object SctGrpFtEstado: TSctBand
          Left = 0
          Top = 178
          Width = 1091
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'SctGrpFtEstado'
          Updatelevel = SctLevel14
          BorderType = btSingle
          object SctVerticalDivider15: TSctVerticalDivider
            Left = 188
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider16: TSctVerticalDivider
            Left = 254
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider17: TSctVerticalDivider
            Left = 319
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider18: TSctVerticalDivider
            Left = 385
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider19: TSctVerticalDivider
            Left = 451
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider20: TSctVerticalDivider
            Left = 516
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider21: TSctVerticalDivider
            Left = 582
            Top = 1
            Width = 2
            Height = 18
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 189
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_01
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 255
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_02
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 320
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_03
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 386
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_04
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 451
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_05
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 517
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_06
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 975
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_total
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 6
            Top = 1
            Width = 176
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Grupo de Aplica'#231#227'o:'
          end
          object SctVerticalDivider41: TSctVerticalDivider
            Left = 646
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider42: TSctVerticalDivider
            Left = 711
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider43: TSctVerticalDivider
            Left = 777
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider44: TSctVerticalDivider
            Left = 843
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider45: TSctVerticalDivider
            Left = 908
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider46: TSctVerticalDivider
            Left = 973
            Top = 1
            Width = 2
            Height = 18
          end
          object SctTotalvarLabel15: TSctTotalvarLabel
            Left = 581
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_07
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel16: TSctTotalvarLabel
            Left = 647
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_08
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel17: TSctTotalvarLabel
            Left = 712
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_09
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel18: TSctTotalvarLabel
            Left = 778
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_10
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel19: TSctTotalvarLabel
            Left = 843
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_11
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
          object SctTotalvarLabel20: TSctTotalvarLabel
            Left = 909
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_mes_12
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
          end
        end
        object SctGrpFtEstadoSub: TSctSubBand
          Left = 0
          Top = 212
          Width = 1091
          Height = 4
          ParentColor = True
          BandName = 'SctGrpFtEstadoSub'
          Updatelevel = SctLevel14
          Band = SctGrpFtEstado
          Above = False
        end
      end
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsReportCalcFields
    CommandText = '-- Pelo Caixa'#13#10'select'#13#10'  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Total'#13#10'  '#13#10'into'#13#10'  #ResumoAplicacao'#13#10#13#10'from'#13#10'  Caixa C'#13#10'  '#13#10'inner join'#13#10'  Aplicacao_Grupo AG'#13#10'on'#13#10'  AG.Cd_Grupo = C.Cd_Grupo'#13#10'  '#13#10'inner join'#13#10'  Aplicacao_SubGrupo ASG'#13#10'on'#13#10'  ASG.Cd_SubGrupo = C.Cd_SubGrupo'#13#10#13#10'where'#13#10'  C.Cd_Filial      = :Cd_Filial and'#13#10'  C.Dt_Lancamento >= :Dt_Start and'#13#10'  C.Dt_Lancamento  < :Dt_End and'#13#10'  C.Tp_Lancamento  = ''''2'''' and'#13#10'  not exists(                                    -- Testa se existe estorno'#13#10'    select'#13#10'      E.Nr_Lancamento'#13#10'      '#13#10'    from'#13#10'      Caixa E'#13#10'      '#13#10'    where'#13#10'      E.Cd_Filial  = C.Cd_Filial and'#13#10'      E.Nr_Estorno = C.Nr_Lancamento'#13#10'    )'#13#10#13#10'group by'#13#10'  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo;'#13#10#13#10'select'#13#10'  RC.Cd_Grupo, RC.Cd_SubGrupo, RC.Nm_Grupo, RC.Nm_SubGrupo, RC.Vl_Total,'#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''01/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''02/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and''''        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_01'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''02/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''03/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_02'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''03/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''04/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_03'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''04/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''05/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_04'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''05/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''06/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_05'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''06/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''07/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_06'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''07/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''08/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_07'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''08/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''09/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_08'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''09/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''10/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_09'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''10/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''11/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_10'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''11/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''12/01/2005'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_11'#13#10','#13#10'('#13#10'  select'#13#10'    sum( M.Vl_Lancamento )'#13#10'  from'#13#10'    Caixa M'#13#10'  where'#13#10'    M.Cd_Filial      = 1 and'#13#10'    M.Cd_Grupo       = RC.Cd_Grupo and'#13#10'    M.Cd_SubGrupo    = RC.Cd_SubGrupo and'#13#10'    M.Dt_Lancamento >= ''''12/01/2005'''' and'#13#10'    M.Dt_Lancamento  < ''''01/01/2006'''' and'#13#10'    M.Tp_Lancamento  = ''''2'''' and'#13#10'    not exists('#13#10'      select'#13#10'        E.Nr_Lancamento'#13#10'      from'#13#10'        Caixa E'#13#10'      where'#13#10'        E.Cd_Filial  = M.Cd_Filial and'#13#10'        E.Nr_Estorno = M.Nr_Lancamento'#13#10') ) as Vl_Mes_12'#13#10'from'#13#10'  #ResumoAplicacao RC'#13#10#13#10'order by'#13#10'  RC.Cd_Grupo, RC.Cd_SubGrupo'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-- Pelo Caixa'
      'if Object_ID( ''''TempDB..#ResumoAplicacao'''' ) is not null'
      '  drop table #ResumoAplicacao'
      ''
      'select'
      '  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo,'
      '  sum( C.Vl_Lancamento ) as Vl_Total'
      '  '
      'into'
      '  #ResumoAplicacao'
      '  '
      'from'
      '  Caixa C'
      '  '
      'inner join'
      '  Aplicacao_Grupo AG'
      'on'
      '  AG.Cd_Grupo = C.Cd_Grupo'
      '  '
      'inner join'
      '  Aplicacao_SubGrupo ASG'
      'on'
      '  ASG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'where'
      '  C.Cd_Filial      = :Cd_Filial and'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  C.Dt_Lancamento >= :Dt_Start and'
      '  C.Dt_Lancamento  < :Dt_End and'
      '  C.Tp_Lancamento  = ''''2'''' and'
      '  not exists(                                    -- Testa se existe estorno'
      '    select'
      '      E.Nr_Lancamento'
      ''
      '    from'
      '      Caixa E'
      ''
      '    where'
      '      E.Cd_Filial  = C.Cd_Filial and'
      '      E.Nr_Estorno = C.Nr_Lancamento'
      '    )'
      ''
      'group by'
      '  C.Cd_Grupo, C.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo'
    )
    SQLOther1.Strings = (
      '-- Pelo Contas a Pagar'
      'if Object_ID( ''''TempDB..#ResumoAplicacao'''' ) is not null'
      '  drop table #ResumoAplicacao'
      ''
      'select'
      '  P.Cd_Grupo, P.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo,'
      '  sum( PH.Vl_Lancamento ) as Vl_Total'
      ''
      'into'
      '  #ResumoAplicacao'
      ''
      'from'
      '  Pagar_Historico PH'
      ''
      'inner join'
      '  Pagar P'
      'on'
      '  P.Cd_Filial = PH.Cd_Filial and'
      '  P.Nr_Pagar  = PH.Nr_Pagar and'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  P.St_Pagar >= ''''2'''' and                        -- Somente Amortizado e Pago'
      '  P.St_Pagar <= ''''3'''
      ''
      'inner join'
      '  Aplicacao_Grupo AG'
      'on'
      '  AG.Cd_Grupo = P.Cd_Grupo'
      ''
      'inner join'
      '  Aplicacao_SubGrupo ASG'
      'on'
      '  ASG.Cd_SubGrupo = P.Cd_SubGrupo'
      ''
      'where'
      '  PH.Cd_Filial      = :Cd_Filial and'
      '  PH.Dt_Lancamento >= :Dt_Start and'
      '  PH.Dt_Lancamento  < :Dt_End and'
      '  PH.Tp_Lancamento >= ''''2'''' and'
      '  PH.Tp_Lancamento <= ''''5'''
      ''
      'group by'
      '  P.Cd_Grupo, P.Cd_SubGrupo, AG.Nm_Grupo, ASG.Nm_SubGrupo'
    )
    SQLOther3.Strings = (
      'select'
      '  RC.Cd_Grupo, RC.Cd_SubGrupo, RC.Nm_Grupo, RC.Nm_SubGrupo, RC.Vl_Total,'
    )
    SQLOther4.Strings = (
      'from'
      '  #ResumoAplicacao RC'
      ''
      'order by'
      '  RC.Cd_Grupo, RC.Cd_SubGrupo'
    )
    Left = 81
    Top = 115
    object ADODsReportcd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsReportcd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsReportnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsReportnm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
    end
    object ADODsReportvl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 14
      Size = 7
    end
    object ADODsReportvl_mes_01: TBCDField
      FieldName = 'vl_mes_01'
      Precision = 14
      Size = 7
    end
    object ADODsReportvl_mes_02: TBCDField
      FieldName = 'vl_mes_02'
      Precision = 28
      Size = 6
    end
    object ADODsReportvl_mes_03: TBCDField
      FieldName = 'vl_mes_03'
      Precision = 28
      Size = 6
    end
    object ADODsReportvl_mes_04: TBCDField
      FieldName = 'vl_mes_04'
      Precision = 12
      Size = 6
    end
    object ADODsReportvl_mes_05: TBCDField
      FieldName = 'vl_mes_05'
      Precision = 28
      Size = 6
    end
    object ADODsReportvl_mes_06: TBCDField
      FieldName = 'vl_mes_06'
      Precision = 28
      Size = 6
    end
    object ADODsReportvl_mes_07: TBCDField
      FieldName = 'vl_mes_07'
      Precision = 14
      Size = 7
    end
    object ADODsReportvl_mes_08: TBCDField
      FieldName = 'vl_mes_08'
      Precision = 12
      Size = 6
    end
    object ADODsReportvl_mes_09: TBCDField
      FieldName = 'vl_mes_09'
      Precision = 12
      Size = 6
    end
    object ADODsReportvl_mes_10: TBCDField
      FieldName = 'vl_mes_10'
      Precision = 12
      Size = 6
    end
    object ADODsReportvl_mes_11: TBCDField
      FieldName = 'vl_mes_11'
      Precision = 28
      Size = 6
    end
    object ADODsReportvl_mes_12: TBCDField
      FieldName = 'vl_mes_12'
      Precision = 28
      Size = 6
    end
    object ADODsReportDp_Grupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Grupo'
      Size = 58
      Calculated = True
    end
    object ADODsReportDp_SubGrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_SubGrupo'
      Size = 58
      Calculated = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 51
    Top = 115
  end
end
