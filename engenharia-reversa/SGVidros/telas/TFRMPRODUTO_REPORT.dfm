object FrmProduto_Report: TFrmProduto_Report
  Left = 153
  Top = 191
  Caption = 'FrmProduto_Report'
  ClientHeight = 788
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SctRepInventario: TSctReport
    Left = 40
    Top = 23
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepInventarioBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 72
    SLeft = 8
    SWidth = 1050
    SHeight = 639
    MTop = 23
    MLeft = 40
    SAlign = alNone
    Version = vAce1_0
    object ReportPage1: TSctGrouppage
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
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      BorderType = btNone
      Description = 'Invent'#225'rio de Estoque'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand1
      Detail = SctDtlInventario
      Foot = ReportFooterBand1
      PageHead = PageHeaderBand1
      PageFoot = PageFooterBand1
      DataSource = DsInventario
      Order = 1
      object ReportHeaderBand1level: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object PageHeaderBand1level: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object DetailBand1level: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object PageFooterBand1level: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object ReportFooterBand1level: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object svarDateTime1: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = ReportHeaderBand1level
        AutoVar = True
        ID = vidDateTimeVar
      end
      object svarPage1: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = PageHeaderBand1level
        AutoVar = True
        ID = vidPageVar
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialDp_FilialVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DsInventario
      end
      object adodsinventariocd_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariosg_estoqueVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_estoque'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_liquidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_liquido'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DsEtiqueta
      end
      object adodsinventariodp_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dp_produto'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioDs_LocalizacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Localizacao'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object Group: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = GroupHeader
        Footer = GroupFooter
        Variable = adodsinventarioDs_LocalizacaoVar
        Level = 0
      end
      object GroupHeaderLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object GroupFooterLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBand1level
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsinventariovl_custoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_custo'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioVl_Total_CustoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Total_Custo'
        DataSource = DsInventario
        UpdateLevel = DetailBand1level
        AutoVar = False
        ID = vidAutoDataVar
      end
      object ReportHeaderBand1: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBand1level
        Visible = False
      end
      object PageHeaderBand1: TSctBand
        Left = 0
        Top = 20
        Width = 805
        Height = 41
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBand1level
        object Sctvarlabel17: TSctvarlabel
          Left = 2
          Top = 1
          Width = 154
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Invent'#225'rio de Estoque'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 657
          Top = 1
          Width = 31
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Data:'
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = svarDateTime1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 654
          Top = 18
          Width = 34
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Hora:'
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 690
          Top = 18
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = svarDateTime1
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine3: TSctLine
          Left = 0
          Top = 31
          Width = 754
          Height = 7
        end
      end
      object SctDtlInventario: TSctBand
        Left = 0
        Top = 163
        Width = 805
        Height = 28
        ParentColor = True
        BandName = 'SctDtlInventario'
        OnPrintWhen = SctDtlInventarioPrintWhen
        Updatelevel = DetailBand1level
        Stretch = True
        OnBeforePrint = SctDtlInventarioBeforePrint
        object Sctvarlabel32: TSctvarlabel
          Left = 56
          Top = 9
          Width = 335
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsinventariodp_produtoVar
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 1
          Top = 9
          Width = 50
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventariocd_produtoVar
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 397
          Top = 9
          Width = 46
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsinventariosg_estoqueVar
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 448
          Top = 9
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioqt_liquidoVar
          DataFormat.DisplayFormat = '#,##0.###'
          DataFormat.Digits = 3
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 594
          Top = 9
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioVl_Total_CustoVar2
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 528
          Top = 9
          Width = 59
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          BorderMargin = 1
          WrapText = True
          Stretch = True
          Variable = adodsinventariovl_custoVar2
          DataFormat.DisplayFormat = '#,##0.00#'
        end
        object SctLine1: TSctLine
          Left = 671
          Top = 9
          Width = 83
          Height = 17
        end
      end
      object PageFooterBand1: TSctBand
        Left = 0
        Top = 224
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = PageFooterBand1level
        object SctLine7: TSctLine
          Left = 0
          Top = 1
          Width = 754
          Height = 7
          AlignVertical = laTop
        end
        object Sctvarlabel27: TSctvarlabel
          Left = 2
          Top = 2
          Width = 359
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar1
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 672
          Top = 2
          Width = 44
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 719
          Top = 2
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = svarPage1
          DataFormat.DisplayFormat = '#,###'
        end
        object SctVarDocto: TSctvarlabel
          Left = 365
          Top = 2
          Width = 299
          Height = 17
          AlignHorizontal = laRight
          Caption = 'CNPJ:'
        end
      end
      object ReportFooterBand1: TSctBand
        Left = 0
        Top = 259
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBand1level
        Visible = False
      end
      object PageHeaderBand1Sub: TSctSubBand
        Left = 0
        Top = 76
        Width = 805
        Height = 37
        Color = 15790320
        BandName = 'PageHeaderBand1Sub'
        Updatelevel = PageHeaderBand1level
        Band = PageHeaderBand1
        Above = False
        object SctLine6: TSctLine
          Left = 0
          Top = 29
          Width = 754
          Height = 7
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 1
          Top = 16
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 56
          Top = 16
          Width = 140
          Height = 17
          Caption = 'Nome do Produto'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 366
          Top = 2
          Width = 77
          Height = 31
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Unidade de Estoque'
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 448
          Top = 16
          Width = 76
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Quantidade'
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 594
          Top = 16
          Width = 75
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Total'
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 528
          Top = 2
          Width = 59
          Height = 31
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Custo Unit'#225'rio'
        end
      end
      object GroupHeader: TSctBand
        Left = 0
        Top = 128
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Group Header'
        Updatelevel = GroupHeaderLevel
        object Sctvarlabel69: TSctvarlabel
          Left = 21
          Top = 3
          Width = 370
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsinventarioDs_LocalizacaoVar
        end
      end
      object GroupFooter: TSctBand
        Left = 0
        Top = 206
        Width = 805
        Height = 3
        ParentColor = True
        BandName = 'Group Footer'
        Updatelevel = GroupFooterLevel
        Visible = False
      end
    end
  end
  object SctRepCustoEstoque: TSctReport
    Left = 130
    Top = 23
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 1
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 42
    SLeft = 5
    SWidth = 833
    SHeight = 361
    MTop = 23
    MLeft = 130
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage1: TSctGrouppage
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
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      BorderType = btNone
      Description = 'Custo de Estoque'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand1
      Detail = SctBdDetailCusto
      Foot = SctBand5
      PageHead = SctBand2
      PageFoot = SctBand4
      DataSource = DsInventario
      Order = 1
      object SctLevel1: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel2: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel3: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel4: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel5: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar1: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel1
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar1: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel2
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsFilial
      end
      object SctDataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DsInventario
      end
      object adodsinventariocd_produtoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarionm_produtoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariosg_estoqueVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_estoque'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_saldoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_saldo'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariovl_custoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_custo'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsfilialDp_FilialVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DsEtiqueta
      end
      object adodsinventarioVl_Total_CustoVar: TSctDBVar
        Left = 43
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Total_Custo'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Total_Custo: TSctTotalvar
        Left = 43
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsinventarioVl_Total_CustoVar
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidTotalVar
      end
      object adodsinventarioqt_liquidoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_liquido'
        DataSource = DsInventario
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand1: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel1
        Visible = False
      end
      object SctBand2: TSctBand
        Left = 0
        Top = 20
        Width = 805
        Height = 38
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel2
        object Sctvarlabel1: TSctvarlabel
          Left = 2
          Top = 1
          Width = 154
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Custo do Estoque'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 657
          Top = 1
          Width = 31
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Data:'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 654
          Top = 18
          Width = 34
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Hora:'
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 690
          Top = 18
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar1
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine2: TSctLine
          Left = 0
          Top = 31
          Width = 754
          Height = 7
        end
        object SctSpECF_2: TSctShape
          Left = 745
          Top = 32
          Width = 8
          Height = 6
        end
      end
      object SctBdDetailCusto: TSctBand
        Left = 0
        Top = 125
        Width = 805
        Height = 19
        ParentColor = True
        BandName = 'SctBdDetailCusto'
        OnPrintWhen = SctBdDetailCustoPrintWhen
        Updatelevel = SctLevel3
        Stretch = True
        object Sctvarlabel6: TSctvarlabel
          Left = 56
          Top = 1
          Width = 400
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsinventarionm_produtoVar1
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventariocd_produtoVar1
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 490
          Top = 1
          Width = 46
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsinventariosg_estoqueVar1
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 543
          Top = 1
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioqt_liquidoVar1
          DataFormat.DisplayFormat = '#,##0.0##'
          DataFormat.Digits = 3
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioVl_Total_CustoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 622
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventariovl_custoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object SctBand4: TSctBand
        Left = 0
        Top = 159
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel4
        object SctLine5: TSctLine
          Left = 0
          Top = 1
          Width = 754
          Height = 7
          AlignVertical = laTop
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 2
          Top = 2
          Width = 529
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 672
          Top = 2
          Width = 44
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 719
          Top = 2
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar1
          DataFormat.DisplayFormat = '#,###'
        end
      end
      object SctBand5: TSctBand
        Left = 0
        Top = 194
        Width = 805
        Height = 24
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel5
        object Sctvarlabel41: TSctvarlabel
          Left = 625
          Top = 5
          Width = 38
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total:'
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 665
          Top = 5
          Width = 90
          Height = 17
          TotalVariable = TotalOfVl_Total_Custo
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctLine4: TSctLine
          Left = 622
          Top = 1
          Width = 134
          Height = 7
          AlignVertical = laTop
        end
      end
      object SctSubBand1: TSctSubBand
        Left = 0
        Top = 73
        Width = 805
        Height = 37
        Color = 15790320
        BandName = 'PageHeaderBand1Sub'
        Updatelevel = SctLevel2
        Band = SctBand2
        Above = False
        object SctLine8: TSctLine
          Left = 0
          Top = 29
          Width = 754
          Height = 7
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 1
          Top = 16
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 56
          Top = 16
          Width = 140
          Height = 17
          Caption = 'Nome do Produto'
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 461
          Top = 2
          Width = 77
          Height = 31
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Unidade de Estoque'
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 543
          Top = 16
          Width = 76
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Quantidade'
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 690
          Top = 16
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Total'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 622
          Top = 16
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Unit'#225'rio'
        end
      end
    end
  end
  object SctRepEtiqueta: TSctReport
    Left = 221
    Top = 22
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepEtiquetaBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 0
    SLeft = 0
    SWidth = 1020
    SHeight = 664
    MTop = 22
    MLeft = 221
    SAlign = alNone
    Version = vAce1_0
    object ReportPage_Cliente: TSctGrouppage
      Left = 35
      Top = 55
      Width = 27
      Height = 0
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      ClipLabels = False
      PageSetup.Orientation = poPortrait
      PageSetup.Size = psLegal
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 14.0
      PageSetup.Width = 8.5
      PageSetup.PrintQuality = pqCustom
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.25
      PageSetup.RightMargin = 0
      PageSetup.BottomMargin = 3.0
      BorderType = btNone
      Description = 'Etiqueta de Produtos'
      CloseDataSet = False
      DataRange = drAllRecords
      OnDataStart = ReportPage_ClienteDataStart
      OnDataSkip = ReportPage_ClienteDataSkip
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = DetailBand
      Foot = ReportFooterBand
      PageHead = PageHeaderBand
      PageFoot = PageFooterBand
      DataSource = DsEtiqueta
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
      object ExprLabel_01: TSctExprVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataType = dtypeMemo
        OnGetData = ExprLabel_01GetData
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidExprVar
      end
      object ExprLabel_02: TSctExprVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataType = dtypeMemo
        OnGetData = ExprLabel_02GetData
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidExprVar
      end
      object DataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide6: TSctDataSourceGuide
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
        DataSource = DsInventario
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsEtiqueta
      end
      object ExprBarra_01: TSctExprVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataType = dtypeString
        OnGetData = ExprBarra_01GetData
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidExprVar
      end
      object ExprBarra_02: TSctExprVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataType = dtypeString
        OnGetData = ExprBarra_02GetData
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidExprVar
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = 0
        Width = 842
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PageHeaderBand: TSctBand
        Left = 0
        Top = 15
        Width = 842
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBandlevel
        Visible = False
      end
      object DetailBand: TSctBand
        Left = 0
        Top = 30
        Width = 842
        Height = 97
        ParentColor = True
        BandName = 'Detail'
        Updatelevel = DetailBandlevel
        OnAfterPrint = DetailBandAfterPrint
        object Sctvarlabel70: TSctvarlabel
          Left = 4
          Top = 4
          Width = 366
          Height = 62
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ClipType = ctClip
          AlignVertical = laTop
          AlignHorizontal = laCenter
          BorderMargin = 1
          WrapText = True
          Variable = ExprLabel_01
        end
        object Sctvarlabel71: TSctvarlabel
          Left = 405
          Top = 4
          Width = 366
          Height = 62
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ClipType = ctClip
          AlignVertical = laTop
          AlignHorizontal = laCenter
          BorderMargin = 1
          WrapText = True
          Variable = ExprLabel_02
        end
        object SctBarCodeLabel1: TSctBarCodeLabel
          Left = 67
          Top = 66
          Width = 241
          Height = 28
          Variable = ExprBarra_01
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object SctBarCodeLabel2: TSctBarCodeLabel
          Left = 468
          Top = 66
          Width = 241
          Height = 28
          Variable = ExprBarra_02
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 142
        Width = 842
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        Visible = False
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 157
        Width = 842
        Height = 1
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBandlevel
        Visible = False
      end
    end
  end
  object SctRepValorEstoque: TSctReport
    Left = 307
    Top = 22
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 3
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 42
    SLeft = 5
    SWidth = 833
    SHeight = 361
    MTop = 22
    MLeft = 307
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
      PageSetup.Orientation = poPortrait
      PageSetup.Size = psA4
      PageSetup.Height = 11.69291338582677
      PageSetup.Width = 8.26771653543307
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      BorderType = btNone
      Description = 'Valores do Estoque'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand3
      Detail = SctBdDtlValEstoque
      Foot = SctBand9
      PageHead = SctBand6
      PageFoot = SctBand8
      DataSource = DsInventario
      Order = 1
      object SctLevel6: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel7: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel8: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel9: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctTotalReport: TSctLevel
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
        UpdateLevel = SctLevel6
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar2: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel7
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsFilial
      end
      object SctDataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DsInventario
      end
      object SctDataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DsEtiqueta
      end
      object adodsinventariocd_produtoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarionm_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariosg_vendaVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_venda'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_saldoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_saldo'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariovl_custoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_custo'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariovl_vendaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_venda'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioVl_Total_CustoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Total_Custo'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioVl_Total_VendaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Total_Venda'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioMg_LucroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Mg_Lucro'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Total_Custo1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsinventarioVl_Total_CustoVar1
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Total_Venda: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsinventarioVl_Total_VendaVar
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidTotalVar
      end
      object adodsfilialDp_FilialVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_liquidoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_liquido'
        DataSource = DsInventario
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand3: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel6
        Visible = False
      end
      object SctBand6: TSctBand
        Left = 0
        Top = 20
        Width = 805
        Height = 38
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel7
        object Sctvarlabel42: TSctvarlabel
          Left = 2
          Top = 1
          Width = 154
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Valores do Estoque'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 657
          Top = 1
          Width = 31
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Data:'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 654
          Top = 18
          Width = 34
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Hora:'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 690
          Top = 18
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine9: TSctLine
          Left = 0
          Top = 31
          Width = 754
          Height = 7
        end
        object SctSpECF_3: TSctShape
          Left = 745
          Top = 32
          Width = 8
          Height = 6
        end
      end
      object SctBdDtlValEstoque: TSctBand
        Left = 0
        Top = 125
        Width = 805
        Height = 19
        ParentColor = True
        BandName = 'SctBdDtlValEstoque'
        OnPrintWhen = SctBdDtlValEstoquePrintWhen
        Updatelevel = SctLevel8
        Stretch = True
        object Sctvarlabel47: TSctvarlabel
          Left = 56
          Top = 1
          Width = 264
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsinventarionm_produtoVar
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventariocd_produtoVar2
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 325
          Top = 1
          Width = 46
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsinventariosg_vendaVar1
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 376
          Top = 1
          Width = 63
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsinventarioqt_liquidoVar2
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 440
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsinventariovl_custoVar1
          DataFormat.DisplayFormat = '#,##0.00#'
          DataFormat.Digits = 3
        end
        object Sctvarlabel52: TSctvarlabel
          Left = 507
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsinventarioVl_Total_CustoVar1
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 3
        end
        object Sctvarlabel66: TSctvarlabel
          Left = 572
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsinventariovl_vendaVar
          DataFormat.DisplayFormat = '#,##0.00#'
          DataFormat.Digits = 3
        end
        object Sctvarlabel67: TSctvarlabel
          Left = 639
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsinventarioVl_Total_VendaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 3
        end
        object Sctvarlabel68: TSctvarlabel
          Left = 708
          Top = 1
          Width = 47
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsinventarioMg_LucroVar
          DataFormat.DisplayFormat = '#,##0.00#'
          DataFormat.Digits = 3
        end
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 159
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel9
        object SctLine10: TSctLine
          Left = 0
          Top = 1
          Width = 754
          Height = 7
          AlignVertical = laTop
        end
        object Sctvarlabel53: TSctvarlabel
          Left = 2
          Top = 2
          Width = 529
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar2
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 672
          Top = 2
          Width = 44
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 719
          Top = 2
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar2
          DataFormat.DisplayFormat = '#,###'
        end
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 194
        Width = 805
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = SctTotalReport
        OnBeforePrint = SctBand9BeforePrint
        object Sctvarlabel56: TSctvarlabel
          Left = 460
          Top = 5
          Width = 38
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total:'
        end
        object SctLine11: TSctLine
          Left = 455
          Top = 1
          Width = 301
          Height = 7
          AlignVertical = laTop
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 507
          Top = 5
          Width = 65
          Height = 17
          TotalVariable = TotalOfVl_Total_Custo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 639
          Top = 5
          Width = 65
          Height = 17
          TotalVariable = TotalOfVl_Total_Venda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblLucro: TSctvarlabel
          Left = 708
          Top = 5
          Width = 47
          Height = 17
          AlignHorizontal = laRight
          Caption = '% Lucro'
        end
      end
      object SctSubBand2: TSctSubBand
        Left = 0
        Top = 73
        Width = 805
        Height = 37
        Color = 15790320
        BandName = 'PageHeaderBand1Sub'
        Updatelevel = SctLevel7
        Band = SctBand6
        Above = False
        object SctLine12: TSctLine
          Left = 0
          Top = 29
          Width = 754
          Height = 7
        end
        object Sctvarlabel57: TSctvarlabel
          Left = 1
          Top = 16
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel58: TSctvarlabel
          Left = 56
          Top = 16
          Width = 140
          Height = 17
          Caption = 'Nome do Produto'
        end
        object Sctvarlabel59: TSctvarlabel
          Left = 296
          Top = 2
          Width = 77
          Height = 31
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Unidade de Estoque'
        end
        object Sctvarlabel60: TSctvarlabel
          Left = 376
          Top = 16
          Width = 63
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Quantidade'
        end
        object Sctvarlabel61: TSctvarlabel
          Left = 507
          Top = 2
          Width = 65
          Height = 31
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Custo Total'
        end
        object Sctvarlabel62: TSctvarlabel
          Left = 440
          Top = 2
          Width = 65
          Height = 31
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Custo Unit'#225'rio'
        end
        object Sctvarlabel63: TSctvarlabel
          Left = 572
          Top = 2
          Width = 65
          Height = 31
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Venda Unit'#225'rio'
        end
        object Sctvarlabel64: TSctvarlabel
          Left = 639
          Top = 2
          Width = 65
          Height = 31
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Venda Total'
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 708
          Top = 16
          Width = 47
          Height = 17
          AlignHorizontal = laRight
          Caption = '% Lucro'
        end
      end
    end
  end
  object SctRepDifEstoque: TSctReport
    Left = 396
    Top = 22
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 4
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepDifEstoqueBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 42
    SLeft = 5
    SWidth = 833
    SHeight = 361
    MTop = 22
    MLeft = 396
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage3: TSctGrouppage
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
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      BorderType = btNone
      Description = 'Diferen'#231'a de Estoque'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand10
      Detail = SctBdDtlEstoqueMinMax
      Foot = SctBand14
      PageHead = SctBand11
      PageFoot = SctBand13
      DataSource = DsInventario
      Order = 1
      object SctLevel10: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel11: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel12: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel13: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel14: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar3: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel10
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar3: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel11
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel12
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel12
        DataSource = DmMaster.DsFilial
      end
      object SctDataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel12
        DataSource = DsInventario
      end
      object SctDBVar6: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctDataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel12
        DataSource = DsEtiqueta
      end
      object adodsinventariocd_produtoVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarionm_produtoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_produto'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventariosg_vendaVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_venda'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_est_minimoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_est_minimo'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioQt_NecessarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Qt_Necessario'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_liquidoVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_liquido'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsinventarioqt_est_maximoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_est_maximo'
        DataSource = DsInventario
        UpdateLevel = SctLevel12
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand10: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel10
        Visible = False
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 20
        Width = 805
        Height = 38
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel11
        object SctVarDifEstoque: TSctvarlabel
          Left = 2
          Top = 1
          Width = 154
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Estoque M'#237'nimo'
        end
        object Sctvarlabel72: TSctvarlabel
          Left = 657
          Top = 1
          Width = 31
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Data:'
        end
        object Sctvarlabel73: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar3
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel74: TSctvarlabel
          Left = 654
          Top = 18
          Width = 34
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Hora:'
        end
        object Sctvarlabel75: TSctvarlabel
          Left = 690
          Top = 18
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar3
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine13: TSctLine
          Left = 0
          Top = 31
          Width = 754
          Height = 7
        end
        object SctSpECF_4: TSctShape
          Left = 745
          Top = 32
          Width = 8
          Height = 6
        end
      end
      object SctBdDtlEstoqueMinMax: TSctBand
        Left = 0
        Top = 125
        Width = 805
        Height = 19
        ParentColor = True
        BandName = 'SctBdDtlEstoqueMinMax'
        OnPrintWhen = SctBdDtlEstoqueMinMaxPrintWhen
        Updatelevel = SctLevel12
        Stretch = True
        OnAfterPrint = SctBdDtlEstoqueMinMaxAfterPrint
        object Sctvarlabel76: TSctvarlabel
          Left = 57
          Top = 1
          Width = 400
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsinventarionm_produtoVar2
        end
        object Sctvarlabel77: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventariocd_produtoVar3
        end
        object Sctvarlabel78: TSctvarlabel
          Left = 490
          Top = 1
          Width = 46
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsinventariosg_vendaVar2
        end
        object Sctvarlabel79: TSctvarlabel
          Left = 543
          Top = 1
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioqt_liquidoVar3
          DataFormat.DisplayFormat = '#,##0.0##'
          DataFormat.Digits = 3
        end
        object SctVarNecessario: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioQt_NecessarioVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object SctVarEstoque: TSctvarlabel
          Left = 622
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsinventarioqt_est_minimoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
      end
      object SctBand13: TSctBand
        Left = 0
        Top = 159
        Width = 805
        Height = 20
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel13
        object SctLine14: TSctLine
          Left = 0
          Top = 1
          Width = 754
          Height = 7
          AlignVertical = laTop
        end
        object Sctvarlabel82: TSctvarlabel
          Left = 2
          Top = 2
          Width = 529
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = SctDBVar6
        end
        object Sctvarlabel83: TSctvarlabel
          Left = 672
          Top = 2
          Width = 44
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel84: TSctvarlabel
          Left = 719
          Top = 2
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = SctPageVar3
          DataFormat.DisplayFormat = '#,###'
        end
      end
      object SctBand14: TSctBand
        Left = 0
        Top = 194
        Width = 805
        Height = 24
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel14
        OnBeforePrint = SctBand14BeforePrint
        object SctTxtDifTotal: TSctvarlabel
          Left = 605
          Top = 5
          Width = 146
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total de Produtos:'
        end
        object SctLine15: TSctLine
          Left = 600
          Top = 1
          Width = 156
          Height = 7
          AlignVertical = laTop
        end
      end
      object SctSubBand3: TSctSubBand
        Left = 0
        Top = 73
        Width = 805
        Height = 37
        Color = 15790320
        BandName = 'PageHeaderBand1Sub'
        Updatelevel = SctLevel11
        Band = SctBand11
        Above = False
        object SctLine16: TSctLine
          Left = 0
          Top = 29
          Width = 754
          Height = 7
        end
        object Sctvarlabel86: TSctvarlabel
          Left = 1
          Top = 16
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel87: TSctvarlabel
          Left = 56
          Top = 16
          Width = 140
          Height = 17
          Caption = 'Nome do Produto'
        end
        object Sctvarlabel88: TSctvarlabel
          Left = 461
          Top = 2
          Width = 77
          Height = 31
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Unidade de Estoque'
        end
        object Sctvarlabel89: TSctvarlabel
          Left = 543
          Top = 16
          Width = 76
          Height = 17
          AlignHorizontal = laCenter
          WrapText = True
          Caption = 'Quantidade'
        end
        object SctTxtNecessario: TSctvarlabel
          Left = 690
          Top = 16
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'Necessario'
        end
        object SctTxtEstoque: TSctvarlabel
          Left = 622
          Top = 16
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Caption = 'M'#237'nimo'
        end
      end
    end
  end
  object ADODsInventario: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsInventarioCalcFields
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, ES.Sg_Estoque, ES.Sg_Venda, ES.Qt_Saldo,'#13#10'  ES.Qt_Liquido, ES.Qt_Saldo_Venda, ES.Qt_Liquido_Venda, PP.Vl_Custo,'#13#10'  L.Nm_Laboratorio, PP.Vl_Venda, P.Qt_Est_Minimo, P.Qt_Est_Maximo,'#13#10'  P.Cd_Fabricante, Loc.Ds_Localizacao'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = ''''PADRAO'''' and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Localizacao Loc'#13#10'on'#13#10'  Loc.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'left join'#13#10'  Estoque_Saldo ES'#13#10'on'#13#10'  ES.Cd_Filial  = :Cd_Filial and'#13#10'  ES.Cd_Produto = P.Cd_Produto'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, ES.Sg_Estoque, ES.Sg_Venda, ES.Qt_Saldo,'
      '  ES.Qt_Liquido, ES.Qt_Saldo_Venda, ES.Qt_Liquido_Venda, PP.Vl_Custo,'
      '  L.Nm_Laboratorio, PP.Vl_Venda, P.Qt_Est_Minimo, P.Qt_Est_Maximo,'
      '  P.Cd_Fabricante, Loc.Ds_Localizacao'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Localizacao Loc'
      'on'
      '  Loc.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = P.Cd_Produto'
      ''
    )
    SQLOther1.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, ES.Sg_Estoque, ES.Sg_Venda, PP.Vl_Custo,'
      '  PP.Vl_Venda, Cast( '''' '''' as VarChar( 50 ) ) as Nm_Laboratorio,'
      '  P.Qt_Est_Minimo, P.Qt_Est_Maximo,'
      '  sum( ES.Qt_Saldo ) as Qt_Saldo,'
      '  sum( ES.Qt_Liquido ) as Qt_Liquido,'
      '  sum( ES.Qt_Saldo_Venda ) as Qt_Saldo_Venda,'
      '  sum( ES.Qt_Liquido_Venda ) as Qt_Liquido_Venda, '
      '  Cast( '''''' as VarChar( 20 ) ) as Cd_Fabricante,'
      '  Loc.Ds_Localizacao'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Localizacao Loc'
      'on'
      '  Loc.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = P.Cd_Produto'
    )
    Left = 100
    Top = 245
    object ADODsInventariocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsInventarionm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsInventariosg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsInventariosg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsInventarioqt_saldo: TBCDField
      FieldName = 'qt_saldo'
      Precision = 14
      Size = 7
    end
    object ADODsInventarioqt_liquido: TBCDField
      FieldName = 'qt_liquido'
      Precision = 14
      Size = 7
    end
    object ADODsInventarioqt_saldo_venda: TBCDField
      FieldName = 'qt_saldo_venda'
      Precision = 32
      Size = 22
    end
    object ADODsInventarioqt_liquido_venda: TBCDField
      FieldName = 'qt_liquido_venda'
      Precision = 32
      Size = 22
    end
    object ADODsInventariovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 3
    end
    object ADODsInventarionm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsInventariodp_produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_produto'
      Size = 250
      Calculated = True
    end
    object ADODsInventariovl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 12
      Size = 3
    end
    object ADODsInventarioVl_Total_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total_Custo'
      Calculated = True
    end
    object ADODsInventarioVl_Total_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total_Venda'
      Calculated = True
    end
    object ADODsInventarioMg_Lucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Mg_Lucro'
      Calculated = True
    end
    object ADODsInventarioqt_est_minimo: TBCDField
      FieldName = 'qt_est_minimo'
      Precision = 18
      Size = 3
    end
    object ADODsInventarioqt_est_maximo: TBCDField
      FieldName = 'qt_est_maximo'
      Precision = 18
      Size = 3
    end
    object ADODsInventarioQt_Necessario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_Necessario'
      Calculated = True
    end
    object ADODsInventariocd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsInventarioDs_Localizacao: TStringField
      FieldName = 'Ds_Localizacao'
      Size = 50
    end
  end
  object DsInventario: TDataSource
    DataSet = ADODsInventario
    Left = 70
    Top = 245
  end
  object DsEtiqueta: TDataSource
    DataSet = ADODsEtiqueta
    Left = 140
    Top = 245
  end
  object ADODsEtiqueta: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Sg_Venda, P.Nm_Abreviado,'#13#10'  P.Cd_Fabricante, P.Cd_Barra, L.Nm_Laboratorio'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Nm_Laboratorio = P.Cd_Laboratorio'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Sg_Venda, P.Nm_Abreviado,'
      '  P.Cd_Fabricante, P.Cd_Barra, L.Nm_Laboratorio'
      ''
      'from'
      '  Produto P'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
    )
    Left = 170
    Top = 245
    object ADODsEtiquetacd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsEtiquetanm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsEtiquetasg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsEtiquetasg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsEtiquetanm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsEtiquetacd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsEtiquetacd_barra: TStringField
      FieldName = 'cd_barra'
    end
    object ADODsEtiquetanm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
  end
end
