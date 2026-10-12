object FrmCheque_Find: TFrmCheque_Find
  Left = 299
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Cheque'
  ClientHeight = 353
  ClientWidth = 774
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 353
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 353
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 323
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 55
      Height = 13
      Caption = 'N'#186' Cheque:'
    end
    object Label10: TLabel
      Left = 62
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitenteFind: TSpeedButton
      Left = 114
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteFindClick
    end
    object Label4: TLabel
      Left = 450
      Top = 2
      Width = 82
      Height = 13
      Caption = 'Valor do Cheque:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 41
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 10
      Top = 45
      Width = 139
      Height = 13
      Caption = 'Resultado da Consulta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object LblOrcamento: TLabel
      Left = 592
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label3: TLabel
      Left = 536
      Top = 2
      Width = 54
      Height = 13
      Caption = 'ID Cheque:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 326
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 326
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 8
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_ChequeFind: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnKeyPress = EdtNr_ChequeFindKeyPress
    end
    object EdtCd_EmitenteFnd: TCurrencyEdit
      Left = 62
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnKeyDown = EdtCd_EmitenteFndKeyDown
      OnKeyPress = EdtNr_ChequeFindKeyPress
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 138
      Top = 17
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
      TabOrder = 2
    end
    object EdtVl_ChequeFind: TCurrencyEdit
      Left = 450
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnKeyPress = EdtNr_ChequeFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 61
      Width = 742
      Height = 260
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'nr_cheque'
          Title.Alignment = taRightJustify
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 299
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_conta'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vencimento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_cheque'
          Title.Alignment = taRightJustify
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_cheque'
          Title.Alignment = taRightJustify
          Width = 59
          Visible = True
        end>
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Left = 592
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = EdtNr_ChequeFindKeyPress
    end
    object EdtId_ChequeFnd: TCurrencyEdit
      Left = 536
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnKeyPress = EdtNr_ChequeFindKeyPress
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 24
    Top = 319
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select '#13#10'  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'#13#10'  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,'#13#10'  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,'#13#10'  C.Nr_Telefone'#13#10#13#10'from'#13#10'  Cheque C'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'where'#13#10'  C.Cd_Filial  = :Cd_Filial and'#13#10'  C.Nr_Cheque = :Nr_Cheque'#13#10#13#10'order by'#13#10'  C.Nr_Cheque'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Cheque'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'
      '  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,'
      '  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,'
      '  C.Nr_Telefone'
      ''
      'from'
      '  Cheque C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial'
      '  /* Nr_Cheque */'
      '  /* Cd_Emitente */'
      '  /* Vl_Cheque */'
      '  /* Nr_Orcamento */'
      '  /* Id_Cheque */'
      ''
      'order by'
      '  C.Nr_Cheque'
    )
    Left = 54
    Top = 319
    object ADODsFindcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsFindid_cheque: TIntegerField
      DisplayLabel = 'ID Cheque'
      FieldName = 'id_cheque'
    end
    object ADODsFindcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsFindnm_emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsFindcd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsFindcd_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsFindnr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsFindnr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsFindfl_cheque: TStringField
      FieldName = 'fl_cheque'
      FixedChar = True
      Size = 1
    end
    object ADODsFindvl_cheque: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_cheque'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFinddt_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFinddt_vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsFindnm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsFindnr_telefone: TStringField
      FieldName = 'nr_telefone'
      Size = 10
    end
  end
end
