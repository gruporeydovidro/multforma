object FrmComissao_Faixa: TFrmComissao_Faixa
  Left = 468
  Top = 421
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Faixa de Comiss'#227'o'
  ClientHeight = 217
  ClientWidth = 472
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
    Height = 217
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 451
    Height = 217
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 185
      Width = 443
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 365
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object Label4: TLabel
      Left = 94
      Top = 89
      Width = 74
      Height = 13
      Caption = 'Menor ou Igual:'
    end
    object Label5: TLabel
      Left = 16
      Top = 145
      Width = 53
      Height = 13
      Caption = 'Para Cada:'
    end
    object Label6: TLabel
      Left = 76
      Top = 145
      Width = 107
      Height = 13
      Caption = 'Perde-se da comiss'#227'o:'
    end
    object BvlSeparator_2: TBevel
      Left = 6
      Top = 131
      Width = 443
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 10
      Top = 72
      Width = 201
      Height = 13
      Caption = 'Faixa Quando Valor do Produto for:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 18
      Top = 89
      Width = 69
      Height = 13
      Caption = 'Maior ou igual:'
    end
    object BvlSeparator_1: TBevel
      Left = 5
      Top = 70
      Width = 443
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 11
      Top = 132
      Width = 118
      Height = 13
      Caption = 'Perda por Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 449
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 9
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 449
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 449
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 277
      Top = 190
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 364
      Top = 190
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Faixa: TLabeledEdit
      Left = 52
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o da Faixa:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_Faixa: TCurrencyEdit
      Left = 7
      Top = 45
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 365
      Top = 45
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#0.00#'
      TabOrder = 2
    end
    object EdtVl_Inicial: TCurrencyEdit
      Left = 18
      Top = 104
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00#'
      TabOrder = 3
    end
    object EdtVl_Final: TCurrencyEdit
      Left = 103
      Top = 104
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00#'
      TabOrder = 4
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 16
      Top = 160
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#0.00#'
      TabOrder = 5
    end
    object EdtPr_Perda: TCurrencyEdit
      Left = 76
      Top = 160
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#0.00#'
      TabOrder = 6
    end
    object SctReport: TSctReport
      Left = 331
      Top = 135
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
      MTop = 135
      MLeft = 331
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
        BorderType = btNone
        Description = 'Faixas de Comiss'#227'o'
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
          DataSource = FrmComissao_Faixa_Find.DsFind
        end
        object adodsreportCd_FaixaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Faixa'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_FaixaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Faixa'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportPr_DescontoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Desconto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportPr_PerdaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Perda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfCd_Faixa: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportCd_FaixaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportPr_ComissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Comissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_InicialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Inicial'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_FinalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Final'
          DataSource = DsReport
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
            Caption = 'Faixas de Comiss'#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
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
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 126
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 1
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_FaixaVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 44
            Top = -1
            Width = 303
            Height = 17
            Variable = adodsreportDs_FaixaVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 336
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportPr_ComissaoVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 421
            Top = 1
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_InicialVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 3
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 498
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_FinalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 3
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 579
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportPr_DescontoVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 637
            Top = 1
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportPr_PerdaVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 3
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 159
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 698
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
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
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
          Top = 194
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
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
            TotalVariable = TotalOfCd_Faixa
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
          Width = 748
          Height = 37
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctShape2: TSctShape
            Left = 575
            Top = 19
            Width = 123
            Height = 19
            Brush.Color = 16316664
          end
          object SctShape1: TSctShape
            Left = 421
            Top = 19
            Width = 155
            Height = 19
            Brush.Color = 16316664
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 20
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 43
            Top = 20
            Width = 188
            Height = 17
            Caption = 'Descri'#231#227'o da Faixa'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 336
            Top = 20
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comiss'#227'o (%)'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 466
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Faixa'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 421
            Top = 20
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Maior ou Igual'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 498
            Top = 20
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Menor ou Igual'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 579
            Top = 20
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desconto'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 637
            Top = 20
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Perda'
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 30
            Width = 698
            Height = 7
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 598
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Perda'
          end
        end
      end
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 336
    Top = 5
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, '#13#10'  Pr_Perda'#13#10#13#10'from'#13#10'  Comissao_Faixa'#13#10#13#10'where'#13#10'  Cd_Faixa = :Cd_Faixa'
    Parameters = <
      item
        Name = 'Cd_Faixa'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 35
    Top = 184
    object ADODsDadosCd_Faixa: TSmallintField
      FieldName = 'Cd_Faixa'
    end
    object ADODsDadosDs_Faixa: TStringField
      FieldName = 'Ds_Faixa'
      Size = 50
    end
    object ADODsDadosPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 9
      Size = 3
    end
    object ADODsDadosPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsDadosPr_Perda: TBCDField
      FieldName = 'Pr_Perda'
      Precision = 9
      Size = 3
    end
    object ADODsDadosVl_Inicial: TBCDField
      FieldName = 'Vl_Inicial'
      Precision = 12
      Size = 3
    end
    object ADODsDadosVl_Final: TBCDField
      FieldName = 'Vl_Final'
      Precision = 12
      Size = 3
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Comissao_Faixa( Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial,'
      '  Vl_Final, Pr_Desconto, Pr_Perda )'
      'values( :Cd_Faixa, :Ds_Faixa, :Pr_Comissao, :Vl_Inicial, :Vl_Final,'
      '  :Pr_Desconto, :Pr_Perda )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Comissao_Faixa'
      ''
      'set'
      ' Ds_Faixa    = :Ds_Faixa,'
      ' Pr_Comissao = :Pr_Comissao,'
      ' Vl_Inicial  = :Vl_Inicial,'
      ' Vl_Final    = :Vl_Final,'
      ' Pr_Desconto = :Pr_Desconto,'
      ' Pr_Perda    = :Pr_Perda'
      ''
      'where'
      '  Cd_Faixa = :Cd_Faixa'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Comissao_Faixa'
      ''
      'where'
      '  Cd_Faixa = :Cd_Faixa'
    )
    Left = 66
    Top = 184
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 125
    Top = 184
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, '#13#10'  Pr_Perda'#13#10#13#10'from'#13#10'  Comissao_Faixa'#13#10#13#10'order by'#13#10'  Cd_Faixa'
    Parameters = <>
    Left = 155
    Top = 184
    object ADODsReportCd_Faixa: TSmallintField
      FieldName = 'Cd_Faixa'
    end
    object ADODsReportDs_Faixa: TStringField
      FieldName = 'Ds_Faixa'
      Size = 50
    end
    object ADODsReportPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 9
      Size = 3
    end
    object ADODsReportPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsReportPr_Perda: TBCDField
      FieldName = 'Pr_Perda'
      Precision = 9
      Size = 3
    end
    object ADODsReportVl_Inicial: TBCDField
      FieldName = 'Vl_Inicial'
      Precision = 12
      Size = 3
    end
    object ADODsReportVl_Final: TBCDField
      FieldName = 'Vl_Final'
      Precision = 12
      Size = 3
    end
  end
end
