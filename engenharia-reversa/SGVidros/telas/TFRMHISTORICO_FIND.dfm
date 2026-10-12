object FrmHistorico_Find: TFrmHistorico_Find
  Left = 422
  Top = 327
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Hist'#243'ricos'
  ClientHeight = 372
  ClientWidth = 642
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 372
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 621
    Height = 372
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 340
      Width = 612
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 612
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
      Left = 446
      Top = 343
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 532
      Top = 343
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
      EditLabel.Width = 105
      EditLabel.Height = 13
      EditLabel.Caption = 'Hist'#243'rico a consutlar...'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 534
      Top = 4
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
      Width = 607
      Height = 276
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
          FieldName = 'cd_historico'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_historico'
          Width = 498
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dp_tipo'
          Title.Alignment = taCenter
          Width = 48
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
    CommandText = '-- Todos os Hist'#243'ricos'#13#10'select'#13#10'  cd_historico, ds_historico, tp_historico,'#13#10'  case tp_historico'#13#10'    when ''''1'''' then ''''D'#233'bito'''#13#10'    when ''''2'''' then ''''Cr'#233'dito'''#13#10'  end as Dp_Tipo'#13#10#13#10'from'#13#10'  historico'#13#10#13#10'where'#13#10'  ds_historico like :find'#13#10#13#10'order by'#13#10'  ds_historico'
    Parameters = <
      item
        Name = 'find'
        DataType = ftString
        Size = 1
        Value = '%'
      end>
    SQLOther0.Strings = (
      '-- Todos os Hist'#243'ricos'
      'select'
      '  cd_historico, ds_historico, tp_historico,'
      '  case tp_historico'
      '    when ''''1'''' then ''''D'#233'bito'''
      '    when ''''2'''' then ''''Cr'#233'dito'''
      '  end as Dp_Tipo'
      ''
      'from'
      '  historico'
      ''
      'where'
      '  ds_historico like :find'
      ''
      'order by'
      '  ds_historico'
    )
    SQLOther1.Strings = (
      '-- Por Tipo de Hist'#243'rico'
      'select'
      '  cd_historico, ds_historico, tp_historico,'
      '  case tp_historico'
      '    when ''''1'''' then ''''D'#233'bito'''
      '    when ''''2'''' then ''''Cr'#233'dito'''
      '  end as Dp_Tipo'
      ''
      'from'
      '  historico'
      ''
      'where'
      '  tp_historico = :Tp_Historico and'
      '  ds_historico like :find'
      ''
      'order by'
      '  ds_historico'
    )
    Left = 357
    Top = 120
    object ADODsFindcd_historico: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_historico'
      DisplayFormat = '#,##0'
    end
    object ADODsFindds_historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsFindtp_historico: TStringField
      FieldName = 'tp_historico'
      FixedChar = True
      Size = 1
    end
    object ADODsFinddp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'dp_tipo'
      Size = 8190
    end
  end
end
