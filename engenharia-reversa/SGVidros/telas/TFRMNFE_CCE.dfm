object FrmNFe_CCe: TFrmNFe_CCe
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'CCe - Carta de Corre'#231#227'o Eletr'#244'nica'
  ClientHeight = 363
  ClientWidth = 772
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 363
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 364
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 751
    Height = 363
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitHeight = 364
    object BvlSeparator: TBevel
      Left = 3
      Top = 334
      Width = 744
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 27
      Width = 61
      Height = 13
      Caption = 'CCe da NFe:'
    end
    object Label3: TLabel
      Left = 6
      Top = 163
      Width = 246
      Height = 13
      Caption = 'Corre'#231#227'o (m'#237'nimo de 15 e m'#225'ximo 1000 caracteres):'
    end
    object Label2: TLabel
      Left = 450
      Top = 29
      Width = 296
      Height = 146
      AutoSize = False
      Caption = 'Importante:'#13#10'     '#13#10'     - A carta de corre'#231#227'o deve conter no m'#237'nimo 15 e no m'#225'ximo 1000 caracteres'#13#10#13#10'     - Vale sempre a '#250'ltima carta emitida - o conte'#250'do da '#250'ltima deve sempre consolidar o conteudo das anteriores'#13#10#13#10'     - S'#227'o permitidas no m'#225'ximo 20 CCe para cada NFe'#13#10#13#10'     - A impress'#227'o da CCe '#233' facultativa'
      WordWrap = True
    end
    object BitBtnConfirm: TBitBtn
      Left = 579
      Top = 337
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 665
      Top = 337
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGCCe: TDBGrid
      Left = 6
      Top = 41
      Width = 426
      Height = 120
      DataSource = DsCCe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_SeqEvento'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_dhEvento'
          Title.Alignment = taCenter
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_xMotivo'
          Title.Alignment = taCenter
          Width = 228
          Visible = True
        end>
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 749
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object PnlToolNavigator: TPanel
        Left = 0
        Top = 0
        Width = 107
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBNavigator: TActionToolBar
          Left = 0
          Top = 0
          Width = 107
          Height = 26
          ActionManager = ActManCadastro
          Caption = 'ActToolBNavigator'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
      object PnlDatabase: TPanel
        Left = 107
        Top = 0
        Width = 642
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 642
          Height = 26
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          Spacing = 0
        end
      end
    end
    object MmxCorrecao: TMemo
      Left = 6
      Top = 177
      Width = 739
      Height = 154
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object SctReport: TSctReport
      Left = 215
      Top = 110
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
      TabOrder = 5
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 110
      MLeft = 215
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
        PageSetup.Height = 29.699999999999996
        PageSetup.Width = 21.0
        PageSetup.Units = unitCentiMeters
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 1.27
        PageSetup.RightMargin = 1.27
        PageSetup.TopMargin = 1.27
        PageSetup.BottomMargin = 1.27
        BorderType = btNone
        Description = 'Classes de Estoque'
        CloseDataSet = False
        DataRange = drSingleRecord
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsCCe
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmClasse_Find.DsFind
        end
        object TotalOfcd_classe: TSctTotalvar
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
          UpdateLevel = DetailBandlevel
          DataSource = DsCCe
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmNFe.DsOrigem
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmNFe.DsGerado
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmNFe.DsInutiliza
        end
        object adodscceNr_SeqEventoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_SeqEvento'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceDt_dhEventoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_dhEvento'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceMm_xCorrecaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_xCorrecao'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceMm_CCeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_CCe'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceDs_xMotivoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_xMotivo'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNm_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsgeradoNr_chNFeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_chNFe'
          DataSource = FrmNFe.DsGerado
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsgeradoNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = FrmNFe.DsGerado
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsgeradoCd_SerieVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Serie'
          DataSource = FrmNFe.DsGerado
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceNr_nProtVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_nProt'
          DataSource = DsCCe
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscceMm_xCondUsoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_xCondUso'
          DataSource = DsCCe
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
          Height = 117
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          BorderType = btSingle
          object Sctvarlabel1: TSctvarlabel
            Left = 3
            Top = 1
            Width = 298
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsfilialNm_FilialVar
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 303
            Top = 1
            Width = 2
            Height = 116
          end
          object SctVarEndereco: TSctvarlabel
            Left = 3
            Top = 21
            Width = 298
            Height = 94
            WrapText = True
            Caption = 'Endere'#231'o e Telefone'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 307
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'CC-e'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 306
            Top = 20
            Width = 66
            Height = 49
            WrapText = True
            Stretch = True
            Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 306
            Top = 80
            Width = 17
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'N'#186
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 338
            Top = 80
            Width = 33
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodscceNr_SeqEventoVar
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 375
            Top = 1
            Width = 2
            Height = 116
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 379
            Top = 2
            Width = 158
            Height = 17
            Caption = 'Chave de Acesso da NFe'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 379
            Top = 29
            Width = 317
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsgeradoNr_chNFeVar
            DataFormat.DisplayFormat = '#### #### #### #### #### #### #### #### #### ####;0; '
          end
          object SctLine1: TSctLine
            Left = 376
            Top = 57
            Width = 322
            Height = 17
            AlignVertical = laMiddle
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 379
            Top = 75
            Width = 118
            Height = 17
            Caption = 'Data / Hora do Evento:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 384
            Top = 93
            Width = 94
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscceDt_dhEventoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 580
            Top = 75
            Width = 80
            Height = 17
            Caption = 'S'#233'rie / N'#250'mero'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 601
            Top = 93
            Width = 91
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsgeradoNr_FaturaVar
            DataFormat.DisplayFormat = '000,000,000'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 580
            Top = 93
            Width = 19
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsgeradoCd_SerieVar
          end
          object SctImgFilial: TSctImageLabel
            Left = 2
            Top = 2
            Width = 300
            Height = 114
            Center = True
            Stretch = True
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 172
          Width = 748
          Height = 40
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          BorderType = btSingle
          object Sctvarlabel5: TSctvarlabel
            Left = 4
            Top = 2
            Width = 65
            Height = 17
            Caption = 'Corre'#231#227'o:'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 10
            Top = 21
            Width = 684
            Height = 17
            WrapText = True
            Stretch = True
            JustifyMemo = True
            Variable = adodscceMm_xCorrecaoVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 302
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctTxtImpressao: TSctvarlabel
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
            Caption = 'Data e Hora de Impress'#227'o'
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 440
            Top = 2
            Width = 257
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desenvolvido por Multforma'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 337
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 152
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
        end
        object DetailBandSub: TSctSubBand
          Left = 0
          Top = 227
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'DetailBandSub'
          Updatelevel = DetailBandlevel
          Band = DetailBand
          Above = False
        end
        object DetailBandSub1: TSctSubBand
          Left = 0
          Top = 247
          Width = 748
          Height = 40
          ParentColor = True
          BandName = 'DetailBandSub1'
          Updatelevel = DetailBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = DetailBand
          Order = 1
          Above = False
          object Sctvarlabel7: TSctvarlabel
            Left = 4
            Top = 2
            Width = 101
            Height = 17
            Caption = 'Condi'#231#227'o de Uso:'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 10
            Top = 21
            Width = 684
            Height = 17
            WrapText = True
            Stretch = True
            JustifyMemo = True
            Variable = adodscceMm_xCondUsoVar
          end
        end
      end
    end
  end
  object DsCCe: TDataSource
    DataSet = ADODsCCe
    Left = 56
    Top = 96
  end
  object ADODsCCe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsCCeAfterScroll
    CommandText = 'select'#13#10'  Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem, Nr_SeqEvento, '#13#10'  Dt_dhEvento, Mm_xCorrecao, Mm_CCe, Ds_xMotivo, Nr_nProt,'#13#10'  Mm_xCondUso'#13#10#13#10'from'#13#10'  NFe_CCe'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Fl_Origem = :Fl_Origem and'#13#10'  Nr_Origem = :Nr_Origem and'#13#10'  Id_Origem = :Id_Origem'#13#10#13#10'order by'#13#10'  Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem,  Nr_SeqEvento desc'
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
        Name = 'Fl_Origem'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Nr_Origem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Id_Origem'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 86
    Top = 96
    object ADODsCCeCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsCCeFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsCCeNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsCCeId_Origem: TSmallintField
      FieldName = 'Id_Origem'
    end
    object ADODsCCeNr_SeqEvento: TSmallintField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'Nr_SeqEvento'
    end
    object ADODsCCeDt_dhEvento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_dhEvento'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsCCeMm_xCorrecao: TMemoField
      FieldName = 'Mm_xCorrecao'
      BlobType = ftMemo
    end
    object ADODsCCeMm_CCe: TMemoField
      FieldName = 'Mm_CCe'
      BlobType = ftMemo
    end
    object ADODsCCeDs_xMotivo: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'Ds_xMotivo'
      Size = 255
    end
    object ADODsCCeNr_nProt: TStringField
      FieldName = 'Nr_nProt'
      Size = 255
    end
    object ADODsCCeMm_xCondUso: TMemoField
      FieldName = 'Mm_xCondUso'
      BlobType = ftMemo
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
            Action = ActInsert
            ImageIndex = 15
          end
          item
            Action = ActFirst
            ImageIndex = 19
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
            Action = ActInsert
            ImageIndex = 16
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
          end
          item
            Action = ActReport
            ImageIndex = 20
          end
          item
            Action = ActEMail
            ImageIndex = 53
          end>
        ActionBar = ActToolBNavigator
      end>
    Images = FrmMain.ImgLstMenu
    Left = 222
    Top = 267
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Caption = 'ActFirst'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Caption = 'ActPrior'
      Hint = 'Registro Anterior'
      ImageIndex = 13
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Caption = 'ActNext'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Caption = 'ActLast'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      OnExecute = ActInsertExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Imprimir CCe'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
    object ActEMail: TAction
      Category = '2-Database'
      Hint = 'Enviar CCe e XML por E-Mail'
      ImageIndex = 53
      OnExecute = ActEMailExecute
    end
  end
  object ADOCmdCCe: TADOCommand
    CommandText = 'insert into NFe_CCe( Cd_Filial, Fl_Origem, Nr_Origem, Id_Origem, Nr_SeqEvento,'#13#10'  Dt_dhEvento, Mm_xCorrecao, Mm_xCondUso, Mm_CCe, Nr_nProt, Ds_xMotivo )'#13#10#13#10'values( :Cd_Filial, :Fl_Origem, :Nr_Origem, :Id_Origem, :Nr_SeqEvento,'#13#10'  :Dt_dhEvento, :Mm_xCorrecao, :Mm_xCondUso, :Mm_CCe, :Nr_nProt, :Ds_xMotivo )'#13#10
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
        Name = 'Fl_Origem'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Nr_Origem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Id_Origem'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_SeqEvento'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_dhEvento'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Mm_xCorrecao'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Mm_xCondUso'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Mm_CCe'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Nr_nProt'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = nil?
      end
      item
        Name = 'Ds_xMotivo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = nil?
      end>
    Left = 328
    Top = 112
  end
end
