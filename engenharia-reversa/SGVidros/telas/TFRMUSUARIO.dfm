object FrmUsuario: TFrmUsuario
  Left = 375
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Usu'#225'rios'
  ClientHeight = 316
  ClientWidth = 670
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
    Height = 316
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 649
    Height = 316
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 285
      Width = 641
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 67
      Width = 86
      Height = 13
      Caption = 'Grupo de Usu'#225'rio:'
    end
    object SbGrupo: TSpeedButton
      Left = 44
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo de Usu'#225'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label2: TLabel
      Left = 4
      Top = 140
      Width = 54
      Height = 13
      Caption = 'Tela Inicial:'
    end
    object LblFuncionario: TLabel
      Left = 4
      Top = 103
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 44
      Top = 118
      Width = 23
      Height = 19
      Hint = 'Consulta de Funcion'#225'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbFuncionarioClick
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 647
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 10
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 647
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 647
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
      Left = 476
      Top = 288
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 562
      Top = 288
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Usuario: TLabeledEdit
      Left = 120
      Top = 45
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Usu'#225'rio:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_Usuario: TLabeledEdit
      Left = 4
      Top = 45
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 0
      OnExit = EdtCd_UsuarioExit
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 4
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 67
      Top = 82
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object SctReport: TSctReport
      Left = 257
      Top = 60
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
      TabOrder = 11
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
      MTop = 60
      MLeft = 257
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
        Description = 'Usu'#225'rios'
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmUsuario_Find.DsFind
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
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object adodsfindsg_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estado'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnm_estadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_estado'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindpr_contribuinteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_contribuinte'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindpr_naocontribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_naocontrib'
          DataSource = FrmEstado_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsreportcd_usuarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_usuario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_usuarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_usuario'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportdp_grupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_grupo'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_usuario: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_usuarioVar
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
            Caption = 'Usu'#225'rios'
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
            Width = 88
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportcd_usuarioVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 91
            Top = 0
            Width = 308
            Height = 17
            Variable = adodsreportnm_usuarioVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 406
            Top = 0
            Width = 292
            Height = 17
            Variable = adodsreportdp_grupoVar
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
            TotalVariable = TotalOfcd_usuario
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
            Width = 88
            Height = 17
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 91
            Top = 0
            Width = 278
            Height = 17
            Caption = 'Nome do Usu'#225'rio'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 406
            Top = 0
            Width = 104
            Height = 17
            Caption = 'Grupo de Usu'#225'rio'
          end
        end
      end
    end
    object CbTela: TComboBox
      Left = 4
      Top = 154
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        '00 - Nenhuma'
        '02 - Or'#231'amento'
        '03 - Tele-Atendimento'
        '04 - Marca'#231#227'o por Setor (V/M)'
      )
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 4
      Top = 118
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 67
      Top = 118
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtDs_EMail: TLabeledEdit
      Left = 190
      Top = 154
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 258
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail (utilizado para identificar envio de e-mala-direta):'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 7
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
            Action = ActReset
            ImageIndex = 31
            ShortCut = 118
          end
          item
            Action = ActChange
            ImageIndex = 2
            ShortCut = 119
          end
          item
            Caption = '-'
          end
          item
            Action = ActFilial
            ImageIndex = 30
            ShortCut = 120
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
    object ActReset: TAction
      Category = '2-Database'
      Hint = 'Resetar a Senha do Usu'#225'rio'
      ImageIndex = 31
      ShortCut = 118
      OnExecute = ActResetExecute
    end
    object ActChange: TAction
      Category = '2-Database'
      Hint = 'Mudar a Senha do Usu'#225'rio'
      ImageIndex = 2
      ShortCut = 119
      OnExecute = ActChangeExecute
    end
    object ActFilial: TAction
      Category = '2-Database'
      Hint = 'Filiais de Acesso'
      ImageIndex = 30
      ShortCut = 120
      OnExecute = ActFilialExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  U.cd_usuario, U.nm_usuario, U.sh_usuario, U.cd_grupo, UG.nm_grupo,'#13#10'  U.Nr_Tela, U.Cd_Funcionario, F.Nm_Funcionario, U.Ds_EMail'#13#10#13#10'from'#13#10'  usuario U'#13#10#13#10'inner join'#13#10'  usuario_grupo UG'#13#10'on'#13#10'  UG.cd_grupo = U.cd_grupo'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = U.Cd_Funcionario'#13#10#13#10'where'#13#10'  u.cd_usuario = :Cd_Usuario'
    Parameters = <
      item
        Name = 'Cd_Usuario'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = nil?
      end>
    Left = 376
    Top = 70
    object ADODsDadoscd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsDadosnm_usuario: TStringField
      FieldName = 'nm_usuario'
      Size = 50
    end
    object ADODsDadossh_usuario: TStringField
      FieldName = 'sh_usuario'
      Size = 15
    end
    object ADODsDadoscd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsDadosnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsDadosnr_tela: TStringField
      FieldName = 'nr_tela'
      FixedChar = True
      Size = 2
    end
    object ADODsDadoscd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsDadosnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDadosDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 100
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into usuario( cd_usuario, nm_usuario, sh_usuario, cd_grupo, Nr_Tela,'
      '  Cd_Funcionario, Ds_EMail )'
      'values( :Cd_Usuario, :Nm_Usuario, :Sh_Usuario, :Cd_Grupo, :Nr_Tela,'
      '  :Cd_Funcionario, :Ds_EMail )'
    )
    SQLUpdate.Strings = (
      'update'
      '  usuario'
      ''
      'set'
      '  nm_usuario     = :Nm_Usuario,'
      '  cd_grupo       = :Cd_Grupo,'
      '  Nr_Tela        = :Nr_Tela,'
      '  Cd_Funcionario = :Cd_Funcionario,'
      '  Ds_EMail       = :Ds_EMail'
      ''
      'where'
      '  Cd_Usuario = :Cd_Usuario'
    )
    SQLDelete.Strings = (
      'delete from'
      '  usuario'
      ''
      'where'
      '  cd_usuario = :Cd_Usuario'
    )
    SQLOther0.Strings = (
      '--------------- Reseta a senha do usuario e cores escolhidas 07/12/2022'
      'update'
      '  Usuario'
      ''
      'set'
      '  Sh_usuario = :Sh_usuario,'
      '  Nr_Fundo   = null,'
      '  Nr_Frente  = null,'
      '  Nr_Panel   = null'
      ''
      ''
      'where'
      '  Cd_usuario = :Cd_usuario'
    )
    Left = 406
    Top = 70
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  cd_usuario'#13#10#13#10'from'#13#10'  usuario'#13#10#13#10'order by'#13#10'  cd_usuario'
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Check Primary Key'
      'select'
      '  cd_usuario'
      ''
      'from'
      '  usuario'
      ''
      'where'
      '  cd_usuario = :Cd_Usuario'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  cd_usuario'
      ''
      'from'
      '  usuario'
      ''
      'order by'
      '  cd_usuario'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1  '
      '  cd_usuario'
      ''
      'from'
      '  usuario'
      ''
      'where'
      '  cd_usuario < :cd_usuario'
      ''
      'order by'
      '  cd_usuario desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1  '
      '  cd_usuario'
      ''
      'from'
      '  usuario'
      ''
      'where'
      '  cd_usuario > :cd_usuario'
      ''
      'order by'
      '  cd_usuario'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  cd_usuario'
      ''
      'from'
      '  usuario'
      ''
      'order by'
      '  cd_usuario desc'
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
    object ADODsNavegarcd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
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
    CommandText = 'select'#13#10'  U.cd_usuario, U.nm_usuario, '#13#10'  Cast( U.cd_grupo as VarChar( 5 ) ) + '''' - '''' + UG.nm_grupo as Dp_Grupo'#13#10#13#10'from'#13#10'  usuario U'#13#10#13#10'inner join'#13#10'  usuario_grupo UG'#13#10'on'#13#10'  UG.cd_grupo = U.cd_grupo'#13#10#13#10'order by'#13#10'  U.nm_usuario'
    Parameters = <>
    Left = 406
    Top = 40
    object ADODsReportcd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsReportnm_usuario: TStringField
      FieldName = 'nm_usuario'
      Size = 50
    end
    object ADODsReportdp_grupo: TStringField
      FieldName = 'dp_grupo'
      Size = 254
    end
  end
end
