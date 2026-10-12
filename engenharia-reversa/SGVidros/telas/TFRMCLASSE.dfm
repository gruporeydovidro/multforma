object FrmClasse: TFrmClasse
  Left = 439
  Top = 367
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Classe de Estoque'
  ClientHeight = 232
  ClientWidth = 600
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
    Height = 232
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 579
    Height = 232
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlMoldura: TBevel
      Left = 367
      Top = 45
      Width = 205
      Height = 156
      Shape = bsFrame
    end
    object BvlSeparator: TBevel
      Left = 3
      Top = 202
      Width = 571
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
    object ImgClasse: TImage
      Left = 369
      Top = 48
      Width = 200
      Height = 150
      Center = True
    end
    object Label2: TLabel
      Left = 317
      Top = 67
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
      Visible = False
    end
    object Label3: TLabel
      Left = 369
      Top = 30
      Width = 177
      Height = 13
      Caption = 'Imagem da Classe ( 150 x 200 pixels):'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 577
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 577
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 577
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
      Left = 406
      Top = 205
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 492
      Top = 205
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Classe: TLabeledEdit
      Left = 6
      Top = 82
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Classe:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_Classe: TCurrencyEdit
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
      TabOrder = 6
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
          DataSource = FrmClasse_Find.DsFind
        end
        object adodsreportcd_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_classe'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_classe'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_classe: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_classeVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Caption = 'Classe de Estoque'
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
            Variable = adodsreportcd_classeVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 313
            Height = 17
            Variable = adodsreportnm_classeVar
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
            TotalVariable = TotalOfcd_classe
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
            Caption = 'Nome do Classe'
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
          object SctImgClasse: TSctImageLabel
            Left = 249
            Top = 1
            Width = 200
            Height = 150
            Center = True
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
    object EdtPr_Comissao: TCurrencyEdit
      Left = 317
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '0.00;-0.00'
      TabOrder = 2
      Visible = False
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
      Hint = 'Apagar a imagem'
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
    CommandText = 'select'#13#10'  Cd_Classe, Nm_Classe, Im_Classe, Pr_Comissao'#13#10#13#10'from'#13#10'  Classe'#13#10#13#10'where'#13#10'  Cd_Classe = :Cd_Classe'
    Parameters = <
      item
        Name = 'Cd_Classe'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 83
    Top = 187
    object ADODsDadoscd_classe: TSmallintField
      FieldName = 'cd_classe'
    end
    object ADODsDadosnm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
    end
    object ADODsDadosim_classe: TBlobField
      FieldName = 'im_classe'
    end
    object ADODsDadospr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Classe( Cd_Classe, Nm_Classe, Pr_Comissao, Im_Classe )'
      'values( :Cd_Classe, :Nm_Classe, :Pr_Comissao, :Im_Classe )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Classe'
      ''
      'set'
      '  Nm_Classe   = :Nm_Classe,'
      '  Pr_Comissao = :Pr_Comissao,'
      '  Im_Classe   = :Im_Classe'
      ''
      'where'
      '  Cd_Classe = :Cd_Classe'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Classe'
      ''
      'where'
      '  Cd_Classe = :Cd_Classe'
    )
    Left = 113
    Top = 187
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_Classe'#13#10#13#10'from'#13#10'  Classe'#13#10#13#10'order by'#13#10'  Cd_Classe'
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Cd_Classe + 1 as Cd_Classe'
      ''
      'from'
      '  Classe A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Classe'
      ''
      '  from'
      '    Classe  B'
      ''
      '  where'
      '    B.Cd_Classe = A.Cd_Classe + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Classe'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Cd_Classe'
      ''
      'from'
      '  Classe'
      ''
      'order by'
      '  Cd_Classe'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Cd_Classe'
      ''
      'from'
      '  Classe'
      ''
      'where'
      '  Cd_Classe < :Cd_Classe'
      ''
      'order by'
      '  Cd_Classe desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Cd_Classe'
      ''
      'from'
      '  Classe'
      ''
      'where'
      '  Cd_Classe > :Cd_Classe'
      ''
      'order by'
      '  Cd_Classe'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Cd_Classe'
      ''
      'from'
      '  Classe'
      ''
      'order by'
      '  Cd_Classe desc'
    )
    Left = 142
    Top = 187
    object ADODsNavegarcd_classe: TSmallintField
      FieldName = 'cd_classe'
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
    CommandText = 'select'#13#10'  Cd_Classe, Nm_Classe, Im_Classe, Pr_Comissao'#13#10#13#10'from'#13#10'  Classe'#13#10#13#10'order by'#13#10'  Nm_Classe'
    Parameters = <>
    Left = 53
    Top = 187
    object ADODsReportcd_classe: TSmallintField
      FieldName = 'cd_classe'
    end
    object ADODsReportnm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
    end
    object ADODsReportim_classe: TBlobField
      FieldName = 'im_classe'
    end
    object ADODsReportpr_comissao: TBCDField
      FieldName = 'pr_comissao'
      Precision = 7
      Size = 2
    end
  end
end
