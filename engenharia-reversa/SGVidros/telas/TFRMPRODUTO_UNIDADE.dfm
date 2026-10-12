object FrmProduto_Unidade: TFrmProduto_Unidade
  Left = 305
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Unidades do Produto'
  ClientHeight = 517
  ClientWidth = 746
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Height = 517
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 725
    Height = 517
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 502
      Top = 167
      Width = 218
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 103
      Height = 13
      Caption = 'Unidades do Produto:'
    end
    object Label2: TLabel
      Left = 502
      Top = 30
      Width = 96
      Height = 13
      Caption = 'Fator de Convers'#227'o:'
    end
    object Label3: TLabel
      Left = 600
      Top = 30
      Width = 84
      Height = 13
      Caption = #205'ndice Financeiro:'
    end
    object Label4: TLabel
      Left = 5
      Top = 285
      Width = 116
      Height = 13
      Caption = 'Fator de Convers'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 5
      Top = 300
      Width = 715
      Height = 107
      AutoSize = False
      Caption = '1'#186' - Todos os produtos obrigatoriamente devem possuir o fator de convers'#227'o 1 (um) para unidade de estoque;'#13#10#13#10'2'#186' - Utilize o fator de convers'#227'o da seguinte forma: produto que '#233' vendido em Pacote e em Caixa cada Caixa possui 20 pacotes ficariam cadastradas as seguintes unidades:'#13#10'Unidade: PT - Pacote '#9#9'Fator de Convers'#227'o: 1.0'#13#10'Unidade: CX - Caixa'#9#9'Fator de Convers'#227'o: 20.0'#13#10#13#10'Ou seja: quando for vendido 1 Pacote (PT) ser'#225' baixado 1 item do estoque, quando vender 1 Caixa (CX) ser'#227'o baixados 20 itens do estoque.'
      WordWrap = True
    end
    object Label5: TLabel
      Left = 5
      Top = 406
      Width = 103
      Height = 13
      Caption = #205'ndice Financeiro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Top = 421
      Width = 715
      Height = 93
      AutoSize = False
      Caption = '1'#186' - Recomendamos que o '#205'ndice Financeiro da unidade de estoque seja 1.0'#13#10#13#10'2'#186' - O '#205'ndice financeiro serve como agente regulador do Pre'#231'o do Produto, considerando o exemplo acima, um produto quando vendido em Caixa (CX) com 20 unidades possui um desconto de 10% nesse caso o '#237'ndice ser'#225' de 0.90. Veja o exemplo:'#13#10#13#10'Pre'#231'o: R$ 5,00     Fator de Convers'#227'o: 20.0     '#205'ndice: 0.90'#13#10'Pre'#231'o da Caixa = Pre'#231'o (R$ 5,00) x Fator de Convers'#227'o (20.0)  * '#205'ndice (0.90) = R$ 90,00'
      WordWrap = True
    end
    object Label8: TLabel
      Left = 502
      Top = 68
      Width = 80
      Height = 13
      Caption = 'Pre'#231'o de Venda:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 723
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 5
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 723
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 723
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
      Left = 551
      Top = 169
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 637
      Top = 169
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object DbGDados: TDBGrid
      Left = 5
      Top = 45
      Width = 492
      Height = 239
      DataSource = DsDados
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGDadosEnter
      OnExit = DbGDadosExit
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sg_unidade'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_unidade'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_fator'
          Title.Alignment = taRightJustify
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Indice'
          Title.Alignment = taRightJustify
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Venda'
          Title.Alignment = taRightJustify
          Width = 90
          Visible = True
        end>
    end
    object EdtNr_Fator: TCurrencyEdit
      Left = 502
      Top = 45
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.0####'
      TabOrder = 1
      OnChange = EdtNr_FatorChange
    end
    object EdtNr_Indice: TCurrencyEdit
      Left = 600
      Top = 45
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0###'
      TabOrder = 2
      OnChange = EdtNr_FatorChange
    end
    object SctReport: TSctReport
      Left = 159
      Top = 140
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
      TabOrder = 6
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 1
      SLeft = -21
      SWidth = 772
      SHeight = 581
      MTop = 140
      MLeft = 159
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
        Description = 'Unidades do Produto'
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
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmUnidade_Find.DsFind
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
          DataSource = DsDados
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto.DsReport
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
        object adodsreportSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Unidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_FatorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fator'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_IndiceVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Indice'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfNr_Indice: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportNr_IndiceVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Caption = 'Unidades do Produto'
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
          object SctTxtProduto: TSctvarlabel
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
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 0
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportSg_UnidadeVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 33
            Top = 0
            Width = 278
            Height = 17
            Variable = adodsreportDs_UnidadeVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 387
            Top = 0
            Width = 91
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_IndiceVar
            DataFormat.DisplayFormat = '#,##0.0###'
            DataFormat.Digits = 4
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 313
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_FatorVar
            DataFormat.DisplayFormat = '#,##0.0###'
            DataFormat.Digits = 4
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
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
          object SctTxtUsuario: TSctvarlabel
            Left = 400
            Top = 2
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 177
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 620
            Top = 1
            Width = 76
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfNr_Indice
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
            Left = 560
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
            Caption = 'Total'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Sigla'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 33
            Top = 0
            Width = 278
            Height = 17
            Caption = 'Unidade'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 313
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Fator'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 387
            Top = 0
            Width = 91
            Height = 17
            AlignHorizontal = laRight
            Caption = #205'ndice Financeiro'
          end
        end
      end
    end
    object EdtVl_Venda: TCurrencyEdit
      Left = 502
      Top = 83
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
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
    Left = 285
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
    BeforeScroll = ADODsDadosBeforeScroll
    AfterScroll = ADODsDadosAfterScroll
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  case'#13#10'    when PU.Sg_Unidade = :Sg_Estoque then ''''0'''#13#10'    when PU.Nr_Fator > 0 then ''''1'''#13#10'    else ''''2'''#13#10'  end as Nr_Ordem,'#13#10#13#10'  U.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator, PU.Nr_Indice'#13#10#13#10'from'#13#10'  Unidade U'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = :Cd_Produto and'#13#10'  PU.Sg_Unidade = U.Sg_Unidade'#13#10#13#10'order by'#13#10'  1, U.Sg_Unidade'
    Parameters = <
      item
        Name = 'Sg_Estoque'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 598
    Top = 388
    object ADODsDadossg_unidade: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 6
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosds_unidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 36
      FieldName = 'ds_unidade'
      Size = 30
    end
    object ADODsDadosnr_fator: TBCDField
      DisplayLabel = 'Convers'#227'o'
      DisplayWidth = 14
      FieldName = 'nr_fator'
      DisplayFormat = '#,##0.0####'
      EditFormat = '#,##0.0####'
      Precision = 18
      Size = 3
    end
    object ADODsDadosNr_Indice: TBCDField
      DisplayLabel = #205'ndice Financeiro'
      FieldName = 'Nr_Indice'
      DisplayFormat = '#,##0.0###'
      EditFormat = '#,##0.0###'
      Precision = 9
    end
    object ADODsDadosVl_Venda: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldKind = fkCalculated
      FieldName = 'Vl_Venda'
      DisplayFormat = '#,##0.00#'
      Calculated = True
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Produto_Unidade( Cd_Produto, Sg_Unidade, Nr_Fator, Nr_Indice )'
      'values( :Cd_Produto, :Sg_Unidade, :Nr_Fator, :Nr_Indice )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Produto_Unidade'
      ''
      'set'
      '  Nr_Fator   = :Nr_Fator,'
      '  Nr_Indice  = :Nr_Indice'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto and'
      '  Sg_Unidade = :Sg_Unidade'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Produto_Unidade'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto and  '
      '  Sg_Unidade = :Sg_Unidade'
    )
    Left = 626
    Top = 388
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 570
    Top = 388
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsDadosBeforeScroll
    AfterScroll = ADODsDadosAfterScroll
    CommandText = 'select'#13#10'  U.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator, PU.Nr_Indice'#13#10#13#10'from'#13#10'  Produto_Unidade PU'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PU.Sg_Unidade'#13#10#13#10'where'#13#10'  PU.Cd_Produto = :Cd_Produto '#13#10#13#10'order by'#13#10'  U.Sg_Unidade'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 686
    Top = 388
    object ADODsReportSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsReportDs_Unidade: TStringField
      FieldName = 'Ds_Unidade'
      Size = 30
    end
    object ADODsReportNr_Fator: TBCDField
      FieldName = 'Nr_Fator'
      Precision = 12
    end
    object ADODsReportNr_Indice: TBCDField
      FieldName = 'Nr_Indice'
      Precision = 9
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 658
    Top = 388
  end
end
