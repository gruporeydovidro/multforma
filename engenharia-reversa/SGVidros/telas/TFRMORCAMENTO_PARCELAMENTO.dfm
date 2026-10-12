object FrmOrcamento_Parcelamento: TFrmOrcamento_Parcelamento
  Left = 434
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Parcelamento'
  ClientHeight = 141
  ClientWidth = 398
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
    Height = 141
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 377
    Height = 141
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 111
      Width = 366
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label2: TLabel
      Left = 53
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Intervalo:'
    end
    object Label3: TLabel
      Left = 202
      Top = 4
      Width = 24
      Height = 13
      Caption = 'Dias:'
    end
    object Label10: TLabel
      Left = 5
      Top = 72
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 87
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
      Left = 5
      Top = 38
      Width = 160
      Height = 13
      Caption = 'Primeiro Vencimento (Dias / Data)'
    end
    object BitBtnConfirm: TBitBtn
      Left = 204
      Top = 114
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 290
      Top = 114
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 8
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Parcelas: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
    end
    object CbIntervalo: TComboBox
      Left = 53
      Top = 18
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = CbIntervaloChange
      Items.Strings = (
        'Meses'
        'Quinzena'
        'Dezenas'
        'Semanal'
        'Intervalo Especifico'
        '28 dias'
      )
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 202
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 5
      Top = 87
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 87
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
    object EdtDt_Vencimento: TDateEdit
      Left = 50
      Top = 53
      Width = 87
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtNr_Prazo: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnChange = EdtNr_PrazoChange
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
    Top = 75
  end
end
