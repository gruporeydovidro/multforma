object FrmPagar_Baixa: TFrmPagar_Baixa
  Left = 316
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa de Contas '#224' Pagar'
  ClientHeight = 511
  ClientWidth = 878
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
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
    Height = 511
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 857
    Height = 511
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 480
      Width = 848
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 527
      Top = 2
      Width = 31
      Height = 13
      Caption = 'Pagar:'
    end
    object Label12: TLabel
      Left = 5
      Top = 2
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label2: TLabel
      Left = 5
      Top = 39
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 192
      Top = 53
      Width = 85
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label14: TLabel
      Left = 5
      Top = 81
      Width = 154
      Height = 13
      Caption = 'Documento de Baixa / Hist'#243'rico:'
    end
    object Label5: TLabel
      Left = 249
      Top = 82
      Width = 55
      Height = 13
      Caption = 'Movimento:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 120
      Width = 848
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 123
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Bevel1: TBevel
      Left = 3
      Top = 438
      Width = 848
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 5
      Top = 441
      Width = 57
      Height = 13
      Caption = 'Pagamento:'
    end
    object Label6: TLabel
      Left = 90
      Top = 441
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label7: TLabel
      Left = 175
      Top = 441
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label8: TLabel
      Left = 260
      Top = 441
      Width = 75
      Height = 13
      Caption = 'Outros Cr'#233'ditos:'
    end
    object Label9: TLabel
      Left = 345
      Top = 441
      Width = 56
      Height = 13
      Caption = 'Abatimento:'
    end
    object Label10: TLabel
      Left = 430
      Top = 441
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label11: TLabel
      Left = 515
      Top = 441
      Width = 73
      Height = 13
      Caption = 'Outros D'#233'bitos:'
    end
    object SbPagar: TSpeedButton
      Left = 577
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Conta '#224' Pagar'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPagarClick
    end
    object BvlSeparator_2: TBevel
      Left = 3
      Top = 77
      Width = 848
      Height = 5
      Shape = bsTopLine
    end
    object Label19: TLabel
      Left = 345
      Top = 81
      Width = 291
      Height = 13
      Caption = 'Hist'#243'rico (Informe o hist'#243'rico para gerar lan'#231'amento no caixa):'
    end
    object SbHistorico: TSpeedButton
      Tag = 1
      Left = 385
      Top = 96
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label13: TLabel
      Left = 472
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Fatura:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 684
      Top = 484
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 18
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 770
      Top = 484
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 19
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Pagar: TCurrencyEdit
      Tag = 1
      Left = 527
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = EdtNr_PagarKeyDown
    end
    object EdtCd_Emitente: TCurrencyEdit
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
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtNr_PagarKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 17
      Width = 390
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
      Left = 5
      Top = 53
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 53
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
    end
    object EdtNr_DoctoBaixa: TEdit
      Left = 5
      Top = 96
      Width = 240
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 6
    end
    object EdtDt_Movto: TDateEdit
      Left = 249
      Top = 96
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object DbGParcelas: TDBGrid
      Left = 5
      Top = 138
      Width = 844
      Height = 221
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelasDblClick
      OnEnter = DbGParcelasEnter
      OnExit = DbGParcelasExit
      OnKeyDown = DbGParcelasKeyDown
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Pagar'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 413
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Dias'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Pago'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Saldo'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end>
    end
    object EdtVl_Pagamento: TCurrencyEdit
      Left = 5
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 11
    end
    object EdtVl_Juros: TCurrencyEdit
      Left = 90
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 12
    end
    object EdtVl_Multa: TCurrencyEdit
      Left = 175
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 13
    end
    object EdtVl_Creditos: TCurrencyEdit
      Left = 260
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 14
    end
    object EdtVl_Abatimento: TCurrencyEdit
      Left = 345
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 15
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 430
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 16
    end
    object EdtVl_Debitos: TCurrencyEdit
      Left = 515
      Top = 457
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 17
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 3
      Left = 345
      Top = 96
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtNr_PagarKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 408
      Top = 96
      Width = 390
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
      TabOrder = 9
    end
    object EdtNr_Fatura: TCurrencyEdit
      Tag = 1
      Left = 472
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object PnlBancario: TPanel
      Left = 1
      Top = 360
      Width = 846
      Height = 75
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 20
      object Label16: TLabel
        Left = 4
        Top = 2
        Width = 167
        Height = 13
        Caption = 'Conta Corrente (Controle Banc'#225'rio):'
      end
      object SbConta: TSpeedButton
        Tag = 1
        Left = 44
        Top = 17
        Width = 22
        Height = 19
        Hint = 'Consulta de Conta'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbContaClick
      end
      object Label17: TLabel
        Left = 429
        Top = 1
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object SbHistConta: TSpeedButton
        Tag = 2
        Left = 44
        Top = 52
        Width = 23
        Height = 19
        Hint = 'Consulta de Hist'#243'rio'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbHistoricoClick
      end
      object Label20: TLabel
        Left = 4
        Top = 36
        Width = 44
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Label22: TLabel
        Left = 689
        Top = 37
        Width = 65
        Height = 13
        Caption = 'Compensado:'
      end
      object EdtDs_Conta: TEdit
        Left = 67
        Top = 17
        Width = 359
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
        TabOrder = 1
      end
      object EdtId_Conta: TCurrencyEdit
        Tag = 5
        Left = 4
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 0
        OnExit = EdtId_ContaExit
        OnKeyDown = EdtNr_PagarKeyDown
      end
      object CbTp_Lancamento: TComboBox
        Left = 429
        Top = 16
        Width = 170
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          '4 - Saque'
          '5 - Transfer'#234'ncia (Sa'#237'da)'
          '6 - Cheque'
          '7 - Pagamento de Cobran'#231'a'
          '8 - Outras Sa'#237'das'
          '9 - Tarifas'
        )
      end
      object EdtCd_HistConta: TCurrencyEdit
        Tag = 4
        Left = 4
        Top = 52
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 3
        OnExit = EdtCd_HistoricoExit
        OnKeyDown = EdtNr_PagarKeyDown
      end
      object EdtNm_HistConta: TEdit
        Left = 68
        Top = 52
        Width = 356
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
        TabOrder = 4
      end
      object EdtDs_Lancamento: TLabeledEdit
        Left = 427
        Top = 52
        Width = 257
        Height = 19
        AutoSelect = False
        EditLabel.Width = 120
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o complementar:'
        LabelSpacing = 2
        MaxLength = 50
        TabOrder = 5
      end
      object CbCompensado: TComboBox
        Left = 689
        Top = 52
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
      object CkBUnico: TCheckBox
        Left = 738
        Top = 1
        Width = 112
        Height = 17
        Caption = 'Lan'#231'amento '#250'nico'
        Checked = True
        Ctl3D = False
        ParentCtl3D = False
        State = cbChecked
        TabOrder = 7
      end
    end
    object CkBBancario: TCheckBox
      Left = 742
      Top = 121
      Width = 105
      Height = 17
      Caption = 'Controle Banc'#225'rio'
      TabOrder = 21
      OnClick = CkBBancarioClick
    end
  end
  object ADODsParcela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsParcelaBeforeScroll
    CommandText = 'select'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,'#13#10'  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + C.Nm_Emitente as Dp_Emitente,'#13#10'  A.Vl_Parcela - A.Vl_Pago as Vl_Saldo, B.Cd_Grupo, B.Cd_SubGrupo,'#13#10'  Cast( A.Nr_Pagar as VarChar( 5 ) ) + ''''/'''' +'#13#10'    dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'#13#10'  DateDiff( Day, A.Dt_Vencimento, GetDate() ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora'#13#10#13#10'from'#13#10'  Pagar_Parcela A'#13#10#13#10'inner join'#13#10'  Pagar B'#13#10'on'#13#10'  B.Nr_Pagar = A.Nr_Pagar and'#13#10'  B.St_Pagar <= ''''2'''#13#10#13#10'inner join'#13#10'  Emitente C'#13#10'on'#13#10'  C.Cd_Emitente = B.Cd_Emitente'
    Parameters = <>
    SQLOther1.Strings = (
      'select'
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + C.Nm_Emitente as Dp_Emitente,'
      ''
      '  A.Vl_Parcela - A.Vl_Pago - Coalesce('
      '          ('
      '          select'
      '            sum( PH.Vl_Lancamento )'
      ''
      '          from'
      '            Pagar_Historico PH'
      ''
      '          where'
      '            PH.Cd_Filial      = A.Cd_Filial and'
      '            PH.Nr_Pagar       = A.Nr_Pagar and'
      '            PH.Nr_Parcela     = A.Nr_Parcela and'
      '            PH.Tp_Lancamento >= ''''5'''' and'
      '            PH.Tp_Lancamento <= ''''7'''
      '          ), 0.0 ) as Vl_Saldo,'
      ''
      '  B.Cd_Grupo, B.Cd_SubGrupo,'
      '  Cast( A.Nr_Pagar as VarChar( 5 ) ) + ''''/'''' +'
      '    dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'
      '  DateDiff( Day, A.Dt_Vencimento, @Dt_Now ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora'
      ''
      'from'
      '  Pagar_Parcela A'
      ''
      'inner join'
      '  Pagar B'
      'on'
      '  B.Cd_Filial = A.Cd_Filial and'
      '  B.Nr_Pagar  = A.Nr_Pagar and'
    )
    SQLOther2.Strings = (
      '  B.St_Pagar <= ''''2'''
      ''
      'inner join'
      '  Emitente C'
      'on'
      '  C.Cd_Emitente = B.Cd_Emitente'
      ''
      '/* Join Entrada */'
      ''
      'where'
      '  A.Cd_Filial = :Cd_Filial and'
    )
    Left = 751
    Top = 22
    object ADODsParcelaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaDp_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 58
    end
    object ADODsParcelaVl_Saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'Vl_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaNr_Dias: TIntegerField
      DisplayLabel = 'Atraso'
      FieldName = 'Nr_Dias'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object ADODsParcelaNr_Pagar: TIntegerField
      DisplayLabel = 'N'#186' Pagar'
      FieldName = 'Nr_Pagar'
      DisplayFormat = '#,##0'
    end
    object ADODsParcelaVl_Pago: TBCDField
      DisplayLabel = 'Pago'
      FieldName = 'Vl_Pago'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaDp_Pagar: TStringField
      DisplayLabel = 'Pagar'
      FieldName = 'Dp_Pagar'
      ReadOnly = True
      Size = 11
    end
    object ADODsParcelacd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsParcelacd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsParcelaPr_Mora: TBCDField
      FieldName = 'Pr_Mora'
      Precision = 7
      Size = 2
    end
    object ADODsParcelaVl_Mora: TBCDField
      FieldName = 'Vl_Mora'
      Precision = 12
      Size = 2
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 721
    Top = 22
  end
  object ADOCmdInsert: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Nr_DoctoBaixa, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Pagar, :Nr_Parcela, :Nr_Lancamento, :Tp_Lancamento,'
      '   :Dt_Lancamento, :Vl_Lancamento, :Nr_DoctoBaixa, :Cd_Usuario )'
    )
    SQLOther1.Strings = (
      '-- Insere lan'#231'amento no caixa'
      'insert into Caixa( Cd_Filial, Nr_Lancamento, Dt_Lancamento,'
      '  Tp_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Historico, Nr_Documento,'
      '  Nr_Pagar, Nr_Pagar_Par, Nr_Pagar_Lancto, Cd_Grupo, Cd_SubGrupo, Cd_Usuario )'
      ''
      'values( :Cd_Filial, :Nr_Lancamento, :Dt_Lancamento,'
      '  ''''2'''', :Vl_Lancamento, :Ds_Lancamento, :Cd_Historico, :Nr_Documento,'
      '  :Nr_Pagar, :Nr_Pagar_Par, :Nr_Pagar_Lancto, :Cd_Grupo, :Cd_SubGrupo,'
      '  :Cd_Usuario )'
    )
    SQLOther3.Strings = (
      'declare'
      '  @Id_Conta SmallInt,'
      '  @Vl_Saldo Numeric( 12, 3 ),'
      '  @Vl_Bloqueado Numeric( 12, 3 )'
      ''
      'select'
      '  @Id_Conta = :Id_Conta'
      ''
      '-------------------- Inclus'#227'o de CCorrente'
      'insert into CCorrente_Lancto( Id_Conta, Nr_Lancamento, Tp_Lancamento,'
      '   Dt_Lancamento, Vl_Lancamento, Cd_Historico, Ds_Lancamento, Nr_Documento,'
      '   Fl_Bloqueado, Fl_Compensado )'
      ''
      'values( @Id_Conta, :Nr_Lancamento, :Tp_Lancamento, :Dt_Lancamento,'
      '   :Vl_Lancamento, :Cd_Historico, :Ds_Lancamento, :Nr_Documento,'
      '   :Fl_Bloqueado, :Fl_Compensado )'
      ''
      '-------------------- Recalcula os saldos'
      'select'
      '  @Vl_Saldo = sum('
      '    case'
      '      when Tp_Lancamento <= ''''3'''' then Vl_Lancamento'
      '      else -1 * Vl_Lancamento'
      '    end ),'
      ''
      '  @Vl_Bloqueado = sum('
      '    case'
      '      when Fl_Bloqueado = ''''1'''' then Vl_Lancamento'
      '      else 0'
      '    end )'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = @Id_Conta and'
      '  Fl_Compensado = ''''1'''
      ''
      '-------------------- Atualiza os Saldos'
      'update'
      '  CCorrente'
      ''
      'set'
      '  Vl_Saldo     = Coalesce( @Vl_Saldo, 0.0 ),'
      '  Vl_Bloqueado = Coalesce( @Vl_Bloqueado, 0.0 )'
      ''
      'where'
      '  Id_Conta = @Id_Conta'
    )
    Left = 822
    Top = 24
  end
  object ADODsLancto: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Pagar_Historico'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Pagar   = :Nr_Pagar and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther1.Strings = (
      '-- Proximo lan'#231'amento no caixa'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial '
    )
    SQLOther2.Strings = (
      '-------------------- Lan'#231'amento de CCorrente'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta'
    )
    Left = 791
    Top = 24
  end
end
