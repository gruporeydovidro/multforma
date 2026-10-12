object FrmSaida_Parcela: TFrmSaida_Parcela
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Parcelas da Sa'#237'da'
  ClientHeight = 213
  ClientWidth = 627
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
    Height = 213
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 123
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 606
    Height = 213
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 312
    ExplicitHeight = 123
    object BvlSeparator: TBevel
      Left = 3
      Top = 183
      Width = 597
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 119
      Top = 4
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label3: TLabel
      Left = 214
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label14: TLabel
      Left = 4
      Top = 81
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label1: TLabel
      Left = 89
      Top = 81
      Width = 46
      Height = 13
      Caption = 'Restante:'
    end
    object Label4: TLabel
      Left = 4
      Top = 39
      Width = 98
      Height = 13
      Caption = 'Meio de Pagamento:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 433
      Top = 186
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 519
      Top = 186
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Documento: TLabeledEdit
      Left = 4
      Top = 17
      Width = 110
      Height = 19
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Documento:'
      MaxLength = 12
      TabOrder = 0
      OnExit = EdtNr_DocumentoExit
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 119
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtVl_Parcela: TRxCalcEdit
      Left = 214
      Top = 17
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '##,##0.00'
      NumGlyphs = 2
      TabOrder = 2
      OnChange = EdtVl_ParcelaChange
    end
    object EdtVl_Saida: TCurrencyEdit
      Left = 4
      Top = 95
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Restante: TCurrencyEdit
      Left = 89
      Top = 95
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CbFormaPagamento: TbctComboBox
      Left = 4
      Top = 55
      Width = 341
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        '01 - Dinheiro'
        '02 - Cheque'
        '03 - Cart'#227'o de Cr'#233'dito'
        '04 - Cart'#227'o de D'#233'bito'
        '05 - Cr'#233'dito Loja'
        '10 - Vale Alimenta'#231#227'o'
        '11 - Vale Refei'#231#227'o'
        '12 - Vale Presente'
        '13 - Vale Combust'#237'vel'
        '15 - Boleto Banc'#225'rio'
        '16 - Dep'#243'sito Banc'#225'rio'
        '17 - Pagamento Instant'#226'neo (PIX)'
        '18 - Transfer'#234'ncia Banc'#225'ria, Carteira Digital'
        '19 - Programa de fidelidade, Cashback, Cr'#233'dito Virtual'
        '90 - Sem pagamento'
        '99 - Outros'
      )
      Value = '-1'
      ValueList.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '10'
        '11'
        '12'
        '13'
        '15'
        '16'
        '17'
        '18'
        '19'
        '90'
        '99'
      )
    end
  end
  object ADOCmdParcela: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Saida_Parcela( Cd_Filial, Nr_Saida, Nr_Documento, Dt_Vencimento, Vl_Parcela, Cd_FormaPagamento )'
      'values( :Cd_Filial, :Nr_Saida, :Nr_Documento, :Dt_Vencimento, :Vl_Parcela, :Cd_FormaPagamento )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Saida_Parcela'
      ''
      'set'
      ' Dt_Vencimento     = :Dt_Vencimento,'
      ' Vl_Parcela        = :Vl_Parcela,'
      ' Cd_FormaPagamento = :Cd_FormaPagamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Saida     = :Nr_Saida and'
      '  Nr_Documento = :Nr_Documento'
    )
    Left = 264
    Top = 63
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'  Cd_Filial'#13#10#13#10'from'#13#10'  Saida_Parcela'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Saida     = :Nr_Saida and'#13#10'  Nr_Documento = :Nr_Documento'#13#10
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Documento'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = nil?
      end>
    Left = 296
    Top = 63
  end
end
