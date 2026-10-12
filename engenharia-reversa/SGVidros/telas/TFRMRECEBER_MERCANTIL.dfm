object FrmReceber_Mercantil: TFrmReceber_Mercantil
  Left = 324
  Top = 258
  Caption = 'FrmReceber_Mercantil'
  ClientHeight = 685
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SctRepMercantil: TSctReport
    Left = 75
    Top = 0
    Width = 891
    Height = 689
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Visible = False
    Minimized = False
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 0
    SLeft = 75
    SWidth = 891
    SHeight = 689
    MTop = 25
    MLeft = 105
    SAlign = alNone
    Version = vAce1_0
    object ReportPage: TSctGrouppage
      Left = 35
      Top = 55
      Width = 836
      Height = 614
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
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Duplicata Mercantil'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = DetailBand
      Foot = ReportFooterBand
      PageHead = PageHeaderBand
      PageFoot = PageFooterBand
      DataSource = DsMercantil
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
        DataSource = DsMercantil
      end
      object adodsmercantilnm_emitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_emitente'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilds_enderecoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_endereco'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilds_complementoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_complemento'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilnm_bairroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_bairro'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilnm_cidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_cidade'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilsg_estadoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_estado'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilnr_cepVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_cep'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilnr_documentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilnr_insc_estadualVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_insc_estadual'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilvl_parcelaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_parcela'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantildt_vencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_vencimento'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilds_extensoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_extenso'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
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
      object adodsfilialnr_documentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsfilialnr_inscestadualVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_inscestadual'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantildp_receberVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dp_receber'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsfilialnm_filialVar: TSctDBVar
        Left = 0
        Top = 129
        Width = 0
        Height = 0
        DataField = 'nm_filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilDs_NumeroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Numero'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsmercantilDp_FaturaVar: TSctDBVar
        Left = 0
        Top = 110
        Width = 0
        Height = 0
        DataField = 'Dp_Fatura'
        DataSource = DsMercantil
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = 0
        Width = 886
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PageHeaderBand: TSctBand
        Left = 0
        Top = 20
        Width = 886
        Height = 1
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBandlevel
        OnAfterPrint = PageHeaderBandAfterPrint
      end
      object DetailBand: TSctBand
        Left = 0
        Top = 36
        Width = 886
        Height = 499
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Detail'
        Updatelevel = DetailBandlevel
        object SctShape: TSctShape
          Left = 1
          Top = 1
          Width = 698
          Height = 155
        end
        object SctImgDuplicata: TSctImageLabel
          Left = 3
          Top = 3
          Width = 500
          Height = 150
          Center = True
          Stretch = True
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 510
          Top = 5
          Width = 39
          Height = 17
          Caption = 'CNPJ:'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 550
          Top = 5
          Width = 138
          Height = 17
          Variable = adodsfilialnr_documentoVar
          DataFormat.DisplayFormat = '##.###.###/####-##;0; '
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 510
          Top = 22
          Width = 57
          Height = 17
          Caption = 'Insc. Est.:'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 569
          Top = 22
          Width = 128
          Height = 17
          Variable = adodsfilialnr_inscestadualVar
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 505
          Top = 102
          Width = 191
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Data de Emiss'#227'o'
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 505
          Top = 124
          Width = 191
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Variable = svarDateTime
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctShape1: TSctShape
          Left = 1
          Top = 158
          Width = 473
          Height = 71
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 3
          Top = 164
          Width = 164
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'FATURA'
        end
        object SctLine1: TSctLine
          Left = 166
          Top = 158
          Width = 5
          Height = 70
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object SctLine2: TSctLine
          Left = 2
          Top = 183
          Width = 470
          Height = 5
          AlignVertical = laMiddle
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 3
          Top = 188
          Width = 79
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Valor R$'
        end
        object SctLine3: TSctLine
          Left = 82
          Top = 186
          Width = 5
          Height = 42
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 87
          Top = 188
          Width = 78
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'N'#250'mero'
        end
        object SctLine4: TSctLine
          Left = 2
          Top = 205
          Width = 335
          Height = 5
          AlignVertical = laMiddle
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 3
          Top = 210
          Width = 79
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsmercantilvl_parcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 87
          Top = 210
          Width = 78
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsmercantilDp_FaturaVar
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 171
          Top = 163
          Width = 164
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'DUPLICATA'
        end
        object SctLine5: TSctLine
          Left = 334
          Top = 157
          Width = 5
          Height = 70
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 171
          Top = 188
          Width = 79
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Valor R$'
        end
        object SctLine7: TSctLine
          Left = 250
          Top = 185
          Width = 5
          Height = 42
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 255
          Top = 188
          Width = 78
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'N'#250'mero'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 171
          Top = 210
          Width = 79
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsmercantilvl_parcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 243
          Top = 210
          Width = 97
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsmercantildp_receberVar
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 341
          Top = 168
          Width = 131
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'VENCIMENTO'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 337
          Top = 186
          Width = 136
          Height = 41
          Color = 14342874
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          AlignVertical = laCenterVert
          AlignHorizontal = laCenter
          Variable = adodsmercantildt_vencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctLine6: TSctLine
          Left = 503
          Top = 2
          Width = 5
          Height = 153
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object SctShape2: TSctShape
          Left = 480
          Top = 158
          Width = 220
          Height = 71
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 512
          Top = 156
          Width = 156
          Height = 35
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Caption = 'Para uso da Institui'#231#227'o Financeira'
        end
        object SctShape3: TSctShape
          Left = 0
          Top = 232
          Width = 698
          Height = 152
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 6
          Top = 237
          Width = 102
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Nome do Sacado:'
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 109
          Top = 237
          Width = 368
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnm_emitenteVar
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 6
          Top = 255
          Width = 57
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Endere'#231'o:'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 65
          Top = 255
          Width = 430
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilds_enderecoVar
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 91
          Top = 273
          Width = 189
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilds_complementoVar
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 6
          Top = 273
          Width = 85
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Complemento:'
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 330
          Top = 273
          Width = 197
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnm_bairroVar
        end
        object Sctvarlabel27: TSctvarlabel
          Left = 291
          Top = 273
          Width = 39
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Bairro:'
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 7
          Top = 291
          Width = 174
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Pra'#231'a de Pagamento (Cidade):'
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 182
          Top = 291
          Width = 260
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnm_cidadeVar
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 444
          Top = 291
          Width = 44
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Estado:'
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 488
          Top = 291
          Width = 26
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilsg_estadoVar
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 527
          Top = 291
          Width = 31
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'CEP:'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 559
          Top = 291
          Width = 79
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnr_cepVar
          DataFormat.DisplayFormat = '##.###-###;0; '
        end
        object SctLine9: TSctLine
          Left = 2
          Top = 326
          Width = 695
          Height = 5
          AlignVertical = laMiddle
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 0
          Top = 330
          Width = 62
          Height = 51
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Caption = 'Valor Por Extenso'
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 56
          Top = 329
          Width = 641
          Height = 55
          Color = 14342874
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          WrapText = True
          Stretch = True
          Variable = adodsmercantilds_extensoVar
        end
        object SctShape4: TSctShape
          Left = 1
          Top = 388
          Width = 698
          Height = 40
        end
        object SctVarReconheco: TSctvarlabel
          Left = 5
          Top = 390
          Width = 689
          Height = 34
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          JustifyMemo = True
          Caption = 'Recene'#231'o(emos) a exatid'#227'o desta DUPLICATA DE VENDA MERCANTIL na import'#226'ncia acima que pagarei(emos) '#224' DOM BOSCO DISTRIBUIDORA DE EMBALAGENS LTDA, ou a sua ordem, na pra'#231'a e vencimento acima indicados.'
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 7
          Top = 309
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'CNPJ/CPF:'
        end
        object SctVarDocto: TSctvarlabel
          Left = 71
          Top = 309
          Width = 156
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnr_documentoVar
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 271
          Top = 309
          Width = 109
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 380
          Top = 309
          Width = 170
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilnr_insc_estadualVar
        end
        object SctShape5: TSctShape
          Left = 1
          Top = 431
          Width = 698
          Height = 56
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 282
          Top = 456
          Width = 194
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'em _______/_______/______________'
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 282
          Top = 469
          Width = 189
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Data do Aceite'
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 480
          Top = 469
          Width = 216
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Assinatura do Sacado'
        end
        object SctLine10: TSctLine
          Left = 480
          Top = 465
          Width = 216
          Height = 5
        end
        object Sctvarlabel42: TSctvarlabel
          Left = 2
          Top = 469
          Width = 276
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsfilialnm_filialVar
        end
        object SctLine8: TSctLine
          Left = 4
          Top = 465
          Width = 274
          Height = 5
        end
        object SctLine12: TSctLine
          Left = 278
          Top = 431
          Width = 5
          Height = 55
          AlignHorizontal = laCenter
          LineType = ltVertical
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 498
          Top = 255
          Width = 52
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'N'#250'mero:'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 550
          Top = 255
          Width = 73
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsmercantilDs_NumeroVar
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 602
        Width = 886
        Height = 20
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        Visible = False
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 637
        Width = 886
        Height = 20
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBandlevel
        Visible = False
      end
      object DtlSubSeparetor: TSctSubBand
        Left = 0
        Top = 550
        Width = 886
        Height = 37
        ParentColor = True
        BandName = 'DtlSubSeparetor'
        Updatelevel = DetailBandlevel
        OnAfterPrint = DtlSubSeparetorAfterPrint
        Band = DetailBand
        Above = False
        object SctLine11: TSctLine
          Left = 1
          Top = 24
          Width = 695
          Height = 5
          Pen.Color = clSilver
          AlignVertical = laMiddle
        end
      end
    end
  end
  object DsMercantil: TDataSource
    DataSet = ADODsMercantil
    Left = 15
    Top = 60
  end
  object ADODsMercantil: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsMercantilCalcFields
    CommandText = 'select'#13#10'  E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade,'#13#10'  C.Sg_Estado, EE.Nr_CEP, E.Nr_Documento, E.Nr_Insc_Estadual, E.Cd_Emitente,'#13#10'  EE.Ds_Numero,'#13#10#13#10'  RP.Nr_Receber, RP.Nr_Parcela, RP.Vl_Parcela, RP.Dt_Vencimento,'#13#10#13#10'   F.Im_DupMercantil,'#13#10#13#10'  Dp_Fatura ='#13#10'    case'#13#10'      when R.Ds_Fatura is null or R.Ds_Fatura = '''''' then Convert( VarChar, O.Nr_Fatura )'#13#10'      else R.Ds_Fatura'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  = R.Cd_Filial and'#13#10'  RP.Nr_Receber = R.Nr_Receber'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_EndCobranca'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = R.Cd_Filial'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'where'#13#10'  R.Cd_Filial  = :Cd_Filial and'#13#10'  R.Nr_Receber = :Nr_Receber'#13#10#13#10'order by'#13#10'  RP.Nr_Parcela'
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
        Name = 'Nr_Receber'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade,'
      '  C.Sg_Estado, EE.Nr_CEP, E.Nr_Documento, E.Nr_Insc_Estadual, E.Cd_Emitente,'
      '  EE.Ds_Numero,'
      ''
      '  RP.Nr_Receber, RP.Nr_Parcela, RP.Vl_Parcela, RP.Dt_Vencimento,'
      ''
      '  F.Im_DupMercantil,'
      ''
      '  Dp_Fatura ='
      '    case'
      '      when R.Ds_Fatura is null or R.Ds_Fatura = '''''' then Convert( VarChar, O.Nr_Fatura )'
      '      else R.Ds_Fatura'
      ''
      '    end'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador  = RP.Cd_Portador and'
      '  P.Fl_Pagamento = ''''9''''                       ----- Duplicata'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = R.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  Filial F'
      'on'
      '  F.Cd_Filial = R.Cd_Filial'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = R.Cd_Filial and'
      '  O.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'where'
      '  R.Cd_Filial  = @Cd_Filial and'
      '  R.Nr_Receber = @Nr_Receber'
      ''
      ''
    )
    Left = 45
    Top = 60
    object ADODsMercantilnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsMercantilds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsMercantilds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsMercantilnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsMercantilnm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsMercantilsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsMercantilnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsMercantilnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsMercantilnr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsMercantilnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsMercantilnr_parcela: TSmallintField
      FieldName = 'nr_parcela'
    end
    object ADODsMercantilvl_parcela: TBCDField
      FieldName = 'vl_parcela'
      Precision = 12
      Size = 2
    end
    object ADODsMercantildt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsMercantilim_dupmercantil: TBlobField
      FieldName = 'im_dupmercantil'
    end
    object ADODsMercantilds_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'ds_extenso'
      Size = 200
      Calculated = True
    end
    object ADODsMercantildp_receber: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_receber'
      Calculated = True
    end
    object ADODsMercantilCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsMercantilDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsMercantilDp_Fatura: TStringField
      FieldName = 'Dp_Fatura'
      ReadOnly = True
      Size = 30
    end
  end
end
