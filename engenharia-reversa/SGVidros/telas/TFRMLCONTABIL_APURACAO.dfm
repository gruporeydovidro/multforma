object FrmLContabil_Apuracao: TFrmLContabil_Apuracao
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Registro de Apura'#231#227'o de ICMS'
  ClientHeight = 132
  ClientWidth = 354
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
    Height = 132
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 333
    Height = 132
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 101
      Width = 325
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Folha inicial:'
      Transparent = True
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object BitBtnReport: TBitBtn
      Left = 162
      Top = 105
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 246
      Top = 105
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Folha: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 40
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      Value = 2.0
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
    object SctRepLivro: TSctReport
      Left = 100
      Top = 43
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 5
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 76
      SLeft = 6
      SWidth = 779
      SHeight = 445
      MTop = 43
      MLeft = 100
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 68
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        BorderType = btNone
        Description = 'Registro de Apura'#231#227'o de ICMS'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsLivro
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DsLivro
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodslivroCd_CFOPVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Cd_CFOP'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodslivroFl_TipoVar
          Level = 0
        end
        object GroupHeaderLevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel: TSctLevel
          Left = 0
          Top = -68
          Width = 0
          Height = 0
        end
        object adodslivroFl_TipoVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Fl_Tipo'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslivroVl_ContabilVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Vl_Contabil'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslivroVl_BaseCalculoVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Vl_BaseCalculo'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslivroVl_ImpostoVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Vl_Imposto'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodslivroVl_IsentoVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Vl_Isento'
          DataSource = DsLivro
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfilialNm_FilialVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_InscEstadualVar: TSctDBVar
          Left = 0
          Top = -68
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -68
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = -48
          Width = 748
          Height = 87
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          OnBeforePrint = PageHeaderBandBeforePrint
          object SctShape3: TSctShape
            Left = 0
            Top = 1
            Width = 700
            Height = 88
            Brush.Color = 15132390
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 4
            Top = 68
            Width = 39
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Folha:'
          end
          object SctTxtFolha: TSctvarlabel
            Tag = 1
            Left = 42
            Top = 68
            Width = 41
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '01'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 4
            Top = 27
            Width = 251
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Registro de Apura'#231#227'o de ICMS'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 5
            Top = 5
            Width = 692
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsfilialNm_FilialVar
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 4
            Top = 51
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 118
            Top = 51
            Width = 195
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNr_InscEstadualVar
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 469
            Top = 68
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Per'#237'odo:'
          end
          object SctTxtPeriodo: TSctvarlabel
            Left = 524
            Top = 68
            Width = 158
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '01/01/2000 a 31/03/2000'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 469
            Top = 51
            Width = 57
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'C.N.P.J.:'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 527
            Top = 51
            Width = 167
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 156
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel13: TSctvarlabel
            Left = 1
            Top = 0
            Width = 55
            Height = 17
            AlignHorizontal = laCenter
            Caption = '  '
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 71
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodslivroCd_CFOPVar
            DataFormat.DisplayFormat = '#.###;0; '
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 136
            Top = 0
            Width = 85
            Height = 17
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodslivroVl_ContabilVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 228
            Top = 0
            Width = 116
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroVl_BaseCalculoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 358
            Top = 0
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroVl_ImpostoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 467
            Top = 0
            Width = 128
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroVl_IsentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 604
            Top = 0
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctLine10: TSctLine
            Left = 65
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine11: TSctLine
            Left = 134
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine12: TSctLine
            Left = 221
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine13: TSctLine
            Left = 350
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine14: TSctLine
            Left = 457
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine15: TSctLine
            Left = 598
            Top = 0
            Width = 5
            Height = 19
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine16: TSctLine
            Left = 696
            Top = -1
            Width = 4
            Height = 19
            AlignHorizontal = laRight
            LineType = ltVertical
          end
          object SctLine17: TSctLine
            Left = 0
            Top = 0
            Width = 5
            Height = 19
            LineType = ltVertical
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 286
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 321
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 54
          Width = 748
          Height = 87
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          OnBeforePrint = GroupHeaderBeforePrint
          object SctShape1: TSctShape
            Left = 0
            Top = 0
            Width = 700
            Height = 26
          end
          object SctVarTipo: TSctvarlabel
            Left = 3
            Top = 1
            Width = 694
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'ENTRADA / SAIDA'
          end
          object SctShape2: TSctShape
            Left = 0
            Top = 23
            Width = 700
            Height = 66
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 1
            Top = 59
            Width = 55
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Contabil'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 71
            Top = 58
            Width = 61
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Fiscal'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 4
            Top = 26
            Width = 128
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Codifica'#231#227'o'
          end
          object SctLine1: TSctLine
            Left = 134
            Top = 24
            Width = 5
            Height = 64
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 136
            Top = 40
            Width = 85
            Height = 31
            AlignVertical = laCenterVert
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Lines.Strings = (
              'Valores'
              'Cont'#225'beis'
            )
          end
          object SctLine2: TSctLine
            Left = 221
            Top = 24
            Width = 5
            Height = 64
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctTxtOpImposto: TSctvarlabel
            Left = 229
            Top = 50
            Width = 230
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Opera'#231#245'es com Cr'#233'dito do Imposto'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 228
            Top = 69
            Width = 116
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base de C'#225'lculo'
          end
          object SctTxtImposto: TSctvarlabel
            Left = 358
            Top = 69
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Imposto Cr'#233'ditado'
          end
          object SctLine3: TSctLine
            Left = 457
            Top = 48
            Width = 5
            Height = 39
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctTxtOpSemImposto: TSctvarlabel
            Left = 464
            Top = 50
            Width = 230
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Opera'#231#245'es sem Cr'#233'dito do Imposto'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 467
            Top = 69
            Width = 128
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Isentas ou N. Tributadas'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 604
            Top = 69
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Outras'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 225
            Top = 26
            Width = 469
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'ICMS - Valores Fiscais'
          end
          object SctLine4: TSctLine
            Left = 224
            Top = 46
            Width = 474
            Height = 5
            AlignVertical = laMiddle
          end
          object SctLine5: TSctLine
            Left = 0
            Top = 48
            Width = 135
            Height = 5
            AlignVertical = laCenterVert
          end
          object SctLine6: TSctLine
            Left = 224
            Top = 65
            Width = 474
            Height = 5
            AlignVertical = laMiddle
          end
          object SctLine7: TSctLine
            Left = 65
            Top = 51
            Width = 5
            Height = 36
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine8: TSctLine
            Left = 350
            Top = 68
            Width = 5
            Height = 20
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine9: TSctLine
            Left = 598
            Top = 68
            Width = 5
            Height = 20
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 189
          Width = 748
          Height = 82
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctShape4: TSctShape
            Left = 0
            Top = 1
            Width = 700
            Height = 77
          end
          object SctVarSubTotal: TSctvarlabel
            Left = 5
            Top = 6
            Width = 128
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'SubTotais Entradas'
          end
          object SctTxtSubIn: TSctvarlabel
            Left = 17
            Top = 19
            Width = 120
            Height = 17
            Caption = '1.00 do Estado'
          end
          object SctTxtSubOut: TSctvarlabel
            Left = 17
            Top = 37
            Width = 120
            Height = 17
            Caption = '2.00 de Outros Estados'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 17
            Top = 55
            Width = 120
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Totais'
          end
          object SctLine18: TSctLine
            Left = 134
            Top = 0
            Width = 5
            Height = 75
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine19: TSctLine
            Left = 221
            Top = 0
            Width = 5
            Height = 75
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine20: TSctLine
            Left = 350
            Top = 0
            Width = 5
            Height = 75
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine21: TSctLine
            Left = 457
            Top = 0
            Width = 5
            Height = 75
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine22: TSctLine
            Left = 598
            Top = 0
            Width = 5
            Height = 75
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctVarInContabil: TSctvarlabel
            Left = 137
            Top = 19
            Width = 85
            Height = 17
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarInBaseCalculo: TSctvarlabel
            Left = 228
            Top = 19
            Width = 116
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarInImposto: TSctvarlabel
            Left = 358
            Top = 19
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarInInsenta: TSctvarlabel
            Left = 467
            Top = 19
            Width = 128
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarInOutras: TSctvarlabel
            Left = 604
            Top = 19
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctVarOutOutras: TSctvarlabel
            Left = 604
            Top = 37
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctVarOutInsenta: TSctvarlabel
            Left = 467
            Top = 37
            Width = 128
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarOutImposto: TSctvarlabel
            Left = 358
            Top = 37
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarOutBaseCalculo: TSctvarlabel
            Left = 228
            Top = 37
            Width = 116
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarOutContabil: TSctvarlabel
            Left = 136
            Top = 37
            Width = 85
            Height = 17
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarTotalOutras: TSctvarlabel
            Left = 604
            Top = 55
            Width = 90
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctVarTotalInsenta: TSctvarlabel
            Left = 467
            Top = 55
            Width = 128
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarTotalImposto: TSctvarlabel
            Left = 358
            Top = 55
            Width = 96
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarTotalBaseCalculo: TSctvarlabel
            Left = 228
            Top = 55
            Width = 116
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarTotalContabil: TSctvarlabel
            Left = 136
            Top = 55
            Width = 85
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
        end
      end
    end
  end
  object ADODsLivro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'-------------------- Elimina table temporaria'#13#10'if Object_ID( ''''TempDB..##TmpLvApuracao'''' ) is not null'#13#10'  drop table ##TmpLvApuracao'#13#10#13#10'-------------------- Entradas'#13#10'select'#13#10'  ''''1'''' as Fl_Tipo, E.Cd_CFOP, C.Sg_Estado,'#13#10'  sum( E.Vl_Nota ) as Vl_Contabil, '#13#10'  sum( E.Vl_BaseICMS ) as Vl_BaseCalculo, '#13#10'  sum( E.Vl_ICMS ) as Vl_Imposto, '#13#10'  sum( E.Vl_Substituicao ) as Vl_Isento'#13#10'  '#13#10'into'#13#10'  ##TmpLvApuracao'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = E.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = Et.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.St_Entrada     = ''''2'''' and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End'#13#10#13#10'group by'#13#10'  E.Cd_CFOP, C.Sg_Estado'#13#10'  '#13#10'-------------------- Saidas - Table Saida'#13#10'insert into ##TmpLvApuracao'#13#10'select'#13#10'  ''''2'''' as Fl_Tipo, S.Cd_CFOP, C.Sg_Estado,'#13#10'  sum( S.Vl_Nota ) as Vl_Contabil, '#13#10'  sum( S.Vl_BaseICMS ) as Vl_BaseCalculo, '#13#10'  sum( S.Vl_ICMS ) as Vl_Imposto, '#13#10'  sum( S.Vl_Substituicao ) as Vl_Isento'#13#10'  '#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = S.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = Et.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  S.Cd_Filial      = @Cd_Filial and'#13#10'  S.St_Saida       = ''''2'''' and'#13#10'  S.Dt_Lancamento >= @Dt_Start and'#13#10'  S.Dt_Lancamento  < @Dt_End'#13#10#13#10'group by'#13#10'  S.Cd_CFOP, C.Sg_Estado'#13#10#13#10'-------------------- Saidas - Table Or'#231'amento/Vendas'#13#10'insert into ##TmpLvApuracao'#13#10'select'#13#10'  ''''2'''' as Fl_Tipo, O.Cd_CFOP, C.Sg_Estado,'#13#10'  sum( OT.Vl_Orcamento ) as Vl_Contabil, '#13#10'  sum( O.Vl_BaseICMS ) as Vl_BaseCalculo, '#13#10'  sum( O.Vl_ICMS ) as Vl_Imposto, '#13#10'  sum( O.Vl_STB ) as Vl_Isento'#13#10'  '#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = Et.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = @Cd_Filial and'#13#10'  OT.St_Orcamento = ''''9'''' and'#13#10'  OT.Dt_Fatura   >= @Dt_Start and'#13#10'  OT.Dt_Fatura    < @Dt_End'#13#10'  '#13#10'group by'#13#10'  O.Cd_CFOP, C.Sg_Estado'#13#10#13#10'-------------------- Gera a table com os dados finais'#13#10'select'#13#10'  Fl_Tipo, Cd_CFOP, '#13#10'  sum( Vl_Contabil ) as Vl_Contabil, '#13#10'  sum( Vl_BaseCalculo ) as Vl_BaseCalculo, '#13#10'  sum( Vl_Imposto ) as Vl_Imposto, '#13#10'  sum( Vl_Isento ) as Vl_Isento'#13#10'  '#13#10'from'#13#10'  ##TmpLvApuracao'#13#10#13#10'group by'#13#10'  Fl_Tipo, Cd_CFOP'#13#10#13#10'order by'#13#10'  Fl_Tipo, Cd_CFOP'
    FieldDefs = <
      item
        Name = 'Fl_Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Cd_CFOP'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'Vl_Contabil'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 38
        Size = 2
      end
      item
        Name = 'Vl_BaseCalculo'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 38
        Size = 2
      end
      item
        Name = 'Vl_Imposto'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 38
        Size = 2
      end
      item
        Name = 'Vl_Isento'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 38
        Size = 2
      end>
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
    StoreDefs = True
    Left = 57
    Top = 90
    object ADODsLivroFl_Tipo: TStringField
      FieldName = 'Fl_Tipo'
      Size = 1
    end
    object ADODsLivroCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsLivroVl_Contabil: TBCDField
      FieldName = 'Vl_Contabil'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsLivroVl_BaseCalculo: TBCDField
      FieldName = 'Vl_BaseCalculo'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsLivroVl_Imposto: TBCDField
      FieldName = 'Vl_Imposto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsLivroVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object DsLivro: TDataSource
    DataSet = ADODsLivro
    Left = 26
    Top = 90
  end
  object ADODsTotais: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  sum( Vl_Contabil ) as Vl_Contabil,'#13#10'  sum( Vl_BaseCalculo ) as Vl_BaseCalculo,'#13#10'  sum( Vl_Imposto ) as Vl_Imposto,'#13#10'  sum( Vl_Isento ) as Vl_Isento'#13#10#13#10'from'#13#10'  ##TmpLvApuracao'#13#10#13#10'where'#13#10'  Fl_Tipo   = :Fl_Tipo and'#13#10'  Sg_Estado = :Sg_Estado'
    Parameters = <
      item
        Name = 'Fl_Tipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Sg_Estado'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-------------------- Totais DENTRO do Estado'
      'select'
      '  sum( Vl_Contabil ) as Vl_Contabil,'
      '  sum( Vl_BaseCalculo ) as Vl_BaseCalculo,'
      '  sum( Vl_Imposto ) as Vl_Imposto,'
      '  sum( Vl_Isento ) as Vl_Isento'
      ''
      'from'
      '  ##TmpLvApuracao'
      ''
      'where'
      '  Fl_Tipo   = :Fl_Tipo and'
      '  Sg_Estado = :Sg_Estado'
    )
    SQLOther1.Strings = (
      '-------------------- Totais FORA do Estado'
      'select'
      '  sum( Vl_Contabil ) as Vl_Contabil,'
      '  sum( Vl_BaseCalculo ) as Vl_BaseCalculo,'
      '  sum( Vl_Imposto ) as Vl_Imposto,'
      '  sum( Vl_Isento ) as Vl_Isento'
      ''
      'from'
      '  ##TmpLvApuracao'
      ''
      'where'
      '  Fl_Tipo   = :Fl_Tipo and'
      '  Sg_Estado <> :Sg_Estado'
    )
    SQLOther2.Strings = (
      '-------------------- Total GERAL'
      'select'
      '  sum( Vl_Contabil ) as Vl_Contabil,'
      '  sum( Vl_BaseCalculo ) as Vl_BaseCalculo,'
      '  sum( Vl_Imposto ) as Vl_Imposto,'
      '  sum( Vl_Isento ) as Vl_Isento'
      ''
      'from'
      '  ##TmpLvApuracao'
      ''
      'where'
      '  Fl_Tipo   = :Fl_Tipo'
    )
    Left = 88
    Top = 91
    object ADODsTotaisVl_Contabil: TBCDField
      FieldName = 'Vl_Contabil'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsTotaisVl_BaseCalculo: TBCDField
      FieldName = 'Vl_BaseCalculo'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsTotaisVl_Imposto: TBCDField
      FieldName = 'Vl_Imposto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsTotaisVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
end
