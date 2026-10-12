object FrmPagar_Alerta: TFrmPagar_Alerta
  Left = 316
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alerta de Contas '#224' Pagar'
  ClientHeight = 516
  ClientWidth = 992
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 516
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 971
    Height = 516
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 485
      Width = 960
      Height = 5
      Shape = bsTopLine
    end
    object Label12: TLabel
      Left = 196
      Top = 2
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 246
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
      Top = 3
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 874
      Top = 15
      Width = 85
      Height = 21
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 42
      Width = 960
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 45
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object LblTotais: TLabel
      Left = 842
      Top = 495
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Totais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SbLancto: TSpeedButton
      Left = 5
      Top = 491
      Width = 85
      Height = 21
      Hint = 'Visualizar'
      Caption = 'Pagar'
      Enabled = False
      Flat = True
      Glyph.Data = {binary 1354 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLanctoClick
    end
    object BitBtnCancel: TBitBtn
      Left = 884
      Top = 489
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 196
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
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 270
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
      Top = 17
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
      Left = 100
      Top = 17
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
    object DbGParcelas: TDBGrid
      Left = 5
      Top = 60
      Width = 956
      Height = 423
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelasDblClick
      OnEnter = DbGParcelasEnter
      OnExit = DbGParcelasExit
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Pagar'
          Width = 169
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
  end
  object ADODsParcela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsParcelaBeforeScroll
    CommandText = 'select'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,'#13#10'  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + C.Nm_Emitente as Dp_Emitente,'#13#10'  A.Vl_Parcela - A.Vl_Pago as Vl_Saldo, B.Cd_Grupo, B.Cd_SubGrupo,'#13#10'  Cast( A.Nr_Pagar as VarChar( 5 ) ) + ''''/'''' +'#13#10'    dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'#13#10'  DateDiff( Day, A.Dt_Vencimento, GetDate() ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora,'#13#10'  B.Ds_Pagar'#13#10#13#10'from'#13#10'  Pagar_Parcela A'#13#10#13#10'inner join'#13#10'  Pagar B'#13#10'on'#13#10'  B.Nr_Pagar = A.Nr_Pagar and'#13#10'  B.St_Pagar <= ''''2'''#13#10#13#10'inner join'#13#10'  Emitente C'#13#10'on'#13#10'  C.Cd_Emitente = B.Cd_Emitente'
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
      '  DateDiff( Day, A.Dt_Vencimento, @Dt_Now ) as Nr_Dias, A.Pr_Mora, A.Vl_Mora,'
      '  B.Ds_Pagar'
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
    Left = 63
    Top = 342
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
    object ADODsParcelaDs_Pagar: TStringField
      DisplayLabel = 'Descritivo'
      FieldName = 'Ds_Pagar'
      Size = 50
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 33
    Top = 342
  end
end
