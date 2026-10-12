object FrmEmitente_Exporta: TFrmEmitente_Exporta
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Exporta'#231#227'o de Emitentes'
  ClientHeight = 181
  ClientWidth = 498
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 181
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 181
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 151
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 4
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 19
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbSubGrupo: TSpeedButton
      Left = 45
      Top = 57
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 5
      Top = 41
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbCancelamento: TSpeedButton
      Tag = 1
      Left = 313
      Top = 92
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 154
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 154
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 19
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_SubGrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 19
      Width = 268
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 57
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_SubGrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 68
      Top = 57
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtNm_File: TLabeledEdit
      Tag = 8
      Left = 5
      Top = 94
      Width = 308
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 101
      EditLabel.Height = 13
      EditLabel.Caption = 'Arquivo a ser gerado:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 4
      Text = 'Emitente.TXT'
    end
  end
  object ADODsEmitente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP,'#13#10'  C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1, E.Nr_Insc_Estadual,'#13#10'  EA.Pr_Contribuinte'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem = :Sg_Origem and'#13#10'  EA.Sg_Destino = C.Sg_Estado'#13#10#13#10'/* Where */'#13#10#13#10'order by'#13#10'  E.Nm_Emitente'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 2
        Value = 'ES'
      end>
    SQLOther0.Strings = (
      'select'
      '  E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP,'
      '  C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1, E.Nr_Insc_Estadual,'
      '  EA.Pr_Contribuinte'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Estado_Aliquota EA'
      'on'
      '  EA.Sg_Origem  = :Sg_Origem and'
      '  EA.Sg_Destino = C.Sg_Estado'
      ''
      '/* Where */'
      ''
      'order by'
      '  E.Nm_Emitente'
    )
    Left = 368
    Top = 64
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsEmitenteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEmitenteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 33
    end
    object ADODsEmitenteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsEmitenteNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsEmitenteSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEmitenteNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsEmitenteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsEmitentePr_Contribuinte: TBCDField
      FieldName = 'Pr_Contribuinte'
      Precision = 9
      Size = 2
    end
  end
end
