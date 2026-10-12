object FrmReceber_Suporte_Boleto: TFrmReceber_Suporte_Boleto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Boletos da Multforma'
  ClientHeight = 321
  ClientWidth = 837
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 321
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 816
    Height = 321
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 291
      Width = 807
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 97
      Height = 13
      Caption = 'Boletos Dispon'#237'veis:'
    end
    object ImgCEF: TImage
      Left = 140
      Top = 280
      Width = 157
      Height = 38
      Picture.Data = {binary 2664 bytes}
      Visible = False
    end
    object ImgBradesco: TImage
      Left = 303
      Top = 260
      Width = 199
      Height = 61
      Picture.Data = {binary 3360 bytes}
      Stretch = True
      Visible = False
    end
    object BitBtnCancel: TBitBtn
      Left = 728
      Top = 293
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGBoletos: TDBGrid
      Left = 5
      Top = 16
      Width = 802
      Height = 271
      DataSource = DsReport
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Receber'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_DoctoBanco'
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Digitavel'
          Title.Alignment = taCenter
          Width = 307
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Publicacao'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end>
    end
    object BitBtnReport: TBitBtn
      Left = 641
      Top = 293
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnOpen: TBitBtn
      Left = 2
      Top = 293
      Width = 85
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 4
      OnClick = BitBtnOpenClick
      Glyph.Data = {binary 1146 bytes}
    end
    object SctReport: TSctReport
      Left = 372
      Top = 189
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 3
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = -8
      SWidth = 889
      SHeight = 705
      MTop = 189
      MLeft = 372
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 61
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 297.0
        PageSetup.Width = 210.0
        PageSetup.Units = unitMiliMeters
        PageSetup.Destination = destPrinter
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 6.0
        PageSetup.RightMargin = 12.7
        PageSetup.TopMargin = 5.08
        PageSetup.BottomMargin = 0.0254
        BorderType = btNone
        Description = 'Boleto Banc'#225'rio'
        CloseDataSet = False
        DataRange = drSingleRecord
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DtlBdRecibo
        Foot = ReportFooterBand
        PageHead = PgHdEntMaster
        PageFoot = PageFooterBand
        DataSource = DsReport
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = -61
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = -61
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = -61
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = -61
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = -61
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = -48
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = -48
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -48
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object adodsreportNm_PortadorVar: TSctDBVar
          Left = 0
          Top = 489
          Width = 0
          Height = 0
          DataField = 'Nm_Portador'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportCd_BancoVar: TSctDBVar
          Left = 0
          Top = 489
          Width = 0
          Height = 0
          DataField = 'Cd_Banco'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_VencimentoVar: TSctDBVar
          Left = 0
          Top = 489
          Width = 0
          Height = 0
          DataField = 'Dt_Vencimento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_ParcelaVar: TSctDBVar
          Left = 0
          Top = 489
          Width = 0
          Height = 0
          DataField = 'Vl_Parcela'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_DoctoBancoVar: TSctDBVar
          Left = 0
          Top = 486
          Width = 0
          Height = 0
          DataField = 'Dp_DoctoBanco'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_ContaVar: TSctDBVar
          Left = 0
          Top = 486
          Width = 0
          Height = 0
          DataField = 'Dp_Conta'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 327
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_BarraVar: TSctDBVar
          Left = 0
          Top = -61
          Width = 0
          Height = 0
          DataField = 'Ds_Barra'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_DigitavelVar: TSctDBVar
          Left = 0
          Top = 765
          Width = 0
          Height = 0
          DataField = 'Ds_Digitavel'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_AsbaseVar: TSctDBVar
          Left = 0
          Top = 753
          Width = 0
          Height = 0
          DataField = 'Ds_Asbase'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_BoletoVar: TSctDBVar
          Left = 0
          Top = 497
          Width = 0
          Height = 0
          DataField = 'Ds_Boleto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_FaturaVar: TSctDBVar
          Left = 0
          Top = -61
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 502
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 502
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialnm_filialVar: TSctDBVar
          Left = 0
          Top = 59
          Width = 0
          Height = 0
          DataField = 'nm_filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_carteiraVar: TSctDBVar
          Left = 0
          Top = -61
          Width = 0
          Height = 0
          DataField = 'ds_carteira'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_Sacado_1Var: TSctDBVar
          Left = 0
          Top = 516
          Width = 0
          Height = 0
          DataField = 'Dp_Sacado_1'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_Sacado_2Var: TSctDBVar
          Left = 0
          Top = 516
          Width = 0
          Height = 0
          DataField = 'Dp_Sacado_2'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_Sacado_3Var: TSctDBVar
          Left = 0
          Top = 516
          Width = 0
          Height = 0
          DataField = 'Dp_Sacado_3'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_InstrucaoVar: TSctDBVar
          Left = 0
          Top = 499
          Width = 0
          Height = 0
          DataField = 'Dp_Instrucao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_Sacado_4Var: TSctDBVar
          Left = 0
          Top = 54
          Width = 0
          Height = 0
          DataField = 'Dp_Sacado_4'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDP_MFVar: TSctDBVar
          Left = 0
          Top = 54
          Width = 0
          Height = 0
          DataField = 'DP_MF'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_LocalPagamentoVar: TSctDBVar
          Left = 0
          Top = 54
          Width = 0
          Height = 0
          DataField = 'Ds_LocalPagamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -61
          Width = 773
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PgHdEntMaster: TSctBand
          Left = 0
          Top = -41
          Width = 773
          Height = 0
          ParentColor = True
          BandName = 'PgHdEntMaster'
          Updatelevel = PageHeaderBandlevel
          OnBeforePrint = PgHdEntMasterBeforePrint
        end
        object DtlBdRecibo: TSctBand
          Left = 0
          Top = 100
          Width = 773
          Height = 504
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'DtlBdRecibo'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DtlBdReciboBeforePrint
          object SctVarInfo_1: TSctvarlabel
            Left = 8
            Top = 221
            Width = 515
            Height = 153
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Variable = adodsreportDp_InstrucaoVar
          end
          object SctImgLogo_1: TSctImageLabel
            Left = 1
            Top = -1
            Width = 165
            Height = 43
            Center = True
            Stretch = True
          end
          object SctShape2: TSctShape
            Left = 530
            Top = 357
            Width = 169
            Height = 39
            Brush.Color = 16382457
            Pen.Style = psClear
          end
          object SctShape1: TSctShape
            Left = 530
            Top = 45
            Width = 169
            Height = 38
            Brush.Color = 16382457
            Pen.Style = psClear
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 165
            Top = 16
            Width = 62
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportCd_BancoVar
            DataFormat.DisplayFormat = '###-#;0; '
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 1
            Top = 45
            Width = 102
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Local de Pagamento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 1
            Top = 84
            Width = 102
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Benefici'#225'rio'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 1
            Top = 123
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Documento'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 141
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine5: TSctLine
            Left = 101
            Top = 123
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 107
            Top = 123
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'N'#250'mero do Documento'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 107
            Top = 141
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportNr_DocumentoVar
          end
          object SctLine6: TSctLine
            Left = 221
            Top = 123
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 226
            Top = 123
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Esp'#233'cie do Documento'
          end
          object SctLine7: TSctLine
            Left = 340
            Top = 123
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 346
            Top = 123
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Aceite'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 346
            Top = 141
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'N'
          end
          object SctLine8: TSctLine
            Left = 399
            Top = 123
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 405
            Top = 123
            Width = 117
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Processamento'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 406
            Top = 141
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 162
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Uso do Banco'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 0
            Top = 180
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            Caption = '  '
          end
          object SctLine10: TSctLine
            Left = 97
            Top = 161
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 103
            Top = 162
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Carteira'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 103
            Top = 180
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportds_carteiraVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 224
            Top = 163
            Width = 44
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Esp'#233'cie'
          end
          object SctLine12: TSctLine
            Left = 384
            Top = 161
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 395
            Top = 162
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Quantidade'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 227
            Top = 140
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'DM'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 1
            Top = 201
            Width = 364
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiva responsabilidade do cedente'
          end
          object SctLine14: TSctLine
            Left = 526
            Top = 44
            Width = 5
            Height = 351
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine21: TSctLine
            Left = 166
            Top = 13
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine22: TSctLine
            Left = 220
            Top = 13
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 1
            Top = 398
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Pagador'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 1
            Top = 468
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Sacador / Avalista'
          end
          object SctLine13: TSctLine
            Left = 0
            Top = 485
            Width = 698
            Height = 4
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 430
            Top = 487
            Width = 119
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Autentica'#231#227'o Mec'#226'nica'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 41
            Width = 698
            Height = 4
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 80
            Width = 698
            Height = 4
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 119
            Width = 698
            Height = 4
          end
          object SctLine4: TSctLine
            Left = 0
            Top = 158
            Width = 698
            Height = 4
          end
          object SctLine9: TSctLine
            Left = 0
            Top = 197
            Width = 698
            Height = 4
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 568
            Top = 24
            Width = 127
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Recibo do Pagador'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 534
            Top = 84
            Width = 154
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Ag'#234'ncia / C'#243'digo do Benefici'#225'rio'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 576
            Top = 102
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_ContaVar
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 534
            Top = 124
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Nosso N'#250'mero'
          end
          object SctVarDoctoBanco_1: TSctvarlabel
            Left = 535
            Top = 142
            Width = 157
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_DoctoBancoVar
            DataFormat.DisplayFormat = '00/##/#########-#;0; '
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 534
            Top = 163
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( = ) Valor do Documento'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 576
            Top = 173
            Width = 116
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.UseCurrencyDecimals = True
            DataFormat.FloatFormat = ffNumber
            DataFormat.Digits = 2
          end
          object SctLine16: TSctLine
            Left = 528
            Top = 237
            Width = 170
            Height = 4
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 534
            Top = 197
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( - ) Desconto / Abatimento'
          end
          object SctLine17: TSctLine
            Left = 528
            Top = 276
            Width = 170
            Height = 4
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 534
            Top = 237
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( - ) Outras Dedu'#231#245'es'
          end
          object SctLine18: TSctLine
            Left = 528
            Top = 315
            Width = 170
            Height = 4
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 534
            Top = 276
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( + ) Mora / Multa'
          end
          object SctLine19: TSctLine
            Left = 528
            Top = 354
            Width = 170
            Height = 4
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 534
            Top = 315
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( + ) Outros Acrescimos'
          end
          object SctLine20: TSctLine
            Left = 0
            Top = 393
            Width = 698
            Height = 4
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 534
            Top = 45
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Vencimento'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 576
            Top = 54
            Width = 116
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 534
            Top = 355
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( = ) Valor Cobrado'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 8
            Top = 60
            Width = 517
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDs_LocalPagamentoVar
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 291
            Top = 374
            Width = 231
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_FaturaVar
            DataFormat.SuppressNulls = True
          end
          object SctVarBanco_1: TSctvarlabel
            Left = 1
            Top = -3
            Width = 165
            Height = 45
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignVertical = laCenterVert
            WrapText = True
            Variable = adodsreportDs_BoletoVar
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 227
            Top = 180
            Width = 57
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'R$'
          end
          object SctVarCd_Baixa_1: TSctvarlabel
            Left = 535
            Top = 468
            Width = 161
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '   '
          end
          object SctVarSacado_11: TSctvarlabel
            Left = 8
            Top = 421
            Width = 688
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDp_Sacado_1Var
          end
          object SctVarSacado_12: TSctvarlabel
            Left = 8
            Top = 434
            Width = 688
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDp_Sacado_2Var
          end
          object SctVarSacado_13: TSctvarlabel
            Left = 8
            Top = 447
            Width = 688
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_Sacado_3Var
          end
          object SctLine23: TSctLine
            Left = 284
            Top = 161
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 290
            Top = 163
            Width = 74
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Moeda'
          end
          object SctLine11: TSctLine
            Left = 217
            Top = 161
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 166
            Top = 465
            Width = 356
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDp_Sacado_4Var
          end
          object SctLine58: TSctLine
            Left = 694
            Top = 44
            Width = 5
            Height = 444
            AlignHorizontal = laRight
            LineType = ltVertical
          end
          object SctLine59: TSctLine
            Left = 0
            Top = 44
            Width = 5
            Height = 444
            LineType = ltVertical
          end
          object SctVarFilial_1: TSctvarlabel
            Left = 57
            Top = 84
            Width = 469
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Multforma Software Ltda ME                  CNPJ 02.202.954/0001-02'
          end
          object SctVarEndFilial_1: TSctvarlabel
            Left = 4
            Top = 100
            Width = 523
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Av. Santa Leopoldina, N'#186' 2711 - Ed. Royal Center Loja 8 - Praia de Itaparica - Vila Velha - ES'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 1233
          Width = 773
          Height = 1
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 1249
          Width = 773
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object DtlBdSeparator: TSctSubBand
          Left = 0
          Top = 619
          Width = 773
          Height = 195
          ParentColor = True
          BandName = 'DtlBdSeparator'
          Updatelevel = DetailBandlevel
          Band = DtlBdRecibo
          Above = False
        end
        object DetailBandSub1: TSctSubBand
          Left = 0
          Top = 829
          Width = 773
          Height = 389
          ParentColor = True
          BandName = 'DetailBandSub1'
          Updatelevel = DetailBandlevel
          Band = DtlBdRecibo
          Order = 1
          Above = False
          object SctVarBanco_2: TSctvarlabel
            Left = 0
            Top = 5
            Width = 165
            Height = 43
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignVertical = laMiddle
            WrapText = True
            Variable = adodsreportDs_BoletoVar
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 165
            Top = 25
            Width = 62
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportCd_BancoVar
            DataFormat.DisplayFormat = '###-#;0; '
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 1
            Top = 47
            Width = 102
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Local de Pagamento'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 1
            Top = 80
            Width = 102
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Benefici'#225'rio'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 1
            Top = 112
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Documento'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 0
            Top = 125
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine24: TSctLine
            Left = 101
            Top = 111
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 107
            Top = 112
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'N'#250'mero do Documento'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 107
            Top = 125
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportNr_DocumentoVar
          end
          object SctLine25: TSctLine
            Left = 221
            Top = 111
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 226
            Top = 112
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Esp'#233'cie do Documento'
          end
          object SctLine26: TSctLine
            Left = 340
            Top = 111
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 346
            Top = 112
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Aceite'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 346
            Top = 125
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'N'
          end
          object SctLine27: TSctLine
            Left = 399
            Top = 111
            Width = 5
            Height = 30
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 405
            Top = 112
            Width = 117
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Processamento'
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 406
            Top = 125
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 1
            Top = 143
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Uso do Banco'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 0
            Top = 150
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            Caption = '   '
          end
          object SctLine28: TSctLine
            Left = 97
            Top = 142
            Width = 5
            Height = 29
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 103
            Top = 143
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Carteira'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 103
            Top = 153
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportds_carteiraVar
          end
          object SctLine29: TSctLine
            Left = 215
            Top = 142
            Width = 5
            Height = 29
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 219
            Top = 143
            Width = 59
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Esp'#233'cie'
          end
          object SctLine30: TSctLine
            Left = 381
            Top = 142
            Width = 5
            Height = 29
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 387
            Top = 143
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Quantidade'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 226
            Top = 125
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'DM'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 1
            Top = 173
            Width = 363
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Todas as informa'#231#245'es deste bloqueto s'#227'o de exclusiva responsabilidade do cedente'
          end
          object SctLine31: TSctLine
            Left = 526
            Top = 50
            Width = 5
            Height = 243
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine32: TSctLine
            Left = 166
            Top = 29
            Width = 5
            Height = 20
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine33: TSctLine
            Left = 220
            Top = 29
            Width = 5
            Height = 20
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 1
            Top = 292
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Pagador'
          end
          object SctVarSacado_21: TSctvarlabel
            Left = 78
            Top = 298
            Width = 600
            Height = 14
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDp_Sacado_1Var
          end
          object SctVarSacado_22: TSctvarlabel
            Left = 78
            Top = 311
            Width = 600
            Height = 14
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDp_Sacado_2Var
          end
          object SctVarSacado_23: TSctvarlabel
            Left = 78
            Top = 324
            Width = 600
            Height = 14
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDp_Sacado_3Var
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 1
            Top = 323
            Width = 84
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Sacador/Avalista'
          end
          object SctLine34: TSctLine
            Left = 0
            Top = 336
            Width = 698
            Height = 4
          end
          object SctShape3: TSctShape
            Left = 530
            Top = 51
            Width = 169
            Height = 38
            Brush.Color = 16382457
            Pen.Style = psClear
          end
          object SctShape4: TSctShape
            Left = 530
            Top = 268
            Width = 169
            Height = 27
            Brush.Color = 16382457
            Pen.Style = psClear
          end
          object SctLine36: TSctLine
            Left = 0
            Top = 47
            Width = 698
            Height = 4
          end
          object SctLine37: TSctLine
            Left = 0
            Top = 79
            Width = 698
            Height = 4
          end
          object SctLine38: TSctLine
            Left = 0
            Top = 108
            Width = 698
            Height = 4
          end
          object SctLine39: TSctLine
            Left = 0
            Top = 139
            Width = 698
            Height = 4
          end
          object SctLine40: TSctLine
            Left = 0
            Top = 169
            Width = 698
            Height = 4
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 534
            Top = 80
            Width = 154
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Ag'#234'ncia / C'#243'digo do Benefici'#225'rio'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 576
            Top = 94
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_ContaVar
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 534
            Top = 113
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Nosso N'#250'mero'
          end
          object SctVarDoctoBanco_2: TSctvarlabel
            Left = 576
            Top = 126
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_DoctoBancoVar
            DataFormat.DisplayFormat = '00/##/#########-#;0; '
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 534
            Top = 144
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( = ) Valor do Documento'
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 576
            Top = 146
            Width = 116
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.UseCurrencyDecimals = True
            DataFormat.FloatFormat = ffNumber
            DataFormat.Digits = 2
          end
          object SctLine41: TSctLine
            Left = 528
            Top = 197
            Width = 170
            Height = 4
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 534
            Top = 173
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( - ) Desconto / Abatimento'
          end
          object SctLine42: TSctLine
            Left = 528
            Top = 220
            Width = 170
            Height = 4
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 534
            Top = 198
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( - ) Outras Dedu'#231#245'es'
          end
          object SctLine43: TSctLine
            Left = 528
            Top = 243
            Width = 170
            Height = 4
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 534
            Top = 221
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( + ) Mora / Multa'
          end
          object SctLine44: TSctLine
            Left = 528
            Top = 265
            Width = 170
            Height = 4
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 534
            Top = 244
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( + ) Outros Acrescimos'
          end
          object SctLine45: TSctLine
            Left = 0
            Top = 292
            Width = 698
            Height = 4
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 534
            Top = 47
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Vencimento'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 576
            Top = 54
            Width = 116
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 534
            Top = 269
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '( = ) Valor Cobrado'
          end
          object SctDigitavel: TSctvarlabel
            Left = 227
            Top = 25
            Width = 472
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignVertical = laCenterVert
            BorderMargin = 1
            Variable = adodsreportDs_DigitavelVar
          end
          object SctBarCode1: TSctBarCodeLabel
            Left = 20
            Top = 341
            Width = 316
            Height = 47
            Variable = adodsreportDs_BarraVar
            BarCodeBrush.Color = clBlack
            BorderMargin = 0
            BarCodeType = bct2of5
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 480
            Top = 335
            Width = 215
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Ficha de Conpensa'#231#227'o/Autentica'#231#227'o Mec'#226'nica'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 8
            Top = 63
            Width = 517
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsreportDs_LocalPagamentoVar
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 4
            Top = 275
            Width = 522
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDs_AsbaseVar
            DataFormat.SuppressNulls = True
          end
          object SctVarInfo_2: TSctvarlabel
            Left = 4
            Top = 189
            Width = 521
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Variable = adodsreportDp_InstrucaoVar
          end
          object SctImgLogo_2: TSctImageLabel
            Left = 0
            Top = 6
            Width = 165
            Height = 42
            Center = True
            Stretch = True
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 238
            Top = 153
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'R$'
          end
          object SctVarCd_Baixa_2: TSctvarlabel
            Left = 535
            Top = 320
            Width = 161
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '   '
          end
          object SctLine15: TSctLine
            Left = 284
            Top = 142
            Width = 5
            Height = 29
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 291
            Top = 143
            Width = 74
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Moeda'
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 465
            Top = 298
            Width = 233
            Height = 14
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDP_MFVar
          end
          object SctLine56: TSctLine
            Left = 694
            Top = 50
            Width = 5
            Height = 291
            AlignHorizontal = laRight
            LineType = ltVertical
          end
          object SctLine57: TSctLine
            Left = 0
            Top = 50
            Width = 5
            Height = 291
            LineType = ltVertical
          end
          object SctVarFilial_2: TSctvarlabel
            Left = 55
            Top = 82
            Width = 468
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Multforma Software Ltda ME                  CNPJ 02.202.954/0001-02'
          end
          object SctVarEndFilial_2: TSctvarlabel
            Left = 4
            Top = 96
            Width = 523
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Av. Santa Leopoldina, N'#186' 2711 - Ed. Royal Center Loja 8 - Praia de Itaparica - Vila Velha - ES'
          end
        end
        object PgHdEntrega: TSctSubBand
          Left = 0
          Top = -26
          Width = 773
          Height = 111
          ParentColor = True
          BandName = 'PgHdEntrega'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Band = PgHdEntMaster
          Above = False
          object Sctvarlabel45: TSctvarlabel
            Left = 1
            Top = 18
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Documento'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 0
            Top = 36
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine35: TSctLine
            Left = 101
            Top = 18
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 107
            Top = 18
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'N'#250'mero do Documento'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 107
            Top = 36
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportNr_DocumentoVar
          end
          object SctLine46: TSctLine
            Left = 221
            Top = 18
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 226
            Top = 18
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Esp'#233'cie do Documento'
          end
          object SctLine47: TSctLine
            Left = 340
            Top = 18
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 346
            Top = 18
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Aceite'
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 346
            Top = 36
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'N'
          end
          object SctLine48: TSctLine
            Left = 399
            Top = 18
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 405
            Top = 18
            Width = 117
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Processamento'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 406
            Top = 36
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 227
            Top = 35
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'DM'
          end
          object SctLine49: TSctLine
            Left = 526
            Top = 18
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 534
            Top = 19
            Width = 137
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Nosso N'#250'mero'
          end
          object SctVarDoctoBanco_3: TSctvarlabel
            Left = 535
            Top = 37
            Width = 157
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsreportDp_DoctoBancoVar
            DataFormat.DisplayFormat = '00/##/#########-#;0; '
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 0
            Top = 106
            Width = 698
            Height = 4
            AlignHorizontal = laCenter
            Caption = '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - -'
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 465
            Top = 1
            Width = 230
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Comprovante de Entrega de Boleto'
          end
          object SctLine50: TSctLine
            Left = 0
            Top = 52
            Width = 698
            Height = 4
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 191
            Top = 55
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data do Recebimento'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 190
            Top = 73
            Width = 134
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            Caption = '_____/_____/______'
          end
          object SctLine51: TSctLine
            Left = 325
            Top = 55
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 331
            Top = 55
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Hora do Recebimento'
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 331
            Top = 73
            Width = 101
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '_____:_____'
          end
          object SctLine52: TSctLine
            Left = 432
            Top = 55
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 437
            Top = 55
            Width = 129
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Assinatura do Recebedor'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 438
            Top = 73
            Width = 261
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '_____________________________________'
          end
          object SctLine53: TSctLine
            Left = 0
            Top = 89
            Width = 698
            Height = 4
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 1
            Top = 55
            Width = 73
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Vencimento'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 0
            Top = 73
            Width = 73
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine54: TSctLine
            Left = 75
            Top = 55
            Width = 5
            Height = 37
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 81
            Top = 55
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Valor do Documento'
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 81
            Top = 73
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctLine55: TSctLine
            Left = 187
            Top = 55
            Width = 5
            Height = 38
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
        end
      end
    end
  end
  object MyQryReport: TMyQuery
    Connection = DmMaster.MyConMaster
    SQL.Strings = (
      'select'
      '  Nm_Portador, Cd_Banco, Nr_Receber, Nr_Parcela, Cd_Carteira,'
      '  Dt_Vencimento, Cd_Agencia, Nr_Conta, Nr_DoctoBanco, Vl_Parcela, Nm_Emitente,'
      '  Nr_MF, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Dp_Cidade, DP_MF,'
      '  Dp_Endereco, Dp_DoctoBanco, Dp_Conta, Nr_Documento, Ds_Barra, Dt_Emissao,'
      '  Ds_Digitavel, Tp_Cobranca, Ds_Asbase, Ds_Boleto, Nr_Fatura, Dp_Fatura,'
      '  mm_instrucao, ds_livre, ds_carteira, Dp_Sacado_1, Dp_Sacado_2, Dp_Sacado_3,'
      '  Dp_Sacado_4, pr_taxajuros, pr_multa, Nr_Separador, Fl_Entrega,'
      '  Nr_Insc_Estadual, Nr_Pedido_Emitente, Nr_Orcamento, Ds_LocalPagamento,'
      '  Ds_Numero, Dt_Publicacao, Mm_Boleto'
      ''
      'from'
      '  Boleto'
      ''
      'where'
      '  Nr_MF = :Nr_Documento'
      ''
      'order by'
      '  Dt_Publicacao desc, Dt_Vencimento'
    )
    OnCalcFields = MyQryReportCalcFields
    Options.FieldOrigins = foNone
    Left = 119
    Top = 237
    ParamData = <
      item
        DataType = ftString
        Name = 'Nr_Documento'
        Value = '30555734000106'
      end>
    object MyQryReportNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Origin = 'Boleto.Nm_Portador'
      Size = 50
    end
    object MyQryReportCd_Banco: TStringField
      FieldName = 'Cd_Banco'
      Origin = 'Boleto.Cd_Banco'
      Size = 4
    end
    object MyQryReportNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
      Origin = 'Boleto.Nr_Receber'
    end
    object MyQryReportNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
      Origin = 'Boleto.Nr_Parcela'
    end
    object MyQryReportCd_Carteira: TSmallintField
      FieldName = 'Cd_Carteira'
      Origin = 'Boleto.Cd_Carteira'
    end
    object MyQryReportDt_Vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      Origin = 'Boleto.Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQryReportCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      Origin = 'Boleto.Cd_Agencia'
      Size = 5
    end
    object MyQryReportNr_Conta: TStringField
      FieldName = 'Nr_Conta'
      Origin = 'Boleto.Nr_Conta'
      Size = 10
    end
    object MyQryReportNr_DoctoBanco: TStringField
      FieldName = 'Nr_DoctoBanco'
      Origin = 'Boleto.Nr_DoctoBanco'
      Size = 25
    end
    object MyQryReportVl_Parcela: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Parcela'
      Origin = 'Boleto.Vl_Parcela'
      DisplayFormat = '#,##0.00'
    end
    object MyQryReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Origin = 'Boleto.Nm_Emitente'
      Size = 50
    end
    object MyQryReportNr_MF: TStringField
      FieldName = 'Nr_MF'
      Origin = 'Boleto.Nr_MF'
      Size = 14
    end
    object MyQryReportDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Origin = 'Boleto.Ds_Endereco'
      Size = 50
    end
    object MyQryReportNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Origin = 'Boleto.Nm_Bairro'
      Size = 30
    end
    object MyQryReportDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Origin = 'Boleto.Ds_Complemento'
      Size = 30
    end
    object MyQryReportNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      Origin = 'Boleto.Nr_CEP'
      Size = 8
    end
    object MyQryReportDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      Origin = 'Boleto.Dp_Cidade'
      Size = 35
    end
    object MyQryReportDP_MF: TStringField
      FieldName = 'DP_MF'
      Origin = 'Boleto.DP_MF'
      Size = 30
    end
    object MyQryReportDp_Endereco: TStringField
      FieldName = 'Dp_Endereco'
      Origin = 'Boleto.Dp_Endereco'
      Size = 65
    end
    object MyQryReportDp_DoctoBanco: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'Dp_DoctoBanco'
      Origin = 'Boleto.Dp_DoctoBanco'
      Size = 30
    end
    object MyQryReportDp_Conta: TStringField
      FieldName = 'Dp_Conta'
      Origin = 'Boleto.Dp_Conta'
      Size = 30
    end
    object MyQryReportNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Origin = 'Boleto.Nr_Documento'
      Size = 9
    end
    object MyQryReportDs_Barra: TStringField
      FieldName = 'Ds_Barra'
      Origin = 'Boleto.Ds_Barra'
      Size = 200
    end
    object MyQryReportDt_Emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      Origin = 'Boleto.Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQryReportDs_Digitavel: TStringField
      DisplayLabel = 'Linha Digitavel'
      FieldName = 'Ds_Digitavel'
      Origin = 'Boleto.Ds_Digitavel'
      Size = 200
    end
    object MyQryReportTp_Cobranca: TStringField
      FieldName = 'Tp_Cobranca'
      Origin = 'Boleto.Tp_Cobranca'
      Size = 1
    end
    object MyQryReportDs_Asbase: TStringField
      FieldName = 'Ds_Asbase'
      Origin = 'Boleto.Ds_Asbase'
      Size = 40
    end
    object MyQryReportDs_Boleto: TStringField
      FieldName = 'Ds_Boleto'
      Origin = 'Boleto.Ds_Boleto'
    end
    object MyQryReportNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
      Origin = 'Boleto.Nr_Fatura'
    end
    object MyQryReportDp_Fatura: TStringField
      FieldName = 'Dp_Fatura'
      Origin = 'Boleto.Dp_Fatura'
      Size = 50
    end
    object MyQryReportmm_instrucao: TMemoField
      FieldName = 'mm_instrucao'
      Origin = 'Boleto.mm_instrucao'
      BlobType = ftMemo
    end
    object MyQryReportds_livre: TStringField
      FieldName = 'ds_livre'
      Origin = 'Boleto.ds_livre'
      Size = 30
    end
    object MyQryReportds_carteira: TStringField
      FieldName = 'ds_carteira'
      Origin = 'Boleto.ds_carteira'
    end
    object MyQryReportDp_Sacado_1: TStringField
      FieldName = 'Dp_Sacado_1'
      Origin = 'Boleto.Dp_Sacado_1'
      Size = 150
    end
    object MyQryReportDp_Sacado_2: TStringField
      FieldName = 'Dp_Sacado_2'
      Origin = 'Boleto.Dp_Sacado_2'
      Size = 150
    end
    object MyQryReportDp_Sacado_3: TStringField
      FieldName = 'Dp_Sacado_3'
      Origin = 'Boleto.Dp_Sacado_3'
      Size = 150
    end
    object MyQryReportDp_Sacado_4: TStringField
      FieldName = 'Dp_Sacado_4'
      Origin = 'Boleto.Dp_Sacado_4'
      Size = 150
    end
    object MyQryReportpr_taxajuros: TFloatField
      FieldName = 'pr_taxajuros'
      Origin = 'Boleto.pr_taxajuros'
    end
    object MyQryReportpr_multa: TFloatField
      FieldName = 'pr_multa'
      Origin = 'Boleto.pr_multa'
    end
    object MyQryReportNr_Separador: TSmallintField
      FieldName = 'Nr_Separador'
      Origin = 'Boleto.Nr_Separador'
    end
    object MyQryReportFl_Entrega: TStringField
      FieldName = 'Fl_Entrega'
      Origin = 'Boleto.Fl_Entrega'
      Size = 1
    end
    object MyQryReportNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Origin = 'Boleto.Nr_Insc_Estadual'
    end
    object MyQryReportNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Origin = 'Boleto.Nr_Pedido_Emitente'
      Size = 30
    end
    object MyQryReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      Origin = 'Boleto.Nr_Orcamento'
    end
    object MyQryReportDs_LocalPagamento: TStringField
      FieldName = 'Ds_LocalPagamento'
      Origin = 'Boleto.Ds_LocalPagamento'
      Size = 100
    end
    object MyQryReportDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Origin = 'Boleto.Ds_Numero'
      Size = 10
    end
    object MyQryReportDt_Publicacao: TDateTimeField
      DisplayLabel = 'Publicado'
      FieldName = 'Dt_Publicacao'
      Origin = 'Boleto.Dt_Publicacao'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object MyQryReportDp_Receber: TStringField
      DisplayLabel = 'Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 10
      Calculated = True
    end
    object MyQryReportDp_Instrucao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Instrucao'
      Size = 5000
      Calculated = True
    end
    object MyQryReportMm_Boleto: TMemoField
      FieldName = 'Mm_Boleto'
      BlobType = ftMemo
    end
  end
  object DsReport: TDataSource
    DataSet = MyQryReport
    Left = 85
    Top = 238
  end
end
