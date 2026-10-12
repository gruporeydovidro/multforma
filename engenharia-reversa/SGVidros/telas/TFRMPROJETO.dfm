object FrmProjeto: TFrmProjeto
  Left = 261
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Projeto'
  ClientHeight = 592
  ClientWidth = 1007
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 26
    Width = 21
    Height = 566
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 524
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 26
    Width = 986
    Height = 566
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 818
    ExplicitHeight = 524
    object BvlSeparator: TBevel
      Left = 3
      Top = 535
      Width = 978
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object BvlMoldura: TBevel
      Left = 505
      Top = 5
      Width = 472
      Height = 275
      Shape = bsFrame
    end
    object ImgProjeto: TImage
      Left = 507
      Top = 8
      Width = 466
      Height = 268
      Center = True
      Stretch = True
    end
    object Label2: TLabel
      Left = 5
      Top = 85
      Width = 67
      Height = 13
      Caption = 'Complemento:'
    end
    object LblProduto: TLabel
      Left = 5
      Top = 44
      Width = 110
      Height = 13
      Caption = 'Produto (Vidro Padr'#227'o):'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 59
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 812
      Top = 538
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 898
      Top = 538
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Projeto: TCurrencyEdit
      Left = 5
      Top = 20
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtNm_Projeto: TLabeledEdit
      Left = 50
      Top = 20
      Width = 421
      Height = 19
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Projeto:'
      LabelSpacing = 1
      MaxLength = 100
      TabOrder = 1
    end
    object Mm_Complemento: TMemo
      Left = 5
      Top = 100
      Width = 494
      Height = 180
      Lines.Strings = (
        'Mm_Complemento'
      )
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 59
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 91
      Top = 59
      Width = 408
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object TabCtrlItem: TTabControl
      Left = 1
      Top = 286
      Width = 944
      Height = 243
      MultiLine = True
      TabOrder = 7
      Tabs.Strings = (
        'Vidros'
        'Ferragens'
        'Perfis'
        'Servi'#231'os'
        'Kit Box'
      )
      TabIndex = 0
      TabWidth = 120
      OnChange = TabCtrlItemChange
      object Bevel1: TBevel
        Left = 649
        Top = 30
        Width = 290
        Height = 205
        Shape = bsFrame
      end
      object ImgItem: TImage
        Left = 651
        Top = 32
        Width = 285
        Height = 200
        Center = True
        Stretch = True
      end
      object LblConjunto: TLabel
        Left = 5
        Top = 30
        Width = 69
        Height = 13
        Caption = 'Conjunto de ...'
      end
      object Label3: TLabel
        Left = 130
        Top = 204
        Width = 29
        Height = 13
        Caption = 'Folga:'
      end
      object Label4: TLabel
        Left = 320
        Top = 204
        Width = 29
        Height = 13
        Caption = 'Folga:'
      end
      object EdtDs_Form_Altura: TLabeledEdit
        Left = 195
        Top = 218
        Width = 121
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        EditLabel.Width = 85
        EditLabel.Height = 13
        EditLabel.Caption = 'F'#243'rmula da Altura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LabelSpacing = 1
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtNr_Altura_Folga: TCurrencyEdit
        Left = 320
        Top = 218
        Width = 60
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        TabStop = False
        AutoSize = False
        Color = clSilver
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 32767.0
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdtDs_Form_Largura: TLabeledEdit
        Left = 5
        Top = 218
        Width = 121
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        EditLabel.Width = 94
        EditLabel.Height = 13
        EditLabel.Caption = 'F'#243'rmula da Largura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LabelSpacing = 1
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtNr_Largura_Folga: TCurrencyEdit
        Left = 130
        Top = 218
        Width = 60
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        TabStop = False
        AutoSize = False
        Color = clSilver
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 32767.0
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DbGItem: TDBGrid
        Left = 5
        Top = 46
        Width = 640
        Height = 157
        DataSource = DsItem
        FixedColor = clSilver
        Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        PopupMenu = PopMenItem
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DbGItemDblClick
        OnEnter = DbGItemEnter
        OnExit = DbGItemExit
        OnKeyPress = DbGItemKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Nm_Produto'
            Width = 361
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dp_Unidade'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qt_Item'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end>
      end
    end
    object ActToolItem: TActionToolBar
      Left = 950
      Top = 303
      Width = 27
      Height = 77
      Cursor = crHandPoint
      ActionManager = ActManCadastro
      Align = alNone
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Orientation = boTopToBottom
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
    end
  end
  object ActToolBDatabase: TActionToolBar
    Left = 0
    Top = 0
    Width = 1007
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
    ExplicitWidth = 839
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
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
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
            Items = <
              item
                Action = ActCopy
                ImageIndex = 16
              end>
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
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
        Items = <
          item
            Action = ActEditItem
            ImageIndex = 18
            ShortCut = 16498
          end
          item
            Action = ActDelItem
            ImageIndex = 19
            ShortCut = 16500
          end>
      end
      item
        Items = <
          item
            Action = ActAddItem
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActEditItem
            ImageIndex = 18
            ShortCut = 16498
          end
          item
            Action = ActDelItem
            ImageIndex = 19
            ShortCut = 16500
          end>
        ActionBar = ActToolItem
      end>
    Images = FrmMain.ImgLstMenu
    Left = 695
    Top = 20
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
    object ActCopy: TAction
      Category = '2-Database'
      Caption = 'Copiar o Projeto...'
      ImageIndex = 16
      OnExecute = ActCopyExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
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
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
    object ActDelItem: TAction
      Category = '4-Item'
      Hint = 'Excluir Item selecionado do Projeto'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActDelItemExecute
    end
    object ActEditItem: TAction
      Category = '4-Item'
      Hint = 'Editar Op'#231#245'es do Item selecionado'
      ImageIndex = 18
      ShortCut = 16498
      OnExecute = ActEditItemExecute
    end
    object ActAddItem: TAction
      Category = '4-Item'
      Hint = 'Adicionar um Item ao Projeto'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActAddItemExecute
    end
    object ActDesenho: TAction
      Category = '2-Database'
      Hint = 'Fazer o Desenho do Projeto...'
      ImageIndex = 51
      ShortCut = 118
      OnExecute = ActDesenhoExecute
    end
    object ActImagem: TAction
      Category = '2-Database'
      Hint = 'Posicionamento dos Itens...'
      ImageIndex = 9
      ShortCut = 119
      OnExecute = ActImagemExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'   P.Cd_Projeto, P.Nm_Projeto, P.Mm_Complemento, P.Im_Projeto, P.Cd_Produto, Pr.Nm_Produto'#13#10#13#10'from'#13#10'  Projeto P'#13#10#13#10'left join'#13#10'  Produto Pr'#13#10'on'#13#10'  Pr.Cd_Produto = P.Cd_Produto'#13#10#13#10'where'#13#10'  P.Cd_Projeto = :Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 541
    Top = 146
    object ADODsDadosCd_Projeto: TSmallintField
      FieldName = 'Cd_Projeto'
    end
    object ADODsDadosNm_Projeto: TStringField
      FieldName = 'Nm_Projeto'
      Size = 100
    end
    object ADODsDadosMm_Complemento: TMemoField
      FieldName = 'Mm_Complemento'
      BlobType = ftMemo
    end
    object ADODsDadosIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
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
      'insert into Projeto(Cd_Projeto, Nm_Projeto, Mm_Complemento, Im_Projeto,'
      '  Cd_Produto)'
      'values (:Cd_Projeto, :Nm_Projeto, :Mm_Complemento, :Im_Projeto,'
      '  :Cd_Produto)'
    )
    SQLUpdate.Strings = (
      'update Projeto set'
      '  Nm_Projeto     = :Nm_Projeto,'
      '  Mm_Complemento = :Mm_Complemento,'
      '  Im_Projeto     = :Im_Projeto,'
      '  Cd_Produto     = :Cd_Produto'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Projeto'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    SQLOther0.Strings = (
      '-- Excluir Item'
      'delete from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto and'
      '  Nr_Item    = :Nr_Item'
    )
    SQLOther1.Strings = (
      '/* Preencher Projeto_Parte_Posicao */'
      'declare @Cd_Projeto int'
      'set @Cd_Projeto = :Cd_Projeto'
      ''
      'declare @Tp_Item char(1)'
      'set @Tp_Item = :Tp_Item'
      ''
      'if (Object_Id(''''TempDB..#Partes'''') is not null)'
      '  drop table #Partes'
      ''
      'select distinct'
      '  Cd_Parte'
      '  '
      'into'
      '  #Partes'
      '  '
      'from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = @Cd_Projeto and'
      '  Tp_Item = @Tp_Item and'
      '  Cd_Parte is not null'
      ''
      '/* Inseri as Alturas */'
      'insert into Projeto_Parte_Posicao(Cd_Projeto, Cd_Parte, Fl_Dimensao)'
      'select'
      '  @Cd_Projeto, P.Cd_Parte, ''''A'''
      ''
      'from'
      '  #Partes P'
      '  '
      'where'
      '  not exists ('
      '    select'
      '      PPP.Cd_Projeto, PPP.Cd_Parte'
      '    from'
      '      Projeto_Parte_Posicao PPP'
      '    where'
      '      PPP.Cd_Projeto  = @Cd_Projeto and'
      '      PPP.Cd_Parte    = P.Cd_Parte and'
      '      PPP.Fl_Dimensao = ''''A'''
      '  )'
      '  '
      '/* Inseri as Larguras */'
      'insert into Projeto_Parte_Posicao(Cd_Projeto, Cd_Parte, Fl_Dimensao)'
      'select'
      '  @Cd_Projeto, P.Cd_Parte, ''''L'''
      ''
      'from'
      '  #Partes P'
      ''
      'where'
      '  not exists ('
      '    select'
      '      PPP.Cd_Projeto, PPP.Cd_Parte'
      '    from'
      '      Projeto_Parte_Posicao PPP'
      '    where'
      '      PPP.Cd_Projeto  = @Cd_Projeto and'
      '      PPP.Cd_Parte    = P.Cd_Parte and'
      '      PPP.Fl_Dimensao = ''''L'''
      '  )'
      ''
      '/* Remover as partes que n'#227'o existem mais */'
      'delete from Projeto_Parte_Posicao'
      'where Cd_Projeto = @Cd_Projeto and Cd_Parte not in (select Cd_Parte from #Partes)'
    )
    SQLOther2.Strings = (
      '/* Salvar o desenho do projeto */'
      'update Projeto set'
      '  Im_Projeto     = :Im_Projeto,'
      '  DesenhoProjeto = :DesenhoProjeto,'
      '  Nr_Width = :Nr_Width,'
      '  Nr_Height = :Nr_Height'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    SQLOther3.Strings = (
      'declare'
      '  @Cd_OldProjeto SmallInt,'
      '  @Cd_NewProjeto SmallInt'
      ''
      'select'
      '  @Cd_OldProjeto = :Cd_OldProjeto,'
      '  @Cd_NewProjeto = :Cd_NewProjeto'
      ''
      '-------------------- Copiar o projeto'
      'insert into Projeto( Cd_Projeto, Nm_Projeto, Mm_Complemento, Im_Projeto,'
      '   Cd_Produto, DesenhoProjeto, Nr_Width, Nr_Height )'
      'select'
      '  @Cd_NewProjeto, Nm_Projeto, Mm_Complemento, Im_Projeto, Cd_Produto,'
      '  DesenhoProjeto, Nr_Width, Nr_Height'
      ''
      'from'
      '  Projeto'
      ''
      'where'
      '  Cd_Projeto = @Cd_OldProjeto'
      ''
      '-------------------- Itens do projeto'
      'insert into Projeto_Item( Cd_Projeto, Nr_Item, Tp_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Ds_Form_Altura, Ds_Form_Largura, Cd_Parte,'
      '   Cd_Peca, Nr_Altura_Folga, Nr_Largura_Folga )'
      'select'
      '  @Cd_NewProjeto, Nr_Item, Tp_Item, Cd_Produto, Sg_Unidade, Qt_Item,'
      '  Ds_Form_Altura, Ds_Form_Largura, Cd_Parte, Cd_Peca, Nr_Altura_Folga,'
      '  Nr_Largura_Folga'
      ''
      'from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = @Cd_OldProjeto'
      ''
      '-------------------- Posi'#231#227'o dos itens do projeto'
      'insert into Projeto_Item_Posicao( Cd_Projeto, Nr_Item, Nr_Posicao, Nr_Top,'
      '   Nr_Left )'
      'select'
      '  @Cd_NewProjeto, Nr_Item, Nr_Posicao, Nr_Top, Nr_Left'
      ''
      'from'
      '  Projeto_Item_Posicao'
      ''
      'where'
      '  Cd_Projeto = @Cd_OldProjeto'
      ''
      '-------------------- Posi'#231#227'o das partes do projeto'
      'insert into Projeto_Parte_Posicao( Cd_Projeto, Cd_Parte, Fl_Dimensao, Nr_Top,'
      '   Nr_Left )'
      'select'
      '  @Cd_NewProjeto, Cd_Parte, Fl_Dimensao, Nr_Top, Nr_Left'
      ''
      'from'
      '  Projeto_Parte_Posicao'
      ''
      'where'
      '  Cd_Projeto = @Cd_OldProjeto'
    )
    Left = 576
    Top = 146
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 66
    Top = 331
  end
  object PopMenItem: TPopupMenu
    OnPopup = PopMenItemPopup
    Left = 481
    Top = 331
    object ItemMenVerEditar: TMenuItem
      Caption = 'Ver / Editar...'
      OnClick = ItemMenVerEditarClick
    end
    object ItemMenAdicionar: TMenuItem
      Caption = 'Adicionar...'
      OnClick = ItemMenAdicionarClick
    end
    object ItemMenExcluir: TMenuItem
      Caption = 'Excluir'
      OnClick = ItemMenExcluirClick
    end
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsItemAfterOpen
    AfterScroll = ADODsItemAfterScroll
    CommandText = 'select'#13#10'  PIT.Nr_Item, PIT.Qt_Item, PIT.Ds_Form_Altura,'#13#10'  PIT.Ds_Form_Largura, PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, P.Nm_Produto,'#13#10'  cast(IsNull(cast(PIT.Sg_Unidade as varchar) + '''' - '''' + cast(U.Ds_Unidade as varchar), '''''') as varchar) as Dp_Unidade,'#13#10'  cast(IsNull(cast(PIT.Cd_Peca as varchar) + '''' - '''' + cast(PC.Ds_Peca as varchar), '''''') as varchar) as Dp_Peca,'#13#10'  coalesce(P.Im_Produto, C.Im_Classe) as Im_Item'#13#10'  '#13#10'from'#13#10'  Projeto_Item PIT'#13#10'  '#13#10'left join'#13#10'  Projeto_Peca PC'#13#10'on'#13#10'  PC.Cd_Peca = PIT.Cd_Peca'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PIT.Sg_Unidade'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PIT.Cd_Produto'#13#10#13#10'left join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe  '#13#10#13#10'where'#13#10'  PIT.Cd_Projeto = :Cd_Projeto and'#13#10'  PIT.Tp_Item = :Tp_Item'#13#10#13#10'order by'#13#10'  PIT.Nr_Item desc'
    Parameters = <
      item
        Name = 'Cd_Projeto'
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
    SQLOther0.Strings = (
      'select'
      '  PIT.Nr_Item, PIT.Qt_Item, PIT.Ds_Form_Altura,'
      '  PIT.Ds_Form_Largura, PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, P.Nm_Produto,'
      '  cast(IsNull(cast(PIT.Sg_Unidade as varchar) + '''' - '''' + cast(U.Ds_Unidade as varchar), '''''') as varchar) as Dp_Unidade,'
      '  cast(IsNull(cast(PIT.Cd_Peca as varchar) + '''' - '''' + cast(PC.Ds_Peca as varchar), '''''') as varchar) as Dp_Peca,'
      '  coalesce(P.Im_Produto, C.Im_Classe) as Im_Item'
      ''
      'from'
      '  Projeto_Item PIT'
      '  '
      'left join'
      '  Projeto_Peca PC'
      'on'
      '  PC.Cd_Peca = PIT.Cd_Peca'
      ''
      'left join'
      '  Unidade U'
      'on'
      '  U.Sg_Unidade = PIT.Sg_Unidade'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PIT.Cd_Produto'
      ''
      'left join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe  '
      ''
      'where'
      '  PIT.Cd_Projeto = :Cd_Projeto and'
      '  PIT.Tp_Item = :Tp_Item'
      ''
      '/* order by */'
    )
    SQLOther1.Strings = (
      'select'
      '  PIT.Nr_Item, PIT.Qt_Item, PIT.Ds_Form_Altura,'
      '  PIT.Ds_Form_Largura, PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga, P.Nm_Produto,'
      '  cast(IsNull(cast(PIT.Sg_Unidade as varchar) + '''' - '''' + cast(U.Ds_Unidade as varchar), '''''') as varchar) as Dp_Unidade,'
      '  cast(IsNull(cast(PIT.Cd_Peca as varchar) + '''' - '''' + cast(PC.Ds_Peca as varchar), '''''') as varchar) as Dp_Peca,'
      '  coalesce(P.Im_Produto, C.Im_Classe) as Im_Item'
      ' '
      'from'
      '  Projeto_Item PIT'
      '  '
      'left join'
      '  Projeto_Peca PC'
      'on'
      '  PC.Cd_Peca = PIT.Cd_Peca'
      ''
      'left join'
      '  Unidade U'
      'on'
      '  U.Sg_Unidade = PIT.Sg_Unidade'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PIT.Cd_Produto'
      ''
      'left join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe  '
      ''
      'where'
      '  PIT.Cd_Projeto = :Cd_Projeto and'
      '  PIT.Tp_Item = :Tp_Item'
      ''
      'order by'
      '  PIT.Nr_Item desc'
    )
    Left = 36
    Top = 331
    object ADODsItemNr_Item: TSmallintField
      DisplayWidth = 10
      FieldName = 'Nr_Item'
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 19
      FieldName = 'Qt_Item'
      DisplayFormat = '###,###,##0.00##'
      Precision = 18
      Size = 0
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Nome do Item'
      DisplayWidth = 120
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemDs_Form_Altura: TStringField
      FieldName = 'Ds_Form_Altura'
      Size = 30
    end
    object ADODsItemDs_Form_Largura: TStringField
      FieldName = 'Ds_Form_Largura'
      Size = 30
    end
    object ADODsItemNr_Altura_Folga: TSmallintField
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsItemNr_Largura_Folga: TSmallintField
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsItemDp_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 30
    end
    object ADODsItemDp_Peca: TStringField
      FieldName = 'Dp_Peca'
      ReadOnly = True
      Size = 30
    end
    object ADODsItemIm_Item: TBlobField
      FieldName = 'Im_Item'
      ReadOnly = True
    end
  end
  object ADODsDesenho: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  DesenhoProjeto, Nr_Width, Nr_Height'#13#10#13#10'from'#13#10'  Projeto'#13#10#13#10'where'#13#10'  Cd_Projeto = :Cd_Projeto'#13#10
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 606
    Top = 146
    object ADODsDesenhoDesenhoProjeto: TBlobField
      FieldName = 'DesenhoProjeto'
    end
    object ADODsDesenhoNr_Width: TSmallintField
      FieldName = 'Nr_Width'
    end
    object ADODsDesenhoNr_Height: TSmallintField
      FieldName = 'Nr_Height'
    end
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 1'#13#10'  A.Cd_Projeto + 1 as Cd_Projeto'#13#10#13#10'from'#13#10'  Projeto A'#13#10#13#10'where'#13#10'  not exists( '#13#10'  select'#13#10'    B.Cd_Projeto'#13#10#13#10'  from'#13#10'    Projeto  B'#13#10#13#10'  where'#13#10'    B.Cd_Projeto = A.Cd_Projeto + 1'#13#10#13#10'  )'#13#10'order by'#13#10'  A.Cd_Projeto'
    Parameters = <>
    Left = 637
    Top = 146
    object ADODsPrimaryCd_Projeto: TIntegerField
      FieldName = 'Cd_Projeto'
      ReadOnly = True
    end
  end
end
