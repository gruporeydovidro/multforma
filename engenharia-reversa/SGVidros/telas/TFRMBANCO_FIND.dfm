object FrmBanco_Find: TFrmBanco_Find
  Left = 356
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Banco'
  ClientHeight = 266
  ClientWidth = 501
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
    Height = 266
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 480
    Height = 266
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 237
      Width = 473
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 473
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
      Left = 309
      Top = 241
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 395
      Top = 241
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
      EditLabel.Width = 95
      EditLabel.Height = 13
      EditLabel.Caption = 'Banco a consultar...'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 393
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
      Width = 468
      Height = 170
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'cd_banco'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sg_banco'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_banco'
          Width = 291
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
    CommandText = 'select'#13#10'  Cd_Banco, Nm_Banco, Sg_Banco'#13#10#13#10'from'#13#10'  Banco'#13#10#13#10'where'#13#10'  Sg_Banco like :find'#13#10#13#10'order by'#13#10'  Sg_Banco'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '%'
      end>
    Left = 356
    Top = 120
    object ADODsFindcd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsFindnm_banco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'nm_banco'
      Size = 50
    end
    object ADODsFindsg_banco: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sg_banco'
    end
  end
end
