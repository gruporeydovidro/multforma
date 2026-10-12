object FrmCaixa_Find: TFrmCaixa_Find
  Left = 257
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Lan'#231'amento no Caixa'
  ClientHeight = 365
  ClientWidth = 661
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
    Width = 640
    Height = 365
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 335
      Width = 633
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 467
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
      Left = 553
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
      Width = 630
      Height = 330
      ActivePage = TabSLancto
      TabOrder = 0
      OnChange = PgFindChange
      object TabSLancto: TTabSheet
        Caption = '     N'#250'mero do Lan'#231'amento     '
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
          Width = 619
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
          DataSource = DsLancto
        end
        object DbGNumero: TDBGrid
          Left = 0
          Top = 61
          Width = 613
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
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGNumeroKeyPress
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
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
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
      object TabSheet1: TTabSheet
        Caption = '    Data do Lan'#231'amento    '
        ImageIndex = 1
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
          Width = 619
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
          DataSource = DsLancto
        end
        object DbGData: TDBGrid
          Left = 0
          Top = 61
          Width = 613
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
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGDataKeyPress
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
              Width = 336
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Valor'
              Title.Alignment = taRightJustify
              Width = 71
              Visible = True
            end>
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
      end
      object TabSDocumento: TTabSheet
        Caption = '         Documento         '
        ImageIndex = 2
        object Bevel2: TBevel
          Left = 2
          Top = 41
          Width = 619
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
          DataSource = DsLancto
        end
        object DbGDocto: TDBGrid
          Left = 0
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsDocto
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGNumeroKeyPress
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
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
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
        object EdtNr_DoctoFind: TLabeledEdit
          Left = 5
          Top = 17
          Width = 130
          Height = 19
          AutoSelect = False
          EditLabel.Width = 113
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Documento:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 0
          OnDblClick = EdtNr_DoctoFindDblClick
          OnKeyPress = EdtNr_DoctoFindKeyPress
        end
      end
      object TabSheet2: TTabSheet
        Caption = '            Valor            '
        ImageIndex = 3
        object DbTDp_Historico_4: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsLancto
        end
        object Bevel3: TBevel
          Left = 2
          Top = 41
          Width = 619
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
        object Label5: TLabel
          Left = 5
          Top = 2
          Width = 96
          Height = 13
          Caption = 'Valor (Inicial / Final):'
        end
        object DbGValor: TDBGrid
          Left = 0
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsValor
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGNumeroKeyPress
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
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
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
      object TabSDescricao: TTabSheet
        Caption = '      Descri'#231#227'o      '
        ImageIndex = 4
        object Bevel4: TBevel
          Left = 2
          Top = 41
          Width = 619
          Height = 5
          Shape = bsTopLine
        end
        object Label9: TLabel
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
        object DbTDp_Historico_5: TDBText
          Left = 0
          Top = 287
          Width = 613
          Height = 13
          DataField = 'Dp_Historico'
          DataSource = DsLancto
        end
        object DbGDescricao: TDBGrid
          Left = 0
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsDescricao
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGNumeroKeyPress
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
              FieldName = 'ds_lancamento'
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_documento'
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
        object EdtDs_LanctoFind: TLabeledEdit
          Left = 5
          Top = 17
          Width = 340
          Height = 19
          AutoSelect = False
          EditLabel.Width = 128
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o do Lan'#231'amento:'
          LabelSpacing = 2
          MaxLength = 80
          TabOrder = 0
          OnDblClick = EdtDs_LanctoFindDblClick
          OnKeyPress = EdtDs_LanctoFindKeyPress
        end
        object CkBContendo: TCheckBox
          Left = 544
          Top = 2
          Width = 76
          Height = 17
          Caption = 'Conten&do...'
          TabOrder = 2
        end
      end
    end
  end
  object DsLancto: TDataSource
    DataSet = ADODsLancto
    Left = 23
    Top = 334
  end
  object ADODsLancto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLanctoCalcFields
    CommandText = 'select top 50'#13#10'  C.Cd_Filial,  C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,'#13#10'  C.Nr_Documento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Nr_Lancamento >= :Nr_Lancamento'#13#10#13#10'order by'#13#10'  C.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
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
    object ADODsLanctocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsLanctonr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsLanctodt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsLanctotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsLanctocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsLanctods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsLanctovl_lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsLanctods_lancamento: TStringField
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsLanctonr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
    end
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
  end
  object ADODsData: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLanctoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,'#13#10'  C.Nr_Documento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Dt_Lancamento >= :Dt_Start and'#13#10'  C.Dt_Lancamento   < :Dt_End'#13#10#13#10'order by'#13#10'  C.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 116
    Top = 334
    object ADODsDatacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDatanr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsDatadt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDatatp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDatacd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDatads_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDatavl_lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDatads_lancamento: TStringField
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsDatanr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
    end
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
  end
  object DsData: TDataSource
    DataSet = ADODsData
    Left = 88
    Top = 334
  end
  object ADODsValor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLanctoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,'#13#10'  C.Nr_Documento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Vl_Lancamento >= :Vl_Start and'#13#10'  C.Vl_Lancamento <= :Vl_End'#13#10#13#10'order by'#13#10'  C.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Vl_Start'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_End'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end>
    Left = 244
    Top = 334
    object ADODsValorcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsValornr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsValordt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsValortp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsValorcd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsValords_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsValorvl_lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsValords_lancamento: TStringField
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsValornr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
    end
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
  end
  object DsValor: TDataSource
    DataSet = ADODsValor
    Left = 216
    Top = 334
  end
  object DsDocto: TDataSource
    DataSet = ADODsDocto
    Left = 151
    Top = 334
  end
  object ADODsDocto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLanctoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,'#13#10'  C.Nr_Documento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Nr_Documento like :Nr_Documento'#13#10#13#10'order by'#13#10'  C.Nr_Documento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Documento'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = nil?
      end>
    Left = 179
    Top = 334
    object ADODsDoctocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDoctonr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsDoctodt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDoctotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDoctocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDoctods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDoctovl_lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDoctods_lancamento: TStringField
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsDoctonr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
    end
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
  end
  object ADODsDescricao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Cd_Historico, H.Ds_Historico, C.Vl_Lancamento, C.Ds_Lancamento,'#13#10'  C.Nr_Documento'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Ds_Lancamento like :Ds_Lancamento'#13#10#13#10'order by'#13#10'  C.Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Ds_Lancamento'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = nil?
      end>
    Left = 304
    Top = 334
    object ADODsDescricaocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDescricaonr_lancamento: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'nr_lancamento'
    end
    object ADODsDescricaodt_lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsDescricaotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDescricaocd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDescricaods_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDescricaovl_lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDescricaods_lancamento: TStringField
      DisplayLabel = 'Descri'#231#227'o do Lan'#231'amento'
      FieldName = 'ds_lancamento'
      Size = 80
    end
    object ADODsDescricaonr_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'nr_documento'
    end
    object ADODsDescricaoDp_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'Dp_Historico'
      Size = 111
      Calculated = True
    end
    object ADODsDescricaoDp_Valor: TStringField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Valor'
      Calculated = True
    end
  end
  object DsDescricao: TDataSource
    DataSet = ADODsDescricao
    Left = 276
    Top = 334
  end
end
