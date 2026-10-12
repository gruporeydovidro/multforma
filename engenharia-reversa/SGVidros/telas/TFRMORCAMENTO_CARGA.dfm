object FrmOrcamento_Carga: TFrmOrcamento_Carga
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cargas do Or'#231'amento'
  ClientHeight = 579
  ClientWidth = 939
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 579
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 918
    Height = 579
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label7: TLabel
      Left = 4
      Top = 237
      Width = 142
      Height = 13
      Caption = 'Itens do Or'#231'amento na Carga:'
    end
    object Label9: TLabel
      Left = 608
      Top = 237
      Width = 74
      Height = 13
      Caption = 'Detalhamentos:'
    end
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 74
      Height = 13
      Caption = 'Carregamentos:'
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 549
      Width = 911
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 4
      Top = 392
      Width = 126
      Height = 13
      Caption = 'Resumo Sint'#233'tico por item:'
    end
    object DbGItens: TDBGrid
      Left = 4
      Top = 252
      Width = 598
      Height = 138
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGCargaEnter
      OnExit = DbGCargaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 342
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Orcamento'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Entregue'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 608
      Top = 252
      Width = 305
      Height = 138
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGCargaEnter
      OnExit = DbGCargaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 219
          Visible = True
        end>
    end
    object DbGCarga: TDBGrid
      Left = 4
      Top = 16
      Width = 909
      Height = 221
      Hint = 'Pressiona < ENTER > ou de um Click Duplo para selecionar a carga'
      DataSource = DsCarga
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGCargaDblClick
      OnEnter = DbGCargaEnter
      OnExit = DbGCargaExit
      OnKeyPress = DbGCargaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Romaneio'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Carga'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Transportador'
          Width = 332
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Saida'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Prevista'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ps_Alocado'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Disponivel'
          Title.Alignment = taRightJustify
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Situacao'
          Title.Alignment = taCenter
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Romaneio'
          Width = 85
          Visible = True
        end>
    end
    object BitBtnConfirm: TBitBtn
      Left = 745
      Top = 552
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 831
      Top = 552
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 407
      Width = 598
      Height = 138
      DataSource = DsResumo
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGCargaEnter
      OnExit = DbGCargaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 319
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Orcamento'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Entregue'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saldo'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object SctReport: TSctReport
      Left = 488
      Top = 74
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
      TabOrder = 3
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 16
      SLeft = 6
      SWidth = 891
      SHeight = 581
      MTop = 74
      MLeft = 488
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
        PageSetup.Height = 11.692913385826772
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.2
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Cargas do Or'#231'amento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsCarga
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
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
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
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object TotalOfQt_ItemOrcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Produzido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_EmProducao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfQt_Defeito: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsItem
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel1
          DataSource = DsDetalhe
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCarga
        end
        object adodsitemQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsItem
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
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
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaNr_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaNm_TransportadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaDt_SaidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Saida'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaDt_PrevistaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Prevista'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaPs_AlocadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Alocado'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaQt_DisponivelVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Disponivel'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsCarga
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscargaDs_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Romaneio'
          DataSource = DsCarga
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
        object DataLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDtBdDetalheHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object adodsdetalheQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDetalhe
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheDp_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCarga.DsDados
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCarga.DsOrcSel
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCarga.DsItem
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCarga.DsDetalhe
        end
        object adodsitemQt_EntregueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Entregue'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel2
          DataSource = DsResumo
        end
        object adodsresumoNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsResumo
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsresumoQt_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsResumo
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsresumoSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsResumo
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsresumoQt_EntregueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Entregue'
          DataSource = DsResumo
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsresumoQt_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Saldo'
          DataSource = DsResumo
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataLevel2: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataHeaderLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 796
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 796
          Height = 36
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          object SctTitle: TSctvarlabel
            Left = 1
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cargas do Or'#231'amento'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 649
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 682
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 646
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 682
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctTxtCarga: TSctvarlabel
            Left = 1
            Top = 18
            Width = 640
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Or'#231'amento'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 128
          Width = 796
          Height = 19
          Color = 14803425
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscargaNr_RomaneioVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 62
            Top = 1
            Width = 276
            Height = 17
            Variable = adodscargaNm_TransportadorVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 340
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscargaDt_SaidaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 408
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscargaDt_PrevistaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 476
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscargaPs_AlocadoVar
            DataFormat.Width = 60
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 544
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscargaQt_DisponivelVar
            DataFormat.Width = 60
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 670
            Top = 1
            Width = 74
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscargaDs_RomaneioVar
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 609
            Top = 1
            Width = 56
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscargaDs_SituacaoVar
            DataFormat.Width = 60
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 301
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 747
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
            Left = 665
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 712
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
          Top = 336
          Width = 796
          Height = 8
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 71
          Width = 796
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 16
            Width = 747
            Height = 4
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Romaneio'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 62
            Top = 0
            Width = 276
            Height = 17
            Caption = 'Transportador'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 340
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Sa'#237'da'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 408
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Prev. Saida'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 476
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Width = 60
            Caption = 'Alocado'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 544
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Width = 60
            Caption = 'Dispon'#237'vel'
          end
          object SctLine1: TSctLine
            Left = 2
            Top = 0
            Width = 747
            Height = 4
            AlignVertical = laTop
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 670
            Top = 0
            Width = 74
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'ID Romaneio'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 609
            Top = 0
            Width = 56
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.Width = 60
            Caption = 'Situa'#231#227'o'
          end
        end
        object SctDtBdItem: TSctSubDataBand
          Left = 0
          Top = 198
          Width = 796
          Height = 18
          ParentColor = True
          BandName = 'SctDtBdItem'
          Updatelevel = DataLevel
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object Sctvarlabel25: TSctvarlabel
            Left = 64
            Top = 0
            Width = 438
            Height = 17
            Variable = adodsitemNm_ProdutoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 498
            Top = 0
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsitemSg_UnidadeVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 546
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemQt_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 680
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 613
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemQt_EntregueVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
        end
        object SctDtBdItemHD: TSctDataHeadBand
          Left = 0
          Top = 162
          Width = 796
          Height = 21
          ParentColor = True
          BandName = 'SctDtBdItemHD'
          Updatelevel = DataHeaderLevel
          Band = SctDtBdItem
          object Sctvarlabel29: TSctvarlabel
            Left = 64
            Top = 4
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 498
            Top = 4
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 546
            Top = 4
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 613
            Top = 4
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Entregue'
          end
          object SctLine6: TSctLine
            Left = 62
            Top = 16
            Width = 683
            Height = 4
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 680
            Top = 4
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Carga'
          end
        end
        object SctDtBdDetalhe: TSctSubDataBand
          Left = 0
          Top = 266
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'SctDtBdDetalhe'
          Updatelevel = DataLevel1
          Band = SctDtBdItem
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsDetalhe
          object Sctvarlabel35: TSctvarlabel
            Left = 196
            Top = 3
            Width = 338
            Height = 17
            Variable = adodsdetalheDp_DetalheVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 128
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdetalheQt_ItemVar
          end
        end
        object SctDtBdDetalheHeader: TSctDataHeadBand
          Left = 0
          Top = 231
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'SctDtBdDetalheHeader'
          Updatelevel = SctDtBdDetalheHeaderLevel
          Band = SctDtBdDetalhe
          object Sctvarlabel33: TSctvarlabel
            Left = 128
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 196
            Top = 3
            Width = 338
            Height = 17
            Caption = 'Detalhamento'
          end
          object SctLine3: TSctLine
            Left = 128
            Top = 16
            Width = 413
            Height = 4
          end
        end
        object DetailBandSub: TSctSubBand
          Left = 0
          Top = 106
          Width = 796
          Height = 7
          ParentColor = True
          BandName = 'DetailBandSub'
          Updatelevel = DetailBandlevel
          Band = DetailBand
          Above = True
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 416
          Width = 796
          Height = 20
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel2
          OnBeforePrint = DataBeforePrint
          Band = ReportFooterBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsResumo
          object Sctvarlabel44: TSctvarlabel
            Left = 64
            Top = 3
            Width = 428
            Height = 17
            Variable = adodsresumoNm_ProdutoVar
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 498
            Top = 3
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsresumoSg_UnidadeVar
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 546
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsresumoQt_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 613
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsresumoQt_EntregueVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 680
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsresumoQt_SaldoVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.Digits = 3
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 359
          Width = 796
          Height = 42
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel1
          Band = Data
          object Sctvarlabel38: TSctvarlabel
            Left = 64
            Top = 24
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 498
            Top = 24
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 546
            Top = 24
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 613
            Top = 24
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Entregue'
          end
          object SctLine5: TSctLine
            Left = 62
            Top = 36
            Width = 683
            Height = 4
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 680
            Top = 24
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 64
            Top = 6
            Width = 161
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Resumo Sint'#233'tico por item'
          end
        end
      end
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  CI.Cd_Filial, CI.Nr_Romaneio, CI.Nr_Orcamento, CI.Nr_Item, CI.Qt_Item,'#13#10'  OI.Cd_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, P.Nm_Produto,'#13#10'  OI.Fl_Medida, P.Ps_Produto * CI.Qt_Item as Ps_Item,'#13#10'  Qt_Entregue ='#13#10'    ('#13#10'    select'#13#10'      sum( Old.Qt_Item )'#13#10#13#10'    from'#13#10'      Carga_Item Old'#13#10#13#10'    where'#13#10'      Old.Cd_Filial    = CI.Cd_Filial and'#13#10'      Old.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'      Old.Nr_Item      = CI.Nr_Item and'#13#10'      Old.Nr_Romaneio  < CI.Nr_Romaneio'#13#10'    )'#13#10#13#10'from'#13#10'  Carga_Item CI'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = CI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = CI.Nr_Item'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  CI.Cd_Filial    = :Cd_Filial and'#13#10'  CI.Nr_Romaneio  = :Nr_Romaneio and'#13#10'  CI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  CI.Nr_Item'
    DataSource = DsCarga
    IndexFieldNames = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
    Left = 56
    Top = 351
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Carga'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemQt_Orcamento: TBCDField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Qt_Orcamento'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsItemSg_Unidade: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemPs_Item: TBCDField
      FieldName = 'Ps_Item'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
    object ADODsItemQt_Entregue: TBCDField
      DisplayLabel = 'Entregue'
      FieldName = 'Qt_Entregue'
      ReadOnly = True
      DisplayFormat = '#,##0.###'
      Precision = 32
      Size = 3
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 27
    Top = 351
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe,'#13#10'  CD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe'#13#10#13#10'from'#13#10'  Carga_Detalhe CD'#13#10#13#10'inner join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = CD.Cd_Filial and'#13#10'  OD.Nr_Orcamento = CD.Nr_Orcamento and'#13#10'  OD.Nr_Item      = CD.Nr_Item and'#13#10'  OD.Nr_Detalhe   = CD.Nr_Detalhe'#13#10#13#10'where'#13#10'  CD.Cd_Filial    = :Cd_Filial and'#13#10'  CD.Nr_Romaneio  = :Nr_Romaneio and'#13#10'  CD.Nr_Orcamento = :Nr_Orcamento and'#13#10'  CD.Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  CD.Nr_Detalhe'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento;Nr_Item'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 668
    Top = 351
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDetalheNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDetalheNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 638
    Top = 350
  end
  object DsCarga: TDataSource
    DataSet = ADODsCarga
    Left = 48
    Top = 64
  end
  object ADODsCarga: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsCargaCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,'#13#10'  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,'#13#10'  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,'#13#10'  C.Ps_Alocado, OC.Nr_Orcamento, C.Ds_Romaneio'#13#10#13#10'from'#13#10'  Carga_Orcamento OC'#13#10#13#10'inner join'#13#10'  Carga C'#13#10'on'#13#10'  C.Cd_Filial   = OC.Cd_Filial and'#13#10'  C.Nr_Romaneio = OC.Nr_Romaneio'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = C.Cd_Transportador'#13#10#13#10'where'#13#10'  OC.Cd_Filial    = :Cd_Filial and'#13#10'  OC.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  C.Dt_Saida desc'
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
    Left = 78
    Top = 64
    object ADODsCargaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsCargaNr_Romaneio: TIntegerField
      DisplayLabel = 'Romaneio'
      FieldName = 'Nr_Romaneio'
    end
    object ADODsCargaSt_Carga: TStringField
      FieldName = 'St_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsCargaDt_Carga: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Carga'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCargaCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsCargaCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsCargaNm_Transportador: TStringField
      DisplayLabel = 'Transportador'
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsCargaNr_Placa: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'Nr_Placa'
      Size = 10
    end
    object ADODsCargaDt_Saida: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'Dt_Saida'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCargaDt_Retorno: TDateTimeField
      DisplayLabel = 'Retorno'
      FieldName = 'Dt_Retorno'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCargaVl_Frete: TBCDField
      FieldName = 'Vl_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsCargaCp_Veiculo: TSmallintField
      FieldName = 'Cp_Veiculo'
    end
    object ADODsCargaDt_Prevista: TDateTimeField
      DisplayLabel = 'Previs'#227'o Sa'#237'da'
      FieldName = 'Dt_Prevista'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCargaQt_Orcamento: TSmallintField
      FieldName = 'Qt_Orcamento'
    end
    object ADODsCargaPs_Alocado: TBCDField
      DisplayLabel = 'Alocado'
      FieldName = 'Ps_Alocado'
      DisplayFormat = '#,##0.0'
      Precision = 12
      Size = 2
    end
    object ADODsCargaNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsCargaQt_Disponivel: TFloatField
      DisplayLabel = 'Dispon'#237'vel'
      FieldKind = fkCalculated
      FieldName = 'Qt_Disponivel'
      DisplayFormat = '#,##0.0'
      Calculated = True
    end
    object ADODsCargaDs_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsCargaDs_Romaneio: TStringField
      DisplayLabel = 'ID Romaneio'
      FieldName = 'Ds_Romaneio'
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento, OT.Nm_Emitente'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'where'#13#10'  OT.Cd_Filial = :Cd_Filial and'#13#10'  OT.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 280
    Top = 144
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
  end
  object ADODsResumo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsResumoCalcFields
    CommandText = 'select'#13#10'  CI.Cd_Filial, CI.Nr_Orcamento, CI.Nr_Item, OI.Cd_Produto,'#13#10'  P.Nm_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, '#13#10'  sum( CI.Qt_Item ) as Qt_Entregue'#13#10#13#10'from'#13#10'  Carga_Item CI'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = CI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = CI.Nr_Item'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  CI.Cd_Filial    = :Cd_Filial and'#13#10'  CI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'group by'#13#10'  CI.Cd_Filial, CI.Nr_Orcamento, CI.Nr_Item, OI.Cd_Produto,'#13#10'  P.Nm_Produto, OI.Qt_Item, OI.Sg_Unidade'#13#10#13#10'order by'#13#10'  CI.Nr_Item'
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
    Left = 64
    Top = 504
    object ADODsResumoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsResumoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsResumoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsResumoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsResumoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsResumoQt_Orcamento: TBCDField
      DisplayLabel = 'Orcamento'
      FieldName = 'Qt_Orcamento'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsResumoSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsResumoQt_Entregue: TBCDField
      DisplayLabel = 'Entregue'
      FieldName = 'Qt_Entregue'
      ReadOnly = True
      DisplayFormat = '#,##0.###'
      Precision = 32
      Size = 3
    end
    object ADODsResumoQt_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Qt_Saldo'
      DisplayFormat = '#,##0.###'
      Calculated = True
    end
  end
  object DsResumo: TDataSource
    DataSet = ADODsResumo
    Left = 32
    Top = 504
  end
end
