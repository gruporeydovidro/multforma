object FrmSubProduto: TFrmSubProduto
  Left = 304
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'SubProduto'
  ClientHeight = 217
  ClientWidth = 558
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
    Height = 217
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 537
    Height = 217
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlMoldura: TBevel
      Left = 325
      Top = 30
      Width = 205
      Height = 156
      Shape = bsFrame
    end
    object BvlSeparator: TBevel
      Left = 3
      Top = 187
      Width = 529
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object ImgSubProduto: TImage
      Left = 327
      Top = 33
      Width = 200
      Height = 150
      Center = True
    end
    object Label8: TLabel
      Left = 60
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Ativo:'
    end
    object Label9: TLabel
      Left = 7
      Top = 104
      Width = 30
      Height = 13
      Caption = 'Custo:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 535
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 7
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 535
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 535
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = 16579837
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 16579837
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 364
      Top = 190
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 450
      Top = 190
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_SubProduto: TLabeledEdit
      Left = 7
      Top = 83
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 105
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do SubProduto:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_SubProduto: TCurrencyEdit
      Left = 7
      Top = 45
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
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
      TabOrder = 4
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
        TabOrder = 0
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
        Description = 'Classes de Estoque'
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
          DataSource = FrmSubProduto_Find.DsFind
        end
        object adodsreportCd_SubProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_SubProduto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_SubProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_SubProduto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportIm_SubProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Im_SubProduto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfCd_SubProduto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportCd_SubProdutoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmClasse_Find.DsFind
        end
        object adodsfindcd_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_classe'
          DataSource = FrmClasse_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnm_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_classe'
          DataSource = FrmClasse_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
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
          Height = 39
          ParentColor = True
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
            Caption = 'SubProduto'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
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
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportCd_SubProdutoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportNm_SubProdutoVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 312
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
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 347
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfCd_SubProduto
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 620
            Top = 3
            Width = 37
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
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
            Caption = 'Nome do SubProduto'
          end
        end
        object DtlImagem: TSctSubBand
          Left = 0
          Top = 142
          Width = 748
          Height = 155
          ParentColor = True
          BandName = 'DetailBandSub'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DtlImagemBeforePrint
          Band = DetailBand
          Above = False
          object SctImgSubProduto: TSctImageLabel
            Left = 249
            Top = 1
            Width = 200
            Height = 150
            Center = True
            Variable = adodsreportIm_SubProdutoVar
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 147
            Width = 698
            Height = 7
          end
        end
      end
    end
    object CbAtivo: TComboBox
      Left = 60
      Top = 118
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtPr_Custo: TCurrencyEdit
      Tag = 4
      Left = 7
      Top = 118
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.0##'
      TabOrder = 2
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
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 525
    Top = 5
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
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_SubProduto, Nm_SubProduto, Im_SubProduto, Fl_Ativo,'#13#10'  Pr_Custo'#13#10#13#10'from'#13#10'  SubProduto'#13#10#13#10'where'#13#10'  Cd_SubProduto = :Cd_SubProduto'
    Parameters = <
      item
        Name = 'Cd_SubProduto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 83
    Top = 187
    object ADODsDadosCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsDadosNm_SubProduto: TStringField
      FieldName = 'Nm_SubProduto'
      Size = 50
    end
    object ADODsDadosIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsDadosFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosPr_Custo: TBCDField
      FieldName = 'Pr_Custo'
      Precision = 9
      Size = 3
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into SubProduto( Cd_SubProduto, Nm_SubProduto, Im_SubProduto,'
      '   Fl_Ativo, Pr_Custo )'
      'values( :Cd_SubProduto, :Nm_SubProduto, :Im_SubProduto, :Fl_Ativo, :Pr_Custo )'
    )
    SQLUpdate.Strings = (
      'update'
      '  SubProduto'
      ''
      'set'
      '  Nm_SubProduto = :Nm_SubProduto,'
      '  Im_SubProduto = :Im_SubProduto,'
      '  Fl_Ativo      = :Fl_Ativo,'
      '  Pr_Custo      = :Pr_Custo'
      ''
      'where'
      '  Cd_SubProduto = :Cd_SubProduto'
    )
    SQLDelete.Strings = (
      'delete from'
      '  SubProduto'
      ''
      'where'
      '  Cd_SubProduto = :Cd_SubProduto'
    )
    Left = 113
    Top = 187
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_SubProduto'#13#10#13#10'from'#13#10'  SubProduto'#13#10#13#10'order by'#13#10'  Cd_SubProduto'
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Cd_SubProduto + 1 as Cd_SubProduto'
      ''
      'from'
      '  SubProduto A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_SubProduto'
      ''
      '  from'
      '    SubProduto  B'
      ''
      '  where'
      '    B.Cd_SubProduto = A.Cd_SubProduto + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_SubProduto'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Cd_SubProduto'
      ''
      'from'
      '  SubProduto'
      ''
      'order by'
      '  Cd_SubProduto'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Cd_SubProduto'
      ''
      'from'
      '  SubProduto'
      ''
      'where'
      '  Cd_SubProduto < :Cd_SubProduto'
      ''
      'order by'
      '  Cd_SubProduto desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Cd_SubProduto'
      ''
      'from'
      '  SubProduto'
      ''
      'where'
      '  Cd_SubProduto > :Cd_SubProduto'
      ''
      'order by'
      '  Cd_SubProduto'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Cd_SubProduto'
      ''
      'from'
      '  SubProduto'
      ''
      'order by'
      '  Cd_SubProduto desc'
    )
    Left = 142
    Top = 187
    object ADODsNavegarCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 23
    Top = 187
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_SubProduto, Nm_SubProduto, Im_SubProduto, Fl_Ativo, Pr_Custo'#13#10#13#10'from'#13#10'  SubProduto'#13#10#13#10'order by'#13#10'  Nm_SubProduto'
    Parameters = <>
    Left = 53
    Top = 187
    object ADODsReportCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsReportNm_SubProduto: TStringField
      FieldName = 'Nm_SubProduto'
      Size = 50
    end
    object ADODsReportIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsReportFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
  end
end
