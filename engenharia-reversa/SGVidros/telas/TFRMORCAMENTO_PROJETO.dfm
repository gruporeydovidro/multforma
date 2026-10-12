object FrmOrcamento_Projeto: TFrmOrcamento_Projeto
  Left = 305
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Projetos do Or'#231'amento'
  ClientHeight = 452
  ClientWidth = 774
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
    Height = 452
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 452
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 422
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 23
      Height = 13
      Caption = 'Item:'
    end
    object Label10: TLabel
      Left = 49
      Top = 30
      Width = 36
      Height = 13
      Caption = 'Projeto:'
    end
    object SbProjeto: TSpeedButton
      Left = 99
      Top = 45
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProjetoClick
    end
    object Label4: TLabel
      Left = 5
      Top = 68
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 67
      Top = 68
      Width = 85
      Height = 13
      Caption = 'Prazo de Entrega:'
    end
    object Label3: TLabel
      Left = 108
      Top = 82
      Width = 32
      Height = 13
      Caption = 'dia(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 102
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label6: TLabel
      Left = 156
      Top = 68
      Width = 47
      Height = 13
      Caption = 'Ambiente:'
    end
    object Label7: TLabel
      Left = 413
      Top = 68
      Width = 78
      Height = 13
      Caption = 'Valor do Projeto:'
    end
    object Label9: TLabel
      Left = 498
      Top = 68
      Width = 58
      Height = 13
      Caption = 'Partes (mm):'
    end
    object DbTxtNm_Produto: TDBText
      Left = 13
      Top = 428
      Width = 88
      Height = 13
      AutoSize = True
      DataField = 'Nm_Produto'
      DataSource = DsItem
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 751
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 8
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 751
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 425
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 425
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 10
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Projeto: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtCd_Projeto: TCurrencyEdit
      Tag = 1
      Left = 49
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_ProjetoExit
      OnKeyDown = EdtCd_ProjetoKeyDown
    end
    object EdtNm_Projeto: TEdit
      Left = 123
      Top = 45
      Width = 410
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtQt_Projeto: TCurrencyEdit
      Left = 5
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object EdtNr_PrazoEntrega: TCurrencyEdit
      Left = 67
      Top = 82
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#'
      MaxValue = 32767.0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object Mm_Observacao: TMemo
      Left = 5
      Top = 117
      Width = 488
      Height = 56
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object CbAmbiente: TComboBox
      Left = 156
      Top = 82
      Width = 250
      Height = 21
      ItemHeight = 13
      MaxLength = 30
      Sorted = True
      TabOrder = 5
      Items.Strings = (
        'Banheiro'
        'Cozinha'
        'Hall de Entrada'
        'Quarto'
        'Sala'
        'Sala de Estar'
      )
    end
    object EdtVl_Projeto: TCurrencyEdit
      Left = 413
      Top = 82
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DbGParte: TDBGrid
      Left = 498
      Top = 82
      Width = 238
      Height = 90
      DataSource = DsParte
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParteDblClick
      OnEnter = DbGVidrosEnter
      OnExit = DbGVidrosExit
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Ds_Parte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = True
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end>
    end
    object PgCtItem: TPageControl
      Left = 6
      Top = 179
      Width = 741
      Height = 241
      ActivePage = TabSVidros
      TabOrder = 12
      OnChange = PgCtItemChange
      object TabSVidros: TTabSheet
        Tag = 1
        Caption = '               Vidros               '
        object DbGVidros: TDBGrid
          Left = 4
          Top = 2
          Width = 727
          Height = 210
          DataSource = DsItem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGVidrosEnter
          OnExit = DbGVidrosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Dp_Peca'
              Width = 178
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_largura'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Largura_Folga'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Altura'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Altura_Folga'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Parte'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
      end
      object TabSFerragem: TTabSheet
        Caption = '               Ferragem               '
        ImageIndex = 1
        object DbGFerragem: TDBGrid
          Left = 4
          Top = 2
          Width = 727
          Height = 210
          DataSource = DsItem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGVidrosEnter
          OnExit = DbGVidrosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 360
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Unidade'
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end>
        end
      end
      object TabSPerfil: TTabSheet
        Caption = '               Perfil               '
        ImageIndex = 2
        object DbGPerfil: TDBGrid
          Left = 3
          Top = 3
          Width = 727
          Height = 210
          DataSource = DsItem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGVidrosEnter
          OnExit = DbGVidrosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Parte'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Altura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_largura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Unidade'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end>
        end
      end
      object TabSServico: TTabSheet
        Caption = '            Servi'#231'os            '
        ImageIndex = 3
        object DbGServicos: TDBGrid
          Left = 4
          Top = 2
          Width = 727
          Height = 210
          DataSource = DsItem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGVidrosEnter
          OnExit = DbGVidrosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 360
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Unidade'
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end>
        end
      end
      object TabSKitBox: TTabSheet
        Caption = '          KitBox          '
        ImageIndex = 4
        object DbGKitBox: TDBGrid
          Left = 4
          Top = 2
          Width = 727
          Height = 210
          DataSource = DsItem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGVidrosEnter
          OnExit = DbGVidrosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 360
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Unidade'
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end>
        end
      end
    end
    object ActToolBarItem: TActionToolBar
      Left = 644
      Top = 173
      Width = 104
      Height = 26
      ActionManager = ActManCadastro
      Align = alNone
      Caption = 'ActToolBarItem'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Spacing = 0
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Caption = '-'
          end
          item
            Action = ActDesenho
            ImageIndex = 51
            ShortCut = 118
          end
          item
            Action = ActImagem
            ImageIndex = 9
            ShortCut = 119
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActItemIns
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActItemEdit
            ImageIndex = 18
            ShortCut = 16499
          end
          item
            Action = ActItemDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActItemChange
            ImageIndex = 35
          end>
        ActionBar = ActToolBarItem
      end>
    Images = FrmMain.ImgLstMenu
    Left = 645
    Top = 10
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
    end
    object ActDesenho: TAction
      Category = '2-Database'
      Hint = 'Desenho do Projeto'
      ImageIndex = 51
      ShortCut = 118
      OnExecute = ActDesenhoExecute
    end
    object ActImagem: TAction
      Category = '2-Database'
      Hint = 'Visualizar a Imagem do Projeto'
      ImageIndex = 9
      ShortCut = 119
      OnExecute = ActImagemExecute
    end
    object ActItemIns: TAction
      Category = '3-Item'
      Hint = 'Incluir Item'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActItemInsExecute
    end
    object ActItemEdit: TAction
      Category = '3-Item'
      Hint = 'Alterar o Item'
      ImageIndex = 18
      ShortCut = 16499
      OnExecute = ActItemEditExecute
    end
    object ActItemDel: TAction
      Category = '3-Item'
      Hint = 'Excluir o Item'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActItemDelExecute
    end
    object ActItemChange: TAction
      Category = '3-Item'
      Hint = 'Troca de Todos os Itens'
      ImageIndex = 35
      OnExecute = ActItemChangeExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Projeto, OP.Cd_Projeto, P.Nm_Projeto, OP.Qt_Projeto, '#13#10'  OP.Mm_Observacao, OP.Ds_Ambiente, OP.Nr_PrazoEntrega, OP.Vl_Projeto, P.Cd_Produto,'#13#10'  Pr.Nm_Produto'#13#10#13#10'from'#13#10' Orcamento_Projeto OP'#13#10#13#10'inner join'#13#10'  Projeto P'#13#10'on'#13#10'  P.Cd_Projeto = OP.Cd_Projeto'#13#10#13#10'left join'#13#10'  Produto Pr'#13#10'on'#13#10'  Pr.Cd_Produto = P.Cd_Produto'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = :Nr_Projeto'#13#10'  '#13#10'order by'#13#10'  OP.Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 93
    Top = 388
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsDadosCd_Projeto: TSmallintField
      FieldName = 'Cd_Projeto'
    end
    object ADODsDadosNm_Projeto: TStringField
      FieldName = 'Nm_Projeto'
      Size = 100
    end
    object ADODsDadosQt_Projeto: TSmallintField
      FieldName = 'Qt_Projeto'
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 30
    end
    object ADODsDadosNr_PrazoEntrega: TSmallintField
      FieldName = 'Nr_PrazoEntrega'
    end
    object ADODsDadosVl_Projeto: TBCDField
      FieldName = 'Vl_Projeto'
      Precision = 18
      Size = 3
    end
    object ADODsDadosCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsDadosNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Projeto SmallInt,'
      '  @Cd_Projeto SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Projeto   = :Nr_Projeto,'
      '  @Cd_Projeto   = :Cd_Projeto'
      ''
      '-------------------- Inclui o projeto'
      'insert into Orcamento_Projeto( Cd_Filial, Nr_Orcamento, Nr_Projeto, Cd_Projeto,'
      '  Qt_Projeto, Mm_Observacao, Ds_Ambiente, Nr_PrazoEntrega )'
      'values( @Cd_Filial, @Nr_Orcamento, @Nr_Projeto, @Cd_Projeto, :Qt_Projeto,'
      '  :Mm_Observacao, :Ds_Ambiente, :Nr_PrazoEntrega )'
      ''
      '-------------------- Inclui as partes'
      'insert into Orcamento_Projeto_Parte( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '  Cd_Parte, Nr_Altura, Nr_Largura )'
      'select distinct'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_Projeto, Cd_Parte, 0, 0'
      ''
      'from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = @Cd_Projeto and'
      '  Tp_Item in ( ''''0'''', ''''2'''' ) and             ----- Alterado em 26/08/2013'''
      '  Cd_Parte is not null'
      ''
      '-------------------- Inserir os itens do projeto'
      'insert into Orcamento_Projeto_Item(Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '  Nr_Item, Tp_Item, Cd_Parte, Cd_Peca, Nr_Altura_Folga, Nr_Largura_Folga,'
      '  Cd_Produto, Sg_Unidade, Qt_Item, Nr_Item_Projeto, Vl_Unitario)'
      'select'
      '  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Projeto, PItem.Nr_Item, PItem.Tp_Item,'
      '  PItem.Cd_Parte, PItem.Cd_Peca, PItem.Nr_Altura_Folga, PItem.Nr_Largura_Folga,'
      '  PItem.Cd_Produto, PItem.Sg_Unidade, PItem.Qt_Item, PItem.Nr_Item, PP.Vl_Venda'
      ''
      'from'
      '  Orcamento_Projeto OP'
      ''
      'inner join'
      '  Projeto_Item PItem'
      'on'
      '  PItem.Cd_Projeto = OP.Cd_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PItem.Cd_Produto and'
      '  P.Fl_Ativo   = ''''1'''
      '  '
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OP.Cd_Filial and'
      '  O.Nr_Orcamento = OP.Nr_Orcamento'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela = O.Cd_Tabela and'
      '  PP.Cd_Produto = PItem.Cd_Produto'
      ''
      'where'
      '  OP.Cd_Filial    = @Cd_Filial and'
      '  OP.Nr_Orcamento = @Nr_Orcamento and'
      '  OP.Nr_Projeto   = @Nr_Projeto'
    )
    SQLUpdate.Strings = (
      '/* Atualizar um projeto */'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Projeto SmallInt,'
      '  @Cd_Projeto SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Projeto   = :Nr_Projeto,'
      '  @Cd_Projeto   = :Cd_Projeto'
      ''
      ''
      'update'
      '  Orcamento_Projeto'
      ''
      'set'
      '  Cd_Projeto      = @Cd_Projeto,'
      '  Qt_Projeto      = :Qt_Projeto,'
      '  Mm_Observacao   = :Mm_Observacao,'
      '  Ds_Ambiente     = :Ds_Ambiente,'
      '  Nr_PrazoEntrega = :Nr_PrazoEntrega'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Projeto   = @Nr_Projeto'
      ''
      '-------------------- Exclui as partes existentes'
      'delete from'
      '  Orcamento_Projeto_Partes'
      '  '
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Projeto   = @Nr_Projeto'
      ''
      '-------------------- Inclui as partes'
      'insert into Orcamento_Projeto_Parte( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '  Cd_Parte, Nr_Altura, Nr_Largura )'
      'select distinct'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_Projeto, Cd_Parte, 0, 0'
      ''
      'from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = @Cd_Projeto and'
      '  Cd_Parte is not null'
      ''
    )
    SQLDelete.Strings = (
      'delete from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto'
    )
    SQLOther1.Strings = (
      '-------------------- Excluir um item do projeto'
      'delete from'
      '  Orcamento_Projeto_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther2.Strings = (
      '/* Atualizar a Altura e Largura do item */'
      'update Orcamento_Projeto_Item set'
      '  Nr_Altura  = :Nr_Altura,'
      '  Nr_Largura = :Nr_Largura,'
      '  Qt_Item    = :Qt_Item'
      ''
      'where'
      '  Cd_Filial       = :Cd_Filial and'
      '  Nr_Orcamento    = :Nr_Orcamento and'
      '  Nr_Projeto      = :Nr_Projeto and'
      '  Nr_Item_Projeto = :Nr_Item_Projeto'
    )
    SQLOther3.Strings = (
      '/* Atualizar valor do projeto */'
      'update Orcamento_Projeto set'
      '  Vl_Projeto = :Vl_Projeto'
      '  '
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto'
      ''
    )
    SQLOther9.Strings = (
      '-------------------- Cria a table das formulada'
      '-- IMPORTANTE'
      '--     Apesar de pegar todos os itens, somente os de vidros poder'#227'o ser'
      '--     manipulados para refazer os calculos, os demais itens s'#227'o necess'#225'rios'
      '--     pois v'#227'o ser utilizados no calculo de area na procedure CalculoProjeto'
      ''
      'if Object_ID( ''''TempDB..##Tmp_Projeto'''' ) is null'
      '  create table ##Tmp_Projeto'
      '    ('
      '    Nr_SPID Int,'
      '    Nr_Item SmallInt not null,'
      '    Tp_Item Char( 1 ) not null,'
      '    Ds_Form_Altura VarChar( 30 ),'
      '    Ds_Form_Largura VarChar( 30 ),'
      '    Cd_Parte smallint,'
      '    Ds_Parte VarChar( 30 ),'
      '    Cd_Peca VarChar( 10 ),'
      '    Ds_Peca VarChar( 50 ),'
      '    Nr_Altura_Folga SmallInt,'
      '    Nr_Largura_Folga SmallInt'
      '    )'
      ''
      'else'
      '  delete from ##Tmp_Projeto where Nr_SPID = @@SPID'
      ''
      'insert into ##Tmp_Projeto( Nr_SPID, Nr_Item, Tp_Item, Ds_Form_Altura, Ds_Form_Largura,'
      '   Cd_Parte, Ds_Parte, Cd_Peca, Ds_Peca, Nr_Altura_Folga, Nr_Largura_Folga )'
      'select'
      '  @@SPID, PRI.Nr_Item, PRI.Tp_Item, PRI.Ds_Form_Altura, PRI.Ds_Form_Largura,'
      '  PRI.Cd_Parte, PP.Ds_Parte, PRI.Cd_Peca, PC.Ds_Peca, PRI.Nr_Altura_Folga,'
      '  PRI.Nr_Largura_Folga'
      ''
      'from'
      '  Projeto_Item PRI'
      ''
      'inner join'
      '  Projeto_Parte PP'
      'on'
      '  PP.Cd_Parte = PRI.Cd_Parte'
      ''
      'left join'
      '  Projeto_Peca PC'
      'on'
      '  PC.Cd_Peca = PRI.Cd_Peca'
      ''
      'where'
      '  PRI.Cd_Projeto = :Cd_Projeto'
    )
    Left = 123
    Top = 388
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Projeto'#13#10#13#10'from'#13#10'  Orcamento_Projeto'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Projeto ) + 1 as Nr_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Projeto'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   < :Nr_Projeto'
      ''
      'order by'
      '  Nr_Projeto desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   > :Nr_Projeto'
      ''
      'order by'
      '  Nr_Projeto'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
      ''
      'order by'
      '  Nr_Projeto desc'
    )
    Left = 32
    Top = 387
    object ADODsNavegarNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
  end
  object ADODsParte: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OPP.Cd_Filial, OPP.Nr_Orcamento, OPP.Nr_Projeto, OPP.Cd_Parte, PP.Ds_Parte,'#13#10'  OPP.Nr_Altura, OPP.Nr_Largura'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Parte OPP'#13#10#13#10'inner join'#13#10'  Projeto_Parte PP'#13#10'on'#13#10'  PP.Cd_Parte = OPP.Cd_Parte'#13#10#13#10'where'#13#10'  OPP.Cd_Filial     = :Cd_Filial and'#13#10'  OPP.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPP.Nr_Projeto  = :Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 565
    Top = 140
    object ADODsParteCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsParteNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsParteNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsParteCd_Parte: TSmallintField
      FieldName = 'Cd_Parte'
    end
    object ADODsParteDs_Parte: TStringField
      DisplayLabel = 'Parte'
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsParteNr_Altura: TIntegerField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
    end
    object ADODsParteNr_Largura: TIntegerField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
    end
  end
  object DsParte: TDataSource
    DataSet = ADODsParte
    Left = 535
    Top = 140
  end
  object ADODsItensCalcular: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = '-------------------- Seleciona os itens para calcular'#13#10'-- IMPORTANTE'#13#10'--    A cria'#231#227'o de ##Tmp_Projeto esta em FrmOrcamento_Projeto_Parte'#13#10'select'#13#10'  I.Nr_Item, TI.Cd_Peca, TI.Cd_Parte, TI.Ds_Form_Altura, TI.Ds_Form_Largura,'#13#10'  TI.Nr_Altura_Folga, TI.Nr_Largura_Folga, coalesce(OI.Cd_Produto, I.Cd_Produto) as Cd_Produto,'#13#10'  I.Sg_Unidade'#13#10#13#10'from'#13#10'  Projeto_Item I'#13#10#13#10'inner join'#13#10'  ##Tmp_Projeto TI'#13#10'on'#13#10'  TI.Nr_SPID = @@SPID and'#13#10'  TI.Nr_Item = I.Nr_Item'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OI'#13#10'on'#13#10'  OI.Cd_Filial       = :Cd_Filial and'#13#10'  OI.Nr_Orcamento    = :Nr_Orcamento and'#13#10'  OI.Nr_Projeto      = :Nr_Projeto and'#13#10'  OI.Nr_Item_Projeto = I.Nr_Item'#13#10#13#10'where'#13#10'  I.Cd_Projeto = :Cd_Projeto and'#13#10'  I.Tp_Item    = :Tp_Item'#13#10#13#10'order by'#13#10'  I.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Tp_Item'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 40
    Top = 127
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '/* Valor Total de um determinado tipo */'
      'select'
      '  cast(sum(Qt_Item * Vl_Unitario) as numeric(18,3)) as Vl_Total'
      ''
      'from'
      '  Orcamento_Projeto_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Projeto   = :Nr_Projeto and'
      '  Tp_Item      = :Tp_Item'
    )
    SQLOther1.Strings = (
      '/* Seleciona o fator de convers'#227'o de um produto */'
      'select'
      '  Nr_Fator'
      ''
      'from'
      '  Produto_Unidade'
      '  '
      'where'
      '  Cd_Produto = :Cd_Produto and'
      '  Sg_Unidade = :Sg_Unidade'
    )
    Left = 62
    Top = 388
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OPI.Nr_Item, OPI.Tp_Item, OPI.Nr_Altura, OPI.Nr_Altura_Folga, OPI.Nr_largura,'#13#10'  OPI.Nr_Largura_Folga, OPI.Qt_Item, OPI.Vl_Unitario, OPI.Nr_Altura_Direita,'#13#10'  OPI.Nr_Largura_Direita, PP.Ds_Parte, P.Nm_Produto, P.Cd_Fabricante,'#13#10'  '#13#10'  cast(OPI.Cd_Peca as varchar) + '''' - '''' + PPe.Ds_Peca as Dp_Peca,'#13#10'  OPI.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade,'#13#10'  cast(IsNull(OPI.Qt_Item, 0) * IsNull(OPI.Vl_Unitario, 0) as numeric(18,3)) as Vl_Total,'#13#10'  OPI.Cd_Produto'#13#10'  '#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10'  '#13#10'left join'#13#10'  Projeto_Parte PP'#13#10'on'#13#10'  PP.Cd_Parte = OPI.Cd_Parte'#13#10'  '#13#10'left join'#13#10'  Projeto_Peca PPe'#13#10'on'#13#10'  PPe.Cd_Peca = OPI.Cd_Peca'#13#10'  '#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10'  '#13#10'where'#13#10'  OPI.Cd_Filial = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto = :Nr_Projeto and'#13#10'  OPI.Tp_Item = :Tp_Item'#13#10#13#10'order by'#13#10'  OPI.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Tp_Item'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end>
    Left = 189
    Top = 388
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemTp_Item: TStringField
      FieldName = 'Tp_Item'
      FixedChar = True
      Size = 1
    end
    object ADODsItemNr_Altura: TIntegerField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
    end
    object ADODsItemNr_Altura_Folga: TSmallintField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsItemNr_largura: TIntegerField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_largura'
    end
    object ADODsItemNr_Largura_Folga: TSmallintField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object ADODsItemNr_Altura_Direita: TIntegerField
      FieldName = 'Nr_Altura_Direita'
    end
    object ADODsItemNr_Largura_Direita: TIntegerField
      FieldName = 'Nr_Largura_Direita'
    end
    object ADODsItemDs_Parte: TStringField
      DisplayLabel = 'Parte'
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsItemDp_Peca: TStringField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'Dp_Peca'
      ReadOnly = True
      Size = 83
    end
    object ADODsItemDp_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsItemVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 160
    Top = 388
  end
end
