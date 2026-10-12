object FrmReceber_Boleto: TFrmReceber_Boleto
  Left = 363
  Top = 220
  Caption = 'FrmReceber_Boleto'
  ClientHeight = 662
  ClientWidth = 1176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SctReport: TSctReport
    Left = 10
    Top = 15
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctReportBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 8
    SLeft = 0
    SWidth = 889
    SHeight = 841
    MTop = 15
    MLeft = 10
    SAlign = alNone
    Version = vAce1_0
    object ReportPage: TSctGrouppage
      Left = 35
      Top = 55
      Width = 27
      Height = 0
      VertScrollBar.Position = 583
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
      DataRange = drAllRecords
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
        Top = -583
        Width = 0
        Height = 0
        IsHeader = True
      end
      object PageHeaderBandlevel: TSctLevel
        Left = 0
        Top = -583
        Width = 0
        Height = 0
        IsHeader = True
      end
      object DetailBandlevel: TSctLevel
        Left = 0
        Top = -583
        Width = 0
        Height = 0
      end
      object PageFooterBandlevel: TSctLevel
        Left = 0
        Top = -583
        Width = 0
        Height = 0
      end
      object ReportFooterBandlevel: TSctLevel
        Left = 0
        Top = -583
        Width = 0
        Height = 0
      end
      object svarDateTime: TSctDateTimeVar
        Left = 0
        Top = -570
        Width = 0
        Height = 0
        UpdateLevel = ReportHeaderBandlevel
        AutoVar = True
        ID = vidDateTimeVar
      end
      object svarPage: TSctPageVar
        Left = 0
        Top = -570
        Width = 0
        Height = 0
        UpdateLevel = PageHeaderBandlevel
        AutoVar = True
        ID = vidPageVar
      end
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = -570
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsReport
      end
      object adodsreportNm_PortadorVar: TSctDBVar
        Left = 0
        Top = -33
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
        Top = -33
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
        Top = -33
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
        Top = -33
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
        Top = -36
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
        Top = -36
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
        Top = -195
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
        Top = -583
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
        Top = 243
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
        Top = 231
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
        Top = -25
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
        Top = -583
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
        Top = -20
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = -20
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialnm_filialVar: TSctDBVar
        Left = 0
        Top = -463
        Width = 0
        Height = 0
        DataField = 'nm_filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportim_logoVar: TSctDBVar
        Left = 0
        Top = -583
        Width = 0
        Height = 0
        DataField = 'im_logo'
        DataSource = DsReport
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportds_carteiraVar: TSctDBVar
        Left = 0
        Top = -583
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
        Top = -6
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
        Top = -6
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
        Top = -6
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
        Top = -23
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
        Top = -468
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
        Top = -468
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
        Top = -468
        Width = 0
        Height = 0
        DataField = 'Ds_LocalPagamento'
        DataSource = DsReport
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = -583
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 17
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConecadoMes
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = -583
        Width = 773
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PgHdEntMaster: TSctBand
        Left = 0
        Top = -563
        Width = 773
        Height = 0
        ParentColor = True
        BandName = 'PgHdEntMaster'
        Updatelevel = PageHeaderBandlevel
        OnBeforePrint = PgHdEntMasterBeforePrint
      end
      object DtlBdRecibo: TSctBand
        Left = 0
        Top = -422
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
          Top = 4
          Width = 149
          Height = 38
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
          Left = 153
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
          Width = 56
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Benefici'#225'rio'
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
          Caption = 'Filial e CNPJ'
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
          Left = 154
          Top = 13
          Width = 5
          Height = 30
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object SctLine22: TSctLine
          Left = 208
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
          Left = 537
          Top = 102
          Width = 155
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
          Left = 295
          Top = 212
          Width = 231
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsreportDp_FaturaVar
          DataFormat.SuppressNulls = True
        end
        object SctVarBanco_1: TSctvarlabel
          Left = 1
          Top = 4
          Width = 149
          Height = 38
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
          Caption = 'Endere'#231'o'
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 711
        Width = 773
        Height = 1
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        Visible = False
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 727
        Width = 773
        Height = 20
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBandlevel
        Visible = False
      end
      object DtlBdSeparator: TSctSubBand
        Left = 0
        Top = 97
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
        Top = 307
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
          Top = 8
          Width = 149
          Height = 38
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
          Left = 149
          Top = 23
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
        object Sctvarlabel56: TSctvarlabel
          Left = 1
          Top = 78
          Width = 56
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Benefici'#225'rio'
        end
        object SctVarFilial_2: TSctvarlabel
          Left = 55
          Top = 80
          Width = 468
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Filial e CNPJ'
        end
        object Sctvarlabel58: TSctvarlabel
          Left = 1
          Top = 110
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
          Top = 123
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
          Top = 109
          Width = 5
          Height = 30
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel60: TSctvarlabel
          Left = 107
          Top = 110
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
          Top = 123
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
          Top = 109
          Width = 5
          Height = 30
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel62: TSctvarlabel
          Left = 226
          Top = 110
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
          Top = 109
          Width = 5
          Height = 30
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel63: TSctvarlabel
          Left = 346
          Top = 110
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
          Top = 123
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
          Top = 109
          Width = 5
          Height = 30
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 405
          Top = 110
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
          Top = 123
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
          Top = 141
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
          Top = 148
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
          Top = 140
          Width = 5
          Height = 29
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel69: TSctvarlabel
          Left = 103
          Top = 141
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
          Top = 151
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
          Top = 140
          Width = 5
          Height = 29
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel71: TSctvarlabel
          Left = 219
          Top = 141
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
          Top = 140
          Width = 5
          Height = 29
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel72: TSctvarlabel
          Left = 387
          Top = 141
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
          Top = 123
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
          Top = 171
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
          Top = 48
          Width = 5
          Height = 243
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object SctLine32: TSctLine
          Left = 150
          Top = 27
          Width = 5
          Height = 20
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object SctLine33: TSctLine
          Left = 204
          Top = 27
          Width = 5
          Height = 20
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel79: TSctvarlabel
          Left = 1
          Top = 290
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
          Top = 296
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
          Top = 309
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
          Top = 322
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
          Top = 327
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
          Top = 339
          Width = 698
          Height = 4
        end
        object SctShape3: TSctShape
          Left = 530
          Top = 49
          Width = 169
          Height = 38
          Brush.Color = 16382457
          Pen.Style = psClear
        end
        object SctShape4: TSctShape
          Left = 530
          Top = 266
          Width = 169
          Height = 27
          Brush.Color = 16382457
          Pen.Style = psClear
        end
        object SctLine36: TSctLine
          Left = 0
          Top = 45
          Width = 698
          Height = 4
        end
        object SctLine37: TSctLine
          Left = 0
          Top = 77
          Width = 698
          Height = 4
        end
        object SctLine38: TSctLine
          Left = 0
          Top = 106
          Width = 698
          Height = 4
        end
        object SctLine39: TSctLine
          Left = 0
          Top = 137
          Width = 698
          Height = 4
        end
        object SctLine40: TSctLine
          Left = 0
          Top = 167
          Width = 698
          Height = 4
        end
        object Sctvarlabel89: TSctvarlabel
          Left = 534
          Top = 78
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
          Top = 92
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
          Top = 111
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
          Top = 124
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
          Top = 142
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
          Top = 144
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
          Top = 195
          Width = 170
          Height = 4
        end
        object Sctvarlabel95: TSctvarlabel
          Left = 534
          Top = 171
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
          Top = 218
          Width = 170
          Height = 4
        end
        object Sctvarlabel96: TSctvarlabel
          Left = 534
          Top = 196
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
          Top = 241
          Width = 170
          Height = 4
        end
        object Sctvarlabel97: TSctvarlabel
          Left = 534
          Top = 219
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
          Top = 263
          Width = 170
          Height = 4
        end
        object Sctvarlabel98: TSctvarlabel
          Left = 534
          Top = 242
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
          Top = 290
          Width = 698
          Height = 4
        end
        object Sctvarlabel100: TSctvarlabel
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
        object Sctvarlabel101: TSctvarlabel
          Left = 576
          Top = 52
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
          Top = 267
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
          Left = 211
          Top = 23
          Width = 488
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignVertical = laCenterVert
          AlignHorizontal = laCenter
          BorderMargin = 1
          Variable = adodsreportDs_DigitavelVar
        end
        object SctBarCode1: TSctBarCodeLabel
          Left = 20
          Top = 346
          Width = 316
          Height = 41
          Variable = adodsreportDs_BarraVar
          BarCodeBrush.Color = clBlack
          BorderMargin = 0
          BarCodeType = bct2of5
        end
        object Sctvarlabel88: TSctvarlabel
          Left = 480
          Top = 338
          Width = 215
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Autentica'#231#227'o Mec'#226'nica/Ficha de Conpensa'#231#227'o'
        end
        object Sctvarlabel103: TSctvarlabel
          Left = 8
          Top = 61
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
          Top = 273
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
          Top = 187
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
          Top = 8
          Width = 149
          Height = 38
          Center = True
          Variable = adodsreportim_logoVar
          Stretch = True
        end
        object Sctvarlabel52: TSctvarlabel
          Left = 238
          Top = 151
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
          Top = 318
          Width = 161
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = '   '
        end
        object SctLine15: TSctLine
          Left = 284
          Top = 140
          Width = 5
          Height = 29
          AlignVertical = laMiddle
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 291
          Top = 141
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
        object Sctvarlabel25: TSctvarlabel
          Left = 294
          Top = 180
          Width = 231
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsreportDp_FaturaVar
          DataFormat.SuppressNulls = True
        end
        object SctLine56: TSctLine
          Left = 694
          Top = 48
          Width = 5
          Height = 294
          AlignHorizontal = laRight
          LineType = ltVertical
        end
        object SctLine57: TSctLine
          Left = 0
          Top = 48
          Width = 5
          Height = 294
          LineType = ltVertical
        end
        object SctVarEndFilial_2: TSctvarlabel
          Left = 4
          Top = 94
          Width = 523
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Endere'#231'o'
        end
      end
      object PgHdEntrega: TSctSubBand
        Left = 0
        Top = -548
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
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 141
    Top = 46
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  C.Nm_Portador, C.Cd_Banco, A.Nr_Receber, B.Nr_Parcela, C.Cd_Carteira,'#13#10'  B.Dt_Vencimento, C.Cd_Agencia, C.Nr_Conta, B.Nr_DoctoBanco, B.Vl_Parcela,'#13#10'  D.Nm_Emitente, D.Nr_Documento as Nr_MF, E.Ds_Endereco, E.Nm_Bairro,'#13#10'  E.Ds_Complemento, E.Nr_CEP, C.Im_Logo, C.Ds_Livre, C.Ds_Carteira,'#13#10'  F.Nm_Cidade + '''' - '''' + F.Sg_Estado as Dp_Cidade,'#13#10'  C.Ds_Boleto, C.Mm_Instrucao, C.Tp_Cobranca, A.Dt_Emissao,'#13#10'  O.Nr_Fatura, C.Pr_Multa, C.Pr_TaxaJuros, C.Nr_Separador, C.Fl_Entrega,'#13#10'  D.Nr_Insc_Estadual, O.Nr_Pedido_Emitente, O.Nr_Orcamento,'#13#10'  C.Ds_LocalPagamento, E.Ds_Numero, C.Nr_Unidade, B.Mm_Boleto, A.Ds_Fatura,'#13#10'  C.Tp_Modelo, F.Nm_Cidade, F.Sg_Estado,'#13#10#13#10'  B.Cd_Envio, D.Tp_Pessoa, B.Id_Parcela, C.Nr_Indicador, C.Ds_Cobranca,'#13#10'  C.Nr_Prazo_Protesto, A.Cd_Filial,'#13#10#13#10'  D.Ds_EmailCob, C.Nr_DataLimite'#13#10#13#10'from'#13#10'  Receber A'#13#10#13#10'inner join'#13#10'  Receber_Parcela B'#13#10'on'#13#10'  B.Cd_Filial   = A.Cd_Filial and'#13#10'  B.Nr_Receber    = A.Nr_Receber and'#13#10'  B.Dt_Vencimento >= A.Dt_Emissao and'#13#10'  B.Nr_DoctoBanco <> '''''#13#10#13#10'inner join'#13#10'  Portador C'#13#10'on'#13#10'  C.Cd_Portador = B.Cd_Portador and'#13#10'  C.Fl_Pagamento = ''''3'''#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco E'#13#10'on'#13#10'  E.Cd_Emitente = D.Cd_Emitente and'#13#10'  E.Nr_Endereco = D.Nr_EndCobranca'#13#10#13#10'inner join'#13#10'  Cidade F'#13#10'on'#13#10'  F.Cd_Cidade = E.Cd_Cidade'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = A.Cd_Filial and'#13#10'  O.Nr_Orcamento = A.Nr_Orcamento'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Receber >= :Nr_Start and'#13#10'  A.Nr_Receber <= :Nr_End'#13#10#13#10'order by'#13#10'  A.Nr_Receber, B.Nr_Parcela'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Start'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end
      item
        Name = 'Nr_End'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    SQLOther0.Strings = (
      '-- ------------ Boletos normais'
      'select'
      '  C.Nm_Portador, C.Cd_Banco, A.Nr_Receber, B.Nr_Parcela, C.Cd_Carteira,'
      '  B.Dt_Vencimento, C.Cd_Agencia, C.Nr_Conta, B.Nr_DoctoBanco, B.Vl_Parcela,'
      '  D.Nm_Emitente, D.Nr_Documento as Nr_MF, E.Ds_Endereco, E.Nm_Bairro,'
      '  E.Ds_Complemento, E.Nr_CEP, C.Im_Logo, C.Ds_Livre, C.Ds_Carteira,'
      '  F.Nm_Cidade + '''' - '''' + F.Sg_Estado as Dp_Cidade,'
      '  C.Ds_Boleto, C.Mm_Instrucao, C.Tp_Cobranca, A.Dt_Emissao,'
      '  O.Nr_Fatura, C.Pr_Multa, C.Pr_TaxaJuros, C.Nr_Separador, C.Fl_Entrega,'
      '  D.Nr_Insc_Estadual, O.Nr_Pedido_Emitente, O.Nr_Orcamento,'
      '  C.Ds_LocalPagamento, E.Ds_Numero, C.Nr_Unidade, B.Mm_Boleto, A.Ds_Fatura,'
      '  C.Tp_Modelo, F.Nm_Cidade, F.Sg_Estado,'
      ''
      '  B.Cd_Envio, D.Tp_Pessoa, B.Id_Parcela, C.Nr_Indicador, C.Ds_Cobranca,'
      '  C.Nr_Prazo_Protesto, A.Cd_Filial,'
      ''
      '  D.Ds_EMailCob, C.Nr_DataLimite'
      ''
      'from'
      '  Receber A'
      ''
      'inner join'
      '  Receber_Parcela B'
      'on'
      '  B.Cd_Filial      = A.Cd_Filial and'
      '  B.Nr_Receber     = A.Nr_Receber and'
      '  B.Dt_Vencimento >= A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''
      ''
      'inner join'
      '  Portador C'
      'on'
      '  C.Cd_Portador  = B.Cd_Portador and'
      '  C.Fl_Pagamento = ''''3'''
      ''
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente'
      ''
      ' /* Fl_EMailCob */'
      ''
      'inner join'
      '  Emitente_Endereco E'
      'on'
      '  E.Cd_Emitente = D.Cd_Emitente and'
      '  E.Nr_Endereco = D.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade F'
      'on'
      '  F.Cd_Cidade = E.Cd_Cidade'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = A.Cd_Filial and'
      '  O.Nr_Orcamento = A.Nr_Orcamento'
      ''
      'where'
      '  A.Cd_Filial   = :Cd_Filial and'
      '  A.Nr_Receber >= :Nr_Start and'
      '  A.Nr_Receber <= :Nr_End'
      ''
      '  ----- and A.ST_Receber <= ''''2'''' -- Para enviar todos os boletos ao site'
      ''
      'order by'
      '  B.Cd_Portador, A.Nr_Receber, B.Nr_Parcela'
    )
    SQLOther1.Strings = (
      '-- ------------ Referente a boletos publicados pela primeira vez no nosso site 06/07/2011'
      'select'
      '  C.Nm_Portador, C.Cd_Banco, A.Nr_Receber, B.Nr_Parcela, C.Cd_Carteira,'
      '  B.Dt_Vencimento, C.Cd_Agencia, C.Nr_Conta, B.Nr_DoctoBanco, B.Vl_Parcela,'
      '  D.Nm_Emitente, D.Nr_Documento as Nr_MF, E.Ds_Endereco, E.Nm_Bairro,'
      '  E.Ds_Complemento, E.Nr_CEP, C.Im_Logo, C.Ds_Livre, C.Ds_Carteira,'
      '  F.Nm_Cidade + '''' - '''' + F.Sg_Estado as Dp_Cidade,'
      '  C.Ds_Boleto, C.Mm_Instrucao, C.Tp_Cobranca, A.Dt_Emissao,'
      '  O.Nr_Fatura, C.Pr_Multa, C.Pr_TaxaJuros, C.Nr_Separador, C.Fl_Entrega,'
      '  D.Nr_Insc_Estadual, O.Nr_Pedido_Emitente, O.Nr_Orcamento,'
      '  C.Ds_LocalPagamento, E.Ds_Numero, C.Nr_Unidade, B.Mm_Boleto, A.Ds_Fatura,'
      '  C.Tp_Modelo, F.Nm_Cidade, F.Sg_Estado,'
      ''
      '  B.Cd_Envio, D.Tp_Pessoa, B.Id_Parcela, C.Nr_Indicador, C.Ds_Cobranca,'
      '  C.Nr_Prazo_Protesto, A.Cd_Filial,'
      ''
      '  D.Ds_EMailCob, C.Nr_DataLimite'
      ''
      'from'
      '  Receber A'
      ''
      'inner join'
      '  Receber_Parcela B'
      'on'
      '  B.Cd_Filial      = A.Cd_Filial and'
      '  B.Nr_Receber     = A.Nr_Receber and'
      '  B.Dt_Vencimento >= A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''' and'
      '  not exists('
      '  select'
      '    Nr_Receber'
      ''
      '  from'
      '    Receber_Historico RH'
      ''
      '  where'
      '    RH.Cd_Filial = B.Cd_Filial and'
      '    RH.Nr_Receber = B.Nr_Receber and'
      '    RH.Nr_Parcela = B.Nr_Parcela and'
      '    RH.Nr_Lancamento > 1'
      '  )'
      ''
      'inner join'
      '  Portador C'
      'on'
      '  C.Cd_Portador = B.Cd_Portador and'
      '  C.Fl_Pagamento = ''''3'''
      ''
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente and'
      '  D.Cd_Grupo in ( 3, 5 )'
      '  /* Fl_EMail Cob */'
      ''
      'inner join'
      '  Emitente_Endereco E'
      'on'
      '  E.Cd_Emitente = D.Cd_Emitente and'
      '  E.Nr_Endereco = D.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade F'
      'on'
      '  F.Cd_Cidade = E.Cd_Cidade'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = A.Cd_Filial and'
      '  O.Nr_Orcamento = A.Nr_Orcamento'
      ''
      'where'
      '  A.Cd_Filial   = :Cd_Filial and'
      '  A.St_Receber <= ''''2'''' and'
      '  A.Nr_Receber >= :Nr_Start and'
      '  A.Nr_Receber <= :Nr_End'
      ''
      'order by'
      '  B.Cd_Portador, A.Nr_Receber, B.Nr_Parcela'
    )
    SQLOther2.Strings = (
      '-- ------------ Boletos de remessa'
      'select'
      '  C.Nm_Portador, C.Cd_Banco, A.Nr_Receber, B.Nr_Parcela, C.Cd_Carteira,'
      '  B.Dt_Vencimento, C.Cd_Agencia, C.Nr_Conta, B.Nr_DoctoBanco, B.Vl_Parcela,'
      '  D.Nm_Emitente, D.Nr_Documento as Nr_MF, E.Ds_Endereco, E.Nm_Bairro,'
      '  E.Ds_Complemento, E.Nr_CEP, C.Im_Logo, C.Ds_Livre, C.Ds_Carteira,'
      '  F.Nm_Cidade + '''' - '''' + F.Sg_Estado as Dp_Cidade,'
      '  C.Ds_Boleto, C.Mm_Instrucao, C.Tp_Cobranca, A.Dt_Emissao,'
      '  O.Nr_Fatura, C.Pr_Multa, C.Pr_TaxaJuros, C.Nr_Separador, C.Fl_Entrega,'
      '  D.Nr_Insc_Estadual, O.Nr_Pedido_Emitente, O.Nr_Orcamento,'
      '  C.Ds_LocalPagamento, E.Ds_Numero, C.Nr_Unidade, B.Mm_Boleto, A.Ds_Fatura,'
      '  C.Tp_Modelo, F.Nm_Cidade, F.Sg_Estado,'
      ''
      '  B.Cd_Envio, D.Tp_Pessoa, B.Id_Parcela, C.Nr_Indicador, C.Ds_Cobranca,'
      '  C.Nr_Prazo_Protesto, A.Cd_Filial,'
      ''
      '  D.Ds_EMailCob, C.Nr_DataLimite'
      ''
      'from'
      '  #RemessaTMP RT'
      ''
      'inner join'
      '  Receber A'
      'on'
      '  A.Cd_Filial  = RT.Cd_Filial and'
      '  A.Nr_Receber = RT.Nr_Receber'
      ''
      'inner join'
      '  Receber_Parcela B'
      'on'
      '  B.Cd_Filial      = A.Cd_Filial and'
      '  B.Nr_Receber     = A.Nr_Receber and'
      '  B.Nr_Parcela     = RT.Nr_Parcela and'
      '  B.Dt_Vencimento >= A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''
      ''
      'inner join'
      '  Portador C'
      'on'
      '  C.Cd_Portador  = B.Cd_Portador and'
      '  C.Fl_Pagamento = ''''3'''
      ''
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente'
      ''
      ' /* Fl_EMailCob */'
      ''
      'inner join'
      '  Emitente_Endereco E'
      'on'
      '  E.Cd_Emitente = D.Cd_Emitente and'
      '  E.Nr_Endereco = D.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade F'
      'on'
      '  F.Cd_Cidade = E.Cd_Cidade'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = A.Cd_Filial and'
      '  O.Nr_Orcamento = A.Nr_Orcamento'
      ''
      'where'
      '  RT.Fl_Envio = ''''1'''
      '  '
      'order by'
      '  B.Cd_Portador, A.Nr_Receber, B.Nr_Parcela'
    )
    Left = 170
    Top = 46
    object ADODsReportNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsReportCd_Banco: TStringField
      FieldName = 'Cd_Banco'
      FixedChar = True
      Size = 4
    end
    object ADODsReportNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsReportNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsReportCd_Carteira: TSmallintField
      FieldName = 'Cd_Carteira'
    end
    object ADODsReportDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsReportCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsReportNr_Conta: TStringField
      FieldName = 'Nr_Conta'
      Size = 10
    end
    object ADODsReportNr_DoctoBanco: TStringField
      FieldName = 'Nr_DoctoBanco'
      Size = 25
    end
    object ADODsReportVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 10
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNr_MF: TStringField
      FieldName = 'Nr_MF'
      Size = 14
    end
    object ADODsReportDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsReportNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsReportDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsReportNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsReportDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsReportDP_MF: TStringField
      FieldKind = fkCalculated
      FieldName = 'DP_MF'
      Size = 30
      Calculated = True
    end
    object ADODsReportDp_Endereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Endereco'
      Size = 65
      Calculated = True
    end
    object ADODsReportDp_DoctoBanco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_DoctoBanco'
      Size = 30
      Calculated = True
    end
    object ADODsReportDp_Conta: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Conta'
      Size = 30
      Calculated = True
    end
    object ADODsReportNr_Documento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nr_Documento'
      Size = 9
      Calculated = True
    end
    object ADODsReportDs_Barra: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Barra'
      Size = 200
      Calculated = True
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportDs_Digitavel: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Digitavel'
      Size = 200
      Calculated = True
    end
    object ADODsReportTp_Cobranca: TStringField
      FieldName = 'Tp_Cobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDs_Asbase: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Asbase'
      Size = 40
      Calculated = True
    end
    object ADODsReportDs_Boleto: TStringField
      FieldName = 'Ds_Boleto'
    end
    object ADODsReportNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsReportDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Size = 50
      Calculated = True
    end
    object ADODsReportmm_instrucao: TMemoField
      FieldName = 'mm_instrucao'
      BlobType = ftMemo
    end
    object ADODsReportim_logo: TBlobField
      FieldName = 'im_logo'
    end
    object ADODsReportds_livre: TStringField
      FieldName = 'ds_livre'
      Size = 30
    end
    object ADODsReportds_carteira: TStringField
      FieldName = 'ds_carteira'
    end
    object ADODsReportDp_Sacado_1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Sacado_1'
      Size = 150
      Calculated = True
    end
    object ADODsReportDp_Sacado_2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Sacado_2'
      Size = 150
      Calculated = True
    end
    object ADODsReportDp_Sacado_3: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Sacado_3'
      Size = 150
      Calculated = True
    end
    object ADODsReportDp_Sacado_4: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Sacado_4'
      Size = 50
      Calculated = True
    end
    object ADODsReportDp_Instrucao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Instrucao'
      Size = 8190
      Calculated = True
    end
    object ADODsReportpr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsReportpr_multa: TBCDField
      FieldName = 'pr_multa'
      Precision = 7
      Size = 2
    end
    object ADODsReportNr_Separador: TSmallintField
      FieldName = 'Nr_Separador'
    end
    object ADODsReportFl_Entrega: TStringField
      FieldName = 'Fl_Entrega'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsReportNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportDs_LocalPagamento: TStringField
      FieldName = 'Ds_LocalPagamento'
      Size = 100
    end
    object ADODsReportDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsReportNr_Unidade: TSmallintField
      FieldName = 'Nr_Unidade'
    end
    object ADODsReportMm_Boleto: TMemoField
      FieldName = 'Mm_Boleto'
      BlobType = ftMemo
    end
    object ADODsReportDs_Fatura: TStringField
      FieldName = 'Ds_Fatura'
      Size = 10
    end
    object ADODsReportTp_Modelo: TStringField
      FieldName = 'Tp_Modelo'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsReportSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsReportNr_NossoNrLimpo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nr_NossoNrLimpo'
      Calculated = True
    end
    object ADODsReportCd_Envio: TStringField
      FieldName = 'Cd_Envio'
      FixedChar = True
      Size = 2
    end
    object ADODsReportTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsReportId_Parcela: TIntegerField
      FieldName = 'Id_Parcela'
    end
    object ADODsReportNr_Indicador: TSmallintField
      FieldName = 'Nr_Indicador'
    end
    object ADODsReportDs_Cobranca: TStringField
      FieldName = 'Ds_Cobranca'
      Size = 30
    end
    object ADODsReportNr_Prazo_Protesto: TSmallintField
      FieldName = 'Nr_Prazo_Protesto'
    end
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsReportNr_DataLimite: TSmallintField
      FieldName = 'Nr_DataLimite'
    end
  end
  object ACBrBoleto: TACBrBoleto
    Banco.Numero = 756
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobBancoSicoob
    Banco.LayoutVersaoArquivo = 81
    Banco.LayoutVersaoLote = 40
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.Nome = 'TodaObra Materias p/ Construcao'
    Cedente.CodigoCedente = '4266443'
    Cedente.Agencia = '0284'
    Cedente.AgenciaDigito = '5'
    Cedente.Conta = '000000079489'
    Cedente.ContaDigito = '9'
    Cedente.TipoCarteira = tctRegistrada
    Cedente.CNPJCPF = '05.481.336/0001-37'
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    Cedente.PIX.TipoChavePIX = tchNenhuma
    Cedente.IntegradoraBoleto = tibNenhum
    NumeroArquivo = 0
    LayoutRemessa = c240
    ACBrBoletoFC = ACBrBoletoFCFortes
    Configuracoes.Arquivos.LogNivel = logNenhum
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = no Exclusão e Negativação por Outros Motivos   ÿÿÿÿ3   Retorno Ocorrência Informacional por Outros Motivos ÿÿÿÿ  
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 368
    Top = 71
  end
  object ACBrBoletoFCFortes: TACBrBoletoFCFortes
    MostrarPreview = False
    MostrarSetup = False
    MostrarProgresso = False
    Filtro = fiPDF
    SoftwareHouse = 'www.multforma.com.br'
    DirLogo = 'C:\Temp\SG'
    MargemSuperior = 5.0
    MargemEsquerda = 5.0
    Left = 356
    Top = 264
  end
  object ACBrBoletoFPDF: TACBrBoletoFPDF
    LayOut = lPrestaServicos
    SoftwareHouse = 'www.multforma.com.br'
    DirLogo = 'C:\Temp\SG'
    Left = 448
    Top = 256
  end
end
