object FrmLogSistema: TFrmLogSistema
  Left = 365
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Visualizar Log do Sistema'
  ClientHeight = 410
  ClientWidth = 763
  Color = clWindow
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
    Height = 410
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 742
    Height = 410
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 380
      Width = 735
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 340
      Top = 3
      Width = 36
      Height = 13
      Caption = 'Origem:'
      Transparent = True
    end
    object SbFilial: TSpeedButton
      Left = 45
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Filial'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFilialClick
    end
    object Label2: TLabel
      Left = 7
      Top = 38
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 649
      Top = 57
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Bevel1: TBevel
      Left = 3
      Top = 77
      Width = 735
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 82
      Width = 47
      Height = 13
      Caption = 'Registros:'
    end
    object Label4: TLabel
      Left = 5
      Top = 3
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object BitBtnClose: TBitBtn
      Left = 655
      Top = 383
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 8
      OnClick = BitBtnCloseClick
      Glyph.Data = {binary 486 bytes}
    end
    object EdtCd_Filial: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnExit = EdtCd_FilialExit
      OnKeyDown = EdtCd_FilialKeyDown
    end
    object EdtNm_Filial: TEdit
      Left = 69
      Top = 17
      Width = 268
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
      TabOrder = 1
    end
    object EdtId_Log: TLabeledEdit
      Left = 190
      Top = 54
      Width = 190
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Identifica'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 6
      OnKeyPress = EdtId_LogKeyPress
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 53
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtDt_End: TDateEdit
      Left = 97
      Top = 53
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
    end
    object DbGLog: TDBGrid
      Left = 5
      Top = 97
      Width = 732
      Height = 149
      DataSource = DsLog
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGLogEnter
      OnExit = DbGLogExit
      Columns = <
        item
          Expanded = False
          FieldName = 'id_log'
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Usuario'
          Width = 414
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ocorrencia'
          Width = 108
          Visible = True
        end>
    end
    object DbGOrigem: TDBGrid
      Left = 340
      Top = 17
      Width = 397
      Height = 19
      DataSource = DsOrigem
      FixedColor = clSilver
      Options = [dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGOrigemDblClick
      OnEnter = DbGOrigemEnter
      OnExit = DbGOrigemExit
      OnKeyPress = DbGOrigemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Ds_Origem'
          Width = 313
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Origem'
          Title.Alignment = taRightJustify
          Width = 62
          Visible = True
        end>
    end
    object CkBContendo: TCheckBox
      Left = 670
      Top = 0
      Width = 67
      Height = 17
      TabStop = False
      Caption = 'Conten&do'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CkBContendoClick
    end
    object DbMHistorico: TDBMemo
      Left = 5
      Top = 251
      Width = 732
      Height = 126
      DataField = 'mm_historico'
      DataSource = DsLog
      ScrollBars = ssVertical
      TabOrder = 9
    end
  end
  object DsLog: TDataSource
    DataSet = ADODsLog
    Left = 31
    Top = 285
  end
  object ADODsLog: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLogCalcFields
    CommandText = 'select'#13#10'  L.Cd_Filial, L.Ds_Origem, L.Id_Log, L.Cd_Usuario, U.Nm_Usuario, L.Dt_Ocorrencia, L.Mm_Historico'#13#10#13#10'from'#13#10'  LogSistema L'#13#10#13#10'inner join'#13#10'  Usuario U'#13#10'on'#13#10'  U.Cd_Usuario = L.Cd_Usuario'#13#10#13#10'where'#13#10'  Ds_Origem = :Ds_Origem and'#13#10'  Id_Log       = :Id_Log'
    Parameters = <
      item
        Name = 'Ds_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Id_Log'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQLOther0.Strings = (
      'select'
      '  L.Cd_Filial, L.Ds_Origem, L.Id_Log, L.Cd_Usuario, U.Nm_Usuario,'
      '  L.Dt_Ocorrencia, L.Mm_Historico'
      ''
      'from'
      '  LogSistema L'
      ''
      'inner join'
      '  Usuario U'
      'on'
      '  U.Cd_Usuario = L.Cd_Usuario'
      ''
      'where'
      '  /* Cd_Filial */'
      '  L.Ds_Origem = :Ds_Origem and'
      '  /* Id_Log */'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      ''
      'order by'
      '  L.Id_Log, L.Dt_Ocorrencia'
    )
    Left = 61
    Top = 285
    object ADODsLogcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsLogds_origem: TStringField
      FieldName = 'ds_origem'
      Size = 50
    end
    object ADODsLogid_log: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'id_log'
    end
    object ADODsLogcd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsLognm_usuario: TStringField
      FieldName = 'nm_usuario'
      Size = 50
    end
    object ADODsLogdt_ocorrencia: TDateTimeField
      DisplayLabel = 'Data da Ocorr'#234'ncia'
      FieldName = 'dt_ocorrencia'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsLogDp_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 80
      Calculated = True
    end
    object ADODsLogMm_Historico: TMemoField
      FieldName = 'Mm_Historico'
      BlobType = ftMemo
    end
  end
  object ADODsOrigem: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Ds_Origem, Count(*) as Nr_Origem'#13#10#13#10'from'#13#10'  LogSistema'#13#10#13#10'group by'#13#10'  Ds_Origem'#13#10#13#10'order by'#13#10'  Ds_Origem'
    Parameters = <>
    Left = 131
    Top = 285
    object ADODsOrigemNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsOrigemDs_Origem: TStringField
      FieldName = 'Ds_Origem'
      Size = 50
    end
  end
  object DsOrigem: TDataSource
    DataSet = ADODsOrigem
    Left = 101
    Top = 285
  end
end
