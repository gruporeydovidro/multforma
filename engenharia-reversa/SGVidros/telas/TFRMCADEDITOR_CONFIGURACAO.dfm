object FrmCadEditor_Configuracao: TFrmCadEditor_Configuracao
  Left = 273
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Op'#231#245'es do Desenho'
  ClientHeight = 249
  ClientWidth = 371
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 249
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 350
    Height = 249
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 218
      Width = 343
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 174
      Top = 221
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 260
      Top = 221
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 321
      Height = 76
      Caption = 'Tamanho do Desenho'
      TabOrder = 0
      object Image1: TImage
        Left = 76
        Top = 20
        Width = 21
        Height = 21
        Center = True
        Picture.Data = {binary 834 bytes}
        Transparent = True
      end
      object Image2: TImage
        Left = 76
        Top = 45
        Width = 21
        Height = 21
        Center = True
        Picture.Data = {binary 834 bytes}
        Transparent = True
      end
      object ImgLockProporcao: TImage
        Left = 284
        Top = 25
        Width = 31
        Height = 36
        Center = True
        Picture.Data = {binary 3234 bytes}
        Transparent = True
        Visible = False
      end
      object EdtAltura: TCurrencyEdit
        Left = 99
        Top = 45
        Width = 41
        Height = 21
        AutoSize = False
        DisplayFormat = '0.##'
        TabOrder = 1
        OnExit = EdtAlturaExit
      end
      object CbLargura: TComboBox
        Left = 143
        Top = 20
        Width = 140
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnCloseUp = CbLarguraCloseUp
        OnEnter = CbLarguraEnter
        Items.Strings = (
          'Pixels'
          'Cent'#237'metros'
        )
      end
      object CbAltura: TComboBox
        Left = 143
        Top = 45
        Width = 140
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        OnCloseUp = CbAlturaCloseUp
        OnEnter = CbAlturaEnter
        Items.Strings = (
          'Pixels'
          'Cent'#237'metros'
        )
      end
      object EdtLargura: TCurrencyEdit
        Left = 99
        Top = 20
        Width = 41
        Height = 21
        AutoSize = False
        DisplayFormat = '0.##'
        TabOrder = 0
        OnExit = EdtLarguraExit
      end
    end
    object ChkBLockProporcao: TCheckBox
      Left = 5
      Top = 200
      Width = 111
      Height = 17
      Caption = 'Manter Propor'#231#227'o'
      TabOrder = 2
      Visible = False
      OnClick = ChkBLockProporcaoClick
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 90
      Width = 321
      Height = 106
      Caption = 'Op'#231#245'es de Visualiza'#231#227'o'
      TabOrder = 1
      object Label1: TLabel
        Left = 5
        Top = 55
        Width = 88
        Height = 13
        Caption = 'Medida da R'#233'gua:'
      end
      object Label2: TLabel
        Left = 5
        Top = 15
        Width = 61
        Height = 13
        Caption = 'Tipo de Grid:'
      end
      object Label3: TLabel
        Left = 139
        Top = 15
        Width = 85
        Height = 13
        Caption = 'Tamanho do Grid:'
      end
      object Label4: TLabel
        Left = 139
        Top = 34
        Width = 10
        Height = 13
        Caption = 'X:'
      end
      object Label5: TLabel
        Left = 184
        Top = 34
        Width = 10
        Height = 13
        Caption = 'Y:'
      end
      object CbMedidaRegua: TComboBox
        Left = 5
        Top = 70
        Width = 126
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          'Pixels'
          'Cent'#237'metros'
        )
      end
      object CbTipoGrid: TComboBox
        Left = 5
        Top = 30
        Width = 126
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'Nenhum'
          'Linha'
          'Pontilhado'
        )
      end
      object EdtGridX: TCurrencyEdit
        Left = 152
        Top = 30
        Width = 25
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 1
      end
      object EdtGridY: TCurrencyEdit
        Left = 197
        Top = 30
        Width = 25
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 2
      end
    end
  end
end
