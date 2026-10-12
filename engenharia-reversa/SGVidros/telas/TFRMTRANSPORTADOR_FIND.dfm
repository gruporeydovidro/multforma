object FrmTransportador_Find: TFrmTransportador_Find
  Left = 202
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Transportador'
  ClientHeight = 351
  ClientWidth = 754
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
    Height = 351
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 733
    Height = 351
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 320
      Width = 724
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 724
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
      Left = 560
      Top = 324
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 646
      Top = 324
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
      EditLabel.Width = 124
      EditLabel.Height = 13
      EditLabel.Caption = 'Transportador a consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 649
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 719
      Height = 255
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
          FieldName = 'cd_transportador'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Documento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_transportador'
          Width = 336
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Cidade'
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Telefone'
          Width = 80
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
    CommandText = 'select'#13#10'  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Capacidade, T.Nr_Placa,'#13#10'  T.Nr_Documento, T.Nr_Telefone, C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Nm_Transportador like :find'#13#10#13#10'order by'#13#10'  T.Nm_Transportador'
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
    object ADODsFindcd_transportador: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_transportador'
    end
    object ADODsFindnm_transportador: TStringField
      DisplayLabel = 'Nome do Transportador'
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsFindnr_capacidade: TBCDField
      DisplayLabel = 'Capacidade'
      FieldName = 'nr_capacidade'
      Precision = 12
      Size = 3
    end
    object ADODsFindnr_placa: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'nr_placa'
      FixedChar = True
      Size = 7
    end
    object ADODsFindNr_Documento: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'Nr_Documento'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object ADODsFindNr_Telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Nr_Telefone'
      EditMask = '(##) ####-####;0; '
      FixedChar = True
      Size = 10
    end
    object ADODsFindDp_Cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
  end
end
