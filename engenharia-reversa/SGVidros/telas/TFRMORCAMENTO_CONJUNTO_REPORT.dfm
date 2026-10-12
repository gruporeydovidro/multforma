object FrmOrcamento_Conjunto_Report: TFrmOrcamento_Conjunto_Report
  Left = 438
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Autoriza'#231#227'o para Produ'#231#227'o de Cestas'
  ClientHeight = 134
  ClientWidth = 383
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
    Height = 134
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 362
    Height = 134
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 103
      Width = 353
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 81
      Height = 13
      Caption = 'Data de Entrega:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 189
      Top = 106
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      ModalResult = 1
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 275
      Top = 106
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Entrega: TDateEdit
      Left = 5
      Top = 18
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object SctReport: TSctReport
      Left = 65
      Top = 25
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
      STop = 5
      SLeft = 5
      SWidth = 1116
      SHeight = 581
      MTop = 25
      MLeft = 65
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
        PageSetup.Height = 8.26771653543307
        PageSetup.Width = 11.692913385826772
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 1.0
        PageSetup.RightMargin = 1.0
        BorderType = btNone
        Description = 'Autoriza'#231#227'o para Produ'#231#227'o de Cestas'
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
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportcd_conjuntoVar
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
        object adodsreportnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_conjuntoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_conjunto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_conjuntoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_conjunto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportqt_conjuntoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_conjunto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportQt_CestaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Cesta'
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
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 981
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 981
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 474
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Autoriza'#231#227'o para produ'#231#227'o de Cestas de Alimentos e Controle de Lotes'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 833
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 866
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 830
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 866
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 931
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 191
          Width = 981
          Height = 28
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          BorderType = btSingle
          object Sctvarlabel7: TSctvarlabel
            Left = 1
            Top = 4
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportQt_CestaVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 68
            Top = 4
            Width = 473
            Height = 17
            Variable = adodsreportnm_produtoVar
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 675
            Top = 10
            Width = 128
            Height = 17
            AlignHorizontal = laCenter
            Caption = '_____/_____/__________'
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 672
            Top = 1
            Width = 2
            Height = 27
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 553
            Top = 1
            Width = 2
            Height = 27
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 66
            Top = 1
            Width = 2
            Height = 27
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 804
            Top = 1
            Width = 2
            Height = 27
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 836
            Top = 5
            Width = 83
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportqt_itemVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 381
          Width = 981
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 932
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
            Left = 849
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 896
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
          Top = 416
          Width = 981
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 981
          Height = 20
          Color = 16316664
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 931
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 1
            Top = 1
            Width = 48
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 48
            Top = 1
            Width = 433
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportnm_emitenteVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 511
            Top = 1
            Width = 92
            Height = 17
            Caption = 'Data de Entrega:'
          end
          object SctTxtDt_Entrega: TSctvarlabel
            Left = 604
            Top = 1
            Width = 65
            Height = 17
            Caption = '99/99/9999'
          end
          object SctTxtNr_Orcamento: TSctvarlabel
            Left = 749
            Top = 1
            Width = 181
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento N'#186': 123'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 981
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel9: TSctvarlabel
            Left = 1
            Top = 0
            Width = 375
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportnm_conjuntoVar
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 11
            Width = 931
            Height = 7
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 445
            Top = 0
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Quantidade:'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 515
            Top = 0
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportqt_conjuntoVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 234
          Width = 981
          Height = 132
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          Stretch = True
          object Sctvarlabel23: TSctvarlabel
            Left = 7
            Top = 29
            Width = 182
            Height = 17
            Caption = 'Autorizado pelo setor de vendas em:'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 7
            Top = 57
            Width = 274
            Height = 17
            Caption = 'Liberado pela produ'#231#227'o em: _____/_____/__________'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 7
            Top = 85
            Width = 274
            Height = 17
            Caption = 'Aprova'#231#227'o do lote em: _____/_____/__________'
          end
          object SctAutorVenda: TSctvarlabel
            Left = 345
            Top = 29
            Width = 456
            Height = 17
            Caption = 'por:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 345
            Top = 57
            Width = 269
            Height = 17
            Caption = 'por: ________________________________________'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 345
            Top = 85
            Width = 269
            Height = 17
            Caption = 'por: ________________________________________'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 190
            Top = 29
            Width = 65
            Height = 17
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 7
            Top = 113
            Width = 98
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 80
            Top = 113
            Width = 719
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportMm_ObservacaoVar
          end
        end
        object GroupHeaderSub: TSctSubBand
          Left = 0
          Top = 142
          Width = 981
          Height = 34
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'GroupHeaderSub'
          Updatelevel = GroupHeaderLevel
          BorderType = btSingle
          Band = GroupHeader
          Above = False
          object Sctvarlabel19: TSctvarlabel
            Left = 796
            Top = 1
            Width = 147
            Height = 32
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Quantidade para separa'#231#227'o no Estoque'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = -7
            Top = 1
            Width = 81
            Height = 32
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Quantidade por Cesta'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 67
            Top = 9
            Width = 474
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Descri'#231#227'o do Produto'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 555
            Top = 9
            Width = 113
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'NF Origem'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 675
            Top = 9
            Width = 128
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Validade'
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 672
            Top = 1
            Width = 2
            Height = 33
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 553
            Top = 1
            Width = 2
            Height = 33
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 66
            Top = 1
            Width = 2
            Height = 33
          end
          object SctVerticalDivider3: TSctVerticalDivider
            Left = 804
            Top = 1
            Width = 2
            Height = 33
          end
        end
      end
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 156
    Top = 46
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, E.Nm_Emitente, OC.Cd_Produto, O.Dt_Conjunto,'#13#10'  P.Cd_Produto as Cd_Conjunto, P.Nm_Produto as Nm_Conjunto,'#13#10'  OC.Qt_Item, OC.Nm_Produto, OI.Qt_Item as Qt_Conjunto,'#13#10'  O.Mm_Observacao'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento = O.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto and'#13#10'  P.Fl_Produto = ''''3'''#13#10#13#10'inner join'#13#10'  Orcamento_Conjunto OC'#13#10'on'#13#10'  OC.Cd_Filial    = OI.Cd_Filial and'#13#10'  OC.Nr_Orcamento = OI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OC.Nm_Produto'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 357
      end>
    Left = 186
    Top = 46
    object ADODsReportnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsReportnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsReportcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsReportcd_conjunto: TIntegerField
      FieldName = 'cd_conjunto'
    end
    object ADODsReportnm_conjunto: TStringField
      FieldName = 'nm_conjunto'
      Size = 120
    end
    object ADODsReportqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsReportnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsReportqt_conjunto: TBCDField
      FieldName = 'qt_conjunto'
      Precision = 12
      Size = 3
    end
    object ADODsReportQt_Separar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_Separar'
      Calculated = True
    end
    object ADODsReportQt_Cesta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_Cesta'
      Calculated = True
    end
    object ADODsReportMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsReportDt_Conjunto: TDateTimeField
      FieldName = 'Dt_Conjunto'
    end
  end
  object ADOCmdConjunto: TADOCommand
    CommandText = 'update'#13#10'  Orcamento'#13#10#13#10'set'#13#10'  Dt_Conjunto = :Dt_Conjunto'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Dt_Conjunto'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
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
    Left = 220
    Top = 45
  end
end
