object FrmOrcamento_Fechamento_Prazo: TFrmOrcamento_Fechamento_Prazo
  Left = 422
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parcelas'
  ClientHeight = 144
  ClientWidth = 396
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
    Height = 144
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 375
    Height = 144
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 114
      Width = 367
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Prazos:'
    end
    object Label10: TLabel
      Left = 5
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 54
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
    object Label4: TLabel
      Left = 89
      Top = 76
      Width = 91
      Height = 13
      Caption = 'Valor das Parcelas:'
    end
    object Label2: TLabel
      Left = 183
      Top = 76
      Width = 71
      Height = 13
      Caption = #218'ltima Parcela:'
    end
    object Label3: TLabel
      Left = 5
      Top = 76
      Width = 57
      Height = 13
      Caption = 'Saldo Total:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 202
      Top = 117
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 11
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 288
      Top = 117
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 12
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Prazo_1: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 5
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 54
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
      TabOrder = 7
    end
    object EdtNr_Prazo_2: TCurrencyEdit
      Tag = 2
      Left = 46
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtNr_Prazo_4: TCurrencyEdit
      Tag = 4
      Left = 128
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtNr_Prazo_3: TCurrencyEdit
      Tag = 3
      Left = 87
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtNr_Prazo_6: TCurrencyEdit
      Tag = 6
      Left = 210
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtNr_Prazo_5: TCurrencyEdit
      Tag = 5
      Left = 169
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnChange = EdtNr_Prazo_1Change
      OnExit = EdtNr_Prazo_1Exit
    end
    object EdtVl_Parcela: TCurrencyEdit
      Left = 89
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
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
      TabOrder = 9
    end
    object EdtVl_Ultima: TCurrencyEdit
      Left = 183
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
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
      TabOrder = 10
    end
    object EdtVl_Saldo: TCurrencyEdit
      Left = 5
      Top = 90
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
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
      TabOrder = 8
    end
  end
  object ADOCmdParcela: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into TableName( Cd_Filial, Nr_Orcamento, Cd_Portador, Nr_Prazo,'
      '  Dt_Vencimento, Vl_Parcela, Fl_Parcela, Nr_Parcela )'
      'values( :Cd_Filial, :Nr_Orcamento, :Cd_Portador, :Nr_Prazo,'
      '  :Dt_Vencimento, :Vl_Parcela, ''''2'''', 1 )'
    )
    SQLDelete.Strings = (
      '-- Excluir parcela do or'#231'amento'
      'delete from'
      '  TableName'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Fl_Parcela = ''''2'''
    )
    SQLOther0.Strings = (
      '-- Excluir parcela do or'#231'amento - tmp'
      'delete from'
      '  TableName'
      ''
      'where'
      '  Fl_Parcela = ''''2'''
    )
    SQLOther1.Strings = (
      '-- Incluir parcela - tmp'
      'insert into TableName( Cd_Filial, Nr_Orcamento, Cd_Portador, Nr_Prazo,'
      '  Dt_Vencimento, Vl_Parcela, Fl_Parcela, Nr_Parcela )'
      'values( :Cd_Filial, :Nr_Orcamento, :Cd_Portador, :Nr_Prazo,'
      '  :Dt_Vencimento, :Vl_Parcela, ''''2'''', 1 )'
    )
    Left = 26
    Top = 115
  end
end
