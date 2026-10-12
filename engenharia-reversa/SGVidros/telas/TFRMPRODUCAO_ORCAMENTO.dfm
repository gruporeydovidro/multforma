object FrmProducao_Orcamento: TFrmProducao_Orcamento
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lista de Or'#231'amentos'
  ClientHeight = 624
  ClientWidth = 857
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
    Height = 624
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 836
    Height = 624
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 149
      Height = 13
      Caption = 'Per'#237'odo (Data de confirma'#231#227'o):'
    end
    object LblProducao: TLabel
      Left = 190
      Top = 4
      Width = 74
      Height = 13
      Caption = 'Produtos ser'#227'o:'
    end
    object SbOpen: TSpeedButton
      Left = 746
      Top = 56
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 76
      Width = 833
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 84
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
    end
    object ImgItem: TImage
      Left = 5
      Top = 363
      Width = 635
      Height = 257
      Center = True
      OnDblClick = ImgItemDblClick
    end
    object Label3: TLabel
      Left = 318
      Top = 4
      Width = 47
      Height = 13
      Caption = 'Visualizar:'
    end
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 56
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona o Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label4: TLabel
      Left = 578
      Top = 38
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 639
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object SbProducao: TSpeedButton
      Left = 808
      Top = 78
      Width = 23
      Height = 19
      Hint = 'Aloca'#231#227'o em Processo de Produ'#231#227'o...'
      Flat = True
      Glyph.Data = {binary 826 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProducaoClick
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 97
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object CbProducao: TComboBox
      Left = 190
      Top = 18
      Width = 127
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      MaxLength = 20
      TabOrder = 2
      Text = 'Enviados a produ'#231#227'o'
      Items.Strings = (
        'Enviados a produ'#231#227'o'
        'Retirados no balc'#227'o'
      )
    end
    object DbGLista: TDBGrid
      Left = 5
      Top = 98
      Width = 828
      Height = 129
      DataSource = DsLista
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGListaEnter
      OnExit = DbGListaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Confirmado'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 142
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 113
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Alocado'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Orcamento'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
    object DbGItem: TDBGrid
      Left = 5
      Top = 228
      Width = 576
      Height = 129
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGListaEnter
      OnExit = DbGListaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Item'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 404
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Alocacao'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 583
      Top = 228
      Width = 250
      Height = 129
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGListaEnter
      OnExit = DbGListaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 165
          Visible = True
        end>
    end
    object CbVisualizar: TComboBox
      Left = 318
      Top = 18
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      MaxLength = 20
      TabOrder = 3
      Text = 'N'#227'o alocados'
      Items.Strings = (
        'N'#227'o alocados'
        'Todos'
      )
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 80
      Top = 53
      Width = 495
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
      TabOrder = 5
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 2
      Left = 578
      Top = 53
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtNr_OrcamentoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
  end
  object DsLista: TDataSource
    DataSet = ADODsLista
    Left = 40
    Top = 144
  end
  object ADODsLista: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsListaAfterScroll
    OnCalcFields = ADODsListaCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'--------------- Pedidos em Estoque Reservado'#13#10'select'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,'#13#10'  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,'#13#10'  Fl_Alocado ='#13#10'    case'#13#10'      when Exists('#13#10'        select top 1'#13#10'          Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Item PItem'#13#10#13#10'        where'#13#10'          PItem.Cd_Filial    = OT.Cd_Filial and'#13#10'          PItem.Nr_Orcamento = OT.Nr_Orcamento'#13#10'        ) then ''''1'''#13#10'      else ''''2'''#13#10'    end'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10'  /* Fl_Producao */'#13#10#13#10'where'#13#10'  OT.Cd_Filial      = @Cd_Filial and'#13#10'  OT.St_Orcamento   = ''''5'''' and'#13#10'  OT.Dt_Confirmado >= @Dt_Start and'#13#10'  OT.Dt_Confirmado  < @Dt_End'#13#10#13#10'--------------- Pedidos Fechados'#13#10'union'#13#10'select'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,'#13#10'  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,'#13#10'  Fl_Alocado ='#13#10'    case'#13#10'      when Exists('#13#10'        select top 1'#13#10'          Cd_Filial'#13#10#13#10'        from'#13#10'          Producao_Item PItem'#13#10#13#10'        where'#13#10'          PItem.Cd_Filial    = OT.Cd_Filial and'#13#10'          PItem.Nr_Orcamento = OT.Nr_Orcamento'#13#10'        ) then ''''1'''#13#10'      else ''''2'''#13#10'    end'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10'  /* Fl_Producao */'#13#10#13#10'where'#13#10'  OT.Cd_Filial      = @Cd_Filial and'#13#10'  OT.St_Orcamento   = ''''9'''' and'#13#10'  OT.Dt_Confirmado >= @Dt_Start and'#13#10'  OT.Dt_Confirmado  < @Dt_End'#13#10#13#10'order by'#13#10'  OT.Cd_Filial, OT.St_Orcamento, OT.Dt_Confirmado desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 32874.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = 42369.0
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      '--------------- Pedidos em Estoque Reservado'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,'
      '  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,'
      '  Fl_Alocado ='
      '    case'
      '      when Exists('
      '        select top 1'
      '          Cd_Filial'
      ''
      '        from'
      '          Producao_Item PItem'
      ''
      '        where'
      '          PItem.Cd_Filial    = OT.Cd_Filial and'
      '          PItem.Nr_Orcamento = OT.Nr_Orcamento'
      '        ) then ''''1'''
      '      else ''''2'''
      '    end'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      '  /* Fl_Producao */'
      ''
      'where'
      '  OT.Cd_Filial      = @Cd_Filial and'
      '  /* Nr_Orcamento */'
      '  OT.St_Orcamento   = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  OT.Dt_Confirmado >= @Dt_Start and'
      '  OT.Dt_Confirmado  < @Dt_End'
      '  /* Alocacao */'
      ''
      '--------------- Pedidos Fechados'
      'union'
      'select'
      '  OT.Cd_Filial, OT.Nr_Orcamento, OT.Dt_Confirmado, OT.St_Orcamento,'
      '  OT.Nm_Emitente, OT.Nm_Funcionario, OT.Vl_Orcamento,'
      '  Fl_Alocado ='
      '    case'
      '      when Exists('
      '        select top 1'
      '          Cd_Filial'
      ''
      '        from'
      '          Producao_Item PItem'
      ''
      '        where'
      '          PItem.Cd_Filial    = OT.Cd_Filial and'
      '          PItem.Nr_Orcamento = OT.Nr_Orcamento'
      '        ) then ''''1'''
      '      else ''''2'''
      '    end'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      '  /* Fl_Producao */'
      ''
      'where'
      '  OT.Cd_Filial      = @Cd_Filial and'
      '  /* Nr_Orcamento */'
      '  OT.St_Orcamento   = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  OT.Dt_Confirmado >= @Dt_Start and'
      '  OT.Dt_Confirmado  < @Dt_End'
      '  /* Alocacao */'
      '  '
      'order by'
      '  OT.Cd_Filial, OT.Dt_Confirmado desc'
    )
    SQLOther1.Strings = (
      '--------------- Somente o que nao foi alocado'
      '  and'
      '  ('
      '  select'
      '    sum( OD.Qt_Item )'
      ''
      '  from'
      '    Orcamento_Detalhe OD'
      ''
      '  where'
      '    OD.Cd_Filial    = OT.Cd_Filial and'
      '    OD.Nr_Orcamento = OT.Nr_Orcamento '
      ''
      '  ) >'
      '  ('
      '  select'
      '    count( * )'
      ''
      '  from'
      '    Producao_Item PrI'
      ''
      '  where'
      '    PrI.Cd_Filial    = OT.Cd_Filial and'
      '    PrI.Nr_Orcamento = OT.Nr_Orcamento'
      '  )'
    )
    Left = 69
    Top = 144
    object ADODsListaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
      ReadOnly = True
    end
    object ADODsListaNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
    object ADODsListaDt_Confirmado: TDateTimeField
      DisplayLabel = 'Confirmado'
      FieldName = 'Dt_Confirmado'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsListaSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object ADODsListaNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
    end
    object ADODsListaNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      ReadOnly = True
      Size = 50
    end
    object ADODsListaVl_Orcamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsListaDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsListaFl_Alocado: TStringField
      FieldName = 'Fl_Alocado'
      ReadOnly = True
      Size = 1
    end
    object ADODsListaDp_Alocado: TStringField
      DisplayLabel = 'Alocado'
      FieldKind = fkCalculated
      FieldName = 'Dp_Alocado'
      Size = 3
      Calculated = True
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 40
    Top = 256
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsItemAfterScroll
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, P.Nm_Produto, OI.Im_SubProduto,'#13#10'  OI.Qt_Item, OI.Fl_Medida,'#13#10'  Dp_Alocacao ='#13#10'    case'#13#10'      when not Exists('#13#10'          select'#13#10'            PrI.Cd_Filial'#13#10#13#10'          from'#13#10'            Producao_Item PrI'#13#10#13#10'          where'#13#10'            PrI.Cd_Filial    = OI.Cd_Filial and'#13#10'            PrI.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'            PrI.Nr_Item      = OI.Nr_Item'#13#10'          )'#13#10'        then ''''N'#227'o'''#13#10'      when'#13#10'          ('#13#10'          select'#13#10'            sum( OD.Qt_Item )'#13#10#13#10'          from'#13#10'            Orcamento_Detalhe OD'#13#10#13#10'          where'#13#10'            OD.Cd_Filial    = OI.Cd_Filial and'#13#10'            OD.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'            OD.Nr_Item      = OI.Nr_Item'#13#10#13#10'          ) >'#13#10'          ('#13#10'          select'#13#10'            count( * )'#13#10#13#10'          from'#13#10'            Producao_Item PrI'#13#10#13#10'          where'#13#10'            PrI.Cd_Filial    = OI.Cd_Filial and'#13#10'            PrI.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'            PrI.Nr_Item      = OI.Nr_Item'#13#10'          )'#13#10'        then ''''Parcial'''#13#10#13#10'      else ''''Sim'''#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'#13#10'  /* Alocacao */'#13#10#13#10'order by'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item'
    DataSource = DsLista
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, P.Nm_Produto, OI.Im_SubProduto,'
      '  OI.Qt_Item, OI.Fl_Medida,'
      '  Dp_Alocacao ='
      '    case'
      '      when not Exists('
      '          select'
      '            PrI.Cd_Filial'
      ''
      '          from'
      '            Producao_Item PrI'
      ''
      '          where'
      '            PrI.Cd_Filial    = OI.Cd_Filial and'
      '            PrI.Nr_Orcamento = OI.Nr_Orcamento and'
      '            PrI.Nr_Item      = OI.Nr_Item'
      '          )'
      '        then ''''N'#227'o'''
      ''
      '      when'
      '          Coalesce( ('
      '          select'
      '            sum( OD.Qt_Item )'
      ''
      '          from'
      '            Orcamento_Detalhe OD'
      ''
      '          where'
      '            OD.Cd_Filial    = OI.Cd_Filial and'
      '            OD.Nr_Orcamento = OI.Nr_Orcamento and'
      '            OD.Nr_Item      = OI.Nr_Item'
      ''
      '          ), 0 ) >'
      '          Coalesce( ('
      '          select'
      '            count( * )'
      ''
      '          from'
      '            Producao_Item PrI'
      ''
      '          where'
      '            PrI.Cd_Filial    = OI.Cd_Filial and'
      '            PrI.Nr_Orcamento = OI.Nr_Orcamento and'
      '            PrI.Nr_Item      = OI.Nr_Item'
      '          ), 0 )'
      '        then ''''Parcial'''
      ''
      '      else'
      '        ''''Sim'''
      ''
      '    end'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'where'
      '  OI.Cd_Filial    = :Cd_Filial and'
      '  OI.Nr_Orcamento = :Nr_Orcamento'
      '  /* Alocacao */'
      ''
      'order by'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item'
    )
    SQLOther1.Strings = (
      '--------------- Somente o que nao foi alocado'
      '  and'
      '  ('
      '  select'
      '    sum( OD.Qt_Item )'
      ''
      '  from'
      '    Orcamento_Detalhe OD'
      ''
      '  where'
      '    OD.Cd_Filial    = OI.Cd_Filial and'
      '    OD.Nr_Orcamento = OI.Nr_Orcamento and'
      '    OD.Nr_Item      = OI.Nr_Item'
      ''
      '  ) >'
      '  ('
      '  select'
      '    count( * )'
      ''
      '  from'
      '    Producao_Item PrI'
      ''
      '  where'
      '    PrI.Cd_Filial    = OI.Cd_Filial and'
      '    PrI.Nr_Orcamento = OI.Nr_Orcamento and'
      '    PrI.Nr_Item      = OI.Nr_Item'
      '  )'
    )
    Left = 69
    Top = 256
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Item'
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'M'#178' Total'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemDp_Alocacao: TStringField
      DisplayLabel = 'Alocado'
      FieldName = 'Dp_Alocacao'
      ReadOnly = True
      Size = 7
    end
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe, OD.Qt_Item,'#13#10'  OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe OD'#13#10#13#10#13#10'where'#13#10'  OD.Cd_Filial    = :Cd_Filial and'#13#10'  OD.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OD.Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  OD.Cd_Filial, OD.Nr_Orcamento, OD.Nr_Item, OD.Nr_Detalhe'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 68
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end>
    Left = 637
    Top = 256
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
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
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 608
    Top = 256
  end
  object ADODsOrcaCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'where'#13#10'  OT.Cd_Filial = :Cd_Filial and'#13#10'  OT.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 685
    Top = 43
    object ADODsOrcaCheckNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcaCheckCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsOrcaCheckNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
  end
end
