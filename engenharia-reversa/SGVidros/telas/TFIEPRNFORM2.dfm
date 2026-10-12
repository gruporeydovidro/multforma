object fiePrnForm2: TfiePrnForm2
  Left = 223
  Top = 273
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 354
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 662
    Height = 354
    Align = alClient
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 191
    Height = 136
    Caption = ' Margins (inches) '
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 44
      Width = 63
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Top'
    end
    object Label2: TLabel
      Left = 3
      Top = 84
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Left'
    end
    object Label3: TLabel
      Left = 111
      Top = 84
      Width = 61
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Right'
    end
    object Label4: TLabel
      Left = 53
      Top = 116
      Width = 65
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Bottom'
    end
    object Edit1: TEdit
      Left = 66
      Top = 20
      Width = 41
      Height = 21
      TabOrder = 0
      Text = '1'
      OnChange = printpreview
    end
    object Edit2: TEdit
      Left = 10
      Top = 60
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '1'
      OnChange = printpreview
    end
    object Edit3: TEdit
      Left = 122
      Top = 60
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '1'
      OnChange = printpreview
    end
    object Edit4: TEdit
      Left = 66
      Top = 92
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '1'
      OnChange = printpreview
    end
    object UpDown1: TUpDown
      Left = 107
      Top = 20
      Width = 16
      Height = 21
      Min = -10000
      Max = 10000
      Position = 1
      TabOrder = 4
      OnClick = UpDown1Click
    end
    object UpDown2: TUpDown
      Left = 51
      Top = 60
      Width = 14
      Height = 21
      Min = -10000
      Max = 10000
      Position = 1
      TabOrder = 5
      OnClick = UpDown2Click
    end
    object UpDown3: TUpDown
      Left = 163
      Top = 60
      Width = 16
      Height = 21
      Min = -10000
      Max = 10000
      Position = 1
      TabOrder = 6
      OnClick = UpDown3Click
    end
    object UpDown4: TUpDown
      Left = 107
      Top = 92
      Width = 16
      Height = 21
      Min = -10000
      Max = 10000
      Position = 1
      TabOrder = 7
      OnClick = UpDown4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 204
    Top = 8
    Width = 137
    Height = 137
    Caption = ' Position '
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 55
      Top = 24
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton3: TSpeedButton
      Left = 91
      Top = 24
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton4: TSpeedButton
      Left = 19
      Top = 60
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton5: TSpeedButton
      Left = 55
      Top = 60
      Width = 25
      Height = 25
      GroupIndex = 1
      Down = True
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton6: TSpeedButton
      Left = 91
      Top = 60
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton7: TSpeedButton
      Left = 19
      Top = 96
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton8: TSpeedButton
      Left = 55
      Top = 96
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton9: TSpeedButton
      Left = 91
      Top = 96
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
    object SpeedButton1: TSpeedButton
      Left = 19
      Top = 24
      Width = 25
      Height = 25
      GroupIndex = 1
      Glyph.Data = {binary 1338 bytes}
      OnClick = printpreview
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 152
    Width = 191
    Height = 153
    Caption = ' Size '
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 28
      Height = 13
      Caption = 'Width'
      Enabled = False
      Visible = False
    end
    object Label6: TLabel
      Left = 9
      Top = 100
      Width = 31
      Height = 13
      Caption = 'Height'
      Enabled = False
      Visible = False
    end
    object Label7: TLabel
      Left = 128
      Top = 60
      Width = 31
      Height = 13
      Caption = 'inches'
      Enabled = False
      Visible = False
    end
    object Label8: TLabel
      Left = 128
      Top = 100
      Width = 31
      Height = 13
      Caption = 'inches'
      Enabled = False
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 6
      Top = 19
      Width = 179
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'Normal'
        'Fit to page'
        'Stretch to page'
        'Specified size'
      )
    end
    object Edit5: TEdit
      Left = 71
      Top = 57
      Width = 39
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '6'
      Visible = False
      OnChange = printpreview
    end
    object Edit6: TEdit
      Left = 71
      Top = 97
      Width = 39
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '4'
      Visible = False
      OnChange = printpreview
    end
    object UpDown5: TUpDown
      Left = 110
      Top = 57
      Width = 16
      Height = 21
      Enabled = False
      Min = -10000
      Max = 10000
      TabOrder = 3
      Visible = False
      OnClick = UpDown5Click
    end
    object UpDown6: TUpDown
      Left = 110
      Top = 97
      Width = 16
      Height = 21
      Enabled = False
      Min = -10000
      Max = 10000
      TabOrder = 4
      Visible = False
      OnClick = UpDown6Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 204
    Top = 152
    Width = 137
    Height = 81
    Caption = ' Gamma correction '
    TabOrder = 3
    object Label9: TLabel
      Left = 10
      Top = 22
      Width = 27
      Height = 13
      Caption = 'Value'
    end
    object Edit7: TEdit
      Left = 68
      Top = 19
      Width = 32
      Height = 21
      TabOrder = 0
      Text = '1'
      OnChange = printpreview
    end
    object UpDown7: TUpDown
      Left = 101
      Top = 19
      Width = 16
      Height = 21
      Min = -10000
      Max = 10000
      Position = 1
      TabOrder = 1
      OnClick = UpDown7Click
    end
  end
  object Button1: TButton
    Left = 16
    Top = 320
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 320
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object GroupBox5: TGroupBox
    Left = 346
    Top = 8
    Width = 313
    Height = 345
    Caption = ' Preview '
    TabOrder = 6
    object ImageEnView1: TImageEnView
      Left = 2
      Top = 15
      Width = 309
      Height = 328
      Cursor = crArrow
      ParentCtl3D = False
      BackgroundStyle = iebsSoftShadow
      ImageEnVersion = '3.0.3'
      EnableInteractionHints = True
      Align = alClient
      TabOrder = 0
    end
  end
  object Button4: TButton
    Left = 206
    Top = 320
    Width = 135
    Height = 25
    Caption = 'Printer Setup'
    TabOrder = 7
    OnClick = Button4Click
  end
  object GroupBox6: TGroupBox
    Left = 204
    Top = 237
    Width = 137
    Height = 68
    Caption = ' Measure units '
    TabOrder = 8
    object Label10: TLabel
      Left = 10
      Top = 30
      Width = 24
      Height = 13
      Caption = 'Units'
    end
    object ComboBox2: TComboBox
      Left = 52
      Top = 26
      Width = 76
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox2Change
      Items.Strings = (
        'Inches'
        'cm'
      )
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 403
    Top = 86
  end
end
