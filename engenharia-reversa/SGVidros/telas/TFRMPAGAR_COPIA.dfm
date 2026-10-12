object FrmPagar_Copia: TFrmPagar_Copia
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'C'#243'pia de Contas '#224' Pagar'
  ClientHeight = 448
  ClientWidth = 882
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
    Height = 448
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 394
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 861
    Height = 448
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 778
    ExplicitHeight = 394
    object BvlSeparator: TBevel
      Left = 1
      Top = 417
      Width = 855
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 76
      Height = 13
      Caption = 'M'#234's/Ano c'#243'pia:'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 43
      Width = 855
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 146
      Top = 2
      Width = 86
      Height = 13
      Caption = 'M'#234's/Ano Destino:'
    end
    object SbOpen: TSpeedButton
      Left = 766
      Top = 18
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
    object BitBtnConfirm: TBitBtn
      Left = 688
      Top = 421
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 774
      Top = 421
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbOrigem: TComboBox
      Left = 5
      Top = 16
      Width = 79
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Janeiro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Origem: TRxSpinEdit
      Left = 87
      Top = 16
      Width = 53
      Height = 19
      Value = 9999.0
      TabOrder = 1
    end
    object CbDestino: TComboBox
      Left = 146
      Top = 16
      Width = 79
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Janeiro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Destino: TRxSpinEdit
      Left = 228
      Top = 16
      Width = 53
      Height = 19
      Value = 9999.0
      TabOrder = 3
    end
    object DbGCopiar: TDBGrid
      Left = 5
      Top = 48
      Width = 848
      Height = 367
      Hint = 'Presscione <ESPA'#199'O> ou Click Duplo para marcar despesa para copia ou n'#227'o'#13#10'Pressione <ENTER> para alterar valor e vencimento'
      DataSource = DsCopiar
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGCopiarDblClick
      OnEnter = DbGCopiarEnter
      OnExit = DbGCopiarExit
      OnKeyPress = DbGCopiarKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Pagar'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 349
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Pagar'
          Width = 223
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Title.Alignment = taCenter
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Copiar'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object CkBIgnorar: TCheckBox
      Left = 416
      Top = 20
      Width = 185
      Height = 17
      Caption = 'Ignorar pagamentos j'#225' agendados'
      TabOrder = 4
    end
    object PnlValor: TPanel
      Left = 225
      Top = 133
      Width = 409
      Height = 197
      BevelInner = bvLowered
      BevelWidth = 10
      TabOrder = 8
      Visible = False
      OnExit = PnlValorExit
      object Label3: TLabel
        Left = 23
        Top = 22
        Width = 71
        Height = 13
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 126
        Top = 22
        Width = 34
        Height = 13
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtDt_Vencimento: TDateEdit
        Left = 23
        Top = 36
        Width = 98
        Height = 19
        CheckOnExit = True
        DialogTitle = 'Selecione a Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {binary 1850 bytes}
        NumGlyphs = 1
        ParentFont = False
        StartOfWeek = Sun
        TabOrder = 0
        Text = '04/01/2022'
      end
      object EdtVl_Parcela: TRxCalcEdit
        Left = 126
        Top = 36
        Width = 90
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        Ctl3D = False
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object BitBtnParOk: TBitBtn
        Left = 214
        Top = 152
        Width = 85
        Height = 25
        Caption = 'C&onfirmar'
        TabOrder = 3
        OnClick = BitBtnParOkClick
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
      object BitBtnParCancel: TBitBtn
        Left = 303
        Top = 152
        Width = 85
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 4
        OnClick = BitBtnParCancelClick
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
      object EdtDs_Pagar: TLabeledEdit
        Left = 23
        Top = 73
        Width = 321
        Height = 19
        AutoSelect = False
        AutoSize = False
        EditLabel.Width = 117
        EditLabel.Height = 13
        EditLabel.Caption = 'Descritivo da Conta:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LabelSpacing = 2
        MaxLength = 50
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object ADOCmdCopiar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'declare'
      '  @Nr_MesDestino SmallInt,'
      '  @Nr_AnoDestino SmallInt,'
      '  @Nr_DifMeses SmallInt,'
      '  @Dt_Start Date,'
      '  @Dt_Destino Date'
      ''
      'select'
      '  @Nr_MesDestino = :Nr_MesDestino,'
      '  @Nr_AnoDestino = :Nr_AnoDestino,'
      '  @Dt_Start      = :Dt_Start,'
      '  @Dt_Destino    = :Dt_Destino'
      ''
      'select'
      '  @Nr_DifMeses = DateDiff( month, @Dt_Start, @Dt_Destino )'
      ''
      '  --------------- Cria a table temporaria'
      'if Object_ID( ''''TempDB..##PagarCopia'''' ) is not null'
      '  drop table ##PagarCopia'
      ''
      'select'
      '  @@SPID as Nr_SPID, PP.Cd_Filial, PP.Nr_Pagar, PP.Nr_Parcela,'
      ''
      '  DateAdd( month, @Nr_DifMeses, PP.Dt_Vencimento ) as Dt_Vencimento,'
      ''
      '  PP.Vl_Parcela, PP.Vl_Pago,'
      '  PP.Cd_Portador, PP.Nm_Portador, PP.Nr_Documento, PP.Mm_Observacao, PP.Pr_Mora, PP.Vl_Mora,'
      '  PP.St_Pagar, PP.Cd_Emitente, PP.Cd_Grupo, PP.Cd_SubGrupo, PP.Dp_Portador, PP.Dp_Emitente, PP.Dp_Pagar,'
      '  P.Nr_Entrada, P.Ds_Pagar, '
      '  Fl_Copiar = ''''1'''', 0 as Nr_Sequencia'
      ''
      'into'
      '  ##PagarCopia'
      ''
      'from'
      '  Pagar_ParcelaVw PP'
      ''
      'inner join'
      '  Pagar P'
      'on'
      '  P.Cd_Filial = PP.Cd_Filial and'
      '  P.Nr_Pagar  = PP.Nr_Pagar'
      ''
      'where'
      '  PP.Cd_Filial      = :Cd_Filial and'
      '  PP.Dt_Vencimento >= @Dt_Start and'
      '  PP.Dt_Vencimento  < :Dt_End and'
      '  PP.St_Pagar       < 4 and             ----- Cancelados n'#227'o entram'
      ''
      '  --------------- Somente lan'#231'amentos com parcela '#250'nica'
      '  not exists('
      '    select'
      '      PPar.Cd_Filial'
      ''
      '    from'
      '      Pagar_Parcela PPar'
      ''
      '    where'
      '      PPar.Cd_Filial  = PP.Cd_Filial and'
      '      PPar.Nr_Pagar   = PP.Nr_Pagar and'
      '      PPar.Nr_Parcela > 1'
      '    )'
      ''
      '/* Join Lancto */'
      ''
    )
    SQLOther1.Strings = (
      '--------------- Para n'#227'o usar as j'#225' lan'#231'adas'
      '  and not Exists('
      '    select'
      '      PNew.Cd_Filial'
      ''
      '    from'
      '      Pagar_ParcelaVw PNew'
      ''
      '    where'
      '      PNew.Cd_Filial     = PP.Cd_Filial and'
      '      PNew.Cd_Emitente   = PP.Cd_Emitente and'
      '      PNew.Vl_Parcela    = PP.Vl_Parcela and'
      '      PNew.Dt_Vencimento = DateAdd( month, @Nr_DifMeses, PP.Dt_Vencimento )'
      '    )'
    )
    SQLOther2.Strings = (
      '--------------- Muda o Status do Fl_Copiar'
      'update'
      '  ##PagarCopia'
      ''
      'set'
      '  Fl_Copiar = :Fl_Copiar'
      ''
      'where'
      '  Nr_SPID  = @@SPID and'
      '  Dp_Pagar = :Dp_Pagar'
    )
    SQLOther3.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Pagar Int,'
      '  @Dt_Emissao SmallDateTime'
      ''
      'select'
      '  @Cd_Filial  = :Cd_Filial,'
      '  @Dt_Emissao = :Dt_Emissao'
      ''
      'select'
      '  @Nr_Pagar ='
      '    ('
      '    select'
      '      max( Nr_Pagar ) as Nr_Pagar'
      ''
      '    from'
      '      Pagar'
      ''
      '    where'
      '      Cd_Filial = @Cd_Filial'
      '    )'
      ''
      '--------------- Ajusta a sequencia do CP'
      'update'
      '  ##PagarCopia'
      ''
      'set'
      '  Nr_Sequencia ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      ##PagarCopia CP'
      ''
      '    where'
      '      CP.Nr_SPID    = @@SPID and'
      '      CP.Fl_Copiar  = ''''1'''' and'
      '      CP.Dp_Pagar  <= ##PagarCopia.Dp_Pagar'
      '    )'
      ''
      'where'
      '  Nr_SPID   = @@SPID and'
      '  Fl_Copiar = ''''1'''
      ''
      '--------------- Pagar'
      'insert into Pagar( Cd_Filial, Nr_Pagar, Dt_Emissao, St_Pagar, Cd_Emitente,'
      '   Cd_Grupo, Cd_SubGrupo, Vl_Duplicata, Vl_Pago, Nr_Entrada,'
      '   Ds_Pagar )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Pagar + Nr_Sequencia, @Dt_Emissao, St_Pagar, Cd_Emitente,'
      '  Cd_Grupo, Cd_SubGrupo, Vl_Parcela, 0, Nr_Entrada,'
      '  Ds_Pagar'
      ''
      'from'
      '  ##PagarCopia'
      ''
      'where'
      '  Nr_SPID   = @@SPID and'
      '  Fl_Copiar = ''''1'''
      ''
      '--------------- Inclus'#227'o da parcela'
      'insert into Pagar_Parcela( Cd_Filial, Nr_Pagar, Nr_Parcela,'
      '   Vl_Parcela, Cd_Portador, Nr_Documento, Mm_Observacao, Vl_Mora, Pr_Mora,'
      '   Dt_Vencimento )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Pagar + Nr_Sequencia, Nr_Parcela,'
      '  Vl_Parcela, Cd_Portador, Nr_Documento, Mm_Observacao, Vl_Mora, Pr_Mora,'
      '  Dt_Vencimento'
      ''
      'from'
      '  ##PagarCopia'
      ''
      'where'
      '  Nr_SPID   = @@SPID and'
      '  Fl_Copiar = ''''1'''
      ''
      '--------------- Inclus'#227'o do Historico'
      'insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Cd_Usuario )'
      'select'
      '  @Cd_Filial, @Nr_Pagar + Nr_Sequencia, Nr_Parcela, 1,'
      '  ''''1'''', @Dt_Emissao, Vl_Parcela, :Cd_Usuario'
      ''
      'from'
      '  ##PagarCopia'
      ''
      'where'
      '  Nr_SPID   = @@SPID and'
      '  Fl_Copiar = ''''1'''
      ''
    )
    SQLOther4.Strings = (
      '--------------- Muda vencimento e valor'
      'update'
      '  ##PagarCopia'
      ''
      'set'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Vl_Parcela    = :Vl_Parcela,'
      '  Ds_Pagar      = :Ds_Pagar'
      ''
      'where'
      '  Nr_SPID  = @@SPID and'
      '  Dp_Pagar = :Dp_Pagar'
    )
    Left = 312
    Top = 360
  end
  object ADODsCopiar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select'#13#10'  Nr_SPID, Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,'#13#10'  Cd_Portador, Nm_Portador, Nr_Documento, Mm_Observacao, Pr_Mora, Vl_Mora,'#13#10'  St_Pagar, Cd_Emitente, Cd_Grupo, Cd_SubGrupo, Dp_Portador, Dp_Emitente, Dp_Pagar,'#13#10'  Nr_Entrada, Ds_Pagar, Fl_Copiar,'#13#10'  Dp_Copiar = case when Fl_Copiar = ''''1'''' then ''''Sim'''' end'#13#10#13#10'from'#13#10'  ##PagarCopia'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  Dt_Vencimento'
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Cria a table temporaria'
      'if Object_ID( ''''TempDB..##PagarCopia'''' ) is not null'
      '  delete from ##PagarCopia where Nr_SPID = @@SPID'
      ''
      'select'
      '  @@SPID as Nr_SPID, PP.Cd_Filial, PP.Nr_Pagar, PP.Nr_Parcela, PP.Dt_Vencimento, PP.Vl_Parcela, PP.Vl_Pago,'
      '  PP.Cd_Portador, PP.Nm_Portador, PP.Nr_Documento, PP.Mm_Observacao, PP.Pr_Mora, PP.Vl_Mora,'
      '  PP.St_Pagar, PP.Cd_Emitente, PP.Cd_Grupo, PP.Cd_SubGrupo, PP.Dp_Portador, PP.Dp_Emitente, PP.Dp_Pagar,'
      '  P.Nr_Entrada, P.Ds_Pagar,'
      '  Fl_Copiar = ''''1'''', 0 as Nr_Sequencia'
      ''
      'into'
      '  ##PagarCopia'
      ''
      'from'
      '  Pagar_ParcelaVw PP'
      ''
      'inner join'
      '  Pagar P'
      'on'
      '  P.Cd_Filial = PP.Cd_Filial and'
      '  P.Nr_Pagar  = PP.Nr_Pagar'
      ''
      'where'
      '  PP.Cd_Filial      = :Cd_Filial and'
      '  PP.Dt_Vencimento >= :Dt_Start and'
      '  PP.Dt_Vencimento  < :Dt_End and'
      ''
      '  --------------- Somente lan'#231'amentos com parcela '#250'nica'
      '  not exists('
      '    select'
      '      PPar.Cd_Filial'
      ''
      '    from'
      '      Pagar_Parcela PPar'
      ''
      '    where'
      '      PPar.Cd_Filial  = PP.Cd_Filial and'
      '      PPar.Nr_Pagar   = PP.Nr_Pagar and'
      '      PPar.Nr_Parcela > 1'
      '    )'
      ''
      '/* Join Lancto */'
      ''
      'select'
      '  Nr_SPID, Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,'
      '  Cd_Portador, Nm_Portador, Nr_Documento, Mm_Observacao, Pr_Mora, Vl_Mora,'
      '  St_Pagar, Cd_Emitente, Cd_Grupo, Cd_SubGrupo, Dp_Portador, Dp_Emitente, Dp_Pagar,'
      '  Nr_Entrada, Ds_Pagar, Fl_Copiar,'
      '  Dp_Copiar = case when Fl_Copiar = ''''1'''' then ''''Sim'''' end'
      ''
      'from'
      '  ##PagarCopia'
      ''
      'where'
      '  Nr_SPID = @@SPID'
    )
    Left = 392
    Top = 360
    object ADODsCopiarCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsCopiarNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsCopiarNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsCopiarDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsCopiarVl_Parcela: TBCDField
      DisplayLabel = 'Valor da Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsCopiarVl_Pago: TBCDField
      FieldName = 'Vl_Pago'
      Precision = 12
      Size = 2
    end
    object ADODsCopiarCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsCopiarNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsCopiarNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 15
    end
    object ADODsCopiarMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsCopiarPr_Mora: TBCDField
      FieldName = 'Pr_Mora'
      Precision = 9
      Size = 3
    end
    object ADODsCopiarVl_Mora: TBCDField
      FieldName = 'Vl_Mora'
      Precision = 12
      Size = 2
    end
    object ADODsCopiarSt_Pagar: TStringField
      FieldName = 'St_Pagar'
      FixedChar = True
      Size = 1
    end
    object ADODsCopiarCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsCopiarCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsCopiarCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsCopiarDp_Portador: TStringField
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 59
    end
    object ADODsCopiarDp_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 65
    end
    object ADODsCopiarDp_Pagar: TStringField
      DisplayLabel = 'Pagar'
      FieldName = 'Dp_Pagar'
      ReadOnly = True
      Size = 33
    end
    object ADODsCopiarNr_Entrada: TIntegerField
      FieldName = 'Nr_Entrada'
    end
    object ADODsCopiarDs_Pagar: TStringField
      DisplayLabel = 'Descritivo da Conta'
      FieldName = 'Ds_Pagar'
      Size = 50
    end
    object ADODsCopiarFl_Copiar: TStringField
      FieldName = 'Fl_Copiar'
      ReadOnly = True
      Size = 1
    end
    object ADODsCopiarDp_Copiar: TStringField
      DisplayLabel = 'Copiar'
      FieldName = 'Dp_Copiar'
      ReadOnly = True
      Size = 3
    end
  end
  object DsCopiar: TDataSource
    DataSet = ADODsCopiar
    Left = 360
    Top = 360
  end
end
