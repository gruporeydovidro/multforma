object FrmOrcamento_Report: TFrmOrcamento_Report
  Left = 357
  Top = 247
  ActiveControl = EdtCd_Grupo
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmOrcamento_Report'
  ClientHeight = 357
  ClientWidth = 810
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 357
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 789
    Height = 357
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 790
    object BvlSeparator: TBevel
      Left = 2
      Top = 324
      Width = 781
      Height = 4
      Shape = bsTopLine
    end
    object PnlConvenio: TPanel
      Left = 1
      Top = 112
      Width = 787
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
      TabStop = True
      Visible = False
      ExplicitWidth = 788
      object Label2: TLabel
        Left = 3
        Top = 1
        Width = 48
        Height = 13
        Caption = 'Conv'#234'nio:'
      end
      object SbConvenio: TSpeedButton
        Left = 53
        Top = 15
        Width = 23
        Height = 19
        Hint = 'Seleciona Cliente'
        Flat = True
        Glyph.Data = {binary 1430 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbConvenioClick
      end
      object EdtCd_Convenio: TCurrencyEdit
        Tag = 4
        Left = 3
        Top = 15
        Width = 50
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#,###'
        TabOrder = 0
        OnExit = EdtCd_ConvenioExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_Convenio: TEdit
        Left = 76
        Top = 15
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
        TabOrder = 1
      end
    end
    object PnlEmitente: TPanel
      Left = 1
      Top = 76
      Width = 787
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
      TabStop = True
      ExplicitWidth = 788
      object Label10: TLabel
        Left = 3
        Top = 1
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object SbEmitente: TSpeedButton
        Left = 53
        Top = 15
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
      object EdtCd_Emitente: TCurrencyEdit
        Tag = 1
        Left = 3
        Top = 15
        Width = 50
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#,###'
        TabOrder = 0
        OnExit = EdtCd_EmitenteExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_Emitente: TEdit
        Left = 76
        Top = 15
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
        TabOrder = 1
      end
    end
    object PnlVendedor: TPanel
      Left = 1
      Top = 38
      Width = 787
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      ExplicitWidth = 788
      object SbVendedor: TSpeedButton
        Left = 44
        Top = 17
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
        Left = 3
        Top = 2
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object EdtCd_Vendedor: TCurrencyEdit
        Tag = 2
        Left = 3
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#,###'
        TabOrder = 0
        OnExit = EdtCd_VendedorExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_Vendedor: TEdit
        Left = 68
        Top = 17
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
        TabOrder = 1
      end
    end
    object PnlGrupo: TPanel
      Left = 1
      Top = 1
      Width = 787
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      ExplicitWidth = 788
      object SbGrupo: TSpeedButton
        Left = 43
        Top = 17
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
        Top = 2
        Width = 87
        Height = 13
        Caption = 'Grupo de Produto:'
      end
      object EdtCd_Grupo: TCurrencyEdit
        Tag = 1
        Left = 3
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#,###'
        TabOrder = 0
        OnExit = EdtCd_GrupoExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_Grupo: TEdit
        Left = 67
        Top = 17
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
        TabOrder = 1
      end
    end
    object BitBtnReport: TBitBtn
      Left = 612
      Top = 328
      Width = 87
      Height = 27
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 646 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 700
      Top = 328
      Width = 87
      Height = 27
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PnlGrupoEmitente: TPanel
      Left = 1
      Top = 148
      Width = 787
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 4
      TabStop = True
      Visible = False
      ExplicitWidth = 788
      object Label19: TLabel
        Left = 3
        Top = 1
        Width = 91
        Height = 13
        Caption = 'Grupo de Emitente:'
      end
      object SbGrupoEmitente: TSpeedButton
        Left = 43
        Top = 17
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
        Top = 1
        Width = 110
        Height = 13
        Caption = 'SubGrupo de Emitente:'
      end
      object SbSubGrupo: TSpeedButton
        Left = 362
        Top = 17
        Width = 23
        Height = 19
        Hint = 'Consulta SubGrupo de Emitente'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbSubGrupoClick
      end
      object EdtCd_GrupoEmitente: TCurrencyEdit
        Tag = 5
        Left = 3
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 0
        OnExit = EdtCd_GrupoEmitenteExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_GrupoEmitente: TEdit
        Left = 66
        Top = 17
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
        TabOrder = 1
      end
      object EdtCd_SubGrupo: TCurrencyEdit
        Tag = 6
        Left = 322
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 2
        OnExit = EdtCd_SubGrupoExit
        OnKeyDown = EdtCd_GrupoKeyDown
      end
      object EdtNm_SubGrupo: TEdit
        Left = 385
        Top = 17
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
        TabOrder = 3
      end
    end
    object PnlPeriodo: TPanel
      Left = 1
      Top = 184
      Width = 787
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 5
      ExplicitWidth = 788
      object Label1: TLabel
        Left = 3
        Top = 2
        Width = 41
        Height = 13
        Caption = 'Per'#237'odo:'
      end
      object LblReport: TLabel
        Left = 193
        Top = 2
        Width = 84
        Height = 13
        Caption = 'Tipo de Relat'#243'rio:'
      end
      object LblOrigem: TLabel
        Left = 3
        Top = 38
        Width = 90
        Height = 13
        Caption = 'Origem dos Dados:'
        Visible = False
      end
      object LblProducao: TLabel
        Left = 280
        Top = 2
        Width = 74
        Height = 13
        Caption = 'Produtos ser'#227'o:'
      end
      object EdtDt_StartPer: TDateEdit
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
      object EdtDt_EndPer: TDateEdit
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
      object CbReport: TComboBox
        Left = 193
        Top = 16
        Width = 78
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          'Anal'#237'tico'
          'Sint'#233'tico'
        )
      end
      object CbOrigem: TComboBox
        Left = 3
        Top = 52
        Width = 205
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 4
        Text = 'Or'#231'amentos'
        Visible = False
        Items.Strings = (
          'Or'#231'amentos / Atendimento no Balc'#227'o'
          'Or'#231'amentos'
          'Atendimento no Balc'#227'o'
        )
      end
      object CbProducao: TComboBox
        Left = 280
        Top = 16
        Width = 151
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        MaxLength = 20
        TabOrder = 3
        Text = 'Todas'
        Items.Strings = (
          'Todas'
          'Enviados a produ'#231#227'o'
          'Retirados no balc'#227'o'
          'Instala'#231#227'o'
        )
      end
    end
    object SctRepOrcamentoPeriodo: TSctReport
      Left = 630
      Top = 38
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
      TabOrder = 8
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepOrcamentoPeriodoBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 55
      SLeft = 10
      SWidth = 966
      SHeight = 521
      MTop = 38
      MLeft = 630
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Vendas no Per'#237'odo'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand8
        Detail = SctDetailVendaPeriodo
        Foot = SctBand12
        PageHead = SctBand9
        PageFoot = SctBand11
        DataSource = DsVendaPeriodo
        Order = 1
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel11: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel12: TSctLevel
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
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel9
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsOrcamento
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsItem
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsVendaPeriodo
        end
        object TotalOfPs_Pedido: TSctTotalvar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          Variable = adodsvendaperiodoPs_PedidoVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsProduto
        end
        object adodsvendaperiodoDt_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoPs_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodoVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsTransportador
        end
        object DataSourceGuide29: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide30: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendaperiodonr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide35: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsvendaperiodoCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide40: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide44: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsLaboratorio
        end
        object DataSourceGuide49: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsConjunto
        end
        object Group3: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctGrpVendaPeriodo
          Footer = GrpFtSelect
          Variable = adodsvendaperiodonr_orcamentoVar
          Level = 0
        end
        object Group3HeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group3FooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataSourceGuide59: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide60: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsvendaperiodoDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide65: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsConexao
        end
        object adodsvendaperiodoVl_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Orcamento'
          DataSource = DsVendaPeriodo
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendaperiodoVl_OrcamentoVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsConecadoMes
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel8
          Visible = False
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel9
          object SctVendaPeriodo: TSctvarlabel
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
            Caption = 'Vendas no Per'#237'odo'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 671
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine8: TSctLine
            Left = 1
            Top = 38
            Width = 734
            Height = 6
          end
          object SctSubTitle: TSctvarlabel
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
        object SctDetailVendaPeriodo: TSctBand
          Left = 0
          Top = 216
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel10
          Stretch = True
          object Sctvarlabel104: TSctvarlabel
            Left = 22
            Top = 2
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaperiodoCd_ProdutoVar
            DataFormat.DisplayFormat = '###0'
          end
          object Sctvarlabel116: TSctvarlabel
            Left = 73
            Top = 0
            Width = 380
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsvendaperiodoNm_ProdutoVar
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 655
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaperiodoVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 585
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaperiodoVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel120: TSctvarlabel
            Left = 515
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaperiodoQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel160: TSctvarlabel
            Left = 457
            Top = 1
            Width = 51
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsvendaperiodoSg_UnidadeVar
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 268
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel11
          object SctLine9: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel124: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar4
          end
          object Sctvarlabel125: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario4: TSctvarlabel
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
        object SctBand12: TSctBand
          Left = 0
          Top = 306
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel12
          OnBeforePrint = SctBand12BeforePrint
          object Sctvarlabel157: TSctvarlabel
            Left = 557
            Top = 3
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctLine11: TSctLine
            Left = 283
            Top = 1
            Width = 452
            Height = 6
            AlignVertical = laTop
          end
          object SctPsFatura: TSctvarlabel
            Left = 284
            Top = 3
            Width = 249
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctVlFatura: TSctvarlabel
            Left = 629
            Top = 3
            Width = 106
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 318
            Top = 22
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = #192' Vista:'
          end
          object SctVarVista: TSctvarlabel
            Left = 395
            Top = 22
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object SctVarPrazo: TSctvarlabel
            Left = 395
            Top = 40
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object Sctvarlabel142: TSctvarlabel
            Left = 318
            Top = 40
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = #192' Prazo:'
          end
          object SctVarCartao: TSctvarlabel
            Left = 575
            Top = 22
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object SctVarCartaoasd: TSctvarlabel
            Left = 499
            Top = 22
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Cr'#233'dito:'
          end
          object SctVarCheque: TSctvarlabel
            Left = 575
            Top = 40
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object Sctvarlabel168: TSctvarlabel
            Left = 499
            Top = 40
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Cheque:'
          end
          object SctVarContra: TSctvarlabel
            Left = 395
            Top = 58
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object Sctvarlabel404: TSctvarlabel
            Left = 248
            Top = 58
            Width = 141
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Contra-apresenta'#231#227'o:'
          end
          object Sctvarlabel420: TSctvarlabel
            Left = 499
            Top = 58
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'D'#233'bito:'
          end
          object SctVarDebito: TSctvarlabel
            Left = 575
            Top = 58
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
          object Sctvarlabel421: TSctvarlabel
            Left = 318
            Top = 76
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'PIX:'
          end
          object SctVarPIX: TSctvarlabel
            Left = 395
            Top = 76
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0'
          end
        end
        object PgHdPedido: TSctSubBand
          Left = 0
          Top = 81
          Width = 786
          Height = 32
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel9
          Band = SctBand9
          Above = False
          object Sctvarlabel121: TSctvarlabel
            Left = 1
            Top = 13
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel122: TSctvarlabel
            Left = 68
            Top = 13
            Width = 65
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel123: TSctvarlabel
            Left = 650
            Top = 13
            Width = 85
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object Sctvarlabel130: TSctvarlabel
            Left = 564
            Top = -2
            Width = 80
            Height = 32
            AlignHorizontal = laRight
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'N'#186' da Fatura Cupom Fiscal'
          end
          object Sctvarlabel133: TSctvarlabel
            Left = 492
            Top = 13
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Data Fatura'
          end
        end
        object PgHdItens: TSctSubBand
          Left = 0
          Top = 128
          Width = 786
          Height = 19
          Color = 15987699
          BandName = 'SctBand9Sub'
          Updatelevel = SctLevel9
          Band = SctBand9
          Order = 1
          Above = False
          object Sctvarlabel127: TSctvarlabel
            Left = 22
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel129: TSctvarlabel
            Left = 73
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel134: TSctvarlabel
            Left = 655
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object Sctvarlabel150: TSctvarlabel
            Left = 585
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel151: TSctvarlabel
            Left = 515
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel159: TSctvarlabel
            Left = 457
            Top = 1
            Width = 51
            Height = 17
            Caption = 'Unidade'
          end
        end
        object SctBand9Sub1: TSctSubBand
          Left = 0
          Top = 162
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'SctBand9Sub1'
          Updatelevel = SctLevel9
          Band = SctBand9
          Order = 2
          Above = False
          object SctLine10: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 3
            AlignVertical = laTop
          end
        end
        object SctGrpVendaPeriodo: TSctBand
          Left = 0
          Top = 182
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'SctGrpVendaPeriodo'
          Updatelevel = Group3HeaderLevel
          Stretch = True
          OnBeforePrint = SctGrpVendaPeriodoBeforePrint
          object Sctvarlabel152: TSctvarlabel
            Left = 1
            Top = 1
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsvendaperiodonr_orcamentoVar
          end
          object Sctvarlabel153: TSctvarlabel
            Left = 68
            Top = 0
            Width = 418
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsvendaperiodoNm_EmitenteVar
          end
          object Sctvarlabel154: TSctvarlabel
            Left = 650
            Top = 1
            Width = 85
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaperiodoVl_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel155: TSctvarlabel
            Left = 564
            Top = 1
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsvendaperiodoDp_FaturaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel156: TSctvarlabel
            Left = 492
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsvendaperiodoDt_FaturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
        end
        object GrpFtSelect: TSctBand
          Left = 0
          Top = 251
          Width = 786
          Height = 2
          ParentColor = True
          BandName = 'GrpFtSelect'
          Updatelevel = Group3FooterLevel
          Visible = False
        end
      end
    end
    object SctRepEstoque: TSctReport
      Left = 348
      Top = 230
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
      TabOrder = 9
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEstoqueBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 30
      SLeft = 5
      SWidth = 828
      SHeight = 661
      MTop = 230
      MLeft = 348
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Ordem de P'#225'tio'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsItem
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
          DataSource = DsOrcamento
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItem
        end
        object SctGroup1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand6
          Footer = SctBand7
          Variable = adodsitemdp_localizacaoVar1
          Level = 0
        end
        object SctLevel6: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsVendaPeriodo
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsTransportador
        end
        object DataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
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
        object adodsorcamentoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoTp_CargaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_FormaPagtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_PrazoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Coleta_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPs_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoMg_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPs_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoMg_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoCd_TabelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Tabela'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_CargaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Dp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_FormaPagtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Coleta_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Pedido_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_BaseICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPr_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_IPIVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_ECFVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_ECF'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Insc_EstadualVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoSg_EstadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estado'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_ContribuinteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Contribuinte'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_ExportadorVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Exportador'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDt_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_orcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentost_orcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'st_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentodp_funcionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentocd_funcionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_documentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoent_mm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_obsenderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_obsendereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_SituacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_UnitarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_TotalVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_MargemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ConfirmadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Confirmado'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_IPIVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_localizacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_localizacao'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide34: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide39: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide42: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsLaboratorio
        end
        object DataSourceGuide47: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsConjunto
        end
        object DataSourceGuide57: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide58: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsorcamentoEnt_Ds_NumeroVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide64: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide68: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 41
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          BorderType = btSingle
          object Sctvarlabel95: TSctvarlabel
            Left = 1
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 39
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 633
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 671
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine4: TSctLine
            Left = 0
            Top = 36
            Width = 734
            Height = 6
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 2
            Top = 2
            Width = 129
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Ordem de Estoque'
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 575
            Top = 2
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 686
            Top = 2
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcamentonr_orcamentoVar1
            DataFormat.DisplayFormat = '##,##0'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 346
          Width = 786
          Height = 32
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          object Sctvarlabel102: TSctvarlabel
            Left = 7
            Top = 14
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemCd_ProdutoVar1
            DataFormat.DisplayFormat = '###0'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 58
            Top = 14
            Width = 383
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemNm_ProdutoVar1
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 539
            Top = 14
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemQt_ItemVar1
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 447
            Top = 14
            Width = 77
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemSg_UnidadeVar1
            DataFormat.SuppressNulls = True
          end
          object SctLine7: TSctLine
            Left = 610
            Top = 15
            Width = 125
            Height = 17
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 408
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine5: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel109: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario2: TSctvarlabel
            Left = 444
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
        object SctBand5: TSctBand
          Left = 0
          Top = 446
          Width = 786
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          BorderType = btSingle
          object Sctvarlabel112: TSctvarlabel
            Left = 0
            Top = 3
            Width = 67
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Carga:'
          end
          object Sctvarlabel113: TSctvarlabel
            Left = 68
            Top = 3
            Width = 263
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsorcamentoDp_CargaVar
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 591
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel128: TSctvarlabel
            Left = 664
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsorcamentoPs_PedidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 274
          Width = 786
          Height = 23
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PgHdSubProdutos'
          Updatelevel = SctLevel2
          OnAfterPrint = SctSubBand1AfterPrint
          Band = SctBand2
          Order = 2
          Above = False
          object Sctvarlabel131: TSctvarlabel
            Left = 0
            Top = 2
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel132: TSctvarlabel
            Left = 58
            Top = 2
            Width = 65
            Height = 17
            BorderMargin = 1
            WrapText = True
            Caption = 'Produto'
          end
          object Sctvarlabel135: TSctvarlabel
            Left = 641
            Top = 2
            Width = 93
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Estoque'
          end
          object Sctvarlabel136: TSctvarlabel
            Left = 515
            Top = 2
            Width = 89
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel137: TSctvarlabel
            Left = 447
            Top = 2
            Width = 77
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctLine6: TSctLine
            Left = 1
            Top = 17
            Width = 734
            Height = 6
          end
        end
        object PgHdSubClienteOP: TSctSubBand
          Left = 0
          Top = 78
          Width = 786
          Height = 70
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubCliente'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          Band = SctBand2
          Above = False
          object Sctvarlabel138: TSctvarlabel
            Left = 1
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel139: TSctvarlabel
            Left = 60
            Top = 2
            Width = 69
            Height = 15
            Variable = adodsorcamentoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel140: TSctvarlabel
            Left = 131
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel141: TSctvarlabel
            Left = 191
            Top = 2
            Width = 95
            Height = 15
            Variable = adodsorcamentoDp_SituacaoVar1
          end
          object Sctvarlabel144: TSctvarlabel
            Left = 1
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Cliente:'
          end
          object Sctvarlabel145: TSctvarlabel
            Left = 51
            Top = 19
            Width = 565
            Height = 15
            Variable = adodsorcamentoDp_EmitenteVar
          end
          object Sctvarlabel146: TSctvarlabel
            Left = 1
            Top = 36
            Width = 62
            Height = 15
            Caption = 'Vendedor:'
          end
          object Sctvarlabel147: TSctvarlabel
            Left = 63
            Top = 36
            Width = 333
            Height = 15
            Variable = adodsorcamentodp_funcionarioVar1
          end
          object Sctvarlabel148: TSctvarlabel
            Left = 2
            Top = 51
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel149: TSctvarlabel
            Left = 87
            Top = 51
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar1
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubEntregaOP: TSctSubBand
          Left = 0
          Top = 163
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'PgHdSubEntregaOP'
          Updatelevel = SctLevel2
          BorderType = btSingle
          Band = SctBand2
          Order = 1
          Above = False
          object Sctvarlabel170: TSctvarlabel
            Left = 2
            Top = 2
            Width = 126
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel171: TSctvarlabel
            Left = 130
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoEnt_Ds_TituloVar
          end
          object Sctvarlabel172: TSctvarlabel
            Left = 2
            Top = 20
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel173: TSctvarlabel
            Left = 64
            Top = 20
            Width = 361
            Height = 17
            Variable = adodsorcamentoEnt_Ds_EnderecoVar
          end
          object Sctvarlabel174: TSctvarlabel
            Left = 504
            Top = 20
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel175: TSctvarlabel
            Left = 546
            Top = 20
            Width = 183
            Height = 17
            Variable = adodsorcamentoEnt_Nm_BairroVar
          end
          object Sctvarlabel176: TSctvarlabel
            Left = 2
            Top = 39
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel177: TSctvarlabel
            Left = 89
            Top = 39
            Width = 230
            Height = 17
            Variable = adodsorcamentoEnt_Ds_ComplementoVar
          end
          object Sctvarlabel178: TSctvarlabel
            Left = 324
            Top = 39
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel179: TSctvarlabel
            Left = 359
            Top = 39
            Width = 67
            Height = 17
            Variable = adodsorcamentoEnt_Nr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel180: TSctvarlabel
            Left = 431
            Top = 39
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel181: TSctvarlabel
            Left = 480
            Top = 39
            Width = 254
            Height = 17
            Variable = adodsorcamentoEnt_Dp_CidadeVar
          end
          object Sctvarlabel182: TSctvarlabel
            Left = 2
            Top = 58
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel183: TSctvarlabel
            Left = 66
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel184: TSctvarlabel
            Left = 168
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel185: TSctvarlabel
            Left = 271
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel186: TSctvarlabel
            Left = 374
            Top = 58
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel187: TSctvarlabel
            Left = 406
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel188: TSctvarlabel
            Left = 2
            Top = 77
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel189: TSctvarlabel
            Left = 87
            Top = 77
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoent_mm_observacaoVar1
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel410: TSctvarlabel
            Left = 422
            Top = 19
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel411: TSctvarlabel
            Left = 445
            Top = 19
            Width = 55
            Height = 17
            Variable = adodsorcamentoEnt_Ds_NumeroVar1
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 312
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = SctLevel6
          object Sctvarlabel190: TSctvarlabel
            Left = 0
            Top = 0
            Width = 735
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsitemdp_localizacaoVar1
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 393
          Width = 786
          Height = 0
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel7
          Visible = False
        end
      end
    end
    object SctRepEspelhoNF: TSctReport
      Left = 438
      Top = 230
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
      TabOrder = 11
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEspelhoNFBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 0
      SWidth = 876
      SHeight = 465
      MTop = 230
      MLeft = 438
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Espelho de Faturamento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand20
        Detail = SctBand22
        Foot = SctBand24
        PageHead = SctBand21
        PageFoot = SctBand23
        DataSource = DsItem
        Order = 1
        NoDsgList = (
          'DsVendaPeriodo'
          'DsProduto'
          'DmMaster.DsUsuario'
          'FrmFuncionario_Find.DsFind'
          'FrmOrcamento_Pagamento.DsLaboratorio'
          'DsLaboratorio'
          'DsConjunto'
          'FrmEmitente_Find.DsFind'
          'FrmEmitente_Find.DsContato'
          'DmMaster.DsConexao'
          'DmMaster.DsConecadoMes'
        )
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
          IsHeader = True
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
        object SctLevel26: TSctLevel
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
          UpdateLevel = SctLevel22
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar4: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel23
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel24
          DataSource = DsOrcamento
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar51: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar52: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar53: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar54: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar55: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar56: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar57: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar58: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar59: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar60: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar62: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar63: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar64: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar65: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar66: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar67: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar68: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar69: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar70: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel24
          DataSource = DsItem
        end
        object SctDBVar72: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar73: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar75: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar76: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar77: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar78: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_BaseICMSVar: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_ICMSVar: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_IPIVar: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_ECFVar: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Nr_ECF'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Insc_EstadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_IPIVar: TSctDBVar
          Left = 0
          Top = 139
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_ICMSVar: TSctDBVar
          Left = 0
          Top = 139
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsItem
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDt_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_TotalVar1: TSctDBVar
          Left = 0
          Top = 326
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_FreteVar1: TSctDBVar
          Left = 0
          Top = 326
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_PedidoVar1: TSctDBVar
          Left = 0
          Top = 326
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel24
          DataSource = DsTransportador
        end
        object adodstransportadorDs_EnderecoVar3: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsTransportador
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNm_BairroVar3: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsTransportador
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDs_ComplementoVar3: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsTransportador
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorNr_CEPVar3: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsTransportador
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadorDp_CidadeVar3: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsTransportador
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_PrazoVar1: TSctDBVar
          Left = 0
          Top = 8
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel24
          DataSource = DmMaster.DsFilial
        end
        object adodsorcamentoent_mm_observacaoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_FilialVar2: TSctDBVar
          Left = 0
          Top = 354
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel24
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand20: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel22
          Visible = False
        end
        object SctBand21: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 41
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel23
          BorderType = btSingle
          object Sctvarlabel30: TSctvarlabel
            Left = 1
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel196: TSctvarlabel
            Left = 39
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar4
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel198: TSctvarlabel
            Left = 633
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel203: TSctvarlabel
            Left = 671
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar4
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine18: TSctLine
            Left = 0
            Top = 36
            Width = 734
            Height = 6
          end
          object Sctvarlabel204: TSctvarlabel
            Left = 2
            Top = 2
            Width = 184
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Espelho de Faturamento'
          end
          object Sctvarlabel206: TSctvarlabel
            Left = 613
            Top = 2
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel207: TSctvarlabel
            Left = 686
            Top = 2
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoNr_FaturaVar
            DataFormat.DisplayFormat = '##,##0'
          end
        end
        object SctBand22: TSctBand
          Left = 0
          Top = 528
          Width = 786
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = SctLevel24
          object Sctvarlabel208: TSctvarlabel
            Left = 7
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar72
            DataFormat.DisplayFormat = '###0'
          end
          object Sctvarlabel210: TSctvarlabel
            Left = 58
            Top = 1
            Width = 359
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar73
          end
          object Sctvarlabel211: TSctvarlabel
            Left = 607
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar78
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel212: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar77
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel213: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar76
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel214: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar75
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel215: TSctvarlabel
            Left = 675
            Top = 1
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemPr_ICMSVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel216: TSctvarlabel
            Left = 707
            Top = 1
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemPr_IPIVar
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand23: TSctBand
          Left = 0
          Top = 562
          Width = 786
          Height = 23
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'Page Footer'
          Updatelevel = SctLevel25
          object SctLine19: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel217: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar2
          end
          object Sctvarlabel218: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel219: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar4
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario3: TSctvarlabel
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
        object SctBand24: TSctBand
          Left = 0
          Top = 600
          Width = 786
          Height = 55
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel26
          Stretch = True
          BorderType = btSingle
          object Sctvarlabel284: TSctvarlabel
            Left = 10
            Top = 19
            Width = 83
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Base de ICMS'
          end
          object Sctvarlabel285: TSctvarlabel
            Left = 10
            Top = 35
            Width = 83
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_BaseICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel286: TSctvarlabel
            Left = 98
            Top = 19
            Width = 86
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor do ICMS'
          end
          object Sctvarlabel287: TSctvarlabel
            Left = 98
            Top = 35
            Width = 86
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_ICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel288: TSctvarlabel
            Left = 189
            Top = 19
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor do Frete'
          end
          object Sctvarlabel289: TSctvarlabel
            Left = 189
            Top = 35
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Pedido_FreteVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel290: TSctvarlabel
            Left = 279
            Top = 19
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor dos Produtos'
          end
          object Sctvarlabel291: TSctvarlabel
            Left = 279
            Top = 35
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_PedidoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel292: TSctvarlabel
            Left = 481
            Top = 19
            Width = 82
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total da Nota'
          end
          object Sctvarlabel293: TSctvarlabel
            Left = 481
            Top = 35
            Width = 82
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Pedido_TotalVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel294: TSctvarlabel
            Left = 399
            Top = 19
            Width = 77
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor do IPI'
          end
          object Sctvarlabel295: TSctvarlabel
            Left = 399
            Top = 35
            Width = 77
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoVl_IPIVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel296: TSctvarlabel
            Left = 2
            Top = 2
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Calculo do Imposto:'
          end
          object Sctvarlabel298: TSctvarlabel
            Left = 610
            Top = 19
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Cupom Fiscal N'#186' (ECF)'
          end
          object Sctvarlabel311: TSctvarlabel
            Left = 670
            Top = 35
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodspedidoNr_ECFVar
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object PgHdSubProdutos_2: TSctSubBand
          Left = 0
          Top = 490
          Width = 786
          Height = 23
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PgHdSubProdutos_2'
          Updatelevel = SctLevel23
          Band = SctBand21
          Order = 5
          Above = False
          object Sctvarlabel220: TSctvarlabel
            Left = 7
            Top = 2
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel221: TSctvarlabel
            Left = 58
            Top = 2
            Width = 65
            Height = 17
            BorderMargin = 1
            Caption = 'Produto'
          end
          object Sctvarlabel222: TSctvarlabel
            Left = 607
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object Sctvarlabel223: TSctvarlabel
            Left = 538
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel224: TSctvarlabel
            Left = 469
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel225: TSctvarlabel
            Left = 419
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctLine20: TSctLine
            Left = 1
            Top = 17
            Width = 734
            Height = 6
          end
          object Sctvarlabel226: TSctvarlabel
            Left = 675
            Top = 2
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'ICMS'
          end
          object Sctvarlabel227: TSctvarlabel
            Left = 707
            Top = 2
            Width = 28
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'IPI'
          end
        end
        object PgHdSubCliente_2: TSctSubBand
          Left = 0
          Top = 78
          Width = 786
          Height = 52
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubCliente_2'
          Updatelevel = SctLevel23
          Stretch = True
          BorderType = btSingle
          Band = SctBand21
          Above = False
          object Sctvarlabel228: TSctvarlabel
            Left = 1
            Top = 2
            Width = 80
            Height = 15
            Caption = 'Faturamento:'
          end
          object Sctvarlabel229: TSctvarlabel
            Left = 82
            Top = 2
            Width = 69
            Height = 15
            Variable = adodspedidoDt_FaturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel230: TSctvarlabel
            Left = 1
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Cliente:'
          end
          object Sctvarlabel231: TSctvarlabel
            Left = 51
            Top = 19
            Width = 490
            Height = 15
            Variable = SctDBVar9
          end
          object Sctvarlabel232: TSctvarlabel
            Left = 2
            Top = 34
            Width = 106
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel233: TSctvarlabel
            Left = 87
            Top = 34
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar2
            DataFormat.SuppressNulls = True
          end
          object SctDocto_2: TSctvarlabel
            Left = 380
            Top = 2
            Width = 354
            Height = 15
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'CPF/CNPJ:'
          end
        end
        object PgHdSubEndereco_2: TSctSubBand
          Left = 0
          Top = 145
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'PgHdSubEndereco_2'
          Updatelevel = SctLevel23
          Stretch = True
          BorderType = btSingle
          Band = SctBand21
          Order = 1
          Above = False
          object Sctvarlabel234: TSctvarlabel
            Left = 2
            Top = 2
            Width = 177
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o do Estabelecimento:'
          end
          object Sctvarlabel235: TSctvarlabel
            Left = 181
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar13
          end
          object Sctvarlabel236: TSctvarlabel
            Left = 2
            Top = 20
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel237: TSctvarlabel
            Left = 54
            Top = 20
            Width = 381
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar62
          end
          object Sctvarlabel238: TSctvarlabel
            Left = 447
            Top = 20
            Width = 36
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Bairro:'
          end
          object Sctvarlabel239: TSctvarlabel
            Left = 485
            Top = 20
            Width = 245
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar63
          end
          object Sctvarlabel240: TSctvarlabel
            Left = 2
            Top = 39
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Complemento:'
          end
          object Sctvarlabel241: TSctvarlabel
            Left = 70
            Top = 39
            Width = 230
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar64
          end
          object Sctvarlabel242: TSctvarlabel
            Left = 324
            Top = 39
            Width = 25
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CEP:'
          end
          object Sctvarlabel243: TSctvarlabel
            Left = 350
            Top = 39
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar65
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel244: TSctvarlabel
            Left = 431
            Top = 39
            Width = 38
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cidade:'
          end
          object Sctvarlabel245: TSctvarlabel
            Left = 468
            Top = 39
            Width = 261
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar66
          end
          object Sctvarlabel246: TSctvarlabel
            Left = 2
            Top = 58
            Width = 52
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Telefones:'
          end
          object Sctvarlabel247: TSctvarlabel
            Left = 54
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar67
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel248: TSctvarlabel
            Left = 156
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar68
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel249: TSctvarlabel
            Left = 259
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar69
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel250: TSctvarlabel
            Left = 374
            Top = 58
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'FAX:'
          end
          object Sctvarlabel251: TSctvarlabel
            Left = 406
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar70
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel252: TSctvarlabel
            Left = 2
            Top = 77
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel253: TSctvarlabel
            Left = 74
            Top = 77
            Width = 660
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoent_mm_observacaoVar2
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel254: TSctvarlabel
            Left = 509
            Top = 58
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Insc. Estadual:'
          end
          object Sctvarlabel255: TSctvarlabel
            Left = 583
            Top = 58
            Width = 151
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodspedidoNr_Insc_EstadualVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubEntrega_2: TSctSubBand
          Left = 0
          Top = 256
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'PgHdSubEntrega_2'
          Updatelevel = SctLevel23
          BorderType = btSingle
          Band = SctBand21
          Order = 2
          Above = False
          object Sctvarlabel256: TSctvarlabel
            Left = 2
            Top = 2
            Width = 126
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel257: TSctvarlabel
            Left = 130
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar51
          end
          object Sctvarlabel258: TSctvarlabel
            Left = 2
            Top = 20
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel259: TSctvarlabel
            Left = 56
            Top = 20
            Width = 381
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar52
          end
          object Sctvarlabel260: TSctvarlabel
            Left = 447
            Top = 20
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Bairro:'
          end
          object Sctvarlabel261: TSctvarlabel
            Left = 484
            Top = 20
            Width = 245
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar53
          end
          object Sctvarlabel262: TSctvarlabel
            Left = 2
            Top = 39
            Width = 69
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Complemento:'
          end
          object Sctvarlabel263: TSctvarlabel
            Left = 72
            Top = 39
            Width = 230
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar54
          end
          object Sctvarlabel264: TSctvarlabel
            Left = 324
            Top = 39
            Width = 24
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CEP:'
          end
          object Sctvarlabel265: TSctvarlabel
            Left = 349
            Top = 39
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar55
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel266: TSctvarlabel
            Left = 431
            Top = 39
            Width = 39
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cidade:'
          end
          object Sctvarlabel267: TSctvarlabel
            Left = 472
            Top = 39
            Width = 254
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar56
          end
          object Sctvarlabel268: TSctvarlabel
            Left = 2
            Top = 58
            Width = 54
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Telefones:'
          end
          object Sctvarlabel269: TSctvarlabel
            Left = 56
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar57
            DataFormat.DisplayFormat = '(###) ####-####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel270: TSctvarlabel
            Left = 158
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar58
            DataFormat.DisplayFormat = '(###) ####-####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel271: TSctvarlabel
            Left = 261
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar59
            DataFormat.DisplayFormat = '(###) ####-####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel272: TSctvarlabel
            Left = 374
            Top = 58
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'FAX:'
          end
          object Sctvarlabel273: TSctvarlabel
            Left = 406
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar60
            DataFormat.DisplayFormat = '(###) ####-####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel274: TSctvarlabel
            Left = 2
            Top = 77
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel275: TSctvarlabel
            Left = 73
            Top = 77
            Width = 661
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoent_mm_observacaoVar2
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel276: TSctvarlabel
            Left = 509
            Top = 58
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Insc. Estadual:'
          end
          object Sctvarlabel277: TSctvarlabel
            Left = 580
            Top = 58
            Width = 154
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodspedidoNr_Insc_EstadualVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubVencto_2: TSctSubBand
          Tag = 2
          Left = 0
          Top = 418
          Width = 786
          Height = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubVencto_2'
          Updatelevel = SctLevel23
          BorderType = btSingle
          Band = SctBand21
          Order = 4
          Above = False
          object Sctvarlabel278: TSctvarlabel
            Left = 7
            Top = 1
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Vencimento'
          end
          object SctDt_Vencto_21: TSctvarlabel
            Left = 7
            Top = 18
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_21: TSctvarlabel
            Left = 84
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_22: TSctvarlabel
            Left = 256
            Top = 18
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_22: TSctvarlabel
            Left = 332
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_23: TSctvarlabel
            Left = 505
            Top = 18
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_23: TSctvarlabel
            Left = 582
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_24: TSctvarlabel
            Left = 7
            Top = 38
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_24: TSctvarlabel
            Left = 84
            Top = 38
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_25: TSctvarlabel
            Left = 256
            Top = 38
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_25: TSctvarlabel
            Left = 332
            Top = 38
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_26: TSctvarlabel
            Left = 505
            Top = 38
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_26: TSctvarlabel
            Left = 582
            Top = 38
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object Sctvarlabel279: TSctvarlabel
            Left = 84
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object SctVl_Juros_21: TSctvarlabel
            Left = 167
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctVl_Juros_24: TSctvarlabel
            Left = 167
            Top = 38
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Juros_12: TSctvarlabel
            Left = 167
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVerticalDivider3: TSctVerticalDivider
            Left = 243
            Top = 1
            Width = 2
            Height = 56
            DividerColor = 12171705
          end
          object Sctvarlabel280: TSctvarlabel
            Left = 256
            Top = 1
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Vencimento'
          end
          object Sctvarlabel281: TSctvarlabel
            Left = 332
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object LblVl_Juros_22: TSctvarlabel
            Left = 415
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_22: TSctvarlabel
            Left = 415
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctVl_Juros_25: TSctvarlabel
            Left = 415
            Top = 38
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object Sctvarlabel282: TSctvarlabel
            Left = 505
            Top = 1
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Vencimento'
          end
          object LblVl_Juros_32: TSctvarlabel
            Left = 664
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_23: TSctvarlabel
            Left = 664
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctVl_Juros_26: TSctvarlabel
            Left = 664
            Top = 38
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 491
            Top = 1
            Width = 2
            Height = 56
            DividerColor = 12171705
          end
          object Sctvarlabel283: TSctvarlabel
            Left = 582
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
        end
        object SctPfTransportador: TSctSubBand
          Left = 0
          Top = 670
          Width = 786
          Height = 77
          ParentColor = True
          BandName = 'SctPfTransportador'
          Updatelevel = SctLevel26
          BorderType = btSingle
          Band = SctBand24
          Above = False
          object Sctvarlabel297: TSctvarlabel
            Left = 2
            Top = 2
            Width = 89
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel299: TSctvarlabel
            Left = 2
            Top = 20
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel300: TSctvarlabel
            Left = 54
            Top = 20
            Width = 381
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorDs_EnderecoVar3
          end
          object Sctvarlabel301: TSctvarlabel
            Left = 447
            Top = 20
            Width = 36
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Bairro:'
          end
          object Sctvarlabel302: TSctvarlabel
            Left = 485
            Top = 20
            Width = 245
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorNm_BairroVar3
          end
          object Sctvarlabel303: TSctvarlabel
            Left = 2
            Top = 39
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Complemento:'
          end
          object Sctvarlabel304: TSctvarlabel
            Left = 70
            Top = 39
            Width = 230
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorDs_ComplementoVar3
          end
          object Sctvarlabel305: TSctvarlabel
            Left = 324
            Top = 39
            Width = 25
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CEP:'
          end
          object Sctvarlabel306: TSctvarlabel
            Left = 350
            Top = 39
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorNr_CEPVar3
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel307: TSctvarlabel
            Left = 431
            Top = 39
            Width = 38
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cidade:'
          end
          object Sctvarlabel308: TSctvarlabel
            Left = 468
            Top = 39
            Width = 261
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodstransportadorDp_CidadeVar3
          end
          object Sctvarlabel309: TSctvarlabel
            Left = 2
            Top = 58
            Width = 52
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Telefones:'
          end
          object Sctvarlabel310: TSctvarlabel
            Left = 54
            Top = 58
            Width = 98
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            DataFormat.DisplayFormat = '(###) ####-####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel315: TSctvarlabel
            Left = 157
            Top = 58
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Insc. Estadual:'
          end
          object Sctvarlabel316: TSctvarlabel
            Left = 231
            Top = 58
            Width = 151
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel317: TSctvarlabel
            Left = 87
            Top = 2
            Width = 421
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctDocto_3: TSctvarlabel
            Left = 510
            Top = 2
            Width = 224
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'CPF/CNPJ:'
          end
        end
        object PgHdSubCondPagto: TSctSubBand
          Left = 0
          Top = 367
          Width = 786
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubCondPagto'
          Updatelevel = SctLevel23
          BorderType = btSingle
          Band = SctBand21
          Order = 3
          Above = False
          object Sctvarlabel312: TSctvarlabel
            Left = 0
            Top = 1
            Width = 191
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Condi'#231#227'o de Pagamento:'
          end
          object Sctvarlabel314: TSctvarlabel
            Left = 17
            Top = 18
            Width = 339
            Height = 17
            Variable = adodspedidoDp_PrazoVar1
          end
        end
      end
    end
    object SctRepEstoqueVE: TSctReport
      Left = 526
      Top = 232
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
      TabOrder = 13
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEstoqueBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 31
      SLeft = 5
      SWidth = 828
      SHeight = 661
      MTop = 232
      MLeft = 526
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Ordem de Estoque Venda/Estoque'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand14
        Detail = BdEstoqueVE
        Foot = SctBand26
        PageHead = SctBand18
        PageFoot = SctBand25
        DataSource = DsItem
        Order = 1
        object SctLevel13: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel14: TSctLevel
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
        object SctDateTimeVar5: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel13
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar5: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel14
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsOrcamento
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsItem
        end
        object SctGroup2: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand27
          Footer = SctBand28
          Variable = SctDBVar101
          Level = 0
        end
        object SctLevel30: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel31: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsVendaPeriodo
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsProduto
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsTransportador
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DmMaster.DsFilial
        end
        object SctDBVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar14: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar15: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar16: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar17: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar18: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar19: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Tabela'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar20: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar21: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar22: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar23: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar24: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar25: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar26: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar27: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar28: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar29: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar30: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar31: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar32: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar33: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar34: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar35: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar36: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar37: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar38: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar39: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar40: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar41: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar42: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar43: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar44: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar45: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar46: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar47: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar48: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar49: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_ECF'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar50: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar61: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estado'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar71: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Contribuinte'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar74: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Exportador'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar79: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar80: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar81: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'st_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar83: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar84: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar85: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar86: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar87: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_obsendereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar88: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar89: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar90: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar91: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar92: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar93: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar94: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar95: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar96: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar97: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar98: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Confirmado'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar99: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar100: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar101: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_localizacao'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = FrmFuncionario_Find.DsFind
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsLaboratorio
        end
        object SctDataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DsConjunto
        end
        object SctDataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsitemQt_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Venda'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Venda'
          DataSource = DsItem
          UpdateLevel = SctLevel27
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide62: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel27
          DataSource = DmMaster.DsConecadoMes
        end
        object SctBand14: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel13
          Visible = False
        end
        object SctBand18: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 41
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel14
          BorderType = btSingle
          object Sctvarlabel12: TSctvarlabel
            Left = 1
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 39
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar5
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 633
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 671
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar5
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 36
            Width = 734
            Height = 6
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 2
            Top = 2
            Width = 243
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Ordem de Estoque (Venda / Estoque)'
          end
          object Sctvarlabel349: TSctvarlabel
            Left = 575
            Top = 2
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel350: TSctvarlabel
            Left = 686
            Top = 2
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = SctDBVar80
            DataFormat.DisplayFormat = '##,##0'
          end
        end
        object BdEstoqueVE: TSctBand
          Left = 0
          Top = 367
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'BdEstoqueVE'
          Updatelevel = SctLevel27
          Stretch = True
          OnAfterPrint = BdEstoqueVEAfterPrint
          object Sctvarlabel351: TSctvarlabel
            Left = 0
            Top = 1
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar91
            DataFormat.DisplayFormat = '###0'
          end
          object Sctvarlabel352: TSctvarlabel
            Left = 58
            Top = 1
            Width = 383
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar92
          end
          object Sctvarlabel353: TSctvarlabel
            Left = 523
            Top = 1
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemQt_VendaVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel354: TSctvarlabel
            Left = 468
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemSg_VendaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel401: TSctvarlabel
            Left = 659
            Top = 1
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar94
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel402: TSctvarlabel
            Left = 604
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = SctDBVar93
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand25: TSctBand
          Left = 0
          Top = 417
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel28
          object SctLine22: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel355: TSctvarlabel
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
            Variable = SctDBVar1
          end
          object Sctvarlabel356: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel357: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar5
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario5: TSctvarlabel
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
        object SctBand26: TSctBand
          Left = 0
          Top = 455
          Width = 786
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel29
          BorderType = btSingle
          object Sctvarlabel358: TSctvarlabel
            Left = 0
            Top = 3
            Width = 67
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Carga:'
          end
          object Sctvarlabel359: TSctvarlabel
            Left = 68
            Top = 3
            Width = 263
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar20
          end
          object Sctvarlabel360: TSctvarlabel
            Left = 591
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel361: TSctvarlabel
            Left = 664
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDBVar16
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object SctSubBand3: TSctSubBand
          Left = 0
          Top = 274
          Width = 786
          Height = 44
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PgHdSubProdutos'
          Updatelevel = SctLevel14
          OnAfterPrint = SctSubBand1AfterPrint
          Band = SctBand18
          Order = 2
          Above = False
          object Sctvarlabel362: TSctvarlabel
            Left = 0
            Top = 22
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel363: TSctvarlabel
            Left = 58
            Top = 22
            Width = 65
            Height = 17
            BorderMargin = 1
            WrapText = True
            Caption = 'Produto'
          end
          object SctLine23: TSctLine
            Left = 1
            Top = 37
            Width = 734
            Height = 6
          end
          object SctShape1: TSctShape
            Left = 466
            Top = 18
            Width = 135
            Height = 25
            Brush.Color = 15987699
          end
          object Sctvarlabel366: TSctvarlabel
            Left = 468
            Top = 22
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object Sctvarlabel365: TSctvarlabel
            Left = 523
            Top = 22
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel364: TSctvarlabel
            Left = 468
            Top = 1
            Width = 132
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Vendido'
          end
          object SctShape2: TSctShape
            Left = 601
            Top = 18
            Width = 135
            Height = 25
            Brush.Color = 15987699
          end
          object Sctvarlabel398: TSctvarlabel
            Left = 604
            Top = 22
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object Sctvarlabel399: TSctvarlabel
            Left = 659
            Top = 22
            Width = 73
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel400: TSctvarlabel
            Left = 604
            Top = 1
            Width = 132
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Faturado'
          end
        end
        object SctSubBand4: TSctSubBand
          Left = 0
          Top = 78
          Width = 786
          Height = 70
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubCliente'
          Updatelevel = SctLevel14
          Stretch = True
          BorderType = btSingle
          Band = SctBand18
          Above = False
          object Sctvarlabel367: TSctvarlabel
            Left = 1
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel368: TSctvarlabel
            Left = 60
            Top = 2
            Width = 69
            Height = 15
            Variable = SctDBVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel369: TSctvarlabel
            Left = 131
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel370: TSctvarlabel
            Left = 191
            Top = 2
            Width = 95
            Height = 15
            Variable = SctDBVar89
          end
          object Sctvarlabel371: TSctvarlabel
            Left = 1
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Cliente:'
          end
          object Sctvarlabel372: TSctvarlabel
            Left = 51
            Top = 19
            Width = 565
            Height = 15
            Variable = SctDBVar4
          end
          object Sctvarlabel373: TSctvarlabel
            Left = 1
            Top = 36
            Width = 62
            Height = 15
            Caption = 'Vendedor:'
          end
          object Sctvarlabel374: TSctvarlabel
            Left = 63
            Top = 36
            Width = 333
            Height = 15
            Variable = SctDBVar83
          end
          object Sctvarlabel375: TSctvarlabel
            Left = 2
            Top = 51
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel376: TSctvarlabel
            Left = 87
            Top = 51
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = SctDBVar88
            DataFormat.SuppressNulls = True
          end
        end
        object SctSubBand5: TSctSubBand
          Left = 0
          Top = 163
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'PgHdSubEntregaOP'
          Updatelevel = SctLevel14
          BorderType = btSingle
          Band = SctBand18
          Order = 1
          Above = False
          object Sctvarlabel377: TSctvarlabel
            Left = 2
            Top = 2
            Width = 126
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel378: TSctvarlabel
            Left = 130
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar8
          end
          object Sctvarlabel379: TSctvarlabel
            Left = 2
            Top = 20
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel380: TSctvarlabel
            Left = 64
            Top = 20
            Width = 381
            Height = 17
            Variable = SctDBVar32
          end
          object Sctvarlabel381: TSctvarlabel
            Left = 447
            Top = 20
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel382: TSctvarlabel
            Left = 489
            Top = 20
            Width = 245
            Height = 17
            Variable = SctDBVar33
          end
          object Sctvarlabel383: TSctvarlabel
            Left = 2
            Top = 39
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel384: TSctvarlabel
            Left = 89
            Top = 39
            Width = 230
            Height = 17
            Variable = SctDBVar34
          end
          object Sctvarlabel385: TSctvarlabel
            Left = 324
            Top = 39
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel386: TSctvarlabel
            Left = 359
            Top = 39
            Width = 67
            Height = 17
            Variable = SctDBVar35
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel387: TSctvarlabel
            Left = 431
            Top = 39
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel388: TSctvarlabel
            Left = 480
            Top = 39
            Width = 254
            Height = 17
            Variable = SctDBVar36
          end
          object Sctvarlabel389: TSctvarlabel
            Left = 2
            Top = 58
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel390: TSctvarlabel
            Left = 66
            Top = 58
            Width = 98
            Height = 17
            Variable = SctDBVar37
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel391: TSctvarlabel
            Left = 168
            Top = 58
            Width = 98
            Height = 17
            Variable = SctDBVar38
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel392: TSctvarlabel
            Left = 271
            Top = 58
            Width = 98
            Height = 17
            Variable = SctDBVar39
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel393: TSctvarlabel
            Left = 374
            Top = 58
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel394: TSctvarlabel
            Left = 406
            Top = 58
            Width = 98
            Height = 17
            Variable = SctDBVar40
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel395: TSctvarlabel
            Left = 2
            Top = 77
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel396: TSctvarlabel
            Left = 87
            Top = 77
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = SctDBVar87
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand27: TSctBand
          Left = 0
          Top = 333
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = SctLevel30
          object Sctvarlabel397: TSctvarlabel
            Left = 0
            Top = 0
            Width = 735
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = SctDBVar101
          end
        end
        object SctBand28: TSctBand
          Left = 0
          Top = 402
          Width = 786
          Height = 0
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel31
          Visible = False
        end
      end
    end
    object SctRepProduto: TSctReport
      Left = 691
      Top = 172
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
      TabOrder = 12
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepProdutoBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 3
      SLeft = -16
      SWidth = 824
      SHeight = 521
      MTop = 172
      MLeft = 691
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage3: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 6
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
        Detail = SctBand15
        Foot = SctBand17
        PageHead = SctBand13
        PageFoot = SctBand16
        DataSource = DsProduto
        Order = 1
        object SctLevel15: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel16: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel17: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
        end
        object SctLevel18: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
        end
        object SctLevel19: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
        end
        object SctDateTimeVar3: TSctDateTimeVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          UpdateLevel = SctLevel15
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar3: TSctPageVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          UpdateLevel = SctLevel16
          AutoVar = True
          ID = vidPageVar
        end
        object SctGroup3: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdGrupo
          Footer = GrpFtGrupo
          Variable = adodsprodutoDp_GrupoVar
          Level = 0
        end
        object SctLevel20: TSctLevel
          Left = 30
          Top = -6
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel21: TSctLevel
          Left = 30
          Top = -6
          Width = 0
          Height = 0
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsOrcamento
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsItem
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsVendaPeriodo
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsProduto
        end
        object adodsprodutoDp_GrupoVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'Dp_Grupo'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoSg_EstoqueVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'Sg_Estoque'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoQt_VendidaVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'Qt_Vendida'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoVl_VendidoVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'Vl_Vendido'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfQt_Vendida: TSctTotalvar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          Variable = adodsprodutoQt_VendidaVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Vendido: TSctTotalvar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          Variable = adodsprodutoVl_VendidoVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsTransportador
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar3: TSctDBVar
          Left = 0
          Top = -6
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
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmFuncionario_Find.DsFind
        end
        object Group1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdSubGrupo
          Footer = GrpFtSubGrupo
          Variable = adodsprodutodp_subgrupoVar
          Level = 1
        end
        object Group1HeaderLevel: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group1FooterLevel: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
        end
        object Group2: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdClasse
          Footer = GrpFtClasse
          Variable = adodsprodutodp_classeVar
          Level = 2
        end
        object Group2HeaderLevel: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group2FooterLevel: TSctLevel
          Left = 0
          Top = -6
          Width = 0
          Height = 0
        end
        object adodsprodutodp_subgrupoVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'dp_subgrupo'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutodp_classeVar: TSctDBVar
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          DataField = 'dp_classe'
          DataSource = DsProduto
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide37: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide45: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsLaboratorio
        end
        object DataSourceGuide50: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsConjunto
        end
        object DataSourceGuide55: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide56: TSctDataSourceGuide
          Left = 0
          Top = -6
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide61: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsConecadoMes
        end
        object SctBand10: TSctBand
          Left = 0
          Top = -6
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel15
          Visible = False
        end
        object SctBand13: TSctBand
          Left = 0
          Top = 16
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
        object SctBand15: TSctBand
          Left = 0
          Top = 211
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
          object Sctvarlabel163: TSctvarlabel
            Left = 22
            Top = 1
            Width = 449
            Height = 17
            Variable = adodsprodutoDp_ProdutoVar
          end
          object Sctvarlabel164: TSctvarlabel
            Left = 661
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoVl_VendidoVar
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
            Variable = adodsprodutoQt_VendidaVar
            DataFormat.DisplayFormat = '#,##0.0#'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel166: TSctvarlabel
            Left = 533
            Top = 1
            Width = 42
            Height = 17
            Variable = adodsprodutoSg_EstoqueVar
          end
        end
        object SctBand16: TSctBand
          Left = 0
          Top = 350
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
          Top = 388
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
          Top = 75
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
        end
        object GrpHdGrupo: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'GrpHdGrupo'
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
            Variable = adodsprodutoDp_GrupoVar
          end
        end
        object GrpFtGrupo: TSctBand
          Left = 0
          Top = 314
          Width = 786
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'GrpFtGrupo'
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
          Top = 143
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'GrpHdSubGrupo'
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
            Variable = adodsprodutodp_subgrupoVar
          end
        end
        object GrpFtSubGrupo: TSctBand
          Left = 0
          Top = 279
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'GrpFtSubGrupo'
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
          Top = 177
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'GrpHdClasse'
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
            Variable = adodsprodutodp_classeVar
          end
        end
        object GrpFtClasse: TSctBand
          Left = 0
          Top = 244
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'GrpFtClasse'
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
      Left = 6
      Top = 333
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 14
      Visible = False
    end
    object SctRepOrcamento: TSctReport
      Left = 260
      Top = 230
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
      TabOrder = 10
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepOrcamentoBeforePrint
      OnAfterPrint = SctRepOrcamentoAfterPrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 7
      SLeft = 6
      SWidth = 841
      SHeight = 715
      MTop = 230
      MLeft = 260
      SAlign = alNone
      Version = vAce1_0
      object RepPgOrcamento: TSctGrouppage
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.25
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Or'#231'amento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = RepFtBd
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsItem
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
          DataSource = DsOrcamento
        end
        object adodspedidoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_PrazoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Coleta_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Frete'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoPs_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoMg_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoPs_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoMg_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Dp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsItem
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_MargemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ConfirmadoVar: TSctDBVar
          Left = 0
          Top = 236
          Width = 0
          Height = 0
          DataField = 'Dp_Confirmado'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GrpFtBd
          Variable = adodsitemdp_grupoVar
          Level = 0
        end
        object GroupHeaderLevel: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
        end
        object adodspedidoVl_Coleta_TotalVar: TSctDBVar
          Left = 0
          Top = 331
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Total'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_TotalVar: TSctDBVar
          Left = 0
          Top = 331
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 19
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsVendaPeriodo
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 131
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsProduto
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsTransportador
        end
        object OverlayBandLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsorcamentonr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentodp_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoent_mm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_localizacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_localizacao'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 247
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 247
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 247
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialmm_rodapeVar: TSctDBVar
          Left = 0
          Top = 247
          Width = 0
          Height = 0
          DataField = 'mm_rodape'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialnm_abreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_abreviado'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialnm_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide33: TSctDataSourceGuide
          Left = 0
          Top = 273
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsitemdp_produtoVar: TSctDBVar
          Left = 0
          Top = 273
          Width = 0
          Height = 0
          DataField = 'dp_produto'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_grupo'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 0
          Top = 325
          Width = 0
          Height = 0
          Variable = adodsitemVl_TotalVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide38: TSctDataSourceGuide
          Left = 0
          Top = 325
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide41: TSctDataSourceGuide
          Left = 0
          Top = 329
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsLaboratorio
        end
        object adodslaboratorionm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 160
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornm_transportadorVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nm_transportador'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_documentoVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_inscestadualVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nr_inscestadual'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadords_enderecoVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'ds_endereco'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornm_bairroVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nm_bairro'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadords_complementoVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'ds_complemento'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_cepVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_telefoneVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'nr_telefone'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadordp_transportadorVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'dp_transportador'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadordp_cidadeVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'dp_cidade'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide46: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsConjunto
        end
        object DataLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object adodsconjuntocd_produtoVar: TSctDBVar
          Left = 0
          Top = 552
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntonm_produtoVar: TSctDBVar
          Left = 0
          Top = 552
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntosg_unidadeVar: TSctDBVar
          Left = 0
          Top = 552
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoqt_itemVar: TSctDBVar
          Left = 0
          Top = 552
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntovl_unitarioVar: TSctDBVar
          Left = 0
          Top = 552
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataFooterLevel: TSctLevel
          Left = 0
          Top = 552
          Width = 0
          Height = 0
        end
        object adodsitemmm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Insc_EstadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_documentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriods_enderecoVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'ds_endereco'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionm_bairroVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'nm_bairro'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriods_complementoVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'ds_complemento'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriocd_cidadeVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_cepVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_celularVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'nr_celular'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriods_emailVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'ds_email'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriomm_observacaoVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratoriodp_cidadeVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'dp_cidade'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_inscestadualVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'nr_inscestadual'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_documentoVar: TSctDBVar
          Left = 0
          Top = 96
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_faxVar: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'nr_fax'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslaboratorionr_telefoneVar: TSctDBVar
          Left = 0
          Top = 284
          Width = 0
          Height = 0
          DataField = 'nr_telefone'
          DataSource = DsLaboratorio
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_IPIVar: TSctDBVar
          Left = 0
          Top = 635
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_IPI: TSctTotalvar
          Left = 0
          Top = 635
          Width = 0
          Height = 0
          Variable = adodsitemVl_IPIVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsorcamentonm_contatoVar: TSctDBVar
          Left = 0
          Top = 849
          Width = 0
          Height = 0
          DataField = 'nm_contato'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoVl_CustoVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoPr_MargemVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Custo: TSctTotalvar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          Variable = adodsconjuntoVl_CustoVar
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsconjuntoVl_CustoTotalVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Vl_CustoTotal'
          DataSource = DsConjunto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_CustoTotal: TSctTotalvar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          Variable = adodsconjuntoVl_CustoTotalVar
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide51: TSctDataSourceGuide
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide52: TSctDataSourceGuide
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsorcamentoNr_IdentidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Identidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_EmitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ProdImpressoVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Dp_ProdImpresso'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_obsenderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_obsendereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object OverlayBand1Level: TSctLevel
          Left = 0
          Top = 833
          Width = 0
          Height = 0
        end
        object adodsorcamentoDs_Email_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Email_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_NumeroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Celular_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Celular_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Celular_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Celular_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide66: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object adodsorcamentoVl_STBVar: TSctDBVar
          Left = 0
          Top = 839
          Width = 0
          Height = 0
          DataField = 'Vl_STB'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide67: TSctDataSourceGuide
          Left = 0
          Top = 839
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 791
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 155
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 838
          Width = 791
          Height = 19
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel13: TSctvarlabel
            Left = -15
            Top = 1
            Width = 67
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemCd_ProdutoVar
            DataFormat.DisplayFormat = '###0'
            DataFormat.SuppressNulls = True
          end
          object SctVarProduto: TSctvarlabel
            Left = 58
            Top = 1
            Width = 306
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemDp_ProdImpressoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 585
            Top = 1
            Width = 89
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarQt_Item: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemSg_UnidadeVar
            DataFormat.SuppressNulls = True
          end
          object SctVarMargem: TSctvarlabel
            Left = 350
            Top = 2
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemPr_MargemVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel348: TSctvarlabel
            Left = 655
            Top = 1
            Width = 78
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_IPIVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider16: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider17: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider18: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider19: TSctVerticalDivider
            Left = 460
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider20: TSctVerticalDivider
            Left = 417
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVetDivMargem_2: TSctVerticalDivider
            Left = 370
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider22: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 18
          end
          object SctLnItem_1: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 1061
          Width = 791
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          OnAfterPrint = PageFooterBandAfterPrint
          object SctLine3: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel22: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario: TSctvarlabel
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
        object RepFtBd: TSctBand
          Left = 0
          Top = 1099
          Width = 791
          Height = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBd'
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          OnBeforePrint = RepFtBdBeforePrint
        end
        object PgHdSubCobranca: TSctSubBand
          Left = 0
          Top = 398
          Width = 791
          Height = 88
          ParentColor = True
          BandName = 'PgHdSubCobranca'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 3
          Above = False
          object Sctvarlabel31: TSctvarlabel
            Left = 2
            Top = 2
            Width = 177
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Cobran'#231'a:'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 2
            Top = 19
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 64
            Top = 19
            Width = 359
            Height = 17
            Variable = adodspedidoDs_EnderecoVar
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 504
            Top = 19
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 547
            Top = 19
            Width = 187
            Height = 17
            Variable = adodspedidoNm_BairroVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 2
            Top = 36
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 89
            Top = 36
            Width = 230
            Height = 17
            Variable = adodspedidoDs_ComplementoVar
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 324
            Top = 36
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 359
            Top = 36
            Width = 67
            Height = 17
            Variable = adodspedidoNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 431
            Top = 36
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 480
            Top = 36
            Width = 254
            Height = 17
            Variable = adodspedidoDp_CidadeVar
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 2
            Top = 53
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 66
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 166
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 265
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 365
            Top = 53
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 397
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 2
            Top = 70
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 87
            Top = 70
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_obsenderecoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel406: TSctvarlabel
            Left = 422
            Top = 19
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel407: TSctvarlabel
            Left = 445
            Top = 19
            Width = 55
            Height = 17
            Variable = adodsorcamentoDs_NumeroVar
          end
          object Sctvarlabel412: TSctvarlabel
            Left = 497
            Top = 53
            Width = 49
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel413: TSctvarlabel
            Left = 543
            Top = 53
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel414: TSctvarlabel
            Left = 645
            Top = 53
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubEntrega: TSctSubBand
          Left = 0
          Top = 501
          Width = 791
          Height = 86
          ParentColor = True
          BandName = 'PgHdSubEntrega'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 4
          Above = False
          object Sctvarlabel53: TSctvarlabel
            Left = 2
            Top = 18
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 64
            Top = 18
            Width = 359
            Height = 17
            Variable = adodspedidoEnt_Ds_EnderecoVar
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 504
            Top = 18
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 547
            Top = 18
            Width = 187
            Height = 17
            Variable = adodspedidoEnt_Nm_BairroVar
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 2
            Top = 34
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 89
            Top = 34
            Width = 230
            Height = 17
            Variable = adodspedidoEnt_Ds_ComplementoVar
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 324
            Top = 34
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 359
            Top = 34
            Width = 67
            Height = 17
            Variable = adodspedidoEnt_Nr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 431
            Top = 34
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 480
            Top = 34
            Width = 254
            Height = 17
            Variable = adodspedidoEnt_Dp_CidadeVar
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 2
            Top = 51
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 66
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 166
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 265
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 365
            Top = 51
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 397
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 2
            Top = 68
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 87
            Top = 68
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoent_mm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object SctVarDp_Endereco: TSctvarlabel
            Left = 2
            Top = 1
            Width = 177
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel408: TSctvarlabel
            Left = 422
            Top = 18
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel409: TSctvarlabel
            Left = 445
            Top = 18
            Width = 55
            Height = 17
            Variable = adodsorcamentoEnt_Ds_NumeroVar
          end
          object Sctvarlabel415: TSctvarlabel
            Left = 497
            Top = 51
            Width = 49
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel416: TSctvarlabel
            Left = 543
            Top = 51
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel417: TSctvarlabel
            Left = 645
            Top = 51
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 823
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          Visible = False
        end
        object GrpFtBd: TSctBand
          Left = 0
          Top = 1025
          Width = 791
          Height = 21
          ParentColor = True
          BandName = 'GrpFtBd'
          Updatelevel = GroupFooterLevel
          BorderType = btSingle
          OnBeforePrint = GrpFtBdBeforePrint
          object Sctvarlabel94: TSctvarlabel
            Left = 544
            Top = 3
            Width = 95
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 474
            Top = 3
            Width = 90
            Height = 17
            TotalVariable = TotalOfVl_IPI
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel344: TSctvarlabel
            Left = 417
            Top = 3
            Width = 57
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total IPI:'
          end
          object Sctvarlabel345: TSctvarlabel
            Left = 232
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total SEM IPI:'
          end
          object SctVarTotal_Grupo: TSctvarlabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 313
            Top = 3
            Width = 103
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PgHdSubVencto: TSctSubBand
          Tag = 1
          Left = 0
          Top = 346
          Width = 791
          Height = 37
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubVencto'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = PgHdSubVenctoBeforePrint
          Band = PageHeaderBand
          Order = 2
          Above = False
          object LblVl_Vencto_1: TSctvarlabel
            Left = 2
            Top = 1
            Width = 108
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object SctDt_Vencto_1: TSctvarlabel
            Left = 2
            Top = 18
            Width = 108
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_1: TSctvarlabel
            Left = 93
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_2: TSctvarlabel
            Left = 245
            Top = 18
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_2: TSctvarlabel
            Left = 339
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_3: TSctvarlabel
            Left = 492
            Top = 18
            Width = 114
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_3: TSctvarlabel
            Left = 589
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_1: TSctvarlabel
            Left = 93
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object LblVl_Vencto_2: TSctvarlabel
            Left = 245
            Top = 1
            Width = 111
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Valor_2: TSctvarlabel
            Left = 339
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object LblVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Vencto_3: TSctvarlabel
            Left = 492
            Top = 1
            Width = 114
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_3: TSctvarlabel
            Left = 589
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 243
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 491
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
        end
        object OverlayBand: TSctOverlayBand
          Left = 0
          Top = 1374
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'OverlayBand'
          Updatelevel = OverlayBandLevel
          object SctImgLogo: TSctImageLabel
            Left = 235
            Top = 2
            Width = 261
            Height = 66
            Center = True
          end
        end
        object ReportFooterBandSub: TSctSubBand
          Left = 0
          Top = 1284
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'ReportFooterBandSub'
          OnPrintWhen = ReportFooterBandSubPrintWhen
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          Band = RepFtBd
          Order = 3
          Above = False
          object Sctvarlabel1: TSctvarlabel
            Left = 5
            Top = 1
            Width = 729
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsfilialmm_rodapeVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdFilial: TSctSubBand
          Left = 0
          Top = 101
          Width = 791
          Height = 39
          ParentColor = True
          BandName = 'PgHdFilial'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 1
          Above = True
          object Sctvarlabel143: TSctvarlabel
            Left = -1
            Top = 2
            Width = 419
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsfilialnm_filialVar
          end
          object SctEndereco: TSctvarlabel
            Left = 425
            Top = 2
            Width = 310
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = '<<< Endere'#231'o >>>'
          end
        end
        object ReportFooterBandSub1: TSctSubBand
          Left = 0
          Top = 1319
          Width = 791
          Height = 40
          ParentColor = True
          BandName = 'ReportFooterBandSub1'
          Updatelevel = ReportFooterBandlevel
          Visible = False
          Band = RepFtBd
          Order = 4
          Above = False
          object SctMg_Coleta: TSctvarlabel
            Left = 384
            Top = 3
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoMg_ColetaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 444
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_ColetaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 518
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoPs_ColetaVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 592
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Coleta_FreteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 665
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Coleta_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 282
            Top = 3
            Width = 101
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Coleta:'
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 120
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 120
            Top = 21
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoPs_PedidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object PgHdFilial_Img: TSctSubBand
          Left = 0
          Top = 22
          Width = 791
          Height = 64
          ParentColor = True
          BandName = 'PgHdFilial_Img'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          Band = PageHeaderBand
          Above = True
          object SctImgCabecalho: TSctImageLabel
            Left = 0
            Top = -2
            Width = 742
            Height = 66
            Center = True
          end
        end
        object PgHdSubLaboratorio: TSctSubBand
          Left = 0
          Top = 602
          Width = 791
          Height = 87
          ParentColor = True
          BandName = 'PgHdSubLaboratorio'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 5
          Above = False
          object Sctvarlabel158: TSctvarlabel
            Left = 1
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodslaboratorionm_laboratorioVar
          end
          object SctTxtFrete: TSctvarlabel
            Left = 557
            Top = 53
            Width = 176
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Frete: CIF/FOB'
          end
          object Sctvarlabel205: TSctvarlabel
            Left = 1
            Top = 68
            Width = 106
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel209: TSctvarlabel
            Left = 86
            Top = 68
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsitemmm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 1
            Top = 19
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 63
            Top = 19
            Width = 381
            Height = 17
            Variable = adodslaboratoriods_enderecoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 446
            Top = 19
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 488
            Top = 19
            Width = 245
            Height = 17
            Variable = adodslaboratorionm_bairroVar
          end
          object Sctvarlabel331: TSctvarlabel
            Left = 1
            Top = 36
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel332: TSctvarlabel
            Left = 88
            Top = 36
            Width = 230
            Height = 17
            Variable = adodslaboratoriods_complementoVar
          end
          object Sctvarlabel333: TSctvarlabel
            Left = 323
            Top = 36
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel339: TSctvarlabel
            Left = 358
            Top = 36
            Width = 67
            Height = 17
            Variable = adodslaboratorionr_cepVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel340: TSctvarlabel
            Left = 430
            Top = 36
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel341: TSctvarlabel
            Left = 479
            Top = 36
            Width = 254
            Height = 17
            Variable = adodslaboratoriodp_cidadeVar
          end
          object Sctvarlabel342: TSctvarlabel
            Left = 1
            Top = 53
            Width = 56
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel343: TSctvarlabel
            Left = 60
            Top = 53
            Width = 98
            Height = 17
            Variable = adodslaboratorionr_telefoneVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel346: TSctvarlabel
            Left = 168
            Top = 53
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel347: TSctvarlabel
            Left = 200
            Top = 53
            Width = 98
            Height = 17
            Variable = adodslaboratorionr_faxVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubTransp: TSctSubBand
          Left = 0
          Top = 704
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'PgHdSubTransp'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 6
          Above = False
          object Sctvarlabel313: TSctvarlabel
            Left = 2
            Top = 2
            Width = 90
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel318: TSctvarlabel
            Left = 94
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstransportadornm_transportadorVar
          end
          object Sctvarlabel319: TSctvarlabel
            Left = 2
            Top = 18
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel320: TSctvarlabel
            Left = 64
            Top = 18
            Width = 381
            Height = 17
            Variable = adodstransportadords_enderecoVar
          end
          object Sctvarlabel321: TSctvarlabel
            Left = 447
            Top = 18
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel322: TSctvarlabel
            Left = 489
            Top = 18
            Width = 245
            Height = 17
            Variable = adodstransportadornm_bairroVar
          end
          object Sctvarlabel323: TSctvarlabel
            Left = 2
            Top = 35
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel324: TSctvarlabel
            Left = 89
            Top = 35
            Width = 230
            Height = 17
            Variable = adodstransportadords_complementoVar
          end
          object Sctvarlabel325: TSctvarlabel
            Left = 324
            Top = 35
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel326: TSctvarlabel
            Left = 359
            Top = 35
            Width = 67
            Height = 17
            Variable = adodstransportadornr_cepVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel327: TSctvarlabel
            Left = 431
            Top = 35
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel328: TSctvarlabel
            Left = 480
            Top = 35
            Width = 254
            Height = 17
            Variable = adodstransportadordp_cidadeVar
          end
          object Sctvarlabel329: TSctvarlabel
            Left = 2
            Top = 52
            Width = 61
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel330: TSctvarlabel
            Left = 66
            Top = 52
            Width = 98
            Height = 17
            Variable = adodstransportadornr_telefoneVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object RepFtBdSub_1: TSctSubBand
          Left = 0
          Top = 1115
          Width = 791
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBdSub_1'
          Updatelevel = ReportFooterBandlevel
          BorderType = btSingle
          Band = RepFtBd
          Above = False
          object SctMargem: TSctvarlabel
            Left = 143
            Top = 1
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Margem'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 203
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Liquido'
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 345
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Frete'
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 640
            Top = 1
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object SctMg_Pedido: TSctvarlabel
            Left = 143
            Top = 19
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoMg_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 203
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 345
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Pedido_FreteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarTotal: TSctvarlabel
            Left = 640
            Top = 19
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctTxtPedido: TSctvarlabel
            Left = 41
            Top = 19
            Width = 101
            Height = 17
            AlignHorizontal = laRight
            Caption = ' '
          end
          object SctTxtDesconto: TSctvarlabel
            Left = 417
            Top = 1
            Width = 110
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desconto'
          end
          object SctVarDesconto: TSctvarlabel
            Left = 417
            Top = 19
            Width = 110
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctTxtCusto: TSctvarlabel
            Left = 528
            Top = 1
            Width = 110
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Acr'#233'scimo'
          end
          object SctVarCusto: TSctvarlabel
            Left = 528
            Top = 19
            Width = 110
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '0'
          end
          object Sctvarlabel418: TSctvarlabel
            Left = 275
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'ST'
          end
          object Sctvarlabel419: TSctvarlabel
            Left = 275
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsorcamentoVl_STBVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object RepFtBdSub_2: TSctSubBand
          Left = 0
          Top = 1168
          Width = 791
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBdSub_2'
          Updatelevel = ReportFooterBandlevel
          BorderType = btSingle
          Band = RepFtBd
          Order = 1
          Above = False
          object Sctvarlabel8: TSctvarlabel
            Left = 563
            Top = 3
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctVarTotal_2: TSctvarlabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object Sctvarlabel169: TSctvarlabel
            Left = 400
            Top = 3
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total IPI:'
          end
          object SctVarIPI_2: TSctvarlabel
            Left = 462
            Top = 3
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object Sctvarlabel195: TSctvarlabel
            Left = 217
            Top = 3
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total SEM IPI:'
          end
          object SctVarNoIPI: TSctvarlabel
            Left = 299
            Top = 3
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
        end
        object BdConjunto: TSctSubDataBand
          Left = 0
          Top = 906
          Width = 791
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'BdConjunto'
          Updatelevel = DataLevel
          Stretch = True
          OnBeforePrint = BdConjuntoBeforePrint
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsConjunto
          object Sctvarlabel335: TSctvarlabel
            Left = -15
            Top = 1
            Width = 67
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntocd_produtoVar
          end
          object Sctvarlabel336: TSctvarlabel
            Left = 58
            Top = 1
            Width = 353
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntonm_produtoVar
          end
          object Sctvarlabel337: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntosg_unidadeVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel338: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object SctVarCestaVenda: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntovl_unitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarCestaCusto: TSctvarlabel
            Left = 605
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoVl_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarCestaMargem: TSctvarlabel
            Left = 678
            Top = 2
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoPr_MargemVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider27: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider28: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider29: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider31: TSctVerticalDivider
            Left = 460
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider32: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider34: TSctVerticalDivider
            Left = 417
            Top = 1
            Width = 2
            Height = 17
          end
          object SctLnItem_2: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object DtHdConjunto: TSctDataHeadBand
          Left = 0
          Top = 872
          Width = 791
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'DtHdConjunto'
          Updatelevel = DataHeaderLevel
          BorderType = btSingle
          Band = BdConjunto
          object Sctvarlabel334: TSctvarlabel
            Left = 341
            Top = 1
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Cesta'
          end
          object SctTxtCestaMargem: TSctvarlabel
            Left = 678
            Top = 1
            Width = 40
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Margem'
          end
          object SctTxtCestaCusto: TSctvarlabel
            Left = 605
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo'
          end
          object SctTxtCestaVenda: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Venda'
          end
          object SctTxtCestaQtde: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
            Caption = 'Quantidade'
          end
          object SctTxtCestaUnidade: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctVerticalDivider14: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider21: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider23: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider25: TSctVerticalDivider
            Left = 460
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider26: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 18
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 58
            Top = 1
            Width = 51
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Caption = 'Produto'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = -15
            Top = 1
            Width = 67
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Caption = 'C'#243'digo'
          end
          object SctVerticalDivider33: TSctVerticalDivider
            Left = 417
            Top = 1
            Width = 2
            Height = 18
          end
        end
        object DataFooter: TSctDataFootBand
          Left = 0
          Top = 973
          Width = 791
          Height = 4
          ParentColor = True
          BandName = 'DataFooter'
          Updatelevel = DataFooterLevel
          Band = BdConjunto
          object SctLine26: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 3
            AlignVertical = laTop
          end
        end
        object RepFtBdVendedor: TSctSubBand
          Left = 0
          Top = 1204
          Width = 791
          Height = 65
          ParentColor = True
          BandName = 'RepFtBdVendedor'
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          BorderType = btSingle
          Band = RepFtBd
          Order = 2
          Above = False
          object SctVarVendedor: TSctvarlabel
            Left = 4
            Top = 45
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
          object SctLnVendedor: TSctLine
            Left = 4
            Top = 35
            Width = 279
            Height = 9
          end
          object SctVarContato: TSctvarlabel
            Left = 455
            Top = 46
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsorcamentonm_contatoVar
          end
          object SctLnContato: TSctLine
            Left = 455
            Top = 35
            Width = 279
            Height = 9
          end
          object SctImgAssinatura: TSctImageLabel
            Left = 48
            Top = 2
            Width = 190
            Height = 90
            Center = True
          end
        end
        object BdCustoCesta: TSctSubBand
          Left = 0
          Top = 939
          Width = 791
          Height = 19
          ParentColor = True
          BandName = 'BdCustoCesta'
          Updatelevel = DataFooterLevel
          BorderType = btSingle
          OnBeforePrint = BdCustoCestaBeforePrint
          Band = DataFooter
          Above = True
          object SctTxtCustoUnit: TSctvarlabel
            Left = 237
            Top = 1
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo Unit'#225'rio da Cesta:'
          end
          object SctTxtCustoTotal: TSctvarlabel
            Left = 458
            Top = 1
            Width = 216
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo Total da Cesta: 0,00'
          end
        end
        object PgHdSubProdutos: TSctSubBand
          Left = 0
          Top = 789
          Width = 791
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PgHdSubProdutos'
          Updatelevel = PageHeaderBandlevel
          BorderType = btSingle
          OnAfterPrint = PgHdSubProdutosAfterPrint
          Band = PageHeaderBand
          Order = 7
          Above = False
          object Sctvarlabel6: TSctvarlabel
            Left = -15
            Top = 1
            Width = 67
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 58
            Top = 1
            Width = 65
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Caption = 'Produto'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 609
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object SctLblReposicao: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unit'#225'rio'
          end
          object SctLblCusto: TSctvarlabel
            Left = 460
            Top = 1
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 413
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctTxtMargem: TSctvarlabel
            Left = 360
            Top = 1
            Width = 55
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Margem'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 680
            Top = 1
            Width = 53
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'IPI'
          end
          object SctVerticalDivider9: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider10: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider11: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider12: TSctVerticalDivider
            Left = 460
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider13: TSctVerticalDivider
            Left = 417
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVetDivMargem_1: TSctVerticalDivider
            Left = 370
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider15: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 18
          end
        end
        object BdIm_SubProduto: TSctSubBand
          Left = 0
          Top = 992
          Width = 791
          Height = 18
          ParentColor = True
          BandName = 'BdIm_SubProduto'
          Updatelevel = DetailBandlevel
          Stretch = True
          Band = DetailBand
          Above = False
          object SctImgSubProduto: TSctImageLabel
            Left = 55
            Top = 2
            Width = 111
            Height = 14
            Center = True
          end
          object SctVerticalDivider24: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider30: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 17
          end
        end
        object OverBdCopia: TSctOverlayBand
          Left = 0
          Top = 1459
          Width = 791
          Height = 965
          ParentColor = True
          BandName = 'OverBdCopia'
          Updatelevel = OverlayBand1Level
          Visible = False
          Order = 1
          object SctImageLabel17: TSctImageLabel
            Left = 600
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel16: TSctImageLabel
            Left = 485
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel14: TSctImageLabel
            Left = 370
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel13: TSctImageLabel
            Left = 255
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel12: TSctImageLabel
            Left = 140
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel15: TSctImageLabel
            Left = 25
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel23: TSctImageLabel
            Left = 600
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel22: TSctImageLabel
            Left = 485
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel20: TSctImageLabel
            Left = 370
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel19: TSctImageLabel
            Left = 255
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel18: TSctImageLabel
            Left = 140
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel21: TSctImageLabel
            Left = 25
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel11: TSctImageLabel
            Left = 600
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel10: TSctImageLabel
            Left = 485
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel8: TSctImageLabel
            Left = 370
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel7: TSctImageLabel
            Left = 255
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel6: TSctImageLabel
            Left = 140
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel9: TSctImageLabel
            Left = 25
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel5: TSctImageLabel
            Left = 600
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel4: TSctImageLabel
            Left = 485
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel1: TSctImageLabel
            Left = 255
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel2: TSctImageLabel
            Left = 370
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageCopia: TSctImageLabel
            Left = 140
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel3: TSctImageLabel
            Left = 25
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
        end
        object PgHdSubOrcamento: TSctSubBand
          Left = 0
          Top = 170
          Width = 791
          Height = 95
          ParentColor = True
          BandName = 'PgHdSubOrcamento'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Above = False
          object SctVarDt_Impressao: TSctvarlabel
            Left = 581
            Top = 2
            Width = 146
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = '"Data: " dd/mm/yyyy'
          end
          object SctTitle: TSctvarlabel
            Left = 0
            Top = 2
            Width = 196
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 60
            Top = 19
            Width = 69
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 131
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 191
            Top = 19
            Width = 95
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_SituacaoVar
          end
          object SctVarPagto: TSctvarlabel
            Left = 458
            Top = 19
            Width = 128
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Forma de Pagamento:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 589
            Top = 19
            Width = 145
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_PrazoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 1
            Top = 34
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 51
            Top = 34
            Width = 676
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_EmitenteVar1
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 1
            Top = 76
            Width = 106
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 88
            Top = 76
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 1
            Top = 64
            Width = 62
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ/CPF:'
          end
          object SctVarDocto: TSctvarlabel
            Left = 65
            Top = 64
            Width = 136
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentonr_documentoVar
          end
          object SctTxtInscricao: TSctvarlabel
            Left = 206
            Top = 64
            Width = 111
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object SctVarInscricao: TSctvarlabel
            Left = 319
            Top = 64
            Width = 116
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentoNr_Insc_EstadualVar
          end
          object SctTxtFatura: TSctvarlabel
            Left = 202
            Top = 2
            Width = 326
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
          object SctTxtValidade: TSctvarlabel
            Left = 439
            Top = 64
            Width = 294
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Validade'
          end
          object Sctvarlabel403: TSctvarlabel
            Left = 1
            Top = 48
            Width = 42
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'E-Mail:'
          end
          object Sctvarlabel405: TSctvarlabel
            Left = 46
            Top = 48
            Width = 688
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentoDs_Email_EmitenteVar
          end
        end
        object PgHdOrcDemaisPag: TSctSubBand
          Left = 0
          Top = 280
          Width = 791
          Height = 51
          ParentColor = True
          BandName = 'PgHdOrcDemaisPag'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 1
          Above = False
          object SctVarDt_Impressao_2: TSctvarlabel
            Left = 581
            Top = 2
            Width = 146
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = '"Data: " dd/mm/yyyy'
          end
          object SctTitle_2: TSctvarlabel
            Left = 0
            Top = 2
            Width = 196
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel422: TSctvarlabel
            Left = 1
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel423: TSctvarlabel
            Left = 60
            Top = 19
            Width = 69
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel424: TSctvarlabel
            Left = 131
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel425: TSctvarlabel
            Left = 191
            Top = 19
            Width = 95
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_SituacaoVar
          end
          object Sctvarlabel426: TSctvarlabel
            Left = 458
            Top = 19
            Width = 128
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Forma de Pagamento:'
          end
          object Sctvarlabel427: TSctvarlabel
            Left = 589
            Top = 19
            Width = 145
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_PrazoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel428: TSctvarlabel
            Left = 1
            Top = 34
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel429: TSctvarlabel
            Left = 51
            Top = 34
            Width = 676
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_EmitenteVar1
          end
          object SctTxtFatura_2: TSctvarlabel
            Left = 202
            Top = 2
            Width = 326
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
        end
      end
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 317
    Top = 286
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsOrcamentoAfterOpen
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Fl_Estoque, O.Tp_Carga,'#13#10'  O.Fl_FormaPagto,'#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,'#13#10'  Cast( O.Cd_Funcionario as VarChar ) + '''' - '''' + F.Nm_Funcionario as Dp_Funcionario,'#13#10'  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,'#13#10'  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Vl_STB,'#13#10'  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia, '#13#10'  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega,'#13#10#13#10'  case O.Fl_FormaPagto'#13#10'    when ''''1'''' then ''''A Vista'''#13#10'    when ''''2'''' then ''''A Prazo'''#13#10'    when ''''3'''' then ''''Cr'#233'dito'''#13#10'    when ''''4'''' then ''''Cheque'''#13#10'    when ''''5'''' then ''''Contra-Apresenta'#231#227'o'''#13#10'    when ''''6'''' then ''''Multi-parcelado'''#13#10'    when ''''7'''' then ''''D'#233'bito'''#13#10'    when ''''8'''' then ''''PIX'''#13#10#13#10'  end as Dp_FormaPagto,'#13#10#13#10'  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,'#13#10'  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,'#13#10'  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,'#13#10'  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,'#13#10'  E.Fl_Exportador, O.Cd_Transportador, E.Nr_Identidade, E.Tp_Pessoa,'#13#10#13#10'  case O.Tp_Carga'#13#10'    when ''''1'''' then ''''Normal'''#13#10'    when ''''2'''' then ''''Estirado'''#13#10'    when ''''3'''' then ''''Industrializado'''#13#10'    when ''''4'''' then ''''Especial'''#13#10#13#10'  end as Dp_Carga,'#13#10#13#10'  EEE.Nr_Endereco as Ent_Nr_Endereco, EEE.Ds_Numero as Ent_Ds_Numero,'#13#10'  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,'#13#10'  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,'#13#10'  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + '''' - '''' + CEE.Nm_Cidade +'#13#10'     '''' - '''' + CEE.Sg_Estado as Ent_Dp_Cidade,'#13#10'  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,'#13#10'  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,'#13#10'  EEE.Mm_Observacao as Ent_Mm_Observacao, '#13#10'  EEE.Nr_Celular_1 as Ent_Nr_Celular_1, EEE.Nr_Celular_2 as Ent_Nr_Celular_2,'#13#10#13#10'  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,'#13#10'  Cast( EE.Cd_Cidade as VarChar ) + '''' - '''' + CE.Nm_Cidade + '''' - '''' + CE.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,'#13#10'  EE.Mm_Observacao as Mm_ObsEndereco, EE.Ds_Numero,'#13#10'  EE.Nr_Celular_1 as Nr_Celular_1, EE.Nr_Celular_2 as Nr_Celular_2'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EEE'#13#10'on'#13#10'  EEE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EEE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade CEE'#13#10'on'#13#10'  CEE.Cd_Cidade = EEE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_EndCobranca'#13#10#13#10'left join'#13#10'  Cidade CE'#13#10'on'#13#10'  CE.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 347
    Top = 287
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsOrcamentoTp_Carga: TStringField
      FieldName = 'Tp_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 208
      Calculated = True
    end
    object ADODsOrcamentoDp_FormaPagto: TStringField
      FieldName = 'Dp_FormaPagto'
      ReadOnly = True
      Size = 19
    end
    object ADODsOrcamentoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsOrcamentoDp_Prazo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Prazo'
      Size = 30
      Calculated = True
    end
    object ADODsOrcamentoDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoVl_Coleta_Frete: TBCDField
      FieldName = 'Vl_Coleta_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Coleta: TBCDField
      FieldName = 'Ps_Coleta'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Coleta: TBCDField
      FieldName = 'Vl_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Coleta: TBCDField
      FieldName = 'Mg_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Pedido: TBCDField
      FieldName = 'Mg_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsOrcamentoDp_Carga: TStringField
      FieldName = 'Dp_Carga'
      ReadOnly = True
      Size = 15
    end
    object ADODsOrcamentoEnt_Nr_Endereco: TSmallintField
      FieldName = 'Ent_Nr_Endereco'
    end
    object ADODsOrcamentoEnt_Ds_Titulo: TStringField
      FieldName = 'Ent_Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoEnt_Ds_Endereco: TStringField
      FieldName = 'Ent_Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoEnt_Nm_Bairro: TStringField
      FieldName = 'Ent_Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoEnt_Ds_Complemento: TStringField
      FieldName = 'Ent_Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoEnt_Nr_CEP: TStringField
      FieldName = 'Ent_Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoEnt_Dp_Cidade: TStringField
      FieldName = 'Ent_Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoEnt_Nr_Telefone_1: TStringField
      FieldName = 'Ent_Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_2: TStringField
      FieldName = 'Ent_Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_3: TStringField
      FieldName = 'Ent_Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_FAX: TStringField
      FieldName = 'Ent_Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoVl_Coleta_Total: TBCDField
      FieldName = 'Vl_Coleta_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Total: TBCDField
      FieldName = 'Vl_Pedido_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcamentoVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsOrcamentoNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsOrcamentoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentodp_funcionario: TStringField
      FieldName = 'dp_funcionario'
      Size = 8190
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsOrcamentoent_mm_observacao: TMemoField
      FieldName = 'ent_mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_obsendereco: TMemoField
      FieldName = 'mm_obsendereco'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentocd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsOrcamentonr_endcobranca: TSmallintField
      FieldName = 'nr_endcobranca'
    end
    object ADODsOrcamentoim_assinatura: TBlobField
      FieldName = 'im_assinatura'
    end
    object ADODsOrcamentonm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcamentods_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsOrcamentonm_fantasia: TStringField
      FieldName = 'nm_fantasia'
      Size = 30
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentoNr_Identidade: TStringField
      FieldName = 'Nr_Identidade'
    end
    object ADODsOrcamentoTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsOrcamentoNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoDs_Email_Emitente: TStringField
      FieldName = 'Ds_Email_Emitente'
      Size = 100
    end
    object ADODsOrcamentoEnt_Ds_Numero: TStringField
      FieldName = 'Ent_Ds_Numero'
      Size = 10
    end
    object ADODsOrcamentoDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsOrcamentoEnt_Nr_Celular_1: TStringField
      FieldName = 'Ent_Nr_Celular_1'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Celular_2: TStringField
      FieldName = 'Ent_Nr_Celular_2'
      Size = 11
    end
    object ADODsOrcamentoNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsOrcamentoNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 11
    end
    object ADODsOrcamentoFl_Estoque: TStringField
      FieldName = 'Fl_Estoque'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 2
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 385
    Top = 286
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'#13#10'  Cast( L.Cd_Localizacao as VarChar ) + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'#13#10'  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'#13#10'  OP.Mm_Observacao,'#13#10'  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'#13#10#13#10'  case'#13#10'    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''#13#10'  end as Dp_Confirmado,'#13#10#13#10'  OI.Qt_Item,'#13#10#13#10'  /*'#13#10'  case'#13#10'    when OI.Sg_Unidade = P.Sg_Estoque then'#13#10'      case'#13#10'        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Vl_Unitario * OI.Qt_Item'#13#10'        else OI.Vl_Unitario * OI.Qt_Estoque'#13#10#13#10'      end'#13#10#13#10'    else'#13#10'      OI.Vl_Unitario * OI.Qt_Item'#13#10#13#10'  end as Vl_Total,'#13#10'  */'#13#10'  OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'#13#10#13#10'  case'#13#10'    when ''''1'''' = ''''2'''' then 17.00  -- Venda fora do Estado/Exportador'#13#10'    else'#13#10'      case'#13#10'        when ''''1'''' = ''''1'''' then'#13#10'          case'#13#10'            when T.Pr_Contrib > 0 then T.Pr_Contrib'#13#10'            else 17.00'#13#10'          end'#13#10'        else'#13#10'          case'#13#10'            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'#13#10'            else 17.00'#13#10'          end'#13#10'      end'#13#10'  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda,'#13#10'  case'#13#10'    when P.Fl_ImgClasse = ''''1'''' then C.Im_Classe'#13#10'    else P.Im_Produto'#13#10'  end as Im_Produto,'#13#10'  OI.Im_SubProduto'#13#10#13#10'into'#13#10'  #itemtmp'#13#10'  '#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto /* join Lab */'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial      = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento   = OI.Nr_Orcamento and'#13#10'  OP.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = 1 and'#13#10'  OI.Nr_Orcamento  = 412 and'#13#10'  OI.Fl_Confirmado in ( ''''1'''', ''''2'''' ) and'#13#10'  OI.Cd_Produto is not null;'#13#10#13#10'insert into #itemtmp'#13#10'select'#13#10'  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Nm_Produto as Dp_Produto,'#13#10'  ''''9999 - Itens Avulsos'''' as Dp_Localizacao, null as Nm_Laboratorio, null, null,'#13#10'  null, null, ''''teste no uso de observa'#231#245'es'''', OI.Sg_Unidade,'#13#10'  OI.Vl_Unitario, OI.Pr_Margem, null,'#13#10'  case'#13#10'    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''#13#10'  end as Dp_Confirmado,'#13#10'  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item, 17.00, OI.Cd_Filial,'#13#10'  OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda, null, null'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = 1 and'#13#10'  OI.Nr_Orcamento  = 412 and'#13#10'  OI.Fl_Confirmado = ''''1'''' and'#13#10'  OI.Cd_Produto is null;'#13#10#13#10'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Dp_Produto, Dp_Localizacao,'#13#10'  Nm_Laboratorio, Ds_Condicao, Cd_Laboratorio, Tp_Frete, Cd_Transportador,'#13#10'  Mm_Observacao, Sg_Unidade, Vl_Unitario, Pr_Margem, Pr_IPI, Dp_Confirmado,'#13#10'  Qt_Item, Vl_Total, Pr_ICMS, Cd_Filial, Nr_Orcamento, Sg_Venda, Qt_Venda,'#13#10'  Im_Produto, Im_SubProduto'#13#10#13#10'from'#13#10'  #itemtmp'#13#10#13#10'order by'#13#10'  1;'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  Cast( L.Cd_Localizacao as VarChar ) + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'
      '  OP.Mm_Observacao,'
      '  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'
      ''
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      ''
      '  OI.Qt_Item,'
      ''
      '  /*'
      '  case'
      '    when OI.Sg_Unidade = P.Sg_Estoque then'
      '      case'
      '        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item )'
      '        else dbo.SGRound( OI.Vl_Unitario * OI.Qt_Estoque )'
      ''
      '      end'
      ''
      '    else'
      '      dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item )'
      ''
      '  end as Vl_Total,'
      '  */'
      '  OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'
      ''
      '  case'
      '    when @Fl_Estado = ''''2'''' then @Pr_ICMS  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when @Fl_Contribuinte = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else @Pr_ICMS'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else @Pr_ICMS'
      '          end'
      '      end'
      '  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda,'
      ''
      '  case'
      '    when P.Fl_ImgClasse = ''''1'''' then C.Im_Classe'
      '    else P.Im_Produto'
      '  end as Im_Produto,'
      '  OI.Im_SubProduto'
      ''
      'into'
      '  #itemtmp'
      '  '
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'inner join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado in ( ''''1'''', @Fl_Confirmado ) and'
      '  OI.Cd_Produto is not null;'
      ''
      'insert into #itemtmp'
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  ''''9999 - Itens Avulsos'''' as Dp_Localizacao, null as Nm_Laboratorio, null, null,'
      '  null, null, ''''teste no uso de observa'#231#245'es'''', OI.Sg_Unidade,'
      '  OI.Vl_Unitario, OI.Pr_Margem, null,'
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      '  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item, @Pr_ICMS, OI.Cd_Filial,'
      '  OI.Nr_Orcamento, OI.Sg_Venda, OI.Qt_Venda, null, null'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  OI.Cd_Produto is null;'
      ''
      '--------------- Inclus'#227'o dos itens de projeto 22/08/2013'
      '/* Projetos */  '
      ''
      'select'
      '  Nr_Item, Cd_Produto, Nm_Produto, Dp_Produto, Dp_Localizacao,'
      '  Nm_Laboratorio, Ds_Condicao, Cd_Laboratorio, Tp_Frete, Cd_Transportador,'
      '  Mm_Observacao, Sg_Unidade, Vl_Unitario, Pr_Margem, Pr_IPI, Dp_Confirmado,'
      '  Qt_Item, Vl_Total, Pr_ICMS, Cd_Filial, Nr_Orcamento, Sg_Venda, Qt_Venda,'
      '  Im_Produto, Im_SubProduto'
      ''
      'from'
      '  #itemtmp'
      ''
      'order by'
      '  @Order By;'
    )
    SQLOther1.Strings = (
      '--------------- Itens do Projeto 22/08/2013'
      'insert into #itemtmp'
      ''
      'select'
      '  OPI.Nr_Item, OPI.Cd_Produto, P.Nm_Produto, P.Nm_Produto as Dp_Produto,'
      '  Cast( L.Cd_Localizacao as VarChar ) + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'
      '  OP.Mm_Observacao,'
      '  OPI.Sg_Unidade, OPI.Vl_Unitario, 0 as Pr_Margem, P.Pr_IPI,'
      ''
      '  Dp_Confirmado = ''''Sim'''','
      ''
      '  dbo.SGRound( OPI.Qt_Item * OPr.Qt_Projeto ) as Qt_Item,'
      ''
      '  dbo.SGRound( OPI.Vl_Unitario * OPI.Qt_Item * OPr.Qt_Projeto ) as Vl_Total,'
      ''
      '  case'
      '    when @Fl_Estado = ''''2'''' then @Pr_ICMS  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when @Fl_Contribuinte = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else @Pr_ICMS'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else @Pr_ICMS'
      '          end'
      '      end'
      '  end as Pr_ICMS, OPI.Cd_Filial, OPI.Nr_Orcamento, OPI.Sg_Unidade as Sg_Venda,'
      '  dbo.SGRound( OPI.Qt_Item * OPr.Qt_Projeto ) as Qt_Venda,'
      ''
      '  case'
      '    when P.Fl_ImgClasse = ''''1'''' then C.Im_Classe'
      '    else P.Im_Produto'
      '  end as Im_Produto,'
      '  Im_SubProduto = null'
      ''
      'from'
      '  Orcamento_Projeto OPr'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = OPr.Cd_Filial and'
      '  OPI.Nr_Orcamento = OPr.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = OPr.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'inner join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OPI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OPI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  OPI.Cd_Filial     = @Cd_Filial and'
      '  OPI.Nr_Orcamento  = @Nr_Orcamento'
    )
    Left = 415
    Top = 286
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsItemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsItemPr_Margem: TBCDField
      FieldName = 'Pr_Margem'
      Precision = 9
      Size = 2
    end
    object ADODsItemDp_Confirmado: TStringField
      FieldName = 'Dp_Confirmado'
      ReadOnly = True
      Size = 3
    end
    object ADODsItemPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 18
      Size = 2
    end
    object ADODsItemPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ADODsItemdp_localizacao: TStringField
      FieldName = 'dp_localizacao'
      Size = 8190
    end
    object ADODsItemdp_produto: TStringField
      FieldName = 'dp_produto'
      Size = 120
    end
    object ADODsItemdp_grupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_grupo'
      Size = 150
      Calculated = True
    end
    object ADODsItemnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsItemds_condicao: TStringField
      FieldName = 'ds_condicao'
      Size = 254
    end
    object ADODsItemcd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsItemtp_frete: TStringField
      FieldName = 'tp_frete'
      FixedChar = True
      Size = 1
    end
    object ADODsItemcd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsItemmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsItemcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsItemnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsItemVl_IPI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_IPI'
      Calculated = True
    end
    object ADODsItemCd_Tabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cd_Tabela'
      Size = 10
      Calculated = True
    end
    object ADODsItemQt_Venda: TBCDField
      FieldName = 'Qt_Venda'
      Precision = 13
      Size = 3
    end
    object ADODsItemSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsItemIm_Produto: TBlobField
      FieldName = 'Im_Produto'
    end
    object ADODsItemDp_ProdImpresso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_ProdImpresso'
      Size = 2000
      Calculated = True
    end
    object ADODsItemIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
  end
  object DsVendaPeriodo: TDataSource
    DataSet = ADODsVendaPeriodo
    Left = 664
    Top = 82
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 709
    Top = 210
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cast( D.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + D.Nm_Grupo as Dp_Grupo,'#13#10'  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'#13#10'  Cast( CL.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + CL.Nm_Classe as Dp_Classe,'#13#10'  Cast( C.Cd_Produto as VarChar( 5 ) ) + '''' - '''' + C.Nm_Produto as Dp_Produto,'#13#10'  C.Sg_Estoque, C.Nr_Sequencia,'#13#10'  sum( B.Qt_Estoque ) as Qt_Vendida,'#13#10'  sum('#13#10'    case'#13#10'      when B.Sg_Unidade = C.Sg_Estoque then'#13#10'        case'#13#10'          when B.Qt_Estoque is null or B.Qt_Estoque = 0 then dbo.SGRound( B.Vl_Unitario * B.Qt_Item )'#13#10'          else dbo.SGRound( B.Vl_Unitario * B.Qt_Estoque )'#13#10'        end'#13#10'      else'#13#10'        dbo.SGRound( B.Vl_Unitario * B.Qt_Item )'#13#10'    end'#13#10'  ) as Vl_Vendido'#13#10#13#10'from'#13#10'  Orcamento A'#13#10#13#10'inner join'#13#10'  Orcamento_Item B'#13#10'on'#13#10'  B.Cd_Filial     = A.Cd_Filial and'#13#10'  B.Nr_Orcamento  = A.Nr_Orcamento and'#13#10'  B.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto C'#13#10'on'#13#10'  C.Cd_Produto = B.Cd_Produto'#13#10'inner join'#13#10'  Grupo D'#13#10'on'#13#10'  D.Cd_Grupo = C.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = C.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe CL'#13#10'on'#13#10'  CL.Cd_Classe = C.Cd_Classe'#13#10#13#10'where'#13#10'  A.Cd_Filial    = :Cd_Filial and'#13#10'  A.St_Orcamento = ''''9'''' and'#13#10'  A.Dt_Fatura   >= :Dt_Start and'#13#10'  A.Dt_Fatura    < :Dt_End'#13#10#13#10'group by'#13#10'  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,'#13#10'  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe'#13#10#13#10'order by'#13#10'  D.Cd_Grupo, SG.Cd_SubGrupo, CL.Cd_Classe, C.Nr_Sequencia'#13#10
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    SQLOther7.Strings = (
      '-- Seleciona os dados'
      'select'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, Sg_Estoque, Nr_Sequencia,'
      '  sum( Qt_Vendida ) as Qt_Vendida,'
      '  sum( Vl_Vendido ) as Vl_Vendido'
      ''
      'from'
      '  #Produto_Vendas'
      ''
      'group by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, Sg_Estoque, Nr_Sequencia'
      ''
      'order by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto'
    )
    SQLOther8.Strings = (
      'create table #produto_vendas'
      '  ('
      '  dp_grupo varchar( 58 ),'
      '  dp_subgrupo varchar( 58 ),'
      '  dp_classe varchar( 58 ),'
      '  dp_produto varchar( 88 ),'
      '  sg_estoque char( 2 ),'
      '  nr_sequencia int,'
      '  qt_vendida numeric( 18, 3 ),'
      '  vl_vendido numeric( 18, 3 )'
      '  )'
    )
    SQLOther9.Strings = (
      'truncate table #produto_vendas'
    )
    Left = 739
    Top = 210
    object ADODsProdutoDp_Grupo: TStringField
      FieldName = 'Dp_Grupo'
      ReadOnly = True
      Size = 58
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsProdutoNr_Sequencia: TSmallintField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsProdutoQt_Vendida: TBCDField
      FieldName = 'Qt_Vendida'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsProdutoVl_Vendido: TBCDField
      FieldName = 'Vl_Vendido'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsProdutoDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 88
    end
    object ADODsProdutodp_subgrupo: TStringField
      FieldName = 'dp_subgrupo'
      Size = 8190
    end
    object ADODsProdutodp_classe: TStringField
      FieldName = 'dp_classe'
      Size = 8190
    end
  end
  object ADODsVendaPeriodo: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsVendaPeriodoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Orcamento, A.Dt_Fatura, B.Nm_Emitente, A.Ps_Pedido, A.Vl_Orcamento,'#13#10'  C.Cd_Produto, D.Nm_Produto, C.Sg_Unidade, C.Qt_Item, C.Vl_Unitario,'#13#10'  dbo.SGRound( C.Qt_Item * C.Vl_Unitario ) as Vl_Total, F.Nm_Funcionario, A.Fl_FormaPagto, A.Nr_Fatura, ''''1'''' as Fl_Origem,'#13#10'  A.Nr_ECF'#13#10#13#10'from'#13#10'  Orcamento_Total A'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = A.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Orcamento_Item C'#13#10'on'#13#10'  C.Cd_Filial    = A.Cd_Filial and'#13#10'  C.Nr_Orcamento = A.Nr_Orcamento and'#13#10'  C.Fl_Confirmado = ''''1'''#13#10#13#10'left join'#13#10'  Produto D'#13#10'on'#13#10'  D.Cd_Produto = C.Cd_Produto'#13#10#13#10'where'#13#10'  A.St_Orcamento = ''''9'''' and'#13#10'  A.Dt_Fatura >= :Dt_Start and'#13#10'  A.Dt_Fatura  < :Dt_End '#13#10#13#10'order by'#13#10'  A.Dt_Fatura, A.Nr_Orcamento, C.Nr_Item'
    FieldDefs = <
      item
        Name = 'Nr_Orcamento'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Dt_Fatura'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Nm_Emitente'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Ps_Pedido'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 3
      end
      item
        Name = 'Vl_Orcamento'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 17
        Size = 2
      end
      item
        Name = 'Cd_Produto'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Nm_Produto'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Sg_Unidade'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'Qt_Item'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 3
      end
      item
        Name = 'Vl_Unitario'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 13
        Size = 5
      end
      item
        Name = 'Vl_Total'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 2
      end
      item
        Name = 'Nm_Funcionario'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Fl_FormaPagto'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'Nr_Fatura'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Fl_Origem'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nr_ECF'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <
      item
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = nil?
      end>
    StoreDefs = True
    SQLSelect.Strings = (
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  Cast( L.Cd_Localizacao as VarChar ) + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'
      '  OP.Mm_Observacao,'
      '  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'
      ''
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      ''
      '  case'
      '    when OI.Sg_Unidade = P.Sg_Estoque then'
      '      case'
      '        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Qt_Item'
      '        else OI.Qt_Estoque'
      ''
      '      end'
      ''
      '    else'
      '      OI.Qt_Item'
      ''
      '  end as Qt_Item,'
      ''
      '  /*'
      '  case'
      '    when OI.Sg_Unidade = P.Sg_Estoque then'
      '      case'
      '        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Vl_Unitario * OI.Qt_Item'
      '        else OI.Vl_Unitario * OI.Qt_Estoque'
      ''
      '      end'
      ''
      '    else'
      '      OI.Vl_Unitario * OI.Qt_Item'
      ''
      '  end as Vl_Total,'
      '  */'
      '  OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'
      ''
      '  case'
      '    when @Fl_Estado = ''''2'''' then @Pr_ICMS  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when @Fl_Contribuinte = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else @Pr_ICMS'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else @Pr_ICMS'
      '          end'
      '      end'
      '  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento'
      ''
      'into'
      '  #itemtmp'
      '  '
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado in ( ''''1'''', @Fl_Confirmado ) and'
      '  OI.Cd_Produto is not null;'
      ''
      'insert into #itemtmp'
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  ''''9999 - Itens Avulsos'''' as Dp_Localizacao, null as Nm_Laboratorio, null, null,'
      '  null, null, ''''teste no uso de observa'#231#245'es'''', OI.Sg_Unidade,'
      '  OI.Vl_Unitario, OI.Pr_Margem, null,'
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      '  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item, @Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  OI.Cd_Produto is null;'
      ''
      'select'
      '  Nr_Item, Cd_Produto, Nm_Produto, Dp_Produto, Dp_Localizacao,'
      '  Nm_Laboratorio, Ds_Condicao, Cd_Laboratorio, Tp_Frete, Cd_Transportador,'
      '  Mm_Observacao, Sg_Unidade, Vl_Unitario, Pr_Margem, Pr_IPI, Dp_Confirmado,'
      '  Qt_Item, Vl_Total, Pr_ICMS, Cd_Filial, Nr_Orcamento'
      ''
      'from'
      '  #itemtmp'
      ''
      'order by'
      '  @Order By;'
    )
    SQLOther0.Strings = (
      '-- Itens dos Or'#231'amentos'
      'select'
      '  Convert( SmallDateTime, Convert( Char( 11 ), A.Dt_Fatura ) ) as Dt_Fatura,'
      '  A.Nr_Orcamento, C.Nr_Item, B.Nm_Emitente, A.Ps_Pedido,'
      '  A.Vl_Orcamento,'
      '  C.Cd_Produto, C.Sg_Unidade, C.Qt_Item, C.Vl_Unitario,'
      '  C.Qt_Item * C.Vl_Unitario as Vl_Total,'
      '  case'
      '    when C.Cd_Produto is not null then D.Nm_Produto'
      '    else C.Nm_Produto'
      '  end as Nm_Produto, A.Fl_FormaPagto, A.Nr_Fatura, F.Nm_Funcionario, ''''1'''' as Fl_Origem,'
      '  A.Nr_ECF'
      ''
      'from'
      '  Orcamento_Total A'
      ''
      'inner join'
      '  Filial Fil'
      'on'
      '  Fil.Cd_Filial = A.Cd_Filial'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = A.Cd_Funcionario'
      ''
      '/* join - Emitente */'
      '/* join - Credito */'
      '/* EmitenteGrupo */'
      '/* EmitenteSubGrupo */'
      ''
      'left join'
      '  Orcamento_Item C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Fl_Confirmado = ''''1'''
    )
    SQLOther1.Strings = (
      '-- Itens do Balc'#227'o'
      'select'
      '  A.Dt_Fatura, A.Nr_Balcao as Nr_Orcamento, C.Nr_Item,'
      '    case'
      '      when A.Cd_Emitente is not null then B.Nm_Emitente'
      '      else ''''<< Venda a Cliente>>>'''
      '    end as Nm_Emitente,'
      '  D.Ps_Produto as Ps_Pedido,'
      '  A.Vl_Pedido -'
      '   (  /* Desconto */'
      '   case'
      '     when A.Pr_Desconto > 0 then A.Vl_Pedido / 100.0 * A.Pr_Desconto'
      '     else A.Vl_Desconto'
      '   end'
      '   ) +'
      '   (  /* Acrescimo */'
      '   case'
      '     when A.Pr_Custo > 0 then A.Vl_Pedido / 100.0 * A.Pr_Custo'
      '     else A.Vl_Custo'
      '   end'
      '   ) as Vl_Orcamento,'
      '  C.Cd_Produto, C.Sg_Unidade, C.Qt_Item, C.Vl_Unitario,'
      '  C.Qt_Item * C.Vl_Unitario as Vl_Total, D.Nm_Produto, A.Fl_FormaPagto,'
      '  Cast( null as int ) as Nr_Fatura, F.Nm_Funcionario, ''''2'''' as Fl_Origem,'
      '  A.Nr_ECF'
      ''
      'from'
      '  Balcao A'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = A.Cd_Funcionario'
      ''
      '/* join - Emitente */'
      '/* join - Credito */'
      '/* EmitenteGrupo */'
      '/* EmitenteSubGrupo */'
      ''
      'inner join'
      '  Balcao_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Balcao  = A.Nr_Balcao'
    )
    Left = 694
    Top = 82
    object ADODsVendaPeriodoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsVendaPeriodoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsVendaPeriodoPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 18
      Size = 3
    end
    object ADODsVendaPeriodoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsVendaPeriodoSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsVendaPeriodoQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsVendaPeriodoVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsVendaPeriodoVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsVendaPeriodonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsVendaPeriodoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsVendaPeriodoFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      Size = 1
    end
    object ADODsVendaPeriodonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsVendaPeriodonr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsVendaPeriodofl_origem: TStringField
      FieldName = 'fl_origem'
      Size = 254
    end
    object ADODsVendaPeriodoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsVendaPeriodoDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Calculated = True
    end
    object ADODsVendaPeriodoVl_Orcamento: TBCDField
      FieldName = 'Vl_Orcamento'
      Precision = 17
      Size = 2
    end
  end
  object DsTransportador: TDataSource
    DataSet = ADODsTransportador
    Left = 510
    Top = 285
  end
  object ADODsTransportador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Nm_Transportador, T.Nr_Documento, T.Nr_InscEstadual, T.Ds_Endereco,'#13#10'  T.Nm_Bairro, T.Ds_Complemento, T.Nr_CEP, T.Nr_Telefone,'#13#10'  Cast( T.Cd_Transportador as VarChar( 5 ) ) + '''' - '''' + T.Nm_Transportador as Dp_Transportador,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Cd_Transportador = :Cd_Transportador'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 540
    Top = 285
    object ADODsTransportadornm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsTransportadornr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsTransportadornr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsTransportadords_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsTransportadornm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsTransportadords_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsTransportadornr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsTransportadornr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsTransportadordp_transportador: TStringField
      FieldName = 'dp_transportador'
      Size = 8190
    end
    object ADODsTransportadordp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,'#13#10'  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros, OP.Fl_Parcela,'#13#10'  P.Ds_Boleto'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OP.Nr_Prazo, OP.Fl_Parcela'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 530
    Top = 29
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsParcelacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParcelanr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParcelavl_parcela: TBCDField
      FieldName = 'vl_parcela'
      Precision = 12
      Size = 2
    end
    object ADODsParcelapr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsParcelaFl_Parcela: TStringField
      FieldName = 'Fl_Parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelaDs_Boleto: TStringField
      FieldName = 'Ds_Boleto'
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Apara a tabela temporaria dos itens '
      'drop table #itemtmp;'
    )
    SQLOther0.Strings = (
      '/* Este '#233' o calculo do valor unitario a ser utilizado */'
      '('
      '    case'
      '      when B.Sg_Unidade = C.Sg_Estoque then'
      '        case'
      '          when B.Qt_Estoque is null or B.Qt_Estoque = 0 then dbo.SGRound( B.Vl_Unitario * B.Qt_Item )'
      '          else dbo.SGRound( B.Vl_Unitario * B.Qt_Estoque )'
      '        end'
      '      else'
      '        dbo.SGRound( B.Vl_Unitario * B.Qt_Item )'
      '    end'
      ')'
    )
    SQLOther1.Strings = (
      '-- Or'#231'amentos'
      'insert into #Produto_Vendas'
      'select'
      '  Cast( D.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + D.Nm_Grupo as Dp_Grupo,'
      '  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( CL.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + CL.Nm_Classe as Dp_Classe,'
      '  Cast( C.Cd_Produto as VarChar( 5 ) ) + '''' - '''' + C.Nm_Produto as Dp_Produto,'
      '  C.Sg_Estoque, C.Nr_Sequencia, PP.Vl_Custo,'
      '  sum( B.Qt_Estoque ) as Qt_Vendida,'
      '  '
      '  /* Valor da Venda */'
      '  sum( /* Vl_Unitario_Orcamento */ -'
      ''
      '    /* Calculo do Desconto */'
      '    coalesce('
      '      /* Vl_Unitario_Orcamento */ / 100.0 *'
      '      case'
      '        when A.Pr_Desconto > 0 then A.Pr_Desconto'
      '        else A.Vl_Desconto / A.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    /* Calculo do Acrescimo */'
      '    coalesce('
      '      /* Vl_Unitario_Orcamento */ / 100.0 *'
      '      case'
      '        when A.Pr_Custo > 0 then A.Pr_Custo'
      '        else A.Vl_Custo / A.Vl_Pedido * 100.0'
      '      end, 0.0 )'
      '  ) as Vl_Vendido'
      ''
      'from'
      '  Orcamento A'
      ''
      '/* Emitente */'
      '/* EmitenteGrupo */'
      '/* EmitenteSubGrupo */'
      ''
      'inner join'
      '  Orcamento_Item B'
      'on'
      '  B.Cd_Filial     = A.Cd_Filial and'
      '  B.Nr_Orcamento  = A.Nr_Orcamento and'
      '  B.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = A.Cd_Tabela and'
      '  PP.Cd_Produto = B.Cd_Produto'
      ''
      'inner join'
      '  Produto C'
      'on'
      '  C.Cd_Produto = B.Cd_Produto'
    )
    SQLOther2.Strings = (
      '-- Or'#231'amentos'
      'inner join'
      '  Grupo D'
      'on'
      '  D.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe CL'
      'on'
      '  CL.Cd_Classe = C.Cd_Classe'
      ''
      'where'
      '  A.Cd_Filial    = :Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  A.Dt_Fatura   >= :Dt_Start and'
      '  A.Dt_Fatura    < :Dt_End'
    )
    SQLOther3.Strings = (
      '-- Orcamentos'
      'group by'
      '  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe, PP.Vl_Custo'
    )
    SQLOther4.Strings = (
      '-- Atendimento no Balc'#227'o'
      'insert into #Produto_Vendas'
      'select'
      '  Cast( D.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + D.Nm_Grupo as Dp_Grupo,'
      '  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( CL.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + CL.Nm_Classe as Dp_Classe,'
      '  Cast( C.Cd_Produto as VarChar( 5 ) ) + '''' - '''' + C.Nm_Produto as Dp_Produto,'
      '  C.Sg_Estoque, C.Nr_Sequencia, PP.Vl_Custo,'
      '  sum( B.Qt_Item ) as Qt_Vendida,'
      ''
      '  /* Valor da Venda */'
      '  sum( ( B.Vl_Unitario * B.Qt_Item ) -'
      ''
      '    /* Calculo do Desconto */'
      '    coalesce( ( B.Vl_Unitario * B.Qt_Item ) / 100.0 *'
      '      case'
      '        when A.Pr_Desconto > 0 then A.Pr_Desconto'
      '        else A.Vl_Desconto / A.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    /* Calculo do Acrescimo */'
      '    coalesce( ( B.Vl_Unitario * B.Qt_Item ) / 100.0 *'
      '      case'
      '        when A.Pr_Custo > 0 then A.Pr_Custo'
      '        else A.Vl_Custo / A.Vl_Pedido * 100.0'
      '      end, 0.0 )'
      '  ) as Vl_Vendido'
      ''
      'from'
      '  Balcao A'
      ''
      'inner join'
      '  Balcao_Item B'
      'on'
      '  B.Cd_Filial     = A.Cd_Filial and'
      '  B.Nr_Balcao     = A.Nr_Balcao '
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = B.Cd_Produto'
      ''
      'inner join'
      '  Produto C'
      'on'
      '  C.Cd_Produto = B.Cd_Produto'
    )
    SQLOther5.Strings = (
      '-- Atendimento no Balc'#227'o'
      'inner join'
      '  Grupo D'
      'on'
      '  D.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe CL'
      'on'
      '  CL.Cd_Classe = C.Cd_Classe'
      ''
      'where'
      '  A.Cd_Filial    = :Cd_Filial and'
      '  A.St_Balcao    = ''''9'''' and'
      '  A.Dt_Fatura   >= :Dt_Start and'
      '  A.Dt_Fatura    < :Dt_End'
    )
    SQLOther6.Strings = (
      '-- Atendimento no Balc'#227'o'
      'group by'
      '  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe, PP.Vl_Custo'
    )
    SQLOther7.Strings = (
      '-- Seleciona os dados'
      'select'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  sum( Qt_Vendida ) as Qt_Vendida,'
      '  sum( Vl_Vendido ) as Vl_Vendido'
      ''
      'from'
      '  #Produto_Vendas'
      ''
      'group by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, C.Sg_Estoque, C.Nr_Sequencia'
      ''
      'order by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto'
    )
    SQLOther8.Strings = (
      'create table #produto_vendas'
      '  ('
      '  dp_grupo varchar( 58 ),'
      '  dp_subgrupo varchar( 58 ),'
      '  dp_classe varchar( 58 ),'
      '  dp_produto varchar( 88 ),'
      '  sg_estoque char( 2 ),'
      '  nr_sequencia int,'
      '  vl_custo numeric( 18, 3 ),'
      '  qt_vendida numeric( 18, 3 ),'
      '  vl_vendido numeric( 18, 3 )'
      '  )'
    )
    SQLOther9.Strings = (
      'truncate table #produto_vendas'
    )
    Left = 768
    Top = 210
  end
  object DsLaboratorio: TDataSource
    DataSet = ADODsLaboratorio
    Left = 462
    Top = 34
  end
  object ADODsLaboratorio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,'#13#10'  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,'#13#10'  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, '#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  L.Nr_InscEstadual, L.Nr_FAX'#13#10#13#10'from'#13#10'  Laboratorio L'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = L.Cd_Cidade'#13#10#13#10'where'#13#10'  L.Cd_Laboratorio = :Cd_Laboratorio'
    Parameters = <
      item
        Name = 'Cd_Laboratorio'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 491
    Top = 34
    object ADODsLaboratoriocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsLaboratorionm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsLaboratorionr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsLaboratoriods_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsLaboratorionm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsLaboratoriods_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsLaboratoriocd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsLaboratorionr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsLaboratorionr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsLaboratorionr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 10
    end
    object ADODsLaboratoriods_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsLaboratoriomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
      Size = 8190
    end
    object ADODsLaboratoriodp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsLaboratorionr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsLaboratorionr_fax: TStringField
      FieldName = 'nr_fax'
      FixedChar = True
      Size = 10
    end
  end
  object ADODsConjunto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsConjuntoCalcFields
    CommandText = 'select'#13#10'  OC.Cd_Filial, OC.Nr_Orcamento, OC.Nr_Item, OC.Cd_Produto, OC.Nm_Produto,'#13#10'  OC.Sg_Unidade, OC.Qt_Item, OC.Vl_Unitario, PP.Vl_Custo,'#13#10'  dbo.SGRound( OC.Qt_Item * OC.Vl_Unitario ) as Vl_Total,'#13#10'  dbo.SGRound( OC.Qt_Item * PP.Vl_Custo ) as Vl_CustoTotal'#13#10#13#10'from'#13#10'  Orcamento_Conjunto OC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = OC.Cd_Produto'#13#10#13#10'where'#13#10'  OC.Cd_Filial    = :Cd_Filial and'#13#10'  OC.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OC.Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    DataSource = DsItem
    MasterFields = 'Cd_Tabela;Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = 6
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Value = 8
      end>
    Left = 478
    Top = 285
    object ADODsConjuntocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsConjuntonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsConjuntonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsConjuntocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsConjuntonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsConjuntosg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsConjuntoqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsConjuntovl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsConjuntovl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 28
      Size = 6
    end
    object ADODsConjuntoVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsConjuntoPr_Margem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Margem'
      Calculated = True
    end
    object ADODsConjuntoVl_CustoTotal: TBCDField
      FieldName = 'Vl_CustoTotal'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
  end
  object DsConjunto: TDataSource
    DataSet = ADODsConjunto
    Left = 448
    Top = 285
  end
  object ADOCmdImpresso: TADOCommand
    CommandText = 'update'#13#10'  Orcamento'#13#10#13#10'set'#13#10'  Fl_Impresso = ''''1'''#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Connection = FrmMain.ADOConMaster
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 470
    Top = 90
  end
end
