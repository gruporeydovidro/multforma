object FrmOServico: TFrmOServico
  Left = 530
  Top = 512
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ordem de Servi'#231'o (Desenhada)'
  ClientHeight = 547
  ClientWidth = 871
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
  Position = poDesigned
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
    Height = 547
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 850
    Height = 547
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 33
      Height = 13
      Caption = 'OS N'#186':'
      Transparent = True
    end
    object Label2: TLabel
      Left = 182
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
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 516
      Width = 842
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 550
      Top = 30
      Width = 40
      Height = 13
      Caption = 'Entrega:'
    end
    object Label10: TLabel
      Left = 93
      Top = 69
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 143
      Top = 84
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
    object Label3: TLabel
      Left = 5
      Top = 69
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 66
      Top = 84
      Width = 23
      Height = 19
      Hint = 'Seleciona Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object Label5: TLabel
      Left = 5
      Top = 104
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label6: TLabel
      Left = 5
      Top = 214
      Width = 26
      Height = 13
      Caption = 'Itens:'
    end
    object Label7: TLabel
      Left = 5
      Top = 399
      Width = 159
      Height = 13
      Caption = 'Resumo de Corte / Observa'#231#245'es:'
    end
    object Label9: TLabel
      Left = 343
      Top = 30
      Width = 92
      Height = 13
      Caption = 'Inicio da Produ'#231#227'o:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 439
      Top = 30
      Width = 105
      Height = 13
      Caption = 'T'#233'rmino da Produ'#231#227'o:'
      Transparent = True
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 848
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 10
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 848
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 848
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
      Left = 677
      Top = 520
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 763
      Top = 520
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_OS: TCurrencyEdit
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
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtSt_OS: TEdit
      Left = 182
      Top = 45
      Width = 156
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtDt_OS: TEdit
      Left = 69
      Top = 45
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '20/08/2020 18:20'
    end
    object EdtDt_Entrega: TDateEdit
      Left = 550
      Top = 45
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 93
      Top = 84
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 166
      Top = 84
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 84
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtNr_OrcamentoExit
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 120
      Width = 836
      Height = 93
      Lines.Strings = (
        'MmObservacao'
      )
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object PnlAction_4: TPanel
      Left = 811
      Top = 228
      Width = 30
      Height = 199
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 15
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 30
        Height = 199
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object DbMObsItem: TDBMemo
      Left = 5
      Top = 413
      Width = 805
      Height = 100
      DataField = 'Mm_ObsItem'
      DataSource = DsItem
      TabOrder = 11
    end
    object DbGItem: TDBGrid
      Left = 5
      Top = 228
      Width = 805
      Height = 168
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Item'
          Title.Alignment = taRightJustify
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Produto'
          Width = 450
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 292
          Visible = True
        end>
    end
    object SctRepOSMultipla: TSctReport
      Left = 480
      Top = 70
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
      TabOrder = 14
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 1
      SLeft = -9
      SWidth = 782
      SHeight = 463
      MTop = 70
      MLeft = 480
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
        Description = 'O.S. Desenhada - Multipla'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
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
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsItem
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsEndView
        end
        object adodsendviewDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_OSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_OS'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDt_EntregaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Entrega'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
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
        object adodsdadosDt_OSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_OS'
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
        object adodsdadosNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdFuncionario
          Footer = GroupFooter
          Variable = adodsitemCd_FuncionarioVar
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
        object adodsitemDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemMm_ObsItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_ObsItem'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Funcionario'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsItem
          UpdateLevel = DetailBandlevel
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
          DataSource = FrmOServico_Orcamento.DsOrcamento
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOServico_Orcamento.DsDetalhe
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsendviewDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 103
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsEndView
          UpdateLevel = DetailBandlevel
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
          Height = 36
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
            Caption = 'O.S. Multipla'
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
          object Sctvarlabel14: TSctvarlabel
            Left = 2
            Top = 18
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'O.S. N'#186
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 56
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosNr_OSVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 130
            Top = 18
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 195
            Top = 18
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 298
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel8: TSctvarlabel
            Left = 0
            Top = 1
            Width = 425
            Height = 17
            Variable = adodsitemDp_ProdutoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 589
            Top = 1
            Width = 106
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '_____/_____/_____'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 402
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
          object SctTxtUsuario: TSctvarlabel
            Left = 400
            Top = 2
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
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 437
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PgHdCliente: TSctSubBand
          Left = 0
          Top = 71
          Width = 748
          Height = 70
          ParentColor = True
          BandName = 'PgHdCliente'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Above = False
          object Sctvarlabel18: TSctvarlabel
            Left = 2
            Top = 1
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object SctVarCliente1: TSctvarlabel
            Left = 51
            Top = 1
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Prenenchido em tempo de execu'#231#227'o'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 532
            Top = 1
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o da O.S.:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 630
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDt_OSVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 1
            Top = 34
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Inicio da Produ'#231#227'o:'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 96
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosDt_InicioVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 164
            Top = 34
            Width = 108
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'T'#233'rmino da Produ'#231#227'o:'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 274
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosDt_TerminoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 342
            Top = 34
            Width = 83
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data de Entrega:'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 427
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosDt_EntregaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 1
            Top = 17
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 73
            Top = 17
            Width = 47
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNr_OrcamentoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 126
            Top = 17
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendedor:'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 191
            Top = 17
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_FuncionarioVar
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 1
            Top = 51
            Width = 120
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es da O.S.:'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 113
            Top = 51
            Width = 585
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsdadosMm_ObservacaoVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdEndereco: TSctSubBand
          Left = 0
          Top = 156
          Width = 748
          Height = 70
          ParentColor = True
          BandName = 'PgHdEndereco'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 1
          Above = False
          object Sctvarlabel33: TSctvarlabel
            Left = 1
            Top = 1
            Width = 53
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 55
            Top = 1
            Width = 313
            Height = 17
            Variable = adodsendviewDs_EnderecoVar
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 477
            Top = 1
            Width = 35
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 513
            Top = 1
            Width = 186
            Height = 17
            Variable = adodsendviewNm_BairroVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 1
            Top = 18
            Width = 70
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 73
            Top = 18
            Width = 230
            Height = 17
            Variable = adodsendviewDs_ComplementoVar
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 323
            Top = 18
            Width = 25
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 349
            Top = 18
            Width = 67
            Height = 17
            Variable = adodsendviewNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 418
            Top = 18
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 458
            Top = 18
            Width = 240
            Height = 17
            Variable = adodsendviewDp_CidadeVar
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 1
            Top = 35
            Width = 54
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 56
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsendviewNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 156
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsendviewNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 256
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsendviewNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 354
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 386
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsendviewNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 1
            Top = 52
            Width = 188
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es/Ponto de Refer'#234'ncia:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 176
            Top = 52
            Width = 522
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsendviewMm_ObservacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 370
            Top = 1
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 414
            Top = 1
            Width = 62
            Height = 17
            Variable = adodsendviewDs_NumeroVar
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 484
            Top = 35
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 526
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 613
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object GrpHdFuncionario: TSctBand
          Left = 0
          Top = 241
          Width = 748
          Height = 42
          ParentColor = True
          BandName = 'GrpHdFuncionario'
          Updatelevel = GroupHeaderLevel
          BorderType = btSingle
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 24
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Produto'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 496
            Top = 24
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Desenho'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 616
            Top = 24
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Entrega'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 0
            Top = 1
            Width = 145
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Funcion'#225'rio Respons'#225'vel:'
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 145
            Top = 1
            Width = 551
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsitemNm_FuncionarioVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 367
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
        end
        object DtlBdObsItem: TSctSubBand
          Left = 0
          Top = 333
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'DtlBdObsItem'
          OnPrintWhen = DtlBdObsItemPrintWhen
          Updatelevel = DetailBandlevel
          Stretch = True
          Band = DetailBand
          Above = False
          object Sctvarlabel7: TSctvarlabel
            Left = 32
            Top = 1
            Width = 393
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitemMm_ObsItemVar
            DataFormat.SuppressNulls = True
          end
          object SctImgProduto: TSctImageLabel
            Left = 432
            Top = 0
            Width = 266
            Height = 17
            Center = True
          end
        end
      end
    end
    object EdtDt_Inicio: TEdit
      Left = 343
      Top = 45
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '20/20/2020'
    end
    object EdtDt_Termino: TEdit
      Left = 439
      Top = 45
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object SctRepOSDesenho: TSctReport
      Left = 568
      Top = 70
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
      TabOrder = 17
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = -12
      SLeft = -9
      SWidth = 836
      SHeight = 465
      MTop = 70
      MLeft = 568
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
        PageSetup.Height = 296.9999999999999
        PageSetup.Width = 210.0
        PageSetup.Units = unitMiliMeters
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 12.7
        PageSetup.RightMargin = 12.7
        PageSetup.TopMargin = 12.7
        PageSetup.BottomMargin = 12.7
        BorderType = btNone
        Description = 'O.S. Desenhada - Multipla'
        CloseDataSet = False
        DataRange = drSingleRecord
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
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
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
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDados
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItem
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsEndView
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_OS'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar13: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar14: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar15: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Entrega'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar16: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar17: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar18: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_OS'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar19: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Inicio'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar20: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Termino'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar21: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctGroup1: TSctGroup
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          Header = SctBand6
          Footer = SctBand7
          Level = 0
        end
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
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOServico_Orcamento.DsOrcamento
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOServico_Orcamento.DsDetalhe
        end
        object adodsitemCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_OSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_OS'
          DataSource = DsItem
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
        object adodsitemCd_ProdutoVar: TSctDBVar
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
        object adodsitemNm_ProdutoVar: TSctDBVar
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
        object adodsitemIm_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Im_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemMm_ObsItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_ObsItem'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_WidthVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Width'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_HeightVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Height'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemIm_DrawVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Im_Draw'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_FuncionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Funcionario'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_FuncionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento.DsProdSelect
        end
        object adodsendviewDs_NumeroVar1: TSctDBVar
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_1Var1: TSctDBVar
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsendviewNr_Celular_2Var1: TSctDBVar
          Left = 0
          Top = 117
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsEndView
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel54: TSctvarlabel
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
            Caption = 'O.S. Multipla'
          end
          object Sctvarlabel55: TSctvarlabel
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
          object Sctvarlabel56: TSctvarlabel
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
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel57: TSctvarlabel
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
          object Sctvarlabel58: TSctvarlabel
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
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 2
            Top = 18
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'O.S. N'#186
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 56
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar12
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 130
            Top = 18
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 195
            Top = 18
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar17
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 315
          Width = 748
          Height = 36
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel63: TSctvarlabel
            Left = 2
            Top = 17
            Width = 694
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitemMm_ObsItemVar1
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 2
            Top = 1
            Width = 191
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Resumo de Corte / Observa'#231#245'es:'
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 435
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine1: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel65: TSctvarlabel
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
            Variable = SctDBVar1
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario2: TSctvarlabel
            Left = 400
            Top = 2
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
          Top = 470
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          Visible = False
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 71
          Width = 748
          Height = 70
          ParentColor = True
          BandName = 'PgHdCliente'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          Band = SctBand2
          Above = False
          object Sctvarlabel68: TSctvarlabel
            Left = 2
            Top = 1
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object SctVarCliente2: TSctvarlabel
            Left = 51
            Top = 1
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Preenchido em tempo de execu'#231#227'o'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 532
            Top = 1
            Width = 94
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o da O.S.:'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 630
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar18
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 1
            Top = 34
            Width = 96
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Inicio da Produ'#231#227'o:'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 96
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar19
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 164
            Top = 34
            Width = 108
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'T'#233'rmino da Produ'#231#227'o:'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 274
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar20
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 342
            Top = 34
            Width = 83
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Data de Entrega:'
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 427
            Top = 34
            Width = 62
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = SctDBVar15
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 1
            Top = 17
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento:'
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 73
            Top = 17
            Width = 47
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar14
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 126
            Top = 17
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendedor:'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 191
            Top = 17
            Width = 475
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = SctDBVar21
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 1
            Top = 51
            Width = 120
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es da O.S.:'
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 113
            Top = 51
            Width = 585
            Height = 17
            WrapText = True
            Stretch = True
            Variable = SctDBVar16
            DataFormat.SuppressNulls = True
          end
        end
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 156
          Width = 748
          Height = 70
          ParentColor = True
          BandName = 'PgHdEndereco'
          Updatelevel = SctLevel2
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = SctBand2
          Order = 1
          Above = False
          object Sctvarlabel84: TSctvarlabel
            Left = 1
            Top = 1
            Width = 53
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 55
            Top = 1
            Width = 324
            Height = 17
            Variable = SctDBVar2
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 489
            Top = 1
            Width = 35
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 525
            Top = 1
            Width = 173
            Height = 17
            Variable = SctDBVar3
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 1
            Top = 18
            Width = 70
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 73
            Top = 18
            Width = 230
            Height = 17
            Variable = SctDBVar4
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 323
            Top = 18
            Width = 25
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 349
            Top = 18
            Width = 67
            Height = 17
            Variable = SctDBVar5
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 418
            Top = 18
            Width = 39
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 458
            Top = 18
            Width = 240
            Height = 17
            Variable = SctDBVar6
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 1
            Top = 35
            Width = 54
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 57
            Top = 35
            Width = 98
            Height = 17
            Variable = SctDBVar7
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 156
            Top = 35
            Width = 98
            Height = 17
            Variable = SctDBVar8
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 255
            Top = 35
            Width = 98
            Height = 17
            Variable = SctDBVar9
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 355
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 385
            Top = 35
            Width = 98
            Height = 17
            Variable = SctDBVar10
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 1
            Top = 52
            Width = 188
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es/Ponto de Refer'#234'ncia:'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 176
            Top = 52
            Width = 522
            Height = 17
            WrapText = True
            Stretch = True
            Variable = SctDBVar11
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 381
            Top = 1
            Width = 43
            Height = 17
            Caption = 'N'#250'mero:'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 425
            Top = 1
            Width = 62
            Height = 17
            Variable = adodsendviewDs_NumeroVar1
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 484
            Top = 35
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 526
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_1Var1
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 613
            Top = 35
            Width = 85
            Height = 17
            Variable = adodsendviewNr_Celular_2Var1
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 241
          Width = 748
          Height = 59
          ParentColor = True
          BandName = 'GrpHdFuncionario'
          Updatelevel = SctLevel6
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = SctBand6BeforePrint
          object SctImgDesenhada: TSctImageLabel
            Left = 293
            Top = 23
            Width = 89
            Height = 33
          end
          object SctVarProduto: TSctvarlabel
            Left = -1
            Top = 0
            Width = 698
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsitemDp_ProdutoVar1
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 400
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel7
        end
        object SctSubBand3: TSctSubBand
          Left = 0
          Top = 366
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'DtlBdObsItem'
          OnPrintWhen = DtlBdObsItemPrintWhen
          Updatelevel = SctLevel3
          Stretch = True
          Band = SctBand3
          Above = False
          object Sctvarlabel107: TSctvarlabel
            Left = 32
            Top = 1
            Width = 393
            Height = 17
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
          end
          object SctImageLabel1: TSctImageLabel
            Left = 432
            Top = 0
            Width = 266
            Height = 17
            Center = True
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActProducao
            ImageIndex = 27
            ShortCut = 118
          end
          item
            Action = ActProduzido
            ImageIndex = 9
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActItemIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActItemOrca
            ImageIndex = 8
            ShortCut = 16502
          end
          item
            Action = ActItemEdit
            ImageIndex = 18
            ShortCut = 16499
          end
          item
            Action = ActItemDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActItemDraw
            ImageIndex = 51
            ShortCut = 16503
          end
          item
            Action = ActItemRep
            ImageIndex = 20
            ShortCut = 16501
          end
          item
            Action = ActItemView
            ImageIndex = 36
            ShortCut = 16504
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 641
    Top = 32
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
      Hint = 'Relat'#243'rio - O.S. Multipla'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActProducao: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Colocar em Produ'#231#227'o'
      ImageIndex = 27
      ShortCut = 118
      OnExecute = ActProducaoExecute
    end
    object ActProduzido: TAction
      Category = '2-Database'
      Hint = 'Marcar OS como Produzida'
      ImageIndex = 9
      OnExecute = ActProducaoExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar O.S.'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Abrir O.S.'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActItemIns: TAction
      Tag = 1
      Category = '3-Itens'
      Hint = 'Incluir novo item'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActItemInsExecute
    end
    object ActItemEdit: TAction
      Tag = 2
      Category = '3-Itens'
      Hint = 'Alterar o Item'
      ImageIndex = 18
      ShortCut = 16499
      OnExecute = ActItemInsExecute
    end
    object ActItemDel: TAction
      Category = '3-Itens'
      Hint = 'Excluir o Item'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActItemDelExecute
    end
    object ActItemRep: TAction
      Tag = 3
      Category = '3-Itens'
      Hint = 'Impress'#227'o do Item'
      ImageIndex = 20
      ShortCut = 16501
      OnExecute = ActItemRepExecute
    end
    object ActItemOrca: TAction
      Category = '3-Itens'
      Hint = 'Importar item do Or'#231'amento'
      ImageIndex = 8
      ShortCut = 16502
      OnExecute = ActItemOrcaExecute
    end
    object ActItemDraw: TAction
      Category = '3-Itens'
      Hint = 'Desenhar'
      ImageIndex = 51
      ShortCut = 16503
      OnExecute = ActItemDrawExecute
    end
    object ActItemView: TAction
      Category = '3-Itens'
      Hint = 'Visualizar o Desenho'
      ImageIndex = 36
      ShortCut = 16504
      OnExecute = ActItemViewExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  OS.Cd_Filial, OS.Nr_OS, OS.St_OS, OS.Dt_OS, OS.Cd_Emitente, E.Nm_Emitente, OS.Nr_Orcamento,'#13#10'  OS.Dt_Entrega, OS.Mm_Observacao, OS.Dt_Inicio, OS.Dt_Termino, F.Nm_Funcionario,'#13#10'  O.Nr_Endereco, E.Nr_Endereco as Nr_EndCliente, E.Nm_Fantasia'#13#10#13#10'from'#13#10'  OServico OS'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OS.Cd_Emitente'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial = OS.Cd_Filial and'#13#10'  O.Nr_Orcamento = OS.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'where'#13#10'  OS.Cd_Filial = :Cd_Filial and'#13#10'  OS.Nr_OS     = :Nr_OS'
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
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 57
    Top = 411
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_OS: TIntegerField
      FieldName = 'Nr_OS'
    end
    object ADODsDadosSt_OS: TStringField
      FieldName = 'St_OS'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosDt_Entrega: TDateTimeField
      FieldName = 'Dt_Entrega'
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsDadosDt_OS: TDateTimeField
      FieldName = 'Dt_OS'
    end
    object ADODsDadosDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsDadosDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsDadosNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsDadosNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsDadosNr_EndCliente: TSmallintField
      FieldName = 'Nr_EndCliente'
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into OServico( Cd_Filial, Nr_OS, Dt_OS, St_OS, Cd_Emitente,'
      '  Nr_Orcamento, Dt_Entrega, Mm_Observacao )'
      'values( :Cd_Filial, :Nr_OS, :Dt_OS, ''''1'''', :Cd_Emitente,'
      '  :Nr_Orcamento, :Dt_Entrega, :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  OServico'
      ''
      'set'
      '  Cd_Emitente   = :Cd_Emitente,'
      '  Nr_Orcamento  = :Nr_Orcamento,'
      '  Dt_Entrega    = :Dt_Entrega,'
      '  Mm_Observacao = :Mm_Observacao,'
      '  Dt_OS         = :Dt_OS'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
    )
    SQLDelete.Strings = (
      'delete from'
      '  OServico'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
    )
    SQLOther0.Strings = (
      's-------------------- Elimina tabelas temporarias'
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
      '-------------------- Verifica a comiss'#227'o do Item'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_Produto, OI.Vl_Venda as Vl_Apurado,'
      '  CO.Cd_Funcionario,'
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
      '  ##Comis_Orcamento CO'
      'on'
      '  CO.Cd_Filial    = TCF.Cd_Filial and'
      '  CO.Nr_Orcamento = TCF.Nr_Orcamento'
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
      '-------------------- Elimina tabelas temporarias'
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
      '  end as Pr_Desconto, RH.Vl_Lancamento, '
      '  Cast( null as Char( 1 ) ) as Fl_Estoque, Cast( Null as Int ) as Nr_Caixa'
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
      '  end as Pr_Desconto, C.Vl_Lancamento, C.Fl_Estoque, C.Nr_Lancamento'
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
      '      CE.Fl_Estoque = C.Fl_Estoque and'
      '      CE.Nr_Estorno = C.Nr_Lancamento'
      '    ) and  '
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
      '      CI.Fl_Estoque    = C.Fl_Estoque and'
      '      CI.Nr_Lancamento = C.Nr_Lancamento'
      '    )'
      ''
      '-------------------- Verifica a comiss'#227'o do Item'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_Produto, OI.Vl_Venda as Vl_Apurado,'
      '  CO.Cd_Funcionario, P.Pr_Comissao as Pr_Produto,'
      '  FP.Pr_Comissao as Pr_FuncProduto,'
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
      '  CO.Cd_Filial    = TCF.Cd_Filial and'
      '  CO.Nr_Orcamento = TCF.Nr_Orcamento'
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
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa,'
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
      '  CO.Nr_Parcela, CO.Nr_Lancamento, CO.Nr_Caixa'
      ''
      '-------------------- Calculo da rela'#231#227'o proporcional ao recebido'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado,'
      '  Cast( Null as SmallInt ) as Nr_Item'
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
      'insert into ##Comis_Apurada'
      'select distinct'
      '  CAA.Cd_Filial, CAA.Cd_Funcionario, CAA.Nr_Orcamento, CAA.Nr_Receber,'
      '  CAA.Nr_Parcela, CAA.Nr_Lancamento, CR.Vl_Lancamento as Vl_Apurado, CAA.Nr_Caixa,'
      '  CAA.Vl_Comissionado / 100.0 * ( CR.Vl_Lancamento / CAA.Vl_Apurado * 100.0 ) as Vl_Comissionado, '
      '  null as Nr_Item'
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
      '    from    '
      '      ##Comis_Apurada CA'
      ''
      '    where'
      '      CA.Cd_Filial      = ##Comis_Apurada.Cd_Filial and'
      '      CA.Cd_Funcionario = ##Comis_Apurada.Cd_Funcionario and'
      '      ('
      '      Cast( Coalesce( CA.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( CA.Nr_Caixa, 0 ) as Char( 7 ) ) <='
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Receber, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Parcela, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Lancamento, 0 ) as Char( 7 ) ) +'
      '      Cast( Coalesce( ##Comis_Apurada.Nr_Caixa, 0 ) as Char( 7 ) )'
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
      '  Vl_Comissionado, Nr_Item )'
      'select'
      '  CA.Cd_Filial, @Nr_Comissao, CA.Cd_Funcionario, CA.Nr_Receber, CA.Nr_Parcela,'
      '  CA.Nr_Lancamento, CA.Nr_Caixa, sum( CA.Vl_Apurado ), sum( CA.Vl_Comissionado ), CA.Nr_Item'
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
      '  CA.Nr_Lancamento, CA.Nr_Caixa, CA.Nr_Item'
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
      ''
    )
    SQLOther2.Strings = (
      '--------------- Altera da data da OS'
      'update'
      '  OServico'
      ''
      'set'
      '  Dt_OS   = :Dt_OS'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Muda Situa'#231#227'o da OS'
      'update'
      '  OServico'
      ''
      'set'
      '  St_OS    = :St_OS'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
    )
    SQLOther5.Strings = (
      '-------------------- Excluir itens da O.S.'
      'delete from'
      '  OServico_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther6.Strings = (
      '-------------------- Salvar o desenho no banco'
      'update'
      '  OServico_Item'
      ''
      'set'
      '  Im_Item   = :Im_Item,'
      '  Im_Draw   = :Im_Draw,'
      '  Nr_Width  = :Nr_Width,'
      '  Nr_Height = :Nr_Height'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS and'
      '  Nr_Item   = :Nr_Item'
      ''
    )
    Left = 87
    Top = 411
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Prior'#13#10'select top 1'#13#10'  Nr_OS'#13#10#13#10'from'#13#10'  OServico'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_OS    = :Nr_OS'#13#10#13#10'order by'#13#10'  Nr_OS desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_OS'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_OS ) + 1 as Nr_OS'
      ''
      'from'
      '  OServico A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_OS'
      ''
      'from'
      '  OServico'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_OS'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_OS'
      ''
      'from'
      '  OServico'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     < :Nr_OS'
      ''
      'order by'
      '  Nr_OS desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_OS'
      ''
      'from'
      '  OServico'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     > :Nr_OS'
      ''
      'order by'
      '  Nr_OS'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_OS'
      ''
      'from'
      '  OServico'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_OS desc'
    )
    Left = 117
    Top = 411
    object ADODsNavegarNr_OS: TIntegerField
      FieldName = 'Nr_OS'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 29
    Top = 411
  end
  object ADODsOrcaOS: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'where'#13#10'  OT.Cd_Filial = :Cd_Filial and'#13#10'  OT.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 149
    Top = 411
    object ADODsOrcaOSNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcaOSCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsOrcaOSNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 180
    Top = 411
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsItemAfterOpen
    AfterScroll = ADODsItemAfterOpen
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  OSI.Cd_Filial, OSI.Nr_OS, OSI.Nr_Item, OSI.Cd_Produto, OSI.Nm_Produto, OSI.Im_Item,'#13#10'  OSI.Mm_ObsItem, OSI.Im_Draw, OSI.Nr_Width, OSI.Nr_Height, OSI.Cd_Funcionario,'#13#10'  F.Nm_Funcionario'#13#10#13#10'from'#13#10'  OServico_Item OSI'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = OSI.Cd_Funcionario'#13#10#13#10'where'#13#10'  OSI.Cd_Filial = :Cd_Filial and'#13#10'  OSI.Nr_OS    = :Nr_OS'#13#10#13#10'order by'#13#10'  OSI.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end
      item
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQLOther0.Strings = (
      '-------------------- Ordem de Itens'
      'select'
      '  OSI.Cd_Filial, OSI.Nr_OS, OSI.Nr_Item, OSI.Cd_Produto, OSI.Nm_Produto, OSI.Im_Item,'
      '  OSI.Mm_ObsItem, OSI.Im_Draw, OSI.Nr_Width, OSI.Nr_Height, OSI.Cd_Funcionario,'
      '  F.Nm_Funcionario'
      ''
      'from'
      '  OServico_Item OSI'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OSI.Cd_Funcionario'
      ''
      'where'
      '  OSI.Cd_Filial = :Cd_Filial and'
      '  OSI.Nr_OS    = :Nr_OS'
      ''
      'order by'
      '  OSI.Nr_Item'
    )
    SQLOther1.Strings = (
      '-------------------- Ordem de FUncionario'
      'select'
      '  OSI.Cd_Filial, OSI.Nr_OS, OSI.Nr_Item, OSI.Cd_Produto, OSI.Nm_Produto, OSI.Im_Item,'
      '  OSI.Mm_ObsItem, OSI.Im_Draw, OSI.Nr_Width, OSI.Nr_Height, OSI.Cd_Funcionario,'
      '  F.Nm_Funcionario'
      ''
      'from'
      '  OServico_Item OSI'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = OSI.Cd_Funcionario'
      ''
      'where'
      '  OSI.Cd_Filial = :Cd_Filial and'
      '  OSI.Nr_OS    = :Nr_OS'
      ''
      'order by'
      '  OSI.Cd_Funcionario, OSI.Nr_Item'
    )
    Left = 209
    Top = 411
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_OS: TIntegerField
      FieldName = 'Nr_OS'
    end
    object ADODsItemNr_Item: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemIm_Item: TBlobField
      FieldName = 'Im_Item'
    end
    object ADODsItemDp_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 130
      Calculated = True
    end
    object ADODsItemMm_ObsItem: TMemoField
      FieldName = 'Mm_ObsItem'
      BlobType = ftMemo
    end
    object ADODsItemNr_Width: TSmallintField
      FieldName = 'Nr_Width'
    end
    object ADODsItemNr_Height: TSmallintField
      FieldName = 'Nr_Height'
    end
    object ADODsItemIm_Draw: TBlobField
      FieldName = 'Im_Draw'
    end
    object ADODsItemCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsItemNm_Funcionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
  end
  object ADODsEndView: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,'#13#10'  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,'#13#10'  B.Nm_Cidade + '''' - '''' + B.Sg_Estado  as Dp_Cidade,'#13#10'  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao, '#13#10'  Cast( A.Cd_Rota as VarChar ) + '''' - '''' + C.Ds_Rota as Dp_Rota,'#13#10'  A.Ds_Numero, A.Nr_Celular_1, A.Nr_Celular_2'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'inner join'#13#10'  Cidade B'#13#10'on'#13#10'  B.Cd_Cidade = A.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota C'#13#10'on'#13#10'  C.Cd_Rota = A.Cd_Rota'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  A.Nr_Endereco = :Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 269
    Top = 411
    object ADODsEndViewCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEndViewNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEndViewDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEndViewDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEndViewNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEndViewDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEndViewNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEndViewCd_Cidade: TSmallintField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEndViewDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsEndViewNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsEndViewDp_Rota: TStringField
      FieldName = 'Dp_Rota'
      ReadOnly = True
      Size = 83
    end
    object ADODsEndViewDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsEndViewNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
  end
  object DsEndView: TDataSource
    AutoEdit = False
    DataSet = ADODsEndView
    Left = 239
    Top = 411
  end
end
