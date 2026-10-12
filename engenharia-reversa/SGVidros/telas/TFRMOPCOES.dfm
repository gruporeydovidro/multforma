object FrmOpcoes: TFrmOpcoes
  Left = 394
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Tela de Cores'
  ClientHeight = 356
  ClientWidth = 591
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 356
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 570
    Height = 356
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 326
      Width = 565
      Height = 5
      Shape = bsTopLine
    end
    object ImgMonitor: TImage
      Left = 15
      Top = 5
      Width = 350
      Height = 320
      Picture.Data = {binary 17191 bytes}
    end
    object BitBtnConfirm: TBitBtn
      Left = 397
      Top = 329
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 483
      Top = 329
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object PnlBG_1: TPanel
      Tag = 1
      Left = 374
      Top = 72
      Width = 185
      Height = 41
      BevelOuter = bvLowered
      BevelWidth = 5
      Caption = 'Fundo da Aplica'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = PnlBG_1Click
    end
    object PnlFG_1: TPanel
      Tag = 2
      Left = 374
      Top = 120
      Width = 185
      Height = 41
      BevelWidth = 5
      Caption = 'Frente da Aplica'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = PnlBG_1Click
    end
    object PnlBG_2: TPanel
      Left = 45
      Top = 55
      Width = 288
      Height = 183
      BevelOuter = bvNone
      Color = 8420352
      TabOrder = 4
      object ImgFrente: TImage
        Left = 0
        Top = 0
        Width = 178
        Height = 116
        Picture.Data = {binary 1970 bytes}
      end
    end
    object PnlFG_2: TPanel
      Tag = 2
      Left = 52
      Top = 70
      Width = 171
      Height = 102
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 5
      OnDblClick = PnlFG_2DblClick
    end
    object BitBtnDefault: TBitBtn
      Left = 2
      Top = 329
      Width = 140
      Height = 25
      Caption = 'Configura'#231#227'o &Padr'#227'o'
      TabOrder = 6
      OnClick = BitBtnDefaultClick
      Glyph.Data = {binary 1338 bytes}
    end
  end
  object ADOCmdUser: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'update'
      '  Usuario'
      ''
      'set'
      '  Nr_Fundo  = :Nr_Fundo,'
      '  Nr_Frente = :Nr_Frente,'
      '  Nr_Panel  = :Nr_Panel'
      ''
      'where'
      '  Cd_Usuario = :Cd_Usuario'
    )
    Left = 408
    Top = 192
  end
end
