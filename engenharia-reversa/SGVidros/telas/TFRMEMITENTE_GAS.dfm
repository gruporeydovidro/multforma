object FrmEmitente_Gas: TFrmEmitente_Gas
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Contrato'
  ClientHeight = 282
  ClientWidth = 628
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
    Height = 282
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 607
    Height = 282
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 252
      Width = 601
      Height = 5
      Shape = bsTopLine
    end
    object Label35: TLabel
      Left = 174
      Top = 1
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label1: TLabel
      Left = 268
      Top = 1
      Width = 44
      Height = 13
      Caption = 'Validade:'
      Transparent = True
    end
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label2: TLabel
      Left = 437
      Top = 38
      Width = 82
      Height = 13
      Caption = 'Valor do Produto:'
    end
    object Label5: TLabel
      Left = 5
      Top = 74
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 434
      Top = 255
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 520
      Top = 255
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 8
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Contrato: TLabeledEdit
      Left = 5
      Top = 17
      Width = 164
      Height = 19
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Contrato:'
      TabOrder = 0
    end
    object EdtDt_Contrato: TDateEdit
      Left = 174
      Top = 17
      Width = 89
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      YearDigits = dyFour
      TabOrder = 1
    end
    object EdtDt_Validade: TDateEdit
      Left = 268
      Top = 17
      Width = 89
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      YearDigits = dyFour
      TabOrder = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 89
      Top = 53
      Width = 345
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
      TabOrder = 4
    end
    object EdtVl_Produto: TCurrencyEdit
      Tag = 2
      Left = 437
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.000#'
      TabOrder = 5
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 89
      Width = 596
      Height = 160
      Lines.Strings = (
        'MmObservacao'
      )
      ScrollBars = ssVertical
      TabOrder = 6
    end
  end
  object ADODsGas: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  EG.Cd_Emitente, EG.Nr_Contrato, EG.Dt_Contrato, EG.Dt_Validade, EG.Cd_Produto, '#13#10'  P.Nm_Produto, EG.Vl_Produto, EG.Mm_Observacao'#13#10#13#10'from'#13#10'  Emitente_Gas EG'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EG.Cd_Produto'#13#10#13#10'where'#13#10'  EG.Cd_Emitente = :Cd_Emitente'#13#10
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 64
    Top = 192
    object ADODsGasCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsGasNr_Contrato: TStringField
      FieldName = 'Nr_Contrato'
    end
    object ADODsGasDt_Contrato: TDateTimeField
      FieldName = 'Dt_Contrato'
    end
    object ADODsGasDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsGasCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsGasVl_Produto: TBCDField
      FieldName = 'Vl_Produto'
      Precision = 12
    end
    object ADODsGasMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsGasNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
  end
  object ADOCmdGas: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Gas( Cd_Emitente, Nr_Contrato, Dt_Contrato, Dt_Validade,'
      '  Cd_Produto, Vl_Produto, Mm_Observacao )'
      'values( :Cd_Emitente, :Nr_Contrato, :Dt_Contrato, :Dt_Validade,'
      '  :Cd_Produto, :Vl_Produto, :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Gas'
      ''
      'set'
      '  Nr_Contrato   = :Nr_Contrato,'
      '  Dt_Contrato   = :Dt_Contrato,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Cd_Produto    = :Cd_Produto,'
      '  Vl_Produto    = :Vl_Produto,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
      ''
    )
    Left = 96
    Top = 192
  end
end
