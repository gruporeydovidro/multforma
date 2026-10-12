object FrmEstado_Find: TFrmEstado_Find
  Left = 369
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Estados'
  ClientHeight = 266
  ClientWidth = 501
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
      EditLabel.Width = 97
      EditLabel.Height = 13
      EditLabel.Caption = 'Estado a consultar...'
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
          FieldName = 'sg_estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_estado'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pr_contribuinte'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pr_naocontrib'
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
    CommandText = 'select'#13#10'  E.sg_estado, E.nm_estado, EA.pr_contribuinte, EA.pr_naocontrib'#13#10#13#10'from'#13#10'  estado E'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem  = :Sg_Origem and'#13#10'  EA.Sg_Destino = E.Sg_Estado'#13#10#13#10'where'#13#10'  nm_estado like :find'#13#10#13#10'order by'#13#10'  nm_estado '
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Find'
        DataType = ftString
        Size = 3
        Value = '%'
      end>
    Left = 356
    Top = 120
    object ADODsFindsg_estado: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsFindnm_estado: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'nm_estado'
      Size = 30
    end
    object ADODsFindpr_contribuinte: TBCDField
      DisplayLabel = 'Contribuinte'
      FieldName = 'pr_contribuinte'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsFindpr_naocontrib: TBCDField
      DisplayLabel = 'N'#227'o Contribuinte'
      FieldName = 'pr_naocontrib'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
  end
end
