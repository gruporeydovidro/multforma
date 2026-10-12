object fiePrnForm1: TfiePrnForm1
  Left = 334
  Top = 253
  Width = 898
  Height = 528
  ActiveControl = ImageEnView1
  Caption = 'Print'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 14
  object ImageEnView1: TImageEnView
    Left = 0
    Top = 28
    Width = 890
    Height = 451
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Top Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton2: TSpeedButton
      Left = 464
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Top Center'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton3: TSpeedButton
      Left = 488
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Top Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton4: TSpeedButton
      Left = 512
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Center Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton5: TSpeedButton
      Left = 536
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Center'
      GroupIndex = 1
      Down = True
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton6: TSpeedButton
      Left = 560
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Center Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton7: TSpeedButton
      Left = 584
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Bottom Left'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton8: TSpeedButton
      Left = 608
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Bottom Center'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton9: TSpeedButton
      Left = 632
      Top = 3
      Width = 25
      Height = 22
      Hint = 'Bottom Right'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {binary 1338 bytes}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton10: TSpeedButton
      Left = 719
      Top = 4
      Width = 23
      Height = 22
      Hint = 'Print Setup'
      Flat = True
      Glyph.Data = {binary 1082 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton10Click
    end
    object SpeedButton11: TSpeedButton
      Left = 747
      Top = 4
      Width = 23
      Height = 22
      Hint = 'Print'
      Flat = True
      Glyph.Data = {binary 1178 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = printpreview
    end
    object SpeedButton12: TSpeedButton
      Left = 775
      Top = 4
      Width = 51
      Height = 21
      Hint = 'Close'
      Caption = '&Close'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton12Click
    end
    object Edit1: TEdit
      Left = 6
      Top = 3
      Width = 33
      Height = 22
      Hint = 'Top Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1'
      OnChange = printpreview
    end
    object Edit2: TEdit
      Left = 60
      Top = 3
      Width = 33
      Height = 22
      Hint = 'Left Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '1'
      OnChange = printpreview
    end
    object Edit3: TEdit
      Left = 114
      Top = 3
      Width = 35
      Height = 22
      Hint = 'Right Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '1'
      OnChange = printpreview
    end
    object Edit4: TEdit
      Left = 168
      Top = 3
      Width = 35
      Height = 22
      Hint = 'Bottom Margin'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '1'
      OnChange = printpreview
    end
    object ComboBox1: TComboBox
      Left = 223
      Top = 2
      Width = 98
      Height = 22
      Hint = 'Location/size'
      Style = csDropDownList
      ItemHeight = 14
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
      Left = 326
      Top = 3
      Width = 37
      Height = 22
      Hint = 'Width'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '6'
      Visible = False
      OnChange = printpreview
    end
    object Edit6: TEdit
      Left = 384
      Top = 3
      Width = 37
      Height = 22
      Hint = 'Height'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '4'
      Visible = False
      OnChange = printpreview
    end
    object Edit7: TEdit
      Left = 659
      Top = 3
      Width = 41
      Height = 22
      Hint = 'Gamma Correction'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '1'
      OnChange = printpreview
    end
    object UpDown1: TUpDown
      Left = 39
      Top = 3
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
      Left = 93
      Top = 3
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
      Left = 149
      Top = 3
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
      Left = 203
      Top = 3
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
      Left = 363
      Top = 3
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
      Left = 421
      Top = 3
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
      Left = 700
      Top = 3
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
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 43
    Top = 70
  end
  object MainMenu1: TMainMenu
    Left = 14
    Top = 70
    object File1: TMenuItem
      Caption = '&File'
      object Print1: TMenuItem
        Caption = '&Print...'
        OnClick = Print1Click
      end
      object PrintSetup1: TMenuItem
        Caption = 'P&rint Setup...'
        OnClick = Button3Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = '&Close'
        OnClick = Exit1Click
      end
    end
  end
end
