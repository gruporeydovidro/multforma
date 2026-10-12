object FrmCarga_Alocacao: TFrmCarga_Alocacao
  Left = 325
  Top = 247
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Aloca'#231#227'o de Carga'
  ClientHeight = 621
  ClientWidth = 913
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
    Height = 621
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 530
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 892
    Height = 621
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 1270
    ExplicitHeight = 690
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 149
      Width = 886
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 4
      Top = 148
      Width = 60
      Height = 13
      Caption = 'O&r'#231'amentos:'
      FocusControl = DbGOrcamento
    end
    object Label5: TLabel
      Left = 4
      Top = 275
      Width = 142
      Height = 13
      Caption = '&Itens do Or'#231'amento na Carga:'
      FocusControl = DbGItens
    end
    object Label9: TLabel
      Left = 5
      Top = 448
      Width = 74
      Height = 13
      Caption = '&Detalhamentos:'
      FocusControl = DbGDetalhe
    end
    object BitBtnConfirm: TBitBtn
      Left = 630
      Top = 591
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 716
      Top = 591
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGOrcamento: TDBGrid
      Left = 4
      Top = 163
      Width = 885
      Height = 110
      Hint = 'Utilize as teclas " + " e " - " para mudar a ordem ou pressione <ENTER> para informar o novo numero de ordem'
      DataSource = DsOrcamento
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcamentoEnter
      OnExit = DbGOrcamentoExit
      OnKeyPress = DbGOrcamentoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Ordem'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Title.Alignment = taRightJustify
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 325
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Localidade'
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Fatura'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ps_Alocar'
          Title.Alignment = taRightJustify
          Width = 67
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Alocar'
          Title.Alignment = taCenter
          Width = 35
          Visible = True
        end>
    end
    object DbGItens: TDBGrid
      Tag = 4
      Left = 4
      Top = 290
      Width = 742
      Height = 158
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcamentoEnter
      OnExit = DbGOrcamentoExit
      OnKeyPress = DbGItensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          ReadOnly = True
          Width = 452
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Alocado'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Alocar'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Tag = 2
      Left = 5
      Top = 463
      Width = 512
      Height = 153
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcamentoEnter
      OnExit = DbGOrcamentoExit
      OnKeyPress = DbGItensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Alocado'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Alocar'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          ReadOnly = True
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Area'
          Title.Alignment = taRightJustify
          Width = 72
          Visible = True
        end>
    end
    object PnlSelect: TPanel
      Left = 1
      Top = 1
      Width = 890
      Height = 147
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      OnEnter = PnlSelectEnter
      OnExit = PnlSelectExit
      object Label1: TLabel
        Left = 5
        Top = 0
        Width = 55
        Height = 13
        Caption = 'Or'#231'amen&to:'
        FocusControl = EdtNr_Orcamento
      end
      object SbOrcamento: TSpeedButton
        Tag = 1
        Left = 57
        Top = 15
        Width = 20
        Height = 19
        Hint = 'Consulta de Or'#231'amento'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbOrcamentoClick
      end
      object Label2: TLabel
        Left = 5
        Top = 37
        Width = 26
        Height = 13
        Caption = 'Rota:'
      end
      object SbRota: TSpeedButton
        Tag = 1
        Left = 46
        Top = 52
        Width = 20
        Height = 19
        Hint = 'Consulta de Rota'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbRotaClick
      end
      object Label3: TLabel
        Left = 5
        Top = 74
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object SbFuncionario: TSpeedButton
        Left = 45
        Top = 89
        Width = 22
        Height = 19
        Hint = 'Seleciona Vendedor'
        Flat = True
        Glyph.Data = {binary 1430 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbFuncionarioClick
      end
      object Label6: TLabel
        Left = 370
        Top = 74
        Width = 80
        Height = 13
        Caption = 'Cidade / Estado:'
      end
      object SbCidade: TSpeedButton
        Tag = 1
        Left = 419
        Top = 89
        Width = 20
        Height = 19
        Hint = 'Consulta de Cidades'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbCidadeClick
      end
      object Label7: TLabel
        Left = 333
        Top = 38
        Width = 24
        Height = 13
        Caption = 'CEP:'
      end
      object Label18: TLabel
        Left = 398
        Top = 37
        Width = 75
        Height = 13
        Caption = 'Frete por conta:'
      end
      object SbOpen: TSpeedButton
        Left = 799
        Top = 124
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
      object Label8: TLabel
        Left = 491
        Top = 37
        Width = 45
        Height = 13
        Caption = 'Situa'#231#227'o:'
      end
      object Label10: TLabel
        Left = 5
        Top = 110
        Width = 258
        Height = 13
        Caption = 'Per'#237'odo de Faturamento / Confirma'#231#227'o do Or'#231'amento:'
      end
      object Label11: TLabel
        Left = 267
        Top = 110
        Width = 118
        Height = 13
        Caption = 'Alocar Automaticamente:'
      end
      object Label12: TLabel
        Left = 388
        Top = 110
        Width = 125
        Height = 13
        Caption = 'Eliminar itens j'#225' entregues:'
      end
      object EdtNr_Orcamento: TCurrencyEdit
        Tag = 1
        Left = 5
        Top = 15
        Width = 49
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 0
        OnExit = EdtNr_OrcamentoExit
        OnKeyDown = EdtNr_OrcamentoKeyDown
      end
      object EdtCd_Rota: TCurrencyEdit
        Tag = 2
        Left = 5
        Top = 52
        Width = 39
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 2
        OnExit = EdtCd_RotaExit
        OnKeyDown = EdtNr_OrcamentoKeyDown
      end
      object EdtDs_Rota: TEdit
        Left = 68
        Top = 52
        Width = 259
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtCd_Funcionario: TCurrencyEdit
        Tag = 3
        Left = 5
        Top = 89
        Width = 39
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#,###'
        TabOrder = 7
        OnExit = EdtCd_FuncionarioExit
        OnKeyDown = EdtNr_OrcamentoKeyDown
      end
      object EdtNm_Funcionario: TEdit
        Left = 68
        Top = 89
        Width = 298
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
        TabOrder = 8
      end
      object EdtCd_Cidade: TCurrencyEdit
        Tag = 4
        Left = 370
        Top = 89
        Width = 47
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 9
        OnExit = EdtCd_CidadeExit
        OnKeyDown = EdtNr_OrcamentoKeyDown
      end
      object EdtNm_Cidade: TEdit
        Left = 441
        Top = 89
        Width = 303
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object EdtNr_CEP: TMaskEdit
        Left = 333
        Top = 52
        Width = 60
        Height = 19
        AutoSize = False
        EditMask = '##.###-###;0; '
        MaxLength = 10
        TabOrder = 4
      end
      object CbFrete: TComboBox
        Left = 398
        Top = 52
        Width = 89
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        MaxLength = 20
        TabOrder = 5
        Items.Strings = (
          'Ambos'
          'Emitente'
          'Destinat'#225'rio'
        )
      end
      object CbSituacao: TComboBox
        Left = 491
        Top = 52
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        MaxLength = 20
        TabOrder = 6
        Items.Strings = (
          'Todas'
          'Estoque Reservado'
          'Fechado'
        )
      end
      object EdtDt_Start: TDateEdit
        Left = 5
        Top = 124
        Width = 86
        Height = 19
        CheckOnExit = True
        DialogTitle = 'Selecione a Data'
        GlyphKind = gkCustom
        Glyph.Data = {binary 1850 bytes}
        NumGlyphs = 1
        StartOfWeek = Sun
        TabOrder = 11
      end
      object EdtDt_End: TDateEdit
        Left = 100
        Top = 124
        Width = 90
        Height = 19
        CheckOnExit = True
        DialogTitle = 'Selecione a Data'
        GlyphKind = gkCustom
        Glyph.Data = {binary 1850 bytes}
        NumGlyphs = 1
        StartOfWeek = Sun
        TabOrder = 12
      end
      object CbAlocar: TComboBox
        Left = 267
        Top = 124
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        MaxLength = 20
        TabOrder = 13
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
      object EdtNm_Emitente: TEdit
        Left = 80
        Top = 15
        Width = 308
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object CbEntregue: TComboBox
        Left = 388
        Top = 124
        Width = 60
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        MaxLength = 20
        TabOrder = 14
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
    end
  end
  object ADOCmdAlocar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLPrimary.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------- Alterar a quantidade alocada do item'
      'update'
      '  ##CargaAlocarItem'
      ''
      'set'
      '  Qt_Alocar = :Qt_Alocar'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
      ''
      '-------------------- Alterar a quantidade alocada do or'#231'amento'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Ps_Alocar = :Ps_Alocar '
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther0.Strings = (
      'declare @Nr_Romaneio Int'
      'set @Nr_Romaneio = :Nr_Romaneio'
      ''
      '-- Cria/Limpa table'
      'if Object_ID( ''''TempDB..##CargaAlocar'''' ) is null begin'
      '  create table ##CargaAlocar'
      '    ('
      '    Cd_Filial SmallInt,'
      '    Nr_Romaneio SmallInt,'
      '    Nr_Ordem SmallInt,'
      '    Nr_SeqTemp SmallInt Identity( 1, 1 ),'
      '    Nr_Orcamento Int,'
      '    Nm_Emitente varchar( 50 ),'
      '    Nr_Fatura Int,'
      '    Dp_Localidade VarChar( 120 ),'
      '    Ps_Alocar numeric( 12, 2 ),'
      '    Fl_Alocar Char( 1 )'
      '    )'
      ''
      '  create table ##CargaAlocarItem'
      '    ('
      '    Cd_Filial SmallInt,'
      '    Nr_Romaneio SmallInt,'
      '    Nr_Orcamento Int,'
      '    Nr_Item SmallInt,'
      '    Nm_Produto varchar( 120 ),'
      '    Fl_Medida Char( 1 ),'
      '    Sg_Unidade Char( 2 ),'
      '    Qt_Item numeric( 12, 2 ),'
      '    Qt_Alocado numeric( 12, 2 ),'
      '    Qt_Alocar numeric( 12, 2 ),'
      '    Vl_Arredondamento SmallInt,'
      '    Fl_Detalhe char( 1 ),'
      '    Ps_Produto numeric( 12, 3 ),'
      '    Cd_Produto Int'
      '    )'
      ''
      '  create table ##CargaAlocarDetalhe'
      '    ('
      '    Cd_Filial SmallInt,'
      '    Nr_Romaneio SmallInt,'
      '    Nr_Orcamento Int,'
      '    Nr_Item SmallInt,'
      '    Nr_Detalhe SmallInt,'
      '    Qt_Item SmallInt,'
      '    Nr_Altura numeric( 12, 4 ),'
      '    Nr_Largura numeric( 12, 4 ),'
      '    Nr_Comprimento numeric( 12, 4 ),'
      '    Ds_Detalhe VarChar( 30 ),'
      '    Qt_Alocado SmallInt,'
      '    Qt_Alocar SmallInt'
      '    )'
      ''
      'end else begin'
      '  delete from ##CargaAlocar        where Nr_Romaneio = @Nr_Romaneio'
      '  delete from ##CargaAlocarItem    where Nr_Romaneio = @Nr_Romaneio'
      '  delete from ##CargaAlocarDetalhe where Nr_Romaneio = @Nr_Romaneio'
      ''
      '  DBCC CHECKIDENT ( ##CargaAlocar, RESEED, :Nr_Ordem  )'
      '  '
      'end'
    )
    SQLOther1.Strings = (
      '-------------------- Aloca os Or'#231'amentos de romaneio'
      'insert into ##CargaAlocar( Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nm_Emitente,'
      '    Nr_Fatura, Dp_Localidade, Fl_Alocar )'
      'select'
      '  OT.Cd_Filial, @Nr_Romaneio, OT.Nr_Orcamento, OT.Nm_Emitente, OT.Nr_Fatura,'
      '  C.Nm_Cidade + ''''/'''' + C.Sg_Estado + '''' '''' + Coalesce( R.Ds_Rota, '''''' ) as Dp_Localidade,'
      '  ''''1'''' as Fl_Alocar'
      '                                             '
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      '  /* Fl_Frete */'
      '  /* Dt_Confirmado */'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      '  /* Cd_Cidade */'
      '  /* Cd_Rota */'
      '  /* Nr_CEP */'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'where'
      '  OT.Cd_Filial   = @Cd_Filial '
      '  /* Cd_Funcionario */'
      '  /* St_Orcamento */'
      '  /* Nr_Orcamento */'
      '  /* Dt_Fatura */'
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Inclus'#227'o dos itens'
      'insert into ##CargaAlocarItem( Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item,'
      '  Nm_Produto, Sg_Unidade, Fl_Medida, Qt_Item, Vl_Arredondamento, Qt_Alocado,'
      '  Ps_Produto, Cd_Produto )'
      'select'
      '  OI.Cd_Filial, CA.Nr_Romaneio, OI.Nr_Orcamento, OI.Nr_Item, P.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Fl_Medida, OI.Qt_Item, A.Vl_Arredondamento,'
      ''
      '  Coalesce('
      '  ('
      '  select'
      '    sum( CI.Qt_Item )'
      ''
      '  from'
      '    Carga_Item CI'
      ''
      '  inner join'
      '    Carga C'
      '  on'
      '    C.Cd_Filial   = CI.Cd_Filial and'
      '    C.Nr_Romaneio = CI.Nr_Romaneio and'
      '    C.St_Carga    < ''''4''''               ----- Cancelada'
      ''
      '  where'
      '    CI.Cd_Filial    = OI.Cd_Filial and'
      '    CI.Nr_Orcamento = OI.Nr_Orcamento and'
      '    CI.Nr_Item      = OI.Nr_Item'
      '  ), 0.0 ) as Qt_Alocado, P.Ps_Produto * Coalesce( PU.Nr_Fator, 1.0 ),'
      '  '
      '  OI.Cd_Produto'
      ''
      'from'
      '  ##CargaAlocar CA'
      ''
      'inner join'
      '  Orcamento_Item OI'
      ''
      'on'
      '  OI.Cd_Filial     = CA.Cd_Filial and'
      '  OI.Nr_Orcamento  = CA.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Arredondamento A'
      'on'
      '  A.Cd_Arredondamento = P.Cd_Arredondamento'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      '  '
      'where'
      '  CA.Cd_Filial   = @Cd_Filial and'
      '  CA.Nr_Romaneio = @Nr_Romaneio'
      ''
      ''
      '-------------------- Detalhamentos'
      'insert into ##CargaAlocarDetalhe( Cd_Filial, Nr_Romaneio, Nr_Orcamento,'
      '  Nr_Item, Nr_Detalhe, Qt_Item, Nr_Altura, Nr_Largura, Nr_Comprimento,'
      '  Ds_Detalhe, Qt_Alocado )'
      'select'
      '  OD.Cd_Filial, CI.Nr_Romaneio, CI.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe,'
      '  OD.Qt_Item, OD.Nr_Altura, OD.Nr_Largura, OD.Nr_Comprimento, OD.Ds_Detalhe,'
      '  Coalesce('
      '  ('
      '  select'
      '    sum( CD.Qt_Item )'
      ''
      '  from'
      '    Carga_Detalhe CD'
      ''
      '  inner join'
      '    Carga C'
      '  on'
      '    C.Cd_Filial   = CD.Cd_Filial and'
      '    C.Nr_Romaneio = CD.Nr_Romaneio and'
      '    C.St_Carga    < ''''4''''               ----- Cancelada'
      ''
      '  where'
      '    CD.Cd_Filial    = OD.Cd_Filial and'
      '    CD.Nr_Orcamento = OD.Nr_Orcamento and'
      '    CD.Nr_Item      = OD.Nr_Item and'
      '    CD.Nr_Detalhe   = OD.Nr_Detalhe'
      '  ), 0.0 ) as Qt_Alocado'
      ''
      'from'
      '  ##CargaAlocarItem CI'
      ''
      'inner join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial     = CI.Cd_Filial and'
      '  OD.Nr_Orcamento  = CI.Nr_Orcamento and'
      '  OD.Nr_Item       = CI.Nr_Item'
      ''
      'where'
      '  CI.Cd_Filial   = @Cd_Filial and'
      '  CI.Nr_Romaneio = @Nr_Romaneio'
    )
    SQLOther3.Strings = (
      '-------------------- Calcula a quantiade a alocar dos Itens'
      'update'
      '  ##CargaAlocarItem'
      ''
      'set'
      '  Qt_Alocar = case when Qt_Item > Qt_Alocado then Qt_Item - Qt_Alocado else 0 end'
      '  '
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
      ''
      '-------------------- Calcula a quantiade a alocar dos Detalhamentos'
      'update'
      '  ##CargaAlocarDetalhe'
      ''
      'set'
      '  Qt_Alocar = case when Qt_Item > Qt_Alocado then Qt_Item - Qt_Alocado else 0 end'
      '  '
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
      ''
      ''
      '-------------------- Redetermina a Ordem e o peso alocado'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem  = Nr_SeqTemp,'
      '  Ps_Alocar ='
      '    ('
      '    select'
      '      sum( CI.Qt_Alocar * CI.Ps_Produto )'
      ''
      '    from'
      '      ##CargaAlocarItem CI'
      ''
      '    where'
      '      CI.Cd_Filial    = ##CargaAlocar.Cd_Filial and'
      '      CI.Nr_Romaneio  = ##CargaAlocar.Nr_Romaneio and'
      '      CI.Nr_Orcamento = ##CargaAlocar.Nr_Orcamento'
      '    )'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
    )
    SQLOther4.Strings = (
      '-------------------- Determa se pode alterar os itens pois n'#227'o possui detalhamento'
      'update'
      '  ##CargaAlocarItem'
      ''
      'set'
      '  Fl_Detalhe ='
      '    case'
      '      when exists('
      '        select'
      '          Cd_Filial'
      ''
      '        from'
      '          Orcamento_Detalhe OD'
      ''
      '        where'
      '          OD.Cd_Filial    = ##CargaAlocarItem.Cd_Filial and'
      '          OD.Nr_Orcamento = ##CargaAlocarItem.Nr_Orcamento and'
      '          OD.Nr_Item      = ##CargaAlocarItem.Nr_Item'
      '          ) then ''''1'''' else ''''2'''' end'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
    )
    SQLOther5.Strings = (
      '-------------------- Retira da sele'#231#227'o os ja alocados - Detalhamentos'
      'delete from'
      '  ##CargaAlocarDetalhe'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio and'
      '  Qt_Alocado >= Qt_Item'
      ''
      '-------------------- Retira da sele'#231#227'o os ja alocados - Itens'
      'delete from'
      '  ##CargaAlocarItem'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio and'
      '  Qt_Alocado >= Qt_Item'
      ''
      '-------------------- Retira da sele'#231#227'o os ja alocados - Or'#231'amentos'
      'delete from'
      '  ##CargaAlocar'
      ''
      'where'
      '  not exists('
      '    select'
      '      Cd_Filial'
      ''
      '    from'
      '      ##CargaAlocarItem CAI'
      ''
      '    where'
      '      CAI.Cd_Filial   = @Cd_Filial and'
      '      CAI.Nr_Romaneio = @Nr_Romaneio'
      '    )'
    )
    SQLOther6.Strings = (
      '-------------------- Muda a situa'#231#227'o da aloca'#231#227'o'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Fl_Alocar = :Fl_Alocar'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Romaneio  = :Nr_Romaneio and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther7.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MENOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------------'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem + 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem    >= @NewOrdem and'
      '  Nr_Ordem    <= @OldOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MAIOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '------------------------- Ajustar os itens do intervalo'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem     > @OldOrdem and'
      '  Nr_Ordem    <= @NewOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther9.Strings = (
      '-------------------- Alocar no romaneio'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio'
      ''
      '-------------------- Redefine a ordem dos itens selecionados'
      'update'
      '  ##CargaAlocar'
      ''
      'set'
      '  Nr_Ordem = :Nr_Ordem + '
      '    ('
      '    select'
      '      Count( * )'
      ''
      '    from'
      '      ##CargaAlocar CA'
      ''
      '    where'
      '      CA.Cd_Filial   = ##CargaAlocar.Cd_Filial and'
      '      CA.Nr_Romaneio = ##CargaAlocar.Nr_Romaneio and'
      '      CA.Nr_Ordem   <= ##CargaAlocar.Nr_Ordem and'
      '      CA.Fl_Alocar   = ''''1'''
      '    )'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio and'
      '  Ps_Alocar   > 0'
      ''
      '-------------------- Carga_Orcamento'
      'insert into Carga_Orcamento( Cd_Filial, Nr_Romaneio, Nr_Orcamento,'
      '  Nr_Ordem, Ps_Carga )'
      'select'
      '  Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Ordem, Ps_Alocar'
      ''
      'from'
      '  ##CargaAlocar'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio and'
      '  Fl_Alocar   = ''''1'''
      ''
      '-------------------- Carga_Item'
      'insert into Carga_Item( Cd_Filial, Nr_Romaneio, Nr_Orcamento,'
      '  Nr_Item, Qt_Item )'
      'select'
      '  CA.Cd_Filial, CA.Nr_Romaneio, CA.Nr_Orcamento, CI.Nr_Item, CI.Qt_Alocar'
      ''
      'from'
      '  ##CargaAlocar CA'
      ''
      'inner join'
      '  ##CargaAlocarItem CI'
      'on'
      '  CI.Cd_Filial    = CA.Cd_Filial and'
      '  CI.Nr_Romaneio  = CA.Nr_Romaneio and'
      '  CI.Nr_Orcamento = CA.Nr_Orcamento and'
      '  CI.Qt_Alocar    > 0.0'
      ''
      'where'
      '  CA.Cd_Filial   = @Cd_Filial and'
      '  CA.Nr_Romaneio = @Nr_Romaneio and'
      '  CA.Fl_Alocar   = ''''1'''
      ''
      '-------------------- Carga_Detalhe'
      'insert into Carga_Detalhe( Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item,'
      '  Nr_Detalhe, Qt_Item )'
      'select'
      '  CA.Cd_Filial, CA.Nr_Romaneio, CA.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe,'
      '  CD.Qt_Alocar'
      ''
      'from'
      '  ##CargaAlocar CA'
      ''
      'inner join'
      '  ##CargaAlocarDetalhe CD'
      'on'
      '  CD.Cd_Filial    = CA.Cd_Filial and'
      '  CD.Nr_Romaneio  = CA.Nr_Romaneio and'
      '  CD.Nr_Orcamento = CA.Nr_Orcamento and'
      '  CD.Qt_Alocar    > 0.0'
      ''
      'where'
      '  CA.Cd_Filial   = @Cd_Filial and'
      '  CA.Nr_Romaneio = @Nr_Romaneio and'
      '  CA.Fl_Alocar   = ''''1'''
    )
    Left = 575
    Top = 9
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 165
    Top = 217
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = '/*'#13#10'-- Cria/Limpa table'#13#10'if Object_ID( ''''TempDB..##CargaAlocar'''' ) is null'#13#10'  create table ##CargaAlocar'#13#10'    ('#13#10'    Cd_Filial SmallInt,'#13#10'    Nr_Romaneio SmallInt,'#13#10'    Nr_Ordem SmallInt,'#13#10'    Nr_Orcamento Int,'#13#10'    Nm_Emitente varchar( 50 ),'#13#10'    Nr_Fatura Int,'#13#10'    Dp_Localidade VarChar( 120 ),'#13#10'    Ps_Alocar numeric( 12, 2 ),'#13#10'    Fl_Alocar Char( 1 )'#13#10'    )'#13#10'else'#13#10'  delete from'#13#10'    ##CargaAlocar'#13#10'*/'#13#10#13#10'select'#13#10'    Cd_Filial, Nr_Romaneio, Nr_Ordem, Nr_Orcamento, Nm_Emitente, Nr_Fatura,'#13#10'    Dp_Localidade, Ps_Alocar, Fl_Alocar'#13#10#13#10'from'#13#10'  ##CargaAlocar'#13#10#13#10'where'#13#10'  Nr_Romaneio = :Nr_Romaneio'#13#10#13#10'order by'#13#10'  Nr_Ordem'
    Parameters = <
      item
        Name = 'Nr_Romaneio'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 195
    Top = 217
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoNr_Romaneio: TSmallintField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsOrcamentoNr_Ordem: TSmallintField
      DisplayLabel = 'Ordem'
      FieldName = 'Nr_Ordem'
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcamentoNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcamentoDp_Localidade: TStringField
      DisplayLabel = 'Localidade'
      FieldName = 'Dp_Localidade'
      Size = 120
    end
    object ADODsOrcamentoFl_Alocar: TStringField
      FieldName = 'Fl_Alocar'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Alocar: TStringField
      DisplayLabel = 'Alocar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Alocar'
      Size = 3
      Calculated = True
    end
    object ADODsOrcamentoPs_Alocar: TBCDField
      DisplayLabel = 'Peso'
      FieldName = 'Ps_Alocar'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 2
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 203
    Top = 347
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    BeforeInsert = ADODsItemBeforeInsert
    BeforeEdit = ADODsItemBeforeEdit
    BeforePost = ADODsItemBeforePost
    AfterPost = ADODsItemAfterPost
    CommandText = '/*'#13#10'  create table ##CargaAlocarItem'#13#10'    ('#13#10'    Cd_Filial SmallInt,'#13#10'    Nr_Romaneio SmallInt,'#13#10'    Nr_Orcamento Int,'#13#10'    Nr_Item SmallInt,'#13#10'    Nm_Produto varchar( 120 ),'#13#10'    Sg_Unidade Char( 2 ),'#13#10'    Fl_Medida Char( 1 ),'#13#10'    Qt_Item numeric( 12, 2 ),'#13#10'    Qt_Alocado numeric( 12, 2 ),'#13#10'    Qt_Alocar numeric( 12, 2 ),'#13#10'    Vl_Arredondamento SmallInt,'#13#10'    Fl_Detalhe char( 1 ),'#13#10'    Ps_Produto numeric( 12, 3 ),'#13#10'    Cd_Produto Int'#13#10'    )'#13#10'*/'#13#10#13#10'select'#13#10'  Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item, Nm_Produto, Sg_Unidade, '#13#10'  Fl_Medida, Qt_Item, Qt_Alocado, Qt_Alocar, Fl_Detalhe, Vl_Arredondamento,'#13#10'  Ps_Produto, Cd_Produto'#13#10#13#10'from'#13#10'  ##CargaAlocarItem'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Romaneio  = :Nr_Romaneio and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    DataSource = DsOrcamento
    IndexFieldNames = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Romaneio'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 231
    Top = 347
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Romaneio: TSmallintField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Qt_Item'
      Precision = 12
      Size = 2
    end
    object ADODsItemQt_Alocar: TBCDField
      DisplayLabel = 'Alocar'
      FieldName = 'Qt_Alocar'
      Precision = 12
      Size = 2
    end
    object ADODsItemQt_Alocado: TBCDField
      DisplayLabel = 'Alocado'
      FieldName = 'Qt_Alocado'
      Precision = 12
      Size = 2
    end
    object ADODsItemFl_Detalhe: TStringField
      FieldName = 'Fl_Detalhe'
      FixedChar = True
      Size = 1
    end
    object ADODsItemVl_Arredondamento: TSmallintField
      FieldName = 'Vl_Arredondamento'
    end
    object ADODsItemPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 12
      Size = 3
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    BeforeInsert = ADODsItemBeforeInsert
    BeforePost = ADODsItemBeforePost
    AfterPost = ADODsDetalheAfterPost
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = '/*'#13#10'  create table ##CargaAlocarDetalhe'#13#10'    ('#13#10'    Cd_Filial SmallInt,'#13#10'    Nr_Romaneio SmallInt,'#13#10'    Nr_Orcamento Int,'#13#10'    Nr_Item SmallInt,'#13#10'    Nr_Detalhe SmallInt,'#13#10'    Qt_Item SmallInt,'#13#10'    Qt_Alocado SmallInt,'#13#10'    Qt_Alocar SmallInt,'#13#10'    Nr_Altura numeric( 12, 4 ),'#13#10'    Nr_Largura numeric( 12, 4 ),'#13#10'    Nr_Comprimento numeric( 12, 4 ),'#13#10'    Ds_Detalhe VarChar( 30 )'#13#10'    )'#13#10'*/'#13#10#13#10'select'#13#10'  Cd_Filial, Nr_Romaneio, Nr_Orcamento, Nr_Item, Nr_Detalhe, Qt_Item,'#13#10'  Nr_Altura, Nr_Largura, Nr_Comprimento, Ds_Detalhe, Qt_Alocar, Qt_Alocado'#13#10#13#10'from'#13#10'  ##CargaAlocarDetalhe'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Romaneio  = :Nr_Romaneio and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item      = :Nr_Item'
    DataSource = DsItem
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Romaneio'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 216
    Top = 517
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDetalheNr_Romaneio: TSmallintField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDetalheNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TSmallintField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheQt_Alocar: TSmallintField
      DisplayLabel = 'Alocar'
      FieldName = 'Qt_Alocar'
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamentos'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsDetalheQt_Alocado: TSmallintField
      DisplayLabel = 'Alocado'
      FieldName = 'Qt_Alocado'
    end
    object ADODsDetalheQt_Area: TFloatField
      DisplayLabel = #193'rea a Alocar'
      FieldKind = fkCalculated
      FieldName = 'Qt_Area'
      Calculated = True
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 188
    Top = 517
  end
  object ADODsOrcSelect: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nm_Emitente, Nm_Funcionario, St_Orcamento'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = :Cd_Filial and'#13#10'  OT.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 687
    Top = 21
    object ADODsOrcSelectNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcSelectNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsOrcSelectSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
  end
end
