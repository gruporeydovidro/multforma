object FrmCadEditor: TFrmCadEditor
  Left = 263
  Top = 135
  Width = 725
  Height = 521
  Caption = 'Editor de Desenhos'
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 487
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 696
    Height = 487
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 143
      Top = 27
      Width = 5
      Height = 429
      Color = clSilver
      ParentColor = False
    end
    object PnlBottom: TPanel
      Left = 1
      Top = 456
      Width = 694
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      OnResize = PnlBottomResize
      object BvlSeparator: TBevel
        Left = 1
        Top = 1
        Width = 691
        Height = 5
        Shape = bsTopLine
      end
      object BitBtnConfirm: TBitBtn
        Left = 521
        Top = 4
        Width = 85
        Height = 25
        Caption = 'C&onfirmar'
        ModalResult = 1
        TabOrder = 0
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
      object BitBtnCancel: TBitBtn
        Left = 607
        Top = 4
        Width = 85
        Height = 25
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 1
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
    end
    object PnlControls: TPanel
      Left = 1
      Top = 27
      Width = 142
      Height = 429
      Align = alLeft
      Constraints.MinWidth = 50
      ParentColor = True
      TabOrder = 1
      object ScrollBoxDesenho: TScrollBox
        Left = 1
        Top = 1
        Width = 140
        Height = 427
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        OnResize = ScrollBoxDesenhoResize
        object Bevel1: TBevel
          Left = 2
          Top = 182
          Width = 135
          Height = 5
          Shape = bsTopLine
        end
        object Label1: TLabel
          Left = 2
          Top = 236
          Width = 67
          Height = 13
          Caption = 'Cor de Fundo:'
        end
        object Bevel2: TBevel
          Left = 2
          Top = 232
          Width = 135
          Height = 5
          Shape = bsTopLine
        end
        object Label2: TLabel
          Left = 2
          Top = 276
          Width = 63
          Height = 13
          Caption = 'Cor da Linha:'
        end
        object BtnSelecionar: TBitBtn
          Left = 2
          Top = 2
          Width = 135
          Height = 21
          Hint = 'Ferramenta de Sele'#231#227'o'
          Caption = '&Selecionar'
          Constraints.MinWidth = 120
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnSelecionarClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnRetangulo: TBitBtn
          Left = 2
          Top = 24
          Width = 135
          Height = 21
          Hint = 'Criar um Ret'#226'ngulo'
          Caption = '&Ret'#226'ngulo'
          Constraints.MinWidth = 120
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnRetanguloClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnCirculo: TBitBtn
          Left = 2
          Top = 46
          Width = 135
          Height = 21
          Hint = 'Criar um Circulo'
          Caption = '&Circulo'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnCirculoClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnEclipse: TBitBtn
          Left = 2
          Top = 68
          Width = 135
          Height = 21
          Hint = 'Criar uma Elipse'
          Caption = '&Elipse'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BtnEclipseClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnPoligono: TBitBtn
          Left = 2
          Top = 90
          Width = 135
          Height = 21
          Hint = 'Criar um Poligono'
          Caption = '&Poligono'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BtnPoligonoClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnArco: TBitBtn
          Left = 2
          Top = 112
          Width = 135
          Height = 21
          Hint = 'Criar um Arco'
          Caption = '&Arco'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BtnArcoClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnBezier: TBitBtn
          Left = 2
          Top = 134
          Width = 135
          Height = 21
          Hint = 'Linhas (Bezier)'
          Caption = 'Linha &Bezier'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BtnBezierClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnDesenhoLivre: TBitBtn
          Left = 2
          Top = 156
          Width = 135
          Height = 21
          Hint = 'Fazer um Desenho Livre'
          Caption = '&Desenho Livre'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnDesenhoLivreClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object BtnImagem: TBitBtn
          Left = 2
          Top = 207
          Width = 135
          Height = 21
          Hint = 'Inserir Imagem'
          Caption = '&Imagem'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BtnImagemClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
        object ColorBoxFundo: TColorBox
          Left = 2
          Top = 251
          Width = 135
          Height = 22
          Hint = 'Cor de Fundo'
          AutoDropDown = True
          Selected = clMoneyGreen
          Style = [cbStandardColors, cbExtendedColors, cbCustomColor, cbPrettyNames]
          Constraints.MinWidth = 120
          ItemHeight = 16
          TabOrder = 9
          OnChange = ColorBoxFundoChange
        end
        object ColorBoxLinha: TColorBox
          Left = 2
          Top = 291
          Width = 135
          Height = 22
          Hint = 'Cor de Fundo'
          AutoDropDown = True
          Style = [cbStandardColors, cbExtendedColors, cbCustomColor, cbPrettyNames]
          Constraints.MinWidth = 120
          ItemHeight = 16
          TabOrder = 10
          OnChange = ColorBoxLinhaChange
        end
        object BitBtnTexto: TBitBtn
          Left = 2
          Top = 185
          Width = 135
          Height = 21
          Hint = 'Inserir um Texto'
          Caption = '&Texto'
          Constraints.MinWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = BitBtnTextoClick
          Glyph.Data = {binary 1082 bytes}
          Margin = 5
        end
      end
    end
    object PnlDesenho: TPanel
      Left = 148
      Top = 27
      Width = 547
      Height = 429
      Align = alClient
      Caption = 'PnlDesenho'
      TabOrder = 2
      object CadEditor: TSCDeEditor
        Left = 1
        Top = 1
        Width = 545
        Height = 427
        Align = alClient
        BorderProps.Border = scdcbFlat
        BorderProps.Color = clBtnFace
        Color = clSilver
        DefaultBrush.Color = clSilver
        DefaultFont.Name = 'Arial'
        Grid.GridType = scgtNone
        Grid.X = 5
        Grid.Y = 5
        Hottrack.LineStyle = psDot
        KeyMoveSizeStep = 1.0
        Layer.Width = 566
        Layer.Height = 340
        PopupMenu = PopMenCadEditor
        Rulers.Font.Charset = DEFAULT_CHARSET
        Rulers.Font.Color = clWindowText
        Rulers.Font.Height = -11
        Rulers.Font.Name = 'MS Sans Serif'
        Rulers.Font.Style = []
        Scrollbars.Horizontal.Track = True
        Scrollbars.Style = scssFlat
        Scrollbars.Vertical.Track = True
        SelectionRect.LineColor = clActiveCaption
        TabOrder = 0
        Zoom = 80
        OnDblClick = CadEditorDblClick
        OnEndNewShape = CadEditorEndNewShape
      end
    end
    object ActTools: TActionToolBar
      Left = 1
      Top = 1
      Width = 694
      Height = 26
      Cursor = crHandPoint
      ActionManager = ActionManager
      Caption = '0'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActDesfazer
            ImageIndex = 0
            ShortCut = 16474
          end
          item
            Action = ActRefazer
            ImageIndex = 1
            ShortCut = 24666
          end
          item
            Caption = '-'
          end
          item
            Action = ActCortar
            ImageIndex = 4
            ShortCut = 16472
          end
          item
            Action = ActCopiar
            ImageIndex = 2
            ShortCut = 16451
          end
          item
            Action = ActColar
            ImageIndex = 3
            ShortCut = 16470
          end
          item
            Caption = '-'
          end
          item
            Action = ActTrazerFrente
            ImageIndex = 5
          end
          item
            Action = ActEnviarTras
            ImageIndex = 8
          end
          item
            Action = ActAvancar
            ImageIndex = 6
          end
          item
            Action = ActRecuar
            ImageIndex = 7
          end
          item
            Caption = '-'
          end
          item
            Action = ActAgrupar
            ImageIndex = 10
            ShortCut = 16455
          end
          item
            Action = ActDesagrupar
            ImageIndex = 9
            ShortCut = 24647
          end
          item
            Caption = '-'
          end
          item
            Action = ActZoomIn
            ImageIndex = 11
          end
          item
            Items = <
              item
                Action = ActZoom200
                Caption = '&Zoom 200%'
              end
              item
                Action = ActZoom150
                Caption = 'Z&oom 150%'
              end
              item
                Action = ActZoom100
                Caption = 'Zoo&m 100%'
              end
              item
                Action = ActZoom50
                Caption = 'Zoom &50%'
              end
              item
                Action = ActZoom25
                Caption = 'Zoom &25%'
              end
              item
                Action = ActZoom10
                Caption = 'Zoom &10%'
              end>
            Action = ActZoom
            ImageIndex = 13
          end
          item
            Action = ActZoomOut
            ImageIndex = 12
          end
          item
            Caption = '-'
          end
          item
            Action = ActDesenhoConfiguracao
            ImageIndex = 18
          end>
        ActionBar = ActTools
      end>
    Images = ImageList
    Left = 651
    Top = 7
    StyleName = 'XP Style'
    object ActDesfazer: TAction
      Category = '1 - Editar'
      Hint = 'Desfazer'
      ImageIndex = 0
      ShortCut = 16474
      OnExecute = ActDesfazerExecute
    end
    object ActRefazer: TAction
      Category = '1 - Editar'
      Hint = 'Refazer'
      ImageIndex = 1
      ShortCut = 24666
      OnExecute = ActRefazerExecute
    end
    object ActCopiar: TAction
      Category = '1 - Editar'
      Hint = 'Copiar'
      ImageIndex = 2
      ShortCut = 16451
      OnExecute = ActCopiarExecute
    end
    object ActColar: TAction
      Category = '1 - Editar'
      Hint = 'Colar'
      ImageIndex = 3
      ShortCut = 16470
      OnExecute = ActColarExecute
    end
    object ActCortar: TAction
      Category = '1 - Editar'
      Hint = 'Cortar'
      ImageIndex = 4
      ShortCut = 16472
      OnExecute = ActCortarExecute
    end
    object ActTrazerFrente: TAction
      Category = '1 - Editar'
      Hint = 'Trazer para Frente'
      ImageIndex = 5
      OnExecute = ActTrazerFrenteExecute
    end
    object ActEnviarTras: TAction
      Category = '1 - Editar'
      Hint = 'Enviar pra Tr'#225's'
      ImageIndex = 8
      OnExecute = ActEnviarTrasExecute
    end
    object ActAvancar: TAction
      Category = '1 - Editar'
      Hint = 'Avan'#231'ar uma Posi'#231#227'o'
      ImageIndex = 6
      OnExecute = ActAvancarExecute
    end
    object ActRecuar: TAction
      Category = '1 - Editar'
      Hint = 'Recuar uma Posi'#231#227'o'
      ImageIndex = 7
      OnExecute = ActRecuarExecute
    end
    object ActAgrupar: TAction
      Category = '1 - Editar'
      Hint = 'Agrupar Sele'#231#227'o'
      ImageIndex = 10
      ShortCut = 16455
      OnExecute = ActAgruparExecute
    end
    object ActDesagrupar: TAction
      Category = '1 - Editar'
      Hint = 'Desagrupar Sele'#231#227'o'
      ImageIndex = 9
      ShortCut = 24647
      OnExecute = ActDesagruparExecute
    end
    object ActZoomIn: TAction
      Category = '1 - Editar'
      Hint = 'Mais Zoom'
      ImageIndex = 11
      OnExecute = ActZoomInExecute
    end
    object ActZoomOut: TAction
      Category = '1 - Editar'
      Hint = 'Menos Zoom'
      ImageIndex = 12
      OnExecute = ActZoomOutExecute
    end
    object ActZoom: TAction
      Category = '1 - Editar'
      Hint = 'Selecionar '#193'rea de Zoom'
      ImageIndex = 13
      OnExecute = ActZoomExecute
    end
    object ActSalvar: TAction
      Hint = 'Salvar como...'
      ImageIndex = 16
    end
    object ActAbrir: TAction
      Hint = 'Abrir arquivo...'
      ImageIndex = 15
    end
    object ActDel: TAction
      Category = '1 - Editar'
      Hint = 'Exclui o(s) Item(ns) Selecionado(s)'
      ImageIndex = 17
      ShortCut = 46
      OnExecute = ActDelExecute
    end
    object ActZoom10: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 10%'
      OnExecute = ActZoom10Execute
    end
    object ActZoom25: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 25%'
      OnExecute = ActZoom25Execute
    end
    object ActZoom50: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 50%'
      OnExecute = ActZoom50Execute
    end
    object ActZoom100: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 100%'
      OnExecute = ActZoom100Execute
    end
    object ActZoom200: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 200%'
      OnExecute = ActZoom200Execute
    end
    object ActZoom150: TAction
      Category = '2 - Zoom'
      Caption = 'Zoom 150%'
      OnExecute = ActZoom150Execute
    end
    object ActDesenhoConfiguracao: TAction
      Hint = 'Configurar Op'#231#245'es do Desenho'
      ImageIndex = 18
      OnExecute = ActDesenhoConfiguracaoExecute
    end
  end
  object ImageList: TImageList
    Left = 621
    Top = 8
    Bitmap = {binary 25510 bytes}
  end
  object PopMenCadEditor: TPopupMenu
    Images = ImageList
    OnPopup = PopMenCadEditorPopup
    Left = 240
    Top = 408
    object ItemMenAgrupar: TMenuItem
      Caption = 'Agrupar'
      ImageIndex = 10
      OnClick = ItemMenAgruparClick
    end
    object ItemMenDesagrupar: TMenuItem
      Caption = 'Desagrupar'
      ImageIndex = 9
      OnClick = ItemMenDesagruparClick
    end
    object Ordenar1: TMenuItem
      Caption = 'Ordenar'
      object ItemMenTrazerFrente: TMenuItem
        Caption = 'Trazer para Frente'
        ImageIndex = 5
        OnClick = ItemMenTrazerFrenteClick
      end
      object ItemMenEnviarTras: TMenuItem
        Caption = 'Enviar pra Tr'#225's'
        ImageIndex = 8
        OnClick = ItemMenEnviarTrasClick
      end
      object ItemMenAvancar: TMenuItem
        Caption = 'Avan'#231'ar uma Posi'#231#227'o'
        ImageIndex = 6
        OnClick = ItemMenAvancarClick
      end
      object ItemMenRecuar: TMenuItem
        Caption = 'Recuar uma Posi'#231#227'o'
        ImageIndex = 7
        OnClick = ItemMenRecuarClick
      end
    end
    object ItemMenExcluir: TMenuItem
      Caption = 'Excluir'
      ImageIndex = 17
      OnClick = ItemMenExcluirClick
    end
    object N1: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object ItemMenPropriedades: TMenuItem
      Caption = 'Propriedades...'
      OnClick = ItemMenPropriedadesClick
    end
  end
end
