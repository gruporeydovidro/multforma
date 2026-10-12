object FrmImageView: TFrmImageView
  Left = 266
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Visualizar Imagem'
  ClientHeight = 442
  ClientWidth = 774
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
    Height = 442
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 442
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 413
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 415
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 486 bytes}
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 751
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBView: TActionToolBar
          Left = 0
          Top = 0
          Width = 751
          Height = 26
          ActionManager = ActManCadastro
          Caption = 'ActToolBView'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object ScrBxImg: TScrollBox
      Left = 3
      Top = 31
      Width = 744
      Height = 380
      TabOrder = 2
      object ImgView: TImage
        Left = 1
        Top = 0
        Width = 740
        Height = 377
        Center = True
      end
      object SctReport: TSctReport
        Left = 210
        Top = 35
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
        TabOrder = 0
        Visible = False
        Minimized = True
        Prompt = True
        AutoRun = False
        SuppressStatus = False
        PixelsPerInch = 96
        STop = 5
        SLeft = 3
        SWidth = 838
        SHeight = 581
        MTop = 35
        MLeft = 210
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
          PageSetup.PreviewSettings.ModalPreview = mpModal
          PageSetup.PreviewSettings.PreviewOwner = poAppOwned
          PageSetup.PreviewSettings.FormStyle = pfsNormal
          PageSetup.PreviewSettings.Zoom = azHeight
          BorderType = btNone
          Description = 'Impress'#227'o de Imagem'
          CloseDataSet = False
          DataRange = drSingleRecord
          OmitLastPgFt = False
          Head = ReportHeaderBand
          Detail = DetailBand
          Foot = ReportFooterBand
          PageHead = PageHeaderBand
          PageFoot = PageFooterBand
          DataSource = DmMaster.DsFilial
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
          object OverlayBandLevel: TSctLevel
            Left = 0
            Top = 0
            Width = 0
            Height = 0
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
              Caption = 'Impress'#227'o de Imagem'
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
            object SctTxtTitle: TSctvarlabel
              Left = 2
              Top = 18
              Width = 590
              Height = 17
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Caption = 'teste de uso de texto para imagem'
            end
          end
          object DetailBand: TSctBand
            Left = 0
            Top = 74
            Width = 748
            Height = 7
            ParentColor = True
            BandName = 'Detail'
            Updatelevel = DetailBandlevel
            Visible = False
          end
          object PageFooterBand: TSctBand
            Left = 0
            Top = 96
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
            Top = 131
            Width = 748
            Height = 20
            ParentColor = True
            BandName = 'Report Footer'
            Updatelevel = ReportFooterBandlevel
            Visible = False
          end
          object OverlayBand: TSctOverlayBand
            Left = 0
            Top = 166
            Width = 748
            Height = 75
            ParentColor = True
            BandName = 'OverlayBand'
            Updatelevel = OverlayBandLevel
            object SctImgLogo: TSctImageLabel
              Left = 2
              Top = 2
              Width = 697
              Height = 66
              Center = True
            end
          end
        end
      end
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActReport
            ImageIndex = 20
          end>
        ActionBar = ActToolBView
      end>
    Images = FrmMain.ImgLstMenu
    Left = 635
    Top = 100
    StyleName = 'XP Style'
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
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar Imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActReport: TAction
      Category = '3-Imagem'
      Hint = 'Imprimir Imagem'
      ImageIndex = 20
      OnExecute = ActReportExecute
    end
  end
end
