object FrmCadEditor_Propriedades: TFrmCadEditor_Propriedades
  Left = 273
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Propriedades'
  ClientHeight = 173
  ClientWidth = 379
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 173
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 358
    Height = 173
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 143
      Width = 353
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 179
      Top = 146
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 265
      Top = 146
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 346
      Height = 64
      Caption = 'Fundo'
      TabOrder = 2
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 28
        Height = 13
        Caption = 'Estilo:'
      end
      object Label2: TLabel
        Left = 148
        Top = 13
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object CbExFundoEstilo: TComboBoxEx
        Left = 10
        Top = 30
        Width = 135
        Height = 22
        ItemsEx = <
          item
            Caption = 'Preenchido'
            ImageIndex = 0
            SelectedImageIndex = 0
          end
          item
            Caption = 'Nenhum'
          end
          item
            Caption = 'Horizontal'
            ImageIndex = 6
            SelectedImageIndex = 6
          end
          item
            Caption = 'Vertical'
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = 'Diagonal 1'
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = 'Diagonal 2'
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = 'Grid'
            ImageIndex = 5
            SelectedImageIndex = 5
          end
          item
            Caption = 'Grid Diagonal'
            ImageIndex = 4
            SelectedImageIndex = 4
          end>
        Style = csExDropDownList
        ItemHeight = 16
        TabOrder = 0
        OnChange = CbExFundoEstiloChange
        Images = ImgListFundoEstilo
        DropDownCount = 8
      end
      object ColorBoxFundo: TColorBox
        Left = 148
        Top = 29
        Width = 135
        Height = 22
        Hint = 'Cor de Fundo'
        AutoDropDown = True
        Selected = clMoneyGreen
        Style = [cbStandardColors, cbExtendedColors, cbCustomColor, cbPrettyNames]
        Constraints.MinWidth = 120
        ItemHeight = 16
        TabOrder = 1
        OnChange = ColorBoxFundoChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 75
      Width = 346
      Height = 64
      Caption = 'Linha / Borda'
      TabOrder = 3
      object Label3: TLabel
        Left = 10
        Top = 15
        Width = 28
        Height = 13
        Caption = 'Estilo:'
      end
      object Label4: TLabel
        Left = 148
        Top = 13
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object Label5: TLabel
        Left = 285
        Top = 13
        Width = 52
        Height = 13
        Caption = 'Espessura:'
      end
      object CbExLinhaEstilo: TComboBoxEx
        Left = 10
        Top = 30
        Width = 135
        Height = 22
        ItemsEx = <
          item
            Caption = 'Continuo'
            ImageIndex = 0
            SelectedImageIndex = 0
          end
          item
            Caption = 'Nenhum'
          end
          item
            Caption = 'Tra'#231'o'
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = 'Pontilhado'
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = 'Tra'#231'o Ponto'
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = 'Tra'#231'o Ponto Ponto'
            ImageIndex = 2
            SelectedImageIndex = 2
          end>
        Style = csExDropDownList
        ItemHeight = 16
        TabOrder = 0
        OnChange = CbExLinhaEstiloChange
        Images = ImgListLinhaEstilo
        DropDownCount = 8
      end
      object ColorBoxLinha: TColorBox
        Left = 148
        Top = 29
        Width = 135
        Height = 22
        Hint = 'Cor de Fundo'
        AutoDropDown = True
        Style = [cbStandardColors, cbExtendedColors, cbCustomColor, cbPrettyNames]
        Constraints.MinWidth = 120
        ItemHeight = 16
        TabOrder = 1
        OnChange = ColorBoxLinhaChange
      end
      object EdtPenWidth: TCurrencyEdit
        Left = 285
        Top = 28
        Width = 41
        Height = 21
        AutoSize = False
        DisplayFormat = '0.##'
        TabOrder = 2
      end
    end
  end
  object ImgListFundoEstilo: TImageList
    Left = 336
    Top = 15
    Bitmap = {binary 12838 bytes}
  end
  object ImgListLinhaEstilo: TImageList
    Width = 25
    Left = 26
    Top = 140
    Bitmap = {binary 20134 bytes}
  end
end
