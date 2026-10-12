object FrmGrupo: TFrmGrupo
  Left = 468
  Top = 421
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Grupo de Estoque'
  ClientHeight = 234
  ClientWidth = 568
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
    Height = 234
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 547
    Height = 234
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 204
      Width = 540
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
    object Label2: TLabel
      Left = 387
      Top = 67
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
      Visible = False
    end
    object Label27: TLabel
      Left = 7
      Top = 67
      Width = 128
      Height = 13
      Caption = 'Classifica'#231#227'o Fiscal (NCM):'
    end
    object LblMoldura: TLabel
      Left = 260
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Molduras:'
    end
    object Label3: TLabel
      Left = 7
      Top = 101
      Width = 50
      Height = 13
      Caption = 'Invent'#225'rio:'
    end
    object LblQt_AreaMinima: TLabel
      Left = 195
      Top = 67
      Width = 63
      Height = 13
      Caption = #193'rea M'#237'nima:'
    end
    object Label4: TLabel
      Left = 137
      Top = 67
      Width = 31
      Height = 13
      Caption = 'CEST:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 545
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 7
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 545
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 545
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
      Left = 374
      Top = 207
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 460
      Top = 207
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Grupo: TLabeledEdit
      Left = 52
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Grupo:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_Grupo: TCurrencyEdit
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
      Left = 266
      Top = 1
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
      TabOrder = 10
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
      MTop = 1
      MLeft = 266
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
        Description = 'Grupos de Estoque'
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
        object adodsreportcd_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_grupo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_grupo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_grupo: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_grupoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
        object adodsreportpr_comissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_comissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportCd_ClasFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsReport
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
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide5: TSctDataSourceGuide
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
            Caption = 'Grupos de Estoque'
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
            Variable = adodsreportcd_grupoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportnm_grupoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 496
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportpr_comissaoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 575
            Top = 0
            Width = 107
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportCd_ClasFiscalVar
            DataFormat.DisplayFormat = '####.##.####;0; '
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
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
          Top = 177
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
            TotalVariable = TotalOfcd_grupo
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
            Caption = 'Nome do Grupo'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 496
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comiss'#227'o (%)'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 575
            Top = 0
            Width = 107
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Classsifica'#231#227'o Fiscal'
          end
        end
      end
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 387
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 6
      Visible = False
    end
    object EdtCd_ClasFiscal: TMaskEdit
      Left = 7
      Top = 82
      Width = 86
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '##.####.##;0; '
      MaxLength = 10
      TabOrder = 2
    end
    object CbMoldura: TComboBox
      Left = 260
      Top = 82
      Width = 61
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbInventario: TComboBox
      Left = 7
      Top = 116
      Width = 180
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 11
      Items.Strings = (
        'Mat'#233'ria Prima'
        'Insumos ou Material Secund'#225'rio'
        'Produtos Acabados'
        'Material em Poder de Terceiros'
        'Material de Revenda'
      )
    end
    object EdtQt_AreaMinima: TCurrencyEdit
      Left = 195
      Top = 82
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.000;-0.000'
      TabOrder = 4
    end
    object EdtCd_CEST: TMaskEdit
      Left = 137
      Top = 82
      Width = 54
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '#######;0; '
      MaxLength = 7
      TabOrder = 3
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
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 425
    Top = 10
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
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  cd_grupo, nm_grupo, pr_comissao, Cd_ClasFiscal, Fl_Moldura,'#13#10'  Fl_Inventario, Qt_AreaMinima, Cd_CEST'#13#10#13#10'from'#13#10'  grupo'#13#10#13#10'where'#13#10'  cd_grupo = :Cd_Grupo'
    Parameters = <
      item
        Name = 'Cd_Grupo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end>
    Left = 256
    Top = 107
    object ADODsDadoscd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsDadosnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsDadospr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
    object ADODsDadosCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsDadosFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosQt_AreaMinima: TBCDField
      FieldName = 'Qt_AreaMinima'
      Precision = 9
      Size = 3
    end
    object ADODsDadosCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into grupo( cd_grupo, nm_grupo, pr_comissao, Cd_ClasFiscal, Fl_Moldura,'
      '  Fl_Inventario, Qt_AreaMinima, Cd_CEST )'
      ''
      'values( :cd_grupo, :nm_grupo, :pr_comissao, :Cd_ClasFiscal, :Fl_Moldura,'
      '   :Fl_Inventario, :Qt_AreaMinima, :Cd_CEST )'
    )
    SQLUpdate.Strings = (
      'update'
      '  grupo'
      ''
      'set'
      '  nm_grupo      = :Nm_Grupo,'
      '  Pr_Comissao   = :Pr_Comissao,'
      '  Cd_ClasFiscal = :Cd_ClasFiscal,'
      '  Fl_Moldura    = :Fl_Moldura,'
      '  Fl_Inventario = :Fl_Inventario,'
      '  Qt_AreaMinima = :Qt_AreaMinima,'
      '  Cd_CEST       = :Cd_CEST'
      ''
      'where'
      '  cd_grupo = :Cd_Grupo'
    )
    SQLDelete.Strings = (
      'delete from'
      '  grupo'
      ''
      'where'
      '  cd_grupo = :Cd_Grupo'
    )
    SQLOther0.Strings = (
      '-------------------- Altera a classifica'#231#227'o do grupo de produtos'
      'update'
      '  Produto'
      ''
      'set'
      '  Cd_ClasFiscal = :Cd_ClasFiscal'
      ''
      'where'
      '  Cd_Grupo = :Cd_Grupo'
    )
    SQLOther1.Strings = (
      '-------------------- Altera a CEST do grupo de produtos'
      'update'
      '  Produto'
      ''
      'set'
      '  Cd_CEST = :Cd_CEST'
      ''
      'where'
      '  Cd_Grupo = :Cd_Grupo'
    )
    Left = 286
    Top = 107
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 346
    Top = 107
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  cd_grupo, nm_grupo, pr_comissao, Cd_ClasFiscal'#13#10#13#10'from'#13#10'  grupo'#13#10#13#10'order by'#13#10'  nm_grupo'
    Parameters = <>
    Left = 376
    Top = 107
    object ADODsReportcd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsReportnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsReportpr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
    object ADODsReportCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
  end
end
