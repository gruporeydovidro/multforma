object AceViewer: TAceViewer
  Left = 93
  Top = 230
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'AceViewer'
  ClientHeight = 479
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object LeftPreview: TAcePreview
    Left = 0
    Top = 29
    Width = 436
    Height = 450
    HorzScrollBar.Increment = 24
    VertScrollBar.Increment = 24
    Align = alClient
    TabOrder = 0
    OnClick = LeftPreviewClick
    OnVertScroll = LeftPreviewVertScroll
    OnHorzScroll = LeftPreviewHorzScroll
  end
  object ToolBar: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 29
    Align = alTop
    TabOrder = 1
    OnDblClick = ToolBarDblClick
    OnMouseDown = ToolBarMouseDown
    object PnlToolBar_1: TPanel
      Left = 1
      Top = 1
      Width = 813
      Height = 27
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object BtnFirst: TSpeedButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Primeira p'#225'gina'
        Flat = True
        Glyph.Data = {binary 454 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFirstClick
      end
      object BtnPrior: TSpeedButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'P'#225'gina anterior'
        Flat = True
        Glyph.Data = {binary 514 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPriorClick
      end
      object BtnNext: TSpeedButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Pr'#243'xima p'#225'gina'
        Flat = True
        Glyph.Data = {binary 510 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnNextClick
      end
      object BtnLast: TSpeedButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = #218'ltima p'#225'gina'
        Flat = True
        Glyph.Data = {binary 450 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnLastClick
      end
      object SbStop: TSpeedButton
        Left = 756
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Abort Report'
        Enabled = False
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbStopClick
      end
      object LoadMeter: TAceMeter
        Left = 656
        Top = 0
        Width = 97
        Height = 25
        Color = clWhite
        ParentColor = False
        MeterColor = clYellow
        BackGroundColor = clWhite
        BorderStyle = bsSingle
        Style = msHorizontal
        Min = 0
        Max = 100
        Progress = 0
        ShowText = True
      end
      object BtnPrint: TSpeedButton
        Left = 263
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Enviar para Impressora'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrintClick
      end
      object BtnFitWidth: TSpeedButton
        Left = 382
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Ajustar pela largura'
        Flat = True
        Glyph.Data = {binary 250 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFitWidthClick
      end
      object BtnFitHeight: TSpeedButton
        Left = 407
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Ajustar pela altura'
        Flat = True
        Glyph.Data = {binary 250 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFitHeightClick
      end
      object BtnFitPage: TSpeedButton
        Left = 432
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Ajustar na p'#225'gina'
        Flat = True
        Glyph.Data = {binary 250 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnFitPageClick
      end
      object BtnOnePage: TSpeedButton
        Left = 298
        Top = 0
        Width = 25
        Height = 25
        Hint = 'P'#225'gina'#231#227'o simples'
        AllowAllUp = True
        GroupIndex = 1
        Down = True
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnOnePageClick
      end
      object BtnTwoPage: TSpeedButton
        Left = 323
        Top = 0
        Width = 25
        Height = 25
        Hint = 'P'#225'gina'#231#227'o dupla'
        AllowAllUp = True
        GroupIndex = 1
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnTwoPageClick
      end
      object BtnSynchronized: TSpeedButton
        Left = 348
        Top = 0
        Width = 25
        Height = 25
        Hint = 'P'#225'gina'#231#227'o sincronizada'
        AllowAllUp = True
        GroupIndex = 1
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnSynchronizedClick
      end
      object BtnTools: TSpeedButton
        Left = 238
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Configurar Impressora'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnToolsClick
      end
      object BtnZoomPlus: TSpeedButton
        Left = 465
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Aumentar a visualiza'#231#227'o'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnZoomPlusClick
      end
      object BtnZoomMinus: TSpeedButton
        Left = 490
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Diminuir a visualiza'#231#227'o'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnZoomMinusClick
      end
      object BtnOpen: TSpeedButton
        Left = 178
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Abrir um relat'#243'rio'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnOpenClick
      end
      object SbSave: TSpeedButton
        Left = 203
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Salvar este relat'#243'rio'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbSaveClick
      end
      object PageNum: TLabel
        Left = 101
        Top = 4
        Width = 75
        Height = 17
        Hint = 'De um click duplo para selecionar a p'#225'gina...'
        Alignment = taCenter
        AutoSize = False
        Caption = 'PageNum'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnDblClick = GotoPage1Click
      end
      object SbClose: TSpeedButton
        Left = 785
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Sair'
        Flat = True
        Glyph.Data = {binary 486 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = SbCloseClick
      end
      object EdtZoom: TEdit
        Left = 520
        Top = 0
        Width = 38
        Height = 24
        TabStop = False
        AutoSelect = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
        Text = '100'
      end
      object SpnBtnZoom: TSpinButton
        Left = 561
        Top = 0
        Width = 15
        Height = 22
        DownGlyph.Data = {binary 1154 bytes}
        TabOrder = 1
        UpGlyph.Data = {binary 1154 bytes}
        OnDownClick = SpnBtnZoomDownClick
        OnUpClick = SpnBtnZoomUpClick
      end
    end
  end
  object RightPreview: TAcePreview
    Left = 441
    Top = 29
    Width = 374
    Height = 450
    HorzScrollBar.Increment = 24
    VertScrollBar.Increment = 24
    Align = alRight
    TabOrder = 2
    Visible = False
    OnClick = RightPreviewClick
    OnVertScroll = RightPreviewVertScroll
    OnHorzScroll = RightPreviewHorzScroll
  end
  object Divider: TPanel
    Left = 437
    Top = 29
    Width = 4
    Height = 450
    Cursor = crHSplit
    Align = alRight
    TabOrder = 3
    Visible = False
    OnMouseDown = DividerMouseDown
    OnMouseMove = DividerMouseMove
    OnMouseUp = DividerMouseUp
  end
  object CursorPosition: TPanel
    Left = 436
    Top = 29
    Width = 1
    Height = 450
    Align = alRight
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 4
    Visible = False
  end
  object PrinterSetup: TPrinterSetupDialog
    Left = 136
    Top = 162
  end
  object OpenFileDialog: TOpenDialog
    DefaultExt = 'Ace'
    FileName = 'AceFile.ace'
    Filter = 'Ace File (*.ace)|*.ace|All Files (*.*)|*.*'
    Left = 168
    Top = 162
  end
  object SaveFileDialog: TSaveDialog
    FileName = 'AceFile.ace'
    Filter = 'Ace File (*.ace)|*.ace|All Files (*.*)|*.*'
    Left = 107
    Top = 162
  end
  object PopMenSave: TPopupMenu
    Left = 216
    Top = 18
    object ArquivodoACEReportPadro1: TMenuItem
      Caption = 'Arquivo do ACEReport (Padr'#227'o)...'
      OnClick = ArquivodoACEReportPadro1Click
    end
    object ArquivoJPG1: TMenuItem
      Caption = 'Arquivo JPG...'
      OnClick = ArquivoJPG1Click
    end
  end
end
