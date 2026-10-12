object FrmReceber_Find: TFrmReceber_Find
  Left = 407
  Top = 298
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta do Contas '#224' Receber'
  ClientHeight = 436
  ClientWidth = 898
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 436
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 877
    Height = 436
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 406
      Width = 872
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 33
      Height = 13
      Caption = 'N'#186' CR:'
    end
    object SbEmitenteFind: TSpeedButton
      Left = 108
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
    object Label10: TLabel
      Left = 58
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 494
      Top = 2
      Width = 150
      Height = 13
      Caption = 'Valor da Parcela (Inicial / Final):'
    end
    object Label6: TLabel
      Left = 646
      Top = 2
      Width = 48
      Height = 13
      Caption = 'N'#186' Fatura:'
    end
    object Bevel1: TBevel
      Left = 2
      Top = 73
      Width = 871
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 411
      Top = 37
      Width = 68
      Height = 13
      Caption = 'ID da Parcela:'
    end
    object LblOrcamento: TLabel
      Left = 700
      Top = 2
      Width = 70
      Height = 13
      Caption = 'N'#186' Or'#231'amento:'
    end
    object Label4: TLabel
      Left = 626
      Top = 37
      Width = 117
      Height = 13
      Caption = 'N'#186' Documento de Baixa:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 704
      Top = 409
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 790
      Top = 409
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 13
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_ReceberFind: TCurrencyEdit
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
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtCd_EmitenteFnd: TCurrencyEdit
      Left = 58
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
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtNm_EmitenteFnd: TEdit
      Left = 132
      Top = 17
      Width = 359
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
      TabOrder = 2
    end
    object EdtVl_Start: TCurrencyEdit
      Left = 494
      Top = 17
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 3
      OnExit = EdtVl_EndExit
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtVl_End: TCurrencyEdit
      Left = 566
      Top = 17
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 4
      OnExit = EdtVl_EndExit
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtNr_FaturaFind: TCurrencyEdit
      Left = 646
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtDs_ReceberFind: TLabeledEdit
      Left = 98
      Top = 52
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'Descritivo da Conta:'
      LabelSpacing = 2
      MaxLength = 40
      TabOrder = 7
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 77
      Width = 865
      Height = 326
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
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
          FieldName = 'Nr_Receber'
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
          Width = 256
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Fatura'
          Title.Alignment = taRightJustify
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Receber'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Receber'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Recebido'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Duplicata'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Fatura'
          Visible = True
        end>
    end
    object EdtDs_FaturaFind: TLabeledEdit
      Left = 6
      Top = 52
      Width = 56
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Fatura (manual):'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 6
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtId_ParcelaFind: TCurrencyEdit
      Left = 411
      Top = 52
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtNr_DoctoBancoFind: TLabeledEdit
      Left = 496
      Top = 52
      Width = 125
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Nosso N'#250'mero:'
      LabelSpacing = 2
      MaxLength = 25
      TabOrder = 9
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtNr_OrcaFind: TCurrencyEdit
      Left = 700
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 14
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
    object EdtNr_DoctoBaixaFnd: TEdit
      Tag = 2
      Left = 626
      Top = 52
      Width = 121
      Height = 19
      MaxLength = 15
      TabOrder = 10
      OnKeyPress = EdtNr_ReceberFindKeyPress
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 32
    Top = 319
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFindCalcFields
    CommandText = 'select'#13#10'  R.Nr_Receber, R.Dt_Emissao, E.Nm_Emitente, R.Vl_Duplicata, '#13#10'  R.Vl_Recebido, R.St_Receber, R.Nr_Orcamento, R.Ds_Receber,'#13#10'  R.Ds_Fatura, O.Nr_Fatura'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10#13#10'/* Nr_Fatura */'#13#10'/* Vl_Parcela */'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'where'#13#10'  R.Cd_Filial  = :Cd_Filial '#13#10'  /* Nr_Receber */'#13#10'  /* Cd_Emitente */'#13#10'  /* Ds_Fatura */'#13#10'  /* Ds_Receber */'#13#10#13#10'order by'#13#10'  1, 2, 3'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2
      end>
    SQLOther0.Strings = (
      'select distinct'
      '  R.Cd_Filial, R.Nr_Receber, R.Dt_Emissao, R.Cd_Emitente, E.Nm_Emitente, R.Vl_Duplicata,'
      '  R.Vl_Recebido, R.St_Receber, R.Nr_Orcamento, R.Ds_Receber,'
      '  R.Ds_Fatura, O.Nr_Fatura'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = R.Cd_Emitente'
      ''
      '/* Nr_Documento */'
      '/* Nr_Fatura */'
      '/* Parcela */'
      '/* Vl_Parcela */'
      '/* Id_Parcela */'
      '/* Nr_DoctoBanco */'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = R.Cd_Filial and'
      '  O.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'where'
      '  R.Cd_Filial  = :Cd_Filial'
      '  /* Nr_Receber */'
      '  /* Cd_Emitente */'
      '  /* Ds_Fatura */'
      '  /* Ds_Receber */'
      '  /* Nr_Orcamento */'
      ''
      'order by'
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Fatura'
      'inner join'
      '  Orcamento OFat'
      'on'
      '  OFat.Cd_Filial    = R.Cd_Filial and'
      '  OFat.Nr_Orcamento = R.Nr_Orcamento and'
      '  OFat.Nr_Fatura    = :Nr_Fatura'
    )
    SQLOther2.Strings = (
      '--------------- Parcela'
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber'
    )
    SQLOther3.Strings = (
      '-------------------- Valor da Parcela'
      ' and'
      '  RP.Vl_Parcela >= :Vl_Start and'
      '  RP.Vl_Parcela <= :Vl_End'
      ''
    )
    SQLOther4.Strings = (
      '-------------------- ID da Parcela'
      'and RP.Id_Parcela = :Id_Parcela'
    )
    SQLOther5.Strings = (
      '-------------------- Documento Banc'#225'rio'
      'and RP.Nr_DoctoBanco = :Nr_DoctoBanco'
    )
    SQLOther6.Strings = (
      '--------------- Documento de Baixa'
      'inner join'
      '  Receber_Historico RH'
      'on'
      '  RH.Cd_Filial  = R.Cd_Filial and'
      '  RH.Nr_Receber = R.Nr_Receber and'
      '  RH.Nr_DoctoBaixa like :Nr_Documento'
    )
    Left = 61
    Top = 319
    object ADODsFindNr_Receber: TIntegerField
      DisplayLabel = 'N'#186' Receber'
      FieldName = 'Nr_Receber'
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindVl_Duplicata: TBCDField
      DisplayLabel = 'Duplicata'
      FieldName = 'Vl_Duplicata'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindVl_Recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'Vl_Recebido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindSt_Receber: TStringField
      FieldName = 'St_Receber'
      FixedChar = True
      Size = 1
    end
    object ADODsFindNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsFindDs_Receber: TStringField
      DisplayLabel = 'Descri'#231#227'o da Conta'
      FieldName = 'Ds_Receber'
      Size = 40
    end
    object ADODsFindDp_Receber: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 15
      Calculated = True
    end
    object ADODsFindDs_Fatura: TStringField
      DisplayLabel = 'Fatura (Manual)'
      FieldName = 'Ds_Fatura'
      Size = 10
    end
    object ADODsFindNr_Fatura: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'Nr_Fatura'
    end
  end
end
