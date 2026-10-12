object FrmCFOP: TFrmCFOP
  Left = 365
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'CFOP'
  ClientHeight = 329
  ClientWidth = 666
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
    Height = 329
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 645
    Height = 329
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 299
      Width = 637
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 67
      Width = 82
      Height = 13
      Caption = 'Atualiza Estoque:'
    end
    object Label2: TLabel
      Left = 91
      Top = 67
      Width = 165
      Height = 13
      Caption = 'Mercadoria em poder de Terceiros:'
    end
    object Label3: TLabel
      Left = 5
      Top = 107
      Width = 89
      Height = 13
      Caption = 'Tipo de Opera'#231#227'o:'
    end
    object Label4: TLabel
      Left = 155
      Top = 107
      Width = 115
      Height = 13
      Caption = 'Imprime valores na nota:'
    end
    object Label5: TLabel
      Left = 360
      Top = 107
      Width = 68
      Height = 13
      Caption = 'Gera Sintegra:'
    end
    object Label6: TLabel
      Left = 274
      Top = 107
      Width = 79
      Height = 13
      Caption = 'Imprime Imposto:'
    end
    object Label7: TLabel
      Left = 5
      Top = 144
      Width = 138
      Height = 13
      Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 643
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 11
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 643
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 643
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
      Left = 472
      Top = 302
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 558
      Top = 302
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 10
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_CFOP: TLabeledEdit
      Left = 47
      Top = 45
      Width = 510
      Height = 19
      AutoSelect = False
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtCd_CFOP: TLabeledEdit
      Left = 5
      Top = 45
      Width = 36
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'CFOP:'
      LabelSpacing = 2
      MaxLength = 4
      TabOrder = 0
      OnExit = EdtCd_CFOPExit
    end
    object SctReport: TSctReport
      Left = 360
      Top = 27
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
      TabOrder = 12
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
      MTop = 27
      MLeft = 360
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
        Description = 'CFOP'
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
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCFOP_Find.DsFind
        end
        object adodsreportcd_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cfop'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_cfop'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_cfop: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_cfopVar
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
            Caption = 'CFOP'
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
            Width = 51
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportcd_cfopVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 58
            Top = 0
            Width = 308
            Height = 17
            Variable = adodsreportds_cfopVar
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
            TotalVariable = TotalOfcd_cfop
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
            Width = 51
            Height = 17
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 58
            Top = 0
            Width = 38
            Height = 17
            Caption = 'CFOP'
          end
        end
      end
    end
    object CbTipo: TComboBox
      Left = 5
      Top = 82
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbTerceiros: TComboBox
      Left = 91
      Top = 82
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbOperacao: TComboBox
      Left = 5
      Top = 122
      Width = 147
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Entrada / Saida Normal'
        'Devolu'#231#227'o'
        'Simples Remessa'
        'Acerto de Estoque'
      )
    end
    object CbValores: TComboBox
      Left = 155
      Top = 122
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbSintegra: TComboBox
      Left = 360
      Top = 122
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbImposto: TComboBox
      Left = 274
      Top = 122
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbInventario: TComboBox
      Left = 5
      Top = 159
      Width = 196
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      TabOrder = 8
      Text = 'Produtos Acabados'
      Items.Strings = (
        'Mat'#233'ria Prima'
        'Insumos ou Material Secund'#225'rio'
        'Produtos Acabados'
        'Material em Poder de Terceiros'
        'Material de Revenda'
        'Material uso e consumo'
        'Material uso presta'#231#227'o de servi'#231'os'
      )
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
    Left = 410
    Top = 2
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
    CommandText = 'select'#13#10'  Cd_CFOP, Ds_CFOP, Tp_CFOP, Fl_Terceiros, '#13#10'  Tp_Operacao, Fl_Valores, Fl_Sintegra, Fl_Imposto,'#13#10'  Fl_Inventario'#13#10#13#10'from'#13#10'  CFOP'#13#10#13#10'where'#13#10'  Cd_CFOP = :Cd_CFOP'
    Parameters = <
      item
        Name = 'Cd_CFOP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = ' '
      end>
    Left = 88
    Top = 183
    object ADODsDadoscd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosds_cfop: TStringField
      FieldName = 'ds_cfop'
      Size = 50
    end
    object ADODsDadostp_cfop: TStringField
      FieldName = 'tp_cfop'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_terceiros: TStringField
      FieldName = 'fl_terceiros'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosTp_Operacao: TStringField
      FieldName = 'Tp_Operacao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Valores: TStringField
      FieldName = 'Fl_Valores'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Sintegra: TStringField
      FieldName = 'Fl_Sintegra'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into CFOP( Cd_CFOP, Ds_CFOP, Tp_CFOP, Fl_Terceiros, Tp_Operacao,'
      '   Fl_Valores, Fl_Sintegra, Fl_Imposto, Fl_Inventario )'
      'values( :Cd_CFOP, :Ds_CFOP, :Tp_CFOP, :Fl_Terceiros, :Tp_Operacao,'
      '   :Fl_Valores, :Fl_Sintegra, :Fl_Imposto, :Fl_Inventario )'
    )
    SQLUpdate.Strings = (
      'update'
      '  CFOP'
      ''
      'set'
      '  Ds_CFOP       = :Ds_CFOP,'
      '  Tp_CFOP       = :Tp_CFOP,'
      '  Fl_Terceiros  = :Fl_Terceiros,'
      '  Tp_Operacao   = :Tp_Operacao,'
      '  Fl_Valores    = :Fl_Valores,'
      '  Fl_Sintegra   = :Fl_Sintegra,'
      '  Fl_Imposto    = :Fl_Imposto,'
      '  Fl_Inventario = :Fl_Inventario'
      ''
      'where'
      '  Cd_CFOP = :Cd_CFOP'
    )
    SQLDelete.Strings = (
      'delete from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP = :Cd_CFOP'
    )
    SQLOther0.Strings = (
      'update'
      '  usuario'
      ''
      'set'
      '  sh_usuario = :sh_usuario'
      ''
      'where'
      '  cd_usuario = :cd_usuario'
    )
    Left = 118
    Top = 183
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_CFOP'#13#10#13#10'from'#13#10'  CFOP'#13#10#13#10'order by'#13#10'  Cd_CFOP'
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Check Primary Key'
      'select'
      '  Cd_CFOP'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP = :Cd_CFOP'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Cd_CFOP'
      ''
      'from'
      '  CFOP'
      ''
      'order by'
      '  Cd_CFOP'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Cd_CFOP'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP < :Cd_CFOP'
      ''
      'order by'
      '  Cd_CFOP desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Cd_CFOP'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP > :Cd_CFOP'
      ''
      'order by'
      '  Cd_CFOP'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Cd_CFOP'
      ''
      'from'
      '  CFOP'
      ''
      'order by'
      '  Cd_CFOP desc'
    )
    SQLOther9.Strings = (
      'select'
      '  max( cd_grupo ) as cd_grupo'
      ''
      'from'
      '  usuario_grupo'
    )
    Left = 149
    Top = 183
    object ADODsNavegarcd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 29
    Top = 182
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_CFOP, Ds_CFOP'#13#10#13#10'from'#13#10'  CFOP'#13#10#13#10'order by'#13#10'  Cd_CFOP'
    Parameters = <>
    Left = 59
    Top = 182
    object ADODsReportcd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsReportds_cfop: TStringField
      FieldName = 'ds_cfop'
      Size = 50
    end
  end
end
