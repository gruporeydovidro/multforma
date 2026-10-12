object FrmOrcamento_OS: TFrmOrcamento_OS
  Left = 326
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Impress'#227'o da Ordem de Servi'#231'o - O.S.'
  ClientHeight = 470
  ClientWidth = 898
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
    Height = 470
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 877
    Height = 470
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 439
      Width = 868
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 38
      Height = 13
      Caption = 'Imprimir:'
    end
    object Label7: TLabel
      Left = 134
      Top = 2
      Width = 65
      Height = 13
      Caption = 'End. Entrega:'
    end
    object Label2: TLabel
      Left = 204
      Top = 2
      Width = 107
      Height = 13
      Caption = 'Espa'#231'o para desenho:'
    end
    object Label3: TLabel
      Left = 5
      Top = 41
      Width = 26
      Height = 13
      Caption = 'Itens:'
    end
    object Label4: TLabel
      Left = 5
      Top = 247
      Width = 69
      Height = 13
      Caption = '&Detalhamento:'
      FocusControl = DbGDetalhe
    end
    object Label5: TLabel
      Left = 591
      Top = 247
      Width = 130
      Height = 13
      Caption = '&Molduras - medidas em CM:'
      FocusControl = DbGMoldura
    end
    object BitBtnReport: TBitBtn
      Left = 703
      Top = 442
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 789
      Top = 442
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbImprimir: TComboBox
      Left = 5
      Top = 17
      Width = 125
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = CbImprimirChange
      Items.Strings = (
        'Produtos e Servi'#231'os'
        'Produtos'
        'Servi'#231'os'
      )
    end
    object CbEntrega: TComboBox
      Left = 134
      Top = 17
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbDesenho: TComboBox
      Left = 204
      Top = 17
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object DbGReport: TDBGrid
      Left = 5
      Top = 57
      Width = 861
      Height = 186
      Hint = 'Pressione <ESPA'#199'O> para mudar a situa'#231#227'o de impress'#227'o'
      DataSource = DsReport
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = PopMenReport
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGReportEnter
      OnExit = DbGReportExit
      OnKeyPress = DbGReportKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 530
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Impresso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Unidade'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Imprimir'
          Width = 44
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 5
      Top = 262
      Width = 580
      Height = 172
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGReportEnter
      OnExit = DbGReportExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Comprimento'
          Title.Alignment = taRightJustify
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Detalhe'
          Width = 321
          Visible = True
        end>
    end
    object DbGMoldura: TDBGrid
      Left = 591
      Top = 262
      Width = 276
      Height = 172
      DataSource = DsMoldura
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgTabs, dgConfirmDelete]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Moldura'
          Title.Alignment = taRightJustify
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Folga'
          Title.Alignment = taRightJustify
          Width = 55
          Visible = True
        end>
    end
    object SctReport: TSctReport
      Left = 402
      Top = 183
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
      TabOrder = 7
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      OnAfterPrint = SctReportAfterPrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = -11
      SWidth = 836
      SHeight = 551
      MTop = 183
      MLeft = 402
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
        Description = 'Ordem de Servi'#231'o'
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
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
          UpdateLevel = DataLevel
          DataSource = DsDetalhe
        end
        object adodsreportNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_EntregaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Entrega'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_AmbienteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Ambiente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          UpdateLevel = DetailBandlevel
          AutoVar = False
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
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_ContatoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Contato'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_PrevisaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Previsao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDetalhe
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsdetalheDp_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = DataLevel
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
          Variable = adodsreportDs_AmbienteVar
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
        object TotalOfPs_Produto: TSctTotalvar
          Left = 0
          Top = 277
          Width = 0
          Height = 0
          Variable = adodsreportPs_ProdutoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportMm_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Pedido'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataFooterLevel: TSctLevel
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
          UpdateLevel = Data1Level
          DataSource = DsMoldura
        end
        object Data1Level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsmolduraQt_MolduraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Moldura'
          DataSource = DsMoldura
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmolduraDp_MolduraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Moldura'
          DataSource = DsMoldura
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_NumeroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 319
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 319
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsreportNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
          Height = 36
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 243
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Ordem de Servi'#231'o (O.S.) Simplificada'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 656
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 689
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 653
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 689
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 1
            Top = 18
            Width = 84
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 86
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsreportNr_OrcamentoVar
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 292
          Width = 805
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel14: TSctvarlabel
            Left = 0
            Top = 0
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_ProdutoVar
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 51
            Top = -2
            Width = 567
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportNm_ProdutoVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 624
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportSg_UnidadeVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 689
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.00#'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 558
          Width = 805
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 756
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
          object SctTxtUsuario: TSctvarlabel
            Left = 439
            Top = 3
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 593
          Width = 805
          Height = 168
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          BorderType = btSingle
          object Sctvarlabel31: TSctvarlabel
            Left = 0
            Top = 1
            Width = 95
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Peso Total (KG):'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 96
            Top = 1
            Width = 75
            Height = 17
            TotalVariable = TotalOfPs_Produto
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 0
            Top = 25
            Width = 273
            Height = 17
            Caption = 'Inicio da Produ'#231#227'o: ______________________'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 380
            Top = 25
            Width = 273
            Height = 17
            Caption = 'Final da Produ'#231#227'o: ______________________'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 0
            Top = 52
            Width = 106
            Height = 17
            Caption = 'Material Utilizado:'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 0
            Top = 80
            Width = 325
            Height = 17
            Caption = 'Cotador: _______________________________________'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 381
            Top = 80
            Width = 325
            Height = 17
            Caption = 'Conferente:_____________________________________'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 0
            Top = 107
            Width = 354
            Height = 17
            Caption = 'Acabador: _______________________________________'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 0
            Top = 134
            Width = 354
            Height = 17
            Caption = 'Observa'#231#245'es:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 223
          Width = 805
          Height = 20
          Color = 16316664
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Order = 2
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 756
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 2
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 51
            Top = 2
            Width = 188
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 624
            Top = 2
            Width = 61
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 689
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
        object PgHdCliente: TSctSubBand
          Left = 0
          Top = 71
          Width = 805
          Height = 52
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdCliente'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Above = False
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 1
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
          object Sctvarlabel10: TSctvarlabel
            Left = 48
            Top = 1
            Width = 348
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 447
            Top = 1
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Contato:'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 497
            Top = 1
            Width = 258
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportNm_ContatoVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 0
            Top = 18
            Width = 158
            Height = 17
            Caption = 'Previs'#227'o de Entrega (Dias):'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 156
            Top = 18
            Width = 30
            Height = 17
            Variable = adodsreportNr_EntregaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 187
            Top = 18
            Width = 118
            Height = 17
            Variable = adodsreportDt_PrevisaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 426
            Top = 18
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Vendedor:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 497
            Top = 18
            Width = 258
            Height = 17
            Variable = adodsreportNm_FuncionarioVar
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 0
            Top = 32
            Width = 164
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es do Pedido:'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 142
            Top = 32
            Width = 612
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportMm_PedidoVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdEntrega: TSctSubBand
          Left = 0
          Top = 138
          Width = 805
          Height = 70
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdEntrega'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PageHeaderBand
          Order = 1
          Above = False
          object Sctvarlabel33: TSctvarlabel
            Left = 2
            Top = 1
            Width = 60
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 61
            Top = 1
            Width = 318
            Height = 17
            Variable = adodsreportDs_EnderecoVar
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 464
            Top = 1
            Width = 40
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Bairro:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 504
            Top = 1
            Width = 249
            Height = 17
            Variable = adodsreportNm_BairroVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 2
            Top = 18
            Width = 87
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 87
            Top = 18
            Width = 230
            Height = 17
            Variable = adodsreportDs_ComplementoVar
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 331
            Top = 18
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 364
            Top = 18
            Width = 67
            Height = 17
            Variable = adodsreportNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 435
            Top = 18
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Cidade:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 484
            Top = 18
            Width = 254
            Height = 17
            Variable = adodsreportDp_CidadeVar
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 2
            Top = 35
            Width = 63
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 62
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsreportNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 164
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsreportNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 267
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsreportNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 379
            Top = 35
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 411
            Top = 35
            Width = 98
            Height = 17
            Variable = adodsreportNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 2
            Top = 52
            Width = 86
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 82
            Top = 52
            Width = 671
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportMm_ObservacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 381
            Top = 1
            Width = 20
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 402
            Top = 1
            Width = 62
            Height = 17
            Variable = adodsreportDs_NumeroVar
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 510
            Top = 33
            Width = 41
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 552
            Top = 33
            Width = 98
            Height = 17
            Variable = adodsreportNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 653
            Top = 33
            Width = 98
            Height = 17
            Variable = adodsreportNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 325
          Width = 805
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Data'
          Updatelevel = DataLevel
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsDetalhe
          object Sctvarlabel27: TSctvarlabel
            Left = 48
            Top = 1
            Width = 45
            Height = 15
            AlignHorizontal = laRight
            Variable = adodsdetalheQt_ItemVar
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 123
            Top = 1
            Width = 423
            Height = 15
            Variable = adodsdetalheDp_DetalheVar
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 100
            Top = 1
            Width = 18
            Height = 15
            Caption = 'P'#199
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 258
          Width = 805
          Height = 19
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel30: TSctvarlabel
            Left = 2
            Top = 1
            Width = 753
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsreportDs_AmbienteVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 542
          Width = 805
          Height = 1
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          Visible = False
        end
        object DataFooter: TSctDataFootBand
          Left = 0
          Top = 357
          Width = 805
          Height = 13
          ParentColor = True
          BandName = 'DataFooter'
          Updatelevel = DataFooterLevel
          Band = Data
        end
        object DtBdDesenho: TSctSubBand
          Left = 0
          Top = 417
          Width = 805
          Height = 110
          ParentColor = True
          BandName = 'DtBdDesenho'
          Updatelevel = DetailBandlevel
          Band = DetailBand
          Above = False
        end
        object BdMoldura: TSctSubDataBand
          Left = 0
          Top = 385
          Width = 805
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'BdMoldura'
          Updatelevel = Data1Level
          Band = DetailBand
          Order = 1
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsMoldura
          object Sctvarlabel59: TSctvarlabel
            Left = 48
            Top = 1
            Width = 45
            Height = 15
            AlignHorizontal = laRight
            Variable = adodsmolduraQt_MolduraVar
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 100
            Top = 1
            Width = 530
            Height = 15
            Variable = adodsmolduraDp_MolduraVar
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 36
    Top = 165
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'declare @Cd_Filial SmallInt,'#13#10'@Nr_Orcamento int'#13#10#13#10'select @Cd_Filial = :Cd_Filial,'#13#10'@Nr_Orcamento = :Nr_ORcamento'#13#10'if Object_ID( ''''TempDB..##OrdemServ'''' ) is null'#13#10'  create table ##OrdemServ'#13#10'    ('#13#10'    Nr_Orcamento Int,'#13#10'    Nr_Item SmallInt,'#13#10'    Fl_Imprimir char( 1 )'#13#10'    )'#13#10#13#10'else'#13#10'  truncate table ##OrdemServ'#13#10#13#10'insert into ##OrdemServ'#13#10'  select'#13#10'    OI.Nr_Orcamento, OI.Nr_Item, case when OI.Fl_OrdemServico = ''''2'''' then ''''2'''' else ''''1'''' end'#13#10#13#10'  from'#13#10'    Orcamento_Item OI'#13#10#13#10'  where'#13#10'    OI.Cd_Filial     = @Cd_Filial and'#13#10'    OI.Nr_Orcamento  = @Nr_Orcamento and'#13#10'    OI.Fl_Confirmado = ''''1'''#13#10#13#10'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.Dt_Confirmado, O.Nr_Entrega,'#13#10'  O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario, '#13#10'  O.Nm_Contato, O.Mm_Observacao as Mm_Pedido,'#13#10#13#10'  OI.Nr_Item, OI.Ds_Ambiente, OI.Cd_Produto, P.Nm_Produto, OI.Qt_Item,'#13#10'  OI.Sg_Unidade, OI.Fl_OrdemServico, OS.Fl_Imprimir, OI.Fl_Medida,'#13#10'  P.Ps_Produto * OI.Qt_Item as Ps_Produto,  '#13#10#13#10'  EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'#13#10'  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade, EE.Ds_Numero,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado  as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao,'#13#10'  EE.Nr_Celular_1, EE.Nr_Celular_2,'#13#10#13#10'  P.Nr_MoldPerda, P.Nr_MoldEspessura'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10'  '#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Fl_Produto */                ----- Produto/Servi'#231'o'#13#10#13#10'inner join'#13#10'  ##OrdemServ OS'#13#10'on'#13#10'  OS.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'  OS.Nr_Item      = OI.Nr_Item'#13#10'  '#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Nr_Orcamento = @Nr_Orcamento'#13#10#13#10'order by'#13#10'  O.Cd_Filial, O.Nr_Orcamento, OI.Nr_Item, OI.Ds_Ambiente'
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
      end>
    SQLOther0.Strings = (
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.Dt_Confirmado, O.Nr_Entrega,'
      '  O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario, '
      '  O.Nm_Contato, O.Mm_Observacao as Mm_Pedido,'
      ''
      '  OI.Nr_Item, OI.Ds_Ambiente, OI.Cd_Produto, OI.Qt_Item,'
      '  OI.Sg_Unidade, OI.Fl_OrdemServico, OS.Fl_Imprimir, OI.Fl_Medida,'
      '  IsNull( PU.Nr_Fator, 1.0 ) * P.Ps_Produto * OI.Qt_Item as Ps_Produto, P.Cd_Localizacao,'
      '  L.Ds_Localizacao,'
      ''
      '-------------------- Determina se vai imprimir a descri'#231#227'o colocada no item'
      '  case'
      '    when :Fl_Pedido = ''''2'''' or OI.Nm_Produto = '''''' then P.Nm_Produto'
      '    else OI.Nm_Produto'
      ''
      '  end as Nm_Produto,'
      ''
      '  EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'
      '  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade, EE.Ds_Numero,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado  as Dp_Cidade,'
      '  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao,'
      '  EE.Nr_Celular_1, EE.Nr_Celular_2,'
      ''
      '  P.Nr_MoldPerda, P.Nr_MoldEspessura'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
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
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Fl_Produto */                ----- Produto/Servi'#231'o'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  ##OrdemServico OS'
      'on'
      '  OS.Nr_SPID      = @@SPID and'
      '  OS.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OS.Nr_Item      = OI.Nr_Item'
      '  /* Fl_Imprimir */'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ''
      'order by'
      '  O.Cd_Filial, O.Nr_Orcamento, OI.Ds_Ambiente, OI.Nr_Item'
    )
    SQLOther1.Strings = (
      'select'
      '  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.Dt_Confirmado, O.Nr_Entrega,'
      '  O.Cd_Funcionario, F.Nm_Funcionario,'
      ''
      '  OI.Nr_Item, OI.Ds_Ambiente, OI.Cd_Produto, OI.Qt_Item,'
      '  OI.Sg_Unidade, OI.Fl_OrdemServico, OS.Fl_Imprimir, '
      ''
      '-------------------- Determina se vai imprimir a descri'#231#227'o colocada no item  '
      '  case'
      '    when :Fl_Pedido = ''''1'''' or OI.Nm_Produto = '''''' then P.Nm_Produto'
      '    else OI.Nm_Produto'
      '    '
      '  end as Nm_Produto,'
      ''
      '  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'
      '  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado  as Dp_Cidade,'
      '  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      '  '
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
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Fl_Produto */                ----- Produto/Servi'#231'o'
      ''
      'inner join'
      '  ##OrdemServ OS'
      'on'
      '  OS.Nr_SPID      = @@SPID and'
      '  OS.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OS.Nr_Item      = OI.Nr_Item'
      '  '
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ''
      'order by'
      '  O.Cd_Filial, O.Nr_Orcamento, OI.Nr_Item, OI.Ds_Ambiente'
    )
    Left = 64
    Top = 165
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReportDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReportDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsReportNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsReportCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsReportNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsReportNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsReportDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsReportCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsReportNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsReportQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      Precision = 12
      Size = 3
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsReportDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsReportDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsReportNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsReportDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsReportNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsReportCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsReportDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsReportNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsReportNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsReportNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 10
    end
    object ADODsReportNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 10
    end
    object ADODsReportMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsReportFl_OrdemServico: TStringField
      FieldName = 'Fl_OrdemServico'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_Imprimir: TStringField
      DisplayLabel = 'Imprimir'
      FieldKind = fkCalculated
      FieldName = 'Dp_Imprimir'
      Size = 3
      Calculated = True
    end
    object ADODsReportSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsReportDs_Impresso: TStringField
      DisplayLabel = 'J'#225' Impresso'
      FieldKind = fkCalculated
      FieldName = 'Ds_Impresso'
      Size = 3
      Calculated = True
    end
    object ADODsReportFl_Imprimir: TStringField
      FieldName = 'Fl_Imprimir'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsReportDt_Previsao: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_Previsao'
      Calculated = True
    end
    object ADODsReportPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
    object ADODsReportFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsReportMm_Pedido: TMemoField
      FieldName = 'Mm_Pedido'
      BlobType = ftMemo
    end
    object ADODsReportNr_MoldPerda: TBCDField
      FieldName = 'Nr_MoldPerda'
      Precision = 9
      Size = 2
    end
    object ADODsReportNr_MoldEspessura: TBCDField
      FieldName = 'Nr_MoldEspessura'
      Precision = 9
      Size = 2
    end
    object ADODsReportDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsReportNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
    object ADODsReportNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      EditMask = '(##) #####-####;0; '
      Size = 11
    end
  end
  object ADOCmdOS: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'declare @Nr_Orcamento Int'
      'set @Nr_Orcamento = :Nr_Orcamento'
      ''
      'if Object_ID( ''''TempDB..##OrdemServico'''' ) is null'
      '  create table ##OrdemServico'
      '    ('
      '    Nr_Orcamento Int,'
      '    Nr_Item SmallInt,'
      '    Fl_Imprimir char( 1 ),'
      '    Nr_SPID Int'
      '    )'
      ''
      'else'
      '  delete from'
      '    ##OrdemServico'
      ''
      '  where'
      '    Nr_Orcamento = @Nr_Orcamento'
      ''
      'insert into ##OrdemServico'
      '  select'
      '    OI.Nr_Orcamento, OI.Nr_Item, case when OI.Fl_OrdemServico = ''''1'''' then ''''2'''' else ''''1'''' end,'
      '    @@SPID'
      ''
      '  from'
      '    Orcamento_Item OI'
      ''
      '  where'
      '    OI.Cd_Filial     = :Cd_Filial and'
      '    OI.Nr_Orcamento  = @Nr_Orcamento and'
      '    OI.Fl_Confirmado = ''''1'''
      '    /* Fl_ReImprimir */'
    )
    SQLOther1.Strings = (
      '-------------------- Muda o status da impress'#227'o'
      'update'
      '  ##OrdemServico'
      ''
      'set'
      '  Fl_Imprimir = :Fl_Imprimir'
      ''
      'where'
      '  Nr_SPID      = @@SPID and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther2.Strings = (
      '-------------------- Setar os itens que foram impressos'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Fl_OrdemServico = ''''1'''
      ''
      'from'
      '  ##OrdemServico OS'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial    = :Cd_Filial and'
      '  OI.Nr_Orcamento = OS.Nr_Orcamento and'
      '  OI.Nr_Item      = OS.Nr_Item'
      ''
      'where'
      '  OS.Nr_SPID      = @@SPID and'
      '  OS.Nr_Orcamento = :Nr_Orcamento and'
      '  OS.Fl_Imprimir  = ''''1'''
    )
    SQLOther3.Strings = (
      '-- Imprimir todos os itens'
      'update'
      '  ##OrdemServico'
      ''
      'set'
      '  Fl_Imprimir = ''''1'''
      ''
      'where'
      '  Nr_SPID      = @@SPID and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    Left = 26
    Top = 416
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item,'#13#10'  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item = :Nr_Item'#13#10#13#10'order by'#13#10'  Nr_Item'
    DataSource = DsReport
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
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
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 57
    Top = 382
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
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
    object ADODsDetalheDs_Detalhe: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
      Precision = 12
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 28
    Top = 382
  end
  object PopMenReport: TPopupMenu
    Left = 135
    Top = 188
    object Imprimirtodos1: TMenuItem
      Caption = 'Imprimir todos...'
      OnClick = Imprimirtodos1Click
    end
  end
  object ADODsMoldura: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsMolduraCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item,'#13#10'  Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura'#13#10#13#10'from'#13#10'  Orcamento_Moldura'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item = :Nr_Item'#13#10#13#10'order by'#13#10'  Nr_Moldura'
    DataSource = DsReport
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
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
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 513
    Top = 382
    object ADODsMolduraCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsMolduraNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsMolduraNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsMolduraNr_Moldura: TSmallintField
      DisplayLabel = 'Moldura'
      FieldName = 'Nr_Moldura'
    end
    object ADODsMolduraNr_Altura: TBCDField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Largura: TBCDField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Folga: TBCDField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Folga'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraQt_Moldura: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Moldura'
    end
    object ADODsMolduraDp_Moldura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Moldura'
      Size = 80
      Calculated = True
    end
  end
  object DsMoldura: TDataSource
    DataSet = ADODsMoldura
    Left = 484
    Top = 382
  end
end
