object FrmOrcamento_Fatura_Informa: TFrmOrcamento_Fatura_Informa
  Left = 384
  Top = 336
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar dados da Fatura'
  ClientHeight = 286
  ClientWidth = 701
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 286
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 179
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 680
    Height = 286
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 561
    ExplicitHeight = 179
    object BvlSeparator: TBevel
      Left = 1
      Top = 256
      Width = 674
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label10: TLabel
      Left = 37
      Top = 3
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label3: TLabel
      Left = 107
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label1: TLabel
      Left = 5
      Top = 74
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object SbTransportador: TSpeedButton
      Left = 56
      Top = 89
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
    object Label4: TLabel
      Left = 5
      Top = 111
      Width = 92
      Height = 13
      Caption = 'Sa'#237'da (Data/Hora):'
    end
    object LblECF: TLabel
      Left = 201
      Top = 3
      Width = 38
      Height = 13
      Caption = 'ECF N'#186':'
    end
    object Label25: TLabel
      Left = 253
      Top = 111
      Width = 41
      Height = 13
      Caption = 'Esp'#233'cie:'
    end
    object Label7: TLabel
      Left = 5
      Top = 148
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label8: TLabel
      Left = 81
      Top = 148
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
    end
    object Label18: TLabel
      Left = 391
      Top = 74
      Width = 75
      Height = 13
      Caption = 'Frete por conta:'
    end
    object Label11: TLabel
      Left = 485
      Top = 74
      Width = 30
      Height = 13
      Caption = 'Placa:'
    end
    object Label17: TLabel
      Left = 5
      Top = 38
      Width = 108
      Height = 13
      Caption = 'Finalidade da Emiss'#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 507
      Top = 259
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 593
      Top = 259
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 17
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Serie: TEdit
      Left = 5
      Top = 17
      Width = 27
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 18
      OnExit = EdtCd_SerieExit
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 37
      Top = 17
      Width = 65
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtNr_FaturaExit
    end
    object EdtDt_Fatura: TDateEdit
      Left = 107
      Top = 17
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_Transportador: TCurrencyEdit
      Left = 5
      Top = 89
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtNm_Transportador: TEdit
      Left = 80
      Top = 89
      Width = 308
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
      TabOrder = 6
    end
    object EdtDs_Quantidade: TLabeledEdit
      Left = 136
      Top = 126
      Width = 114
      Height = 19
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 11
    end
    object EdtDt_Saida: TDateEdit
      Left = 5
      Top = 126
      Width = 89
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 9
      OnExit = EdtDt_SaidaExit
    end
    object EdtHr_Saida: TMaskEdit
      Left = 97
      Top = 126
      Width = 33
      Height = 19
      TabStop = False
      EditMask = '##:##;0; '
      MaxLength = 5
      ReadOnly = True
      TabOrder = 10
    end
    object EdtDs_Marca: TLabeledEdit
      Left = 376
      Top = 126
      Width = 115
      Height = 19
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 13
    end
    object EdtNr_ECF: TCurrencyEdit
      Left = 201
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtNr_FaturaExit
    end
    object CbEspecie: TComboBox
      Left = 253
      Top = 126
      Width = 121
      Height = 21
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 12
      Items.Strings = (
        'Volume'
        'Caixa'
        'Pe'#231'a'
        'Amarrados'
        'Pacote'
        'Rolo'
      )
    end
    object EdtPs_Pedido: TCurrencyEdit
      Left = 5
      Top = 162
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object EdtPs_Liquido: TCurrencyEdit
      Left = 81
      Top = 162
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 15
    end
    object CbFrete: TComboBox
      Left = 391
      Top = 89
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 7
      Items.Strings = (
        'Emitente'
        'Destinat'#225'rio'
      )
    end
    object EdtNr_Placa: TMaskEdit
      Left = 485
      Top = 89
      Width = 69
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 8
    end
    object CbfinNFe: TbctComboBox
      Left = 5
      Top = 52
      Width = 149
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
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
      Top = 52
      Width = 295
      Height = 19
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'Natureza da Opera'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 60
      TabOrder = 4
    end
  end
  object ADOCmdFatura: TADOCommand
    CommandText = '-- Muda a situa'#231#227'o do Or'#231'amento'#13#10'update'#13#10'  Orcamento'#13#10#13#10'set'#13#10'  Dt_Fatura        = :Dt_Fatura,'#13#10'  Cd_Serie         = :Cd_Serie,'#13#10'  Nr_Fatura        = :Nr_Fatura,'#13#10'  Cd_Transportador = :Cd_Transportador,'#13#10'  Dt_Saida         = :Dt_Saida,'#13#10'  Ds_Quantidade    = :Ds_Quantidade,'#13#10'  Ds_Especie       = :Ds_Especie,'#13#10'  Ds_Marca         = :Ds_Marca,'#13#10'  Nr_ECF           = :Nr_ECF,'#13#10'  Ps_Pedido        = :Ps_Pedido,'#13#10'  Ps_Liquido       = :Ps_Liquido,'#13#10'  Fl_Frete         = :Fl_Frete,'#13#10'  Nr_Placa         = :Nr_Placa,'#13#10'  finNFe           = :finNFe,'#13#10'  natOp            = :natOp'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Dt_Fatura'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Serie'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Fatura'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Transportador'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Saida'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Ds_Quantidade'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Ds_Especie'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Ds_Marca'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_ECF'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Ps_Pedido'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Ps_Liquido'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Fl_Frete'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Placa'
        Size = -1
        Value = nil?
      end
      item
        Name = 'finNFe'
        Size = -1
        Value = nil?
      end
      item
        Name = 'natOp'
        Size = -1
        Value = nil?
      end
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
    Left = 54
    Top = 204
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
    Left = 25
    Top = 204
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Serie, Nr_Fatura, Dt_Fatura, Nr_ECF, Cd_Transportador, Nr_Placa,'#13#10'  Ps_Pedido, Ds_Quantidade, Ds_Especie, Dt_Saida, Ds_Marca, Ps_Liquido,'#13#10'  Fl_Frete, finNFe, natOp'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10'  '
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
    Left = 87
    Top = 203
    object ADODsOrcamentoPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsOrcamentoDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsOrcamentoDt_Saida: TDateTimeField
      FieldName = 'Dt_Saida'
    end
    object ADODsOrcamentoDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsOrcamentoPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsOrcamentoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcamentoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsOrcamentoCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsOrcamentoNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsOrcamentoFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentofinNFe: TStringField
      FieldName = 'finNFe'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentonatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
  end
end
