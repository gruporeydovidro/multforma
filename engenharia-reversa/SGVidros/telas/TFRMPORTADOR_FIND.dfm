object FrmPortador_Find: TFrmPortador_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Grupo de Portador'
  ClientHeight = 359
  ClientWidth = 637
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
    Height = 359
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 616
    Height = 359
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 328
      Width = 609
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 609
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
      Left = 443
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
      Left = 529
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
      EditLabel.Width = 98
      EditLabel.Height = 13
      EditLabel.Caption = 'Portador a consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 533
      Top = 1
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
      Width = 604
      Height = 264
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
          FieldName = 'cd_portador'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_portador'
          Width = 414
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_pagamento'
          Width = 131
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
    CommandText = 'select'#13#10'  cd_Portador, nm_portador,'#13#10'  case fl_pagamento'#13#10'    when ''''1'''' then ''''Dinheiro'''#13#10'    when ''''2'''' then ''''Cheque'''#13#10'    when ''''3'''' then ''''Boleto'''#13#10'    when ''''4'''' then ''''Cart'#227'o'''#13#10'    when ''''5'''' then ''''Dep'#243'sito'''#13#10'    when ''''6'''' then ''''Transfer'#234'ncia'''#13#10'    when ''''7'''' then ''''Vale'''#13#10'    when ''''8'''' then ''''Tiquete'''#13#10'    when ''''9'''' then ''''Duplicata'''#13#10'  end as Dp_Pagamento'#13#10#13#10'from'#13#10'  portador'#13#10#13#10'where'#13#10'  nm_portador like :find'#13#10#13#10'order by'#13#10'  nm_portador'
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
    object ADODsFindcd_portador: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_portador'
    end
    object ADODsFindnm_portador: TStringField
      DisplayLabel = 'Nome do Portador'
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsFinddp_pagamento: TStringField
      DisplayLabel = 'Pagamento'
      FieldName = 'dp_pagamento'
      Size = 8190
    end
  end
end
