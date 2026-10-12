object FrmReceber_Remessa: TFrmReceber_Remessa
  Left = 380
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Remessa de T'#237'tulos ao Banco'
  ClientHeight = 440
  ClientWidth = 834
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
    Height = 440
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 813
    Height = 440
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 410
      Width = 807
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 5
      Top = 3
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 48
      Top = 18
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
    object Label1: TLabel
      Left = 385
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object SbSave: TSpeedButton
      Left = 282
      Top = 49
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSaveClick
    end
    object Label4: TLabel
      Left = 310
      Top = 38
      Width = 62
      Height = 13
      Caption = 'Remessa N'#186':'
    end
    object SbOpen: TSpeedButton
      Left = 711
      Top = 65
      Width = 94
      Height = 25
      Hint = 'Visualizar'
      Caption = 'Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 93
      Width = 807
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 98
      Width = 148
      Height = 13
      Caption = 'Parcelas de Duplicata a enviar:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 641
      Top = 413
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      Enabled = False
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 726
      Top = 413
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Portador: TCurrencyEdit
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
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 72
      Top = 18
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
      TabOrder = 1
    end
    object EdtDt_Start: TDateEdit
      Left = 385
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtDt_End: TDateEdit
      Left = 480
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object EdtNm_File: TEdit
      Left = 5
      Top = 51
      Width = 274
      Height = 19
      TabOrder = 4
      Text = 'Remessa.TXT'
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNr_Remessa: TRxSpinEdit
      Left = 310
      Top = 51
      Width = 56
      Height = 19
      TabOrder = 5
    end
    object CkBEnviados: TCheckBox
      Left = 5
      Top = 73
      Width = 217
      Height = 17
      Caption = 'Ignorar marca'#231#227'o de registros j'#225' Enviados'
      TabOrder = 10
    end
    object PgBrData: TProgressBar
      Left = 15
      Top = 415
      Width = 411
      Height = 20
      Smooth = True
      TabOrder = 6
    end
    object DbGRemessa: TDBGrid
      Left = 5
      Top = 112
      Width = 800
      Height = 295
      DataSource = DsRemessa
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopMenView
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGRemessaDblClick
      OnEnter = DbGRemessaEnter
      OnExit = DbGRemessaExit
      OnKeyPress = DbGRemessaKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Receber'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 355
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Envio'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object LblRegistros: TStaticText
      Left = 432
      Top = 418
      Width = 72
      Height = 17
      Caption = 'Registros: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object ADODsPortador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  A.Cd_Portador, A.Nm_Portador, A.Cd_Banco, A.Cd_Agencia, A.Nr_Conta,'#13#10'  A.Pr_TaxaJuros, A.Cd_Carteira, A.Nr_Remessa, A.Nr_Prazo_Protesto,'#13#10'  A.Tp_Cobranca, A.Ds_Livre, A.Pr_Multa, A.Ds_Cobranca, A.Tp_Modelo,'#13#10'  A.Ds_Carteira'#13#10#13#10'from'#13#10'  Portador A'#13#10#13#10'where'#13#10'  A.Cd_Portador = :Cd_Portador'
    Parameters = <
      item
        Name = 'Cd_Portador'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 29
    Top = 360
    object ADODsPortadorCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsPortadorNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsPortadorCd_Banco: TStringField
      FieldName = 'Cd_Banco'
      FixedChar = True
      Size = 4
    end
    object ADODsPortadorCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsPortadorNr_Conta: TStringField
      FieldName = 'Nr_Conta'
      Size = 10
    end
    object ADODsPortadorPr_TaxaJuros: TBCDField
      FieldName = 'Pr_TaxaJuros'
      Precision = 18
      Size = 2
    end
    object ADODsPortadorCd_Carteira: TSmallintField
      FieldName = 'Cd_Carteira'
    end
    object ADODsPortadorNr_Remessa: TSmallintField
      FieldName = 'Nr_Remessa'
    end
    object ADODsPortadorNr_Prazo_Protesto: TSmallintField
      FieldName = 'Nr_Prazo_Protesto'
    end
    object ADODsPortadorTp_Cobranca: TStringField
      FieldName = 'Tp_Cobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsPortadorDs_Livre: TStringField
      FieldName = 'Ds_Livre'
      Size = 30
    end
    object ADODsPortadorPr_Multa: TBCDField
      FieldName = 'Pr_Multa'
      Precision = 7
      Size = 2
    end
    object ADODsPortadorDs_Cobranca: TStringField
      FieldName = 'Ds_Cobranca'
      Size = 30
    end
    object ADODsPortadorTp_Modelo: TStringField
      FieldName = 'Tp_Modelo'
      FixedChar = True
      Size = 1
    end
    object ADODsPortadorDs_Carteira: TStringField
      FieldName = 'Ds_Carteira'
    end
  end
  object ADOCmdReceber: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLUpdate.Strings = (
      '--------------- Atualiza o Flag de Envio'
      'update'
      '  #RemessaTMP'
      ''
      'set'
      '  Fl_Envio = :Fl_Envio'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther0.Strings = (
      '----- Cria a tabel temporaria'
      'create table #RemessaTMP'
      '  ('
      '  cd_filial smallint,'
      '  nr_receber int,'
      '  nr_parcela smallint,'
      '  dt_vencimento SmallDateTime,'
      '  vl_parcela numeric( 12, 2 ),'
      '  cd_envio char( 2 ),'
      '  vl_abatimento numeric( 12, 2 ),'
      '  nr_doctobanco varchar( 25 ),'
      '  nm_emitente varchar( 50 ),'
      '  Nm_Fantasia VarChar( 30 ),'
      '  nr_documento varchar( 14 ),'
      '  ds_endereco varchar( 50 ),'
      '  Ds_Numero VarChar( 10 ),'
      '  nm_bairro varchar( 30 ),'
      '  ds_complemento varchar( 30 ),'
      '  nr_cep char( 8 ),'
      '  nm_cidade varchar( 30 ),'
      '  sg_estado char( 2 ),'
      '  dt_emissao SmallDateTime,'
      '  fl_envio char( 1 )'
      '  )'
    )
    SQLOther1.Strings = (
      '--------------- Atualiza a remessa no portador'
      'update'
      '  Portador'
      ''
      'set'
      '  Nr_Remessa = :Nr_Remessa'
      ''
      'where'
      '  Cd_Portador = :Cd_Portador'
    )
    SQLOther2.Strings = (
      '--------------- Atualiza a data de gera'#231#227'o da parcela'
      'update'
      '  Receber_Parcela'
      ''
      'set'
      '  Dt_Geracao = :Dt_Geracao'
      ''
      'where'
      '  exists('
      '    select'
      '      R.Cd_Filial'
      ''
      '    from'
      '      #RemessaTMP R'
      ''
      '    where'
      '      R.Cd_Filial  = Receber_Parcela.Cd_Filial and'
      '      R.Nr_Receber = Receber_Parcela.Nr_Receber and'
      '      R.Nr_Parcela = Receber_Parcela.Nr_Parcela and'
      '      R.Fl_Envio   = ''''1'''
      '  )'
    )
    SQLOther3.Strings = (
      'update'
      '  Receber_Parcela'
      ''
      'set'
      '  Dt_Geracao = :Dt_Geracao'
      ''
      'from'
      '  Receber A'
      ''
      'inner join'
      '  Receber_Parcela B'
      'on'
      '  B.Cd_Filial     = A.Cd_Filial and'
      '  B.Nr_Receber    = A.Nr_Receber and'
      '  B.Cd_Portador   = :Cd_Portador and'
      '  B.Dt_Vencimento > A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''' and'
      '  B.Dt_EnvioBanco >= :Dt_Start and'
      '  B.Dt_EnvioBanco <  :Dt_End'
      ''
      'inner join'
      '  Emitente C'
      'on'
      '  C.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente and'
      '  D.Nr_Endereco = C.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade E'
      'on'
      '  E.Cd_Cidade = D.Cd_Cidade'
      ''
      'where'
      '  A.St_Receber <= ''''2'''
    )
    SQLOther5.Strings = (
      'insert into #RemessaTMP'
      'select'
      '  A.Cd_Filial, A.Nr_Receber, B.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  B.Cd_Envio,'
      '  ('
      '  select'
      '    sum( Vl_Lancamento )'
      ''
      '  from'
      '    Receber_Historico RH'
      ''
      '  where'
      '    RH.Cd_Filial     = B.Cd_Filial and'
      '    RH.Nr_Receber    = B.Nr_Receber and'
      '    RH.Nr_Parcela    = B.Nr_Parcela and'
      '    RH.Dt_Lancamento = B.Dt_EnvioBanco'
      '  ),'
      '  B.Nr_DoctoBanco, C.Nm_Emitente, C.Nm_Fantasia, C.Nr_Documento, D.Ds_Endereco, D.Ds_Numero,'
      '  D.Nm_Bairro, D.Ds_Complemento, D.Nr_CEP, E.Nm_Cidade, E.Sg_Estado,'
      '  A.Dt_Emissao, ''''1'''
      ''
      'from'
      '  Receber_Parcela B'
      ''
      'inner join'
      '  Receber A'
      'on'
      '  A.Cd_Filial   = B.Cd_Filial and'
      '  A.Nr_Receber  = B.Nr_Receber and'
      '  A.St_Receber <= ''''2'''
      ''
      'inner join'
      '  Emitente C'
      'on'
      '  C.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente and'
      '  D.Nr_Endereco = C.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade E'
      'on'
      '  E.Cd_Cidade = D.Cd_Cidade'
      ''
      'where'
      '  B.Cd_Portador   = :Cd_Portador and'
      '  B.Dt_Vencimento >= A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''' and'
      '  B.Dt_EnvioBanco >= :Dt_Start and'
      '  B.Dt_EnvioBanco <  :Dt_End and'
      '  B.Dt_Geracao is null'
    )
    SQLOther6.Strings = (
      'insert into #RemessaTMP'
      'select'
      '  A.Cd_Filial, A.Nr_Receber, B.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  B.Cd_Envio,'
      '  ('
      '  select'
      '    Vl_Lancamento'
      ''
      '  from'
      '    Receber_Historico RH'
      ''
      '  where'
      '    RH.Cd_Filial     = B.Cd_Filial and'
      '    RH.Nr_Receber    = B.Nr_Receber and'
      '    RH.Nr_Parcela    = B.Nr_Parcela and'
      '    RH.Dt_Lancamento = B.Dt_EnvioBanco'
      '  ),'
      '  B.Nr_DoctoBanco, C.Nm_Emitente, C.Nm_Fantasia, C.Nr_Documento, D.Ds_Endereco, D.Ds_Numero,'
      '  D.Nm_Bairro, D.Ds_Complemento, D.Nr_CEP, E.Nm_Cidade, E.Sg_Estado,'
      '  A.Dt_Emissao, ''''1'''
      ''
      'from'
      '  Receber_Parcela B'
      ''
      'inner join'
      '  Receber A'
      'on'
      '  A.Cd_Filial   = B.Cd_Filial and'
      '  A.Nr_Receber  = B.Nr_Receber and'
      '  A.St_Receber <= ''''2'''
      ''
      'inner join'
      '  Emitente C'
      'on'
      '  C.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = A.Cd_Emitente and'
      '  D.Nr_Endereco = C.Nr_EndCobranca'
      ''
      'inner join'
      '  Cidade E'
      'on'
      '  E.Cd_Cidade = D.Cd_Cidade'
      ''
      'where'
      '  B.Cd_Portador    = :Cd_Portador and'
      '  B.Dt_Vencimento >= A.Dt_Emissao and'
      '  B.Nr_DoctoBanco <> '''''' and'
      '  B.Dt_EnvioBanco >= :Dt_Start and'
      '  B.Dt_EnvioBanco <  :Dt_End'
    )
    SQLOther7.Strings = (
      'delete from'
      '  #RemessaTMP'
    )
    Left = 61
    Top = 360
  end
  object ADODsRemessa: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsRemessaCalcFields
    CommandText = 'create table #RemessaTMP'#13#10'  ('#13#10'  cd_filial smallint,'#13#10'  nr_receber int,'#13#10'  nr_parcela smallint,'#13#10'  dt_vencimento SmallDateTime,'#13#10'  vl_parcela numeric( 12, 2 ),'#13#10'  cd_envio char( 2 ),'#13#10'  vl_abatimento numeric( 12, 2 ),'#13#10'  nr_doctobanco varchar( 25 ),'#13#10'  nm_emitente varchar( 50 ),'#13#10'  Nm_Fantasia VarChar( 30 ),'#13#10'  nr_documento varchar( 14 ),'#13#10'  ds_endereco varchar( 50 ),'#13#10'  Ds_Numero VarChar( 10 ),'#13#10'  nm_bairro varchar( 30 ),'#13#10'  ds_complemento varchar( 30 ),'#13#10'  nr_cep char( 8 ),'#13#10'  nm_cidade varchar( 30 ),'#13#10'  sg_estado char( 2 ),'#13#10'  dt_emissao SmallDateTime,'#13#10'  fl_envio char( 1 )'#13#10'  )'#13#10#13#10'-- Visualiza todos os registros'#13#10'select'#13#10'  Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Cd_Envio,'#13#10'  Vl_Abatimento, Nr_DoctoBanco, Nm_Emitente, Nm_Fantasia, Nr_Documento, Ds_Endereco,'#13#10'  Ds_Numero, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade, Sg_Estado,'#13#10'  Dt_Emissao, Fl_Envio'#13#10#13#10'from'#13#10'  #RemessaTMP'#13#10#13#10'order by'#13#10'  Nr_Receber, Nr_Parcela'
    Parameters = <>
    SQLOther1.Strings = (
      '-- Visualiza todos os registros'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Cd_Envio,'
      '  Vl_Abatimento, Nr_DoctoBanco, Nm_Emitente, Nm_Fantasia, Nr_Documento, Ds_Endereco,'
      '  Ds_Numero, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade, Sg_Estado,'
      '  Dt_Emissao, Fl_Envio'
      ''
      'from'
      '  #RemessaTMP'
      ''
      'order by'
      '  Nr_Receber, Nr_Parcela'
    )
    SQLOther2.Strings = (
      '-- Visualiza somente os registros selecionados'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Cd_Envio,'
      '  Vl_Abatimento, Nr_DoctoBanco, Nm_Emitente, Nm_Fantasia, Nr_Documento, Ds_Endereco,'
      '  Ds_Numero, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade, Sg_Estado,'
      '  Dt_Emissao, Fl_Envio'
      ''
      'from'
      '  #RemessaTMP'
      ''
      'where'
      '  Fl_Envio = ''''1'''
      ''
      'order by'
      '  Nr_Receber, Nr_Parcela'
    )
    SQLOther3.Strings = (
      '-- Visualiza somente os registros N'#195'O selecionados'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Cd_Envio,'
      '  Vl_Abatimento, Nr_DoctoBanco, Nm_Emitente, Nm_Fantasia, Nr_Documento, Ds_Endereco,'
      '  Ds_Numero, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade, Sg_Estado,'
      '  Dt_Emissao, Fl_Envio'
      ''
      'from'
      '  #RemessaTMP'
      ''
      'where'
      '  Fl_Envio = ''''2'''
      ''
      'order by'
      '  Nr_Receber, Nr_Parcela'
    )
    Left = 119
    Top = 360
    object ADODsRemessaDp_Receber: TStringField
      DisplayLabel = 'Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 10
      Calculated = True
    end
    object ADODsRemessaNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsRemessaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsRemessaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsRemessaVl_Parcela: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsRemessaCd_Envio: TStringField
      FieldName = 'Cd_Envio'
      FixedChar = True
      Size = 2
    end
    object ADODsRemessaVl_Abatimento: TBCDField
      FieldName = 'Vl_Abatimento'
      Precision = 10
    end
    object ADODsRemessaNr_DoctoBanco: TStringField
      FieldName = 'Nr_DoctoBanco'
      Size = 25
    end
    object ADODsRemessaNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsRemessaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsRemessaDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsRemessaNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsRemessaDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsRemessaNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsRemessaNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 30
    end
    object ADODsRemessaSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsRemessaDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsRemessaFl_Envio: TStringField
      FieldName = 'Fl_Envio'
      FixedChar = True
      Size = 1
    end
    object ADODsRemessaDp_Envio: TStringField
      DisplayLabel = 'Enviar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Envio'
      ReadOnly = True
      Size = 3
      Calculated = True
    end
    object ADODsRemessaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsRemessaId_Interno: TStringField
      FieldKind = fkCalculated
      FieldName = 'Id_Interno'
      Size = 10
      Calculated = True
    end
    object ADODsRemessaVl_Mora: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Mora'
      Calculated = True
    end
    object ADODsRemessaDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsRemessaNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
  end
  object DsRemessa: TDataSource
    DataSet = ADODsRemessa
    Left = 91
    Top = 360
  end
  object PopMenView: TPopupMenu
    Left = 405
    Top = 310
    object ItemMenAll: TMenuItem
      Caption = 'Todos os Registros'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = ItemMenAllClick
    end
    object ItemMenSelected: TMenuItem
      Tag = 1
      Caption = 'Somente selecionados'
      GroupIndex = 1
      RadioItem = True
      OnClick = ItemMenAllClick
    end
    object ItemMenUnSelected: TMenuItem
      Tag = 2
      Caption = 'Somente N'#195'O selecionados'
      GroupIndex = 1
      RadioItem = True
      OnClick = ItemMenAllClick
    end
  end
end
