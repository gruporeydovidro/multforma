object FrmContato: TFrmContato
  Left = 356
  Top = 234
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contatos com o Cliente'
  ClientHeight = 408
  ClientWidth = 739
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 408
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 718
    Height = 408
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label6: TLabel
      Left = 5
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label1: TLabel
      Left = 131
      Top = 2
      Width = 86
      Height = 13
      Caption = '&Nome do Contato:'
      FocusControl = EdtNm_Contato
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 55
      Height = 13
      Caption = 'Oco&rr'#234'ncia:'
      FocusControl = CbOcorrencia
    end
    object Label3: TLabel
      Left = 442
      Top = 38
      Width = 45
      Height = 13
      Caption = '&Situa'#231#227'o:'
      FocusControl = CbSituacao
    end
    object Label4: TLabel
      Left = 5
      Top = 76
      Width = 69
      Height = 13
      Caption = 'Agendamento:'
    end
    object Label8: TLabel
      Left = 95
      Top = 76
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label5: TLabel
      Left = 131
      Top = 76
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object SbUsuario: TSpeedButton
      Left = 241
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbUsuarioClick
    end
    object Label7: TLabel
      Left = 269
      Top = 76
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 329
      Top = 90
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
    object Label31: TLabel
      Left = 5
      Top = 112
      Width = 66
      Height = 13
      Caption = 'O&bserva'#231#245'es:'
      FocusControl = MmObservacao
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 378
      Width = 711
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 356
      Top = 76
      Width = 79
      Height = 13
      Caption = '&Tipo de Contato:'
      FocusControl = CbTipo
    end
    object SbEmitenteContato: TSpeedButton
      Left = 437
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Contatos do Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteContatoClick
    end
    object Label10: TLabel
      Left = 521
      Top = 38
      Width = 125
      Height = 13
      Caption = 'Reagendar para " X" dias:'
    end
    object Label11: TLabel
      Left = 95
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object EdtDt_Contato: TDateEdit
      Left = 5
      Top = 16
      Width = 87
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 12
    end
    object EdtNm_Contato: TEdit
      Tag = 2
      Left = 131
      Top = 16
      Width = 306
      Height = 19
      MaxLength = 50
      TabOrder = 0
      OnKeyDown = EdtCd_UsuarioKeyDown
    end
    object CbOcorrencia: TComboBox
      Left = 5
      Top = 53
      Width = 433
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      DropDownCount = 20
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
    end
    object CbSituacao: TComboBox
      Left = 442
      Top = 53
      Width = 75
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Aberto'
        'Encerrado'
      )
    end
    object EdtDt_NovoContato: TDateEdit
      Left = 5
      Top = 90
      Width = 87
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtHr_NovoContato: TMaskEdit
      Left = 95
      Top = 90
      Width = 33
      Height = 19
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 5
      OnExit = EdtHr_NovoContatoExit
    end
    object EdtCd_Usuario: TEdit
      Tag = 1
      Left = 131
      Top = 90
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 6
      OnExit = EdtCd_UsuarioExit
      OnKeyDown = EdtCd_UsuarioKeyDown
    end
    object EdtNr_OrcaContato: TCurrencyEdit
      Left = 269
      Top = 90
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtNr_OrcaContatoExit
      OnKeyDown = EdtCd_UsuarioKeyDown
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 126
      Width = 704
      Height = 250
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object BitBtnConfirm: TBitBtn
      Left = 545
      Top = 381
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 631
      Top = 381
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object CbTipo: TComboBox
      Left = 356
      Top = 90
      Width = 172
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'Ativo - entramos em contato'
        'Passivo - entraram em contato'
      )
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 521
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
      OnExit = EdtNr_DiasExit
    end
    object EdtHr_Contato: TMaskEdit
      Left = 95
      Top = 16
      Width = 33
      Height = 19
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 13
      OnExit = EdtHr_NovoContatoExit
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Emitente'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Size = -1
        Value = nil?
      end>
    Left = 53
    Top = 331
    object ADODsOrcamentoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
  end
  object ADOCmdContato: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Contato( Cd_Emitente, Nr_Contato, Dt_Contato, Nm_Contato,'
      '  Cd_Ocorrencia, St_Contato, Dt_NovoContato, Cd_Usuario, Cd_Filial,'
      '  Nr_Orcamento, Mm_Observacao, Tp_Contato )'
      'values( :Cd_Emitente, :Nr_Contato, :Dt_Contato, :Nm_Contato,'
      '  :Cd_Ocorrencia, :St_Contato, :Dt_NovoContato, :Cd_Usuario, :Cd_Filial,'
      '  :Nr_Orcamento, :Mm_Observacao, :Tp_Contato )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Contato'
      ''
      'set'
      '  Dt_Contato     = :Dt_Contato,'
      '  Nm_Contato     = :Nm_Contato,'
      '  Cd_Ocorrencia  = :Cd_Ocorrencia,'
      '  St_Contato     = :St_Contato,'
      '  Dt_NovoContato = :Dt_NovoContato,'
      '  Cd_Usuario     = :Cd_Usuario,'
      '  Cd_Filial      = :Cd_Filial,'
      '  Nr_Orcamento   = :Nr_Orcamento,'
      '  Mm_Observacao  = :Mm_Observacao,'
      '  Tp_Contato     = :Tp_Contato'
      ''
      'where'
      '  Cd_Emitente    = :Cd_Emitente and'
      '  Nr_Contato     = :Nr_Contato'
    )
    SQLOther1.Strings = (
      ''
    )
    Left = 84
    Top = 331
  end
  object ADODsContato: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia, B.Ds_Ocorrencia,'#13#10'  A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario, A.Mm_Observacao, A.Nr_Orcamento,'#13#10'  A.Tp_Contato'#13#10#13#10'from'#13#10'  Contato A'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia B'#13#10'on'#13#10'  B.Cd_Ocorrencia = A.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  A.Nr_Contato  = :Nr_Contato'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Contato'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther1.Strings = (
      'select'
      '  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia, B.Ds_Ocorrencia,'
      '  A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario, A.Mm_Observacao,'
      '  A.Nr_Orcamento, A.Tp_Contato'
      ''
      'from'
      '  Contato A'
      ''
      'inner join'
      '  Contato_Ocorrencia B'
      'on'
      '  B.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'where'
      '  A.Cd_Emitente = :Cd_Emitente and'
      '  A.Nr_Contato  = :Nr_Contato'
    )
    SQLOther2.Strings = (
      'select top 1'
      '  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia, B.Ds_Ocorrencia,'
      '  A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario, A.Mm_Observacao,'
      '  A.Nr_Orcamento, A.Tp_Contato'
      ''
      'from'
      '  Contato A'
      ''
      'inner join'
      '  Contato_Ocorrencia B'
      'on'
      '  B.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'where'
      '  A.Cd_Emitente  = :Cd_Emitente and'
      '  A.Cd_Filial    = :Cd_Filial and'
      '  A.Nr_Orcamento = :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Contato desc'
      ''
      ''
    )
    Left = 22
    Top = 331
    object ADODsContatoNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsContatoDt_Contato: TDateTimeField
      FieldName = 'Dt_Contato'
    end
    object ADODsContatoNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsContatoDs_Ocorrencia: TStringField
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsContatoSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsContatoCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsContatomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsContatonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsContatodt_novocontato: TDateTimeField
      FieldName = 'dt_novocontato'
    end
    object ADODsContatotp_contato: TStringField
      FieldName = 'tp_contato'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsContatoNovo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Contato ) as Nr_Contato'#13#10#13#10'from'#13#10'  Contato'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 114
    Top = 331
    object ADODsContatoNovonr_contato: TIntegerField
      FieldName = 'nr_contato'
    end
  end
end
