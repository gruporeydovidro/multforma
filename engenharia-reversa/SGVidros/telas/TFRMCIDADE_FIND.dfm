object FrmCidade_Find: TFrmCidade_Find
  Left = 391
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Cidade'
  ClientHeight = 385
  ClientWidth = 762
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 385
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 741
    Height = 385
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 356
      Width = 733
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 733
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 48
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object Label6: TLabel
      Left = 316
      Top = 4
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 567
      Top = 359
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 653
      Top = 359
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtFind: TLabeledEdit
      Left = 5
      Top = 20
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade a consultar:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 656
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 729
      Height = 292
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
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
          FieldName = 'cd_cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_cidade'
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_estado'
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Pais'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_IBGE'
          Width = 50
          Visible = True
        end>
    end
    object EdtCd_CidadeFnd: TCurrencyEdit
      Tag = 1
      Left = 316
      Top = 20
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 1
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 326
    Top = 120
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  C.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado, C.Nr_CEP,'#13#10'  C.Sg_Estado + '''' - '''' + E.Nm_Estado as Dp_Estado,'#13#10'  C.Nm_Pais, C.Cd_Pais, C.Cd_IBGE'#13#10#13#10'from'#13#10'  Cidade C'#13#10#13#10'inner join'#13#10'  Estado E'#13#10'on'#13#10'  E.Sg_Estado = C.Sg_Estado'#13#10#13#10'where'#13#10'  C.Nm_Cidade like :find'#13#10#13#10'order by'#13#10'  C.Nm_Cidade'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = 'JO%'
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado, C.Nr_CEP,'
      '  C.Sg_Estado + '''' - '''' + E.Nm_Estado as Dp_Estado,'
      '  C.Nm_Pais, C.Cd_Pais, C.Cd_IBGE'
      ''
      'from'
      '  Cidade C'
      ''
      'inner join'
      '  Estado E'
      'on'
      '  E.Sg_Estado = C.Sg_Estado'
      ''
      'where'
    )
    Left = 356
    Top = 120
    object ADODsFindnm_cidade: TStringField
      DisplayLabel = 'Nome da Cidade'
      FieldName = 'nm_cidade'
      Size = 30
    end
    object ADODsFinddp_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'dp_estado'
      Size = 254
    end
    object ADODsFindcd_cidade: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_cidade'
    end
    object ADODsFindsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsFindnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsFindNm_Pais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'Nm_Pais'
      Size = 50
    end
    object ADODsFindCd_Pais: TStringField
      FieldName = 'Cd_Pais'
      Size = 10
    end
    object ADODsFindCd_IBGE: TStringField
      DisplayLabel = 'IBGE'
      FieldName = 'Cd_IBGE'
      Size = 10
    end
  end
end
