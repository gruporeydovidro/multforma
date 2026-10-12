object FrmReceber_Resumo_Find: TFrmReceber_Resumo_Find
  Left = 267
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Resumos de Recebimento'
  ClientHeight = 378
  ClientWidth = 674
  Color = clWindow
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 378
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 418
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 653
    Height = 378
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 760
    ExplicitHeight = 418
    object BvlSeparator: TBevel
      Left = 0
      Top = 348
      Width = 647
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 97
      Height = 13
      Caption = 'N'#250'mero do Resumo:'
    end
    object BvlSeparator_1: TBevel
      Left = 0
      Top = 40
      Width = 641
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 10
      Top = 43
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
    object Label10: TLabel
      Left = 104
      Top = 3
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 142
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label7: TLabel
      Left = 478
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 479
      Top = 351
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 565
      Top = 351
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_ResumoFnd: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnDblClick = EdtNr_ResumoFndDblClick
      OnKeyPress = EdtNr_ResumoFndKeyPress
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 59
      Width = 635
      Height = 286
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGPortadorEnter
      OnExit = DbGPortadorExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Resumo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Resumo'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Portador'
          Width = 321
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Processo'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Processamento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 104
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
      OnKeyPress = EdtCd_PortadorKeyPress
    end
    object EdtNm_Portador: TEdit
      Left = 166
      Top = 17
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtDt_ResumoFnd: TDateEdit
      Left = 478
      Top = 17
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
      OnDblClick = BitBtnConfirmClick
      OnKeyPress = EdtNr_ResumoFndKeyPress
    end
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 50'#13#10'  RR.Nr_Resumo, RR.Dt_Resumo, RR.Dt_Processamento,'#13#10'  Dp_Portador = Convert( VarChar( 5 ), RR.Cd_Portador ) + '''' - '''' + P.Nm_Portador,'#13#10'  Dp_Processo ='#13#10'    case RR.Fl_Processo'#13#10'      when ''''1'''' then ''''Em aberto'''#13#10'      when ''''2'''' then ''''Dados Carregados'''#13#10'      when ''''3'''' then ''''Processado'''#13#10'      when ''''4'''' then ''''Cancelado'''#13#10'      '#13#10'    end'#13#10#13#10'from'#13#10'  Receber_Resumo RR'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RR.Cd_Portador'#13#10#13#10'where'#13#10'  RR.Nr_Resumo >= :Nr_Resumo'#13#10#13#10'order by'#13#10'  RR.Nr_Resumo'
    Parameters = <
      item
        Name = 'Nr_Resumo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select top 50'
      '  RR.Nr_Resumo, RR.Dt_Resumo, RR.Dt_Processamento,'
      '  Dp_Portador = Convert( VarChar( 5 ), RR.Cd_Portador ) + '''' - '''' + P.Nm_Portador,'
      '  Dp_Processo ='
      '    case RR.Fl_Processo'
      '      when ''''1'''' then ''''Em aberto'''
      '      when ''''2'''' then ''''Dados Carregados'''
      '      when ''''3'''' then ''''Processado'''
      '      when ''''4'''' then ''''Cancelado'''
      '      '
      '    end'
      ''
      'from'
      '  Receber_Resumo RR'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = RR.Cd_Portador'
      ''
      'where'
      '  /* Nr_Resumo */'
      '  /* Dt_Resumo */'
      '  /* Cd_Portador */'
    )
    Left = 84
    Top = 336
    object ADODsFindNr_Resumo: TIntegerField
      DisplayLabel = 'N'#186' Resumo'
      FieldName = 'Nr_Resumo'
      DisplayFormat = '#,###'
    end
    object ADODsFindDt_Resumo: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Resumo'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Processamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Processamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDp_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
    end
    object ADODsFindDp_Processo: TStringField
      DisplayLabel = 'Processamento'
      FieldName = 'Dp_Processo'
      ReadOnly = True
      Size = 16
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 55
    Top = 336
  end
end
