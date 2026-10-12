object FrmOMedicao_Find: TFrmOMedicao_Find
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta da Ordem de Medi'#231#227'o - O.M.'
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
      Left = 644
      Top = 22
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
      Width = 41
      Height = 13
      Caption = 'O.M. N'#186':'
      Transparent = True
    end
    object Label4: TLabel
      Left = 69
      Top = 3
      Width = 76
      Height = 13
      Caption = 'Agendado para:'
    end
    object Label10: TLabel
      Left = 164
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitenteFind: TSpeedButton
      Left = 214
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
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 93
      Height = 13
      Caption = 'Ordem de Medi'#231#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 558
      Top = 342
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
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
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_OMFind: TCurrencyEdit
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
    object EdtDt_Agenda: TDateEdit
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
      Left = 164
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_EmitenteFndExit
      OnKeyDown = EdtCd_EmitenteFndKeyDown
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 237
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
      TabOrder = 3
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
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Medicao'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Agenda'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 201
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
    CommandText = 'select'#13#10'  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.Dt_Agenda, OM.St_Medicao,'#13#10'  E.Nm_Emitente, OM.Nm_Contato'#13#10#13#10'from'#13#10'  OMedicao OM'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = OM.Cd_Emitente'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  OM.Cd_Filial, OM.Nr_Medicao, OM.Dt_Emissao, OM.Dt_Agenda, OM.St_Medicao,'
      '  E.Nm_Emitente, OM.Nm_Contato'
      ''
      'from'
      '  OMedicao OM'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = OM.Cd_Emitente'
      ''
      'where'
      '  OM.Cd_Filial = :Cd_Filial'
    )
    Left = 141
    Top = 144
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_Medicao: TIntegerField
      DisplayLabel = 'N'#186' O.M.'
      FieldName = 'Nr_Medicao'
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Agenda: TDateTimeField
      DisplayLabel = 'Agendado'
      FieldName = 'Dt_Agenda'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsFindSt_Medicao: TStringField
      FieldName = 'St_Medicao'
      FixedChar = True
      Size = 1
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
  end
end
