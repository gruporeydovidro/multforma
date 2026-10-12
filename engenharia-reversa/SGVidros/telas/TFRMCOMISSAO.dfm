object FrmComissao: TFrmComissao
  Left = 300
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Apura'#231#227'o da Comiss'#227'o'
  ClientHeight = 564
  ClientWidth = 885
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
    Height = 564
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 864
    Height = 564
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 142
      Width = 691
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 139
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 69
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 301
      Top = 30
      Width = 105
      Height = 13
      Caption = 'Per'#237'odo de Apura'#231#227'o:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 533
      Width = 857
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 601
      Top = 30
      Width = 74
      Height = 13
      Caption = 'Pagamento em:'
    end
    object Label5: TLabel
      Left = 490
      Top = 30
      Width = 67
      Height = 13
      Caption = 'Apura'#231#227'o por:'
    end
    object Label22: TLabel
      Left = 5
      Top = 68
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 83
      Width = 23
      Height = 19
      Hint = 'Consulta Portador'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbPortadorClick
    end
    object Label19: TLabel
      Left = 357
      Top = 68
      Width = 276
      Height = 13
      Caption = 'Hist'#243'rico (Somente para pagamentos de Entrada/ '#192' Vista):'
    end
    object SbHistorico: TSpeedButton
      Left = 397
      Top = 83
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label3: TLabel
      Left = 5
      Top = 105
      Width = 70
      Height = 13
      Caption = 'Valor Apurado:'
      Transparent = True
    end
    object Label6: TLabel
      Left = 90
      Top = 105
      Width = 95
      Height = 13
      Caption = 'Valor Comissionado:'
      Transparent = True
    end
    object Label7: TLabel
      Left = 5
      Top = 145
      Width = 60
      Height = 13
      Caption = 'Vendedores:'
    end
    object Label9: TLabel
      Left = 5
      Top = 273
      Width = 356
      Height = 13
      Caption = 'Itens ( CR = Conta Recebida  CX = Caixa  CH = Cheque  OR = Or'#231'amento )'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 862
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 14
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 862
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 862
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
      Left = 691
      Top = 537
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 15
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 777
      Top = 537
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 16
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Comissao: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtSt_Comissao: TEdit
      Left = 139
      Top = 45
      Width = 156
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtDt_Comissao: TEdit
      Left = 69
      Top = 45
      Width = 65
      Height = 19
      TabStop = False
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
    object EdtDt_Inicio: TDateEdit
      Left = 301
      Top = 45
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object EdtDt_Termino: TDateEdit
      Left = 397
      Top = 45
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtCd_Usuario: TLabeledEdit
      Left = 188
      Top = 120
      Width = 94
      Height = 19
      TabStop = False
      AutoSelect = False
      AutoSize = False
      Color = clSilver
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtDt_Pagamento: TDateEdit
      Left = 601
      Top = 45
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
    end
    object CbApuracao: TComboBox
      Left = 490
      Top = 45
      Width = 106
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Pedido'
        'Recebimento'
      )
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 83
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 7
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 68
      Top = 83
      Width = 285
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 2
      Left = 357
      Top = 83
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 420
      Top = 83
      Width = 232
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
      TabOrder = 10
    end
    object EdtVl_Apurado: TCurrencyEdit
      Left = 5
      Top = 120
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtVl_Comissionado: TCurrencyEdit
      Left = 90
      Top = 120
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DbGVendedor: TDBGrid
      Left = 5
      Top = 159
      Width = 645
      Height = 111
      DataSource = DsFuncionario
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGVendedorEnter
      OnExit = DbGVendedorExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Funcionario'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 351
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Item'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Apurado'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Comissionado'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end>
    end
    object DbGItens: TDBGrid
      Left = 5
      Top = 288
      Width = 852
      Height = 243
      Hint = 'De um Click Duplo sobre o item solicitado para abrir o item gerador do lan'#231'amento'
      DataSource = DsItens
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 18
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItensDblClick
      OnEnter = DbGVendedorEnter
      OnExit = DbGVendedorExit
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Origem'
          Title.Alignment = taRightJustify
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Apurado'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Comissionado'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 413
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Pagamento'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_OrcamentoCR'
          Width = 88
          Visible = True
        end>
    end
    object SctReport: TSctReport
      Left = 426
      Top = 108
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
      TabOrder = 19
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 8
      SLeft = -9
      SWidth = 778
      SHeight = 457
      MTop = 108
      MLeft = 426
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
        BorderType = btNone
        Description = 'Apura'#231#227'o de Comiss'#227'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = RepFtBdComissao
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsFuncionario
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsDados
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsItens
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsFuncionario
        end
        object adodsdadosNr_ComissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Comissao'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_ComissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Comissao'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_InicioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Inicio'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_TerminoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Termino'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_PagamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Pagamento'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosVl_ApuradoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Apurado'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosVl_ComissionadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Comissionado'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfuncionarioCd_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Funcionario'
          DataSource = DsFuncionario
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfuncionarioNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsFuncionario
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfuncionarioVl_ApuradoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Apurado'
          DataSource = DsFuncionario
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfuncionarioVl_ComissionadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Comissionado'
          DataSource = DsFuncionario
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsitensVl_ApuradoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Apurado'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitensVl_ComissionadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Comissionado'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsitensDp_OrigemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Origem'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmPortador_Find.DsFind
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object adodsitensNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitensDt_PagamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Pagamento'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitensNr_OrcamentoCRVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_OrcamentoCR'
          DataSource = DsItens
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
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
          Height = 106
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
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
            Caption = 'Apura'#231#227'o de Comiss'#227'o'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
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
          object Sctvarlabel17: TSctvarlabel
            Left = 0
            Top = 37
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Comiss'#227'o:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 67
            Top = 37
            Width = 45
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNr_ComissaoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 116
            Top = 37
            Width = 30
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Data:'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 148
            Top = 37
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDt_ComissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 219
            Top = 37
            Width = 54
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 275
            Top = 37
            Width = 75
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 354
            Top = 37
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Per'#237'odo:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 405
            Top = 37
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDt_InicioVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 473
            Top = 37
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDt_TerminoVar
          end
          object SctVarApurado: TSctvarlabel
            Left = 0
            Top = 53
            Width = 153
            Height = 17
            Caption = 'Apurado por: Recebimento'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 156
            Top = 53
            Width = 76
            Height = 17
            Caption = 'Pagamento em:'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 236
            Top = 53
            Width = 65
            Height = 17
            Variable = adodsdadosDt_PagamentoVar
          end
          object SctVarPortador: TSctvarlabel
            Left = 0
            Top = 70
            Width = 360
            Height = 17
            Caption = 'Portador:'
          end
          object SctVarHistorico: TSctvarlabel
            Left = 369
            Top = 69
            Width = 330
            Height = 17
            Caption = 'Hist'#243'rico:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = -2
            Top = 86
            Width = 78
            Height = 17
            Caption = 'Valor Apurado:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 78
            Top = 86
            Width = 80
            Height = 17
            Variable = adodsdadosVl_ApuradoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 170
            Top = 86
            Width = 103
            Height = 17
            Caption = 'Valor Comissionado:'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 275
            Top = 86
            Width = 80
            Height = 17
            Variable = adodsdadosVl_ComissionadoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarUsuario: TSctvarlabel
            Left = 375
            Top = 86
            Width = 146
            Height = 17
            Caption = 'Usu'#225'rio:'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 99
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 176
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsfuncionarioCd_FuncionarioVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 447
            Height = 17
            Variable = adodsfuncionarioNm_FuncionarioVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 496
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsfuncionarioVl_ApuradoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 580
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsfuncionarioVl_ComissionadoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 286
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
        object RepFtBdComissao: TSctBand
          Left = 0
          Top = 321
          Width = 748
          Height = 24
          ParentColor = True
          BandName = 'RepFtBdComissao'
          Updatelevel = ReportFooterBandlevel
          object Sctvarlabel33: TSctvarlabel
            Left = 6
            Top = 6
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Legenda:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 63
            Top = 6
            Width = 108
            Height = 17
            Caption = 'CR = Conta Recebida'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 173
            Top = 6
            Width = 60
            Height = 17
            Caption = 'CX = Caixa'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 236
            Top = 6
            Width = 76
            Height = 17
            Caption = 'CH = Cheque'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 314
            Top = 6
            Width = 97
            Height = 17
            Caption = 'OR = Or'#231'amento'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 141
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
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 43
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 496
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Apurado'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 580
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comissionado'
          end
        end
        object DtlBdItens: TSctSubDataBand
          Left = 0
          Top = 253
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'DtlBdItens'
          Updatelevel = DataLevel
          Stretch = True
          OnBeforePrint = DtlBdItensBeforePrint
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItens
          object Sctvarlabel37: TSctvarlabel
            Left = 19
            Top = 1
            Width = 127
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitensDp_OrigemVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 148
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitensVl_ApuradoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 217
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitensVl_ComissionadoVar
            DataFormat.DisplayFormat = '#,##0.00#'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 290
            Top = 1
            Width = 274
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitensNm_EmitenteVar
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 567
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsitensDt_PagamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 634
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitensNr_OrcamentoCRVar
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.SuppressNulls = True
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 209
          Width = 748
          Height = 29
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = DtlBdItens
          object Sctvarlabel32: TSctvarlabel
            Left = 19
            Top = 8
            Width = 127
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Origem do Lan'#231'amento'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 148
            Top = 8
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Apurado'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 217
            Top = 8
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comissionado'
          end
          object SctLine6: TSctLine
            Left = 19
            Top = 22
            Width = 680
            Height = 7
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 290
            Top = 8
            Width = 208
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 567
            Top = 8
            Width = 60
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Pagamento'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 630
            Top = -2
            Width = 65
            Height = 32
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Or'#231'amento do CR'
          end
        end
      end
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
            Items = <
              item
                Action = ActRepSintetico
                Caption = '&Relat'#243'rio Sint'#233'tico'
                ImageIndex = 20
              end
              item
                Action = ActRepVendedor
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActApurar
            ImageIndex = 55
            ShortCut = 118
          end
          item
            Action = ActPagar
            ImageIndex = 40
            ShortCut = 119
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 120
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 16504
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 665
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
      OnExecute = ActFindExecute
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
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActRepSintetico: TAction
      Tag = 2
      Category = '2-Database'
      Caption = 'Relat'#243'rio Sint'#233'tico'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
    object ActRepVendedor: TAction
      Tag = 3
      Category = '2-Database'
      Caption = 'Somente o Vendedor Selecionado'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
    object ActApurar: TAction
      Category = '2-Database'
      Hint = 'Apurar a Comiss'#227'o'
      ImageIndex = 55
      ShortCut = 118
      OnExecute = ActApurarExecute
    end
    object ActPagar: TAction
      Category = '2-Database'
      Hint = 'Gerar o Contas '#224' Pagar'
      ImageIndex = 40
      ShortCut = 119
      OnExecute = ActPagarExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar Carga'
      ImageIndex = 21
      ShortCut = 120
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar Apura'#231#227'o para "Aberto"'
      ImageIndex = 38
      ShortCut = 16504
      OnExecute = ActRedoExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Comissao, C.Dt_Comissao, C.St_Comissao, C.Cd_Usuario,'#13#10'  C.Dt_Inicio, C.Dt_Termino, C.Tp_Apuracao, C.Dt_Pagamento,'#13#10'  C.Cd_Portador, P.Nm_Portador, C.Cd_Historico, H.Ds_Historico,'#13#10'  C.Vl_Apurado, Vl_Comissionado'#13#10#13#10'from'#13#10'  Comissao C'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = C.Cd_Portador'#13#10#13#10'left join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial   = :Cd_Filial and'#13#10'  C.Nr_Comissao = :Nr_Comissao'
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
        Name = 'Nr_Comissao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 52
    Top = 404
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Comissao: TSmallintField
      FieldName = 'Nr_Comissao'
    end
    object ADODsDadosDt_Comissao: TDateTimeField
      FieldName = 'Dt_Comissao'
    end
    object ADODsDadosSt_Comissao: TStringField
      FieldName = 'St_Comissao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsDadosDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsDadosDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsDadosTp_Apuracao: TStringField
      FieldName = 'Tp_Apuracao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDt_Pagamento: TDateTimeField
      FieldName = 'Dt_Pagamento'
    end
    object ADODsDadosCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsDadosNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsDadosCd_Historico: TSmallintField
      FieldName = 'Cd_Historico'
    end
    object ADODsDadosDs_Historico: TStringField
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Size = 10
      Calculated = True
    end
    object ADODsDadosVl_Apurado: TBCDField
      FieldName = 'Vl_Apurado'
      Precision = 12
      Size = 3
    end
    object ADODsDadosVl_Comissionado: TBCDField
      FieldName = 'Vl_Comissionado'
      Precision = 12
      Size = 3
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Comissao( Cd_Filial, Nr_Comissao, Dt_Comissao, St_Comissao, Cd_Usuario, Dt_Inicio,'
      '  Dt_Termino, Tp_Apuracao, Dt_Pagamento, Cd_Portador, Cd_Historico,'
      '  Vl_Apurado, Vl_Comissionado )'
      'values( :Cd_Filial, :Nr_Comissao, :Dt_Comissao, ''''1'''', :Cd_Usuario,'
      '  :Dt_Inicio, :Dt_Termino, :Tp_Apuracao, :Dt_Pagamento, :Cd_Portador,'
      '  :Cd_Historico, 0, 0 )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Comissao'
      ''
      'set'
      '  Cd_Usuario      = :Cd_Usuario,'
      '  Dt_Inicio       = :Dt_Inicio,'
      '  Dt_Termino      = :Dt_Termino,'
      '  Tp_Apuracao     = :Tp_Apuracao,'
      '  Dt_Pagamento    = :Dt_Pagamento,'
      '  Cd_Portador     = :Cd_Portador,'
      '  Cd_Historico    = :Cd_Historico'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Comissao = :Nr_Comissao'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Comissao'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Comissao = :Nr_Comissao'
    )
    SQLOther0.Strings = (
      '-------------------- Calculo pelo Pedido'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Comissao SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Comissao = :Nr_Comissao'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OC.Cd_Funcionario,'
      '  F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto'
      ''
      'into'
      '  ##Comis_Orcamento'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  OT.Cd_Filial    = @Cd_Filial and'
      '  OT.St_Orcamento = ''''9'''' and'
      '  OT.Dt_Fatura   >= :Dt_Start and'
      '  OT.Dt_Fatura    < :Dt_End and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial    = OT.Cd_Filial and'
      '      CI.Nr_Orcamento = OT.Nr_Orcamento'
      '    )'
      ''
      '------------ Estoque Reservado'
      '/* Estoque Reservado */'
      ''
      ''
      '---- ============================= aqui vou resolver a quest'#227'o do calculo de jun'#231#227'o'
      '/* Juncao */    '
      ''
      '-------------------- Verifica a comiss'#227'o do Item'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_Produto, OI.Nr_Item,'
      '  OI.Vl_Venda as Vl_Apurado, CO.Cd_Funcionario,'
      '  P.Pr_Comissao as Pr_Produto, FP.Pr_Comissao as Pr_FuncProduto,'
      '  -------------------- Faixa do Funcionario'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Faixa FF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FF.Cd_Funcionario = CO.Cd_Funcionario'
      '    ) as Cd_Faixa_Funcionario,'
      ''
      '    -------------------- Faixa do Produto'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Produto_Faixa FPF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FPF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FPF.Cd_Funcionario = CO.Cd_Funcionario and'
      '      FPF.Cd_Produto     = OI.Cd_Produto'
      '    ) as Cd_Faixa_Produto'
      ''
      'into'
      '  ##Comis_Faixa'
      ''
      'from'
      '  ##Comis_Orcamento CO'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = CO.Cd_Filial and'
      '  OI.Nr_Orcamento  = CO.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OI.Cd_Filial and'
      '  O.Nr_Orcamento = OI.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = O.Cd_Funcionario and'
      '  FP.Cd_Produto     = OI.Cd_Produto'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '-------------------- Neste ponto inclui a comiss'#227'o por projeto - Somente no VM'
      '-------------------- que se encontra no SQLOther8'
      '/* Projeto */'
      ''
      ''
      ''
      ''
      ''
      '-------------------- Atribui valores das faixas ( Comissao, Desconto e Perda )'
      'select '
      '  TCF.Cd_Filial, TCF.Nr_Orcamento, TCF.Cd_Produto, TCF.Vl_Apurado,'
      '  CO.Cd_Funcionario, TCF.Cd_Faixa_Funcionario, TCF.Cd_Faixa_Produto,'
      ''
      '  ---------- 1'#186' Produto-Faixa 2'#186' Funcionario-Faixa 3'#186' Funcionario-Produto'
      '  ---------- 4'#186' Funcionario   5'#186' Produto'
      '  Coalesce( FP.Pr_Comissao, FF.Pr_Comissao, TCF.Pr_FuncProduto, CO.Pr_Funcionario, TCF.Pr_Produto, 0.0 ) as Pr_Comissao,'
      '  Coalesce( FP.Pr_Desconto, FF.Pr_Desconto ) as Pr_Desc_Faixa,'
      '  Coalesce( FP.Pr_Perda, FF.Pr_Perda ) as Pr_Perda_Faixa'
      ''
      'into'
      '  ##Comis_Produto'
      ''
      'from'
      '  ##Comis_Faixa TCF'
      ''
      'inner join'
      '  ##Comis_Orcamento CO'
      'on'
      '  CO.Cd_Filial      = TCF.Cd_Filial and'
      '  CO.Nr_Orcamento   = TCF.Nr_Orcamento and'
      '  CO.Cd_Funcionario = TCF.Cd_Funcionario'
      ''
      'left join'
      '  Comissao_Faixa FP'
      'on'
      '  FP.Cd_Faixa = TCF.Cd_Faixa_Produto'
      ''
      'left join'
      '  Comissao_Faixa FF'
      'on'
      '  FF.Cd_Faixa = TCF.Cd_Faixa_Funcionario'
      ''
      '-------------------- Calcula a comiss'#227'o por Or'#231'amento'
      'select'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento,'
      '  sum( CPA.Vl_Apurado ) as Vl_Apurado,'
      '  sum( CPA.Vl_Apurado / 100.0 *'
      '     ('
      '     case when ( CO.Pr_Desconto = 0.0 ) or ( CPA.Pr_Desc_Faixa is null and CPA.Pr_Perda_Faixa is null )  then CPA.Pr_Comissao'
      '     else'
      '       ('
      '       case'
      '         when ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / CPA.Pr_Desc_Faixa) * CPA.Pr_Perda_Faixa ) / 100.0 ) ) > CPA.Pr_Comissao then CPA.Pr_Comissao'
      '         else ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / CPA.Pr_Desc_Faixa) * CPA.Pr_Perda_Faixa ) / 100.0 ) )'
      '       end'
      '       )'
      '     end'
      '     ) ) as Vl_Comissionado'
      ''
      'into'
      '  ##Comis_Apurada'
      ''
      'from'
      '  ##Comis_Produto CPA'
      ''
      'inner join'
      '  ##Comis_Orcamento CO'
      'on'
      '  CO.Cd_Filial      = CPA.Cd_Filial and'
      '  CO.Nr_Orcamento   = CPA.Nr_Orcamento and'
      '  CO.Cd_Funcionario = CPA.Cd_Funcionario'
      ''
      'group by'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento'
      ''
      '-------------------- Funcionarios comissionados'
      'insert into Comissao_Funcionario( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Vl_Apurado, Vl_Comissionado )'
      'select'
      '  Cd_Filial, @Nr_Comissao, Cd_Funcionario, sum( Vl_Apurado ), sum( Vl_Comissionado )'
      ''
      'from'
      '  ##Comis_Apurada'
      ''
      'where'
      '  Vl_Comissionado is not null and'
      '  Vl_Comissionado > 0'
      ''
      'group by'
      '  Cd_Filial, Cd_Funcionario'
      ''
      '-------------------- Itens calculados'
      'insert into Comissao_Item( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Nr_Orcamento, Vl_Apurado, Vl_Comissionado, Nr_Item )'
      'select'
      '  CA.Cd_Filial, @Nr_Comissao, CA.Cd_Funcionario, CA.Nr_Orcamento,'
      '  sum( CA.Vl_Apurado ), sum( CA.Vl_Comissionado ),'
      '  ('
      '  select '
      '    Count( * )'
      '  from'
      '    ##Comis_Apurada CNT'
      '  where'
      '    CNT.Cd_Filial     = CA.Cd_Filial and'
      '    CNT.Nr_Orcamento <= CA.Nr_Orcamento    '
      '  )'
      ''
      'from'
      '  ##Comis_Apurada CA'
      ''
      'where'
      '  CA.Vl_Comissionado is not null and'
      '  CA.Vl_Comissionado > 0'
      ''
      'group by'
      '  CA.Cd_Filial, CA.Cd_Funcionario, CA.Nr_Orcamento'
      ''
      '-------------------- Totais da comiss'#227'o'
      'update'
      '  Comissao'
      ''
      'set'
      '  St_Comissao = ''''2'''','
      '  Vl_Apurado  ='
      '    ('
      '    select'
      '      sum( Vl_Apurado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    ),'
      ''
      '  Vl_Comissionado ='
      '    ('
      '    select'
      '      sum( Vl_Comissionado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    )'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
    )
    SQLOther1.Strings = (
      '-------------------- Calculo pelo CR'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Comissao SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Comissao = :Nr_Comissao,'
      '  @Dt_Start    = :Dt_Start,'
      '  @Dt_End      = :Dt_End'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo pelo Contas a Receber'
      'select'
      '  RH.Cd_Filial, RH.Nr_Receber, RH.Nr_Parcela, RH.Nr_Lancamento, OT.Nr_Orcamento,'
      '  OC.Cd_Funcionario, F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto, RH.Vl_Lancamento,'
      '  Cast( Null as Int ) as Nr_Caixa,'
      '  Cast( Null as Int ) as Id_Cheque'
      ''
      'into'
      '  ##Comis_Receber'
      ''
      'from'
      '  Receber_Historico RH'
      ''
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RH.Cd_Filial and'
      '  R.Nr_Receber = RH.Nr_Receber and'
      '  R.St_Receber < ''''4''''                    ----- Menos cancelado'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber'
      '  /* Portador */'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = R.Cd_Filial and'
      '  OT.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento and'
      '  O.Vl_Pedido    > 0.0'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  RH.Cd_Filial      = @Cd_Filial and'
      '  RH.Dt_Lancamento >= @Dt_Start and'
      '  RH.Dt_Lancamento  < @Dt_End and'
      '  RH.Tp_Lancamento  = ''''2'''' and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial     = RH.Cd_Filial and'
      '      CI.Nr_Receber    = RH.Nr_Receber and'
      '      CI.Nr_Parcela    = RH.Nr_Parcela and'
      '      CI.Nr_Lancamento = RH.Nr_Lancamento'
      '    )'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo pelo Caixa'
      'union'
      'select'
      '  C.Cd_Filial, null, null, null, OT.Nr_Orcamento,'
      '  OC.Cd_Funcionario, F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto, C.Vl_Lancamento, C.Nr_Lancamento,'
      '  Cast( Null as Int ) as Id_Cheque'
      ''
      'from'
      '  Caixa C'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = C.Cd_Filial and'
      '  OT.Nr_Orcamento = C.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  C.Cd_Filial      = @Cd_Filial and'
      '  C.Dt_Lancamento >= @Dt_Start and'
      '  C.Dt_Lancamento  < @Dt_End and'
      '  C.Tp_Lancamento  = ''''1'''' and'
      '  /* Historico */'
      ''
      '  ----- Exclui os lan'#231'amentos estornados'
      '  not exists('
      '    select'
      '      CE.Cd_Filial'
      ''
      '    from'
      '      Caixa CE'
      ''
      '    where'
      '      CE.Cd_Filial  = C.Cd_Filial and'
      '      CE.Nr_Estorno = C.Nr_Lancamento'
      '    ) and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao CO'
      '    on'
      '      CO.Cd_Filial   = CI.Cd_Filial and'
      '      CO.Nr_Comissao = CI.Nr_Comissao and'
      '      CO.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial     = C.Cd_Filial and'
      '      CI.Nr_Lancamento = C.Nr_Lancamento'
      '    )'
      ''
      '-------------------- Or'#231'amentos que v'#227'o entrar no C'#225'lculo pelos Cheques'
      'union'
      'select'
      '  CD.Cd_Filial, null, null, null, OT.Nr_Orcamento,'
      '  OC.Cd_Funcionario, F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto, C.Vl_Cheque,'
      '  Cast( Null as Int ) as Nr_Caixa,'
      '  C.Id_Cheque'
      ''
      'from'
      '  Cheque_Deposito CD'
      ''
      'inner join'
      '  Cheque C'
      'on'
      '  C.Cd_Filial  = CD.Cd_Filial and'
      '  C.Id_Cheque  = CD.Id_Cheque and'
      '  C.Fl_Cheque  = ''''9''''                    ----- Recebido'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = C.Cd_Filial and'
      '  OT.Nr_Orcamento = C.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  CD.Cd_Filial       = @Cd_Filial and'
      '  CD.Dt_Compensacao >= @Dt_Start and'
      '  CD.Dt_Compensacao  < @Dt_End and'
      '  CD.Dt_Devolucao is null and                  ------------ N'#227'o foi devolvido'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial    = CD.Cd_Filial and'
      '      CI.Id_Cheque    = CD.Id_Cheque'
      '    )'
      ''
      '-------------------- Verifica a comiss'#227'o do Item'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_Produto, OI.Vl_Venda as Vl_Apurado,'
      '  CO.Cd_Funcionario,'
      '  P.Pr_Comissao as Pr_Produto, FP.Pr_Comissao as Pr_FuncProduto,'
      ''
      '  -------------------- Faixa do Funcionario'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Faixa FF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FF.Cd_Funcionario = CO.Cd_Funcionario'
      '    ) as Cd_Faixa_Funcionario,'
      ''
      '    -------------------- Faixa do Produto'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Produto_Faixa FPF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FPF.Cd_Faixa and'
      '      CF.Vl_Final   >= OI.Vl_Venda and'
      '      CF.Vl_Inicial <= OI.Vl_Venda'
      ''
      '    where'
      '      FPF.Cd_Funcionario = CO.Cd_Funcionario and'
      '      FPF.Cd_Produto     = OI.Cd_Produto'
      '    ) as Cd_Faixa_Produto'
      ''
      'into'
      '  ##Comis_Faixa'
      ''
      'from'
      '  ##Comis_Receber CO'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = CO.Cd_Filial and'
      '  OI.Nr_Orcamento  = CO.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OI.Cd_Filial and'
      '  O.Nr_Orcamento = OI.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = O.Cd_Funcionario and'
      '  FP.Cd_Produto     = OI.Cd_Produto'
      ''
      ''
      '-------------------- Neste ponto inclui a comiss'#227'o por projeto - Somente no VM'
      '-------------------- que se encontra no SQLOther9'
      '/* Projeto */'
      ''
      '-------------------- Atribui valores das faixas ( Comissao, Desconto e Perda )'
      'select distinct'
      '  TCF.Cd_Filial, TCF.Nr_Orcamento, TCF.Cd_Produto, TCF.Vl_Apurado,'
      '  CO.Cd_Funcionario, TCF.Cd_Faixa_Funcionario, TCF.Cd_Faixa_Produto,'
      ''
      '  ---------- 1'#186' Produto-Faixa 2'#186' Funcionario-Faixa 3'#186' Funcionario-Produto'
      '  ---------- 4'#186' Funcionario   5'#186' Produto'
      '  Coalesce( FP.Pr_Comissao, FF.Pr_Comissao, TCF.Pr_FuncProduto, CO.Pr_Funcionario, TCF.Pr_Produto, 0.0 ) as Pr_Comissao,'
      '  Coalesce( FP.Pr_Desconto, FF.Pr_Desconto ) as Pr_Desc_Faixa,'
      '  Coalesce( FP.Pr_Perda, FF.Pr_Perda ) as Pr_Perda_Faixa'
      ''
      'into'
      '  ##Comis_Produto'
      ''
      'from'
      '  ##Comis_Faixa TCF'
      ''
      'inner join'
      '  ##Comis_Receber CO'
      'on'
      '  CO.Cd_Filial      = TCF.Cd_Filial and'
      '  CO.Nr_Orcamento   = TCF.Nr_Orcamento and'
      '  CO.Cd_Funcionario = TCF.Cd_Funcionario'
      ''
      'left join'
      '  Comissao_Faixa FP'
      'on'
      '  FP.Cd_Faixa = TCF.Cd_Faixa_Produto'
      ''
      'left join'
      '  Comissao_Faixa FF'
      'on'
      '  FF.Cd_Faixa = TCF.Cd_Faixa_Funcionario'
      ''
      '-------------------- Calcula a comiss'#227'o por Or'#231'amento'
      'select'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento, CO.Nr_Receber,'
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa, CO.Id_Cheque,'
      '  sum( CPA.Vl_Apurado ) as Vl_Apurado,'
      '  sum( CPA.Vl_Apurado / 100.0 *'
      '     ('
      '     case when ( CO.Pr_Desconto = 0.0 ) or ( CPA.Pr_Desc_Faixa is null and CPA.Pr_Perda_Faixa is null )  then CPA.Pr_Comissao'
      '     else'
      '       ('
      '       case'
      '         when ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / ( case when CPA.Pr_Desc_Faixa > 0.00 then CPA.Pr_Desc_Faixa else 0.0000001 end )) * CPA.Pr_Perda_Faixa ) / 100.0 ) ) > CPA.Pr_Comissao then CPA.Pr_Comissao'
      '         else ( CPA.Pr_Comissao - ( CPA.Pr_Comissao * ( ( CO.Pr_Desconto / ( case when CPA.Pr_Desc_Faixa > 0.00 then CPA.Pr_Desc_Faixa else 0.0000001 end )) * CPA.Pr_Perda_Faixa ) / 100.0 ) )'
      '       end'
      '       )'
      '     end'
      '     ) ) as Vl_Comissionado'
      ''
      'into'
      '  ##Comis_ApuradaAux'
      ''
      'from'
      '  ##Comis_Produto CPA'
      ''
      'inner join'
      '  ##Comis_Receber CO'
      'on'
      '  CO.Cd_Filial      = CPA.Cd_Filial and'
      '  CO.Nr_Orcamento   = CPA.Nr_Orcamento and'
      '  CO.Cd_Funcionario = CPA.Cd_Funcionario'
      ''
      'group by'
      '  CPA.Cd_Filial, CO.Cd_Funcionario, CPA.Nr_Orcamento, CO.Nr_Receber,'
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa, CO.Id_Cheque'
      ''
      '-------------------- Exclui os pedidos que tenham desconto de 100% do valor'
      'delete from'
      '  ##Comis_ApuradaAux'
      ''
      'where'
      '  Vl_Apurado < 0.001'
      ''
      '-------------------- Calculo da rela'#231#227'o proporcional ao recebido - Contas a Receber'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado,'
      '  Cast( Null as SmallInt ) as Nr_Item, CAA.Id_Cheque'
      ''
      'into'
      '  ##Comis_Apurada'
      ''
      'from'
      '  ##Comis_ApuradaAux CAA'
      ''
      'inner join'
      '  ##Comis_Receber CR'
      'on'
      '  CR.Cd_Filial     = CAA.Cd_Filial and'
      '  CR.Nr_Receber    = CAA.Nr_Receber and'
      '  CR.Nr_Parcela    = CAA.Nr_Parcela and'
      '  CR.Nr_Lancamento = CAA.Nr_Lancamento'
      ''
      '-------------------- Calculo da rela'#231#227'o proporcional ao recebido - Caixa'
      'insert into ##Comis_Apurada'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado,'
      '  null as Nr_Item, CAA.Id_Cheque'
      ''
      'from'
      '  ##Comis_ApuradaAux CAA'
      ''
      'inner join'
      '  ##Comis_Receber CR'
      'on'
      '  CR.Cd_Filial = CAA.Cd_Filial and'
      '  CR.Nr_Caixa  = CAA.Nr_Caixa'
      ''
      '-------------------- Calculo da rela'#231#227'o proporcional ao recebido - Cheque'
      'insert into ##Comis_Apurada'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado,'
      '  null as Nr_Item, CAA.Id_Cheque'
      ''
      'from'
      '  ##Comis_ApuradaAux CAA'
      ''
      'inner join'
      '  ##Comis_Receber CR'
      'on'
      '  CR.Cd_Filial = CAA.Cd_Filial and'
      '  CR.Id_Cheque = CAA.Id_Cheque'
      ''
      '-------------------- Atualiza o numero do item'
      'update'
      '  ##Comis_Apurada'
      ''
      'set'
      '  Nr_Item ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      ##Comis_Apurada CA'
      ''
      '    where'
      '      CA.Cd_Filial      = ##Comis_Apurada.Cd_Filial and'
      '      CA.Cd_Funcionario = ##Comis_Apurada.Cd_Funcionario and'
      '      ('
      '      Cast( Coalesce( CA.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Caixa, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Id_Cheque, 0 ) as Char( 7 ) ) <='
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Caixa, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Id_Cheque, 0 ) as Char( 7 ) )'
      '      )'
      '    )'
      ''
      '-------------------- Funcionarios comissionados'
      'insert into Comissao_Funcionario( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Vl_Apurado, Vl_Comissionado )'
      'select'
      '  Cd_Filial, @Nr_Comissao, Cd_Funcionario, sum( Vl_Apurado ), sum( Vl_Comissionado )'
      ''
      'from'
      '  ##Comis_Apurada'
      ''
      'where'
      '  Vl_Comissionado is not null and'
      '  Vl_Comissionado > 0'
      ''
      'group by'
      '  Cd_Filial, Cd_Funcionario'
      ''
      '-------------------- Itens calculados'
      'insert into Comissao_Item( Cd_Filial, Nr_Comissao, Cd_Funcionario,'
      '  Nr_Receber, Nr_Parcela, Nr_Lancamento, Nr_Caixa, Vl_Apurado,'
      '  Vl_Comissionado, Nr_Item, Id_Cheque )'
      'select'
      '  CA.Cd_Filial, @Nr_Comissao, CA.Cd_Funcionario, CA.Nr_Receber, CA.Nr_Parcela,'
      '  CA.Nr_Lancamento, CA.Nr_Caixa, sum( CA.Vl_Apurado ), sum( CA.Vl_Comissionado ), '
      '  CA.Nr_Item, CA.Id_Cheque'
      ''
      'from'
      '  ##Comis_Apurada CA'
      ''
      'where'
      '  CA.Vl_Comissionado is not null and'
      '  CA.Vl_Comissionado > 0'
      ''
      'group by'
      '  CA.Cd_Filial, CA.Cd_Funcionario, CA.Nr_Receber, CA.Nr_Parcela,'
      '  CA.Nr_Lancamento, CA.Nr_Caixa, CA.Nr_Item, CA.Id_Cheque'
      ''
      '-------------------- Totais da comiss'#227'o'
      'update'
      '  Comissao'
      ''
      'set'
      '  St_Comissao = ''''2'''','
      '  Vl_Apurado  ='
      '    ('
      '    select'
      '      sum( Vl_Apurado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    ),'
      ''
      '  Vl_Comissionado ='
      '    ('
      '    select'
      '      sum( Vl_Comissionado )'
      ''
      '    from'
      '      Comissao_Funcionario CF'
      ''
      '    where'
      '      CF.Cd_Filial   = Comissao.Cd_Filial and'
      '      CF.Nr_Comissao = Comissao.Nr_Comissao'
      '    )'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
    )
    SQLOther2.Strings = (
      '--------------- Calculo de comiss'#227'o de itens que sofreram jun'#231#227'o'
      'insert into ##Comis_Orcamento'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OC.Cd_Funcionario,'
      '  F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto'
      ''
      'from'
      '  ##Comis_Orcamento CO'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = CO.Cd_Filial and'
      '  O.Nr_Juncao    = CO.Nr_Orcamento and'
      '  O.St_Orcamento = ''''6'''' and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial    = O.Cd_Filial and'
      '      CI.Nr_Orcamento = O.Nr_Orcamento'
      '    )'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = O.Cd_Filial and'
      '  OT.Nr_Orcamento = O.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      '--------------- Exclui os or'#231'amentos faturados e deixa somente os de jun'#231#227'o'
      'delete from'
      '  ##Comis_Orcamento'
      ''
      'from'
      '  ##Comis_Orcamento CO'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial = CO.Cd_Filial and'
      '  O.Nr_Juncao = CO.Nr_Orcamento'
    )
    SQLOther3.Strings = (
      '-------------------- Abrir comiss'#227'o'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Comissao SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Comissao = :Nr_Comissao'
      ''
      '-------------------- Apaga o CP'
      'delete from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
      ''
      '-------------------- Apaga os itens'
      'delete from'
      '  Comissao_Item'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
      ''
      '-------------------- Apaga os Funcionarios'
      'delete from'
      '  Comissao_Funcionario'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
      ''
      '-------------------- Abre a apura'#231#227'o'
      'update'
      '  Comissao'
      ''
      'set'
      '  St_Comissao     = ''''1'''','
      '  Vl_Apurado      = 0,'
      '  Vl_Comissionado = 0'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
    )
    SQLOther4.Strings = (
      '-------------------- Cancelar comiss'#227'o'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Comissao SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Comissao = :Nr_Comissao'
      ''
      '-------------------- Apaga o CP'
      'delete from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
      ''
      '-------------------- Cancela a apura'#231#227'o'
      'update'
      '  Comissao'
      ''
      'set'
      '  St_Comissao = ''''4'''
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Comissao = @Nr_Comissao'
    )
    SQLOther5.Strings = (
      '--------------- Comiss'#227'o de item de jun'#231#227'o'
      ''
    )
    SQLOther6.Strings = (
      '--------------- Inclui o Estoque Reservado no calculo'
      'union'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OC.Cd_Funcionario,'
      '  F.Pr_Comissao as Pr_Funcionario,'
      '  OT.Vl_Orcamento, Cast( 0.0 as Numeric( 12, 3 ) ) as Vl_Comissionado,'
      '  case'
      '    when O.Vl_Desconto > 0 then O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '    else O.Pr_Desconto'
      ''
      '  end as Pr_Desconto'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Comissao OC'
      'on'
      '  OC.Cd_Filial    = OT.Cd_Filial and'
      '  OC.Nr_Orcamento = OT.Nr_Orcamento'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OC.Cd_Funcionario'
      ''
      'where'
      '  OT.Cd_Filial      = @Cd_Filial and'
      '  OT.St_Orcamento   = ''''5'''' and'
      '  OT.Dt_Confirmado >= :Dt_Start and'
      '  OT.Dt_Confirmado  < :Dt_End and'
      ''
      '  not exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Comissao_Item CI'
      ''
      '    inner join'
      '      Comissao C'
      '    on'
      '      C.Cd_Filial   = CI.Cd_Filial and'
      '      C.Nr_Comissao = CI.Nr_Comissao and'
      '      C.St_Comissao < ''''4''''                 ----- Considera as cancelas'
      ''
      '    where'
      '      CI.Cd_Filial    = OT.Cd_Filial and'
      '      CI.Nr_Orcamento = OT.Nr_Orcamento'
      '    )'
    )
    SQLOther7.Strings = (
      '-------------------- Elimina tabelas temporarias - PELO CR'
      'if Object_ID( ''''TempDB..##Comis_Receber'''' ) is not null'
      '  drop table ##Comis_Receber'
      ''
      'if Object_ID( ''''TempDB..##Comis_Faixa'''' ) is not null'
      '  drop table ##Comis_Faixa'
      ''
      'if Object_ID( ''''TempDB..##Comis_Produto'''' ) is not null'
      '  drop table ##Comis_Produto'
      ''
      'if Object_ID( ''''TempDB..##Comis_Apurada'''' ) is not null'
      '  drop table ##Comis_Apurada'
      ''
      'if Object_ID( ''''TempDB..##Comis_ApuradaAux'''' ) is not null'
      '  drop table ##Comis_ApuradaAux'
      ''
      '-------------------- Elimina tabelas temporarias - Pedido'
      'if Object_ID( ''''TempDB..##Comis_Orcamento'''' ) is not null'
      '  drop table ##Comis_Orcamento'
      ''
      'if Object_ID( ''''TempDB..##Comis_Faixa'''' ) is not null'
      '  drop table ##Comis_Faixa'
      ''
      'if Object_ID( ''''TempDB..##Comis_Produto'''' ) is not null'
      '  drop table ##Comis_Produto'
      ''
      'if Object_ID( ''''TempDB..##Comis_Apurada'''' ) is not null'
      '  drop table ##Comis_Apurada'
      ''
    )
    SQLOther8.Strings = (
      '-------------------- Verifica a comiss'#227'o do Item - Projeto - Por Venda (or'#231'amento)'
      'union all'
      ''
      'select'
      '  OPI.Cd_Filial, OPI.Nr_Orcamento, OPI.Cd_Produto, 100 + OPI.Nr_Item as Nr_Item,'
      '  OPI.Vl_Venda as Vl_Apurado, CO.Cd_Funcionario,'
      '  P.Pr_Comissao as Pr_Produto, FP.Pr_Comissao as Pr_FuncProduto,'
      '  -------------------- Faixa do Funcionario'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Faixa FF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FF.Cd_Faixa and'
      '      CF.Vl_Final   >= OPI.Vl_Venda and'
      '      CF.Vl_Inicial <= OPI.Vl_Venda'
      ''
      '    where'
      '      FF.Cd_Funcionario = CO.Cd_Funcionario'
      '    ) as Cd_Faixa_Funcionario,'
      ''
      '    -------------------- Faixa do Produto'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Produto_Faixa FPF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FPF.Cd_Faixa and'
      '      CF.Vl_Final   >= OPI.Vl_Venda and'
      '      CF.Vl_Inicial <= OPI.Vl_Venda'
      ''
      '    where'
      '      FPF.Cd_Funcionario = CO.Cd_Funcionario and'
      '      FPF.Cd_Produto     = OPI.Cd_Produto'
      '    ) as Cd_Faixa_Produto'
      ''
      'from'
      '  ##Comis_Orcamento CO'
      ''
      'inner join'
      '  Orcamento_Projeto_Item_Total OPI'
      'on'
      '  OPI.Cd_Filial     = CO.Cd_Filial and'
      '  OPI.Nr_Orcamento  = CO.Nr_Orcamento '
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OPI.Cd_Filial and'
      '  O.Nr_Orcamento = OPI.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = O.Cd_Funcionario and'
      '  FP.Cd_Produto     = OPI.Cd_Produto'
    )
    SQLOther9.Strings = (
      '-------------------- Verifica a comiss'#227'o do Item - Projetos - Por Recebimento'
      'union'
      ''
      'select'
      '  OPI.Cd_Filial, OPI.Nr_Orcamento, OPI.Cd_Produto, OPI.Vl_Venda as Vl_Apurado,'
      '  CO.Cd_Funcionario,'
      '  P.Pr_Comissao as Pr_Produto, FP.Pr_Comissao as Pr_FuncProduto,'
      ''
      '  -------------------- Faixa do Funcionario'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Faixa FF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FF.Cd_Faixa and'
      '      CF.Vl_Final   >= OPI.Vl_Venda and'
      '      CF.Vl_Inicial <= OPI.Vl_Venda'
      ''
      '    where'
      '      FF.Cd_Funcionario = CO.Cd_Funcionario'
      '    ) as Cd_Faixa_Funcionario,'
      ''
      '    -------------------- Faixa do Produto'
      '    ('
      '    select top 1'
      '      CF.Cd_Faixa'
      ''
      '    from'
      '      Funcionario_Produto_Faixa FPF'
      ''
      '    inner join'
      '      Comissao_Faixa CF'
      '    on'
      '      CF.Cd_Faixa    = FPF.Cd_Faixa and'
      '      CF.Vl_Final   >= OPI.Vl_Venda and'
      '      CF.Vl_Inicial <= OPI.Vl_Venda'
      ''
      '    where'
      '      FPF.Cd_Funcionario = CO.Cd_Funcionario and'
      '      FPF.Cd_Produto     = OPI.Cd_Produto'
      '    ) as Cd_Faixa_Produto'
      ''
      'from'
      '  ##Comis_Receber CO'
      ''
      'inner join'
      '  Orcamento_Projeto_Item_Total OPI'
      'on'
      '  OPI.Cd_Filial     = CO.Cd_Filial and'
      '  OPI.Nr_Orcamento  = CO.Nr_Orcamento '
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OPI.Cd_Filial and'
      '  O.Nr_Orcamento = OPI.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto'
      ''
      'left join'
      '  Funcionario_Produto FP'
      'on'
      '  FP.Cd_Funcionario = O.Cd_Funcionario and'
      '  FP.Cd_Produto     = OPI.Cd_Produto'
    )
    Left = 82
    Top = 404
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Prior'#13#10'select top 1'#13#10'  Nr_Comissao'#13#10#13#10'from'#13#10'  Comissao'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Comissao < :Nr_Comissao'#13#10#13#10'order by'#13#10'  Nr_Comissao desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Comissao'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Comissao ) + 1 as Nr_Comissao'
      ''
      'from'
      '  Comissao A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Comissao'
      ''
      'from'
      '  Comissao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Comissao'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Comissao'
      ''
      'from'
      '  Comissao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Comissao < :Nr_Comissao'
      ''
      'order by'
      '  Nr_Comissao desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Comissao'
      ''
      'from'
      '  Comissao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Comissao > :Nr_Comissao'
      ''
      'order by'
      '  Nr_Comissao'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Comissao'
      ''
      'from'
      '  Comissao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Comissao desc'
    )
    Left = 112
    Top = 404
    object ADODsNavegarNr_Comissao: TSmallintField
      FieldName = 'Nr_Comissao'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 24
    Top = 404
  end
  object ADODsFuncionario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  CF.Cd_Filial, CF.Nr_Comissao, CF.Cd_Funcionario, F.Nm_Funcionario,'#13#10'  CF.Vl_Apurado, CF.Vl_Comissionado,'#13#10'  Nr_Item ='#13#10'  ('#13#10'  select'#13#10'    count( * ) '#13#10#13#10'  from'#13#10'    Comissao_Item CI'#13#10#13#10'  where'#13#10'    CI.Cd_Filial   = CF.Cd_Filial and'#13#10'    CI.Nr_Comissao = CF.Nr_Comissao and'#13#10'    CI.Cd_Funcionario = CF.Cd_Funcionario'#13#10'  )'#13#10#13#10'from'#13#10'  Comissao_Funcionario CF'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = CF.Cd_Funcionario'#13#10#13#10'where'#13#10'  CF.Cd_Filial   = :Cd_Filial and'#13#10'  CF.Nr_Comissao = :Nr_Comissao'#13#10#13#10'order by'#13#10'  F.Nm_Funcionario'
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
        Name = 'Nr_Comissao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 60
    Top = 243
    object ADODsFuncionarioCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFuncionarioNr_Comissao: TSmallintField
      FieldName = 'Nr_Comissao'
    end
    object ADODsFuncionarioCd_Funcionario: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Funcionario'
    end
    object ADODsFuncionarioNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsFuncionarioVl_Apurado: TBCDField
      DisplayLabel = 'Apurado'
      FieldName = 'Vl_Apurado'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsFuncionarioVl_Comissionado: TBCDField
      DisplayLabel = 'Comissionado'
      FieldName = 'Vl_Comissionado'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsFuncionarioNr_Item: TIntegerField
      DisplayLabel = 'Itens'
      FieldName = 'Nr_Item'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
  end
  object ADODsItens: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsItensCalcFields
    CommandText = 'select'#13#10'  CI.Cd_Filial, CI.Nr_Comissao, CI.Cd_Funcionario, CI.Nr_Item, CI.Nr_Receber,'#13#10'  CI.Nr_Parcela, CI.Nr_Lancamento, CI.Nr_Caixa, CI.Nr_Orcamento,'#13#10'  CI.Vl_Apurado, CI.Vl_Comissionado, CI.Id_Cheque,'#13#10'  IsNull( OT.Nm_Emitente, IsNull( ER.Nm_Emitente, IsNull( ECX.Nm_Emitente, EC.Nm_Emitente ) ) ) as Nm_Emitente,'#13#10'  IsNull( OT.Dt_Fatura, IsNull( RH.Dt_Lancamento, IsNull( CX.Dt_Lancamento, CD.Dt_Compensacao ) ) ) as Dt_Pagamento,'#13#10'  Nr_MaxParcela ='#13#10'    ('#13#10'    select'#13#10'      Max( RPMax.Nr_Parcela )'#13#10#13#10'    from'#13#10'      Receber_Parcela RPMax'#13#10#13#10'    where'#13#10'      RPMax.Cd_Filial     = CI.Cd_Filial and'#13#10'      RPMax.Nr_Receber    = CI.Nr_Receber'#13#10'    ),'#13#10'    '#13#10'  R.Nr_Orcamento as Nr_OrcamentoCR'#13#10#13#10'from'#13#10'  Comissao_Item CI'#13#10#13#10'--------------- Cliente do Or'#231'amento'#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = CI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = CI.Nr_Orcamento'#13#10'  '#13#10'--------------- Cliente do CR'#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial    = CI.Cd_Filial and'#13#10'  R.Nr_Receber   = CI.Nr_Receber'#13#10'  '#13#10'left join'#13#10'  Emitente ER'#13#10'on'#13#10'  ER.Cd_Emitente = R.Cd_Emitente'#13#10#13#10'left join'#13#10'  Receber_Historico RH'#13#10'on'#13#10'  RH.Cd_Filial     = CI.Cd_Filial and'#13#10'  RH.Nr_Receber    = CI.Nr_Receber and'#13#10'  RH.Nr_Parcela    = CI.Nr_Parcela and'#13#10'  RH.Nr_Lancamento = CI.Nr_Lancamento'#13#10#13#10'--------------- Cliente do Caixa'#13#10'left join'#13#10'  Caixa CX'#13#10'on'#13#10'  CX.Cd_Filial     = CI.Cd_Filial and'#13#10'  CX.Nr_Lancamento = CI.Nr_Caixa'#13#10#13#10'left join'#13#10'  Receber RCX'#13#10'on'#13#10'  RCX.Cd_Filial    = CX.Cd_Filial and'#13#10'  RCX.Nr_Receber   = CX.Nr_Receber'#13#10#13#10'left join'#13#10'  Emitente ECX'#13#10'on'#13#10'  ECX.Cd_Emitente = RCX.Cd_Emitente'#13#10#13#10'--------------- Cliente do Cheque'#13#10'left join'#13#10'  Cheque C'#13#10'on'#13#10'  C.Cd_Filial = CI.Cd_Filial and'#13#10'  C.Id_Cheque = CI.Id_Cheque'#13#10#13#10'left join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'left join'#13#10'  Cheque_Deposito CD'#13#10'on'#13#10'  CD.Cd_Filial = CI.Cd_Filial and'#13#10'  CD.Id_Cheque = CI.Id_Cheque and'#13#10'  CD.Dt_Devolucao is null'#13#10#13#10'where'#13#10'  CI.Cd_Filial      = :Cd_Filial and'#13#10'  CI.Nr_Comissao    = :Nr_Comissao and'#13#10'  CI.Cd_Funcionario = :Cd_Funcionario'#13#10#13#10'order by'#13#10'  CI.Cd_Filial, CI.Nr_Comissao, CI.Cd_Funcionario, CI.Nr_Item'
    DataSource = DsFuncionario
    IndexFieldNames = 'Cd_Filial;Nr_Comissao;Cd_Funcionario'
    MasterFields = 'Cd_Filial;Nr_Comissao;Cd_Funcionario'
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
        Name = 'Nr_Comissao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    Left = 55
    Top = 370
    object ADODsItensCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItensNr_Comissao: TSmallintField
      FieldName = 'Nr_Comissao'
    end
    object ADODsItensCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsItensNr_Item: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Item'
    end
    object ADODsItensNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsItensNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsItensNr_Lancamento: TSmallintField
      FieldName = 'Nr_Lancamento'
    end
    object ADODsItensNr_Caixa: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'Nr_Caixa'
    end
    object ADODsItensNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItensVl_Apurado: TBCDField
      DisplayLabel = 'Apurado'
      FieldName = 'Vl_Apurado'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsItensVl_Comissionado: TBCDField
      DisplayLabel = 'Comissionado'
      FieldName = 'Vl_Comissionado'
      DisplayFormat = '#,##0.00#'
      Precision = 12
      Size = 3
    end
    object ADODsItensId_Cheque: TIntegerField
      FieldName = 'Id_Cheque'
    end
    object ADODsItensDp_Origem: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkCalculated
      FieldName = 'Dp_Origem'
      Size = 30
      Calculated = True
    end
    object ADODsItensNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
    end
    object ADODsItensDt_Pagamento: TDateTimeField
      DisplayLabel = 'Pagamento'
      FieldName = 'Dt_Pagamento'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsItensNr_MaxParcela: TSmallintField
      FieldName = 'Nr_MaxParcela'
      ReadOnly = True
    end
    object ADODsItensNr_OrcamentoCR: TIntegerField
      DisplayLabel = 'Or'#231'amento do CR'
      FieldName = 'Nr_OrcamentoCR'
    end
  end
  object DsItens: TDataSource
    DataSet = ADODsItens
    Left = 24
    Top = 372
  end
  object DsFuncionario: TDataSource
    DataSet = ADODsFuncionario
    Left = 30
    Top = 243
  end
end
