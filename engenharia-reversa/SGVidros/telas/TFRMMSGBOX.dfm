object FrmMsgBox: TFrmMsgBox
  Left = 346
  Top = 238
  BorderStyle = bsToolWindow
  Caption = 'MessageBox'
  ClientHeight = 173
  ClientWidth = 541
  Color = 12968425
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblMsg: TLabel
    Left = 70
    Top = 4
    Width = 463
    Height = 134
    Alignment = taCenter
    AutoSize = False
    Caption = 'My Message in Portuguese'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    WordWrap = True
  end
  object PnlImage: TPanel
    Left = 5
    Top = 2
    Width = 58
    Height = 55
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = clWhite
    TabOrder = 0
    object ImgConfirm: TImage
      Left = 7
      Top = 7
      Width = 45
      Height = 44
      Center = True
      Picture.Data = {binary 3602 bytes}
      Transparent = True
    end
    object ImgError: TImage
      Left = 7
      Top = 7
      Width = 45
      Height = 44
      Center = True
      Picture.Data = {binary 3602 bytes}
      Transparent = True
    end
    object ImgInformation: TImage
      Left = 7
      Top = 7
      Width = 45
      Height = 44
      Center = True
      Picture.Data = {binary 3602 bytes}
      Transparent = True
    end
    object ImgWarning: TImage
      Left = 7
      Top = 7
      Width = 45
      Height = 44
      Center = True
      Picture.Data = {binary 3602 bytes}
      Transparent = True
    end
  end
  object BitBtnOk: TBitBtn
    Tag = 1
    Left = 84
    Top = 120
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    Visible = False
    Glyph.Data = {binary 482 bytes}
    NumGlyphs = 2
  end
  object BitBtnCancel: TBitBtn
    Tag = 2
    Left = 158
    Top = 120
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
    Visible = False
    Glyph.Data = {binary 482 bytes}
    NumGlyphs = 2
  end
  object BitBtnYes: TBitBtn
    Tag = 3
    Left = 232
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Sim'
    ModalResult = 6
    TabOrder = 3
    Visible = False
    Glyph.Data = {binary 482 bytes}
    NumGlyphs = 2
  end
  object BitBtnNo: TBitBtn
    Tag = 4
    Left = 306
    Top = 120
    Width = 75
    Height = 25
    Caption = '&N'#227'o'
    TabOrder = 4
    Visible = False
    Kind = bkNo
  end
  object BitBtnAll: TBitBtn
    Tag = 5
    Left = 124
    Top = 145
    Width = 75
    Height = 25
    Caption = '&Todos'
    TabOrder = 5
    Visible = False
    Kind = bkAll
  end
  object BitBtnRetry: TBitBtn
    Tag = 6
    Left = 198
    Top = 145
    Width = 75
    Height = 25
    Caption = '&Repetir'
    TabOrder = 6
    Visible = False
    Kind = bkRetry
  end
  object BitBtnHelp: TBitBtn
    Tag = 7
    Left = 272
    Top = 145
    Width = 75
    Height = 25
    Caption = 'A&juda'
    TabOrder = 7
    Visible = False
    Kind = bkHelp
  end
end
