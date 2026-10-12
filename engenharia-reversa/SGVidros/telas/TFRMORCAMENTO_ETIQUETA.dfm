object FrmOrcamento_Etiqueta: TFrmOrcamento_Etiqueta
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Etiquetas do Or'#231'amento'
  ClientHeight = 442
  ClientWidth = 715
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    Height = 442
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 694
    Height = 442
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 412
      Width = 686
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 599
      Top = 18
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 38
      Width = 686
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 134
      Top = 0
      Width = 90
      Height = 13
      Caption = 'Emitir Etiquetas de:'
    end
    object Label2: TLabel
      Left = 5
      Top = 0
      Width = 62
      Height = 13
      Caption = 'Tipo do Item:'
    end
    object Label3: TLabel
      Left = 5
      Top = 41
      Width = 26
      Height = 13
      Caption = 'Itens:'
    end
    object DbTxtProduto: TDBText
      Left = 85
      Top = 40
      Width = 66
      Height = 13
      AutoSize = True
      DataField = 'Nm_Produto'
      DataSource = DsSelect
    end
    object DbTxtSubProduto: TDBText
      Left = 400
      Top = 227
      Width = 85
      Height = 13
      AutoSize = True
      DataField = 'Nm_SubProduto'
      DataSource = DsSelect
    end
    object Label4: TLabel
      Left = 5
      Top = 230
      Width = 74
      Height = 13
      Caption = 'Detalhamentos:'
    end
    object BitBtnItem: TBitBtn
      Tag = 1
      Left = 2
      Top = 415
      Width = 104
      Height = 25
      Caption = 'Uma por Item'
      TabOrder = 6
      OnClick = BitBtnItemClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 607
      Top = 415
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CkBItens: TCheckBox
      Left = 144
      Top = 16
      Width = 115
      Height = 17
      Caption = 'Itens do Or'#231'amento'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CkBProjeto: TCheckBox
      Left = 264
      Top = 16
      Width = 126
      Height = 17
      Caption = 'Projetos do or'#231'amento'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CbFlProduto: TComboBox
      Left = 5
      Top = 14
      Width = 126
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Produtos e Servi'#231'os'
        'Produtos'
        'Servi'#231'os'
      )
    end
    object DbGSelect: TDBGrid
      Left = 6
      Top = 53
      Width = 681
      Height = 171
      DataSource = DsSelect
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGSelectDblClick
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      OnKeyPress = DbGSelectKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Item'
          Title.Alignment = taRightJustify
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 259
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_SubProduto'
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Projeto'
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Imprimir'
          Width = 41
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 6
      Top = 245
      Width = 450
      Height = 164
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 356
          Visible = True
        end>
    end
    object BitBtnQuantidade: TBitBtn
      Tag = 2
      Left = 107
      Top = 415
      Width = 104
      Height = 25
      Caption = 'Por Quantidade'
      TabOrder = 7
      OnClick = BitBtnItemClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCorte: TBitBtn
      Tag = 3
      Left = 212
      Top = 415
      Width = 104
      Height = 25
      Caption = 'Corte'
      TabOrder = 8
      OnClick = BitBtnCorteClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnConferencia: TBitBtn
      Tag = 4
      Left = 316
      Top = 415
      Width = 104
      Height = 25
      Caption = 'Confer'#234'ncia'
      TabOrder = 9
      OnClick = BitBtnCorteClick
      Glyph.Data = {binary 1146 bytes}
    end
    object SctRepEtiqueta_Pedido: TSctReport
      Left = 470
      Top = 285
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 12
      Visible = False
      Minimized = True
      Prompt = False
      AutoRun = False
      OnBeforePrint = SctRepEtiqueta_PedidoBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 801
      SHeight = 420
      MTop = 285
      MLeft = 470
      SAlign = alNone
      Version = vAce1_0
      object RepPgEtiqueta_Pedido: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psLetter
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 11.0
        PageSetup.Width = 8.5
        PageSetup.PrintQuality = pqHigh
        BorderType = btNone
        Description = 'Uma Etiqueta por Item'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = RepPgEtiqueta_PedidoDataStart
        OnDataSkip = RepPgEtiqueta_PedidoDataSkip
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsSelect
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
        object Expr1a: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = Expr1aGetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object Expr2a: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = Expr2aGetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object Expr1b: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = Expr1bGetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object Expr2b: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = Expr2bGetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsSelect
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsDetalhe
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsOrcamento
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
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
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
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 770
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 770
          Height = 9
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 44
          Width = 770
          Height = 190
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel1: TSctvarlabel
            Left = 12
            Top = 20
            Width = 313
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = Expr1a
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 400
            Top = 20
            Width = 313
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = Expr2a
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 12
            Top = 104
            Width = 313
            Height = 80
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = Expr1b
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 400
            Top = 104
            Width = 313
            Height = 80
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = Expr2b
          end
          object SctVarEmpresa_01A: TSctvarlabel
            Left = 12
            Top = 7
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Empresa'
          end
          object SctVarEmpresa_02A: TSctvarlabel
            Left = 400
            Top = 7
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Empresa'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 249
          Width = 770
          Height = 6
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 270
          Width = 770
          Height = 9
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
      end
    end
    object SctRepCorteConfer: TSctReport
      Left = 470
      Top = 334
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 13
      Visible = False
      Minimized = True
      Prompt = False
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 802
      SHeight = 337
      MTop = 334
      MLeft = 470
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
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PrintQuality = pqHigh
        PageSetup.BottomMargin = 0.2
        BorderType = btNone
        Description = 'Etiquetas de Corte/Confer'#234'ncia'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = ReportPageDataStart
        OnDataSkip = ReportPageDataSkip
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsSelect
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
        object SctVarLeft: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = SctVarLeftGetData
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidExprVar
        end
        object SctVarRight: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = SctVarRightGetData
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidExprVar
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsSelect
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDetalhe
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsOrcamento
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 15
          Width = 748
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          Visible = False
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 30
          Width = 748
          Height = 97
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          object Sctvarlabel5: TSctvarlabel
            Left = 12
            Top = 6
            Width = 313
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = SctVarLeft
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 400
            Top = 6
            Width = 313
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            WrapText = True
            Variable = SctVarRight
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          Visible = False
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 157
          Width = 748
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          Visible = False
        end
      end
    end
    object CkBEntrega: TCheckBox
      Left = 558
      Top = 392
      Width = 131
      Height = 17
      Caption = 'Incluir data de Entrega'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object BitBtnTermica: TBitBtn
      Tag = 4
      Left = 421
      Top = 415
      Width = 104
      Height = 25
      Caption = 'T'#233'rmica'
      TabOrder = 10
      OnClick = BitBtnTermicaClick
      Glyph.Data = {binary 1146 bytes}
    end
    object SctRepTermica: TSctReport
      Left = 558
      Top = 285
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
      TabOrder = 14
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 100
      SWidth = 802
      SHeight = 440
      MTop = 285
      MLeft = 558
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
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 29.7
        PageSetup.Width = 21.0
        PageSetup.PrintQuality = pqHigh
        PageSetup.Units = unitCentiMeters
        PageSetup.LeftMargin = 0.8
        PageSetup.RightMargin = 0
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0
        BorderType = btNone
        Description = 'Etiquetas para Impressora T'#233'rmica'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = SctGrouppage1DataStart
        OnDataSkip = SctGrouppage1DataSkip
        OmitLastPgFt = False
        Head = SctBand6
        Detail = SctBand8
        Foot = SctBand10
        PageHead = SctBand7
        PageFoot = SctBand9
        DataSource = DmMaster.DsFilial
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
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsSelect
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsDetalhe
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsOrcamento
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
        object ExpVarBC: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCGetData
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidExprVar
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 0
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 15
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          Visible = False
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 30
          Width = 813
          Height = 247
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          NewPage = True
          object SctTxtFilial: TSctvarlabel
            Left = 0
            Top = 9
            Width = 349
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
          object SctTxtEndereco: TSctvarlabel
            Left = -1
            Top = 25
            Width = 351
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'endere'#231'o da filial'
          end
          object SctShpTermica: TSctShape
            Left = -1
            Top = 40
            Width = 351
            Height = 190
            ShapeType = sstRoundRect
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 3
            Top = 52
            Width = 46
            Height = 17
            Caption = 'Cliente:'
          end
          object SctVarCliente: TSctvarlabel
            Left = 48
            Top = 51
            Width = 301
            Height = 33
            WrapText = True
            Stretch = True
            Caption = 'SctVarCliente'
          end
          object SctVarProduto: TSctvarlabel
            Left = 52
            Top = 103
            Width = 297
            Height = 36
            WrapText = True
            Lines.Strings = (
              'TESTE 123 9'
              'TESTE 123 9'
            )
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 4
            Top = 104
            Width = 48
            Height = 17
            Caption = 'Produto:'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 4
            Top = 144
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
            Top = 144
            Width = 285
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'SctVarMedidas'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 4
            Top = 85
            Width = 107
            Height = 17
            Caption = 'Pedido do Cliente:'
          end
          object SctVarPedCliente: TSctvarlabel
            Left = 110
            Top = 85
            Width = 240
            Height = 17
            Caption = 'SctVarPedCliente'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 161
            Width = 349
            Height = 5
            AlignVertical = laMiddle
          end
          object SctBC: TSctBarCodeLabel
            Left = 5
            Top = 166
            Width = 345
            Height = 29
            Variable = ExpVarBC
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
            BarCodeType = bct2of5
          end
          object SctTxtBC: TSctvarlabel
            Left = 5
            Top = 195
            Width = 344
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'texto do c'#243'digo de barras'
          end
          object SctTxtOrcamento: TSctvarlabel
            Left = 24
            Top = 213
            Width = 297
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Pedido do Cliente:'
          end
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 292
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          Visible = False
        end
        object SctBand10: TSctBand
          Left = 0
          Top = 307
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          Visible = False
        end
      end
    end
  end
  object ADOCmdEtiqueta: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Cria a #OrcEtItem'
      'if Object_ID( ''''TempDB..#OrcEtItem'''' ) is not null'
      '  truncate table #OrcEtItem'
      ''
      'else'
      '  create table #OrcEtItem'
      '    ('
      '    Id_Item Smallint Identity( 1, 1 ),'
      '    Cd_Filial SmallInt,'
      '    Nr_Orcamento Int,'
      '    Nr_Item SmallInt,'
      '    Cd_Produto Integer,'
      '    Nm_Produto VarChar( 100 ),'
      '    Qt_Item numeric( 12, 3 ),'
      '    Nm_SubProduto VarChar( 100 ),'
      '    Fl_Imprimir Char( 1 ),'
      '    Nr_Projeto SmallInt,'
      '    Tp_ItemProjeto Char( 1 ),'
      '    Fl_Medida Char( 1 ),'
      '    Sg_Unidade Char( 2 ),'
      '    Ds_Ambiente VarChar( 50 )'
      '    )'
    )
    SQLOther1.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Incluir itens do Orcamento ( Servi'#231'os e Produtos )'
      'insert into #OrcEtItem( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '  Nr_Projeto, Qt_Item, Nm_SubProduto, Nm_Produto, Fl_Imprimir, Fl_Medida,'
      '  Sg_Unidade, Ds_Ambiente )'
      ''
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, null,'
      '  OI.Qt_Item, SP.Nm_SubProduto,'
      '  case when OI.Cd_Produto is null then P.Nm_Produto else OI.Nm_Produto end,'
      '  ''''1'''', OI.Fl_Medida, OI.Sg_Unidade, OI.Ds_Ambiente'
      '  '
      'from'
      '  Orcamento_Item OI'
      ''
      '/* Join Produto */'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Fl_Produto */'
      ''
      'left join'
      '  SubProduto SP'
      'on'
      '  SP.Cd_SubProduto = OI.Cd_SubProduto'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther3.Strings = (
      '-------------------- Incluir itens do Orcamento ( Servi'#231'os e Produtos )'
      'insert into #OrcEtItem( Cd_Filial, Nr_Orcamento, Nr_Projeto, Nr_Item,'
      '  Cd_Produto, Qt_Item, Nm_Produto, Fl_Imprimir, Tp_ItemProjeto, Nm_SubProduto,'
      '  Sg_Unidade, Ds_Ambiente, Fl_Medida )'
      ''
      'select'
      '  OP.Cd_Filial, OP.Nr_Orcamento, OPI.Nr_Projeto, OPI.Nr_Item, OPI.Cd_Produto,'
      '  OPI.Qt_Item * OP.Qt_Projeto, P.Nm_Produto, ''''1'''', OPI.Tp_Item, PJ.Nm_Projeto,'
      '  OPI.Sg_Unidade, OP.Ds_Ambiente, ''''3'''' as Fl_Medida'
      ''
      'from'
      '  Orcamento_Projeto OP'
      ''
      'inner join'
      '  Projeto PJ'
      'on'
      '  PJ.Cd_Projeto = OP.Cd_Projeto'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento = OP.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto'
      '  /* Tp_Produto */'
      ''
      'where'
      '  OP.Cd_Filial    = @Cd_Filial and'
      '  OP.Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther4.Strings = (
      '-------------------- Mudar a situa'#231#227'o de impress'#227'o'
      'update'
      '  #OrcEtItem'
      ''
      'set'
      '  Fl_Imprimir = :Fl_Imprimir'
      ''
      'where'
      '  Id_Item    = :Id_Item'
    )
    SQLOther5.Strings = (
      '-------------------- Mudar a situa'#231#227'o de impress'#227'o'
      'update'
      '  #OrcEtItem'
      ''
      'set'
      '  Fl_Imprimir = 2'
      ''
      'where'
      '  Nr_Item    = 2'
    )
    Left = 110
    Top = 342
  end
  object ADODsSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsSelectCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Orcamento Int'#13#10#13#10'select'#13#10'  @Cd_Filial    = 2,'#13#10'  @Nr_Orcamento = 12'#13#10#13#10'-------------------- Cria a #OrcEtItem'#13#10'if Object_ID( ''''TempDB..#OrcEtItem'''' ) is not null'#13#10'  truncate table #OrcEtItem'#13#10#13#10'else'#13#10'  create table #OrcEtItem'#13#10'    ('#13#10'    Id_Item Smallint Identity( 1, 1 ),'#13#10'    Cd_Filial SmallInt,'#13#10'    Nr_Orcamento Int,'#13#10'    Nr_Item SmallInt,'#13#10'    Cd_Produto Integer,'#13#10'    Nm_Produto VarChar( 100 ),'#13#10'    Qt_Item numeric( 12, 3 ),'#13#10'    Nm_SubProduto VarChar( 100 ),'#13#10'    Fl_Imprimir Char( 1 ),'#13#10'    Nr_Projeto SmallInt,'#13#10'    Tp_ItemProjeto Char( 1 ),'#13#10'    Fl_Medida Char( 1 ),'#13#10'    Sg_Unidade Char( 2 ),'#13#10'    Ds_Ambiente VarChar( 50 )'#13#10'    )'#13#10#13#10'-------------------- Incluir itens do Orcamento ( Servi'#231'os e Produtos )'#13#10'insert into #OrcEtItem( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'#13#10'  Nr_Projeto, Qt_Item, Nm_SubProduto, Nm_Produto, Fl_Imprimir, Fl_Medida )'#13#10#13#10'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, null,'#13#10'  OI.Qt_Item, SP.Nm_SubProduto,'#13#10'  case when OI.Cd_Produto is null then P.Nm_Produto else OI.Nm_Produto end,'#13#10'  ''''1'''', OI.Fl_Medida'#13#10'  '#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner Join '#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Fl_Produto */'#13#10#13#10'left join'#13#10'  SubProduto SP'#13#10'on'#13#10'  SP.Cd_SubProduto = OI.Cd_SubProduto'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = @Cd_Filial and'#13#10'  OI.Nr_Orcamento  = @Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto, Qt_Item, Nm_SubProduto, Fl_Imprimir,'#13#10'  Nr_Projeto, Tp_ItemProjeto, Fl_Medida, Sg_Unidade, Ds_Ambiente, Id_Item'#13#10#13#10'from'#13#10'  #OrcEtItem'#13#10#13#10'order by'#13#10'  Nr_Projeto, Nr_Item'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Todos os itens'
      'select'
      '  Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto, Qt_Item,'
      '  Nm_SubProduto, Fl_Imprimir, Nr_Projeto, Tp_ItemProjeto, Fl_Medida,'
      '  Sg_Unidade, Ds_Ambiente, Id_Item'
      ''
      'from'
      '  #OrcEtItem'
      ''
      'order by'
      '  Nr_Projeto, Nr_Item'
    )
    SQLOther1.Strings = (
      '-------------------- Somente os selecionados'
      'select'
      '  Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto, Qt_Item,'
      '  Nm_SubProduto, Fl_Imprimir, Nr_Projeto, Tp_ItemProjeto, Fl_Medida,'
      '  Sg_Unidade, Ds_Ambiente, Id_Item'
      ''
      'from'
      '  #OrcEtItem'
      ''
      'where'
      '  Fl_Imprimir = ''''1'''
      ''
      'order by'
      '  Nr_Projeto, Nr_Item'
    )
    Left = 59
    Top = 195
    object ADODsSelectNr_Item: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Item'
    end
    object ADODsSelectCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsSelectNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 100
    end
    object ADODsSelectQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '##,###.###'
      Precision = 12
      Size = 3
    end
    object ADODsSelectNm_SubProduto: TStringField
      DisplayLabel = 'SubProduto / Nome do Projeto'
      FieldName = 'Nm_SubProduto'
      Size = 100
    end
    object ADODsSelectFl_Imprimir: TStringField
      FieldName = 'Fl_Imprimir'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectTp_ItemProjeto: TStringField
      FieldName = 'Tp_ItemProjeto'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectDp_Imprimir: TStringField
      DisplayLabel = 'Imprimir'
      FieldKind = fkCalculated
      FieldName = 'Dp_Imprimir'
      Size = 3
      Calculated = True
    end
    object ADODsSelectNr_Projeto: TSmallintField
      DisplayLabel = 'Projeto'
      FieldName = 'Nr_Projeto'
    end
    object ADODsSelectFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSelectNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsSelectSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsSelectDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsSelectId_Item: TSmallintField
      FieldName = 'Id_Item'
      ReadOnly = True
    end
  end
  object DsSelect: TDataSource
    DataSet = ADODsSelect
    Left = 29
    Top = 195
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 40
    Top = 340
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 540
    Top = 235
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,'#13#10'  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,'#13#10'  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,'#13#10'  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Fl_Estoque, O.Nr_Fatura, O.Vl_IPI,'#13#10'  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, O.Nr_Entrega, O.Nr_Pedido_emitente,'#13#10'  O.Dt_Confirmado'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  R.St_Receber   < ''''4'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 571
    Top = 236
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentodt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsOrcamentovl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentops_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentovl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentomg_pedido: TBCDField
      FieldName = 'mg_pedido'
      Precision = 12
      Size = 2
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
    object ADODsOrcamentocd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsOrcamentodp_situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_situacao'
      Calculated = True
    end
    object ADODsOrcamentofl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentodp_pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_pagamento'
      Calculated = True
    end
    object ADODsOrcamentonr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsOrcamentovl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentonr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsOrcamentoVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsOrcamentocd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsOrcamentonr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoNr_Pedido_emitente: TStringField
      FieldName = 'Nr_Pedido_emitente'
      Size = 30
    end
    object ADODsOrcamentoDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Orcamento Int,'#13#10'  @Nr_Item SmallInt,'#13#10'  @Nr_Projeto SmallInt'#13#10#13#10'select'#13#10'  @Cd_Filial    = :Cd_Filial,'#13#10'  @Nr_Orcamento = :Nr_Orcamento,'#13#10'  @Nr_Item      = :Nr_Item,'#13#10'  @Nr_Projeto   = :Nr_Projeto'#13#10#13#10'-------------------- Itens do detalhamento'#13#10'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item, @Nr_Projeto as Nr_Projeto,'#13#10'  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe'#13#10#13#10'where'#13#10'  Cd_Filial    = @Cd_Filial and'#13#10'  Nr_Orcamento = @Nr_Orcamento and'#13#10'  Nr_Item      = @Nr_Item and'#13#10'  @Nr_Projeto is null'#13#10#13#10'union'#13#10#13#10'-------------------- Itens de vidro do projeto'#13#10'select'#13#10'  OPI.Cd_Filial, OPI.Nr_Orcamento, OPI.Nr_Item, OPI.Nr_Projeto,'#13#10'  1 as Nr_Detalhe, Qt_Projeto * 1.0, 0 as Nr_Comprimento, OPI.Nr_Largura, OPI.Nr_Altura,'#13#10'  '''''' as Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10#13#10'inner join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial    = OPI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OPI.Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = OPI.Nr_Projeto'#13#10#13#10'where'#13#10'  OPI.Cd_Filial    = @Cd_Filial and'#13#10'  OPI.Nr_Orcamento = @Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = @Nr_Projeto and'#13#10'  OPI.Nr_Item      = @Nr_Item and'#13#10'  OPI.Tp_Item      = ''''0'''#13#10#13#10'order by'#13#10'  Nr_Detalhe'
    DataSource = DsSelect
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item;Nr_Projeto'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 70
    Top = 340
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
      ReadOnly = True
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
    object ADODsDetalheNr_Detalhe: TIntegerField
      FieldName = 'Nr_Detalhe'
      ReadOnly = True
    end
    object ADODsDetalheQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      ReadOnly = True
      Precision = 18
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      ReadOnly = True
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      ReadOnly = True
      Precision = 14
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      ReadOnly = True
      Precision = 14
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      ReadOnly = True
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 100
      Calculated = True
    end
    object ADODsDetalheNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
      ReadOnly = True
    end
  end
end
