object FrmInstalacao_Find: TFrmInstalacao_Find
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Instala'#231#227'o'
  ClientHeight = 369
  ClientWidth = 752
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
    Height = 369
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 731
    Height = 369
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 340
      Width = 724
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 42
      Width = 724
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 644
      Top = 22
      Width = 82
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Instala'#231#227'o:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 69
      Top = 3
      Width = 76
      Height = 13
      Caption = 'Agendado para:'
    end
    object Label10: TLabel
      Left = 164
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitenteFind: TSpeedButton
      Left = 214
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteFindClick
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 93
      Height = 13
      Caption = 'Ordem de Medi'#231#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 558
      Top = 342
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 644
      Top = 342
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_InstFind: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtDt_InstFind: TDateEdit
      Left = 69
      Top = 18
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_EmitenteFnd: TCurrencyEdit
      Tag = 1
      Left = 164
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_EmitenteFndExit
      OnKeyDown = EdtCd_EmitenteFndKeyDown
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 237
      Top = 18
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 63
      Width = 718
      Height = 274
      Ctl3D = False
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Instalacao'
          Title.Alignment = taCenter
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Agenda'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Situacao'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 112
    Top = 144
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFindCalcFields
    CommandText = 'select'#13#10'  I.Cd_Filial, I.Nr_Instalacao, I.St_Instalacao, I.Dt_Emissao, O.Cd_Emitente,'#13#10'  E.Nm_Emitente, I.Cd_Funcionario, F.Nm_Funcionario, I.Dt_Agenda'#13#10#13#10'from'#13#10'  Instalacao I'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = I.Cd_Filial and'#13#10'  O.Nr_Orcamento = I.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = I.Cd_Funcionario'#13#10#13#10'/* Instalacao */'#13#10#13#10'where'#13#10'  I.Cd_Filial     = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 11
      end>
    SQLOther0.Strings = (
      'select'
      '  I.Cd_Filial, I.Nr_Instalacao, I.St_Instalacao, I.Dt_Emissao, O.Cd_Emitente,'
      '  E.Nm_Emitente, I.Cd_Funcionario, F.Nm_Funcionario, I.Dt_Agenda'
      ''
      'from'
      '  Instalacao I'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = I.Cd_Filial and'
      '  O.Nr_Orcamento = I.Nr_Orcamento'
      '  /* Cd_Emitente */'
      ''
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = I.Cd_Funcionario'
      ''
      '/* Instalacao */'
      ''
      'where'
      '  I.Cd_Filial     = :Cd_Filial'
    )
    SQLOther1.Strings = (
      'inner join'
      '  Instalacao_Agenda IA'
      'on'
      '  IA.Cd_Filial     = I.Cd_FIlial and'
      '  IA.Nr_Instalacao = I.Nr_Instalacao and'
      '  IA.Dt_Agenda    >= :Dt_Start and'
      '  IA.Dt_Agenda     < :Dt_End'
    )
    Left = 141
    Top = 144
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_Instalacao: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'Nr_Instalacao'
    end
    object ADODsFindSt_Instalacao: TStringField
      FieldName = 'St_Instalacao'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsFindNm_Funcionario: TStringField
      DisplayLabel = 'Instalador'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsFindDs_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsFindDt_Agenda: TDateTimeField
      DisplayLabel = 'Agendado para'
      FieldName = 'Dt_Agenda'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
  end
end
