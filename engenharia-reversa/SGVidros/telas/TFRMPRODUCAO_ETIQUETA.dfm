object FrmProducao_Etiqueta: TFrmProducao_Etiqueta
  Left = 0
  Top = 0
  Caption = 'Producao_Etiqueta'
  ClientHeight = 590
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SctRepPronta_01: TSctReport
    Left = 96
    Top = 8
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
    TabOrder = 1
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 58
    SLeft = 8
    SWidth = 802
    SHeight = 440
    MTop = 8
    MLeft = 96
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para Impressora T'#233'rmica'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand1
      Detail = SctBand3
      Foot = SctBand5
      PageHead = SctBand2
      PageFoot = SctBand4
      DataSource = DsReport
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
      object SctDBVar1: TSctDBVar
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
      object SctDataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DsReport
      end
      object SctDataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DsSetor
      end
      object adodsreportNm_EmitenteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide17: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel3
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsreportDs_AmbienteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Ambiente'
        DataSource = DsReport
        UpdateLevel = SctLevel3
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand1: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel1
        Visible = False
      end
      object SctBand2: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel2
        Visible = False
      end
      object SctBand3: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel3
        NewPage = True
        OnBeforePrint = SctBand3BeforePrint
        object SctTxtFilial_02: TSctvarlabel
          Left = 0
          Top = 9
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Nome da Filial Abreviado'
        end
        object SctTxtEndereco_02: TSctvarlabel
          Left = -1
          Top = 25
          Width = 373
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'endere'#231'o da filial'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 3
          Top = 43
          Width = 46
          Height = 17
          Caption = 'Cliente:'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 48
          Top = 43
          Width = 325
          Height = 17
          Variable = adodsreportNm_EmitenteVar1
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 52
          Top = 61
          Width = 320
          Height = 36
          WrapText = True
          Variable = adodsreportNm_ProdutoVar1
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 4
          Top = 63
          Width = 48
          Height = 17
          Caption = 'Produto:'
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 4
          Top = 109
          Width = 61
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Medidas:'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 64
          Top = 108
          Width = 308
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Variable = adodsreportDp_DetalheVar1
        end
        object SctLine2: TSctLine
          Left = 0
          Top = 145
          Width = 373
          Height = 5
          AlignVertical = laMiddle
        end
        object SctBarCodeLabel1: TSctBarCodeLabel
          Left = 5
          Top = 151
          Width = 366
          Height = 39
          Variable = adodsreportBarCodeVar1
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 5
          Top = 190
          Width = 366
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar1
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctTxtOrcamento_02: TSctvarlabel
          Left = 4
          Top = 207
          Width = 367
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Pedido do Cliente:'
        end
        object Sctvarlabel72: TSctvarlabel
          Left = 5
          Top = 94
          Width = 366
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          Variable = adodsreportDs_AmbienteVar1
        end
      end
      object SctBand4: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel4
        Visible = False
      end
      object SctBand5: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel5
        Visible = False
      end
    end
  end
  object SctRepModelo_01: TSctReport
    Left = 8
    Top = 8
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
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_01BeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 84
    SLeft = 84
    SWidth = 802
    SHeight = 422
    MTop = 8
    MLeft = 8
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 1'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand6
      Detail = SctBdEtiqueta
      Foot = SctBand10
      PageHead = SctBand7
      PageFoot = SctBand9
      DataSource = DsReport
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
      object SctLevel10: TSctLevel
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
      object SctDataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsFilial
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
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DsReport
      end
      object adodsreportDt_InicioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Inicio'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_PrevistoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Previsto'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_TerminoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Termino'
        DataSource = DsReport
        UpdateLevel = SctLevel8
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
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DsSetor
      end
      object adodsreportNm_FuncionarioVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Funcionario'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide16: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel8
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsreportDs_AmbienteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Ambiente'
        DataSource = DsReport
        UpdateLevel = SctLevel8
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand6: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel6
        Visible = False
      end
      object SctBand7: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel7
        Visible = False
      end
      object SctBdEtiqueta: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel8
        NewPage = True
        OnBeforePrint = SctBdEtiquetaBeforePrint
        OnAfterPrint = SctBdEtiquetaAfterPrint
        object SctTxtFilial_01: TSctvarlabel
          Left = 0
          Top = 9
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Nome da Filial Abreviado'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 3
          Top = 25
          Width = 46
          Height = 17
          Caption = 'Cliente:'
        end
        object SctVarCliente: TSctvarlabel
          Left = 48
          Top = 25
          Width = 325
          Height = 17
          Variable = adodsreportNm_EmitenteVar
        end
        object SctVarProduto: TSctvarlabel
          Left = 52
          Top = 58
          Width = 320
          Height = 36
          WrapText = True
          Variable = adodsreportNm_ProdutoVar
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 4
          Top = 60
          Width = 48
          Height = 17
          Caption = 'Produto:'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 4
          Top = 113
          Width = 61
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Medidas:'
        end
        object SctVarMedidas: TSctvarlabel
          Left = 64
          Top = 112
          Width = 308
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Variable = adodsreportDp_DetalheVar
        end
        object SctLine1: TSctLine
          Left = 0
          Top = 147
          Width = 373
          Height = 5
          AlignVertical = laMiddle
        end
        object SctBC: TSctBarCodeLabel
          Left = 5
          Top = 153
          Width = 366
          Height = 39
          Variable = adodsreportBarCodeVar
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object SctTxtBarCode: TSctvarlabel
          Left = 5
          Top = 192
          Width = 366
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctTxtOrcamento_01: TSctvarlabel
          Left = 4
          Top = 209
          Width = 367
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Or'#231'amento: XYZ                     Pedido do Cliente:'
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 3
          Top = 42
          Width = 62
          Height = 17
          Caption = 'Vendedor:'
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 65
          Top = 42
          Width = 308
          Height = 17
          Variable = adodsreportNm_FuncionarioVar1
        end
        object Sctvarlabel69: TSctvarlabel
          Left = 4
          Top = 94
          Width = 367
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsreportDs_AmbienteVar
        end
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel9
        Visible = False
      end
      object SctBand10: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel10
        Visible = False
      end
    end
  end
  object SctRepModelo_04: TSctReport
    Left = 360
    Top = 8
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
    TabOrder = 4
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_04BeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 27
    SLeft = 94
    SWidth = 802
    SHeight = 422
    MTop = 8
    MLeft = 360
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage5: TSctGrouppage
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 1'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand20
      Detail = SctBand22
      Foot = SctBand24
      PageHead = SctBand21
      PageFoot = SctBand23
      DataSource = DsReport
      Order = 1
      object SctLevel21: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel22: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel23: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel24: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel25: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar5: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel21
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar5: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel22
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel23
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide16: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel23
        DataSource = DmMaster.DsFilial
      end
      object SctDBVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel23
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctDataSourceGuide17: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel23
        DataSource = DsReport
      end
      object SctDataSourceGuide18: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel23
        DataSource = DsSetor
      end
      object adodsreportBarCodeVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel23
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel23
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = SctLevel23
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsconectadomesNm_HostVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Host'
        DataSource = DmMaster.DsConecadoMes
        UpdateLevel = SctLevel23
        AutoVar = True
        ID = vidAutoDataVar
      end
      object SctBand20: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel21
        Visible = False
      end
      object SctBand21: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel22
        Visible = False
      end
      object SctBand22: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel23
        NewPage = True
        OnBeforePrint = SctBdEtiquetaBeforePrint
        OnAfterPrint = SctBdEtiquetaAfterPrint
        object SctTxtOrcamento_04: TSctvarlabel
          Left = 5
          Top = 78
          Width = 217
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Pedido: 999999'
        end
        object SctVarMedida: TSctvarlabel
          Left = 224
          Top = 78
          Width = 136
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'dimens'#227'o'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 224
          Top = 104
          Width = 136
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Alt x Larg'
        end
        object SctVarEmitente_04: TSctvarlabel
          Left = 5
          Top = 95
          Width = 219
          Height = 35
          WrapText = True
          Lines.Strings = (
            'Cliente:'
            'fteste'
          )
        end
        object SctVarProduto_04: TSctvarlabel
          Left = 5
          Top = 130
          Width = 355
          Height = 17
          Caption = 'Produto:'
        end
        object SctVarProducao_04: TSctvarlabel
          Left = 5
          Top = 165
          Width = 180
          Height = 17
          Caption = 'Data de Produ'#231#227'o: dd/mm/yyyy'
        end
        object SctBarCodeLabel4: TSctBarCodeLabel
          Left = 5
          Top = 181
          Width = 355
          Height = 39
          Variable = adodsreportBarCodeVar4
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 218
          Top = 165
          Width = 142
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsreportBarCodeVar4
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctVarCidade_04: TSctvarlabel
          Left = 5
          Top = 219
          Width = 355
          Height = 17
          Caption = 'Cidade'
        end
        object SctVarPedCli_04: TSctvarlabel
          Left = 200
          Top = 219
          Width = 161
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Cidade'
        end
        object Sctvarlabel47: TSctvarlabel
          Left = 5
          Top = 147
          Width = 356
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
        end
      end
      object SctBand23: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel24
        Visible = False
      end
      object SctBand24: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel25
        Visible = False
      end
    end
  end
  object SctRepModelo_02: TSctReport
    Left = 184
    Top = 8
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
    TabOrder = 2
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_02BeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 44
    SLeft = 31
    SWidth = 802
    SHeight = 478
    MTop = 8
    MLeft = 184
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 2'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctBand12
      Foot = SctBand14
      PageHead = SctBand11
      PageFoot = SctBand13
      DataSource = DsReport
      Order = 1
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
        IsHeader = True
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
      object SctLevel15: TSctLevel
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
        UpdateLevel = SctLevel11
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar3: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel12
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DmMaster.DsFilial
      end
      object SctDataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DsReport
      end
      object SctDataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DsSetor
      end
      object adodsfilialDp_FilialVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_FantasiaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Fantasia'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportPs_ProdutoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ps_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel13
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
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_InicioVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Inicio'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_PrevistoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Previsto'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_ProducaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Producao'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EntregaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Entrega'
        DataSource = DsReport
        UpdateLevel = SctLevel13
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel13
        DataSource = DmMaster.DsConecadoMes
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel11
        Visible = False
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel12
        Visible = False
      end
      object SctBand12: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel13
        NewPage = True
        OnBeforePrint = SctBand12BeforePrint
        object SctImgModel_02: TSctImageLabel
          Left = -1
          Top = 9
          Width = 374
          Height = 230
          Center = True
          Stretch = True
        end
        object SctTxtFilial_03: TSctvarlabel
          Left = -1
          Top = 9
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Nome da Filial Abreviado'
        end
        object SctTxtEndereco_03: TSctvarlabel
          Left = -2
          Top = 25
          Width = 374
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'endere'#231'o da filial'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 1
          Top = 58
          Width = 46
          Height = 17
          Caption = 'Cliente:'
        end
        object SctVarCliente_1: TSctvarlabel
          Left = 44
          Top = 58
          Width = 328
          Height = 17
          Caption = 'Nome do Cliente'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 50
          Top = 91
          Width = 322
          Height = 36
          WrapText = True
          Variable = adodsreportNm_ProdutoVar2
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 1
          Top = 93
          Width = 48
          Height = 17
          Caption = 'Produto:'
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 1
          Top = 127
          Width = 61
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Medidas:'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 60
          Top = 127
          Width = 312
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDp_DetalheVar2
        end
        object SctLine3: TSctLine
          Left = 1
          Top = 177
          Width = 373
          Height = 5
          AlignVertical = laMiddle
        end
        object SctBarCodeLabel2: TSctBarCodeLabel
          Left = 6
          Top = 183
          Width = 366
          Height = 39
          Variable = adodsreportBarCodeVar2
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 6
          Top = 222
          Width = 366
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar2
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctVarPedCli: TSctvarlabel
          Left = -1
          Top = 42
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Pedido: 999999 Pedido do Cliente: 999999 '
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 56
          Top = 74
          Width = 316
          Height = 17
          Variable = adodsreportNm_FantasiaVar
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 1
          Top = 74
          Width = 56
          Height = 17
          Caption = 'Fantasia:'
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 1
          Top = 159
          Width = 34
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Rota:'
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 37
          Top = 159
          Width = 238
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDs_RotaVar
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 1
          Top = 143
          Width = 46
          Height = 17
          Caption = 'Cidade:'
        end
        object SctVarCidade: TSctvarlabel
          Left = 46
          Top = 143
          Width = 228
          Height = 17
          Caption = 'Cidade-Estado'
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 304
          Top = 143
          Width = 68
          Height = 17
          Variable = adodsreportDt_PrevistoVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 275
          Top = 143
          Width = 28
          Height = 17
          Caption = 'Ent.:'
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 304
          Top = 159
          Width = 68
          Height = 17
          Variable = adodsreportDt_EntregaVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 275
          Top = 159
          Width = 28
          Height = 17
          Caption = 'Fab.:'
        end
      end
      object SctBand13: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel14
        Visible = False
      end
      object SctBand14: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel15
        Visible = False
      end
    end
  end
  object SctRepModelo_03: TSctReport
    Left = 272
    Top = 8
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
    TabOrder = 3
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 24
    SLeft = 33
    SWidth = 802
    SHeight = 478
    MTop = 8
    MLeft = 272
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage4: TSctGrouppage
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 3'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand15
      Detail = SctBand17
      Foot = SctBand19
      PageHead = SctBand16
      PageFoot = SctBand18
      DataSource = DsReport
      Order = 1
      object SctLevel16: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel17: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel18: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel19: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel20: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar4: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel16
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar4: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel17
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DmMaster.DsFilial
      end
      object SctDataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DsReport
      end
      object SctDataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DsSetor
      end
      object SctDBVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_InicioVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Inicio'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_FantasiaVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Fantasia'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDs_RotaVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Rota'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_ProducaoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Producao'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_FuncionarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Funcionario'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_PrevistoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Previsto'
        DataSource = DsReport
        UpdateLevel = SctLevel18
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel18
        DataSource = DmMaster.DsConecadoMes
      end
      object SctBand15: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel16
        Visible = False
      end
      object SctBand16: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel17
        Visible = False
      end
      object SctBand17: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel18
        NewPage = True
        OnBeforePrint = SctBand17BeforePrint
        object SctTxtFilial_04: TSctvarlabel
          Left = -1
          Top = 9
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Caption = 'Nome da Filial Abreviado'
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 1
          Top = 42
          Width = 46
          Height = 17
          Caption = 'Cliente:'
        end
        object SctVarCliente_2: TSctvarlabel
          Left = 44
          Top = 42
          Width = 328
          Height = 17
          Caption = 'Nome do Cliente'
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 50
          Top = 75
          Width = 322
          Height = 36
          WrapText = True
          Variable = adodsreportNm_ProdutoVar3
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 1
          Top = 77
          Width = 48
          Height = 17
          Caption = 'Produto:'
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 1
          Top = 111
          Width = 61
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Medidas:'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 60
          Top = 111
          Width = 312
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDp_DetalheVar3
        end
        object SctLine4: TSctLine
          Left = 1
          Top = 177
          Width = 373
          Height = 5
          AlignVertical = laMiddle
        end
        object SctBarCodeLabel3: TSctBarCodeLabel
          Left = 6
          Top = 183
          Width = 366
          Height = 39
          Variable = adodsreportBarCodeVar3
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 6
          Top = 222
          Width = 366
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar3
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctVarPedCli_2: TSctvarlabel
          Left = -1
          Top = 26
          Width = 373
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Pedido: 999999 Pedido do Cliente: 999999 '
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 56
          Top = 58
          Width = 316
          Height = 17
          Variable = adodsreportNm_FantasiaVar1
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 1
          Top = 58
          Width = 56
          Height = 17
          Caption = 'Fantasia:'
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 1
          Top = 159
          Width = 34
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Rota:'
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 37
          Top = 159
          Width = 238
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDs_RotaVar1
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 1
          Top = 127
          Width = 46
          Height = 17
          Caption = 'Cidade:'
        end
        object SctVarCidade_2: TSctvarlabel
          Left = 46
          Top = 127
          Width = 225
          Height = 17
          Caption = 'Cidade-Estado'
        end
        object Sctvarlabel42: TSctvarlabel
          Left = 304
          Top = 127
          Width = 68
          Height = 17
          Variable = adodsreportDt_PrevistoVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 272
          Top = 127
          Width = 31
          Height = 17
          Caption = 'Prev:'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 304
          Top = 159
          Width = 68
          Height = 17
          Variable = adodsreportDt_ProducaoVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 275
          Top = 159
          Width = 28
          Height = 17
          Caption = 'Fab.:'
        end
        object Sctvarlabel27: TSctvarlabel
          Left = 1
          Top = 143
          Width = 63
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Vendedor:'
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 66
          Top = 143
          Width = 306
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportNm_FuncionarioVar
        end
      end
      object SctBand18: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel19
        Visible = False
      end
      object SctBand19: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel20
        Visible = False
      end
    end
  end
  object SctRepModelo_05: TSctReport
    Left = 448
    Top = 8
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
    TabOrder = 5
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_05BeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 19
    SLeft = 97
    SWidth = 802
    SHeight = 422
    MTop = 8
    MLeft = 448
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage6: TSctGrouppage
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 1'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand25
      Detail = SctBand27
      Foot = SctBand29
      PageHead = SctBand26
      PageFoot = SctBand28
      DataSource = DsReport
      Order = 1
      object SctLevel26: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel27: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel28: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel29: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel30: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar6: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel26
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar6: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel27
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide19: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide20: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DmMaster.DsFilial
      end
      object SctDBVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctDataSourceGuide21: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DsReport
      end
      object SctDataSourceGuide22: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DsSetor
      end
      object adodsreportNm_EmitenteVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar5: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EntregaVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Entrega'
        DataSource = DsReport
        UpdateLevel = SctLevel28
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
        UpdateLevel = SctLevel28
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel28
        DataSource = DmMaster.DsConecadoMes
      end
      object SctBand25: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel26
        Visible = False
      end
      object SctBand26: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel27
        Visible = False
      end
      object SctBand27: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 266
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel28
        NewPage = True
        OnBeforePrint = SctBdEtiquetaBeforePrint
        OnAfterPrint = SctBdEtiquetaAfterPrint
        object SctTxtFilial_05: TSctvarlabel
          Left = -1
          Top = 11
          Width = 241
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Nome da Filial Abreviado'
        end
        object Sctvarlabel50: TSctvarlabel
          Left = -1
          Top = 48
          Width = 46
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Cliente:'
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 48
          Top = 48
          Width = 325
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsreportNm_EmitenteVar2
        end
        object Sctvarlabel52: TSctvarlabel
          Left = 52
          Top = 81
          Width = 320
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Variable = adodsreportNm_ProdutoVar4
        end
        object Sctvarlabel53: TSctvarlabel
          Left = -1
          Top = 83
          Width = 54
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Produto:'
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 5
          Top = 119
          Width = 367
          Height = 55
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Variable = adodsreportDp_DetalheVar4
        end
        object SctBarCodeLabel5: TSctBarCodeLabel
          Left = 5
          Top = 173
          Width = 366
          Height = 39
          Variable = adodsreportBarCodeVar5
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object Sctvarlabel56: TSctvarlabel
          Left = 5
          Top = 212
          Width = 366
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar5
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object SctTxtOrcamento_05: TSctvarlabel
          Left = -1
          Top = 65
          Width = 121
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Or'#231'amento: XYZ                     Pedido do Cliente:'
        end
        object Sctvarlabel60: TSctvarlabel
          Left = 293
          Top = 30
          Width = 68
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsreportDt_EntregaVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel61: TSctvarlabel
          Left = 229
          Top = 30
          Width = 63
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Entrega:'
        end
        object SctVarRota_05: TSctvarlabel
          Left = 135
          Top = 65
          Width = 238
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Rota: xyz'
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 294
          Top = 11
          Width = 68
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsreportDt_EmissaoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 230
          Top = 11
          Width = 62
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Emiss'#227'o:'
        end
      end
      object SctBand28: TSctBand
        Left = 0
        Top = 311
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel29
        Visible = False
      end
      object SctBand29: TSctBand
        Left = 0
        Top = 326
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel30
        Visible = False
      end
    end
  end
  object SctRepModelo_06: TSctReport
    Left = 536
    Top = 8
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
    TabOrder = 6
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_05BeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 125
    SLeft = 179
    SWidth = 802
    SHeight = 422
    MTop = 8
    MLeft = 536
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage7: TSctGrouppage
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 1'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand30
      Detail = SctBand32
      Foot = SctBand34
      PageHead = SctBand31
      PageFoot = SctBand33
      DataSource = DsReport
      Order = 1
      object SctLevel31: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel32: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel33: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel34: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel35: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar7: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel31
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar7: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel32
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide23: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide24: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DmMaster.DsFilial
      end
      object SctDBVar5: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctDataSourceGuide25: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DsReport
      end
      object SctDataSourceGuide26: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DsSetor
      end
      object adodsreportNm_EmitenteVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_ProdutoVar5: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Produto'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDp_DetalheVar5: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Detalhe'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar6: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EmissaoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Emissao'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EntregaVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Entrega'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNr_OrcamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Orcamento'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportId_OrcamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Id_Orcamento'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel33
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsreportNr_Pedido_EmitenteVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Pedido_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel33
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctBand30: TSctBand
        Left = 0
        Top = 0
        Width = 836
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel31
        Visible = False
      end
      object SctBand31: TSctBand
        Left = 0
        Top = 15
        Width = 836
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel32
        Visible = False
      end
      object SctBand32: TSctBand
        Left = 0
        Top = 30
        Width = 836
        Height = 266
        ParentColor = True
        BandName = 'SctBdEtiqueta'
        Updatelevel = SctLevel33
        NewPage = True
        OnBeforePrint = SctBdEtiquetaBeforePrint
        OnAfterPrint = SctBdEtiquetaAfterPrint
        object SctTxtFilial_06: TSctvarlabel
          Left = -2
          Top = 9
          Width = 241
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Nome da Filial Abreviado'
        end
        object Sctvarlabel58: TSctvarlabel
          Left = 1
          Top = 46
          Width = 46
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Cliente:'
        end
        object Sctvarlabel59: TSctvarlabel
          Left = 46
          Top = 46
          Width = 325
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportNm_EmitenteVar3
        end
        object Sctvarlabel62: TSctvarlabel
          Left = 59
          Top = 95
          Width = 318
          Height = 42
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Variable = adodsreportNm_ProdutoVar5
        end
        object Sctvarlabel63: TSctvarlabel
          Left = 1
          Top = 97
          Width = 59
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Produto:'
        end
        object Sctvarlabel64: TSctvarlabel
          Left = 5
          Top = 138
          Width = 367
          Height = 35
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Variable = adodsreportDp_DetalheVar5
        end
        object SctBarCodeLabel6: TSctBarCodeLabel
          Left = 7
          Top = 171
          Width = 256
          Height = 39
          Variable = adodsreportBarCodeVar6
          BarCodeBrush.Color = clBlack
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 7
          Top = 210
          Width = 256
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          Variable = adodsreportBarCodeVar6
          DataFormat.DisplayFormat = '##.#######.#######;0; '
        end
        object Sctvarlabel66: TSctvarlabel
          Left = 203
          Top = 171
          Width = 160
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsreportNr_OrcamentoVar
        end
        object Sctvarlabel67: TSctvarlabel
          Left = 293
          Top = 28
          Width = 68
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsreportDt_EntregaVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel68: TSctvarlabel
          Left = 229
          Top = 28
          Width = 63
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Entrega:'
        end
        object SctVarRota_06: TSctvarlabel
          Left = 1
          Top = 79
          Width = 238
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Rota: xyz'
        end
        object Sctvarlabel70: TSctvarlabel
          Left = 294
          Top = 9
          Width = 68
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsreportDt_EmissaoVar1
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel71: TSctvarlabel
          Left = 230
          Top = 9
          Width = 62
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Emiss'#227'o:'
        end
        object SctVarPeca_01: TSctvarlabel
          Left = 197
          Top = 79
          Width = 167
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'PC X/Y'
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 1
          Top = 62
          Width = 106
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Pedido do Cliente:'
        end
        object Sctvarlabel57: TSctvarlabel
          Left = 105
          Top = 62
          Width = 266
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportNr_Pedido_EmitenteVar1
        end
      end
      object SctBand33: TSctBand
        Left = 0
        Top = 311
        Width = 836
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel34
        Visible = False
      end
      object SctBand34: TSctBand
        Left = 0
        Top = 326
        Width = 836
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel35
        Visible = False
      end
    end
  end
  object SctRepModelo_07WG: TSctReport
    Left = 624
    Top = 8
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
    TabOrder = 7
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepModelo_07WGBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 19
    SLeft = 97
    SWidth = 802
    SHeight = 422
    MTop = 8
    MLeft = 624
    SAlign = alNone
    Version = vAce1_0
    object SctGrouppage8: TSctGrouppage
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
      PageSetup.Source = psUpper
      PageSetup.Duplex = pdSimplex
      PageSetup.Height = 29.7
      PageSetup.Width = 21.0
      PageSetup.PrintQuality = pqHigh
      PageSetup.Units = unitCentiMeters
      PageSetup.Destination = destPrinter
      PageSetup.LeftMargin = 0.1
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Etiquetas para I.T. Mod 1'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand35
      Detail = SctBdMod07WG
      Foot = SctBand39
      PageHead = SctBand36
      PageFoot = SctBand38
      DataSource = DsReport
      Order = 1
      object SctLevel36: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel37: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object SctLevel38: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel39: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctLevel40: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object SctDateTimeVar8: TSctDateTimeVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel36
        AutoVar = True
        ID = vidDateTimeVar
      end
      object SctPageVar8: TSctPageVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        UpdateLevel = SctLevel37
        AutoVar = True
        ID = vidPageVar
      end
      object SctDataSourceGuide27: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DmMaster.DsUsuario
      end
      object SctDataSourceGuide28: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DmMaster.DsFilial
      end
      object SctDBVar6: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object SctDataSourceGuide29: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DsReport
      end
      object SctDataSourceGuide30: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DsSetor
      end
      object adodsreportNr_OrcamentoVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Orcamento'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNm_EmitenteVar4: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportNr_Pedido_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Pedido_Emitente'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EntregaVar3: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Entrega'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportDt_EmissaoVar2: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Emissao'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreportBarCodeVar7: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'BarCode'
        DataSource = DsReport
        UpdateLevel = SctLevel38
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel38
        DataSource = DmMaster.DsConecadoMes
      end
      object SctBand35: TSctBand
        Left = 0
        Top = 0
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel36
        Visible = False
      end
      object SctBand36: TSctBand
        Left = 0
        Top = 15
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = SctLevel37
        Visible = False
      end
      object SctBdMod07WG: TSctBand
        Left = 0
        Top = 30
        Width = 840
        Height = 249
        ParentColor = True
        BandName = 'SctBdMod07WG'
        Updatelevel = SctLevel38
        NewPage = True
        OnBeforePrint = SctBdMod07WGBeforePrint
        object SctVarDt_PedidoM07: TSctvarlabel
          Left = 160
          Top = 10
          Width = 77
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDt_EmissaoVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctVarNr_PedidoM07: TSctvarlabel
          Left = 243
          Top = 10
          Width = 110
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsreportNr_OrcamentoVar1
          Caption = '0000000'
        end
        object SctVarDt_EntregaM07: TSctvarlabel
          Left = 160
          Top = 47
          Width = 77
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportDt_EntregaVar3
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctVarNr_PedCliM07: TSctvarlabel
          Left = 253
          Top = 48
          Width = 77
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsreportNr_Pedido_EmitenteVar
          Caption = '0000000'
        end
        object SctVarNm_EmitenteM07: TSctvarlabel
          Left = 19
          Top = 83
          Width = 343
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Variable = adodsreportNm_EmitenteVar4
        end
        object SctVarNm_ProdutoM07: TSctvarlabel
          Left = 19
          Top = 119
          Width = 343
          Height = 51
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laCenter
          WrapText = True
          Stretch = True
          Lines.Strings = (
            'Produto'
            'Medida'
            'Digitos do c'#243'digo de barras'
          )
        end
        object SctBarCodeLabel7: TSctBarCodeLabel
          Left = 19
          Top = 163
          Width = 343
          Height = 24
          Variable = adodsreportBarCodeVar7
          BarCodeBrush.Color = clBlack
          AlignVertical = laTop
          AlignHorizontal = laCenter
          BarCodeType = bct2of5
        end
      end
      object SctBand38: TSctBand
        Left = 0
        Top = 294
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Page Footer'
        Updatelevel = SctLevel39
        Visible = False
      end
      object SctBand39: TSctBand
        Left = 0
        Top = 309
        Width = 840
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = SctLevel40
        Visible = False
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 605
    Top = 293
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsReportAfterOpen
    OnCalcFields = ADODsReportCalcFields
    CommandText = '--------------- Etiqueta de produ'#231#227'o'#13#10'select'#13#10'  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,'#13#10'  P.Dt_Producao,'#13#10#13#10'  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,'#13#10'  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,'#13#10'  PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10#13#10'  OI.Fl_Medida, OI.Ds_Ambiente,'#13#10#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,'#13#10'  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota, O.Dt_Emissao,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end,'#13#10#13#10'  Ps_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Ps_Produto'#13#10'      else POPI.Ps_Produto'#13#10#13#10'    end,'#13#10#13#10'  Ds_Detalhe ='#13#10'    case'#13#10'      when OD.Ds_Detalhe is not null then OD.Ds_Detalhe'#13#10'      else OPI.Cd_Peca + '''' - '''' + PP.Ds_Peca'#13#10'    end,'#13#10#13#10'  F.Nm_Funcionario, O.Nr_Entrega, O.Dt_Confirmado,'#13#10#13#10'  Nr_Detalhes ='#13#10'    ('#13#10'    select'#13#10'      sum( ODC.Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Detalhe ODC'#13#10#13#10'    where'#13#10'      ODC.Cd_Filial    = OI.Cd_Filial and'#13#10'      ODC.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'      ODC.Nr_Item      = OI.Nr_Item'#13#10'    ),'#13#10#13#10'  Nr_Ordem ='#13#10'    ('#13#10'    select'#13#10'      count( * )'#13#10#13#10'    from'#13#10'      Producao_Item PIC'#13#10#13#10'    where'#13#10'      PIC.Cd_Filial    = PRI.Cd_Filial and'#13#10'      PIC.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'      PIC.Nr_Item      = PRI.Nr_Item and'#13#10'      PIC.Id_Producao <= PRI.Id_Producao'#13#10'    ),'#13#10#13#10'  Nr_Itens ='#13#10'    ('#13#10'    select'#13#10'      Count( * )'#13#10#13#10'    from'#13#10'      Orcamento_Item OIC'#13#10#13#10'    where'#13#10'      OIC.Cd_Filial    = OI.Cd_Filial and'#13#10'      OIC.Nr_Orcamento = OI.Nr_Orcamento'#13#10'    )'#13#10#13#10'from'#13#10'  Producao P'#13#10#13#10'inner join'#13#10'  Producao_Item PRI'#13#10'on'#13#10'  PRI.Cd_Filial   = P.Cd_Filial and'#13#10'  PRI.Nr_Producao = P.Nr_Producao'#13#10'  /* Id_Producao */'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = PRI.Cd_Filial and'#13#10'  O.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OD.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OD.Nr_Item      = PRI.Nr_Item and'#13#10'  OD.Nr_Detalhe   = PRI.Nr_Detalhe'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Projeto_Peca PP'#13#10'on'#13#10'  PP.Cd_Peca = OPI.Cd_Peca'#13#10#13#10'where'#13#10'  P.Cd_Filial   = :Cd_Filial and'#13#10'  P.Nr_Producao = :Nr_Producao'#13#10#13#10'  /* Pronto */'#13#10#13#10'order by'#13#10'  P.Cd_Filial, P.Nr_Producao, PRI.Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      '--------------- Etiqueta de produ'#231#227'o'
      'select'
      '  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,'
      '  P.Dt_Producao,'
      ''
      '  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,'
      '  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,'
      '  PRI.Nr_Altura, PRI.Id_Reproducao,'
      ''
      '  OI.Fl_Medida, OI.Ds_Ambiente,'
      ''
      '  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Nr_Pedido_Emitente,'
      '  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota, O.Dt_Emissao,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end,'
      ''
      '  Ps_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Ps_Produto'
      '      else POPI.Ps_Produto'
      ''
      '    end,'
      ''
      '  Ds_Detalhe ='
      '    case'
      '      when OD.Ds_Detalhe is not null then OD.Ds_Detalhe'
      '      else OPI.Cd_Peca + '''' - '''' + PP.Ds_Peca'
      '    end,'
      ''
      '  F.Nm_Funcionario, O.Nr_Entrega, O.Dt_Confirmado,'
      ''
      '  Nr_Detalhes ='
      '    ('
      '    select'
      '      sum( ODC.Qt_Item )'
      ''
      '    from'
      '      Orcamento_Detalhe ODC'
      ''
      '    where'
      '      ODC.Cd_Filial    = OI.Cd_Filial and'
      '      ODC.Nr_Orcamento = OI.Nr_Orcamento and'
      '      ODC.Nr_Item      = OI.Nr_Item'
      '    ),'
      ''
      '  Nr_Ordem ='
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      Producao_Item PIC'
      ''
      '    where'
      '      PIC.Cd_Filial    = PRI.Cd_Filial and'
      '      PIC.Nr_Orcamento = PRI.Nr_Orcamento and'
      '      PIC.Nr_Item      = PRI.Nr_Item and'
      '      PIC.Id_Producao <= PRI.Id_Producao'
      '    ),'
      ''
      '  Nr_Itens ='
      '    ('
      '    select'
      '      Count( * )'
      ''
      '    from'
      '      Orcamento_Item OIC'
      ''
      '    where'
      '      OIC.Cd_Filial    = OI.Cd_Filial and'
      '      OIC.Nr_Orcamento = OI.Nr_Orcamento'
      '    )'
      ''
      'from'
      '  Producao P'
      ''
      'inner join'
      '  Producao_Item PRI'
      'on'
      '  PRI.Cd_Filial   = P.Cd_Filial and'
      '  PRI.Nr_Producao = P.Nr_Producao'
      '  /* Id_Producao */'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = PRI.Cd_Filial and'
      '  O.Nr_Orcamento = PRI.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PRI.Cd_Filial and'
      '  OI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OI.Nr_Item      = PRI.Nr_Item'
      ''
      'left join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = PRI.Cd_Filial and'
      '  OD.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OD.Nr_Item      = PRI.Nr_Item and'
      '  OD.Nr_Detalhe   = PRI.Nr_Detalhe'
      ''
      'left join'
      '  Produto POI'
      'on'
      '  POI.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = PRI.Cd_Filial and'
      '  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = PRI.Nr_Projeto and'
      '  OPI.Nr_Item      = PRI.Nr_Item_Projeto'
      ''
      'left join'
      '  Produto POPI'
      'on'
      '  POPI.Cd_Produto = OPI.Cd_Produto'
      ''
      'left join'
      '  Projeto_Peca PP'
      'on'
      '  PP.Cd_Peca = OPI.Cd_Peca'
      ''
      'where'
      '  P.Cd_Filial   = :Cd_Filial and'
      '  P.Nr_Producao = :Nr_Producao'
      ''
      '  /* Pronto */'
      ''
      'order by'
      '  P.Cd_Filial, P.Nr_Producao, PRI.Id_Producao'
    )
    SQLOther1.Strings = (
      '--------------- Condi'#231#227'o para etiqueta de produto pronto'
      '  and'
      '  not exists('
      '    select'
      '      Cd_Filial'
      ''
      '    from'
      '      Producao_Setor PS'
      ''
      '    where'
      '      PS.Cd_Filial   = PRI.Cd_Filial and'
      '      PS.Nr_Producao = PRI.Nr_Producao and'
      '      PS.Id_Producao = PRI.Id_Producao and'
      '      PS.Fl_Setor   <= ''''2'''
      '    )'
    )
    SQLOther2.Strings = (
      '--------------- Etiqueta de produto acabado - com ID de termino'
      'select'
      '  P.Cd_Filial, P.Nr_Producao, P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino,'
      '  P.Dt_Producao,'
      ''
      '  PRI.Id_Producao, PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe,'
      '  PRI.Nr_Projeto, PRI.Nr_Item_Projeto, PRI.Nr_Comprimento, PRI.Nr_Largura,'
      '  PRI.Nr_Altura, PRI.Id_Reproducao,'
      ''
      '  OI.Fl_Medida, OI.Ds_Ambiente,'
      ''
      '  E.Cd_Emitente, E.Nm_Emitente, O.Nr_Pedido_Emitente, E.Nm_Fantasia,'
      '  C.Nm_Cidade, C.Sg_Estado,'
      ''
      '  R.Ds_Rota,'
      ''
      '  Ds_Detalhe ='
      '    case'
      '      when OD.Ds_Detalhe is not null then OD.Ds_Detalhe'
      '      else OPI.Cd_Peca + '''' - '''' + PP.Ds_Peca'
      '    end,'
      ''
      '  F.Nm_Funcionario, O.Nr_Entrega, O.Dt_Confirmado, O.Dt_Emissao,'
      ''
      '  Nm_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Nm_Produto'
      '      else POPI.Nm_Produto'
      ''
      '    end,'
      ''
      '  Ps_Produto ='
      '    case'
      '      when PRI.Nr_Projeto is null then POI.Ps_Produto'
      '      else POPI.Ps_Produto'
      ''
      '    end,'
      ''
      '  Nr_Detalhes ='
      '    ('
      '    select'
      '      sum( ODC.Qt_Item )'
      ''
      '    from'
      '      Orcamento_Detalhe ODC'
      ''
      '    where'
      '      ODC.Cd_Filial    = OI.Cd_Filial and'
      '      ODC.Nr_Orcamento = OI.Nr_Orcamento and'
      '      ODC.Nr_Item      = OI.Nr_Item'
      '    ),'
      ''
      '  Nr_Ordem ='
      '    ('
      '    select'
      '      count( * )'
      ''
      '    from'
      '      Producao_Item PIC'
      ''
      '    where'
      '      PIC.Cd_Filial    = PRI.Cd_Filial and'
      '      PIC.Nr_Orcamento = PRI.Nr_Orcamento and'
      '      PIC.Nr_Item      = PRI.Nr_Item and'
      '      PIC.Id_Producao <= PRI.Id_Producao'
      '    ),'
      ''
      '  Nr_Itens ='
      '    ('
      '    select'
      '      Count( * )'
      ''
      '    from'
      '      Orcamento_Item OIC'
      ''
      '    where'
      '      OIC.Cd_Filial    = OI.Cd_Filial and'
      '      OIC.Nr_Orcamento = OI.Nr_Orcamento'
      '    )'
      '    '
      'from'
      '  Producao_Item PRI'
      ''
      'inner join'
      '  Producao P'
      'on'
      '  P.Cd_Filial   = PRI.Cd_Filial and'
      '  P.Nr_Producao = PRI.Nr_Producao'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = PRI.Cd_Filial and'
      '  O.Nr_Orcamento = PRI.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      '  '
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = PRI.Cd_Filial and'
      '  OI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OI.Nr_Item      = PRI.Nr_Item'
      ''
      'left join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = PRI.Cd_Filial and'
      '  OD.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OD.Nr_Item      = PRI.Nr_Item and'
      '  OD.Nr_Detalhe   = PRI.Nr_Detalhe'
      ''
      'left join'
      '  Produto POI'
      'on'
      '  POI.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = PRI.Cd_Filial and'
      '  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = PRI.Nr_Projeto and'
      '  OPI.Nr_Item      = PRI.Nr_Item_Projeto'
      ''
      'left join'
      '  Produto POPI'
      'on'
      '  POPI.Cd_Produto = OPI.Cd_Produto'
      ''
      'left join'
      '  Projeto_Peca PP'
      'on'
      '  PP.Cd_Peca = OPI.Cd_Peca'
      '  '
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'where'
      '  PRI.Cd_Filial   = :Cd_Filial and'
      '  PRI.Dt_Termino >= :Dt_Start and'
      '  PRI.Dt_Termino  < :Dt_End and'
      '  PRI.Id_Termino  = :Id_Termino'
      ''
      'order by'
      '  P.Cd_Filial, P.Nr_Producao, PRI.Id_Producao'
    )
    Left = 635
    Top = 293
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsReportDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsReportDt_Previsto: TDateTimeField
      FieldName = 'Dt_Previsto'
    end
    object ADODsReportDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsReportId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsReportNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsReportNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsReportNr_Item_Projeto: TSmallintField
      FieldName = 'Nr_Item_Projeto'
    end
    object ADODsReportNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsReportNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsReportNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsReportId_Reproducao: TSmallintField
      FieldName = 'Id_Reproducao'
    end
    object ADODsReportFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsReportDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsReportBarCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarCode'
      Size = 50
      Calculated = True
    end
    object ADODsReportNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
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
    object ADODsReportDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
    object ADODsReportPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsReportDt_Producao: TDateTimeField
      FieldName = 'Dt_Producao'
    end
    object ADODsReportNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsReportNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsReportDt_Entrega: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_Entrega'
      Calculated = True
    end
    object ADODsReportDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportId_Orcamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Id_Orcamento'
      Size = 10
      Calculated = True
    end
    object ADODsReportNr_Ordem: TIntegerField
      FieldName = 'Nr_Ordem'
      ReadOnly = True
    end
    object ADODsReportBarCodeFMT: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarCodeFMT'
      Calculated = True
    end
    object ADODsReportNr_Detalhes: TIntegerField
      FieldName = 'Nr_Detalhes'
      ReadOnly = True
    end
    object ADODsReportNr_Itens: TIntegerField
      FieldName = 'Nr_Itens'
      ReadOnly = True
    end
    object ADODsReportDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      ReadOnly = True
      Size = 63
    end
    object ADODsReportDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
  end
  object DsSetor: TDataSource
    DataSet = ADODsSetor
    Left = 670
    Top = 292
  end
  object ADODsSetor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  PS.Cd_Filial, PS.Nr_Producao, PS.Id_Producao, PS.Cd_Setor, S.Sg_Setor'#13#10#13#10'from'#13#10'  Producao_Setor PS'#13#10#13#10'inner join'#13#10'  Setor S'#13#10'on'#13#10'  S.Cd_Setor = PS.Cd_Setor'#13#10#13#10'where'#13#10'  PS.Cd_Filial   = :Cd_Filial and'#13#10'  PS.Nr_Producao = :Nr_Producao and'#13#10'  PS.Id_Producao = :Id_Producao'#13#10#13#10'order by'#13#10'  PS.Cd_Setor'
    DataSource = DsReport
    IndexFieldNames = 'Cd_Filial;Nr_Producao;Id_Producao;Cd_Setor'
    MasterFields = 'Cd_Filial;Nr_Producao;Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Id_Producao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 700
    Top = 292
    object ADODsSetorCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSetorNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsSetorId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsSetorCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsSetorSg_Setor: TStringField
      FieldName = 'Sg_Setor'
      Size = 15
    end
  end
  object ADODsTotal: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Id_Producao ) as IdProducao'#13#10#13#10'from'#13#10'  Producao_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Producao = :Nr_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 730
    Top = 293
    object ADODsTotalIdProducao: TSmallintField
      FieldName = 'IdProducao'
      ReadOnly = True
    end
  end
end
