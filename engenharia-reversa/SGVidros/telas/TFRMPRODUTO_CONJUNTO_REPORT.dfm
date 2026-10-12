object FrmProduto_Conjunto_Report: TFrmProduto_Conjunto_Report
  Left = 341
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Vendas de Conjuntos (Cestas)'
  ClientHeight = 251
  ClientWidth = 664
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
    Height = 251
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 643
    Height = 251
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 221
      Width = 637
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 3
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label6: TLabel
      Left = 3
      Top = 38
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbVendedor: TSpeedButton
      Left = 46
      Top = 51
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbVendedorClick
    end
    object Label10: TLabel
      Left = 3
      Top = 73
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 87
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label19: TLabel
      Left = 3
      Top = 109
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupoEmitente: TSpeedButton
      Left = 43
      Top = 125
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoEmitenteClick
    end
    object Label20: TLabel
      Left = 322
      Top = 109
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 362
      Top = 125
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label2: TLabel
      Left = 3
      Top = 147
      Width = 87
      Height = 13
      Caption = 'Grupo de Produto:'
    end
    object SbProGrupo: TSpeedButton
      Left = 43
      Top = 163
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Produtos'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProGrupoClick
    end
    object Label3: TLabel
      Left = 322
      Top = 147
      Width = 106
      Height = 13
      Caption = 'SubGrupo de Produto:'
    end
    object SbProSubGrupo: TSpeedButton
      Left = 362
      Top = 163
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Produtos'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProSubGrupoClick
    end
    object Label4: TLabel
      Left = 3
      Top = 183
      Width = 89
      Height = 13
      Caption = 'Classe de Produto:'
    end
    object SbProClasse: TSpeedButton
      Left = 43
      Top = 199
      Width = 23
      Height = 19
      Hint = 'Consulta Classe de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProClasseClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 470
      Top = 224
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 556
      Top = 224
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 3
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 98
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 2
      Left = 3
      Top = 51
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 70
      Top = 51
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
      TabOrder = 3
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 3
      Top = 87
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 77
      Top = 87
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CkBZebrado: TCheckBox
      Left = 3
      Top = 228
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 5
      Left = 3
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 66
      Top = 125
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 6
      Left = 322
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 385
      Top = 125
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object SctReport: TSctReport
      Left = 215
      Top = 5
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
      TabOrder = 18
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 932
      SHeight = 581
      MTop = 5
      MLeft = 215
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
        PageSetup.LeftMargin = 0.2
        PageSetup.RightMargin = 0.2
        BorderType = btNone
        Description = 'Apura'#231#227'o de Imposto'
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
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsreportNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportDt_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportMg_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Venda'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object TotalOfVl_Venda: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_VendaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportVl_UnitCustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_UnitCusto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportVl_CustoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object TotalOfVl_Custo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_CustoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Item: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportQt_ItemVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 805
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 805
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
            Caption = 'Vendas de Conjuntos (Cestas)'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 657
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 690
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 654
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 690
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
            Width = 754
            Height = 7
          end
          object SctVarPeriodo: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Periodo'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 131
          Width = 805
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel9: TSctvarlabel
            Left = 1
            Top = 1
            Width = 59
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_OrcamentoVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 567
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_UnitCustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 639
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 711
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportMg_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 420
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 492
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_VendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 290
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_FaturaVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 60
            Top = 1
            Width = 227
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 358
            Top = 1
            Width = 59
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_ItemVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 164
          Width = 805
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 754
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
            Left = 673
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 720
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
          Top = 199
          Width = 805
          Height = 23
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          OnBeforePrint = ReportFooterBandBeforePrint
          object SctLine5: TSctLine
            Left = 305
            Top = 2
            Width = 446
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 465
            Top = 4
            Width = 97
            Height = 17
            TotalVariable = TotalOfVl_Venda
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 610
            Top = 4
            Width = 99
            Height = 17
            TotalVariable = TotalOfVl_Custo
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 355
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Item
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 307
            Top = 4
            Width = 40
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais'
          end
          object SctVarMargem: TSctvarlabel
            Left = 711
            Top = 4
            Width = 44
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 805
          Height = 42
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 34
            Width = 754
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 1
            Top = 20
            Width = 59
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 567
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 639
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 711
            Top = 20
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Margem'
          end
          object SctLine7: TSctLine
            Left = 566
            Top = 17
            Width = 143
            Height = 4
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 582
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Custo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 420
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 492
            Top = 20
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object SctLine3: TSctLine
            Left = 419
            Top = 17
            Width = 143
            Height = 4
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 435
            Top = 0
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Venda'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 290
            Top = 20
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 60
            Top = 20
            Width = 227
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 358
            Top = 20
            Width = 59
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
      end
    end
    object EdtCd_ProGrupo: TCurrencyEdit
      Tag = 7
      Left = 3
      Top = 163
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_ProGrupoExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_ProGrupo: TEdit
      Left = 66
      Top = 163
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object EdtCd_ProSubGrupo: TCurrencyEdit
      Tag = 8
      Left = 322
      Top = 163
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 11
      OnExit = EdtCd_ProSubGrupoExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_ProSubGrupo: TEdit
      Left = 385
      Top = 163
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object EdtCd_ProClasse: TCurrencyEdit
      Tag = 9
      Left = 3
      Top = 199
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 13
      OnExit = EdtCd_ProClasseExit
      OnKeyDown = EdtCd_VendedorKeyDown
    end
    object EdtNm_ProClasse: TEdit
      Left = 66
      Top = 199
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Nm_Emitente, OI.Qt_Item, OI.Vl_Unitario, O.Nm_Funcionario,'#13#10'  O.Dt_Fatura, O.Mg_Pedido'#13#10#13#10'from'#13#10'  Orcamento_Total O'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto and'#13#10'  P.Fl_Produto = ''''3'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  /* Cd_Funcionario */'#13#10'  /* Cd_Emitente */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10#13#10'order by'#13#10'  O.Dt_Fatura, O.Nr_Orcamento'
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 40179.0
      end>
    SQLOther0.Strings = (
      'select'
      '  O.Nr_Orcamento, O.Nm_Emitente, OI.Qt_Item, OI.Vl_Unitario, O.Nm_Funcionario,'
      '  O.Dt_Fatura, O.Mg_Pedido'
      ''
      'from'
      '  Orcamento_Total O'
      ''
      '/* Emitente */'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''3'''
      '  /* ProGrupo */'
      '  /* ProSubGrupo */'
      '  /* ProClasse */'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  /* Cd_Emitente */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'order by'
      '  O.Dt_Fatura, O.Nr_Orcamento'
    )
    SQLOther1.Strings = (
      '-------------------- Inclus'#227'o do Grupo/SubGrupo no filtro'
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  /* Grupo */'
      '  /* SubGrupo */'
      ''
    )
    Left = 504
    Top = 50
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
      Size = 3
    end
    object ADODsReportVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 3
    end
    object ADODsReportNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsReportDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsReportMg_Pedido: TBCDField
      FieldName = 'Mg_Pedido'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Venda'
      Calculated = True
    end
    object ADODsReportVl_UnitCusto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_UnitCusto'
      Calculated = True
    end
    object ADODsReportVl_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Custo'
      Calculated = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 476
    Top = 50
  end
end
