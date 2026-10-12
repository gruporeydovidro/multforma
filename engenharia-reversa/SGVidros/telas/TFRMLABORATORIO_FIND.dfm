object FrmLaboratorio_Find: TFrmLaboratorio_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Laborat'#243'rios'
  ClientHeight = 359
  ClientWidth = 732
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
    Height = 359
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 711
    Height = 359
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 330
      Width = 704
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 704
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
    object BitBtnConfirm: TBitBtn
      Left = 538
      Top = 332
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 624
      Top = 332
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtFind: TLabeledEdit
      Left = 5
      Top = 20
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'Laborat'#243'rio a consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 633
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      TabOrder = 4
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 700
      Height = 262
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
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
          FieldName = 'cd_laboratorio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_laboratorio'
          Width = 286
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Telefone'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Cidade'
          Width = 125
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 326
    Top = 120
  end
  object ADODsFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Telefone, L.Nm_Contato,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Laboratorio L'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = L.Cd_Cidade'#13#10#13#10'where'#13#10'  L.Nm_Laboratorio like :find'#13#10#13#10'order by'#13#10'  L.Nm_Laboratorio'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '%'
      end>
    Left = 356
    Top = 120
    object ADODsFindcd_laboratorio: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_laboratorio'
    end
    object ADODsFindnm_laboratorio: TStringField
      DisplayLabel = 'Nome do Laborat'#243'rio'
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsFindNr_Telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Nr_Telefone'
      EditMask = '(##) ####-####;0; '
      FixedChar = True
      Size = 10
    end
    object ADODsFindNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsFindDp_Cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
  end
end
