object FrmArredondamento_Find: TFrmArredondamento_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Arredondamentos'
  ClientHeight = 246
  ClientWidth = 439
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 246
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 418
    Height = 246
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 215
      Width = 411
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 411
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
      Left = 245
      Top = 219
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 331
      Top = 219
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
      EditLabel.Width = 136
      EditLabel.Height = 13
      EditLabel.Caption = 'Arredondamento a consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 337
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
      Width = 407
      Height = 147
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_arredondamento'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_arredondamento'
          Width = 308
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_arredondamento'
          Title.Alignment = taRightJustify
          Width = 41
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
    CommandText = 'select'#13#10'  Cd_Arredondamento, Ds_Arredondamento, Vl_Arredondamento'#13#10#13#10'from'#13#10'  Arredondamento'#13#10#13#10'where'#13#10'  Ds_Arredondamento like :find'#13#10#13#10'order by'#13#10'  Ds_Arredondamento'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'JO%'
      end>
    Left = 356
    Top = 120
    object ADODsFindcd_arredondamento: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_arredondamento'
    end
    object ADODsFindds_arredondamento: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ds_arredondamento'
      Size = 50
    end
    object ADODsFindvl_arredondamento: TSmallintField
      DisplayLabel = 'Valor'
      FieldName = 'vl_arredondamento'
    end
  end
end
