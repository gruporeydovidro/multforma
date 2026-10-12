object FrmCFOP_Find: TFrmCFOP_Find
  Left = 356
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de CFOP'
  ClientHeight = 367
  ClientWidth = 722
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
    Height = 367
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 701
    Height = 367
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 338
      Width = 694
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 694
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
      Left = 528
      Top = 340
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 614
      Top = 340
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtFind: TLabeledEdit
      Left = 5
      Top = 20
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 121
      EditLabel.Height = 13
      EditLabel.Caption = 'Consultar pela Descri'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 617
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      TabOrder = 5
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 689
      Height = 273
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
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
          FieldName = 'Cd_CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_CFOP'
          Width = 337
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Estoque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Terceiros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Sintegra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Operacao'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object EdtCdFind: TLabeledEdit
      Left = 318
      Top = 20
      Width = 43
      Height = 19
      AutoSelect = False
      EditLabel.Width = 101
      EditLabel.Height = 13
      EditLabel.Caption = 'Consultar pela CFOP:'
      LabelSpacing = 2
      MaxLength = 4
      TabOrder = 1
      OnDblClick = EdtCdFindDblClick
      OnKeyPress = EdtCdFindKeyPress
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
    CommandText = 'select'#13#10'  Cd_CFOP, Ds_CFOP,'#13#10'  Dp_Estoque   = case when Tp_CFOP      = ''''1'''' then ''''Sim'''' end,'#13#10'  Dp_Terceiros = case when Fl_Terceiros = ''''1'''' then ''''Sim'''' end,'#13#10'  Dp_Sintegra  = case when Fl_Sintegra  = ''''1'''' then ''''Sim'''' end,'#13#10'  Dp_Operacao  = '#13#10'    case Tp_Operacao'#13#10'      when ''''1'''' then ''''Entrada / Saida Normal'''' '#13#10'      when ''''2'''' then ''''Devolu'#231#227'o'''#13#10'      when ''''3'''' then ''''Simples Remessa'''#13#10'      when ''''4'''' then ''''Acerto de Estoque'''#13#10'    end'#13#10#13#10'from'#13#10'  CFOP'#13#10#13#10'where'#13#10'  Ds_CFOP like :find'#13#10#13#10'order by'#13#10'  Ds_CFOP'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '%'
      end>
    SQLOther0.Strings = (
      '--------------- Consulta pela descri'#231#227'o'
      'select'
      '  Cd_CFOP, Ds_CFOP,'
      '  Dp_Estoque   = case when Tp_CFOP      = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Terceiros = case when Fl_Terceiros = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Sintegra  = case when Fl_Sintegra  = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Operacao  = '
      '    case Tp_Operacao'
      '      when ''''1'''' then ''''Entrada / Saida Normal'''' '
      '      when ''''2'''' then ''''Devolu'#231#227'o'''
      '      when ''''3'''' then ''''Simples Remessa'''
      '      when ''''4'''' then ''''Acerto de Estoque'''
      '    end'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Ds_CFOP like :find'
      ''
      'order by'
      '  Ds_CFOP'
    )
    SQLOther1.Strings = (
      '--------------- Consulta pela CFOP'
      'select'
      '  Cd_CFOP, Ds_CFOP,'
      '  Dp_Estoque   = case when Tp_CFOP      = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Terceiros = case when Fl_Terceiros = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Sintegra  = case when Fl_Sintegra  = ''''1'''' then ''''Sim'''' end,'
      '  Dp_Operacao  = '
      '    case Tp_Operacao'
      '      when ''''1'''' then ''''Entrada / Saida Normal'''' '
      '      when ''''2'''' then ''''Devolu'#231#227'o'''
      '      when ''''3'''' then ''''Simples Remessa'''
      '      when ''''4'''' then ''''Acerto de Estoque'''
      '    end'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP like :find'
      ''
      'order by'
      '  Cd_CFOP'
    )
    Left = 356
    Top = 120
    object ADODsFindCd_CFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsFindDs_CFOP: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_CFOP'
      Size = 50
    end
    object ADODsFindDp_Estoque: TStringField
      Alignment = taCenter
      DisplayLabel = 'Estoque'
      FieldName = 'Dp_Estoque'
      ReadOnly = True
      Size = 3
    end
    object ADODsFindDp_Terceiros: TStringField
      Alignment = taCenter
      DisplayLabel = 'Poder Terceiros'
      FieldName = 'Dp_Terceiros'
      ReadOnly = True
      Size = 3
    end
    object ADODsFindDp_Sintegra: TStringField
      Alignment = taCenter
      DisplayLabel = 'Sintegra'
      FieldName = 'Dp_Sintegra'
      ReadOnly = True
      Size = 3
    end
    object ADODsFindDp_Operacao: TStringField
      Alignment = taCenter
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'Dp_Operacao'
      ReadOnly = True
      Size = 22
    end
  end
end
