object FrmEstado: TFrmEstado
  Left = 363
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Estados / Al'#237'quota de ICMS'
  ClientHeight = 224
  ClientWidth = 546
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
    Height = 224
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 146
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 525
    Height = 224
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = 27
    object BvlSeparator: TBevel
      Left = 4
      Top = 192
      Width = 516
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 65
      Width = 102
      Height = 13
      Caption = 'Al'#237'quota Contribuinte:'
    end
    object Label2: TLabel
      Left = 113
      Top = 65
      Width = 125
      Height = 13
      Caption = 'Al'#237'quota N'#227'o Contribuinte:'
    end
    object LblAliquota: TLabelBlink
      Left = 271
      Top = 178
      Width = 250
      Height = 13
      Caption = 'Selecione uma filial para cadastar al'#237'quotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      Interval = 1000
      EnabledBlink = True
      IfNoBlink = nbAuto
    end
    object LblOrigem: TLabel
      Left = 8
      Top = 176
      Width = 176
      Height = 13
      Caption = 'Estado Origem para Aliquotas: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 523
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 6
      ExplicitWidth = 449
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 523
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 449
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 523
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
          ExplicitWidth = 449
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 352
      Top = 197
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 438
      Top = 197
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Estado: TLabeledEdit
      Left = 46
      Top = 45
      Width = 277
      Height = 19
      AutoSelect = False
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Estado:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 1
    end
    object EdtSg_Estado: TLabeledEdit
      Left = 7
      Top = 45
      Width = 34
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'Sigla:'
      LabelSpacing = 2
      MaxLength = 2
      TabOrder = 0
      OnExit = EdtSg_EstadoExit
    end
    object EdtPr_Contribuinte: TCurrencyEdit
      Left = 7
      Top = 80
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 2
    end
    object EdtPr_NaoContrib: TCurrencyEdit
      Left = 113
      Top = 80
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
    end
    object SctReport: TSctReport
      Left = 241
      Top = 105
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
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 105
      MLeft = 241
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
        Description = 'Estados / Al'#237'quota de ICMS'
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
          DataSource = FrmHistorico_Find.DsFind
        end
        object adodsreportsg_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_estado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportpr_contribuinteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_contribuinte'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportpr_naocontribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_naocontrib'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfpr_contribuinte: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportpr_contribuinteVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Caption = 'Estados e Al'#237'quotas de ICMS'
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
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 0
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportsg_estadoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 33
            Top = 0
            Width = 278
            Height = 17
            Variable = adodsreportnm_estadoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 316
            Top = 0
            Width = 104
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportpr_contribuinteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 425
            Top = 0
            Width = 126
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportpr_naocontribVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
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
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfpr_contribuinte
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
            Left = 560
            Top = 3
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Estados:'
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
            Width = 30
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Sigla'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 33
            Top = 0
            Width = 278
            Height = 17
            Caption = 'Nome do Estado'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 316
            Top = 0
            Width = 104
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Al'#237'quota Contribuinte'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 425
            Top = 0
            Width = 126
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Al'#237'quota N'#227'o Contribuinte'
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
    CommandText = 'select'#13#10'  E.Sg_Estado, E.Nm_Estado, EA.Pr_Contribuinte, EA.Pr_NaoContrib'#13#10#13#10'from'#13#10'  Estado E'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem  = :Sg_Origem and'#13#10'  EA.Sg_Destino = E.Sg_Estado'#13#10#13#10'where'#13#10'  E.Sg_Estado = :Sg_Estado'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Sg_Estado'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 376
    Top = 70
    object ADODsDadossg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosnm_estado: TStringField
      FieldName = 'nm_estado'
      Size = 30
    end
    object ADODsDadospr_contribuinte: TBCDField
      FieldName = 'pr_contribuinte'
      Precision = 9
      Size = 2
    end
    object ADODsDadospr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
  end
  object ADOCmdDados: TMultADOCMD
    CommandText = 'select EstadoInsert( :Sg_Estado, :Nm_Estado, :Sg_Origem, :Pr_Contribuinte,'#13#10'   :Pr_NaoContrib );'#13#10
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Sg_Estado'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nm_Estado'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Contribuinte'
        DataType = ftBCD
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_NaoContrib'
        DataType = ftBCD
        Size = -1
        Value = nil?
      end>
    SQLInsert.Strings = (
      'declare @vSg_Estado char( 2 )'
      'declare @vNm_Estado varchar( 30 )'
      'declare @vSg_Origem char( 2 )'
      'declare @vPr_Contribuinte numeric( 9, 3 )'
      'declare @vPr_NaoContrib numeric( 9, 3 )'
      ''
      'set @vSg_Estado       = :Sg_Estado'
      'set @vNm_Estado       = :Nm_Estado'
      'set @vSg_Origem       = :Sg_Origem'
      'set @vPr_Contribuinte = :Pr_Contribuinte'
      'set @vPr_NaoContrib   = :Pr_NaoContrib'
      ''
      '-- Insere/Atualiza o registro na tabela de Estados'
      'if not exists('
      '   select'
      '     sg_estado'
      ''
      '   from'
      '     estado'
      ''
      '   where'
      '     sg_estado = @vSg_Estado'
      '   ) '
      '  insert into estado( sg_estado, nm_estado )'
      '  values( @vSg_Estado, @vNm_Estado )'
      ''
      'else'
      '  update'
      '    estado'
      ''
      '  set'
      '    nm_estado = @vNm_Estado'
      ''
      '  where'
      '    sg_estado = @vSg_Estado'
      ''
      '-- Insere / Atualiza na tabela de Aliquotas'
      'if ( @vSg_Origem <> '''''''''' ) and ( @vSg_Origem is not null ) '
      '  if not exists('
      '     select'
      '       sg_origem'
      ''
      '     from'
      '       estado_aliquota'
      ''
      '     where'
      '       sg_origem  = @vSg_Origem and'
      '       sg_destino = @vSg_Estado'
      '     ) '
      '    insert into estado_aliquota( sg_origem, sg_destino, pr_contribuinte,'
      '       pr_naocontrib )'
      '    values( @vSg_Origem, @vSg_Estado, @vPr_Contribuinte, @vPr_NaoContrib )'
      ''
      '  else'
      '    update'
      '      estado_aliquota'
      ''
      '    set'
      '      pr_contribuinte = @vPr_Contribuinte,'
      '      pr_naocontrib   = @vPr_NaoContrib'
      ''
      '    where'
      '      sg_origem  = @vSg_Origem and'
      '      sg_destino = @vSg_Estado'
    )
    SQLUpdate.Strings = (
      'update'
      '  estado'
      ''
      'set'
      '  nm_estado       = :nm_estado,'
      '  pr_contribuinte = :pr_contribuinte,'
      '  pr_naocontrib   = :pr_naocontrib'
      ''
      'where'
      '  sg_estado = :sg_estado'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Estado'
      ''
      'where'
      '  Sg_Estado = :Sg_Estado'
    )
    SQLOther0.Strings = (
      '-- Exclui as aliquotas'
      'delete from'
      '  Estado_Aliquota'
      ''
      'where'
      '  Sg_Origem = :Sg_Origem;'
      ''
      'delete from'
      '  Estado_Aliquota'
      ''
      'where'
      '  Sg_Destino = :Sg_Destino;'
    )
    Left = 406
    Top = 70
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  sg_estado'#13#10#13#10'from'#13#10'  estado'#13#10#13#10'order by'#13#10'  sg_estado'
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Check Primary Key'
      'select'
      '  sg_estado'
      ''
      'from'
      '  estado'
      ''
      'where'
      '  sg_estado = :Sg_Estado'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  sg_estado'
      ''
      'from'
      '  estado'
      ''
      'order by'
      '  sg_estado'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  sg_estado'
      ''
      'from'
      '  estado'
      ''
      'where'
      '  sg_estado < :sg_estado'
      ''
      'order by'
      '  sg_estado desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  sg_estado'
      ''
      'from'
      '  estado'
      ''
      'where'
      '  sg_estado > :sg_estado'
      ''
      'order by'
      '  sg_estado'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  sg_estado'
      ''
      'from'
      '  estado'
      ''
      'order by'
      '  sg_estado desc'
    )
    SQLOther9.Strings = (
      'select'
      '  max( cd_grupo ) as cd_grupo'
      ''
      'from'
      '  usuario_grupo'
    )
    Left = 437
    Top = 70
    object ADODsNavegarsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 376
    Top = 40
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Sg_Estado, E.Nm_Estado, EA.Pr_Contribuinte, EA.Pr_NaoContrib'#13#10#13#10'from'#13#10'  Estado E'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem  = E.Sg_Estado'#13#10#13#10'order by'#13#10'  EA.Sg_Destino, E.Sg_Estado'
    Parameters = <>
    Left = 406
    Top = 40
    object ADODsReportsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsReportnm_estado: TStringField
      FieldName = 'nm_estado'
      Size = 30
    end
    object ADODsReportpr_contribuinte: TBCDField
      FieldName = 'pr_contribuinte'
      Precision = 9
      Size = 2
    end
    object ADODsReportpr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
  end
end
