object FrmResumo_Financeiro: TFrmResumo_Financeiro
  Left = 386
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Resumo Financeiro'
  ClientHeight = 300
  ClientWidth = 694
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
    Height = 300
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 673
    Height = 300
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 270
      Width = 665
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
    object LblMultforma: TLabel
      Left = 5
      Top = 74
      Width = 523
      Height = 186
      AutoSize = False
      Caption = 'Recebido: R$ 0,00'#13#10'Pago/Pagar: R$ 0,00'#13#10'_________________'#13#10'Lucro: R$ 0,00'#13#10'Reserva de Lucro: R$ 0,00'#13#10#13#10'WB R$ 0,00'#13#10'AR R$ 0,00'#13#10'_________________'#13#10'Dif R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object BitBtnReport: TBitBtn
      Left = 500
      Top = 273
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 586
      Top = 273
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
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
    object SctRepResumo: TSctReport
      Left = 156
      Top = 44
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
      TabOrder = 4
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 900
      SHeight = 676
      MTop = 44
      MLeft = 156
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 145
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
        Description = 'Resumo do Faturamento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsResumo
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = -145
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = -145
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = -145
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = -145
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
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object TotalOfvl_venda: TSctTotalvar
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_comissao: TSctTotalvar
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfNr_Atendimento: TSctTotalvar
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsResumo
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = -145
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsCCorrente
        end
        object adodsccorrenteVl_LimiteVar: TSctDBVar
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          DataField = 'Vl_Limite'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsccorrenteVl_SaldoAnteriorVar: TSctDBVar
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          DataField = 'Vl_SaldoAnterior'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsccorrenteVl_CreditoVar: TSctDBVar
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          DataField = 'Vl_Credito'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsccorrenteVl_DebitoVar: TSctDBVar
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          DataField = 'Vl_Debito'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataLevel: TSctLevel
          Left = 0
          Top = -100
          Width = 0
          Height = 0
        end
        object DataHeaderLevel: TSctLevel
          Left = 0
          Top = -100
          Width = 0
          Height = 0
          IsHeader = True
        end
        object adodsccorrenteDp_ContaVar: TSctDBVar
          Left = 0
          Top = -9
          Width = 0
          Height = 0
          DataField = 'Dp_Conta'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsccorrenteDp_BancoVar: TSctDBVar
          Left = 0
          Top = -9
          Width = 0
          Height = 0
          DataField = 'Dp_Banco'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsccorrenteVl_SaldoVar: TSctDBVar
          Left = 0
          Top = -9
          Width = 0
          Height = 0
          DataField = 'Vl_Saldo'
          DataSource = DsCCorrente
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -145
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = -125
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Resumo Financeiro'
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
            Top = 32
            Width = 698
            Height = 7
          end
          object SctPeriodo: TSctvarlabel
            Left = 2
            Top = 20
            Width = 339
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
          Top = -71
          Width = 748
          Height = 468
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel5: TSctvarlabel
            Left = 4
            Top = 6
            Width = 162
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Total Faturado'
          end
          object SctTxtVista: TSctvarlabel
            Left = 25
            Top = 35
            Width = 156
            Height = 17
            Caption = #192' Vista'
          end
          object SctVarFaturaVista: TSctvarlabel
            Left = 200
            Top = 35
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctTxtPrazo: TSctvarlabel
            Left = 25
            Top = 52
            Width = 156
            Height = 17
            Caption = #192' Prazo'
          end
          object SctVarFaturaPrazo: TSctvarlabel
            Left = 200
            Top = 52
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctLine2: TSctLine
            Left = 25
            Top = 69
            Width = 254
            Height = 5
            AlignVertical = laCenterVert
          end
          object SctTxtTotalFaturado: TSctvarlabel
            Left = 25
            Top = 74
            Width = 156
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
          object SctVarFaturaTotal: TSctvarlabel
            Left = 200
            Top = 74
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 4
            Top = 96
            Width = 212
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Contas '#224' Receber'
          end
          object SctTxtReceber: TSctvarlabel
            Left = 25
            Top = 125
            Width = 156
            Height = 17
            Caption = #192' Receber'
          end
          object SctVarCRReceber: TSctvarlabel
            Left = 200
            Top = 125
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctTxtRecebido: TSctvarlabel
            Left = 25
            Top = 142
            Width = 156
            Height = 17
            Caption = 'Recebido'
          end
          object SctVarCRRecebido: TSctvarlabel
            Left = 200
            Top = 142
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctLine3: TSctLine
            Left = 25
            Top = 159
            Width = 254
            Height = 5
            AlignVertical = laCenterVert
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 25
            Top = 164
            Width = 156
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
          object SctVarCRTotal: TSctvarlabel
            Left = 200
            Top = 164
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 4
            Top = 186
            Width = 212
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Contas '#224' Pagar'
          end
          object SctTxtPagar: TSctvarlabel
            Left = 25
            Top = 215
            Width = 156
            Height = 17
            Caption = #192' Pagar'
          end
          object SctVarCPPagar: TSctvarlabel
            Left = 200
            Top = 215
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctTxtPago: TSctvarlabel
            Left = 25
            Top = 232
            Width = 156
            Height = 17
            Caption = 'Pago'
          end
          object SctVarCPPago: TSctvarlabel
            Left = 200
            Top = 232
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctLine5: TSctLine
            Left = 25
            Top = 249
            Width = 254
            Height = 5
            AlignVertical = laCenterVert
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 25
            Top = 254
            Width = 156
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
          object SctVarCPTotal: TSctvarlabel
            Left = 200
            Top = 254
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 4
            Top = 400
            Width = 212
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Caixa'
          end
          object SctTxtCaixaSI: TSctvarlabel
            Left = 25
            Top = 429
            Width = 156
            Height = 17
            Caption = 'Saldo em dd/mm/yyyy'
          end
          object SctVarCaixaSI: TSctvarlabel
            Left = 200
            Top = 429
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctTxtCaixaSA: TSctvarlabel
            Left = 25
            Top = 446
            Width = 156
            Height = 17
            Caption = 'Saldo em dd/mm/yyyy'
          end
          object SctVarCaixaSA: TSctvarlabel
            Left = 200
            Top = 446
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 6
            Top = 276
            Width = 212
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Cheques'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 27
            Top = 305
            Width = 156
            Height = 17
            Caption = 'Em Aberto'
          end
          object SctVarAberto: TSctvarlabel
            Left = 202
            Top = 305
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 27
            Top = 322
            Width = 156
            Height = 17
            Caption = 'Devolvido'
          end
          object SctVarDevolvido: TSctvarlabel
            Left = 202
            Top = 322
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctLine6: TSctLine
            Left = 27
            Top = 372
            Width = 254
            Height = 5
            AlignVertical = laCenterVert
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 27
            Top = 377
            Width = 156
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
          object SctVarCheque: TSctvarlabel
            Left = 202
            Top = 377
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 27
            Top = 337
            Width = 156
            Height = 17
            Caption = 'Trocado'
          end
          object SctVarTrocado: TSctvarlabel
            Left = 202
            Top = 337
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 27
            Top = 354
            Width = 156
            Height = 17
            Caption = 'Depositado'
          end
          object SctVarDepositado: TSctvarlabel
            Left = 202
            Top = 354
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 512
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
          Top = 547
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
        end
        object BdCCorrente: TSctSubDataBand
          Left = 0
          Top = 477
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'BdCCorrente'
          Updatelevel = DataLevel
          Stretch = True
          OnBeforePrint = BdCCorrenteBeforePrint
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsCCorrente
          object Sctvarlabel25: TSctvarlabel
            Left = 9
            Top = 2
            Width = 212
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsccorrenteDp_ContaVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 631
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsccorrenteVl_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 563
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsccorrenteVl_DebitoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 495
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsccorrenteVl_CreditoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 412
            Top = 2
            Width = 81
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsccorrenteVl_SaldoAnteriorVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 224
            Top = 2
            Width = 182
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsccorrenteDp_BancoVar
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 412
          Width = 748
          Height = 50
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = BdCCorrente
          object Sctvarlabel6: TSctvarlabel
            Left = 4
            Top = 3
            Width = 179
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Contas Corrente'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 9
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Descri'#231#227'o'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 631
            Top = 32
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 563
            Top = 32
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'D'#233'bito'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 495
            Top = 32
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Cr'#233'dito'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 412
            Top = 32
            Width = 81
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo Anterior'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 224
            Top = 32
            Width = 65
            Height = 17
            Caption = 'Banco'
          end
        end
      end
    end
  end
  object DsResumo: TDataSource
    DataSet = ADODsResumo
    Left = 55
    Top = 53
  end
  object ADODsResumo: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '/* Total de Or'#231'amentos */'
      'select'
      '  Fl_FormaPagto, sum( Vl_Orcamento )as Vl_Faturado,'
      '  count( * ) as Nr_Orcamentos,'
      '  count( distinct Cd_Emitente ) as Nr_Emitentes'
      ''
      'from'
      '  Orcamento_Total'
      ''
      'where'
      '  /* Cd_Filial */'
      '  St_Orcamento = ''''9'''' and'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      ''
      'group by'
      '  Fl_FormaPagto'
      ''
      'union'
      ''
      '/* Total de Balcao */'
      'select'
      '  Fl_FormaPagto,'
      '  sum( Vl_Pedido -'
      '    case                               /* Desconto */'
      '      when Coalesce( Pr_Desconto, 0.0 ) <> 0.0 then Vl_Pedido / 100.0 * Vl_Pedido'
      '      when Coalesce( Vl_Desconto, 0.0 ) <> 0.0 then Vl_Desconto'
      '      else 0.0'
      '    end +'
      '    case                               /* Custo Financeiro */'
      '      when Coalesce( Pr_Custo, 0.0 ) <> 0.0 then Vl_Pedido / 100.0 * Pr_Custo'
      '      when Coalesce( Vl_Custo, 0.0 ) <> 0.0 then Vl_Custo'
      '      else 0.0'
      '    end ) as Vl_Faturado,'
      ''
      '  count( * ) as Nr_Orcamentos,'
      '  count( distinct Cd_Emitente ) as Nr_Emitentes'
      ''
      'from'
      '  Balcao'
      ''
      'where'
      '  /* Cd_Filial */'
      '  St_Balcao  = ''''9'''' and'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      ''
      'group by'
      '  Fl_FormaPagto'
    )
    SQLOther1.Strings = (
      '-- Sando Anterior do Caixa'
      'select'
      '  sum('
      '    case'
      '      when Tp_Lancamento in ( ''''1'''', ''''4'''' ) then Vl_Lancamento'
      '      else -1 * Vl_Lancamento'
      '    end ) as Vl_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  /* Dt_Lancamento */'
    )
    SQLOther2.Strings = (
      '/* Contas Pagas */'
      'select'
      '  sum( PH.Vl_Lancamento ) as Vl_Pago,'
      '  count( distinct Convert( VarChar( 10 ), PH.Nr_Pagar ) + Convert( VarChar( 3 ), PH.Nr_Parcela ) ) as Nr_Pago'
      ''
      'from'
      '  Pagar_Historico PH'
      ''
      'inner join'
      '  Pagar P'
      'on'
      '  P.Cd_Filial  = PH.Cd_Filial and'
      '  P.Nr_Pagar   = PH.Nr_Pagar and'
      '  P.St_Pagar  >= ''''2'''' and'
      '  P.St_Pagar  <= ''''3'''
      ''
      'where'
      '  PH.Cd_Filial      = :Cd_Filial and'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      '  PH.Tp_Lancamento >= ''''2'''' and'
      '  PH.Tp_Lancamento <= ''''5'''
    )
    SQLOther3.Strings = (
      '/* Contas a Pagar */'
      'declare'
      '  @vVl_Pago numeric( 12, 3 ),'
      '  @vVl_Pagar numeric( 12, 3 ),'
      '  @vNr_Pagar Integer'
      ''
      '  select'
      '    @vVl_Pagar = sum( A.Vl_Parcela ),'
      '    @vNr_Pagar = count( distinct Convert( VarChar( 7 ), A.Nr_Pagar ) + Convert( VarChar( 3 ), A.Nr_Parcela ) )'
      '    '
      '  from'
      '    Pagar_Parcela A'
      ''
      '  inner join'
      '    Pagar B'
      '  on'
      '    B.Cd_Filial  = A.Cd_Filial and'
      '    B.Nr_Pagar   = A.Nr_Pagar and'
      '    B.St_Pagar  <= ''''2'''
      ''
      '  where'
      '    /* Cd_Filial */'
      '    /* Dt_Start */'
      '    /* Dt_End */'
      ''
      '  select'
      '    @vVl_Pago = sum( C.Vl_Lancamento )'
      ''
      '  from'
      '    Pagar_Parcela A'
      ''
      '  inner join'
      '    Pagar B'
      '  on'
      '    B.Cd_Filial  = A.Cd_Filial and'
      '    B.Nr_Pagar   = A.Nr_Pagar and'
      '    B.St_Pagar   = ''''2'''
      ''
      '  inner join'
      '    Pagar_Historico C'
      '  on'
      '    C.Cd_Filial     = A.Cd_Filial and'
      '    C.Nr_Pagar      = A.Nr_Pagar and'
      '    C.Nr_Parcela    = A.Nr_Parcela and'
      '    C.Tp_Lancamento >= ''''2'''' and'
      '    C.Tp_Lancamento <= ''''5'''
      ''
      '  where'
      '    /* Cd_Filial */'
      '    /* Dt_Start */'
      '    /* Dt_End */'
      ''
      'select'
      '  Coalesce( @vVl_Pagar, 0.0 ) - Coalesce( @vVl_Pago, 0.0 ) as Vl_Pagar,'
      '  @vNr_Pagar as Nr_Pagar'
    )
    SQLOther4.Strings = (
      '/* Contas Recebidas */'
      'select'
      '  sum( RH.Vl_Lancamento ) as Vl_Recebido,'
      '  count( distinct Convert( VarChar( 7 ), RH.Nr_Receber ) + Convert( VarChar( 3 ), RH.Nr_Parcela ) ) as Nr_Recebido'
      ''
      'from'
      '  Receber_Historico RH'
      ''
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RH.Cd_Filial and'
      '  R.Nr_Receber   = RH.Nr_Receber and'
      '  R.St_Receber  >= ''''2'''' and'
      '  R.St_Receber  <= ''''3'''
      ''
      'where'
      '  RH.Cd_Filial      = :Cd_Filial and'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      '  RH.Tp_Lancamento >= ''''2'''' and'
      '  RH.Tp_Lancamento <= ''''5'''
    )
    SQLOther5.Strings = (
      '/* Contas a Receber */'
      'declare'
      '  @vVl_Recebido numeric( 12, 3 ),'
      '  @vVl_Receber numeric( 12, 3 ),'
      '  @vNr_Receber Int'
      ''
      '  select'
      '    @vVl_Receber = sum( A.Vl_Parcela ),'
      '    @vNr_Receber = count( distinct Convert( VarChar( 7 ), A.Nr_Receber ) + Convert( VarChar( 3 ), A.Nr_Parcela ) )'
      ''
      '  from'
      '    Receber_Parcela A'
      ''
      '  inner join'
      '    Receber B'
      '  on'
      '    B.Cd_Filial    = A.Cd_Filial and'
      '    B.Nr_Receber   = A.Nr_Receber and'
      '    B.St_Receber  <= ''''2'''
      ''
      '  where'
      '    /* Cd_Filial */'
      '    /* Dt_Start */'
      '    /* Dt_End */'
      ''
      ''
      'set @vVl_Recebido ='
      '  ('
      '  select'
      '    sum( C.Vl_Lancamento )'
      ''
      '  from'
      '    Receber_Parcela A'
      ''
      '  inner join'
      '    Receber B'
      '  on'
      '    B.Cd_Filial  = A.Cd_Filial and'
      '    B.Nr_Receber   = A.Nr_Receber and'
      '    B.St_Receber   = ''''2'''
      ''
      '  inner join'
      '    Receber_Historico C'
      '  on'
      '    C.Cd_Filial     = A.Cd_Filial and'
      '    C.Nr_Receber    = A.Nr_Receber and'
      '    C.Nr_Parcela    = A.Nr_Parcela and'
      '    C.Tp_Lancamento >= ''''2'''' and'
      '    C.Tp_Lancamento <= ''''5'''
      ''
      '  where'
      '    /* Cd_Filial */'
      '    /* Dt_Start */'
      '    /* Dt_End */'
      '  )'
      ''
      'select'
      '  Coalesce( @vVl_Receber, 0.0 ) - Coalesce( @vVl_Recebido, 0.0 ) as Vl_Receber,'
      '  @vNr_Receber as Nr_Receber'
    )
    SQLOther6.Strings = (
      '-------------------- Cheques - Vencido (n'#227'o depositado)'
      'select'
      '  Sum( Vl_Cheque ) as Vl_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Fl_Cheque      = ''''1'''' and'
      '  Dt_Vencimento >= :Dt_Start and'
      '  Dt_Vencimento  < :Dt_End'
    )
    SQLOther7.Strings = (
      '-------------------- Cheques devolvidos'
      'select'
      '  sum( C.Vl_Cheque ) as Vl_Cheque'
      ''
      'from'
      '  Cheque_Deposito CD'
      ''
      'inner join'
      '  Cheque_Bordero CB'
      'on'
      '  CB.Cd_Filial  = CD.Cd_Filial and'
      '  CB.Nr_Bordero = CD.Nr_Bordero and'
      '  CB.Fl_Bordero = ''''9'''
      ''
      'inner join'
      '  Cheque C'
      'on'
      '  C.Cd_Filial = CD.Cd_Filial and'
      '  C.Id_Cheque = CD.Id_Cheque'
      ''
      'where'
      '  CD.Cd_Filial     = :Cd_Filial and'
      '  CD.Dt_Devolucao >= :Dt_Start and'
      '  CD.Dt_Devolucao  < :Dt_End and'
      ''
      '  -- N'#227'o foi reapresentado'
      '  not exists('
      '    select'
      '      CDR.Cd_Filial'
      ''
      '    from'
      '      Cheque_Deposito CDR'
      ''
      '    inner join'
      '      Cheque_Bordero CBR'
      '    on'
      '      CBR.Cd_Filial  = CDR.Cd_Filial and'
      '      CBR.Nr_Bordero = CDR.Nr_Bordero and'
      '      CBR.Fl_Bordero = ''''9'''' and'
      '      CBR.Dt_Bordero > CB.Dt_Bordero'
      ''
      '    where'
      '      CDR.Cd_Filial = CD.Cd_Filial and'
      '      CDR.Id_Cheque = CD.Id_Cheque'
      '    )'
    )
    SQLOther8.Strings = (
      '-------------------- Cheques Depositados'
      'select'
      '  sum( C.Vl_Cheque ) as Vl_Cheque'
      ''
      'from'
      '  Cheque_Bordero CB'
      ''
      'inner join'
      '  Cheque_Deposito CD'
      'on'
      '  CD.Cd_Filial  = CB.Cd_Filial and'
      '  CD.Nr_Bordero = CB.Nr_Bordero and'
      '  CD.Dt_Devolucao is null'
      ''
      'inner join'
      '  Cheque C'
      'on'
      '  C.Cd_Filial = CD.Cd_Filial and'
      '  C.Id_Cheque = CD.Id_Cheque'
      ''
      'where'
      '  CB.Cd_Filial     = :Cd_Filial and'
      '  CB.Fl_Bordero    = ''''9'''' and                   -- Fechado'
      '  CB.Tp_Bordero    = :Tp_Bordero and           -- 1-Deposito // 2-Troca'
      '  CB.Dt_Deposito  >= :Dt_Start and'
      '  CB.Dt_Deposito   < :Dt_End'
    )
    SQLOther9.Strings = (
      ''
    )
    Left = 86
    Top = 53
  end
  object ADODsCCorrente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsCCorrenteCalcFields
    CommandText = 'declare'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Dt_Start = :Dt_Start,'#13#10'  @Dt_End   = :Dt_End'#13#10#13#10'select'#13#10'  Dp_Conta = Convert( VarChar( 10 ),  CC.Id_Conta ) +  '''' - '''' + CC.Ds_Conta, '#13#10'  Dp_Banco = CC.Cd_Banco + '''' - '''' + B.Sg_Banco + ''''  Ag: '''' + CC.Cd_Agencia, ''''  C/C: '''',   CC.Nr_Conta,'#13#10'  CC.Vl_Limite,'#13#10#13#10'  Vl_SaldoAnterior ='#13#10'    ('#13#10'    select '#13#10'      sum('#13#10'        case'#13#10'          when CCL.Tp_Lancamento < ''''4'''' then CCL.Vl_Lancamento'#13#10'          else -1.0 * CCL.Vl_Lancamento'#13#10'        end )'#13#10'    from'#13#10'      CCorrente_Lancto CCL'#13#10#13#10'    where'#13#10'      CCL.Id_Conta = CC.Id_Conta and'#13#10'      CCL.Dt_Lancamento < @Dt_Start'#13#10'    ),'#13#10#13#10'  Vl_Credito ='#13#10'    ('#13#10'    select '#13#10'      sum( case when CCL.Tp_Lancamento < ''''4'''' then CCL.Vl_Lancamento end )'#13#10#13#10'    from'#13#10'      CCorrente_Lancto CCL'#13#10#13#10'    where'#13#10'      CCL.Id_Conta = CC.Id_Conta and'#13#10'      CCL.Dt_Lancamento >= @Dt_Start and'#13#10#9'  CCL.Dt_Lancamento  < @Dt_End'#13#10'    ),'#13#10#13#10'  Vl_Debito ='#13#10'    ('#13#10'    select '#13#10'      sum( case when CCL.Tp_Lancamento >= ''''4'''' then CCL.Vl_Lancamento end )'#13#10#13#10'    from'#13#10'      CCorrente_Lancto CCL'#13#10#13#10'    where'#13#10'      CCL.Id_Conta = CC.Id_Conta and'#13#10'      CCL.Dt_Lancamento >= @Dt_Start and'#13#10#9'  CCL.Dt_Lancamento  < @Dt_End'#13#10'    )'#13#10#13#10'from'#13#10'  CCorrente CC'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = CC.Cd_Banco'#13#10#13#10'where'#13#10'  CC.Fl_Resumo = ''''1'''
    Parameters = <
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
    Left = 288
    Top = 192
    object ADODsCCorrenteDp_Conta: TStringField
      FieldName = 'Dp_Conta'
      ReadOnly = True
      Size = 59
    end
    object ADODsCCorrenteDp_Banco: TStringField
      FieldName = 'Dp_Banco'
      ReadOnly = True
      Size = 61
    end
    object ADODsCCorrenteVl_Limite: TBCDField
      FieldName = 'Vl_Limite'
      Precision = 12
      Size = 2
    end
    object ADODsCCorrenteVl_SaldoAnterior: TBCDField
      FieldName = 'Vl_SaldoAnterior'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsCCorrenteVl_Credito: TBCDField
      FieldName = 'Vl_Credito'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsCCorrenteVl_Debito: TBCDField
      FieldName = 'Vl_Debito'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsCCorrenteVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
  end
  object DsCCorrente: TDataSource
    DataSet = ADODsCCorrente
    Left = 248
    Top = 192
  end
end
