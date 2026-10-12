object FrmProducao: TFrmProducao
  Left = 300
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produ'#231#227'o'
  ClientHeight = 541
  ClientWidth = 949
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 541
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 556
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 928
    Height = 541
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 31
      Width = 49
      Height = 13
      Caption = 'Produ'#231#227'o:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 135
      Top = 31
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 67
      Top = 31
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 275
      Top = 31
      Width = 87
      Height = 13
      Caption = 'Previs'#227'o de Inicio:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 167
      Width = 842
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 368
      Top = 31
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
      Transparent = True
    end
    object Label12: TLabel
      Left = 463
      Top = 31
      Width = 28
      Height = 13
      Caption = 'Inicio:'
      Transparent = True
    end
    object Label13: TLabel
      Left = 561
      Top = 31
      Width = 41
      Height = 13
      Caption = 'Termino:'
      Transparent = True
    end
    object Label64: TLabel
      Left = 4
      Top = 65
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label3: TLabel
      Left = 4
      Top = 385
      Width = 39
      Height = 13
      Caption = 'Setores:'
    end
    object Label5: TLabel
      Left = 4
      Top = 186
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object DbTxtEmitente: TDBText
      Left = 99
      Top = 186
      Width = 394
      Height = 13
      DataField = 'Nm_Emitente'
      DataSource = DsItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 53
      Top = 186
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 926
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 10
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 926
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 926
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
      Left = 676
      Top = 171
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 762
      Top = 171
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Producao: TCurrencyEdit
      Left = 4
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtSt_Producao: TEdit
      Left = 135
      Top = 45
      Width = 138
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
    object EdtDt_Producao: TEdit
      Left = 67
      Top = 45
      Width = 65
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
      TabOrder = 1
    end
    object EdtDt_Previsto: TDateEdit
      Left = 275
      Top = 45
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtCd_Usuario: TEdit
      Left = 368
      Top = 45
      Width = 70
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
      TabOrder = 3
    end
    object EdtDt_Inicio: TEdit
      Left = 463
      Top = 45
      Width = 95
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
      TabOrder = 5
    end
    object EdtDt_Termino: TEdit
      Left = 561
      Top = 45
      Width = 95
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
      TabOrder = 6
    end
    object MmObservacao: TMemo
      Left = 4
      Top = 79
      Width = 652
      Height = 86
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object DbGSetor: TDBGrid
      Left = 4
      Top = 399
      Width = 746
      Height = 138
      DataSource = DsSetor
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGSetorEnter
      OnExit = DbGSetorExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Sg_Setor'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 352
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
    object DbGItem: TDBGrid
      Left = 4
      Top = 201
      Width = 917
      Height = 182
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGSetorEnter
      OnExit = DbGSetorExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Id_Producao'
          Title.Alignment = taCenter
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 334
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Ambiente'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Id_Reproducao'
          Title.Alignment = taRightJustify
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
    object PnlAction_4: TPanel
      Left = 496
      Top = 173
      Width = 85
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 13
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 85
        Height = 26
        ActionManager = ActManCadastro
        BiDiMode = bdLeftToRight
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        Orientation = boTopToBottom
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object Panel1: TPanel
      Left = 750
      Top = 398
      Width = 27
      Height = 26
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 14
      object ActionToolBar1: TActionToolBar
        Left = 0
        Top = 0
        Width = 27
        Height = 26
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        Orientation = boTopToBottom
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
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
            Items = <
              item
                Tag = 1
                Action = ActRepProducao
                Caption = '&Etiqueta de Produ'#231#227'o'
                ImageIndex = 20
                ShortCut = 117
              end
              item
                Action = ActRepPronto
                Caption = 'E&tiqueta de Produto Acabado'
                ImageIndex = 20
              end>
            Caption = '&ActionClientItem9'
            ImageIndex = 20
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = ActAlocar
            ImageIndex = 27
            ShortCut = 118
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 119
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 120
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 16504
          end
          item
            Caption = '-'
          end
          item
            Action = ActOptyWay
            ImageIndex = 43
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdRep
            ImageIndex = 20
            ShortCut = 16501
          end
          item
            Action = ActProdRepPronto
            ImageIndex = 20
          end>
        ActionBar = ActToolBProdutos
      end
      item
        Items = <
          item
            Action = ActSetorDel
            ImageIndex = 19
            ShortCut = 32884
          end>
        ActionBar = ActionToolBar1
      end>
    Images = FrmMain.ImgLstMenu
    Left = 650
    Top = 13
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
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
    end
    object ActRepProducao: TAction
      Tag = 1
      Category = '2-Database'
      Caption = 'Etiqueta de Produ'#231#227'o'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActRepProducaoExecute
    end
    object ActRepPronto: TAction
      Category = '2-Database'
      Caption = 'Etiqueta de Produto Acabado'
      ImageIndex = 20
      OnExecute = ActRepProntoExecute
    end
    object ActAlocar: TAction
      Category = '2-Database'
      Hint = 'Selecionar Itens para Produ'#231#227'o'
      ImageIndex = 27
      ShortCut = 118
      OnExecute = ActAlocarExecute
    end
    object ActConfirm: TAction
      Category = '2-Database'
      Hint = 'Fechar Produ'#231#227'o'
      ImageIndex = 22
      ShortCut = 119
      OnExecute = ActConfirmExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar Produ'#231#227'o'
      ImageIndex = 21
      ShortCut = 120
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar Produ'#231#227'o para "Aberto"'
      ImageIndex = 38
      ShortCut = 16504
      OnExecute = ActRedoExecute
    end
    object ActProdDel: TAction
      Category = '2-Database'
      Hint = 'Exclus'#227'o do Item da Produ'#231#227'o'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActProdDelExecute
    end
    object ActProdRep: TAction
      Category = '2-Database'
      Hint = 'Imprimir somente este item'
      ImageIndex = 20
      ShortCut = 16501
      OnExecute = ActProdRepExecute
    end
    object ActProdRepPronto: TAction
      Category = '2-Database'
      Hint = 'Etiqueta de Produto Acabado'
      ImageIndex = 20
      OnExecute = ActProdRepProntoExecute
    end
    object ActSetorDel: TAction
      Category = '2-Database'
      Hint = 'Exclus'#227'o do Setor'
      ImageIndex = 19
      ShortCut = 32884
      OnExecute = ActSetorDelExecute
    end
    object ActOptyWay: TAction
      Category = '2-Database'
      Hint = 'Gerar Arquivo no formato do Opty-Way'
      ImageIndex = 43
      OnExecute = ActOptyWayExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Producao, Dt_Producao, St_Producao, Cd_Usuario,'#13#10'  Dt_Inicio, Dt_Previsto, Dt_Termino, Mm_Observacao'#13#10#13#10'from '#13#10'  Producao'#13#10#13#10'where'#13#10'  Cd_Filial   = :Cd_Filial and'#13#10'  Nr_Producao = :Nr_Producao'
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
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 51
    Top = 351
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsDadosDt_Producao: TDateTimeField
      FieldName = 'Dt_Producao'
    end
    object ADODsDadosSt_Producao: TStringField
      FieldName = 'St_Producao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsDadosDt_Inicio: TDateTimeField
      FieldName = 'Dt_Inicio'
    end
    object ADODsDadosDt_Previsto: TDateTimeField
      FieldName = 'Dt_Previsto'
    end
    object ADODsDadosDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Size = 15
      Calculated = True
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Producao( Cd_Filial, Nr_Producao, Dt_Producao, St_Producao,'
      '  Cd_Usuario, Dt_Previsto, Mm_Observacao )'
      'values( :Cd_Filial, :Nr_Producao, :Dt_Producao, ''''1'''', :Cd_Usuario,'
      '  :Dt_Previsto, :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Producao'
      ''
      'set'
      '  Cd_Usuario    = :Cd_Usuario,'
      '  Dt_Previsto   = :Dt_Previsto,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Producao = :Nr_Producao'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Producao'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Producao = :Nr_Producao'
    )
    SQLOther0.Strings = (
      '--------------- Altera a situa'#231#227'o da produ'#231#227'o'
      'update'
      '  Producao'
      ''
      'set'
      '  St_Producao = :St_Producao'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Producao = :Nr_Producao'
    )
    SQLOther1.Strings = (
      '--------------- Exclus'#227'o do setor'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Producao Int,'
      '  @Id_Producao SmallInt,'
      '  @Cd_Setor SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Producao = :Nr_Producao,'
      '  @Id_Producao = :Id_Producao,'
      '  @Cd_Setor    = :Cd_Setor'
      ''
      'delete from'
      '  Producao_Setor'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao and'
      '  Cd_Setor    = @Cd_Setor'
      ''
      '--------------- Exclus'#227'o do item se necessario'
      'delete from'
      '  Producao_Item'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao and'
      '  not exists('
      '    select'
      '      PS.Cd_Filial'
      ''
      '    from'
      '      Producao_Setor PS'
      ''
      '    where'
      '      PS.Cd_Filial   = @Cd_Filial and'
      '      PS.Nr_Producao = @Nr_Producao and'
      '      PS.Id_Producao = @Id_Producao'
      '    )'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Exclus'#227'o do Item na producao'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Producao Int,'
      '  @Id_Producao SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Producao = :Nr_Producao,'
      '  @Id_Producao = :Id_Producao'
      ''
      'delete from'
      '  Producao_Setor'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao'
      ''
      '--------------- Exclus'#227'o do item'
      'delete from'
      '  Producao_Item'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao'
    )
    SQLOther7.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MENOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------------'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem + 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem    >= @NewOrdem and'
      '  Nr_Ordem    <= @OldOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MAIOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '------------------------- Ajustar os itens do intervalo'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem     > @OldOrdem and'
      '  Nr_Ordem    <= @NewOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    Left = 81
    Top = 351
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Producao'#13#10#13#10'from'#13#10'  Producao'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Producao ) + 1 as Nr_Producao'
      ''
      'from'
      '  Producao A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Producao'
      ''
      'from'
      '  Producao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Producao'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Producao'
      ''
      'from'
      '  Producao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Producao < :Nr_Producao'
      ''
      'order by'
      '  Nr_Producao desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Producao'
      ''
      'from'
      '  Producao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Producao > :Nr_Producao'
      ''
      'order by'
      '  Nr_Producao'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Producao'
      ''
      'from'
      '  Producao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Producao desc'
    )
    Left = 111
    Top = 351
    object ADODsNavegarNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 23
    Top = 351
  end
  object ADODsSetor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSetorCalcFields
    CommandText = 'select'#13#10'  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, S.Sg_Setor, PS.Id_Producao,'#13#10'  PS.Cd_Funcionario, F.Nm_Funcionario, PS.Fl_Setor, PS.Dt_Inicio,'#13#10'  PS.Dt_Termino'#13#10'  '#13#10'from'#13#10'  Producao_Setor PS'#13#10#13#10'inner join'#13#10'  Setor S'#13#10'on'#13#10'  S.Cd_Setor = PS.Cd_Setor'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = PS.Cd_Funcionario'#13#10#13#10'where'#13#10'  PS.Cd_Filial   = :Cd_Filial and'#13#10'  PS.Nr_Producao = :Nr_Producao and'#13#10'  PS.Id_Producao = :Id_Producao'#13#10#13#10'order by'#13#10'  PS.Cd_Setor'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Filial;Nr_Producao;Id_Producao'
    MasterFields = 'Cd_Filial;Nr_Producao;Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 5
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'Id_Producao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end>
    Left = 236
    Top = 351
    object ADODsSetorCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSetorNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsSetorCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsSetorSg_Setor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'Sg_Setor'
      Size = 15
    end
    object ADODsSetorCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsSetorNm_Funcionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsSetorId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsSetorFl_Setor: TStringField
      FieldName = 'Fl_Setor'
      FixedChar = True
      Size = 1
    end
    object ADODsSetorDt_Inicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSetorDt_Termino: TDateTimeField
      DisplayLabel = 'Termino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSetorDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
  end
  object DsSetor: TDataSource
    DataSet = ADODsSetor
    Left = 207
    Top = 351
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,'#13#10#13#10'  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,'#13#10'  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10'  PRI.Cd_Motivo, M.Ds_Motivo,'#13#10#13#10'  OI.Fl_Medida, OI.Ds_Ambiente,'#13#10#13#10'  OT.Nm_Emitente,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end,'#13#10#13#10'  Ds_Peca ='#13#10'    case'#13#10'      when OI.Fl_Medida is null then OPI.Cd_Peca + '''' - '''' + PP.Ds_Peca'#13#10'    end'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Projeto_Peca PP'#13#10'on'#13#10'  PP.Cd_Peca = OPI.Cd_Peca'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  PRI.Nr_Producao = :Nr_Producao'#13#10#13#10'order by'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao'
    DataSource = DsDados
    IndexFieldNames = 'Cd_Filial;Nr_Producao'
    MasterFields = 'Cd_Filial;Nr_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 5
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 176
    Top = 351
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsItemId_Producao: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'Id_Producao'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      DisplayLabel = 'Item do Or'#231'amento'
      FieldName = 'Nr_Item'
    end
    object ADODsItemNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsItemNr_Projeto: TSmallintField
      DisplayLabel = 'N'#186' Projeto'
      FieldName = 'Nr_Projeto'
    end
    object ADODsItemNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsItemNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsItemNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsItemId_Reproducao: TSmallintField
      DisplayLabel = 'ID Reprodu'#231#227'o'
      FieldName = 'Id_Reproducao'
    end
    object ADODsItemCd_Motivo: TSmallintField
      FieldName = 'Cd_Motivo'
    end
    object ADODsItemDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 50
    end
    object ADODsItemDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento da pe'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 63
      Calculated = True
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsItemBarCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarCode'
      Calculated = True
    end
    object ADODsItemDs_Peca: TStringField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'Ds_Peca'
      ReadOnly = True
      Size = 63
    end
    object ADODsItemDs_Ambiente: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 146
    Top = 351
  end
end
