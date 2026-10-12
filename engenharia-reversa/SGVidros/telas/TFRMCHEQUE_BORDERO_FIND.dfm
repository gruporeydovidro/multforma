object FrmCheque_Bordero_Find: TFrmCheque_Bordero_Find
  Left = 342
  Top = 302
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Border'#244's'
  ClientHeight = 353
  ClientWidth = 654
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
  OnCreate = FormCreate
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
    Width = 633
    Height = 353
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 323
      Width = 626
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 460
      Top = 326
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 546
      Top = 326
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object PgCtFind: TPageControl
      Left = -1
      Top = -1
      Width = 628
      Height = 319
      ActivePage = TabSCheque
      TabOrder = 0
      OnChange = PgCtFindChange
      object TabSNumero: TTabSheet
        Caption = '             N'#250'mero do Border'#244'             '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label1: TLabel
          Left = 5
          Top = 2
          Width = 95
          Height = 13
          Caption = 'N'#250'mero do Border'#244':'
        end
        object BvlSeparator_1: TBevel
          Left = 2
          Top = 41
          Width = 617
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
        object EdtNr_BorderoFind: TCurrencyEdit
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
          OnDblClick = EdtNr_BorderoFindDblClick
          OnKeyPress = EdtNr_BorderoFindKeyPress
        end
        object DbGNumero: TDBGrid
          Left = 5
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsNumero
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGPortadorKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_bordero'
              Title.Alignment = taRightJustify
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_bordero'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_deposito'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Bordero'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Por_Emi'
              Width = 321
              Visible = True
            end>
        end
      end
      object TabSEmitente: TTabSheet
        Caption = '                 Fornecedor                 '
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label10: TLabel
          Left = 5
          Top = 2
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object SbEmitenteFind: TSpeedButton
          Left = 56
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
        object BvlSeparator_2: TBevel
          Left = 2
          Top = 41
          Width = 617
          Height = 5
          Shape = bsTopLine
        end
        object Label3: TLabel
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
        object EdtCd_EmitenteFnd: TCurrencyEdit
          Tag = 1
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
          OnExit = EdtCd_EmitenteFndExit
          OnKeyDown = EdtCd_EmitenteFndKeyDown
          OnKeyPress = EdtCd_EmitenteFndKeyPress
        end
        object EdtNm_EmitenteFnd: TEdit
          Left = 80
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
          TabOrder = 1
        end
        object DbGCliente: TDBGrid
          Left = 5
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsEmitente
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGPortadorKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_bordero'
              Title.Alignment = taRightJustify
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_bordero'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_deposito'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_emitente'
              Width = 361
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_taxa'
              Title.Alignment = taRightJustify
              Visible = True
            end>
        end
      end
      object TabSPortador: TTabSheet
        Caption = '               Portador               '
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label4: TLabel
          Left = 5
          Top = 2
          Width = 43
          Height = 13
          Caption = 'Portador:'
        end
        object Bevel1: TBevel
          Left = 2
          Top = 41
          Width = 617
          Height = 5
          Shape = bsTopLine
        end
        object Label5: TLabel
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
        object SbPortador: TSpeedButton
          Left = 56
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Seleciona Cliente'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object EdtCd_PortadorFind: TCurrencyEdit
          Tag = 2
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
          OnExit = EdtCd_PortadorFindExit
          OnKeyDown = EdtCd_EmitenteFndKeyDown
          OnKeyPress = EdtCd_PortadorFindKeyPress
        end
        object EdtNm_PortadorFind: TEdit
          Left = 80
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
          TabOrder = 1
        end
        object DbGPortador: TDBGrid
          Left = 5
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsPortador
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGPortadorKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_bordero'
              Title.Alignment = taRightJustify
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_bordero'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_deposito'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_portador'
              Width = 420
              Visible = True
            end>
        end
      end
      object TabSCheque: TTabSheet
        Caption = '             Cheque             '
        ImageIndex = 3
        object Label6: TLabel
          Left = 5
          Top = 2
          Width = 95
          Height = 13
          Caption = 'N'#250'mero do Cheque:'
        end
        object Bevel2: TBevel
          Left = 2
          Top = 41
          Width = 617
          Height = 5
          Shape = bsTopLine
        end
        object Label7: TLabel
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
          OnDblClick = EdtNr_ChequeFindDblClick
          OnKeyPress = EdtNr_ChequeFindKeyPress
        end
        object DbGCheque: TDBGrid
          Left = 5
          Top = 61
          Width = 613
          Height = 225
          DataSource = DsCheque
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGPortadorKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_bordero'
              Title.Alignment = taRightJustify
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_bordero'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_deposito'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Bordero'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Por_Emi'
              Width = 321
              Visible = True
            end>
        end
      end
    end
  end
  object DsNumero: TDataSource
    DataSet = ADODsNumero
    Left = 24
    Top = 322
  end
  object ADODsNumero: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsNumeroCalcFields
    CommandText = 'select top 50'#13#10'  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, CB.Tp_Bordero,'#13#10'  P.Nm_Portador, E.Nm_Emitente'#13#10#13#10'from'#13#10'  Cheque_Bordero CB'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'where'#13#10'  CB.Cd_Filial   = :Cd_Filial and'#13#10'  CB.Nr_Bordero >= :Nr_Bordero'#13#10#13#10'order by'#13#10'  CB.Nr_Bordero'
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
        Name = 'Nr_Bordero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 54
    Top = 322
    object ADODsNumerocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsNumeronr_bordero: TIntegerField
      DisplayLabel = 'Border'#244
      FieldName = 'nr_bordero'
    end
    object ADODsNumerodt_bordero: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_bordero'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsNumerodt_deposito: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_deposito'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsNumerotp_bordero: TStringField
      FieldName = 'tp_bordero'
      FixedChar = True
      Size = 1
    end
    object ADODsNumeronm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsNumeronm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsNumeroDp_Bordero: TStringField
      DisplayLabel = 'Tipo do Border'#244
      FieldKind = fkCalculated
      FieldName = 'Dp_Bordero'
      Calculated = True
    end
    object ADODsNumeroDp_Por_Emi: TStringField
      DisplayLabel = 'Portador / Fornecedor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Por_Emi'
      Size = 60
      Calculated = True
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, E.Nm_Emitente, CB.Pr_Taxa'#13#10#13#10'from'#13#10'  Cheque_Bordero CB'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'where'#13#10'  CB.Cd_Filial   = :Cd_Filial and'#13#10'  CB.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  CB.Nr_Bordero'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 119
    Top = 322
    object ADODsEmitentecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsEmitentenr_bordero: TIntegerField
      DisplayLabel = 'Border'#244
      FieldName = 'nr_bordero'
    end
    object ADODsEmitentedt_bordero: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_bordero'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsEmitentedt_deposito: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_deposito'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsEmitentenm_emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentepr_taxa: TBCDField
      DisplayLabel = 'Taxa'
      FieldName = 'pr_taxa'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
  end
  object DsEmitente: TDataSource
    DataSet = ADODsEmitente
    Left = 89
    Top = 322
  end
  object DsPortador: TDataSource
    DataSet = ADODsPortador
    Left = 159
    Top = 322
  end
  object ADODsPortador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, P.Nm_Portador'#13#10#13#10'from'#13#10'  Cheque_Bordero CB'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'where'#13#10'  CB.Cd_Filial   = :Cd_Filial and'#13#10'  CB.Cd_Portador = :Cd_Portador'#13#10#13#10'order by'#13#10'  CB.Nr_Bordero'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Cd_Portador'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end>
    Left = 188
    Top = 322
    object ADODsPortadorcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsPortadornr_bordero: TIntegerField
      DisplayLabel = 'Border'#244
      FieldName = 'nr_bordero'
    end
    object ADODsPortadordt_bordero: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_bordero'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsPortadordt_deposito: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_deposito'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsPortadornm_portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'nm_portador'
      Size = 50
    end
  end
  object ADODsCheque: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsNumeroCalcFields
    CommandText = 'select distinct'#13#10'  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Dt_Deposito, CB.Tp_Bordero,'#13#10'  P.Nm_Portador, E.Nm_Emitente'#13#10'  '#13#10'from'#13#10'  Cheque C'#13#10'  '#13#10'inner join'#13#10'  Cheque_Deposito CD'#13#10'on'#13#10'  CD.Cd_Filial = C.Cd_Filial and'#13#10'  CD.Id_Cheque = C.Id_Cheque'#13#10'  '#13#10'inner join'#13#10'  Cheque_Bordero CB'#13#10'on'#13#10'  CB.Cd_Filial  = CD.Cd_Filial and'#13#10'  CB.Nr_Bordero = CD.Nr_Bordero'#13#10'  '#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'where'#13#10'  C.Cd_Filial = :Cd_Filial and'#13#10'  C.Nr_Cheque = :Nr_Cheque'#13#10#13#10'order by'#13#10'  CB.Nr_Bordero'
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
        Value = nil?
      end>
    Left = 251
    Top = 322
    object SmallintField1: TSmallintField
      FieldName = 'cd_filial'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Border'#244
      FieldName = 'nr_bordero'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_bordero'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_deposito'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object StringField1: TStringField
      FieldName = 'tp_bordero'
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object StringField4: TStringField
      DisplayLabel = 'Tipo do Border'#244
      FieldKind = fkCalculated
      FieldName = 'Dp_Bordero'
      Calculated = True
    end
    object StringField5: TStringField
      DisplayLabel = 'Portador / Fornecedor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Por_Emi'
      Size = 60
      Calculated = True
    end
  end
  object DsCheque: TDataSource
    DataSet = ADODsCheque
    Left = 221
    Top = 322
  end
end
