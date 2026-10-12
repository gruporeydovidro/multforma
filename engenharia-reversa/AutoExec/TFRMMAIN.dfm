object FrmMain: TFrmMain
  Left = 411
  Top = 284
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Atualiza'#231#227'o'
  ClientHeight = 116
  ClientWidth = 351
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NbSystem: TNotebook
    Left = 0
    Top = 0
    Width = 351
    Height = 116
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object LblMessage: TLabel
        Left = 71
        Top = 8
        Width = 264
        Height = 45
        AutoSize = False
        Caption = 'Encontra-se dispon'#237'vel uma vers'#227'o mais atualizada do software que voc'#234' est'#225' utilizando. Para efetuar uma atualiza'#231#227'o autom'#225'tica, pressione o bot'#227'o "Atualizar".'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object SbConfirm: TSpeedButton
        Left = 159
        Top = 87
        Width = 91
        Height = 26
        Caption = '&Atualizar'
        Flat = True
        Glyph.Data = {binary 1502 bytes}
        NumGlyphs = 2
        OnClick = SbConfirmClick
      end
      object SbCancel: TSpeedButton
        Left = 252
        Top = 87
        Width = 91
        Height = 26
        Caption = '&Cancelar'
        Flat = True
        Glyph.Data = {binary 1430 bytes}
        NumGlyphs = 2
        OnClick = SbCancelClick
      end
      object PnlIcon_1: TPanel
        Left = 5
        Top = 5
        Width = 51
        Height = 51
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clWhite
        TabOrder = 0
        object ImgIcon_1: TImage
          Left = 3
          Top = 3
          Width = 45
          Height = 45
          Align = alClient
          Center = True
          Picture.Data = {binary 10140 bytes}
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Copiando'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 5
        Top = 80
        Width = 92
        Height = 13
        Caption = 'Copiando arquivo...'
      end
      object Animate: TAnimate
        Left = 5
        Top = 4
        Width = 272
        Height = 60
        CommonAVI = aviCopyFile
        StopFrame = 26
      end
      object ProgressBar: TProgressBar
        Left = 5
        Top = 96
        Width = 336
        Height = 16
        Smooth = True
        TabOrder = 1
      end
      object STxtOrigem: TStaticText
        Left = 5
        Top = 65
        Width = 37
        Height = 17
        Caption = 'Origem'
        TabOrder = 2
      end
      object STxtDestino: TStaticText
        Left = 170
        Top = 65
        Width = 106
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Destino'
        TabOrder = 3
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Sem Origem'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 71
        Top = 8
        Width = 270
        Height = 79
        AutoSize = False
        Caption = 'N'#227'o foi encontrado o arquivo origem, verifique se a unidade da rede esta mapeada, se o arquivo origem foi apagado ou se configura'#231#227'o no arquivo AutoExec.INI no diret'#243'rio de instala'#231#227'o do software esta correta.'
        WordWrap = True
      end
      object SpeedButton1: TSpeedButton
        Left = 257
        Top = 88
        Width = 91
        Height = 26
        Caption = 'Ok'
        Flat = True
        Glyph.Data = {binary 502 bytes}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object PnlIcon_2: TPanel
        Left = 5
        Top = 5
        Width = 51
        Height = 51
        BevelOuter = bvLowered
        BevelWidth = 3
        Color = clWhite
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object ImgIcon_2: TImage
          Left = 3
          Top = 3
          Width = 45
          Height = 45
          Align = alClient
          Center = True
          Picture.Data = {binary 10140 bytes}
        end
      end
    end
  end
end
