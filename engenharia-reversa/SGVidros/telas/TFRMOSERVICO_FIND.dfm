object FrmOServico_Find: TFrmOServico_Find
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta da Ordem de Servi'#231'o - O.S.'
  ClientHeight = 369
  ClientWidth = 752
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 369
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 731
    Height = 369
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 340
      Width = 724
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 42
      Width = 724
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 642
      Top = 18
      Width = 82
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 33
      Height = 13
      Caption = 'OS N'#186':'
      Transparent = True
    end
    object Label4: TLabel
      Left = 69
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Entrega:'
    end
    object Label10: TLabel
      Left = 253
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitenteFind: TSpeedButton
      Left = 303
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteFindClick
    end
    object Label3: TLabel
      Left = 165
      Top = 3
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 226
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Ordem de Servi'#231'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 558
      Top = 342
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 644
      Top = 342
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_OSFind: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtDt_Entrega: TDateEdit
      Left = 69
      Top = 18
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_EmitenteFnd: TCurrencyEdit
      Tag = 1
      Left = 253
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_EmitenteFndExit
      OnKeyDown = EdtCd_EmitenteFndKeyDown
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 326
      Top = 18
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNr_OrcaFind: TCurrencyEdit
      Tag = 1
      Left = 165
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 63
      Width = 718
      Height = 274
      Ctl3D = False
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_OS'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_OS'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 463
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Entrega'
          Width = 65
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 112
    Top = 144
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OS.Cd_Filial, OS.Nr_OS, OS.St_OS, OS.Dt_OS, OS.Cd_Emitente, E.Nm_Emitente, OS.Nr_Orcamento,'#13#10'  OS.Dt_Entrega'#13#10#13#10'from'#13#10'  OServico OS'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OS.Cd_Emitente'#13#10#13#10'where'#13#10'  OS.Cd_Filial = :Cd_Filial and'#13#10'  OS.Nr_OS     = :Nr_OS'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  OS.Cd_Filial, OS.Nr_OS, OS.St_OS, OS.Dt_OS, OS.Cd_Emitente, E.Nm_Emitente, OS.Nr_Orcamento,'
      '  OS.Dt_Entrega'
      ''
      'from'
      '  OServico OS'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = OS.Cd_Emitente'
      ''
      'where'
      '  OS.Cd_Filial = :Cd_Filial'
    )
    Left = 141
    Top = 144
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_OS: TIntegerField
      DisplayLabel = 'N'#186' O.S.'
      FieldName = 'Nr_OS'
    end
    object ADODsFindSt_OS: TStringField
      FieldName = 'St_OS'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDt_OS: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_OS'
      EditMask = 'dd/mm/yyyy'
    end
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsFindDt_Entrega: TDateTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'Dt_Entrega'
      EditMask = 'dd/mm/yyyy'
    end
  end
end
