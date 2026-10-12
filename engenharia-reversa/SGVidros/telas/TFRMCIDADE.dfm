object FrmCidade: TFrmCidade
  Left = 305
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cidade'
  ClientHeight = 230
  ClientWidth = 473
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
    Height = 230
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 452
    Height = 230
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 198
      Width = 443
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
      Left = 7
      Top = 70
      Width = 36
      Height = 13
      Caption = 'Estado:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 450
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 6
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 450
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
      Left = 278
      Top = 203
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 364
      Top = 203
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Cidade: TLabeledEdit
      Left = 70
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da Cidade:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 1
    end
    object EdtCd_Cidade: TCurrencyEdit
      Left = 7
      Top = 45
      Width = 60
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
    object CbEstado: TComboBox
      Left = 7
      Top = 83
      Width = 279
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 2
    end
    object SctReport: TSctReport
      Left = 364
      Top = 58
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
      TabOrder = 9
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
      MTop = 58
      MLeft = 364
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
        Description = 'Cidades'
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
        object adodsreportnm_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdp_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_estado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_cidade: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_cidadeVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreportdp_estadoVar
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
        object adodsreportcd_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportCd_IBGEVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_IBGE'
          DataSource = DsReport
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
            Caption = 'Cidades'
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
          Top = 142
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 11
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_cidadeVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 54
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportnm_cidadeVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 415
            Top = 0
            Width = 81
            Height = 17
            Variable = adodsreportCd_IBGEVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 190
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
          Top = 225
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 610
            Top = 1
            Width = 86
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_cidade
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
            Left = 615
            Top = 3
            Width = 42
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
            Left = 11
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 54
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Nome da Cidade'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 415
            Top = 0
            Width = 81
            Height = 17
            Caption = 'C'#243'digo do IBGE'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel9: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportdp_estadoVar
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 11
            Width = 698
            Height = 7
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 175
          Width = 748
          Height = 0
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          Visible = False
        end
      end
    end
    object EdtCd_IBGE: TLabeledEdit
      Left = 290
      Top = 83
      Width = 56
      Height = 19
      AutoSelect = False
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo no IBGE:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 3
      Text = '9999999'
    end
    object EdtNm_Pais: TLabeledEdit
      Left = 7
      Top = 119
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Pa'#237's:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 4
    end
    object EdtCd_Pais: TLabeledEdit
      Left = 318
      Top = 119
      Width = 56
      Height = 19
      AutoSelect = False
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo no IBGE:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 5
      Text = '9999999'
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
    CursorLocation = clUseServer
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  C.cd_cidade, C.nm_cidade, C.Cd_IBGE, Nm_Pais, Cd_Pais,'#13#10'  C.sg_estado + '''' - '''' + E.nm_estado as Dp_Estado'#13#10#13#10'from'#13#10'  cidade C'#13#10#13#10'inner join'#13#10'  estado E'#13#10'on'#13#10'  E.sg_estado = C.sg_estado'#13#10#13#10'where'#13#10'  C.cd_cidade = :Cd_Cidade'
    Parameters = <
      item
        Name = 'Cd_Cidade'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1900
      end>
    Left = 118
    Top = 171
    object ADODsDadoscd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsDadosnm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsDadosdp_estado: TStringField
      FieldName = 'dp_estado'
      Size = 254
    end
    object ADODsDadosCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsDadosNm_Pais: TStringField
      FieldName = 'Nm_Pais'
      Size = 50
    end
    object ADODsDadosCd_Pais: TStringField
      FieldName = 'Cd_Pais'
      Size = 10
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into cidade( Cd_Cidade, Nm_Cidade, Sg_Estado, Cd_IBGE, Nm_Pais, Cd_Pais )'
      'values( :Cd_Cidade, :Nm_Cidade, :Sg_Estado, :Cd_IBGE, :Nm_Pais, :Cd_Pais )'
    )
    SQLUpdate.Strings = (
      'update'
      '  cidade'
      ''
      'set'
      '  nm_cidade = :Nm_Cidade,'
      '  sg_estado = :Sg_Estado,'
      '  Cd_IBGE   = :Cd_IBGE,'
      '  Nm_Pais   = :Nm_Pais,'
      '  Cd_Pais   = :Cd_Pais'
      ''
      'where'
      '  cd_cidade = :Cd_Cidade'
    )
    SQLDelete.Strings = (
      'delete from'
      '  cidade'
      ''
      'where'
      '  cd_cidade= :Cd_Cidade'
    )
    Left = 148
    Top = 171
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  cd_cidade'#13#10#13#10'from'#13#10'  cidade'#13#10#13#10'order by'#13#10'  cd_cidade'
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Cd_Cidade + 1 as Cd_Cidade'
      ''
      'from'
      '  Cidade A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Cidade'
      ''
      '  from'
      '    Cidade  B'
      ''
      '  where'
      '    B.Cd_Cidade = A.Cd_Cidade + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Cidade'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  cd_cidade'
      ''
      'from'
      '  cidade'
      ''
      'order by'
      '  cd_cidade'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  cd_cidade'
      ''
      'from'
      '  cidade'
      ''
      'where'
      '  cd_cidade < :Cd_Cidade'
      ''
      'order by'
      '  cd_cidade desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  cd_cidade'
      ''
      'from'
      '  cidade'
      ''
      'where'
      '  cd_cidade> :Cd_Cidade'
      ''
      'order by'
      '  cd_cidade'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  cd_cidade'
      ''
      'from'
      '  cidade'
      ''
      'order by'
      '  cd_cidade desc'
    )
    Left = 178
    Top = 171
    object ADODsNavegarcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 26
    Top = 171
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  C.cd_cidade, C.nm_cidade, C.Cd_IBGE,'#13#10'  C.sg_estado + '''' - '''' + E.nm_estado as Dp_Estado'#13#10#13#10'from'#13#10'  cidade C'#13#10#13#10'inner join'#13#10'  estado E'#13#10'on'#13#10'  E.sg_estado = C.sg_estado'#13#10#13#10'order by'#13#10'  C.sg_estado + '''' - '''' + E.nm_estado, '#13#10'  nm_cidade'
    Parameters = <>
    Left = 56
    Top = 171
    object ADODsReportcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsReportnm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsReportdp_estado: TStringField
      FieldName = 'dp_estado'
      Size = 254
    end
    object ADODsReportCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
  end
  object ADODsEstado: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  sg_estado + '''' - '''' + nm_estado'#13#10#13#10'from'#13#10'  estado'
    Parameters = <>
    Left = 86
    Top = 171
  end
end
