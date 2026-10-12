object FrmEmitente_Find: TFrmEmitente_Find
  Left = 270
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Emitente'
  ClientHeight = 555
  ClientWidth = 911
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BvlSeparator: TBevel
    Left = 26
    Top = 524
    Width = 876
    Height = 5
    Shape = bsTopLine
  end
  object PnlContato: TPanel
    Left = 25
    Top = 365
    Width = 878
    Height = 158
    BevelOuter = bvNone
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
    object Label8: TLabel
      Left = 10
      Top = 3
      Width = 61
      Height = 13
      Caption = 'Contatos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label41: TLabel
      Left = 4
      Top = 94
      Width = 55
      Height = 13
      Caption = 'Ocorr'#234'ncia:'
    end
    object Label42: TLabel
      Left = 4
      Top = 126
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label43: TLabel
      Left = 74
      Top = 126
      Width = 69
      Height = 13
      Caption = 'Novo Contato:'
    end
    object Label44: TLabel
      Left = 146
      Top = 126
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label9: TLabel
      Left = 285
      Top = 94
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DbEdtDs_Ocorrencia: TDBEdit
      Left = 4
      Top = 107
      Width = 277
      Height = 19
      TabStop = False
      DataField = 'Dp_Ocorrencia'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDt_Contato: TDBEdit
      Left = 4
      Top = 139
      Width = 65
      Height = 19
      TabStop = False
      DataField = 'Dt_Contato'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtDt_NovoContato: TDBEdit
      Left = 74
      Top = 139
      Width = 65
      Height = 19
      TabStop = False
      DataField = 'Dt_NovoContato'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbEdtCd_Usuario: TDBEdit
      Left = 146
      Top = 139
      Width = 110
      Height = 19
      TabStop = False
      DataField = 'Cd_Usuario'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DbGContato: TDBGrid
      Left = 3
      Top = 16
      Width = 874
      Height = 76
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Contato'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Contato'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_NovoContato'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Hora'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Usuario'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_orcamento'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Contato'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Ocorrencia'
          Width = 123
          Visible = True
        end>
    end
    object DbMContato: TDBMemo
      Left = 285
      Top = 107
      Width = 592
      Height = 50
      TabStop = False
      DataField = 'Mm_Observacao'
      DataSource = DsContato
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  object CkBContato: TCheckBox
    Left = 27
    Top = 530
    Width = 122
    Height = 17
    Caption = '&Visualizar Contatos'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CkBContatoClick
  end
  object BitBtnConfirm: TBitBtn
    Left = 735
    Top = 527
    Width = 87
    Height = 27
    Caption = 'C&onfirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnConfirmClick
    Glyph.Data = {binary 482 bytes}
    NumGlyphs = 2
  end
  object BitBtnCancel: TBitBtn
    Left = 823
    Top = 527
    Width = 87
    Height = 27
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 4
    Glyph.Data = {binary 482 bytes}
    NumGlyphs = 2
  end
  object PnlFundo: TPanel
    Left = 27
    Top = 0
    Width = 884
    Height = 362
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Label11: TLabel
      Left = 1
      Top = 2
      Width = 179
      Height = 13
      Caption = '&Nome do Emitente ou Nome Fantasia:'
      FocusControl = EdtNm_NomeFind
    end
    object Label4: TLabel
      Left = 258
      Top = 2
      Width = 36
      Height = 13
      Caption = 'C'#243'&digo:'
      FocusControl = EdtCd_EmitenteFind
    end
    object Label5: TLabel
      Left = 321
      Top = 2
      Width = 61
      Height = 13
      Caption = 'CN&PJ / CPF:'
      FocusControl = EdtNr_DoctoFind
    end
    object Label10: TLabel
      Left = 433
      Top = 2
      Width = 91
      Height = 13
      Caption = '&Grupo de Emitente:'
      FocusControl = EdtCd_GrupoFind
    end
    object SbGrupoFind: TSpeedButton
      Left = 473
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoFindClick
    end
    object Label6: TLabel
      Left = 1
      Top = 37
      Width = 80
      Height = 13
      Caption = 'C&idade / Estado:'
      FocusControl = EdtCd_CidadeFind
    end
    object SbCidadeFind: TSpeedButton
      Left = 51
      Top = 51
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeFindClick
    end
    object Label7: TLabel
      Left = 664
      Top = 37
      Width = 45
      Height = 13
      Caption = '&Telefone:'
      FocusControl = EdtNr_TelFind
    end
    object Label13: TLabel
      Left = 325
      Top = 37
      Width = 32
      Height = 13
      Caption = 'E-&Mail:'
      FocusControl = EdtDs_EMailFind
    end
    object Label2: TLabel
      Left = 6
      Top = 73
      Width = 139
      Height = 13
      Caption = 'Resultado da Consulta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DbTxtNm_Emitente: TDBText
      Left = 149
      Top = 73
      Width = 489
      Height = 17
      DataField = 'Nm_Emitente'
      DataSource = DsFind
    end
    object EdtNm_NomeFind: TEdit
      Tag = 1
      Left = 1
      Top = 17
      Width = 255
      Height = 19
      TabOrder = 0
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtCd_EmitenteFind: TCurrencyEdit
      Tag = 2
      Left = 258
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtNr_DoctoFind: TEdit
      Tag = 3
      Left = 321
      Top = 17
      Width = 110
      Height = 19
      TabOrder = 2
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtCd_GrupoFind: TCurrencyEdit
      Tag = 4
      Left = 433
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnExit = EdtCd_GrupoFindExit
      OnKeyDown = EdtCd_GrupoFindKeyDown
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtNm_GrupoFind: TEdit
      Left = 497
      Top = 17
      Width = 257
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtCd_CidadeFind: TCurrencyEdit
      Tag = 5
      Left = 1
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnExit = EdtCd_CidadeFindExit
      OnKeyDown = EdtCd_GrupoFindKeyDown
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtNm_CidadeFind: TEdit
      Left = 75
      Top = 51
      Width = 248
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtNr_TelFind: TEdit
      Tag = 7
      Left = 664
      Top = 51
      Width = 90
      Height = 19
      TabOrder = 8
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object EdtDs_EMailFind: TEdit
      Tag = 6
      Left = 325
      Top = 51
      Width = 337
      Height = 19
      MaxLength = 100
      TabOrder = 7
      OnDblClick = EdtNm_EmitenteFindDblClick
      OnKeyPress = EdtNm_EmitenteFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 1
      Top = 89
      Width = 877
      Height = 236
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Emitente'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Cidade'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Telefone_1'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Documento'
          Title.Alignment = taCenter
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Grupo'
          Width = 126
          Visible = True
        end>
    end
    object PnlEndereco: TPanel
      Left = 0
      Top = 328
      Width = 884
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 10
      object LblEndereco: TLabel
        Left = 4
        Top = 0
        Width = 49
        Height = 13
        AutoSize = False
        Caption = 'Endere'#231'o:'
      end
      object DbTxtEndereco: TDBText
        Left = 55
        Top = 0
        Width = 425
        Height = 13
        DataField = 'Dp_Endereco'
        DataSource = DsFind
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label12: TLabel
        Left = 4
        Top = 14
        Width = 49
        Height = 13
        AutoSize = False
        Caption = 'Cidade:'
      end
      object DbTxtCidade: TDBText
        Left = 43
        Top = 14
        Width = 275
        Height = 13
        DataField = 'Dp_Cidade'
        DataSource = DsFind
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DbTxtEMail: TDBText
        Left = 400
        Top = 15
        Width = 465
        Height = 13
        DataField = 'ds_email'
        DataSource = DsFind
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label14: TLabel
        Left = 365
        Top = 14
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'E-Mail:'
      end
      object DbTxtGrupo: TDBText
        Left = 558
        Top = 0
        Width = 198
        Height = 13
        DataField = 'Dp_Grupo'
        DataSource = DsFind
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 524
        Top = 0
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Grupo:'
      end
    end
    object CkBFindMS: TCheckBox
      Left = 763
      Top = 69
      Width = 103
      Height = 17
      TabStop = False
      Caption = 'C&liente/Ex-cliente'
      TabOrder = 11
      OnClick = CkBFindMSClick
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 555
    Align = alLeft
    TabOrder = 5
  end
  object CkBContendo: TCheckBox
    Left = 829
    Top = 1
    Width = 68
    Height = 17
    TabStop = False
    Caption = 'Conten&do'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CkBContendoClick
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 203
    Top = 419
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 490
    Top = 419
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsContatoCalcFields
    CommandText = 'select top 50'#13#10'  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'#13#10'  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'#13#10'  A.Mm_Observacao, A.Nr_Orcamento,'#13#10'  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + B.Ds_Ocorrencia as Dp_Ocorrencia,'#13#10'  case A.St_Contato'#13#10'    when ''''1'''' then ''''Aberto'''#13#10'    when ''''2'''' then ''''Encerrado'''#13#10'  end as Dp_Contato'#13#10#13#10'from'#13#10'  Contato A'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia B'#13#10'on'#13#10'  B.Cd_Ocorrencia = A.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente '#13#10#13#10'order by'#13#10'  Nr_Contato desc'
    DataSource = DsFind
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 25023
      end>
    Left = 519
    Top = 419
    object ADODsContatoNr_Contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'Nr_Contato'
      DisplayFormat = '#,##0'
    end
    object ADODsContatoDt_Contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Contato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatoNm_Contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsContatoDs_Ocorrencia: TStringField
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsContatoSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsContatoDt_NovoContato: TDateTimeField
      DisplayLabel = 'Novo Contato'
      FieldName = 'Dt_NovoContato'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsContatoCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsContatoDp_Ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 58
    end
    object ADODsContatoDp_Contato: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Dp_Contato'
      ReadOnly = True
      Size = 9
    end
    object ADODsContatoDp_Hora: TStringField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'Dp_Hora'
      Size = 5
      Calculated = True
    end
    object ADODsContatonr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsContatoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsNomeCalcFields
    CommandText = '--------------- Base da consulta'#13#10'select'#13#10'  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,'#13#10'  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Grupo EG'#13#10'on'#13#10'  EG.Cd_Grupo = E.Cd_Grupo'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '-- ------------ Base da consulta'
      'select'
      '  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  /* FindMS */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo telefone'
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_Telefone_1 like -- Filtro --'
      ''
      'union'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_Telefone_2 like -- Filtro --'
      ''
      'union'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_Telefone_3 like -- Filtro --'
      ''
      'union'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_FAX like -- Filtro --'
      ''
      'union'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_Celular_1 like -- Filtro --'
      ''
      'union'
      ''
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  /* FindMS */'
      '  E.Cd_Emitente = EE.Cd_Emitente and'
      '  E.Nr_Endereco = EE.Nr_Endereco'
      '  /* and */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Nr_Celular_2 like -- Filtro --'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Consulta pelo EMail'
      'select distinct'
      '  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  /* FindMS */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_Email */'
      ''
      '--------------- EMail de Cobranca'
      'union'
      'select'
      '  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMailCob as Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  /* FindMS */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_EmailCob */'
      ''
      '--------------- EMail da NFe'
      'union'
      'select'
      '  E.Nm_Emitente, E.Cd_Emitente, E.Nr_Documento, E.Nm_Fantasia,'
      '  EE.Ds_Endereco + '''' '''' + EE.Nm_Bairro as Ds_Endereco, EE.Nr_Telefone_1,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'
      '  EE.Ds_Complemento, E.Ds_EMailNFe as Ds_EMail, E.Cd_Grupo, EG.Nm_Grupo'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  /* FindMS */'
      '  /* Nm_Emitente */'
      '  /* Nm_Fantasia */'
      '  /* Cd_Emitente */'
      '  /* Nr_Documento */'
      '  /* Cd_Grupo */'
      '  /* Ds_EmailNFe */'
      ''
      ''
    )
    Left = 231
    Top = 419
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindCd_Emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsFindNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsFindDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      ReadOnly = True
      Size = 81
    end
    object ADODsFindNr_Telefone_1: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsFindDp_Cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsFindDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsFindDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsFindCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsFindNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsFindDp_Endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Endereco'
      Size = 320
      Calculated = True
    end
    object ADODsFindDp_Documento: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldKind = fkCalculated
      FieldName = 'Dp_Documento'
      Size = 18
      Calculated = True
    end
    object ADODsFindDp_Grupo: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Grupo'
      Size = 60
      Calculated = True
    end
  end
end
