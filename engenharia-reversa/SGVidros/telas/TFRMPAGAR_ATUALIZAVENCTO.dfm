object FrmPagar_AtualizaVencto: TFrmPagar_AtualizaVencto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Atualiza'#231#227'o de Parcela'
  ClientHeight = 332
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
    Height = 332
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 656
    Height = 332
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 302
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
    object Label7: TLabel
      Left = 242
      Top = 1
      Width = 79
      Height = 13
      Caption = 'Valor Atualizado:'
    end
    object Label9: TLabel
      Left = 149
      Top = 2
      Width = 49
      Height = 13
      Caption = 'Diferen'#231'a:'
    end
    object SbGoEmitente: TSpeedButton
      Left = 6
      Top = 305
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
      Top = 37
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 483
      Top = 305
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 569
      Top = 305
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
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
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtVl_Parcela: TCurrencyEdit
      Left = 242
      Top = 16
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
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 52
      Width = 645
      Height = 246
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object EdtVl_Diferenca: TRxCalcEdit
      Left = 149
      Top = 16
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = EdtDt_VencimentoChange
    end
  end
  object ADOCmdAtualiza: TADOCommand
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Pagar Int,'#13#10'  @Nr_Parcela SmallInt,'#13#10'  @Vl_Parcela Numeric( 13, 2 )'#13#10#13#10'select'#13#10'  @Cd_Filial  = :Cd_Filial,'#13#10'  @Nr_Pagar   = :Nr_Pagar,'#13#10'  @Nr_Parcela = :Nr_Parcela,'#13#10'  @Vl_Parcela = :Vl_Parcela'#13#10#13#10'update'#13#10'  Pagar'#13#10#13#10'set'#13#10'  Vl_Duplicata = :Vl_Duplicata'#13#10#13#10'where'#13#10'  Cd_Filial = @Cd_Filial and'#13#10'  Nr_Pagar  = @Nr_Pagar'#13#10#13#10'update'#13#10'  Pagar_Parcela'#13#10#13#10'set'#13#10'  Vl_Parcela    = @Vl_Parcela,'#13#10'  Dt_Vencimento = :Dt_Vencimento,'#13#10'  Mm_Observacao = :Mm_Observacao'#13#10#13#10'where'#13#10'  Cd_Filial  = @Cd_Filial and'#13#10'  Nr_Pagar   = @Nr_Pagar and'#13#10'  Nr_Parcela = @Nr_Parcela'#13#10#13#10'update'#13#10'  Pagar_Historico'#13#10#13#10'set'#13#10'  Vl_Lancamento = @Vl_Parcela,'#13#10'  Dt_Lancamento = :Dt_Lancamento,'#13#10'  Cd_Usuario    = :Cd_Usuario'#13#10#13#10'where'#13#10'  Cd_Filial     = @Cd_Filial and'#13#10'  Nr_Pagar      = @Nr_Pagar and'#13#10'  Nr_Parcela    = @Nr_Parcela and'#13#10'  Nr_Lancamento = 1'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Pagar'
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
        Name = 'Mm_Observacao'
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
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, '#13#10'  A.Vl_Pago, A.Mm_Observacao,'#13#10'  A.Cd_Portador, '#13#10'  R.Vl_Duplicata'#13#10#13#10'from'#13#10'  Pagar_Parcela A'#13#10#13#10'inner join'#13#10'  Pagar R'#13#10'on'#13#10'  R.Cd_Filial = A.Cd_Filial and'#13#10'  R.Nr_Pagar = A.Nr_Pagar'#13#10#13#10'where'#13#10'  A.Cd_Filial   = :Cd_Filial and'#13#10'  A.Nr_Pagar    = :Nr_Pagar and'#13#10'  A.Nr_Parcela  = :Nr_Parcela'
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
        Name = 'Nr_Pagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
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
    object ADODsParAtualizaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsParAtualizaNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsParAtualizaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsParAtualizaDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsParAtualizaVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsParAtualizaVl_Pago: TBCDField
      FieldName = 'Vl_Pago'
      Precision = 12
      Size = 2
    end
    object ADODsParAtualizaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsParAtualizaCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsParAtualizaVl_Duplicata: TBCDField
      FieldName = 'Vl_Duplicata'
      Precision = 12
      Size = 2
    end
  end
end
