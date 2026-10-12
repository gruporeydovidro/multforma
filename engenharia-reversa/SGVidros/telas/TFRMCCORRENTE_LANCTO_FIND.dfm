object FrmCCorrente_Lancto_Find: TFrmCCorrente_Lancto_Find
  Left = 421
  Top = 233
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Lan'#231'amentos'
  ClientHeight = 365
  ClientWidth = 756
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
    Height = 365
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 735
    Height = 365
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 335
      Width = 729
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 562
      Top = 338
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 648
      Top = 338
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object PgFind: TPageControl
      Left = 2
      Top = 1
      Width = 727
      Height = 330
      ActivePage = TabSValor
      TabOrder = 0
      OnChange = PgFindChange
      object TabSLancto: TTabSheet
        Caption = '        N'#250'mero do Lan'#231'amento        '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 10
          Top = 45
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 2
          Top = 41
          Width = 715
          Height = 5
          Shape = bsTopLine
        end
        object Label1: TLabel
          Left = 5
          Top = 2
          Width = 117
          Height = 13
          Caption = 'N'#250'mero do Lan'#231'amento:'
        end
        object DbTDp_Historico_1: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsDocto
        end
        object DbGLancto: TDBGrid
          Left = 0
          Top = 61
          Width = 716
          Height = 225
          DataSource = DsLancto
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGLanctoEnter
          OnExit = DbGLanctoExit
          OnKeyPress = DbGLanctoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_lancamento'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_lancamento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Historico'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_TipoLancto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
              Width = 167
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Valor'
              Title.Alignment = taRightJustify
              Width = 72
              Visible = True
            end>
        end
        object EdtNr_LanctoFind: TCurrencyEdit
          Left = 5
          Top = 17
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 0
          OnDblClick = EdtNr_LanctoFindDblClick
          OnKeyPress = EdtNr_LanctoFindKeyPress
        end
      end
      object TabSData: TTabSheet
        Caption = '        Data do Lan'#231'amento        '
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label3: TLabel
          Left = 5
          Top = 2
          Width = 103
          Height = 13
          Caption = 'Data do Lan'#231'amento:'
        end
        object BvlSeparator_2: TBevel
          Left = 2
          Top = 41
          Width = 715
          Height = 5
          Shape = bsTopLine
        end
        object Label4: TLabel
          Left = 10
          Top = 45
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DbTDp_Historico_2: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsDocto
        end
        object EdtDt_LanctoFind: TDateEdit
          Left = 5
          Top = 17
          Width = 90
          Height = 19
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          TabOrder = 0
          OnDblClick = EdtDt_LanctoFindDblClick
          OnKeyPress = EdtDt_LanctoFindKeyPress
        end
        object DbGData: TDBGrid
          Left = 0
          Top = 61
          Width = 716
          Height = 225
          DataSource = DsData
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGLanctoEnter
          OnExit = DbGLanctoExit
          OnKeyPress = DbGLanctoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_lancamento'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Historico'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_TipoLancto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
              Width = 167
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Valor'
              Title.Alignment = taRightJustify
              Width = 72
              Visible = True
            end>
        end
      end
      object TabSDocto: TTabSheet
        Caption = '       N'#250'mero do Documento       '
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label5: TLabel
          Left = 5
          Top = 2
          Width = 113
          Height = 13
          Caption = 'N'#250'mero do Documento:'
        end
        object Bevel2: TBevel
          Left = 2
          Top = 41
          Width = 715
          Height = 5
          Shape = bsTopLine
        end
        object Label6: TLabel
          Left = 10
          Top = 45
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DbTDp_Historico_3: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsDocto
        end
        object DbGDocto: TDBGrid
          Left = 0
          Top = 61
          Width = 716
          Height = 225
          DataSource = DsDocto
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGLanctoEnter
          OnExit = DbGLanctoExit
          OnKeyPress = DbGLanctoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_lancamento'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_lancamento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Historico'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_TipoLancto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
              Width = 167
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Valor'
              Title.Alignment = taRightJustify
              Width = 72
              Visible = True
            end>
        end
        object EdtNr_DoctoFind: TEdit
          Left = 5
          Top = 15
          Width = 135
          Height = 19
          MaxLength = 10
          TabOrder = 1
          OnDblClick = EdtNr_DoctoFindDblClick
          OnKeyPress = EdtNr_DoctoFindKeyPress
        end
      end
      object TabSValor: TTabSheet
        Caption = '              Valor              '
        ImageIndex = 3
        object Bevel3: TBevel
          Left = 2
          Top = 41
          Width = 715
          Height = 5
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 10
          Top = 45
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DbTDp_Historico_4: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsDocto
        end
        object Label8: TLabel
          Left = 5
          Top = 2
          Width = 96
          Height = 13
          Caption = 'Valor (Inicial / Final):'
        end
        object DbGValor: TDBGrid
          Left = 0
          Top = 61
          Width = 716
          Height = 225
          DataSource = DsValor
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGLanctoEnter
          OnExit = DbGLanctoExit
          OnKeyPress = DbGLanctoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_lancamento'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_lancamento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Historico'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_TipoLancto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
              Width = 167
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Valor'
              Title.Alignment = taRightJustify
              Width = 72
              Visible = True
            end>
        end
        object EdtVl_Start: TCurrencyEdit
          Left = 6
          Top = 17
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 0
          OnExit = EdtVl_StartExit
          OnKeyPress = EdtVl_StartKeyPress
        end
        object EdtVl_End: TCurrencyEdit
          Left = 91
          Top = 17
          Width = 80
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          TabOrder = 1
          OnExit = EdtVl_StartExit
          OnKeyPress = EdtVl_StartKeyPress
        end
      end
    end
  end
  object DsDocto: TDataSource
    DataSet = ADODsDocto
    Left = 148
    Top = 334
  end
  object ADODsDocto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDoctoCalcFields
    CommandText = 'select'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta       = :Id_Conta and'#13#10'  CL.Nr_Documento like :Nr_Documento'#13#10#13#10'order by'#13#10'  CL.Nr_Documento'
    Parameters = <
      item
        Name = 'Id_Conta'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 3
      end
      item
        Name = 'Nr_Documento'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '%'
      end>
    Left = 176
    Top = 334
    object ADODsDoctoDp_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 111
      Calculated = True
    end
    object ADODsDoctoDp_Valor: TStringField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Valor'
      Calculated = True
    end
    object ADODsDoctoid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsDoctonr_lancamento: TIntegerField
      DisplayLabel = 'La'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsDoctotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDoctodt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDoctovl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDoctocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDoctods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDoctonr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsDoctofl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsDoctoDs_TipoLancto: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Ds_TipoLancto'
      Calculated = True
    end
    object ADODsDoctoDs_Lancamento: TMemoField
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object ADODsData: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDoctoCalcFields
    CommandText = 'select'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta       = :Id_Conta and'#13#10'  CL.Dt_Lancamento = :Dt_Lancamento'#13#10#13#10'order by'#13#10'  CL.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Lancamento'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    Left = 116
    Top = 334
    object ADODsDataDp_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 111
      Calculated = True
    end
    object ADODsDataDp_Valor: TStringField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Valor'
      Calculated = True
    end
    object ADODsDataDs_TipoLancto: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Ds_TipoLancto'
      Calculated = True
    end
    object ADODsDataid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsDatanr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsDatatp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDatadt_lancamento: TDateTimeField
      FieldName = 'dt_lancamento'
    end
    object ADODsDatavl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDatacd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDatads_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDatanr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsDatafl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsDataDs_Lancamento: TMemoField
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object DsData: TDataSource
    DataSet = ADODsData
    Left = 88
    Top = 334
  end
  object ADODsLancto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDoctoCalcFields
    CommandText = 'select top 50'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta       = :Id_Conta and'#13#10'  CL.Nr_Lancamento >= :Nr_Lancamento'#13#10#13#10'order by'#13#10'  CL.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Id_Conta'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2
      end
      item
        Name = 'Nr_Lancamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 51
    Top = 334
    object ADODsLanctoDp_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 111
      Calculated = True
    end
    object ADODsLanctoDp_Valor: TStringField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Valor'
      Calculated = True
    end
    object ADODsLanctoid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsLanctonr_lancamento: TIntegerField
      DisplayLabel = 'La'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsLanctotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctodt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsLanctovl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsLanctocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsLanctods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsLanctonr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsLanctofl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctoDs_TipoLancto: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Ds_TipoLancto'
      Calculated = True
    end
    object ADODsLanctoDs_Lancamento: TMemoField
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object DsLancto: TDataSource
    DataSet = ADODsLancto
    Left = 23
    Top = 334
  end
  object ADODsValor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDoctoCalcFields
    CommandText = 'select'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta       = :Id_Conta and'#13#10'  CL.Vl_Lancamento >= :Vl_Start and'#13#10'  CL.Vl_Lancamento <= :Vl_End'#13#10#13#10'order by'#13#10'  CL.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = 3
      end
      item
        Name = 'Vl_Start'
        DataType = ftBCD
        Size = -1
        Value = 1.0
      end
      item
        Name = 'Vl_End'
        DataType = ftBCD
        Size = -1
        Value = 1.0
      end>
    Left = 236
    Top = 334
    object ADODsValorDp_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 111
      Calculated = True
    end
    object ADODsValorDp_Valor: TStringField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Valor'
      Calculated = True
    end
    object ADODsValorid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsValornr_lancamento: TIntegerField
      DisplayLabel = 'La'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsValortp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsValordt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsValorvl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsValorcd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsValords_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsValornr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsValorfl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsValorDs_TipoLancto: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Ds_TipoLancto'
      Calculated = True
    end
    object ADODsValorDs_Lancamento: TMemoField
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object DsValor: TDataSource
    DataSet = ADODsValor
    Left = 208
    Top = 334
  end
end
