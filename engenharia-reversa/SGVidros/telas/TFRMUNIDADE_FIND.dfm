object FrmUnidade_Find: TFrmUnidade_Find
  Left = 362
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Unidades'
  ClientHeight = 243
  ClientWidth = 423
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
    Height = 243
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 402
    Height = 243
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 212
      Width = 396
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 396
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
      Left = 229
      Top = 216
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 315
      Top = 216
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
      Width = 290
      Height = 19
      AutoSelect = False
      EditLabel.Width = 109
      EditLabel.Height = 13
      EditLabel.Caption = 'Unidades a consultar...'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 323
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
      Width = 391
      Height = 147
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
          FieldName = 'sg_unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_unidade'
          Width = 342
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 288
    Top = 179
  end
  object ADODsFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Sg_Unidade, Ds_Unidade'#13#10#13#10'from'#13#10'  Unidade'#13#10#13#10'where'#13#10'  Ds_Unidade like :find'#13#10#13#10'order by'#13#10'  Ds_Unidade'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '%'
      end>
    Left = 318
    Top = 179
    object ADODsFindsg_unidade: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsFindds_unidade: TStringField
      DisplayLabel = 'Descri'#231#227'o da Unidade'
      FieldName = 'ds_unidade'
      Size = 30
    end
  end
end
