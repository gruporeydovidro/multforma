object fiePrnForm3: TfiePrnForm3
  Left = 415
  Top = 340
  Width = 692
  Height = 460
  Caption = 'fiePrnForm3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 72
    Height = 359
  end
  object ImageEnView1: TImageEnView
    Left = 188
    Top = 72
    Width = 496
    Height = 359
    Cursor = crArrow
    ParentCtl3D = False
    BorderStyle = bsNone
    MouseInteract = [miZoom, miScroll]
    BackgroundStyle = iebsSoftShadow
    ImageEnVersion = '3.0.3'
    EnableInteractionHints = True
    Align = alClient
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 72
    Width = 185
    Height = 359
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object ImageEnMView1: TImageEnMView
      Left = 0
      Top = 0
      Width = 185
      Height = 359
      ParentCtl3D = False
      StoreType = ietThumb
      ThumbWidth = 150
      ThumbHeight = 190
      BottomGap = 5
      GridWidth = -1
      SelectionWidth = 3
      SelectionColor = clGreen
      Style = iemsFlat
      EnableMultiSelect = True
      ThumbnailsBorderWidth = 1
      ThumbnailsBorderColor = clGray
      ImageEnVersion = '3.0.3'
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnMouseUp = ImageEnMView1MouseUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 72
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 335
      Top = 2
      Width = 26
      Height = 22
      Hint = 'Top Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton2: TSpeedButton
      Left = 361
      Top = 2
      Width = 24
      Height = 22
      Hint = 'Top Center'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton3: TSpeedButton
      Left = 385
      Top = 2
      Width = 25
      Height = 22
      Hint = 'Top Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton4: TSpeedButton
      Left = 335
      Top = 25
      Width = 25
      Height = 22
      Hint = 'Center Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton5: TSpeedButton
      Left = 361
      Top = 25
      Width = 25
      Height = 22
      Hint = 'Center'
      GroupIndex = 1
      Down = True
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton6: TSpeedButton
      Left = 385
      Top = 25
      Width = 25
      Height = 22
      Hint = 'Center Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton7: TSpeedButton
      Left = 335
      Top = 48
      Width = 26
      Height = 22
      Hint = 'Bottom Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton8: TSpeedButton
      Left = 361
      Top = 48
      Width = 25
      Height = 22
      Hint = 'Bottom Center'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton9: TSpeedButton
      Left = 385
      Top = 48
      Width = 25
      Height = 22
      Hint = 'Bottom Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintPreview
    end
    object SpeedButton10: TSpeedButton
      Left = 427
      Top = 7
      Width = 24
      Height = 22
      Hint = 'Print Setup'
      Flat = True
      Glyph.Data = {binary 1082 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 454
      Top = 7
      Width = 22
      Height = 22
      Hint = 'Print'
      Flat = True
      Glyph.Data = {binary 1178 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton11Click
    end
    object SpeedButton12: TSpeedButton
      Left = 427
      Top = 42
      Width = 48
      Height = 21
      Hint = 'Close'
      Caption = '&Close'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object Bevel1: TBevel
      Left = 1
      Top = 30
      Width = 217
      Height = 8
      Shape = bsTopLine
    end
    object Bevel3: TBevel
      Left = 218
      Top = 2
      Width = 9
      Height = 69
      Shape = bsLeftLine
    end
    object Bevel2: TBevel
      Left = 329
      Top = 1
      Width = 9
      Height = 69
      Shape = bsLeftLine
    end
    object Bevel4: TBevel
      Left = 416
      Top = 1
      Width = 9
      Height = 69
      Shape = bsLeftLine
    end
    object Edit1: TEdit
      Left = 6
      Top = 3
      Width = 35
      Height = 21
      Hint = 'Top Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1'
      OnChange = PrintPreview
    end
    object Edit2: TEdit
      Left = 58
      Top = 3
      Width = 31
      Height = 21
      Hint = 'Left Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '1'
      OnChange = PrintPreview
    end
    object Edit3: TEdit
      Left = 109
      Top = 3
      Width = 36
      Height = 21
      Hint = 'Right Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '1'
      OnChange = PrintPreview
    end
    object Edit4: TEdit
      Left = 161
      Top = 3
      Width = 32
      Height = 21
      Hint = 'Bottom Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '1'
      OnChange = PrintPreview
    end
    object ComboBox1: TComboBox
      Left = 224
      Top = 3
      Width = 98
      Height = 21
      Hint = 'Location/size'
      Style = csDropDownList
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnChange = ComboBox1Change
      Items.Strings = (
        'Normal'
        'Fit to page'
        'Stretch to page'
        'Specified size'
      )
    end
    object Edit5: TEdit
      Left = 223
      Top = 39
      Width = 34
      Height = 21
      Hint = 'Width'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '6'
      Visible = False
      OnChange = PrintPreview
    end
    object Edit6: TEdit
      Left = 274
      Top = 39
      Width = 31
      Height = 21
      Hint = 'Height'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '4'
      Visible = False
      OnChange = PrintPreview
    end
    object Edit7: TEdit
      Left = 6
      Top = 39
      Width = 35
      Height = 21
      Hint = 'Gamma Correction'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '1'
      OnChange = PrintPreview
    end
    object UpDown1: TUpDown
      Left = 38
      Top = 2
      Width = 16
      Height = 22
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 1
      ShowHint = True
      TabOrder = 8
      OnClick = UpDown1Click
    end
    object UpDown2: TUpDown
      Left = 90
      Top = 2
      Width = 16
      Height = 22
      Hint = 'Top Margin'
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 1
      ShowHint = True
      TabOrder = 9
      OnClick = UpDown2Click
    end
    object UpDown3: TUpDown
      Left = 142
      Top = 2
      Width = 16
      Height = 22
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 1
      ShowHint = True
      TabOrder = 10
      OnClick = UpDown3Click
    end
    object UpDown4: TUpDown
      Left = 194
      Top = 2
      Width = 16
      Height = 22
      Hint = 'Bottom Margin'
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 1
      ShowHint = True
      TabOrder = 11
      OnClick = UpDown4Click
    end
    object UpDown5: TUpDown
      Left = 255
      Top = 38
      Width = 16
      Height = 22
      Enabled = False
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 6
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnClick = UpDown5Click
    end
    object UpDown6: TUpDown
      Left = 307
      Top = 38
      Width = 16
      Height = 22
      Enabled = False
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 4
      ShowHint = True
      TabOrder = 13
      Visible = False
      OnClick = UpDown6Click
    end
    object UpDown7: TUpDown
      Left = 40
      Top = 38
      Width = 16
      Height = 22
      Hint = ' Gamma Correction'
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 1
      ShowHint = True
      TabOrder = 14
      OnClick = UpDown7Click
    end
    object ComboBox2: TComboBox
      Left = 58
      Top = 39
      Width = 118
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 15
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 43
    Top = 70
  end
  object PopupMenu1: TPopupMenu
    Left = 132
    Top = 148
    object Add1: TMenuItem
      Caption = 'Zoom In'
      OnClick = Add1Click
    end
    object Delete1: TMenuItem
      Caption = 'Zoom Out'
      OnClick = Delete1Click
    end
  end
end
