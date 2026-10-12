object FrmReceber_Cobranca: TFrmReceber_Cobranca
  Left = 230
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cobran'#231'a'
  ClientHeight = 582
  ClientWidth = 979
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 582
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 958
    Height = 582
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 33
      Height = 13
      Caption = 'Atraso:'
    end
    object Label4: TLabel
      Left = 58
      Top = 0
      Width = 55
      Height = 13
      Caption = 'Ocorr'#234'ncia:'
    end
    object Label2: TLabel
      Left = 405
      Top = 0
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 88
      Width = 949
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 863
      Top = 63
      Width = 85
      Height = 24
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label3: TLabel
      Left = 5
      Top = 91
      Width = 40
      Height = 13
      Caption = 'Clientes:'
    end
    object Label5: TLabel
      Left = 6
      Top = 441
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label6: TLabel
      Left = 7
      Top = 315
      Width = 45
      Height = 13
      Caption = 'Contatos:'
    end
    object Label7: TLabel
      Left = 424
      Top = 441
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label10: TLabel
      Left = 5
      Top = 34
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object SbCidade: TSpeedButton
      Left = 55
      Top = 48
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object Label19: TLabel
      Left = 589
      Top = 34
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 629
      Top = 48
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label17: TLabel
      Left = 304
      Top = 33
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 343
      Top = 48
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object Label8: TLabel
      Left = 566
      Top = 0
      Width = 99
      Height = 13
      Caption = 'Dia para pagamento:'
    end
    object Label9: TLabel
      Left = 666
      Top = 0
      Width = 181
      Height = 13
      Caption = 'Com mais de " X " parcelas em atraso:'
    end
    object EdtNr_Atraso: TRxSpinEdit
      Left = 5
      Top = 13
      Width = 50
      Height = 19
      Value = 30.0
      TabOrder = 0
    end
    object CbOcorrencia: TComboBox
      Left = 58
      Top = 13
      Width = 344
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object CbOrdem: TComboBox
      Left = 405
      Top = 13
      Width = 156
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Maior Atraso'
      Items.Strings = (
        'Maior Atraso'
        'Maior Valor Acumulado'
        'Alfabetico'
        'Mais Parcelas em Atraso'
      )
    end
    object RdBtnAtraso: TRadioButton
      Left = 5
      Top = 70
      Width = 227
      Height = 17
      Caption = 'Listar Clientes em atraso a mais de "X" dias'
      Checked = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      TabStop = True
    end
    object RdBtnOcorrencia: TRadioButton
      Left = 245
      Top = 70
      Width = 310
      Height = 17
      Caption = 'Clientes cobrados a mais de "X" pela ocorr'#234'ncia selecionada'
      TabOrder = 12
    end
    object DbGCobranca: TDBGrid
      Left = 5
      Top = 106
      Width = 946
      Height = 207
      DataSource = DsCobranca
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGCobrancaDblClick
      OnEnter = DbGCobrancaEnter
      OnExit = DbGCobrancaExit
      OnKeyPress = DbGCobrancaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_emitente'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 273
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Parcelas'
          Title.Alignment = taRightJustify
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_maxima'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_minima'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_parcela'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_recebido'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_saldo'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
    object DbGParcelas: TDBGrid
      Left = 6
      Top = 459
      Width = 412
      Height = 118
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelasDblClick
      OnEnter = DbGCobrancaEnter
      OnExit = DbGCobrancaExit
      OnKeyPress = DbGParcelasKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'dp_receber'
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vencimento'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_parcela'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_recebido'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_saldo'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_atraso'
          Title.Alignment = taRightJustify
          Width = 43
          Visible = True
        end>
    end
    object DbGContato: TDBGrid
      Left = 6
      Top = 330
      Width = 945
      Height = 108
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGContatoDblClick
      OnEnter = DbGCobrancaEnter
      OnExit = DbGCobrancaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_contato'
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_contato'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_novocontato'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_ocorrencia'
          Width = 313
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_usuario'
          Visible = True
        end>
    end
    object DbMmContato: TDBMemo
      Left = 424
      Top = 459
      Width = 527
      Height = 118
      TabStop = False
      DataField = 'mm_observacao'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 48
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 5
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 79
      Top = 48
      Width = 220
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
      TabOrder = 6
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 589
      Top = 48
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 652
      Top = 48
      Width = 220
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
      TabOrder = 10
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 3
      Left = 304
      Top = 48
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 7
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 365
      Top = 48
      Width = 220
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
      TabOrder = 8
    end
    object EdtNr_Pagamento: TCurrencyEdit
      Tag = 3
      Left = 566
      Top = 13
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
    object EdtNr_Parcelas: TCurrencyEdit
      Tag = 3
      Left = 667
      Top = 13
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      Value = 1.0
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_CidadeKeyDown
    end
  end
  object ADODsOcorrencia: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Ocorrencia, Ds_Ocorrencia'#13#10#13#10'from'#13#10'  Contato_Ocorrencia'#13#10#13#10'order by'#13#10'  Ds_Ocorrencia'
    Parameters = <>
    Left = 22
    Top = 552
    object ADODsOcorrenciacd_ocorrencia: TSmallintField
      FieldName = 'cd_ocorrencia'
    end
    object ADODsOcorrenciads_ocorrencia: TStringField
      FieldName = 'ds_ocorrencia'
      Size = 50
    end
  end
  object DsCobranca: TDataSource
    DataSet = ADODsCobranca
    Left = 52
    Top = 552
  end
  object ADODsCobranca: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia,'#13#10'  min( RP.Dt_Vencimento ) as Dt_Maxima,'#13#10'  max( RP.Dt_Vencimento) as Dt_Minima,'#13#10'  sum( RP.Vl_Parcela ) as Vl_Parcela,'#13#10'  sum( RP.Vl_Recebido ) as Vl_Recebido,'#13#10'  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Saldo,'#13#10'  count( distinct Cast( RP.Nr_Receber as Char( 5 ) ) + Cast( RP.Nr_Parcela as Char( 3 ) ) ) as Nr_Parcelas'#13#10#13#10'from'#13#10'  Receber_Parcela RP'#13#10'  '#13#10'inner join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial  = RP.Cd_Filial and'#13#10'  R.Nr_Receber = RP.Nr_Receber and'#13#10'  R.St_Receber <= ''''2''''    -- Aberto/Amortizado'#13#10'  '#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10'  '#13#10'where'#13#10'  RP.Cd_Filial = 1 and'#13#10'  '#13#10'  RP.Dt_Vencimento <= ''''03/13/2006'''#13#10'  and RP.Vl_Parcela > RP.Vl_Recebido'#13#10'group by'#13#10'  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia'#13#10'order by'#13#10'  4'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia,'
      '  min( RP.Dt_Vencimento ) as Dt_Maxima,'
      '  max( RP.Dt_Vencimento) as Dt_Minima,'
      '  sum( RP.Vl_Parcela ) as Vl_Parcela,'
      '  sum( RP.Vl_Recebido ) as Vl_Recebido,'
      '  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Saldo,'
      '  count( distinct Cast( RP.Nr_Receber as Char( 5 ) ) + Cast( RP.Nr_Parcela as Char( 3 ) ) ) as Nr_Parcelas'
      ''
      'from'
      '  Receber_Parcela RP'
      '  '
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RP.Cd_Filial and'
      '  R.Nr_Receber = RP.Nr_Receber and'
      '  R.St_Receber <= ''''2''''    -- Aberto/Amortizado'
      '  '
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = R.Cd_Emitente'
      '  /* Grupo */'
      '  /* Pagamento */'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cidade */'
      '  /* Rota */'
      '  '
      'where'
      '  RP.Cd_Filial = :Cd_Filial and'
      '  '
    )
    SQLOther1.Strings = (
      '  exists'
      '   ('
      '    select'
      '      C.Cd_Emitente'
      ''
      '    from'
      '      Contato C'
      ''
      '    where'
      '      C.Cd_Emitente   = R.Cd_Emitente and'
      '      C.Cd_Ocorrencia = :Cd_Ocorrencia and'
      '      C.Dt_Contato   <= :Dt_Contato'
      '    )'
      '  and not exists'
      '    ('
      '    select'
      '      C.Cd_Emitente'
      ''
      '    from'
      '      Contato C'
      ''
      '    where'
      '      C.Cd_Emitente   = R.Cd_Emitente and'
      '      C.Cd_Ocorrencia = :Cd_Ocorrencia and'
      '      C.Dt_Contato    > :Dt_Contato '
      '    )'
    )
    Left = 82
    Top = 552
    object ADODsCobrancacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsCobrancacd_emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'cd_emitente'
    end
    object ADODsCobrancanm_emitente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 60
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsCobrancadt_maxima: TDateTimeField
      DisplayLabel = 'Maior Atraso'
      DisplayWidth = 12
      FieldName = 'dt_maxima'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCobrancadt_minima: TDateTimeField
      DisplayLabel = 'Menor Atraso'
      DisplayWidth = 13
      FieldName = 'dt_minima'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCobrancavl_parcela: TBCDField
      DisplayLabel = #192' Receber'
      DisplayWidth = 23
      FieldName = 'vl_parcela'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 9
    end
    object ADODsCobrancavl_recebido: TBCDField
      DisplayLabel = 'Recebido'
      DisplayWidth = 18
      FieldName = 'vl_recebido'
      DisplayFormat = '#,##0.00'
      Precision = 14
      Size = 7
    end
    object ADODsCobrancavl_saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'vl_saldo'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 9
    end
    object ADODsCobrancaNr_Parcelas: TIntegerField
      FieldName = 'Nr_Parcelas'
    end
    object ADODsCobrancaNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 111
    Top = 552
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  R.Cd_Filial, R.Nr_Receber, RP.Nr_Parcela, R.Cd_Emitente, '#13#10'  RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido'#13#10#13#10'from'#13#10'  Receber R'#13#10'  '#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10#13#10'on'#13#10'  RP.Cd_Filial   = R.Cd_Filial and'#13#10'  RP.Nr_Receber  = R.Nr_Receber and'#13#10'  RP.Vl_Recebido < RP.Vl_Parcela'#13#10#13#10'where'#13#10'  R.Cd_Filial   = :Cd_Filial and'#13#10'  R.Cd_Emitente = :Cd_Emitente and'#13#10'  R.St_Receber <= ''''2'''#13#10#13#10'order by'#13#10'  RP.Dt_Vencimento'
    DataSource = DsCobranca
    IndexFieldNames = 'cd_filial;cd_emitente'
    MasterFields = 'Cd_Filial;Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = 1
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Value = 1
      end>
    Left = 140
    Top = 552
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelanr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsParcelanr_parcela: TSmallintField
      FieldName = 'nr_parcela'
    end
    object ADODsParcelacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelavl_parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'vl_parcela'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParcelavl_recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'vl_recebido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParcelavl_saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'vl_saldo'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsParcelanr_atraso: TIntegerField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'nr_atraso'
      Calculated = True
    end
    object ADODsParceladp_receber: TStringField
      DisplayLabel = 'Receber'
      FieldKind = fkCalculated
      FieldName = 'dp_receber'
      Size = 9
      Calculated = True
    end
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 168
    Top = 552
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsContatoCalcFields
    CommandText = 'select top 50'#13#10'  C.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Dt_NovoContato, C.Cd_Usuario, '#13#10'  C.Nm_Contato, C.Mm_Observacao, OC.Ds_Ocorrencia'#13#10#13#10'from'#13#10'  Contato C'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia OC'#13#10'on'#13#10'  OC.Cd_Ocorrencia = C.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  C.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  C.Cd_Emitente, C.Nr_Contato desc'
    DataSource = DsCobranca
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 197
    Top = 552
    object ADODsContatocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsContatonr_contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'nr_contato'
    end
    object ADODsContatodt_contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_contato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatodt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatocd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsContatonm_contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsContatods_ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'ds_ocorrencia'
      Size = 50
    end
    object ADODsContatodp_usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'dp_usuario'
      Size = 15
      Calculated = True
    end
    object ADODsContatoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
end
