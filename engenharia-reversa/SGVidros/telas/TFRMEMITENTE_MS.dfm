object FrmEmitente_MS: TFrmEmitente_MS
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Detalhes do Cliente'
  ClientHeight = 495
  ClientWidth = 846
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
    Height = 495
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 825
    Height = 495
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 465
      Width = 817
      Height = 5
      Shape = bsTopLine
    end
    object Label19: TLabel
      Left = 4
      Top = 3
      Width = 126
      Height = 13
      Caption = 'N'#250'mero de Computadores:'
    end
    object Label1: TLabel
      Left = 216
      Top = 3
      Width = 109
      Height = 13
      Caption = 'Vers'#227'o do SQL Server:'
    end
    object Label15: TLabel
      Left = 701
      Top = 3
      Width = 49
      Height = 13
      Caption = 'Dedicado:'
    end
    object Label2: TLabel
      Left = 4
      Top = 176
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label3: TLabel
      Left = 254
      Top = 105
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 295
      Top = 120
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object Label13: TLabel
      Left = 4
      Top = 141
      Width = 82
      Height = 13
      Caption = 'Valor do Suporte:'
    end
    object Label55: TLabel
      Left = 292
      Top = 141
      Width = 93
      Height = 13
      Caption = 'Dia de Vencimento:'
    end
    object Label4: TLabel
      Left = 391
      Top = 141
      Width = 189
      Height = 13
      Caption = 'Enviar NFS-e junto com o boleto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 132
      Top = 3
      Width = 82
      Height = 13
      Caption = 'Bloquear acesso:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 652
      Top = 468
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 738
      Top = 468
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 18
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Computador: TCurrencyEdit
      Tag = 1
      Left = 4
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
    end
    object CbSQL: TComboBox
      Left = 216
      Top = 16
      Width = 232
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 11
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Servidor WEB da Multforma'
      Items.Strings = (
        'N'#227'o identificado / n'#227'o possui'
        'MS SQL 7'
        'MSDE 2000'
        'MS SQL Server 2000 - completo'
        'MS SQL Server 2005 - express'
        'MS SQL Server 2005 - completo'
        'MS SQL Server 2008 - express'
        'MS SQL Server 2008 - completo'
        'MS SQL Server 2012 - Express'
        'MS SQL Server 2014 - Express'
        'MS SQL Server 2016 - Express'
        'Servidor WEB da Multforma'
        'MS SQL Server 2019 - Express'
      )
    end
    object EdtNm_Contato: TLabeledEdit
      Left = 4
      Top = 51
      Width = 247
      Height = 19
      EditLabel.Width = 98
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato na empresa:'
      LabelSpacing = 1
      MaxLength = 50
      TabOrder = 5
    end
    object CbDedicado: TComboBox
      Left = 701
      Top = 17
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNm_Servidor: TLabeledEdit
      Left = 451
      Top = 17
      Width = 247
      Height = 19
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Servidor:'
      LabelSpacing = 1
      MaxLength = 50
      TabOrder = 3
    end
    object EdtDs_EMail: TLabeledEdit
      Left = 256
      Top = 51
      Width = 340
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail do contato:'
      LabelSpacing = 1
      MaxLength = 150
      TabOrder = 6
    end
    object EdtId_MSN: TLabeledEdit
      Left = 4
      Top = 86
      Width = 340
      Height = 19
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'MSN:'
      LabelSpacing = 1
      MaxLength = 150
      TabOrder = 7
    end
    object EdtId_Skype: TLabeledEdit
      Left = 348
      Top = 86
      Width = 208
      Height = 19
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Skype:'
      LabelSpacing = 1
      MaxLength = 150
      TabOrder = 8
    end
    object EdtNm_Proprietario: TLabeledEdit
      Left = 4
      Top = 120
      Width = 247
      Height = 19
      EditLabel.Width = 101
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do propriet'#225'rio:'
      LabelSpacing = 1
      MaxLength = 50
      TabOrder = 9
    end
    object MmObservacao: TMemo
      Left = 4
      Top = 191
      Width = 813
      Height = 271
      Lines.Strings = (
        'MmObservacao'
      )
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 2
      Left = 254
      Top = 120
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_RotaExit
    end
    object EdtDs_Rota: TEdit
      Left = 317
      Top = 120
      Width = 260
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
      TabOrder = 11
    end
    object EdtVl_Limite_Credito: TCurrencyEdit
      Left = 4
      Top = 156
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 12
    end
    object EdtDs_EMailCob: TLabeledEdit
      Left = 87
      Top = 156
      Width = 202
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail de Cobran'#231'a:'
      LabelSpacing = 1
      MaxLength = 150
      TabOrder = 13
    end
    object EdtNr_Pagamento: TCurrencyEdit
      Tag = 5
      Left = 292
      Top = 156
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 14
    end
    object CbEMailCob: TComboBox
      Left = 391
      Top = 156
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 15
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbBloquearAcesso: TComboBox
      Left = 132
      Top = 17
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,'#13#10'  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,'#13#10'  Fl_EMailCob, Vl_Limite_Credito, Ds_EmailCob, Nr_Pagamento,'#13#10'  Fl_BloquearAcesso'#13#10#13#10'from'#13#10'  Emitente'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 110
    Top = 215
    object ADODsEmitenteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEmitenteNr_Computador: TSmallintField
      FieldName = 'Nr_Computador'
    end
    object ADODsEmitenteFl_SQL: TStringField
      FieldName = 'Fl_SQL'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitenteNm_Servidor: TStringField
      FieldName = 'Nm_Servidor'
      Size = 50
    end
    object ADODsEmitenteFl_Dedicado: TStringField
      FieldName = 'Fl_Dedicado'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitenteNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsEmitenteId_MSN: TStringField
      FieldName = 'Id_MSN'
      Size = 150
    end
    object ADODsEmitenteid_Skype: TStringField
      FieldName = 'id_Skype'
      Size = 50
    end
    object ADODsEmitenteNm_Proprietario: TStringField
      FieldName = 'Nm_Proprietario'
      Size = 50
    end
    object ADODsEmitenteDs_EMail_Contato: TStringField
      FieldName = 'Ds_EMail_Contato'
      Size = 150
    end
    object ADODsEmitenteMm_ObsSuporte: TMemoField
      FieldName = 'Mm_ObsSuporte'
      BlobType = ftMemo
    end
    object ADODsEmitenteFl_EMailCob: TStringField
      FieldName = 'Fl_EMailCob'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitenteVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      Precision = 12
      Size = 2
    end
    object ADODsEmitenteDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsEmitenteNr_Pagamento: TSmallintField
      FieldName = 'Nr_Pagamento'
    end
    object ADODsEmitenteFl_BloquearAcesso: TStringField
      FieldName = 'Fl_BloquearAcesso'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdEmitente: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      'update'
      '  Emitente'
      ''
      'set'
      '  Nr_Computador     = :Nr_Computador,'
      '  Fl_SQL            = :Fl_SQL,'
      '  Nm_Servidor       = :Nm_Servidor,'
      '  Fl_Dedicado       = :Fl_Dedicado,'
      '  Nm_Contato        = :Nm_Contato,'
      '  Ds_EMail_Contato  = :Ds_EMail_Contato,'
      '  Id_MSN            = :Id_MSN,'
      '  id_Skype          = :id_Skype,'
      '  Nm_Proprietario   = :Nm_Proprietario,'
      '  Mm_ObsSuporte     = :Mm_ObsSuporte,'
      '  Fl_EMailCob       = :Fl_EMailCob,'
      '  Vl_Limite_Credito = :Vl_Limite_Credito,'
      '  Ds_EmailCob       = :Ds_EmailCob,'
      '  Nr_Pagamento      = :Nr_Pagamento,'
      '  Fl_BloquearAcesso = :Fl_BloquearAcesso'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther0.Strings = (
      'update'
      '  Emitente_Endereco'
      ''
      'set'
      '  Cd_Rota = :Cd_Rota'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Endereco = :Nr_Endereco'
    )
    Left = 140
    Top = 215
  end
end
