object FrmCompra_Mapa: TFrmCompra_Mapa
  Left = 278
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Mapa de Compras'
  ClientHeight = 139
  ClientWidth = 438
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
    Height = 139
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 417
    Height = 139
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 109
      Width = 409
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 47
      Height = 13
      Caption = 'M'#234's/Ano:'
    end
    object Label2: TLabel
      Left = 135
      Top = 5
      Width = 89
      Height = 13
      Caption = 'Meses para m'#233'dia:'
    end
    object Label3: TLabel
      Left = 227
      Top = 5
      Width = 73
      Height = 13
      Caption = 'Proje'#231#227'o (dias):'
    end
    object BitBtnReport: TBitBtn
      Left = 244
      Top = 112
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 330
      Top = 112
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbMes: TComboBox
      Left = 5
      Top = 19
      Width = 76
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Ano: TRxSpinEdit
      Left = 80
      Top = 19
      Width = 50
      Height = 19
      Value = 2006.0
      TabOrder = 1
    end
    object EdtNr_Media: TRxSpinEdit
      Left = 135
      Top = 19
      Width = 38
      Height = 19
      Value = 6.0
      TabOrder = 2
    end
    object EdtNr_Projecao: TRxSpinEdit
      Left = 227
      Top = 19
      Width = 52
      Height = 19
      MaxValue = 99999.0
      MinValue = 1.0
      Value = 45.0
      TabOrder = 3
    end
    object CkBCompra: TCheckBox
      Left = 5
      Top = 41
      Width = 186
      Height = 17
      Caption = 'Considerar pend'#234'ncia de compras'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object SctReport: TSctReport
      Left = 265
      Top = 48
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
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 50
      SLeft = -18
      SWidth = 1021
      SHeight = 474
      MTop = 48
      MLeft = 265
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
        PageSetup.Orientation = poLandscape
        PageSetup.Size = psA4
        PageSetup.Height = 8.5
        PageSetup.Width = 11.0
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.7
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Mapa de Compra'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsMapaCompra
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
          DataSource = DsMapaCompra
        end
        object adodsmapacomprasg_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_mes1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_mes1'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_mes2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_mes2'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_mes3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_mes3'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_mes4Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_mes4'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_mediaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_media'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_estoque'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_rotatividadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_rotatividade'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_pendenciaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_pendencia'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompraqt_sugestaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_sugestao'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompradp_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_produto'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsmapacompranm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompradp_groupVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_group'
          DataSource = DsMapaCompra
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
          Variable = adodsmapacompradp_groupVar
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
        object adodsmapacompradp_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_grupo'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompradp_subgrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_subgrupo'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmapacompradp_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_classe'
          DataSource = DsMapaCompra
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 1010
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 22
          Width = 1010
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object Sctvarlabel1: TSctvarlabel
            Left = 1
            Top = 2
            Width = 129
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Mapa de Compras'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 922
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 960
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 922
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 960
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 1
            Top = 38
            Width = 1024
            Height = 6
          end
          object SctSubTitle: TSctvarlabel
            Left = 1
            Top = 21
            Width = 560
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Proje'#231#227'o'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 185
          Width = 1010
          Height = 20
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel14: TSctvarlabel
            Left = 1
            Top = 2
            Width = 370
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsmapacompradp_produtoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 685
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_mediaVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 615
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_mes4Var
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 547
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_mes3Var
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 478
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_mes2Var
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 409
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_mes1Var
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 753
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_estoqueVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 822
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_rotatividadeVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 959
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_sugestaoVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 891
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmapacompraqt_pendenciaVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 1
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 376
            Top = 2
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsmapacomprasg_estoqueVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 255
          Width = 1010
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine3: TSctLine
            Left = 1
            Top = 1
            Width = 1024
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
            Left = 944
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 990
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 293
          Width = 1010
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 81
          Width = 1010
          Height = 23
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object Sctvarlabel7: TSctvarlabel
            Left = 1
            Top = 2
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 685
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'M'#233'dia'
          end
          object SctMes_04: TSctvarlabel
            Left = 615
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Junho'
          end
          object SctMes_03: TSctvarlabel
            Left = 547
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Maio'
          end
          object SctMes_02: TSctvarlabel
            Left = 478
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Abril'
          end
          object SctMes_01: TSctvarlabel
            Left = 409
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Jan a Mar'
          end
          object SctLine2: TSctLine
            Left = 1
            Top = 17
            Width = 1024
            Height = 6
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 753
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Estoque'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 822
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Rotatividade'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 959
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Sugest'#227'o'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 891
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Pend'#234'ncia'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 376
            Top = 2
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 119
          Width = 1010
          Height = 51
          Color = 15987699
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel10: TSctvarlabel
            Left = -1
            Top = 1
            Width = 308
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsmapacompradp_grupoVar
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 4
            Top = 17
            Width = 308
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsmapacompradp_subgrupoVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 9
            Top = 33
            Width = 308
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsmapacompradp_classeVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 220
          Width = 1010
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
        end
      end
    end
  end
  object ADOCmdMapa: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Cria table temporaria'
      'create table #mapacompra'
      '  ('
      '  cd_produto int,'
      '  nm_produto varchar( 120 ),'
      '  sg_estoque char( 2 ),'
      '  qt_mes1 numeric( 12, 3 ),'
      '  qt_mes2 numeric( 12, 3 ),'
      '  qt_mes3 numeric( 12, 3 ),'
      '  qt_mes4 numeric( 12, 3 ),'
      '  qt_media numeric( 12, 3 ),'
      '  qt_estoque numeric( 12, 3 ),'
      '  qt_rotatividade numeric( 12, 3 ),'
      '  qt_pendencia numeric( 12, 3 ),'
      '  qt_sugestao numeric( 12, 3 )'
      '  );'
      ''
      'create table #mapacompra_aux'
      '  ('
      '  cd_produto int,'
      '  qt_produto numeric( 12, 3 ),'
      '  fl_produto char( 1 )'
      '  );'
    )
    SQLOther1.Strings = (
      '-- limpa dados'
      'truncate table #MapaCompra;'
      'truncate table #MapaCompra_Aux;'
    )
    SQLOther2.Strings = (
      '-- Insere os produtos'
      'insert into #MapaCompra'
      'select distinct'
      '  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Estoque,'
      '  0, 0, 0, 0, 0, 0, 0, 0, 0'
      ''
      'from'
      '  Orcamento O'
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
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''1'''' and                       -- Somente produtos'
      '  P.Fl_Ativo   = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End;'
      ''
      '-- Produtos oriundos de conjunto'
      'insert into #MapaCompra'
      'select distinct'
      '  OC.Cd_Produto, P.Nm_Produto, OC.Sg_Unidade,'
      '  0, 0, 0, 0, 0, 0, 0, 0, 0'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento_Conjunto OC'
      'on'
      '  OC.Cd_Filial    = OI.Cd_Filial and'
      '  OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OC.Nr_Item      = OI.Nr_Item'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OC.Cd_Produto and'
      '  P.Fl_Produto = ''''1'''' and                       -- Somente produtos'
      '  P.Fl_Ativo   = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End and'
      '  not exists'
      '    ('
      '    select'
      '      Cd_Produto'
      ''
      '    from'
      '      #MapaCompra MC'
      ''
      '    where'
      '      MC.Cd_Produto = OC.Cd_Produto'
      '    );'
      ''
    )
    SQLOther3.Strings = (
      '-- Insere os produtos'
      'truncate table #MapaCompra_Aux;'
      ''
      '-- Insere os dados na tabela temporaria'
      'insert into #MapaCompra_Aux( Cd_Produto, Qt_Produto, Fl_Produto )'
      'select'
      '  OI.Cd_Produto, sum( OI.Qt_Estoque ), ''''1'''
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  OI.Cd_Produto'
      ''
      'union'
      'select'
      '  OC.Cd_Produto, sum( OC.Qt_Item * OI.Qt_Item * Coalesce( PU.Nr_Fator, 1.0 ) ), ''''1'''
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento_Conjunto OC'
      'on'
      '  OC.Cd_Filial    = OI.Cd_Filial and'
      '  OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OC.Nr_Item      = OI.Nr_Item'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  OC.Cd_Produto;'
      ''
      '-- Junta os dois'
      'insert into #MapaCompra_Aux( Cd_Produto, Qt_Produto, Fl_Produto )'
      'select'
      '  Cd_Produto, sum( Qt_Produto ), ''''2'''
      ''
      'from'
      '  #MapaCompra_Aux'
      ''
      'where'
      '  Fl_Produto = ''''1'''
      ''
      'group by'
      '  Cd_Produto;'
      ''
      '-- Efetua o update na tabela final'
      'update'
      '  #MapaCompra'
      ''
      'set'
      '  /* Nm_Campo */ = MCA.Qt_Produto'
      ''
      'from'
      '  #MapaCompra_Aux MCA'
      ''
      'where'
      '  MCA.Fl_Produto = ''''2'''' and'
      '  MCA.Cd_Produto = #MapaCompra.Cd_Produto;'
    )
    SQLOther4.Strings = (
      '-- Saldo de Estoque'
      'truncate table #MapaCompra_Aux;'
      ''
      '-- Insere os dados na tabela temporaria'
      'insert into #MapaCompra_Aux( Cd_Produto, Qt_Produto )'
      'select '
      '  MC.Cd_Produto, sum( ES.Qt_Liquido )'
      ''
      'from'
      '  #MapaCompra MC'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = MC.Cd_Produto'
      ''
      'group by'
      '  MC.Cd_Produto;'
      ''
      '-- Efetua o update na tabela final'
      'update'
      '  #MapaCompra'
      ''
      'set'
      '  Qt_Estoque = MCA.Qt_Produto'
      ''
      'from'
      '  #MapaCompra_Aux MCA'
      ''
      'where'
      '  MCA.Cd_Produto = #MapaCompra.Cd_Produto;'
    )
    SQLOther5.Strings = (
      '-- Pendencia de Compra'
      'truncate table #MapaCompra_Aux;'
      ''
      '-- Insere os dados na tabela temporaria'
      'insert into #MapaCompra_Aux( Cd_Produto, Qt_Produto )'
      'select'
      '  C.Cd_Produto,'
      '  sum( ( C.Qt_Item - C.Qt_Recebida ) * Coalesce( PU.Nr_Fator, 1.0 ) )'
      ''
      'from'
      '  Compra A'
      ''
      'inner join'
      '  Compra_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Compra  = A.Nr_Compra'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = C.Cd_Produto and'
      '  PU.Sg_Unidade = C.Sg_Unidade'
      ''
      'where'
      '  A.Cd_Filial   = :Cd_Filial and'
      '  A.St_Compra   = ''''2'''
      ''
      'group by'
      '  C.Cd_Produto;'
      ''
      '-- Efetua o update na tabela final'
      'update'
      '  #MapaCompra'
      ''
      'set'
      '  Qt_Pendencia = MCA.Qt_Produto'
      ''
      'from'
      '  #MapaCompra_Aux MCA'
      ''
      'where'
      '  MCA.Cd_Produto = #MapaCompra.Cd_Produto;'
    )
    SQLOther6.Strings = (
      '-- Quantidade m'#233'dia de estoque'
      'update'
      '  #MapaCompra'
      ''
      'set'
      '  Qt_Media    = ( Qt_Mes1 + Qt_Mes2 + Qt_Mes3 + Qt_Mes4 ) / :Nr_Media;'
      ''
      '-- Rotatividade/Sugest'#227'o de Compra'
      'update'
      '  #MapaCompra'
      ''
      'set'
      '  Qt_Rotatividade = Qt_Estoque / Qt_Media * 30.0,'
      '  Qt_Sugestao     = ( Qt_Media / 30.0 * :Nr_Projecao ) - Qt_Estoque;'
    )
    Left = 31
    Top = 108
  end
  object DsMapaCompra: TDataSource
    DataSet = ADODsMapaCompra
    Left = 62
    Top = 108
  end
  object ADODsMapaCompra: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsMapaCompraCalcFields
    CommandText = 'select'#13#10'  MC.Cd_Produto, MC.Nm_Produto, MC.Sg_Estoque, MC.Qt_Mes1, MC.Qt_Mes2,'#13#10'  MC.Qt_Mes3, MC.Qt_Mes4, MC.Qt_Media, MC.Qt_Estoque, MC.Qt_Rotatividade,'#13#10'  MC.Qt_Pendencia, MC.Qt_Sugestao,'#13#10'  P.Cd_Grupo, Cast( P.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + G.Nm_Grupo as Dp_Grupo,'#13#10'  P.Cd_SubGrupo, Cast( P.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'#13#10'  P.Cd_Classe, Cast( P.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + C.Nm_Classe as Dp_Classe'#13#10#13#10'from'#13#10'  #MapaCompra MC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = MC.Cd_Produto'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'where'#13#10'  MC.Qt_Sugestao > 0'#13#10#13#10'order by'#13#10'  P.Cd_Grupo, P.Cd_SubGrupo, P.Cd_Classe, MC.Nm_Produto'
    Parameters = <>
    Left = 92
    Top = 108
    object ADODsMapaCompracd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsMapaCompranm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsMapaComprasg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsMapaCompraqt_mes1: TBCDField
      FieldName = 'qt_mes1'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_mes2: TBCDField
      FieldName = 'qt_mes2'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_mes3: TBCDField
      FieldName = 'qt_mes3'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_mes4: TBCDField
      FieldName = 'qt_mes4'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_media: TBCDField
      FieldName = 'qt_media'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_estoque: TBCDField
      FieldName = 'qt_estoque'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_rotatividade: TBCDField
      FieldName = 'qt_rotatividade'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_pendencia: TBCDField
      FieldName = 'qt_pendencia'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompraqt_sugestao: TBCDField
      FieldName = 'qt_sugestao'
      Precision = 12
      Size = 3
    end
    object ADODsMapaCompradp_produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_produto'
      Size = 130
      Calculated = True
    end
    object ADODsMapaCompradp_group: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_group'
      Size = 15
      Calculated = True
    end
    object ADODsMapaCompracd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsMapaCompradp_grupo: TStringField
      FieldName = 'dp_grupo'
      Size = 8190
    end
    object ADODsMapaCompracd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsMapaCompradp_subgrupo: TStringField
      FieldName = 'dp_subgrupo'
      Size = 8190
    end
    object ADODsMapaCompracd_classe: TSmallintField
      FieldName = 'cd_classe'
    end
    object ADODsMapaCompradp_classe: TStringField
      FieldName = 'dp_classe'
      Size = 8190
    end
  end
end
