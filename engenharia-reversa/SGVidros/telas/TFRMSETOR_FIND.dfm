object FrmSetor_Find: TFrmSetor_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Setores da Produ'#231#227'o'
  ClientHeight = 311
  ClientWidth = 564
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 311
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 246
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 543
    Height = 311
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 418
    ExplicitHeight = 246
    object BvlSeparator: TBevel
      Left = 3
      Top = 281
      Width = 536
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 536
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
      Left = 370
      Top = 284
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 456
      Top = 284
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
      EditLabel.Width = 83
      EditLabel.Height = 13
      EditLabel.Caption = 'Setor a consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 461
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
      Width = 532
      Height = 213
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Setor'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Setor'
          Width = 332
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Setor'
          Width = 140
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
    Active = True
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Setor, Nm_Setor, Sg_Setor'#13#10#13#10'from'#13#10'  Setor'#13#10#13#10'where'#13#10'  Nm_Setor like :find'#13#10#13#10'order by'#13#10'  Nm_Setor'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'JO%'
      end>
    Left = 356
    Top = 120
    object ADODsFindCd_Setor: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Setor'
    end
    object ADODsFindNm_Setor: TStringField
      DisplayLabel = 'Nome do Setor'
      FieldName = 'Nm_Setor'
      Size = 50
    end
    object ADODsFindSg_Setor: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'Sg_Setor'
      Size = 15
    end
  end
end
