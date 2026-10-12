object FrmFilial_Find: TFrmFilial_Find
  Left = 282
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Filiais'
  ClientHeight = 341
  ClientWidth = 680
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
    Height = 341
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 659
    Height = 341
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 310
      Width = 650
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 650
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
      Left = 486
      Top = 314
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 572
      Top = 314
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
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'Filiais a Consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 574
      Top = 3
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      TabOrder = 4
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 645
      Height = 243
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
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_filial'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_filial'
          Width = 246
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_abreviado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_cidade'
          Width = 216
          Visible = True
        end>
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
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Filial F'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'where'#13#10'  F.Nm_Filial like :find'#13#10#13#10'order by'#13#10'  F.Nm_Filial '
    Parameters = <
      item
        Name = 'find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-- Todas as Filiais'
      'select'
      '  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'
      ''
      'from'
      '  Filial F'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = F.Cd_Cidade'
      ''
      'where'
      '  F.Nm_Filial like :find'
      ''
      'order by'
      '  F.Nm_Filial'
    )
    SQLOther1.Strings = (
      '-- Filiais do Usu'#225'rio'
      'select'
      '  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'
      ''
      'from'
      '  Usuario_Filial UF'
      ''
      'inner join'
      '  Filial F'
      ''
      'on'
      '  F.Cd_Filial = UF.Cd_Filial'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = F.Cd_Cidade'
      ''
      'where'
      '  UF.Cd_Usuario = :Find'
      ''
      'order by'
      '  F.Nm_Filial'
    )
    Left = 354
    Top = 120
    object ADODsFindnm_filial: TStringField
      DisplayLabel = 'Nome da Filial'
      FieldName = 'nm_filial'
      Size = 50
    end
    object ADODsFindnm_abreviado: TStringField
      DisplayLabel = 'Nome Abreviado'
      FieldName = 'nm_abreviado'
    end
    object ADODsFinddp_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsFindcd_filial: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_filial'
    end
  end
end
