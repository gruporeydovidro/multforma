object FrmEmitente_Licenca: TFrmEmitente_Licenca
  Left = 398
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'C'#243'digo do Cliente / Licen'#231'a de Uso'
  ClientHeight = 403
  ClientWidth = 688
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 403
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 415
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 667
    Height = 403
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 558
    ExplicitHeight = 415
    object Label4: TLabel
      Left = 5
      Top = 39
      Width = 64
      Height = 13
      Caption = 'ID do Cliente:'
    end
    object Label1: TLabel
      Left = 240
      Top = 39
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object LblValid: TLabel
      Left = 49
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Validar at'#233':'
    end
    object Label3: TLabel
      Left = 5
      Top = 85
      Width = 72
      Height = 13
      Caption = 'Script para SG:'
    end
    object Label5: TLabel
      Left = 5
      Top = 285
      Width = 71
      Height = 13
      Caption = 'Script para CS:'
    end
    object Label19: TLabel
      Left = 4
      Top = 0
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object LblEstacoes: TLabel
      Left = 445
      Top = 39
      Width = 47
      Height = 13
      Caption = 'Esta'#231#245'es:'
    end
    object EdtId_Cliente: TMaskEdit
      Left = 5
      Top = 53
      Width = 230
      Height = 26
      Color = clSilver
      EditMask = '####-####-####-####-####;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 24
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '00000000000000000000'
    end
    object EdtDs_Valid: TMaskEdit
      Left = 240
      Top = 53
      Width = 200
      Height = 26
      Color = clSilver
      EditMask = '#####-#####-#####-##;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '00000000000000000'
    end
    object EdtDt_Validade: TDateEdit
      Left = 49
      Top = 14
      Width = 93
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 2106 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnChange = EdtDt_ValidadeChange
    end
    object MmSG: TMemo
      Left = 5
      Top = 100
      Width = 660
      Height = 181
      Lines.Strings = (
        'update '
        '  Filial '
        ''
        'set '
        '  Ds_Valid = '''''', '
        '  Id_Cliente = '''''
        ''
      )
      TabOrder = 4
      OnDblClick = MmSGDblClick
    end
    object MmCS: TMemo
      Left = 5
      Top = 300
      Width = 660
      Height = 101
      Lines.Strings = (
        'update '
        '  Empresa '
        ''
        'set '
        '  Ds_Valid = '''''', '
        '  Id_Cliente = '''''
        ''
      )
      TabOrder = 5
      OnDblClick = MmSGDblClick
    end
    object EdtNr_Dias: TCurrencyEdit
      Tag = 1
      Left = 4
      Top = 14
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnChange = EdtNr_DiasChange
    end
    object EdtDs_Estacoes: TMaskEdit
      Left = 445
      Top = 53
      Width = 76
      Height = 26
      Color = clSilver
      EditMask = '####-##;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 7
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = '000000'
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,'#13#10'  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,'#13#10'  Fl_EMailCob, Ds_EmailCob'#13#10#13#10'from'#13#10'  Emitente'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    IndexFieldNames = 'Cd_Emitente'
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 289
    Top = 169
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDadosNr_Computador: TSmallintField
      FieldName = 'Nr_Computador'
    end
    object ADODsDadosFl_SQL: TStringField
      FieldName = 'Fl_SQL'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDp_SQL: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_SQL'
      Size = 30
      Calculated = True
    end
    object ADODsDadosNm_Servidor: TStringField
      FieldName = 'Nm_Servidor'
      Size = 50
    end
    object ADODsDadosFl_Dedicado: TStringField
      FieldName = 'Fl_Dedicado'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDp_Dedicado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Dedicado'
      Size = 3
      Calculated = True
    end
    object ADODsDadosNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsDadosId_MSN: TStringField
      FieldName = 'Id_MSN'
      Size = 150
    end
    object ADODsDadosid_Skype: TStringField
      FieldName = 'id_Skype'
      Size = 50
    end
    object ADODsDadosNm_Proprietario: TStringField
      FieldName = 'Nm_Proprietario'
      Size = 50
    end
    object ADODsDadosDs_EMail_Contato: TStringField
      FieldName = 'Ds_EMail_Contato'
      Size = 150
    end
    object ADODsDadosMm_ObsSuporte: TMemoField
      FieldName = 'Mm_ObsSuporte'
      BlobType = ftMemo
    end
    object ADODsDadosFl_EMailCob: TStringField
      FieldName = 'Fl_EMailCob'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsDadosDp_EMailCob: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EMailCob'
      Size = 3
      Calculated = True
    end
  end
end
