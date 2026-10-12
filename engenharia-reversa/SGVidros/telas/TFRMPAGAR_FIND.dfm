object FrmPagar_Find: TFrmPagar_Find
  Left = 297
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta do Contas '#224' Pagar'
  ClientHeight = 415
  ClientWidth = 764
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 415
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 743
    Height = 415
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 385
      Width = 737
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 32
      Height = 13
      Caption = 'N'#186' CP:'
    end
    object SbEmitenteFnd: TSpeedButton
      Left = 107
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteFndClick
    end
    object Label10: TLabel
      Left = 57
      Top = 2
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label3: TLabel
      Left = 441
      Top = 2
      Width = 126
      Height = 13
      Caption = 'N'#186' Documento na parcela:'
    end
    object Label6: TLabel
      Left = 569
      Top = 2
      Width = 117
      Height = 13
      Caption = 'N'#186' Documento de Baixa:'
    end
    object Label8: TLabel
      Left = 5
      Top = 36
      Width = 96
      Height = 13
      Caption = 'Valor (Inicial / Final):'
    end
    object Label9: TLabel
      Left = 171
      Top = 36
      Width = 48
      Height = 13
      Caption = 'N'#186' Fatura:'
    end
    object Label12: TLabel
      Left = 224
      Top = 36
      Width = 50
      Height = 13
      Caption = 'Descritivo:'
    end
    object Bevel1: TBevel
      Left = 2
      Top = 71
      Width = 737
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 570
      Top = 388
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 656
      Top = 388
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_PagarFnd: TCurrencyEdit
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
      OnKeyPress = EdtNr_PagarFndKeyPress
    end
    object EdtCd_EmitenteFnd: TCurrencyEdit
      Left = 57
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_EmitenteFndExit
      OnKeyDown = EdtCd_EmitenteFndKeyDown
      OnKeyPress = EdtCd_EmitenteFndKeyPress
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 131
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
    object EdtNr_DoctoFnd: TEdit
      Tag = 1
      Left = 441
      Top = 17
      Width = 121
      Height = 19
      MaxLength = 15
      TabOrder = 3
      OnKeyPress = EdtNr_DoctoFndKeyPress
    end
    object EdtNr_DoctoBaixaFnd: TEdit
      Tag = 2
      Left = 569
      Top = 17
      Width = 121
      Height = 19
      MaxLength = 15
      TabOrder = 4
      OnKeyPress = EdtNr_DoctoFndKeyPress
    end
    object EdtVl_Start: TCurrencyEdit
      Left = 5
      Top = 51
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 5
      OnExit = EdtVl_StartExit
      OnKeyPress = EdtVl_StartKeyPress
    end
    object EdtVl_End: TCurrencyEdit
      Left = 88
      Top = 51
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 6
      OnExit = EdtVl_StartExit
      OnKeyPress = EdtVl_StartKeyPress
    end
    object EdtNr_FaturaFnd: TCurrencyEdit
      Left = 171
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnKeyPress = EdtNr_FaturaFndKeyPress
    end
    object EdtDs_PagarFnd: TEdit
      Tag = 1
      Left = 224
      Top = 51
      Width = 308
      Height = 19
      MaxLength = 50
      TabOrder = 8
      OnKeyPress = EdtDs_PagarFndKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 75
      Width = 732
      Height = 307
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
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
          FieldName = 'Nr_Pagar'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Pagar'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Entrada'
          Width = 42
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Pagar'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Duplicata'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 129
    Top = 323
  end
  object ADODsFind: TMultADODS
    Active = True
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFindCalcFields
    CommandText = 'select distinct'#13#10'  P.Cd_Filial, P.Nr_Pagar, P.Dt_Emissao, P.Cd_Emitente, E.Nm_Emitente,'#13#10'  P.Nr_Entrada, P.Vl_Duplicata, P.Vl_Pago, P.St_Pagar, P.Ds_Pagar,'#13#10'  EN.Nr_Fatura'#13#10#13#10'from'#13#10'  Pagar P'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = P.Cd_Emitente'#13#10#13#10'left join'#13#10'  Entrada EN'#13#10'on'#13#10'  EN.Cd_Filial  = P.Cd_Filial and'#13#10'  EN.Nr_Entrada = P.Nr_Entrada'#13#10'  /* Nr_Fatura */'#13#10#13#10'/* Nr_Documento */'#13#10'/* Nr_DoctoBaixa */'#13#10'/* Vl_Parcela */'#13#10#13#10'where'#13#10'  P.Cd_Filial = :Cd_Filial'#13#10'  /* Nr_Pagar */'#13#10'  /* Cd_Emitente */'#13#10'  /* Ds_Pagar */'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select distinct'
      '  P.Cd_Filial, P.Nr_Pagar, P.Dt_Emissao, P.Cd_Emitente, E.Nm_Emitente,'
      '  P.Nr_Entrada, P.Vl_Duplicata, P.Vl_Pago, P.St_Pagar, P.Ds_Pagar,'
      '  EN.Nr_Fatura'
      ''
      'from'
      '  Pagar P'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = P.Cd_Emitente'
      ''
      'left join'
      '  Entrada EN'
      'on'
      '  EN.Cd_Filial  = P.Cd_Filial and'
      '  EN.Nr_Entrada = P.Nr_Entrada'
      '  /* Nr_Fatura */'
      ''
      '/* Nr_Documento */'
      '/* Nr_DoctoBaixa */'
      '/* Vl_Parcela */'
      ''
      'where'
      '  P.Cd_Filial = :Cd_Filial'
      '  /* Nr_Pagar */'
      '  /* Cd_Emitente */'
      '  /* Ds_Pagar */'
      ''
      'order by'
    )
    SQLOther1.Strings = (
      '--------------- Documento da parcela'
      'inner join'
      '  Pagar_Parcela PP'
      'on'
      '  PP.Cd_Filial    = P.Cd_Filial and'
      '  PP.Nr_Pagar     = P.Nr_Pagar and'
      '  PP.Nr_Documento like :Nr_Documento'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Documento de Baixa'
      'inner join'
      '  Pagar_Historico PH'
      'on'
      '  PH.Cd_Filial     = P.Cd_Filial and'
      '  PH.Nr_Pagar      = P.Nr_Pagar and'
      '  PH.Nr_DoctoBaixa like :Nr_Documento'
    )
    SQLOther3.Strings = (
      '--------------- Valor da Parcela'
      'inner join'
      '  Pagar_Parcela PP'
      'on'
      '  PP.Cd_Filial   = P.Cd_Filial and'
      '  PP.Nr_Pagar    = P.Nr_Pagar and'
      '  PP.Vl_Parcela >= :Vl_Start and'
      '  PP.Vl_Parcela <= :Vl_End'
    )
    Left = 160
    Top = 324
    object ADODsFindNr_Pagar: TIntegerField
      DisplayLabel = 'N'#186' CP'
      FieldName = 'Nr_Pagar'
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindNr_Entrada: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'Nr_Entrada'
    end
    object ADODsFindVl_Duplicata: TBCDField
      DisplayLabel = 'Duplicata'
      FieldName = 'Vl_Duplicata'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindVl_Pago: TBCDField
      DisplayLabel = 'Pago'
      FieldName = 'Vl_Pago'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindSt_Pagar: TStringField
      FieldName = 'St_Pagar'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDs_Pagar: TStringField
      DisplayLabel = 'Descritivo'
      FieldName = 'Ds_Pagar'
      Size = 50
    end
    object ADODsFindDp_Pagar: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Pagar'
      Size = 10
      Calculated = True
    end
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
  end
end
