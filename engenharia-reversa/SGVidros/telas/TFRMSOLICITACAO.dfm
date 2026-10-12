object FrmSolicitacao: TFrmSolicitacao
  Left = 13
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Solicta'#231#245'es / Implementa'#231#245'es'
  ClientHeight = 467
  ClientWidth = 980
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 467
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 959
    Height = 467
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 437
      Width = 952
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 45
      Height = 13
      Caption = 'Software:'
    end
    object Label2: TLabel
      Left = 147
      Top = 1
      Width = 50
      Height = 13
      Caption = 'Prioridade:'
    end
    object Label3: TLabel
      Left = 242
      Top = 1
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 344
      Top = 1
      Width = 52
      Height = 13
      Caption = 'Solicitante:'
    end
    object SbSolicitante: TSpeedButton
      Tag = 1
      Left = 439
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio Solicitante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSolicitanteClick
    end
    object Label4: TLabel
      Left = 467
      Top = 1
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
    end
    object SbResponsavel: TSpeedButton
      Tag = 2
      Left = 563
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio Responsavel'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSolicitanteClick
    end
    object SbOpen: TSpeedButton
      Left = 867
      Top = 19
      Width = 85
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 39
      Width = 952
      Height = 5
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 5
      Top = 40
      Width = 145
      Height = 13
      Caption = 'Solicita'#231#245'es / Implementa'#231#245'es'
    end
    object Label7: TLabel
      Left = 5
      Top = 294
      Width = 52
      Height = 13
      Caption = 'Solicita'#231#227'o'
      FocusControl = DbEdtDs_Solicitacao
    end
    object Label8: TLabel
      Left = 514
      Top = 294
      Width = 87
      Height = 13
      Caption = 'Cliente Solicitante:'
      FocusControl = DbEdtNm_Emitente
    end
    object Label9: TLabel
      Left = 5
      Top = 329
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label10: TLabel
      Left = 590
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Data de:'
    end
    object Label11: TLabel
      Left = 665
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object BitBtnClose: TBitBtn
      Left = 872
      Top = 440
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BitBtnCloseClick
      Glyph.Data = {binary 2106 bytes}
    end
    object CbSoftware: TComboBox
      Left = 5
      Top = 15
      Width = 139
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Todos'
        'SGE-Comercial'
        'SGE-Todos V/M/C/F'
        'Vidros'
        'Marmore'
        'SGE - Comercial/Farma'
        'Vidros/M'#225'rmore'
        'SG-Vidros/M'#225'rmore'
        'Outros'
      )
    end
    object CbPrioridade: TComboBox
      Left = 147
      Top = 15
      Width = 91
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Todas'
        'Baixa'
        'Normal'
        'Alta'
        'Altissima'
      )
    end
    object CbSituacao: TComboBox
      Left = 242
      Top = 15
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Todas'
        'Aberto'
        'Iniciado'
        'Terminado'
        'Suspenso'
        'Cancelado'
        'Aberto/Iniciado'
      )
    end
    object EdtCd_Solicitante: TEdit
      Tag = 1
      Left = 344
      Top = 15
      Width = 95
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 4
      OnExit = EdtCd_SolicitanteExit
      OnKeyDown = EdtCd_SolicitanteKeyDown
    end
    object EdtCd_Responsavel: TEdit
      Tag = 1
      Left = 467
      Top = 15
      Width = 95
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 5
      OnExit = EdtCd_SolicitanteExit
      OnKeyDown = EdtCd_SolicitanteKeyDown
    end
    object DbgSolicitacao: TDBGrid
      Left = 5
      Top = 54
      Width = 949
      Height = 237
      DataSource = DsSolicitacao
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = ActInsertExecute
      OnEnter = DbgSolicitacaoEnter
      OnExit = DbgSolicitacaoExit
      OnKeyPress = DbgSolicitacaoKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dp_software'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_solicitacao'
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Solicitante'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Responsavel'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_inclusao'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_prevista'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_termino'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_situacao'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Prioridade'
          Width = 52
          Visible = True
        end>
    end
    object DbMmSolicitacao: TDBMemo
      Left = 5
      Top = 344
      Width = 949
      Height = 88
      TabStop = False
      DataField = 'mm_solicitacao'
      DataSource = DsSolicitacao
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object DbEdtDs_Solicitacao: TDBEdit
      Left = 5
      Top = 308
      Width = 505
      Height = 19
      TabStop = False
      DataField = 'ds_solicitacao'
      DataSource = DsSolicitacao
      ReadOnly = True
      TabOrder = 11
    end
    object DbEdtNm_Emitente: TDBEdit
      Left = 514
      Top = 308
      Width = 308
      Height = 19
      TabStop = False
      DataField = 'dp_emitente'
      DataSource = DsSolicitacao
      ReadOnly = True
      TabOrder = 12
    end
    object PnlAction_4: TPanel
      Left = 3
      Top = 439
      Width = 104
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 13
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 104
        Height = 27
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object CbData: TComboBox
      Left = 590
      Top = 15
      Width = 70
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Inclus'#227'o'
        'Previs'#227'o'
        'Inicio'
        'Terminio'
      )
    end
    object EdtDt_Start: TDateEdit
      Left = 664
      Top = 15
      Width = 90
      Height = 19
      AutoSelect = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object EdtDt_End: TDateEdit
      Left = 759
      Top = 15
      Width = 90
      Height = 19
      AutoSelect = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 8
    end
  end
  object DsSolicitacao: TDataSource
    DataSet = ADODsSolicitacao
    Left = 28
    Top = 206
  end
  object ADODsSolicitacao: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsSolicitacaoCalcFields
    CommandText = 'select'#13#10'  S.Id_Software, S.Nr_Item, S.Nr_Prioridade, S.Fl_Situacao,'#13#10'  S.Ds_Solicitacao, S.Cd_Solicitante, S.Cd_Responsavel, S.Dt_Inclusao,'#13#10'  S.Dt_Prevista, S.Dt_Inicio, S.Dt_Termino, S.Mm_Solicitacao,'#13#10'  S.Cd_Emitente, E.Nm_Emitente, E.Ds_Email,'#13#10'  Cast( S.Cd_Emitente as VarChar ) + '''' - '''' + E.Nm_Emitente as Dp_Emitente'#13#10#13#10'from'#13#10'  Solicitacao S'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = S.Cd_Emitente'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  S.Id_Software, S.Nr_Item, S.Nr_Prioridade, S.Fl_Situacao,'
      '  S.Ds_Solicitacao, S.Cd_Solicitante, S.Cd_Responsavel, S.Dt_Inclusao,'
      '  S.Dt_Prevista, S.Dt_Inicio, S.Dt_Termino, S.Mm_Solicitacao,'
      '  S.Cd_Emitente, E.Nm_Emitente, E.Ds_Email,'
      '  Cast( S.Cd_Emitente as VarChar ) + '''' - '''' + E.Nm_Emitente as Dp_Emitente'
      ''
      'from'
      '  Solicitacao S'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = S.Cd_Emitente'
      ''
      '/* where */'
      '  /* Id_Software */'
      '  /* Nr_Prioridade */'
      '  /* Fl_Situacao */'
      '  /* Cd_Solicitante */'
      '  /* Cd_Responsavel */'
      '  /* Dt_Start */'
      '  /* Dt_End */'
    )
    Left = 58
    Top = 207
    object ADODsSolicitacaoid_software: TSmallintField
      FieldName = 'id_software'
    end
    object ADODsSolicitacaonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsSolicitacaonr_prioridade: TStringField
      FieldName = 'nr_prioridade'
      Size = 1
    end
    object ADODsSolicitacaofl_situacao: TStringField
      FieldName = 'fl_situacao'
      FixedChar = True
      Size = 1
    end
    object ADODsSolicitacaods_solicitacao: TStringField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'ds_solicitacao'
      Size = 100
    end
    object ADODsSolicitacaocd_solicitante: TStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'cd_solicitante'
      Size = 15
    end
    object ADODsSolicitacaocd_responsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'cd_responsavel'
      Size = 15
    end
    object ADODsSolicitacaodt_inclusao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'dt_inclusao'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSolicitacaodt_prevista: TDateTimeField
      DisplayLabel = 'Previs'#227'o'
      FieldName = 'dt_prevista'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSolicitacaodt_inicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'dt_inicio'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSolicitacaodt_termino: TDateTimeField
      DisplayLabel = 'Termino'
      FieldName = 'dt_termino'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSolicitacaomm_solicitacao: TMemoField
      FieldName = 'mm_solicitacao'
      BlobType = ftMemo
    end
    object ADODsSolicitacaocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsSolicitacaonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsSolicitacaods_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsSolicitacaods_situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'ds_situacao'
      Size = 15
      Calculated = True
    end
    object ADODsSolicitacaoDs_Prioridade: TStringField
      DisplayLabel = 'Prioridade'
      FieldKind = fkCalculated
      FieldName = 'Ds_Prioridade'
      Size = 15
      Calculated = True
    end
    object ADODsSolicitacaodp_emitente: TStringField
      FieldName = 'dp_emitente'
      Size = 8190
    end
    object ADODsSolicitacaodp_software: TStringField
      DisplayLabel = 'ID'
      FieldKind = fkCalculated
      FieldName = 'dp_software'
      Size = 6
      Calculated = True
    end
    object ADODsSolicitacaoDp_Solicitante: TStringField
      DisplayLabel = 'Solicitante'
      FieldKind = fkCalculated
      FieldName = 'Dp_Solicitante'
      Size = 15
      Calculated = True
    end
    object ADODsSolicitacaoDp_Responsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkCalculated
      FieldName = 'Dp_Responsavel'
      Size = 15
      Calculated = True
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
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
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end>
      end
      item
        Items = <
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
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
          end>
      end
      item
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
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end>
      end
      item
      end
      item
        Items = <
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
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActEMail
            ImageIndex = 10
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 60
    Top = 410
    StyleName = 'XP Style'
    object ActInsert: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActEdit: TAction
      Tag = 2
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActInsertExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActEMail: TAction
      Category = '2-Database'
      Hint = 'Enviar e-mail ao cliente'
      ImageIndex = 10
      OnExecute = ActEMailExecute
    end
  end
  object ADOCmdDelete: TADOCommand
    CommandText = 'delete from '#13#10'  Solicitacao'#13#10#13#10'where'#13#10'  Id_Software = :Id_Software and'#13#10'  Nr_Item     = :Nr_Item'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Id_Software'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 86
    Top = 207
  end
end
