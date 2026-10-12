object FrmReceber_AtualizaVencto: TFrmReceber_AtualizaVencto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Atualiza'#231#227'o de Boleto'
  ClientHeight = 367
  ClientWidth = 677
  Color = clWhite
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
  OnShow = FormShow
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
    Width = 656
    Height = 367
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 337
      Width = 649
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 88
      Height = 13
      Caption = 'Novo Vencimento:'
    end
    object Label1: TLabel
      Left = 97
      Top = 2
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object Label71: TLabel
      Left = 149
      Top = 2
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label3: TLabel
      Left = 201
      Top = 2
      Width = 65
      Height = 13
      Caption = 'Juros Mensal:'
    end
    object Label4: TLabel
      Left = 269
      Top = 2
      Width = 47
      Height = 13
      Caption = 'Juros Dia:'
    end
    object Label13: TLabel
      Left = 88
      Top = 37
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label5: TLabel
      Left = 5
      Top = 37
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label6: TLabel
      Left = 171
      Top = 37
      Width = 77
      Height = 13
      Caption = 'Total Acrescido:'
    end
    object Label7: TLabel
      Left = 254
      Top = 37
      Width = 79
      Height = 13
      Caption = 'Valor Atualizado:'
    end
    object Label9: TLabel
      Left = 322
      Top = 2
      Width = 81
      Height = 13
      Caption = 'Arredondamento:'
    end
    object SbGoEmitente: TSpeedButton
      Left = 6
      Top = 340
      Width = 117
      Height = 19
      Hint = 'Cadastro do Cliente'
      Caption = 'Incluir o&bserva'#231#245'es'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGoEmitenteClick
    end
    object Label10: TLabel
      Left = 5
      Top = 73
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label11: TLabel
      Left = 5
      Top = 244
      Width = 122
      Height = 13
      Caption = 'Observa'#231#245'es para boleto:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 483
      Top = 340
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 569
      Top = 340
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 13
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 5
      Top = 16
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
      OnChange = EdtDt_VencimentoChange
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 97
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtPr_Multa: TCurrencyEdit
      Left = 149
      Top = 16
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 2
      OnChange = EdtDt_VencimentoChange
    end
    object EdtPr_Juros: TCurrencyEdit
      Left = 201
      Top = 16
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnChange = EdtDt_VencimentoChange
    end
    object EdtPr_Dia: TCurrencyEdit
      Left = 269
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Juros: TCurrencyEdit
      Left = 88
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtVl_Multa: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtVl_Acrescimo: TCurrencyEdit
      Left = 171
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtVl_Parcela: TCurrencyEdit
      Left = 254
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 88
      Width = 645
      Height = 155
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object MmBoleto: TMemo
      Left = 5
      Top = 259
      Width = 645
      Height = 75
      ScrollBars = ssVertical
      TabOrder = 11
    end
    object EdtVl_Arredondamento: TRxCalcEdit
      Left = 324
      Top = 16
      Width = 100
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      NumGlyphs = 2
      TabOrder = 5
      OnChange = EdtDt_VencimentoChange
    end
  end
  object ADOCmdAtualiza: TADOCommand
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Receber Int,'#13#10'  @Nr_Parcela SmallInt,'#13#10'  @Vl_Parcela Numeric( 13, 2 )'#13#10#13#10'select'#13#10'  @Cd_Filial  = :Cd_Filial,'#13#10'  @Nr_Receber = :Nr_Receber,'#13#10'  @Nr_Parcela = :Nr_Parcela,'#13#10'  @Vl_Parcela = :Vl_Parcela'#13#10#13#10'update'#13#10'  Receber'#13#10#13#10'set'#13#10'  Vl_Duplicata = :Vl_Duplicata'#13#10#13#10'where'#13#10'  Cd_Filial  = @Cd_Filial and'#13#10'  Nr_Receber = @Nr_Receber'#13#10#13#10'update'#13#10'  Receber_Parcela'#13#10#13#10'set'#13#10'  Vl_Parcela    = @Vl_Parcela,'#13#10'  Dt_Vencimento = :Dt_Vencimento,'#13#10'  Nr_DoctoBanco = :Nr_DoctoBanco,'#13#10'  Mm_Observacao = :Mm_Observacao,'#13#10'  Mm_Boleto          = :Mm_Boleto'#13#10#13#10'where'#13#10'  Cd_Filial  = @Cd_Filial and'#13#10'  Nr_Receber = @Nr_Receber and'#13#10'  Nr_Parcela = @Nr_Parcela'#13#10#13#10'update'#13#10'  Receber_Historico'#13#10#13#10'set'#13#10'  Vl_Lancamento = @Vl_Parcela,'#13#10'  Dt_Lancamento = :Dt_Lancamento,'#13#10'  Cd_Usuario     = :Cd_Usuario'#13#10#13#10'where'#13#10'  Cd_Filial     = @Cd_Filial and'#13#10'  Nr_Receber    = @Nr_Receber and'#13#10'  Nr_Parcela    = @Nr_Parcela and'#13#10'  Nr_Lancamento = 1'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Receber'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Parcela'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Vl_Parcela'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Vl_Duplicata'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Vencimento'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_DoctoBanco'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Mm_Observacao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Mm_Boleto'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Lancamento'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Usuario'
        Size = -1
        Value = nil?
      end>
    Left = 448
    Top = 16
  end
  object ADODsParAtualiza: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, '#13#10'  A.Dt_EnvioBanco, A.Nr_DoctoBanco, A.Vl_Recebido, A.Mm_Observacao,'#13#10'  A.Dt_Geracao, A.Cd_Portador, B.Nm_Portador, B.Pr_TaxaJuros, B.Pr_Multa,'#13#10'  A.Id_Parcela, R.Vl_Duplicata, A.Mm_Boleto'#13#10#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial = A.Cd_Filial and'#13#10'  R.Nr_Receber = A.Nr_Receber'#13#10#13#10'inner join'#13#10'  Portador B'#13#10'on'#13#10'  B.Cd_Portador = A.Cd_Portador'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Receber = :Nr_Receber and'#13#10'  A.Nr_Parcela  = :Nr_Parcela'
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
        Name = 'Nr_Receber'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Nr_Parcela'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 442
    Top = 51
    object ADODsParAtualizacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParAtualizaNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsParAtualizaNr_Parcela: TSmallintField
      DisplayLabel = 'N'#186
      FieldName = 'Nr_Parcela'
      DisplayFormat = '#,##0'
    end
    object ADODsParAtualizaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParAtualizaVl_Parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParAtualizaCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsParAtualizaDt_EnvioBanco: TDateTimeField
      DisplayLabel = 'Enviar em'
      FieldName = 'Dt_EnvioBanco'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParAtualizaNr_DoctoBanco: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'Nr_DoctoBanco'
      Size = 25
    end
    object ADODsParAtualizaVl_Recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'Vl_Recebido'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParAtualizaDp_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
      Calculated = True
    end
    object ADODsParAtualizaDt_Geracao: TDateTimeField
      DisplayLabel = 'Gerado em'
      FieldName = 'Dt_Geracao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParAtualizanm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsParAtualizaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsParAtualizaPr_TaxaJuros: TBCDField
      FieldName = 'Pr_TaxaJuros'
      Precision = 9
      Size = 2
    end
    object ADODsParAtualizaPr_Multa: TBCDField
      FieldName = 'Pr_Multa'
      Precision = 7
      Size = 2
    end
    object ADODsParAtualizaId_Parcela: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'Id_Parcela'
    end
    object ADODsParAtualizaVl_Duplicata: TBCDField
      FieldName = 'Vl_Duplicata'
      Precision = 12
      Size = 2
    end
    object ADODsParAtualizaMm_Boleto: TMemoField
      FieldName = 'Mm_Boleto'
      BlobType = ftMemo
    end
  end
end
