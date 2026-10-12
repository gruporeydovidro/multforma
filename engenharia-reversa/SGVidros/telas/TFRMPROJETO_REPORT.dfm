object FrmProjeto_Report: TFrmProjeto_Report
  Left = 288
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Projeto(s)'
  ClientHeight = 247
  ClientWidth = 632
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
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
    Height = 247
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 611
    Height = 247
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 217
      Width = 602
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 66
      Height = 13
      Caption = 'Projeto Inicial:'
    end
    object SbFindProjetoInicial: TSpeedButton
      Tag = 1
      Left = 66
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object Label1: TLabel
      Left = 5
      Top = 40
      Width = 61
      Height = 13
      Caption = 'Projeto Final:'
    end
    object SbFindProjetoFinal: TSpeedButton
      Tag = 2
      Left = 66
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object Label36: TLabel
      Left = 5
      Top = 76
      Width = 95
      Height = 13
      Caption = 'Tamanho da Figura:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 438
      Top = 220
      Width = 85
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 524
      Top = 220
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_ProjetoInicial: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = EdtCd_ProjetoInicialExit
    end
    object EdtNm_ProjetoInicial: TEdit
      Left = 90
      Top = 18
      Width = 427
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtCd_ProjetoFinal: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = EdtCd_ProjetoFinalExit
    end
    object EdtNm_ProjetoFinal: TEdit
      Left = 90
      Top = 55
      Width = 427
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object SctReport: TSctReport
      Left = 390
      Top = 50
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 2
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 35
      SLeft = 175
      SWidth = 826
      SHeight = 636
      MTop = 50
      MLeft = 390
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        ClipLabels = False
        PageSetup.Height = 11.0
        PageSetup.Width = 8.5
        PageSetup.RightMargin = 0.25
        BorderType = btNone
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsProjeto
        OnAfterDataSkip = ReportPageAfterDataSkip
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
          DataSource = DsProjeto
        end
        object adodsprojetoCd_ProjetoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Projeto'
          DataSource = DsProjeto
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprojetoNm_ProjetoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Projeto'
          DataSource = DsProjeto
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprojetoMm_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Complemento'
          DataSource = DsProjeto
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprojetoIm_ProjetoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Im_Projeto'
          DataSource = DsProjeto
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 249
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 249
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 249
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
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
          Footer = GroupFooter
          Variable = adodsprojetoCd_ProjetoVar
          Level = 0
        end
        object GroupHeaderLevel: TSctLevel
          Left = 0
          Top = 70
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel: TSctLevel
          Left = 0
          Top = 70
          Width = 0
          Height = 0
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 15
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsItemVidro
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 115
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel1
          DataSource = DsItemFerragem
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 115
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel2
          DataSource = DsItemPerfil
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 115
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel3
          DataSource = DsItemServico
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 115
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel4
          DataSource = DsItemKitbox
        end
        object DataLevel: TSctLevel
          Left = 0
          Top = 115
          Width = 0
          Height = 0
        end
        object DataItemVidroHeaderLevel: TSctLevel
          Left = 0
          Top = 115
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataLevel1: TSctLevel
          Left = 0
          Top = 191
          Width = 0
          Height = 0
        end
        object DataItemFerragemHeaderLevel: TSctLevel
          Left = 0
          Top = 191
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataLevel2: TSctLevel
          Left = 0
          Top = 257
          Width = 0
          Height = 0
        end
        object DataItemPerfilHeaderLevel: TSctLevel
          Left = 0
          Top = 257
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataLevel3: TSctLevel
          Left = 0
          Top = 257
          Width = 0
          Height = 0
        end
        object DataItemServicoHeaderLevel: TSctLevel
          Left = 0
          Top = 257
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataLevel4: TSctLevel
          Left = 0
          Top = 278
          Width = 0
          Height = 0
        end
        object DataItemKitboxHeaderLevel: TSctLevel
          Left = 0
          Top = 278
          Width = 0
          Height = 0
          IsHeader = True
        end
        object adodsitemvidroCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDs_Form_AlturaVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Ds_Form_Altura'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDs_Form_LarguraVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Ds_Form_Largura'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNr_Altura_FolgaVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Nr_Altura_Folga'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNr_Largura_FolgaVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Nr_Largura_Folga'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDs_ParteVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Ds_Parte'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDp_PecaVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Dp_Peca'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 2
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemCd_FabricanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Fabricante'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDs_Form_AlturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Form_Altura'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDs_Form_LarguraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Form_Largura'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDs_ParteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Parte'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 176
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemServico
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoQt_ItemVar: TSctDBVar
          Left = 0
          Top = 176
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemServico
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 176
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemServico
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 176
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemServico
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 218
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemKitbox
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxQt_ItemVar: TSctDBVar
          Left = 0
          Top = 218
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemKitbox
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 218
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemKitbox
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 218
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemKitbox
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 794
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 794
          Height = 42
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object Sctvarlabel1: TSctvarlabel
            Left = 2
            Top = 0
            Width = 256
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Projeto de Vidro Temperado'
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 618
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 656
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 618
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 655
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object SctLine4: TSctLine
            Left = 0
            Top = 35
            Width = 721
            Height = 5
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 273
          Width = 794
          Height = 0
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 715
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine5: TSctLine
            Left = 1
            Top = 1
            Width = 721
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 1
            Top = 3
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
          object Sctvarlabel110: TSctvarlabel
            Left = 640
            Top = 3
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 686
            Top = 3
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 750
          Width = 794
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object GroupHeaderSub: TSctSubBand
          Left = 0
          Top = 130
          Width = 794
          Height = 18
          ParentColor = True
          BandName = 'GroupHeaderSub'
          Updatelevel = GroupHeaderLevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = GroupHeader
          Above = False
          object varlabel: TSctvarlabel
            Left = 20
            Top = 0
            Width = 710
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsprojetoMm_ComplementoVar
          end
        end
        object GroupHeaderSubDesenho: TSctSubBand
          Left = 0
          Top = 163
          Width = 794
          Height = 95
          ParentColor = True
          BandName = 'GroupHeaderSubDesenho'
          Updatelevel = GroupHeaderLevel
          Visible = False
          Stretch = True
          OnBeforePrint = GroupHeaderSubDesenhoBeforePrint
          OnAfterPrint = GroupHeaderSubDesenhoAfterPrint
          Band = GroupHeader
          Order = 1
          Above = False
          object SctImgProjeto: TSctImageLabel
            Left = 1
            Top = 1
            Width = 100
            Height = 91
            Variable = adodsprojetoIm_ProjetoVar
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 77
          Width = 794
          Height = 38
          Color = 15921906
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          BorderType = btSingle
          OnAfterPrint = GroupHeaderAfterPrint
          object Sctvarlabel2: TSctvarlabel
            Left = 2
            Top = 2
            Width = 56
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Projeto'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 57
            Top = 2
            Width = 36
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsprojetoCd_ProjetoVar
            DataFormat.DisplayFormat = '00#'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 2
            Top = 20
            Width = 56
            Height = 17
            Caption = 'Descri'#231#227'o:'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 57
            Top = 20
            Width = 435
            Height = 17
            Variable = adodsprojetoNm_ProjetoVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 680
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
        end
        object DataItemVidro: TSctSubDataBand
          Left = 0
          Top = 339
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'DataItemVidro'
          Updatelevel = DataLevel
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemVidro
          object Sctvarlabel53: TSctvarlabel
            Left = 2
            Top = 1
            Width = 40
            Height = 17
            WrapText = True
            Variable = adodsitemvidroCd_ProdutoVar
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 45
            Top = 1
            Width = 147
            Height = 17
            WrapText = True
            Variable = adodsitemvidroNm_ProdutoVar
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 198
            Top = 1
            Width = 112
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDp_PecaVar
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 314
            Top = 1
            Width = 76
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDs_Form_AlturaVar
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 394
            Top = 1
            Width = 51
            Height = 17
            WrapText = True
            Variable = adodsitemvidroNr_Altura_FolgaVar
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 449
            Top = 1
            Width = 77
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDs_Form_LarguraVar
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 529
            Top = 1
            Width = 50
            Height = 17
            WrapText = True
            Variable = adodsitemvidroNr_Largura_FolgaVar
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 582
            Top = 1
            Width = 79
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDp_UnidadeVar
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 664
            Top = 1
            Width = 81
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDs_ParteVar
          end
        end
        object DataItemVidroHeader: TSctDataHeadBand
          Left = 0
          Top = 288
          Width = 794
          Height = 36
          Color = 15921906
          BandName = 'DataItemVidroHeader'
          Updatelevel = DataItemVidroHeaderLevel
          BorderType = btSingle
          Band = DataItemVidro
          object SctVarSystem: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Vidros'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 2
            Top = 21
            Width = 41
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 45
            Top = 21
            Width = 111
            Height = 13
            Transparent = False
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 198
            Top = 21
            Width = 33
            Height = 13
            Transparent = False
            Caption = 'Pe'#231'a'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 314
            Top = 21
            Width = 35
            Height = 13
            Transparent = False
            Caption = 'Altura'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 394
            Top = 21
            Width = 34
            Height = 13
            Transparent = False
            Caption = 'Folga'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 449
            Top = 21
            Width = 44
            Height = 13
            Transparent = False
            Caption = 'Largura'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 529
            Top = 21
            Width = 34
            Height = 13
            Transparent = False
            Caption = 'Folga'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 664
            Top = 21
            Width = 33
            Height = 13
            Transparent = False
            Caption = 'Parte'
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 582
            Top = 21
            Width = 50
            Height = 13
            Transparent = False
            Caption = 'Unidade'
          end
        end
        object DataItemFerragem: TSctSubDataBand
          Left = 0
          Top = 413
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'DataItemFerragem'
          Updatelevel = DataLevel1
          Band = DetailBand
          Order = 1
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemFerragem
          object Sctvarlabel17: TSctvarlabel
            Left = 2
            Top = 1
            Width = 40
            Height = 17
            WrapText = True
            Variable = adodsitemferragemCd_ProdutoVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 45
            Top = 1
            Width = 367
            Height = 17
            WrapText = True
            Variable = adodsitemferragemNm_ProdutoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 415
            Top = 1
            Width = 119
            Height = 17
            WrapText = True
            Variable = adodsitemferragemCd_FabricanteVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 537
            Top = 1
            Width = 97
            Height = 17
            WrapText = True
            Variable = adodsitemferragemDp_UnidadeVar
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 660
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemferragemQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
        end
        object DataItemFerragemHeader: TSctDataHeadBand
          Left = 0
          Top = 374
          Width = 794
          Height = 24
          Color = 15921906
          BandName = 'DataItemFerragemHeader'
          Updatelevel = DataItemFerragemHeaderLevel
          BorderType = btSingle
          Band = DataItemFerragem
          object Sctvarlabel6: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Ferragens'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 2
            Top = 6
            Width = 41
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 415
            Top = 6
            Width = 109
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo do Fabricante'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 45
            Top = 6
            Width = 111
            Height = 13
            Transparent = False
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 537
            Top = 6
            Width = 46
            Height = 13
            Transparent = False
            Caption = 'Unidade'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 660
            Top = 6
            Width = 61
            Height = 13
            Transparent = False
            Caption = 'Quantidade'
          end
        end
        object DataItemPerfil: TSctSubDataBand
          Left = 0
          Top = 499
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'DataItemPerfil'
          Updatelevel = DataLevel2
          Band = DetailBand
          Order = 2
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemPerfil
          object Sctvarlabel65: TSctvarlabel
            Left = 2
            Top = 1
            Width = 40
            Height = 17
            WrapText = True
            Variable = adodsitemperfilCd_ProdutoVar
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 45
            Top = 1
            Width = 201
            Height = 17
            WrapText = True
            Variable = adodsitemperfilNm_ProdutoVar
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 249
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDs_Form_AlturaVar
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 334
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDs_Form_LarguraVar
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 562
            Top = 1
            Width = 96
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDp_UnidadeVar
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 421
            Top = 1
            Width = 138
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDs_ParteVar
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 660
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemperfilQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
        end
        object DataItemPerfilHeader: TSctDataHeadBand
          Left = 0
          Top = 448
          Width = 794
          Height = 36
          Color = 15921906
          BandName = 'DataItemPerfilHeader'
          Updatelevel = DataItemPerfilHeaderLevel
          BorderType = btSingle
          Band = DataItemPerfil
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Perfis'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 2
            Top = 21
            Width = 41
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 45
            Top = 21
            Width = 111
            Height = 13
            Transparent = False
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 660
            Top = 21
            Width = 61
            Height = 13
            Transparent = False
            Caption = 'Quantidade'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 249
            Top = 21
            Width = 35
            Height = 13
            Transparent = False
            Caption = 'Altura'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 334
            Top = 21
            Width = 43
            Height = 13
            Transparent = False
            Caption = 'Largura'
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 562
            Top = 21
            Width = 48
            Height = 13
            Transparent = False
            Caption = 'Unidade'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 421
            Top = 21
            Width = 31
            Height = 13
            Transparent = False
            Caption = 'Parte'
          end
        end
        object DataItemServico: TSctSubDataBand
          Left = 0
          Top = 572
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'DataItemServico'
          Updatelevel = DataLevel3
          Band = DetailBand
          Order = 3
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemServico
          object Sctvarlabel31: TSctvarlabel
            Left = 2
            Top = 1
            Width = 40
            Height = 17
            WrapText = True
            Variable = adodsitemservicoCd_ProdutoVar
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 45
            Top = 1
            Width = 516
            Height = 17
            WrapText = True
            Variable = adodsitemservicoNm_ProdutoVar
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 562
            Top = 1
            Width = 97
            Height = 17
            WrapText = True
            Variable = adodsitemservicoDp_UnidadeVar
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 660
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemservicoQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
        end
        object DataItemServicoHeader: TSctDataHeadBand
          Left = 0
          Top = 534
          Width = 794
          Height = 23
          Color = 15921906
          BandName = 'DataItemServicoHeader'
          Updatelevel = DataItemServicoHeaderLevel
          BorderType = btSingle
          Band = DataItemServico
          object Sctvarlabel8: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Servi'#231'os'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 2
            Top = 6
            Width = 41
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 45
            Top = 6
            Width = 111
            Height = 13
            Transparent = False
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 562
            Top = 6
            Width = 48
            Height = 13
            Transparent = False
            Caption = 'Unidade'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 660
            Top = 6
            Width = 61
            Height = 13
            Transparent = False
            Caption = 'Quantidade'
          end
        end
        object DataItemKitbox: TSctSubDataBand
          Left = 0
          Top = 645
          Width = 794
          Height = 20
          ParentColor = True
          BandName = 'DataItemKitbox'
          Updatelevel = DataLevel4
          Band = DetailBand
          Order = 4
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemKitbox
          object Sctvarlabel35: TSctvarlabel
            Left = 2
            Top = 1
            Width = 40
            Height = 17
            WrapText = True
            Variable = adodsitemkitboxCd_ProdutoVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 45
            Top = 1
            Width = 516
            Height = 17
            WrapText = True
            Variable = adodsitemkitboxNm_ProdutoVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 562
            Top = 1
            Width = 97
            Height = 17
            WrapText = True
            Variable = adodsitemkitboxDp_UnidadeVar
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 660
            Top = 1
            Width = 82
            Height = 17
            WrapText = True
            Variable = adodsitemkitboxQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
        end
        object DataItemKitboxHeader: TSctDataHeadBand
          Left = 0
          Top = 607
          Width = 794
          Height = 23
          Color = 15921906
          BandName = 'DataItemKitboxHeader'
          Updatelevel = DataItemKitboxHeaderLevel
          BorderType = btSingle
          Band = DataItemKitbox
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Kit Box'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 2
            Top = 6
            Width = 41
            Height = 13
            Transparent = False
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 45
            Top = 6
            Width = 111
            Height = 13
            Transparent = False
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 562
            Top = 6
            Width = 48
            Height = 13
            Transparent = False
            Caption = 'Unidade'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 660
            Top = 6
            Width = 61
            Height = 13
            Transparent = False
            Caption = 'Quantidade'
          end
        end
      end
    end
    object CbFigura: TComboBox
      Left = 5
      Top = 91
      Width = 159
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Sem Figura'
      Items.Strings = (
        'Sem Figura'
        'Tamanho Original'
      )
    end
  end
  object ADODsProjeto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare @CdProjetoInicial int'#13#10'set @CdProjetoInicial = :Cd_ProjetoInicial'#13#10'declare @CdProjetoFinal int'#13#10'set @CdProjetoFinal = :Cd_ProjetoFinal'#13#10#13#10'select'#13#10'  P.Cd_Projeto, P.Nm_Projeto, P.Mm_Complemento, P.Im_Projeto'#13#10#13#10'from'#13#10'  Projeto P'#13#10#13#10'where'#13#10'  P.Cd_Projeto between @CdProjetoInicial and @CdProjetoFinal and'#13#10'  exists ('#13#10'    select'#13#10'      PItem.Cd_Projeto'#13#10'    from'#13#10'      Projeto_Item PItem'#13#10'    where'#13#10'      PItem.Cd_Projeto = P.Cd_Projeto'#13#10'  )'#13#10#13#10'order by'#13#10'  P.Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_ProjetoInicial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_ProjetoFinal'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 6
    Top = 120
    object ADODsProjetoCd_Projeto: TSmallintField
      FieldName = 'Cd_Projeto'
    end
    object ADODsProjetoNm_Projeto: TStringField
      FieldName = 'Nm_Projeto'
      Size = 100
    end
    object ADODsProjetoMm_Complemento: TMemoField
      FieldName = 'Mm_Complemento'
      BlobType = ftMemo
    end
    object ADODsProjetoIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
    end
  end
  object DsProjeto: TDataSource
    DataSet = ADODsProjeto
    Left = 35
    Top = 120
  end
  object ADODsPosicao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare @Cd_Projeto int'#13#10'set @Cd_Projeto = :Cd_Projeto'#13#10#13#10'select'#13#10'  ''''Parte'''' as Origem, Pos.Cd_Parte, Pos.Fl_Dimensao, -1 as Nr_Item,'#13#10'  -1 as Nr_Posicao, Pos.Nr_Top, Pos.Nr_Left,'#13#10'  /* Define os captions para impress'#227'o */'#13#10'  IsNull(cast(Pos.Fl_Dimensao as varchar) + ''''_'''' + Parte.Ds_Parte, '''''') as Dp_Caption'#13#10#13#10'from'#13#10'  Projeto_Parte_Posicao Pos'#13#10'  '#13#10'inner join'#13#10'  Projeto_Parte Parte'#13#10'on'#13#10'  Parte.Cd_Parte = Pos.Cd_Parte'#13#10#13#10'where'#13#10'  Pos.Cd_Projeto = @Cd_Projeto and'#13#10'  Pos.Nr_Top >= 0 and'#13#10'  Pos.Nr_Left >= 0'#13#10#13#10'union'#13#10#13#10'select'#13#10'  ''''Item'''' as Origem, -1 as Cd_Parte, null as Fl_Dimensao, Item.Nr_Item,'#13#10'  Item.Nr_Posicao, Item.Nr_Top, Item.Nr_Left,'#13#10'  /* Define os captions para impress'#227'o */'#13#10'  (case'#13#10'    /* Vidros */'#13#10'    when PItem.Tp_Item = 0 then cast(PItem.Cd_Peca as varchar)'#13#10'    /* Ferragem */'#13#10'    when PItem.Tp_Item = 1 then cast(Prod.Cd_Fabricante as varchar)'#13#10'    else '''''#13#10'  end) as Dp_Caption'#13#10#13#10'from'#13#10'  Projeto_Item_Posicao Item'#13#10'  '#13#10'inner join'#13#10'  Projeto_Item PItem'#13#10'on'#13#10'  PItem.Cd_Projeto = Item.Cd_Projeto and'#13#10'  PItem.Nr_Item = Item.Nr_Item'#13#10'  '#13#10'left join'#13#10'  Produto Prod'#13#10'on'#13#10'  Prod.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'where'#13#10'  Item.Cd_Projeto = @Cd_Projeto  and'#13#10'  Item.Nr_Top >= 0 and'#13#10'  Item.Nr_Left >= 0'
    DataSource = DsProjeto
    Parameters = <
      item
        Name = 'Cd_Projeto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 66
    Top = 120
    object ADODsPosicaoOrigem: TStringField
      FieldName = 'Origem'
      ReadOnly = True
      Size = 5
    end
    object ADODsPosicaoCd_Parte: TIntegerField
      FieldName = 'Cd_Parte'
      ReadOnly = True
    end
    object ADODsPosicaoFl_Dimensao: TStringField
      FieldName = 'Fl_Dimensao'
      FixedChar = True
      Size = 1
    end
    object ADODsPosicaoNr_Item: TIntegerField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
    object ADODsPosicaoNr_Posicao: TIntegerField
      FieldName = 'Nr_Posicao'
      ReadOnly = True
    end
    object ADODsPosicaoNr_Top: TIntegerField
      FieldName = 'Nr_Top'
    end
    object ADODsPosicaoNr_Left: TIntegerField
      FieldName = 'Nr_Left'
    end
    object ADODsPosicaoDp_Caption: TStringField
      FieldName = 'Dp_Caption'
      ReadOnly = True
      Size = 61
    end
  end
  object ADODsItemVidro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Seleciona os Vidros do Projeto */'#13#10'select'#13#10'  PItem.Cd_Produto, PItem.Ds_Form_Altura, PItem.Ds_Form_Largura,'#13#10'  PItem.Nr_Altura_Folga, PItem.Nr_Largura_Folga, PParte.Ds_Parte, P.Nm_Produto,'#13#10#13#10'  cast(PItem.Cd_Peca as varchar) + '''' - '''' + PPeca.Ds_Peca as Dp_Peca,'#13#10'  PItem.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item PItem'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PItem.Sg_Unidade'#13#10#13#10'left join'#13#10'  Projeto_Parte PParte'#13#10'on'#13#10'  PParte.Cd_Parte = PItem.Cd_Parte'#13#10#13#10'left join'#13#10'  Projeto_Peca PPeca'#13#10'on'#13#10'  PPeca.Cd_Peca = PItem.Cd_Peca'#13#10#13#10'where'#13#10'  PItem.Cd_Projeto = :Cd_Projeto and'#13#10'  PItem.Tp_Item = 0'#13#10#13#10'order by'#13#10'  PItem.Nr_Item'
    DataSource = DsProjeto
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 251
    Top = 90
    object ADODsItemVidroCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemVidroDs_Form_Altura: TStringField
      FieldName = 'Ds_Form_Altura'
      Size = 30
    end
    object ADODsItemVidroDs_Form_Largura: TStringField
      FieldName = 'Ds_Form_Largura'
      Size = 30
    end
    object ADODsItemVidroNr_Altura_Folga: TSmallintField
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsItemVidroNr_Largura_Folga: TSmallintField
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsItemVidroDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsItemVidroNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemVidroDp_Peca: TStringField
      FieldName = 'Dp_Peca'
      ReadOnly = True
      Size = 83
    end
    object ADODsItemVidroDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object DsItemVidro: TDataSource
    DataSet = ADODsItemVidro
    Left = 280
    Top = 90
  end
  object ADODsItemFerragem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Seleciona as Ferragens do Projeto */'#13#10'select'#13#10'  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto, P.Cd_Fabricante,'#13#10#13#10'  PItem.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item PItem'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PItem.Sg_Unidade'#13#10#13#10'where'#13#10'  PItem.Cd_Projeto = :Cd_Projeto and'#13#10'  PItem.Tp_Item = 1'#13#10#13#10'order by'#13#10'  PItem.Nr_Item'
    DataSource = DsProjeto
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 191
    Top = 120
    object ADODsItemFerragemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemFerragemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsItemFerragemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemFerragemCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsItemFerragemDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object DsItemFerragem: TDataSource
    DataSet = ADODsItemFerragem
    Left = 220
    Top = 120
  end
  object ADODsItemPerfil: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Seleciona os Perfis do Projeto */'#13#10'select'#13#10'  PItem.Cd_Produto, PItem.Qt_Item, PItem.Ds_Form_Altura,'#13#10'  PItem.Ds_Form_Largura, PParte.Ds_Parte, P.Nm_Produto,'#13#10#13#10'  PItem.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item PItem'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PItem.Sg_Unidade'#13#10#13#10'left join'#13#10'  Projeto_Parte PParte'#13#10'on'#13#10'  PParte.Cd_Parte = PItem.Cd_Parte'#13#10#13#10'where'#13#10'  PItem.Cd_Projeto = :Cd_Projeto and'#13#10'  PItem.Tp_Item = 2'#13#10#13#10'order by'#13#10'  PItem.Nr_Item'
    DataSource = DsProjeto
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 246
    Top = 120
    object ADODsItemPerfilCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemPerfilQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsItemPerfilDs_Form_Altura: TStringField
      FieldName = 'Ds_Form_Altura'
      Size = 30
    end
    object ADODsItemPerfilDs_Form_Largura: TStringField
      FieldName = 'Ds_Form_Largura'
      Size = 30
    end
    object ADODsItemPerfilDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsItemPerfilNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemPerfilDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object DsItemPerfil: TDataSource
    DataSet = ADODsItemPerfil
    Left = 275
    Top = 120
  end
  object ADODsItemServico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Seleciona os Servi'#231'os do Projeto */'#13#10'select'#13#10'  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto,'#13#10#13#10'  PItem.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item PItem'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PItem.Sg_Unidade'#13#10#13#10'where'#13#10'  PItem.Cd_Projeto = :Cd_Projeto and'#13#10'  PItem.Tp_Item = 3'#13#10#13#10'order by'#13#10'  PItem.Nr_Item'
    DataSource = DsProjeto
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 304
    Top = 120
    object ADODsItemServicoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemServicoQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsItemServicoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemServicoDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object DsItemServico: TDataSource
    DataSet = ADODsItemServico
    Left = 333
    Top = 120
  end
  object ADODsItemKitbox: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Seleciona os Kitbox do Projeto */'#13#10'select'#13#10'  PItem.Cd_Produto, PItem.Qt_Item, P.Nm_Produto,'#13#10#13#10'  PItem.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item PItem'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PItem.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PItem.Sg_Unidade'#13#10#13#10'where'#13#10'  PItem.Cd_Projeto = :Cd_Projeto and'#13#10'  PItem.Tp_Item = 4'#13#10#13#10'order by'#13#10'  PItem.Nr_Item'
    DataSource = DsProjeto
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 191
    Top = 90
    object ADODsItemKitboxCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemKitboxQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsItemKitboxNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemKitboxDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
  end
  object DsItemKitbox: TDataSource
    DataSet = ADODsItemKitbox
    Left = 220
    Top = 90
  end
end
