object FrmCheque_Selecao: TFrmCheque_Selecao
  Left = 280
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Cheques do Border'#244
  ClientHeight = 368
  ClientWidth = 730
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
    Height = 368
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 709
    Height = 368
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 338
      Width = 701
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label10: TLabel
      Left = 5
      Top = 39
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object SbBanco: TSpeedButton
      Left = 427
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Seleciona o Banco'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbBancoClick
    end
    object SbOpen: TSpeedButton
      Left = 663
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Visualizar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Bevel1: TBevel
      Left = 3
      Top = 77
      Width = 701
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 193
      Top = 2
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 341
      Top = 2
      Width = 100
      Height = 13
      Caption = 'Situa'#231#227'o do Cheque:'
    end
    object Label4: TLabel
      Left = 5
      Top = 80
      Width = 45
      Height = 13
      Caption = 'Cheques:'
    end
    object Label5: TLabel
      Left = 5
      Top = 299
      Width = 54
      Height = 13
      Caption = 'ID Cheque:'
      FocusControl = DbEdtId_Cheque
    end
    object Label6: TLabel
      Left = 61
      Top = 299
      Width = 114
      Height = 13
      Caption = 'CNPJ / CPF (Terceiros):'
      FocusControl = DbEdtNr_Documento
    end
    object Label7: TLabel
      Left = 186
      Top = 299
      Width = 234
      Height = 13
      Caption = 'Nome do Cliente (Emissor do Cheque - Terceiros):'
      FocusControl = DbEdtNm_Cliente
    end
    object Label8: TLabel
      Left = 481
      Top = 299
      Width = 45
      Height = 13
      Caption = 'Telefone:'
      FocusControl = DbEdtNr_Telefone
    end
    object Label9: TLabel
      Left = 571
      Top = 299
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      FocusControl = DbEdtDt_Emissao
    end
    object Label11: TLabel
      Left = 641
      Top = 299
      Width = 27
      Height = 13
      Caption = 'Taxa:'
      FocusControl = DbEdtPr_Taxa
    end
    object LblTotal: TLabel
      Left = 536
      Top = 286
      Width = 141
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total: 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 536
      Top = 341
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 622
      Top = 341
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 14
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 16
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 54
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_BancoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 54
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtCd_Banco: TLabeledEdit
      Left = 393
      Top = 54
      Width = 34
      Height = 19
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Banco:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 6
      OnExit = EdtCd_BancoExit
      OnKeyDown = EdtCd_BancoKeyDown
    end
    object EdtSg_Banco: TEdit
      Left = 451
      Top = 54
      Width = 210
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 16
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object CbPeriodo: TComboBox
      Left = 194
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Vencimento/Dep'#243'sito'
        'Emiss'#227'o'
      )
    end
    object CbSituacao: TComboBox
      Left = 342
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Aberto/Devolvido'
        'Aberto'
        'Devolvido'
      )
    end
    object DbGCheque: TDBGrid
      Left = 5
      Top = 96
      Width = 696
      Height = 190
      DataSource = DsSelect
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGChequeDblClick
      OnEnter = DbGChequeEnter
      OnExit = DbGChequeExit
      OnKeyDown = DbGChequeKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sg_banco'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_conta'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_cheque'
          Title.Alignment = taRightJustify
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
          FieldName = 'vl_cheque'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Selected'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DbEdtId_Cheque: TDBEdit
      Left = 5
      Top = 314
      Width = 50
      Height = 19
      TabStop = False
      DataField = 'id_cheque'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DbEdtNr_Documento: TDBEdit
      Left = 61
      Top = 314
      Width = 120
      Height = 19
      TabStop = False
      DataField = 'nr_documento'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DbEdtNm_Cliente: TDBEdit
      Left = 186
      Top = 314
      Width = 290
      Height = 19
      TabStop = False
      DataField = 'nm_cliente'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DbEdtNr_Telefone: TDBEdit
      Left = 481
      Top = 314
      Width = 85
      Height = 19
      TabStop = False
      DataField = 'nr_telefone'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DbEdtDt_Emissao: TDBEdit
      Left = 571
      Top = 314
      Width = 65
      Height = 19
      TabStop = False
      DataField = 'dt_emissao'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object DbEdtPr_Taxa: TDBEdit
      Left = 641
      Top = 314
      Width = 40
      Height = 19
      TabStop = False
      DataField = 'pr_taxa'
      DataSource = DsSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
  end
  object ADODsSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsSelectCalcFields
    CommandText = 'select'#13#10'  C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco, C.Cd_Agencia,'#13#10'  C.Nr_Conta, C.Nr_Cheque, C.Vl_Cheque, C.Dt_Emissao, C.Dt_Vencimento,'#13#10'  B.Sg_Banco, TC.Pr_Taxa, C.Nr_Documento, C.Nm_Cliente, C.Nr_Telefone,'#13#10'  C.Fl_Cheque'#13#10#13#10'from'#13#10'  Cheque C'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = C.Cd_Banco'#13#10#13#10'left join'#13#10'  #TmpCheque TC'#13#10#13#10'on'#13#10'  TC.Cd_Filial = C.Cd_Filial and'#13#10'  TC.Id_Cheque = C.Id_Cheque'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco, C.Cd_Agencia,'
      '  C.Nr_Conta, C.Nr_Cheque, C.Vl_Cheque, C.Dt_Emissao, C.Dt_Vencimento,'
      '  B.Sg_Banco, TC.Pr_Taxa, C.Nr_Documento, C.Nm_Cliente, C.Nr_Telefone,'
      '  C.Fl_Cheque, TC.Fl_Select'
      ''
      'from'
      '  Cheque C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      ''
      'inner join'
      '  Banco B'
      'on'
      '  B.Cd_Banco = C.Cd_Banco'
      ''
      'inner join'
      '  #TmpCheque TC'
      ''
      'on'
      '  TC.Cd_Filial = C.Cd_Filial and'
      '  TC.Id_Cheque = C.Id_Cheque'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial'
      ''
    )
    Left = 59
    Top = 270
    object ADODsSelectid_cheque: TIntegerField
      DisplayLabel = 'ID Cheque'
      FieldName = 'id_cheque'
    end
    object ADODsSelectcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsSelectnm_emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsSelectcd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsSelectcd_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsSelectnr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsSelectnr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsSelectvl_cheque: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_cheque'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsSelectdt_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsSelectdt_vencimento: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsSelectsg_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'sg_banco'
    end
    object ADODsSelectpr_taxa: TBCDField
      FieldName = 'pr_taxa'
      DisplayFormat = '#,##0.00'
    end
    object ADODsSelectDp_Selected: TStringField
      DisplayLabel = 'Selecionado'
      FieldKind = fkCalculated
      FieldName = 'Dp_Selected'
      Size = 3
      Calculated = True
    end
    object ADODsSelectnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsSelectnm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsSelectnr_telefone: TStringField
      FieldName = 'nr_telefone'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsSelectfl_cheque: TStringField
      FieldName = 'fl_cheque'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Size = 9
      Calculated = True
    end
    object ADODsSelectfl_select: TStringField
      FieldName = 'fl_select'
      Size = 1
    end
  end
  object DsSelect: TDataSource
    DataSet = ADODsSelect
    Left = 29
    Top = 270
  end
  object ADOCmdSelect: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '/* Cria a tabela temporaria */'
      'create table #tmpcheque'
      '('
      '  cd_filial smallint,'
      '  id_cheque int,'
      '  pr_taxa numeric( 7, 2 ),'
      '  fl_select char( 1 )'
      ')'
    )
    SQLOther1.Strings = (
      '/* Apaga registros caso tabela exista */'
      'truncate table'
      '  #tmpcheque'
    )
    SQLOther2.Strings = (
      '/* Inclui na tmpcheque */'
      'insert into #tmpcheque( Cd_Filial, Id_Cheque, Pr_Taxa, Fl_Select )'
      'select'
      '  C.Cd_Filial, C.Id_Cheque, :Pr_Taxa, ''''1'''
      ''
      'from'
      '  Cheque C'
      ''
      'where'
      '  C.Cd_Filial  = :Cd_Filial'
    )
    SQLOther3.Strings = (
      '  and not Exists('
      '  select'
      '    CF.Id_Cheque'
      ''
      '  from'
      '    #TmpCheque CF'
      ''
      '  where'
      '    CF.Cd_Filial = C.Cd_Filial and'
      '    CF.Id_Cheque = C.Id_Cheque )'
    )
    SQLOther4.Strings = (
      '/* Muda a situa'#231#227'o da sele'#231#227'o */'
      'update'
      '  #TmpCheque'
      ''
      'set'
      '  Fl_Select = :Fl_Select'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Id_Cheque = :Id_Cheque'
    )
    SQLOther5.Strings = (
      '/* Muda a situa'#231#227'o do Cheque */'
      'update'
      '  Cheque'
      ''
      'set'
      '  Fl_Cheque = ''''3'''
      ''
      'from'
      '  #TmpCheque'
      ''
      'where'
      '  #TmpCheque.Cd_Filial = Cheque.Cd_Filial and'
      '  #TmpCheque.Id_Cheque = Cheque.Id_Cheque and'
      '  #TmpCheque.Fl_Select = ''''1'''';'
      ''
      '/* Incluir Cheque_Deposito */'
      'insert into Cheque_Deposito( Cd_Filial, Nr_Bordero, Id_Cheque, Pr_Taxa, Fl_Deposito )'
      'select'
      '  Cd_Filial, :Nr_Bordero, Id_Cheque, Pr_Taxa, ''''1'''
      ''
      'from'
      '  #TmpCheque'
      ''
      'where'
      '  Fl_Select = ''''1'''';'
      ''
      '/* Atualiza o border'#244' */'
      'update'
      '  Cheque_Bordero'
      ''
      'set'
      '  Fl_Bordero = ''''2'''
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero = :Nr_Bordero;'
    )
    SQLOther6.Strings = (
      '/* Incluir Cheque_Deposito */'
      'insert into Cheque_Deposito( Cd_Filial, Nr_Bordero, Id_Cheque, Pr_Taxa )'
      'select'
      '  Cd_Filial, :Nr_Bordero, Id_Cheque, Pr_Taxa'
      ''
      'from'
      '  #TmpCheque'
      ''
      'where'
      '  Fl_Select = ''''1'''
    )
    Left = 90
    Top = 270
  end
end
