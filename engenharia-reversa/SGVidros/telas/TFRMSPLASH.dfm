object FrmSplash: TFrmSplash
  Left = 392
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Sobre...'
  ClientHeight = 330
  ClientWidth = 520
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ImgFundo: TImage
    Left = 0
    Top = 0
    Width = 520
    Height = 330
    Align = alClient
    Center = True
    ExplicitTop = -8
  end
  object LblShortName: TLabel
    Left = 3
    Top = 8
    Width = 41
    Height = 25
    Caption = 'SGE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 4
    Top = 216
    Width = 511
    Height = 5
    Shape = bsTopLine
  end
  object LblFullName: TLabel
    Left = 7
    Top = 40
    Width = 169
    Height = 13
    Caption = 'SGE - Sistema de Gest'#227'o Comercial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblVersion: TLabel
    Left = 8
    Top = 56
    Width = 204
    Height = 13
    Caption = 'Vers'#227'o 2.1 (Compilacao 5.20.11.098 Build  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 7
    Top = 70
    Width = 204
    Height = 13
    Caption = 'Copyright '#169' 2002 Multforma Software Ltda.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 7
    Top = 130
    Width = 161
    Height = 13
    Caption = 'Este produto est'#225' licenciado para:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblLicenca: TLabel
    Left = 12
    Top = 146
    Width = 56
    Height = 13
    Caption = 'Meu Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 7
    Top = 225
    Width = 204
    Height = 13
    Caption = 'Mem'#243'ria f'#237'sica dispon'#237'vel para o Windows:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblFreeMem: TLabel
    Left = 417
    Top = 225
    Width = 91
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '260.640 KB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblLoad: TLabel
    Left = 352
    Top = 306
    Width = 156
    Height = 19
    Alignment = taRightJustify
    Caption = 'Carregando o sistema...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object SbClose: TSpeedButton
    Left = 436
    Top = 303
    Width = 76
    Height = 22
    Caption = 'Sair'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    Glyph.Data = {binary 486 bytes}
    ParentFont = False
    OnClick = SbCloseClick
  end
  object LblOsVersion: TLabel
    Left = 7
    Top = 238
    Width = 148
    Height = 13
    Caption = 'Vers'#227'o do Sistema Operacional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblValid: TLabel
    Left = 7
    Top = 100
    Width = 102
    Height = 13
    Caption = 'Valida'#231#227'o do Sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 7
    Top = 84
    Width = 120
    Height = 13
    Caption = 'Telefone: (27) 3329-6783'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LblPrograma: TLabel
    Left = 264
    Top = 75
    Width = 253
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Multforma SG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object LblId_Cliente: TLabel
    Left = 12
    Top = 159
    Width = 61
    Height = 13
    Caption = 'ID do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object LblDs_Valid: TLabel
    Left = 12
    Top = 171
    Width = 91
    Height = 13
    Caption = 'Validade do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object PnlApp: TPanel
    Left = 445
    Top = 3
    Width = 72
    Height = 72
    BevelInner = bvLowered
    BevelWidth = 5
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object ImgIcon: TImage
      Left = 10
      Top = 10
      Width = 48
      Height = 48
      Align = alClient
      Center = True
      ExplicitLeft = 35
      ExplicitTop = 3
    end
  end
end
