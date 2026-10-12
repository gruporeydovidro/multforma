object FrmLerScanner: TFrmLerScanner
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Captura imagem do Scanner'
  ClientHeight = 550
  ClientWidth = 822
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 550
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 801
    Height = 550
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 753
    object Panel1: TPanel
      Left = 610
      Top = 1
      Width = 190
      Height = 548
      Align = alRight
      ParentColor = True
      TabOrder = 0
      ExplicitLeft = 562
      object GrpBoxOptions: TGroupBox
        Left = 8
        Top = 64
        Width = 174
        Height = 201
        Caption = ' Op'#231#245'es '
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 120
          Width = 31
          Height = 13
          Caption = 'DPI-Y:'
        end
        object Label2: TLabel
          Left = 8
          Top = 144
          Width = 31
          Height = 13
          Caption = 'DPI-X:'
        end
        object Label3: TLabel
          Left = 8
          Top = 168
          Width = 32
          Height = 13
          Caption = 'Colors:'
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 16
          Width = 153
          Height = 17
          Caption = 'Visualizar Caixa de Dialogo'
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 44
          Top = 116
          Width = 53
          Height = 19
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 44
          Top = 140
          Width = 53
          Height = 19
          TabOrder = 2
        end
        object ComboBox2: TComboBox
          Left = 44
          Top = 164
          Width = 110
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
        end
        object CheckBox2: TCheckBox
          Left = 8
          Top = 40
          Width = 161
          Height = 17
          Caption = 'Visualizar barra de progresso'
          TabOrder = 4
        end
        object CheckBox3: TCheckBox
          Left = 8
          Top = 64
          Width = 153
          Height = 17
          Caption = 'Exibir imagem em tempo real'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object CheckBox4: TCheckBox
          Left = 8
          Top = 88
          Width = 153
          Height = 17
          Caption = 'Transferencia por Buffer'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
      end
      object GrpBoxSelect: TGroupBox
        Left = 8
        Top = 8
        Width = 174
        Height = 49
        Caption = ' Selecione o Scanner '
        TabOrder = 1
        object ComboBox1: TComboBox
          Left = 16
          Top = 16
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBox1Change
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 272
        Width = 175
        Height = 129
        Caption = ' Tamanho da Imagem (polegadas) '
        TabOrder = 2
        object Label4: TLabel
          Left = 8
          Top = 21
          Width = 48
          Height = 13
          Caption = 'Esquerda:'
        end
        object Label5: TLabel
          Left = 8
          Top = 40
          Width = 28
          Height = 13
          Caption = 'Topo:'
        end
        object Label6: TLabel
          Left = 8
          Top = 62
          Width = 33
          Height = 13
          Caption = 'Direita:'
        end
        object Label7: TLabel
          Left = 8
          Top = 84
          Width = 41
          Height = 13
          Caption = 'Rodap'#233':'
        end
        object Edit3: TEdit
          Left = 56
          Top = 16
          Width = 96
          Height = 19
          Enabled = False
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 56
          Top = 38
          Width = 96
          Height = 19
          Enabled = False
          TabOrder = 1
        end
        object Edit5: TEdit
          Left = 56
          Top = 60
          Width = 96
          Height = 19
          Enabled = False
          TabOrder = 2
        end
        object Edit6: TEdit
          Left = 56
          Top = 82
          Width = 96
          Height = 19
          Enabled = False
          TabOrder = 3
        end
        object CheckBox5: TCheckBox
          Left = 8
          Top = 106
          Width = 97
          Height = 17
          Caption = 'Habilitado'
          TabOrder = 4
          OnClick = CheckBox5Click
        end
      end
      object Button1: TButton
        Left = 56
        Top = 440
        Width = 75
        Height = 25
        Caption = 'Capturar'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 24
        Top = 408
        Width = 137
        Height = 25
        Caption = 'Negociar Parametros'
        TabOrder = 4
        OnClick = Button2Click
      end
      object ProgressBar1: TProgressBar
        Left = 8
        Top = 472
        Width = 177
        Height = 17
        TabOrder = 5
      end
      object BitBtnConfirm: TBitBtn
        Left = 17
        Top = 521
        Width = 85
        Height = 25
        Caption = 'C&onfirmar'
        Enabled = False
        ModalResult = 1
        TabOrder = 6
        OnClick = BitBtnConfirmClick
        Glyph.Data = {binary 482 bytes}
        NumGlyphs = 2
      end
      object BitBtnCancel: TBitBtn
        Left = 103
        Top = 521
        Width = 85
        Height = 25
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 7
        Glyph.Data = {binary 482 bytes}
        NumGlyphs = 2
      end
    end
    object ImgEnView: TImageEnView
      Left = 1
      Top = 1
      Width = 609
      Height = 548
      ParentCtl3D = False
      MouseInteract = [miZoom, miScroll]
      OnProgress = ImgEnViewProgress
      ImageEnVersion = '3.1.2'
      EnableInteractionHints = True
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 561
    end
  end
end
