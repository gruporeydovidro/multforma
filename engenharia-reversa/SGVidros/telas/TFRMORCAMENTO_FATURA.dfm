object FrmOrcamento_Fatura: TFrmOrcamento_Fatura
  Left = 354
  Top = 223
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fechamento de Or'#231'amento'
  ClientHeight = 487
  ClientWidth = 774
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 487
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 487
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 458
      Width = 745
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 23
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label10: TLabel
      Left = 37
      Top = 23
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label1: TLabel
      Left = 5
      Top = 94
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object SbTransportador: TSpeedButton
      Left = 55
      Top = 109
      Width = 23
      Height = 19
      Hint = 'Seleciona Transportador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTransportadorClick
    end
    object Label14: TLabel
      Left = 5
      Top = 166
      Width = 102
      Height = 13
      Caption = 'Documento de Baixa:'
    end
    object SbHistorico: TSpeedButton
      Tag = 1
      Left = 44
      Top = 217
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label19: TLabel
      Left = 5
      Top = 202
      Width = 306
      Height = 13
      Caption = 'Hist'#243'rico (hist'#243'rico para gerar lan'#231'amento no caixa - DINHEIRO):'
    end
    object Label3: TLabel
      Left = 5
      Top = 129
      Width = 92
      Height = 13
      Caption = 'Sa'#237'da (Data/Hora):'
    end
    object Label5: TLabel
      Left = 105
      Top = 23
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 136
      Top = 37
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label4: TLabel
      Left = 454
      Top = 23
      Width = 95
      Height = 13
      Caption = 'Cupom Fiscal (ECF):'
    end
    object Label6: TLabel
      Left = 256
      Top = 129
      Width = 41
      Height = 13
      Caption = 'Esp'#233'cie:'
    end
    object Label18: TLabel
      Left = 391
      Top = 94
      Width = 75
      Height = 13
      Caption = 'Frete por conta:'
    end
    object Label7: TLabel
      Left = 500
      Top = 130
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label8: TLabel
      Left = 576
      Top = 130
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
    end
    object Label9: TLabel
      Left = 5
      Top = 276
      Width = 102
      Height = 13
      Caption = 'Oberva'#231#245'es da Nota:'
    end
    object Label11: TLabel
      Left = 485
      Top = 94
      Width = 30
      Height = 13
      Caption = 'Placa:'
    end
    object SbHistoricoCartao: TSpeedButton
      Tag = 2
      Left = 418
      Top = 217
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label12: TLabel
      Left = 379
      Top = 202
      Width = 366
      Height = 13
      Caption = 'Hist'#243'rico (hist'#243'rico para gerar lan'#231'amento no caixa - CART'#195'O DE CR'#201'DITO):'
    end
    object Label77: TLabel
      Left = 555
      Top = 22
      Width = 83
      Height = 13
      Caption = 'Consumidor Final:'
    end
    object Label13: TLabel
      Left = 120
      Top = 166
      Width = 157
      Height = 13
      Caption = 'Portador para pagamento '#224' vista:'
    end
    object SbPortador: TSpeedButton
      Left = 160
      Top = 181
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label17: TLabel
      Left = 5
      Top = 59
      Width = 108
      Height = 13
      Caption = 'Finalidade da Emiss'#227'o:'
    end
    object Label62: TLabel
      Left = 5
      Top = 238
      Width = 291
      Height = 13
      Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - CART'#195'O DE D'#201'BITO):'
    end
    object SbHistoricoDebito: TSpeedButton
      Tag = 3
      Left = 45
      Top = 254
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label63: TLabel
      Left = 373
      Top = 238
      Width = 200
      Height = 13
      Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - PIX:'
    end
    object SbHistoricoPIX: TSpeedButton
      Tag = 4
      Left = 413
      Top = 254
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 460
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 36
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 460
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 37
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Serie: TEdit
      Left = 5
      Top = 37
      Width = 27
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 1
      OnExit = EdtCd_SerieExit
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 37
      Top = 37
      Width = 65
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtNr_FaturaExit
    end
    object EdtCd_Transportador: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 109
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtNm_Transportador: TEdit
      Left = 79
      Top = 109
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
      TabOrder = 10
    end
    object CkBECF: TCheckBox
      Left = 638
      Top = 440
      Width = 85
      Height = 17
      Caption = 'Imprimir &ECF'
      Checked = True
      State = cbChecked
      TabOrder = 34
      Visible = False
    end
    object CkBFatura: TCheckBox
      Left = 5
      Top = 3
      Width = 116
      Height = 17
      Caption = '&N'#227'o informar Fatura'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = CkBFaturaClick
    end
    object EdtNr_DoctoBaixa: TEdit
      Left = 5
      Top = 181
      Width = 110
      Height = 19
      Ctl3D = False
      MaxLength = 15
      ParentCtl3D = False
      TabOrder = 20
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 217
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 23
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 67
      Top = 217
      Width = 308
      Height = 19
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
      TabOrder = 24
    end
    object CkBPrnFatura: TCheckBox
      Left = 5
      Top = 437
      Width = 90
      Height = 17
      Caption = 'Imprimir &Fatura'
      Checked = True
      State = cbChecked
      TabOrder = 32
    end
    object EdtDs_Quantidade: TLabeledEdit
      Left = 136
      Top = 144
      Width = 115
      Height = 19
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 15
    end
    object EdtDt_Saida: TDateEdit
      Left = 5
      Top = 144
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 13
      OnExit = EdtDt_SaidaExit
    end
    object EdtHr_Saida: TMaskEdit
      Left = 97
      Top = 144
      Width = 34
      Height = 19
      AutoSize = False
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 14
      OnExit = EdtHr_SaidaExit
    end
    object EdtDs_Marca: TLabeledEdit
      Left = 381
      Top = 144
      Width = 115
      Height = 19
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 17
    end
    object EdtCd_CFOP: TEdit
      Left = 105
      Top = 37
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 3
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 160
      Top = 37
      Width = 290
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
      TabOrder = 4
    end
    object EdtNr_ECF: TCurrencyEdit
      Left = 454
      Top = 37
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CbBaseICMS: TCheckBox
      Left = 99
      Top = 437
      Width = 138
      Height = 17
      Caption = 'Imprimir Base do Imposto'
      TabOrder = 33
    end
    object CbEspecie: TComboBox
      Left = 256
      Top = 144
      Width = 121
      Height = 21
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 16
      Items.Strings = (
        'Volume'
        'Caixa'
        'Pe'#231'a'
        'Amarrados'
        'Pacote'
        'Rolo'
      )
    end
    object CbFrete: TComboBox
      Left = 391
      Top = 109
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 11
      Items.Strings = (
        'Emitente'
        'Destinat'#225'rio'
      )
    end
    object EdtPs_Pedido: TCurrencyEdit
      Left = 500
      Top = 144
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object EdtPs_Liquido: TCurrencyEdit
      Left = 576
      Top = 144
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 19
    end
    object MmNota: TMemo
      Left = 4
      Top = 291
      Width = 742
      Height = 146
      ScrollBars = ssVertical
      TabOrder = 31
    end
    object EdtNr_Placa: TMaskEdit
      Left = 485
      Top = 109
      Width = 69
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 12
    end
    object CkBCredito: TCheckBox
      Left = 336
      Top = 437
      Width = 319
      Height = 17
      Caption = 'Sera gerado credito desta venda'
      TabOrder = 38
      Visible = False
    end
    object EdtCd_HistoricoCartao: TCurrencyEdit
      Tag = 3
      Left = 379
      Top = 217
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 25
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtDs_HistoricoCartao: TEdit
      Tag = 21
      Left = 441
      Top = 217
      Width = 308
      Height = 19
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
      TabOrder = 26
    end
    object CbBNFCe: TCheckBox
      Left = 243
      Top = 437
      Width = 91
      Height = 17
      Caption = 'Imprimir &NFC-e'
      TabOrder = 35
    end
    object CbConFinal: TComboBox
      Left = 555
      Top = 37
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 6
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 120
      Top = 181
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 21
      OnExit = EdtCd_PortadorExit
    end
    object EdtNm_Portador: TEdit
      Left = 184
      Top = 181
      Width = 297
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
      TabOrder = 22
    end
    object CbfinNFe: TbctComboBox
      Left = 5
      Top = 73
      Width = 149
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      Items.Strings = (
        'Normal'
        'Complementar'
        'NF-e de ajuste'
        'Devolu'#231#227'o de mercadoria'
      )
      Value = '-1'
      ValueList.Strings = (
        '1'
        '2'
        '3'
        '4'
      )
    end
    object EdtnatOp: TLabeledEdit
      Left = 155
      Top = 73
      Width = 295
      Height = 19
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'Natureza da Opera'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 60
      TabOrder = 8
    end
    object EdtCd_HistoricoDebito: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 254
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 27
      OnExit = EdtCd_HistoricoExit
    end
    object EdtDs_HistoricoDebito: TEdit
      Left = 68
      Top = 254
      Width = 299
      Height = 19
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
      TabOrder = 28
    end
    object EdtCd_HistoricoPIX: TCurrencyEdit
      Tag = 4
      Left = 373
      Top = 254
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 29
      OnExit = EdtCd_HistoricoExit
    end
    object EdtDs_HistoricoPIX: TEdit
      Left = 435
      Top = 254
      Width = 299
      Height = 19
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
      TabOrder = 30
    end
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, P.Nm_Portador, OP.Nr_Prazo,'#13#10'  OP.Dt_Vencimento, OP.Vl_Parcela, P.Tp_Cobranca, P.Cd_Banco, P.Fl_Pagamento,'#13#10'  P.Ds_Livre, OP.Fl_Parcela,'#13#10#13#10'  OP.Cd_Banco as Cd_BancoCheque,'#13#10'  OP.Cd_Agencia as Cd_AgenciaCheque, OP.Nr_Conta, OP.Nr_Cheque, OP.Dt_Emissao, OP.Nr_Documento,'#13#10'  OP.Nm_Cliente, OP.Nr_Telefone,'#13#10#13#10'  P.Pr_TxAdmCartao, P.Cd_Emitente, P.Vl_Tarifa, P.Cd_Agencia, P.Cd_Carteira, '#13#10'  P.Nr_Conta As Nr_ContaPortador'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OP.Nr_Prazo'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 177
    Top = 311
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsParcelacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParcelanm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsParcelanr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParcelavl_parcela: TBCDField
      FieldName = 'vl_parcela'
      Precision = 12
      Size = 2
    end
    object ADODsParcelatp_cobranca: TStringField
      FieldName = 'tp_cobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelacd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 4
    end
    object ADODsParcelafl_pagamento: TStringField
      FieldName = 'fl_pagamento'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelads_livre: TWideStringField
      FieldName = 'ds_livre'
      Size = 30
    end
    object ADODsParcelafl_parcela: TStringField
      FieldName = 'fl_parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelacd_bancocheque: TStringField
      FieldName = 'cd_bancocheque'
      Size = 3
    end
    object ADODsParcelanr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsParcelanr_cheque: TIntegerField
      FieldName = 'nr_cheque'
    end
    object ADODsParceladt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsParcelanr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsParcelanm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsParcelanr_telefone: TStringField
      FieldName = 'nr_telefone'
      Size = 10
    end
    object ADODsParcelaPr_TxAdmCartao: TBCDField
      FieldName = 'Pr_TxAdmCartao'
      Precision = 9
    end
    object ADODsParcelaCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsParcelaVl_Tarifa: TBCDField
      FieldName = 'Vl_Tarifa'
      Precision = 12
      Size = 2
    end
    object ADODsParcelaCd_AgenciaCheque: TStringField
      FieldName = 'Cd_AgenciaCheque'
      Size = 4
    end
    object ADODsParcelaCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsParcelaCd_Carteira: TSmallintField
      FieldName = 'Cd_Carteira'
    end
    object ADODsParcelaNr_ContaPortador: TStringField
      FieldName = 'Nr_ContaPortador'
      Size = 10
    end
  end
  object ADODsReceber: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Receber ) as NewReceber'#13#10#13#10'from'#13#10'  Receber'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end>
    Left = 146
    Top = 311
    object ADODsReceberNewReceber: TIntegerField
      FieldName = 'NewReceber'
      ReadOnly = True
    end
  end
  object ADODsEndereco: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,'#13#10'  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade, B.Sg_Estado,'#13#10'  B.Nm_Cidade + '''' - '''' + B.Sg_Estado as  Dp_Cidade,'#13#10'  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'inner join'#13#10'  Cidade B'#13#10'on'#13#10'  B.Cd_Cidade = A.Cd_Cidade'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  A.Nr_Endereco = :Nr_Endereco'
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
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 117
    Top = 311
    object ADODsEnderecoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEnderecoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEnderecoDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEnderecoDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEnderecoNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEnderecoDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEnderecoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEnderecoCd_Cidade: TSmallintField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEnderecoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsEnderecoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(###) ####-####;0; '
      Size = 11
    end
    object ADODsEnderecoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(###) ####-####;0; '
      Size = 11
    end
    object ADODsEnderecoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(###) ####-####;0; '
      Size = 11
    end
    object ADODsEnderecoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(###) ####-####;0; '
      Size = 11
    end
    object ADODsEnderecosg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEnderecoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object ADODsNFItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsNFItemCalcFields
    CommandText = 'select'#13#10'  A.Cd_Produto, A.Nm_Produto, A.Sg_Unidade, A.Qt_Item,'#13#10'  A.Vl_Unitario, T.Pr_Contrib, T.Pr_NaoContrib,'#13#10'  T.Tp_Tributacao, A.Qt_Estoque, A.Qt_Agregado, B.Sg_Estoque'#13#10#13#10'from'#13#10'  Orcamento_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = B.Cd_Tributacao'#13#10#13#10'where'#13#10'  A.Cd_Filial     = :Cd_Filial and'#13#10'  A.Nr_Orcamento  = :Nr_Orcamento and'#13#10'  A.Fl_Confirmado = ''''1'''#13#10#13#10'order by'#13#10'  A.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 88
    Top = 311
    object ADODsNFItemCd_Produto: TSmallintField
      FieldName = 'Cd_Produto'
    end
    object ADODsNFItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsNFItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsNFItemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsNFItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsNFItemDp_ST: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_ST'
      Size = 2
      Calculated = True
    end
    object ADODsNFItemQt_Agregado: TBCDField
      FieldName = 'Qt_Agregado'
      Precision = 9
      Size = 3
    end
    object ADODsNFItemSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsNFItemqt_estoque: TBCDField
      FieldName = 'qt_estoque'
      Precision = 12
      Size = 3
    end
    object ADODsNFItempr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsNFItempr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsNFItemtp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsNota: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Emitente, B.Nm_Emitente, B.Tp_Pessoa, B.Nr_Documento,'#13#10'  B.Nr_Insc_Estadual, A.Vl_Pedido_Frete, A.Vl_Pedido, B.Fl_Contribuinte, '#13#10'  B.Fl_Exportador, EA.Pr_Contribuinte, EA.Pr_NaoContrib, '#13#10'  A.Fl_FormaPagto, A.Nr_Endereco, A.Cd_CFOP,'#13#10'  A.Cd_Transportador, A.Ds_Especie, A.Ds_Marca, A.Ds_Quantidade,'#13#10'  A.Fl_Frete, A.Ps_Pedido, A.Ps_Liquido, A.Mm_Nota, A.Nr_Placa,'#13#10'  OT.Vl_Orcamento, A.Fl_ConFinal, B.Ds_EmailCob, A.finNfe, A.natOp'#13#10#13#10'from'#13#10'  Orcamento A'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial     = A.Cd_Filial and'#13#10'  OT.Nr_Orcamento = A.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco C'#13#10'on'#13#10'  C.Cd_Emitente = A.Cd_Emitente and'#13#10'  C.Nr_Endereco = A.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade D'#13#10'on'#13#10'  D.Cd_Cidade = C.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem = :Sg_Origem and'#13#10'  EA.Sg_Destino = D.Sg_Estado'#13#10#13#10'where'#13#10'  A.Cd_Filial    = :Cd_Filial and'#13#10'  A.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 0
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 59
    Top = 311
    object ADODsNotaCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsNotaNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsNotaTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsNotaVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsNotaVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsNotaFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaPr_Contribuinte: TBCDField
      FieldName = 'Pr_Contribuinte'
      Precision = 18
      Size = 2
    end
    object ADODsNotaFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsNotanr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsNotapr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
    object ADODsNotacd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsNotaCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsNotaDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsNotaDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsNotaDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsNotaFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 12
      Size = 3
    end
    object ADODsNotaPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsNotaMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsNotaNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsNotaVl_Orcamento: TBCDField
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsNotaFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsNotafinNfe: TStringField
      FieldName = 'finNfe'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
  end
  object ADODsFatura: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  max( Nr_Fatura ) as NewFatura'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Cd_Serie  = :Cd_Serie'
    )
    SQLOther2.Strings = (
      'select'
      '  A.Nr_Orcamento, B.Nm_Emitente'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial = :Cd_Filial and'
      '  A.Cd_Serie  = :Cd_Serie and'
      '  A.Nr_Fatura = :Nr_Fatura'
    )
    SQLOther3.Strings = (
      'select'
      '  max( C.Nr_Fatura ) as NewFatura'
      ''
      'from'
      '  Emitente B'
      ''
      'inner join'
      '  Entrada C'
      'on'
      '  C.Cd_Filial   = :Cd_Filial and'
      '  C.Cd_Emitente = B.Cd_Emitente and'
      '  C.Cd_Serie    = :Cd_Serie'
      ''
      'where'
      '  B.Nr_Documento = :Nr_Documento'
    )
    SQLOther4.Strings = (
      'select'
      '  C.Nr_Entrada'
      ''
      'from'
      '  Emitente B'
      ''
      'inner join'
      '  Entrada C'
      'on'
      '  C.Cd_Filial   = :Cd_Filial and'
      '  C.Cd_Emitente = B.Cd_Emitente and'
      '  C.Cd_Serie    = :Cd_Serie and'
      '  C.Nr_Fatura   = :Nr_Fatura'
      ''
      'where'
      '  B.Nr_Documento = :Nr_Documento'
    )
    SQLOther5.Strings = (
      '-- Numero do lan'#231'amento do caixa'
      'select'
      '  max( Nr_Lancamento ) as Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial'
    )
    SQLOther6.Strings = (
      'select'
      '  max( Nr_Fatura ) as NewFatura'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Serie   = :Cd_Serie'
    )
    Left = 30
    Top = 311
  end
  object ADOCmdUpd: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      '-- Atualiza o or'#231'amento'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Dt_Fatura        = :Dt_Fatura,'
      '  Cd_Serie         = :Cd_Serie,'
      '  Nr_Fatura        = :Nr_Fatura,'
      '  Nr_ECF           = :Nr_ECF,'
      '  Cd_Transportador = :Cd_Transportador,'
      '  Dt_Saida         = :Dt_Saida,'
      '  Ds_Quantidade    = :Ds_Quantidade,'
      '  Ds_Especie       = :Ds_Especie,'
      '  Ds_Marca         = :Ds_Marca,'
      '  Cd_CFOP          = :Cd_CFOP,'
      '  Fl_Frete         = :Fl_Frete,'
      '  Ps_Pedido        = :Ps_Pedido,'
      '  Ps_Liquido       = :Ps_Liquido,'
      '  Mm_Nota          = :Mm_Nota,'
      '  Nr_Placa         = :Nr_Placa,'
      '  Fl_ConFinal      = :Fl_ConFinal,'
      '  finNFe           = :finNFe,'
      '  natOp            = :natOp'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther0.Strings = (
      '-- Atualiza'#231#227'o do situa'#231#227'o do or'#231'amento'
      'execute Orcamento_Situacao :Cd_Filial, :Nr_Orcamento, ''''9'''', ''''5'''', :Dt_Confirmado '
    )
    SQLOther1.Strings = (
      'insert into Receber( Cd_Filial, Nr_Receber, Dt_Emissao, St_Receber, Cd_Emitente,'
      '  Vl_Duplicata, Vl_Recebido, Nr_Orcamento )'
      'values( :Cd_Filial, :Nr_Receber, :Dt_Emissao, :St_Receber, :Cd_Emitente,'
      '  :Vl_Duplicata, 0.0, :Nr_Orcamento )'
    )
    SQLOther2.Strings = (
      '-- Inclus'#227'o da parcela'
      'insert into Receber_Parcela( Cd_Filial,  Nr_Receber, Nr_Parcela, Dt_Vencimento,'
      '   Vl_Parcela, Cd_Portador, Cd_Envio, Dt_EnvioBanco, Nr_DoctoBanco, Vl_Recebido,'
      '   Id_Parcela )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, :Dt_Vencimento, :Vl_Parcela,'
      '   :Cd_Portador, :Cd_Envio, :Dt_EnvioBanco, :Nr_DoctoBanco, 0, :Id_Parcela )'
    )
    SQLOther3.Strings = (
      '-- Inclus'#227'o do hist'#243'rico'
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, 1, ''''1'''', :Dt_Lancamento,'
      '   :Vl_Parcela, :Cd_Usuario )'
    )
    SQLOther4.Strings = (
      '-- Baixa do valor a vista'
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, 2, ''''2'''', :Dt_Lancamento, :Vl_Parcela, :Cd_Usuario )'
      ''
    )
    SQLOther5.Strings = (
      '-- Insere lan'#231'amento no caixa'
      'insert into Caixa( Cd_Filial, Nr_Lancamento, Dt_Lancamento,'
      '  Tp_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Historico, Nr_Documento,'
      '  Nr_Receber, Nr_Receber_Par, Nr_Receber_Lancto, Nr_Orcamento, Cd_Usuario )'
      ''
      'values( :Cd_Filial, :Nr_Lancamento, :Dt_Lancamento,'
      '  ''''1'''', :Vl_Lancamento, :Ds_Lancamento, :Cd_Historico, :Nr_Documento,'
      '  :Nr_Receber, :Nr_Receber_Par, :Nr_Receber_Lancto, :Nr_Orcamento, :Cd_Usuario )'
    )
    SQLOther6.Strings = (
      '-- Insere o Cheque'
      'insert into Cheque( Cd_Filial, Id_Cheque, Cd_Emitente, Cd_Banco, Cd_Agencia,'
      '   Nr_Conta, Nr_Cheque, Fl_Cheque, Vl_Cheque, Dt_Emissao, Dt_Vencimento,'
      '   Nr_Documento, Nm_Cliente, Nr_Telefone, Nr_Orcamento )'
      'values( :Cd_Filial, :Id_Cheque, :Cd_Emitente, :Cd_Banco, :Cd_Agencia,'
      '   :Nr_Conta, :Nr_Cheque, ''''1'''', :Vl_Cheque, :Dt_Emissao, :Dt_Vencimento,'
      '   :Nr_Documento, :Nm_Cliente, :Nr_Telefone, :Nr_Orcamento )'
    )
    SQLOther7.Strings = (
      '--------------- Inclus'#227'o do credito do cliente'
      'declare'
      '  @Cd_Emitente Int,'
      '  @Nr_Lancamento SmallInt'
      ''
      'set @Cd_Emitente   = :Cd_Emitente'
      'set @Nr_Lancamento = Coalesce('
      '  ('
      '  select'
      '    max( Nr_Lancamento ) + 1'
      ''
      '  from'
      '    Emitente_Credito'
      ''
      '  where'
      '    Cd_Emitente = @Cd_Emitente'
      '  ), 1 )'
      ''
      'insert into Emitente_Credito( Cd_Emitente, Nr_Lancamento, Tp_Lancamento,'
      '  Dt_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Usuario )'
      ''
      'values( @Cd_Emitente, @Nr_Lancamento, ''''1'''','
      '  :Dt_Lancamento, :Vl_Lancamento, :Ds_Lancamento, :Cd_Usuario )'
      ''
    )
    SQLOther8.Strings = (
      ''
    )
    Left = 244
    Top = 311
  end
  object ADODsCheque: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Id_Cheque ) as Id_Cheque'#13#10#13#10'from'#13#10'  Cheque'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 206
    Top = 311
    object ADODsChequeid_cheque: TIntegerField
      FieldName = 'id_cheque'
    end
  end
end
