object FrmProduto_Vendas: TFrmProduto_Vendas
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rel. de Vendas por Produto'
  ClientHeight = 210
  ClientWidth = 743
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
    Height = 210
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 722
    Height = 210
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 6
      Top = 179
      Width = 714
      Height = 5
      Shape = bsTopLine
    end
    object SbGrupo: TSpeedButton
      Left = 43
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label7: TLabel
      Left = 3
      Top = 39
      Width = 87
      Height = 13
      Caption = 'Grupo de Produto:'
    end
    object SbVendedor: TSpeedButton
      Left = 401
      Top = 54
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
    object Label6: TLabel
      Left = 362
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label19: TLabel
      Left = 3
      Top = 113
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupoEmitente: TSpeedButton
      Left = 42
      Top = 129
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
      Top = 113
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 362
      Top = 129
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label1: TLabel
      Left = 3
      Top = 3
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label10: TLabel
      Left = 3
      Top = 76
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 53
      Top = 90
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
    object BitBtnConfirm: TBitBtn
      Left = 549
      Top = 183
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 635
      Top = 183
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 14
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 3
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 66
      Top = 54
      Width = 290
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
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 2
      Left = 362
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_VendedorExit
    end
    object EdtNm_Vendedor: TEdit
      Left = 424
      Top = 54
      Width = 290
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
      TabOrder = 5
    end
    object EdtCd_GrupoEmitente: TCurrencyEdit
      Tag = 5
      Left = 3
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_GrupoEmitenteExit
    end
    object EdtNm_GrupoEmitente: TEdit
      Left = 65
      Top = 129
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
    object EdtCd_SubGrupoEmitente: TCurrencyEdit
      Tag = 6
      Left = 322
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_SubGrupoEmitenteExit
    end
    object EdtNm_SubGrupoEmitente: TEdit
      Left = 385
      Top = 129
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
      TabOrder = 11
    end
    object EdtDt_Start: TDateEdit
      Left = 3
      Top = 18
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
      Top = 18
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
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 3
      Top = 90
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 76
      Top = 90
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
      TabOrder = 7
    end
    object SctRepProduto: TSctReport
      Left = 438
      Top = 79
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
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 3
      SLeft = -16
      SWidth = 824
      SHeight = 521
      MTop = 79
      MLeft = 438
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage3: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 4
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Vendas por Produto'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand10
        Detail = SctDetail
        Foot = SctBand17
        PageHead = SctBand13
        PageFoot = SctBand16
        DataSource = DsReport
        Order = 1
        object SctLevel15: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel16: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel17: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
        end
        object SctLevel18: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
        end
        object SctLevel19: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
        end
        object SctDateTimeVar3: TSctDateTimeVar
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          UpdateLevel = SctLevel15
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar3: TSctPageVar
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          UpdateLevel = SctLevel16
          AutoVar = True
          ID = vidPageVar
        end
        object SctGrpGrupo: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdGrupo
          Footer = GrpFtGrupo
          Variable = adodsreportDp_GrupoVar
          Level = 0
        end
        object SctLevel20: TSctLevel
          Left = 30
          Top = -4
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel21: TSctLevel
          Left = 30
          Top = -4
          Width = 0
          Height = 0
        end
        object TotalOfQt_Vendida: TSctTotalvar
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          Variable = adodsreportQt_VendidoVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Vendido: TSctTotalvar
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          Variable = adodsreportVl_VendidoVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar3: TSctDBVar
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide31: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmFuncionario_Find.DsFind
        end
        object SctGrpSubGrupo: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdSubGrupo
          Footer = GrpFtSubGrupo
          Variable = adodsreportDp_SubGrupoVar
          Level = 1
        end
        object Group1HeaderLevel: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group1FooterLevel: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
        end
        object SctGrpClasse: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdClasse
          Footer = GrpFtClasse
          Variable = adodsreportDp_ClasseVar
          Level = 2
        end
        object Group2HeaderLevel: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group2FooterLevel: TSctLevel
          Left = 0
          Top = -4
          Width = 0
          Height = 0
        end
        object DataSourceGuide37: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide55: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide56: TSctDataSourceGuide
          Left = 0
          Top = -4
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsReport
        end
        object adodsreportSg_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estoque'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_GrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Grupo'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_SubGrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_SubGrupo'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_ClasseVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Classe'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_VendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Vendido'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_VendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Vendido'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportCd_ClasFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsReport
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand10: TSctBand
          Left = 0
          Top = -4
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel15
          Visible = False
        end
        object SctBand13: TSctBand
          Left = 0
          Top = 18
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel16
          object Sctvarlabel80: TSctvarlabel
            Left = 2
            Top = 2
            Width = 289
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Produto'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel161: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel162: TSctvarlabel
            Left = 671
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine12: TSctLine
            Left = 1
            Top = 38
            Width = 734
            Height = 6
          end
          object SctPerProduto: TSctvarlabel
            Left = 2
            Top = 20
            Width = 429
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo dd/mm/yyyy a dd/mm/yyyy'
          end
        end
        object SctDetail: TSctBand
          Left = 0
          Top = 213
          Width = 786
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = SctLevel17
          OnBeforePrint = SctDetailBeforePrint
          object Sctvarlabel163: TSctvarlabel
            Left = 22
            Top = 1
            Width = 439
            Height = 17
            Variable = adodsreportDp_ProdutoVar
          end
          object Sctvarlabel164: TSctvarlabel
            Left = 661
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_VendidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel165: TSctvarlabel
            Left = 582
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_VendidoVar
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel166: TSctvarlabel
            Left = 533
            Top = 1
            Width = 42
            Height = 17
            Variable = adodsreportSg_EstoqueVar
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 464
            Top = 1
            Width = 66
            Height = 17
            Variable = adodsreportCd_ClasFiscalVar
          end
        end
        object SctBand16: TSctBand
          Left = 0
          Top = 352
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel18
          object SctLine13: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel191: TSctvarlabel
            Left = 1
            Top = 4
            Width = 460
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar3
          end
          object Sctvarlabel192: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel193: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar3
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario6: TSctvarlabel
            Left = 439
            Top = 4
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
        object SctBand17: TSctBand
          Left = 0
          Top = 390
          Width = 786
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel19
          object Sctvarlabel194: TSctvarlabel
            Left = 470
            Top = 3
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctLine14: TSctLine
            Left = 460
            Top = 1
            Width = 275
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 661
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 582
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfQt_Vendida
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 77
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel16
          Band = SctBand13
          Above = False
          object Sctvarlabel197: TSctvarlabel
            Left = 22
            Top = 1
            Width = 55
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel199: TSctvarlabel
            Left = 661
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object Sctvarlabel200: TSctvarlabel
            Left = 582
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel201: TSctvarlabel
            Left = 533
            Top = 1
            Width = 42
            Height = 17
            Caption = 'Unidade'
          end
          object SctLine15: TSctLine
            Left = 1
            Top = 13
            Width = 734
            Height = 6
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 464
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'NCM'
          end
        end
        object GrpHdGrupo: TSctBand
          Left = 0
          Top = 111
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'SctGrpGrupo Header'
          Updatelevel = SctLevel20
          object Sctvarlabel202: TSctvarlabel
            Left = 4
            Top = 1
            Width = 347
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_GrupoVar
          end
        end
        object GrpFtGrupo: TSctBand
          Left = 0
          Top = 316
          Width = 786
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'SctGrpGrupo Footer'
          Updatelevel = SctLevel21
          object Sctvarlabel167: TSctvarlabel
            Left = 470
            Top = 3
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Grupo:'
          end
          object SctLine16: TSctLine
            Left = 460
            Top = 1
            Width = 275
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 661
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 582
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfQt_Vendida
            DataFormat.DisplayFormat = '#,##0.0#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GrpHdSubGrupo: TSctBand
          Left = 0
          Top = 145
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'SctGrpSubGrupo Header'
          Updatelevel = Group1HeaderLevel
          object Sctvarlabel51: TSctvarlabel
            Left = 13
            Top = 1
            Width = 347
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_SubGrupoVar
          end
        end
        object GrpFtSubGrupo: TSctBand
          Left = 0
          Top = 281
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'SctGrpSubGrupo Footer'
          Updatelevel = Group1FooterLevel
          object Sctvarlabel77: TSctvarlabel
            Left = 470
            Top = 3
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do SubGrupo:'
          end
          object SctLine21: TSctLine
            Left = 460
            Top = 1
            Width = 275
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 661
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 582
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfQt_Vendida
            DataFormat.DisplayFormat = '#,##0.0#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GrpHdClasse: TSctBand
          Left = 0
          Top = 179
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'SctGrpClasse Header'
          Updatelevel = Group2HeaderLevel
          object Sctvarlabel52: TSctvarlabel
            Left = 23
            Top = 1
            Width = 347
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_ClasseVar
          end
        end
        object GrpFtClasse: TSctBand
          Left = 0
          Top = 246
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'SctGrpClasse Footer'
          Updatelevel = Group2FooterLevel
          object Sctvarlabel76: TSctvarlabel
            Left = 470
            Top = 3
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total da Classe:'
          end
          object SctLine17: TSctLine
            Left = 460
            Top = 1
            Width = 275
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 661
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfVl_Vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 582
            Top = 3
            Width = 75
            Height = 17
            TotalVariable = TotalOfQt_Vendida
            DataFormat.DisplayFormat = '#,##0.0#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object CkBZebrado: TCheckBox
      Left = 3
      Top = 156
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'if Object_ID( ''''TempDB..#ProdVendas'''' ) is not null'#13#10'  drop table #ProdVendas'#13#10#13#10'if Object_ID( ''''TempDB..#ProdVendas'''' ) is not null'#13#10'  drop table #ProdVendas'#13#10#13#10'------------------------- Seleciona os produtos'#13#10'select'#13#10'  OI.Cd_Produto, OI.Sg_Estoque,'#13#10'  sum( OI.Vl_Venda ) as Vl_Vendido,'#13#10'  sum( OI.Qt_Estoque ) as Qt_Vendido'#13#10#13#10'into'#13#10'  #ProdVendas'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End'#13#10#13#10'group by'#13#10'  OI.Cd_Produto, OI.SG_Estoque'#13#10#13#10'------------------------- Seleciona os produtos de conjunto'#13#10'insert into #ProdVendas'#13#10'select'#13#10'  OC.Cd_Produto, OC.Sg_Unidade as Sg_Estoque,'#13#10'  sum( OC.Vl_Venda ) as Vl_Vendido,'#13#10'  sum( OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Conjunto_Total OC'#13#10'on'#13#10'  OC.Cd_Filial     = O.Cd_Filial and'#13#10'  OC.Nr_Orcamento  = O.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OC.Cd_Produto'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = OC.Cd_Produto and'#13#10'  PU.Sg_Unidade = OC.Sg_Unidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End'#13#10#13#10'group by'#13#10'  OC.Cd_Produto, OC.Sg_Unidade'#13#10#13#10'/* Itens de Projeto */'#13#10#13#10'------------------------- Cria o result set'#13#10'select'#13#10'  PV.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  Convert( VarChar, PV.Cd_Produto ) + '''' - '''' + P.Nm_Produto as Dp_Produto, '#13#10'  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo as Dp_Grupo,'#13#10'  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'#13#10'  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe as Dp_Classe,'#13#10'  sum( PV.Vl_Vendido ) as Vl_Vendido, sum( PV.Qt_Vendido ) as Qt_Vendido'#13#10#13#10'from'#13#10'  #ProdVendas PV'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PV.Cd_Produto'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'group by'#13#10'  PV.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  Convert( VarChar, PV.Cd_Produto ) + '''' - '''' + P.Nm_Produto, '#13#10'  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo,'#13#10'  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo,'#13#10'  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe'#13#10#13#10'order by'#13#10'  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo,'#13#10'  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo,'#13#10'  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe,'#13#10'  7 desc'#13#10
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
        Value = 39448.0
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      'if Object_ID( ''''TempDB..#ProdVendas'''' ) is not null'
      '  drop table #ProdVendas'
      ''
      'if Object_ID( ''''TempDB..#ProdVendas'''' ) is not null'
      '  drop table #ProdVendas'
      ''
      '------------------------- Seleciona os produtos'
      'select'
      '  OI.Cd_Produto, OI.Sg_Estoque,'
      '  sum( OI.Vl_Venda ) as Vl_Vendido,'
      '  sum( OI.Qt_Estoque ) as Qt_Vendido'
      ''
      'into'
      '  #ProdVendas'
      ''
      'from'
      '  Orcamento O'
      ''
      '/* Emitente */'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OI.Cd_Produto and'
      '  P.Fl_Produto <= ''''2'''
      '  /* Cd_Grupo */'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OI.Cd_Produto, OI.SG_Estoque'
      ''
      '------------------------- Seleciona os produtos de conjunto'
      'insert into #ProdVendas'
      'select'
      '  OC.Cd_Produto, OC.Sg_Unidade as Sg_Estoque,'
      '  sum( OC.Vl_Venda ) as Vl_Vendido,'
      '  sum( OC.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento O'
      ''
      '/* Emitente */'
      ''
      'inner join'
      '  Orcamento_Conjunto_Total OC'
      'on'
      '  OC.Cd_Filial     = O.Cd_Filial and'
      '  OC.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OC.Cd_Produto and'
      '  P.Fl_Produto <= ''''2'''
      '  /* Cd_Grupo */'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OC.Cd_Produto, OC.Sg_Unidade'
      ''
      '/* Itens de Projeto */'
      ''
      '------------------------- Cria o result set'
      'select'
      '  PV.Sg_Estoque, P.Cd_ClasFiscal,'
      '  Convert( VarChar, PV.Cd_Produto ) + '''' - '''' + P.Nm_Produto as Dp_Produto, '
      '  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo as Dp_Grupo,'
      '  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe as Dp_Classe,'
      '  sum( PV.Vl_Vendido ) as Vl_Vendido, sum( PV.Qt_Vendido ) as Qt_Vendido'
      ''
      'from'
      '  #ProdVendas PV'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PV.Cd_Produto'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = P.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe'
      ''
      'group by'
      '  PV.Sg_Estoque, P.Cd_ClasFiscal,'
      '  Convert( VarChar, PV.Cd_Produto ) + '''' - '''' + P.Nm_Produto, '
      '  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo,'
      '  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo,'
      '  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe'
      ''
      'order by'
      '  Convert( VarChar, P.Cd_Grupo ) + '''' - '''' + G.Nm_Grupo,'
      '  Convert( VarChar, P.Cd_SubGrupo ) + '''' - '''' + SG.Nm_SubGrupo,'
      '  Convert( VarChar, P.Cd_Classe ) + '''' - '''' + C.Nm_Classe,'
      '  7 desc'
    )
    SQLOther1.Strings = (
      '------------------------- Seleciona os produtos de projeto'
      'insert into #ProdVendas'
      'select'
      '  OP.Cd_Produto, OP.Sg_Unidade as Sg_Estoque,'
      '  sum( OP.Vl_Venda ) as Vl_Vendido,'
      '  sum( OP.Qt_Vendido * Coalesce( PU.Nr_Fator, 1.0 ) ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento O'
      ''
      '/* Emitente */'
      ''
      'inner join'
      '  Orcamento_Projeto_Item_Total OP'
      'on'
      '  OP.Cd_Filial     = O.Cd_Filial and'
      '  OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OP.Cd_Produto and'
      '  P.Fl_Produto <= ''''2'''
      '  /* Cd_Grupo */'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OP.Cd_Produto and'
      '  PU.Sg_Unidade = OP.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'group by'
      '  OP.Cd_Produto, OP.Sg_Unidade'
      ''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  /* Cd_GrupoEmitente */'
      '  /* Cd_SubGrupoEmitente */'
    )
    Left = 52
    Top = 169
    object ADODsReportSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsReportDp_Grupo: TStringField
      FieldName = 'Dp_Grupo'
      ReadOnly = True
      Size = 83
    end
    object ADODsReportDp_SubGrupo: TStringField
      FieldName = 'Dp_SubGrupo'
      ReadOnly = True
      Size = 83
    end
    object ADODsReportDp_Classe: TStringField
      FieldName = 'Dp_Classe'
      ReadOnly = True
      Size = 83
    end
    object ADODsReportVl_Vendido: TBCDField
      FieldName = 'Vl_Vendido'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsReportQt_Vendido: TBCDField
      FieldName = 'Qt_Vendido'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsReportDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 153
    end
    object ADODsReportCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 22
    Top = 169
  end
end
