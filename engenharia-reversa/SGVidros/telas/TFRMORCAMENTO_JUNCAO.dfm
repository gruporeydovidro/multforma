object FrmOrcamento_Juncao: TFrmOrcamento_Juncao
  Left = 322
  Top = 223
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Jun'#231#227'o'
  ClientHeight = 434
  ClientWidth = 860
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 434
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 839
    Height = 434
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 404
      Width = 832
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbCliente: TSpeedButton
      Left = 55
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbClienteClick
    end
    object Label3: TLabel
      Left = 5
      Top = 40
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 46
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label1: TLabel
      Left = 392
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 460
      Top = 55
      Width = 80
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label2: TLabel
      Left = 365
      Top = 40
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 79
      Width = 832
      Height = 5
      Shape = bsTopLine
    end
    object SbValid: TSpeedButton
      Left = 5
      Top = 407
      Width = 87
      Height = 25
      Caption = '&Validar'
      Enabled = False
      Flat = True
      Glyph.Data = {binary 522 bytes}
      NumGlyphs = 2
      OnClick = SbValidClick
    end
    object Label4: TLabel
      Left = 7
      Top = 84
      Width = 87
      Height = 13
      Caption = 'Itens dos Pedidos:'
    end
    object LblTotal: TLabel
      Left = 668
      Top = 388
      Width = 146
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 666
      Top = 407
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
      Left = 752
      Top = 407
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 9
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_EmitJuncao: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitJuncaoExit
    end
    object EdtNm_EmitJuncao: TEdit
      Left = 79
      Top = 18
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
      TabOrder = 1
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Left = 5
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_FuncionarioExit
    end
    object EdtNm_Funcionario: TEdit
      Left = 70
      Top = 55
      Width = 290
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
    object EdtDt_Start: TDateEdit
      Left = 392
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 2106 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtDt_End: TDateEdit
      Left = 487
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 2106 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object CbUnitario: TComboBox
      Left = 365
      Top = 55
      Width = 94
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Maior Valor'
        'Valor M'#233'dio'
        'Menor Valor'
      )
    end
    object DbGItens: TDBGrid
      Left = 5
      Top = 100
      Width = 828
      Height = 286
      DataSource = DsItens
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItensDblClick
      OnEnter = DbGItensEnter
      OnExit = DbGItensExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 478
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 95
          Visible = True
        end>
    end
  end
  object ADOCmdPedido: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'create table #juncao'
      '  ('
      '  cd_produto Int,'
      '  nr_item smallint identity(1, 1 ),'
      '  sg_unidade varchar( 2 ),'
      '  nm_produto varchar( 120 ),'
      '  vl_unitario numeric( 12, 3 ),'
      '  qt_item numeric( 12, 3 ),'
      '  qt_estoque numeric( 12, 3 ),'
      '  qt_agregado numeric( 12, 3 ),'
      '  qt_imp_item numeric( 12, 3 ),'
      '  vl_imp_unit numeric( 12, 3 ),'
      '  sg_imp_unid varchar( 2 )'
      '  );'
      ''
      'create table #juncao_pedido'
      '  ('
      '  nr_orcamento int'
      '  );'
      ''
      'create table #juncao_aux'
      '  ('
      '  cd_produto int,'
      '  sg_unidade varchar( 2 ),'
      '  nm_produto varchar( 120 ),'
      '  vl_unitario numeric( 12, 3 ),'
      '  qt_item numeric( 12, 3 )'
      '  );'
    )
    SQLOther1.Strings = (
      'truncate table #juncao'
      'truncate table #juncao_pedido'
      'truncate table #juncao_aux'
    )
    SQLOther2.Strings = (
      'update'
      '  #Juncao'
      ''
      'set'
      '  Vl_Imp_Unit = Vl_Unitario,'
      '  Qt_Imp_Item = Qt_Item,'
      '  Sg_Imp_Unid = Sg_Unidade'
      ''
      'where'
      '  Sg_Imp_Unid = '''''' or'
      '  Sg_Imp_Unid is null'
    )
    SQLOther3.Strings = (
      'insert into #Juncao( Cd_Produto, Sg_Unidade, Nm_Produto, Vl_Unitario,'
      '  Qt_Item )'
      'select'
      '  Cd_Produto, Sg_Unidade, Nm_Produto, Vl_Unitario, Qt_Item'
      ''
      'from'
      '  #Juncao_Aux'
    )
    SQLOther4.Strings = (
      '-- Inclui o novo pedido'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Mm_Observacao, Cd_Tabela, Fl_Frete, Pr_ICMS, Cd_Usuario )'
      ''
      'select top 1'
      '  B.Cd_Filial, @Nr_Orcamento, @Dt_Emissao, ''''1'''', B.Tp_Carga,'
      '  B.Cd_Emitente, B.Cd_Funcionario, B.Fl_FormaPagto, B.Nr_Endereco,'
      '  B.Mm_Observacao, B.Cd_Tabela, ''''2'''', Pr_ICMS, :Cd_Usuario'
      ''
      'from'
      '  #Juncao_Pedido A'
      ''
      'inner join'
      '  Orcamento B'
      'on'
      '  B.Cd_Filial    = @Cd_Filial and'
      '  B.Nr_Orcamento = A.Nr_Orcamento'
      ''
      'order by'
      '  A.Nr_Orcamento desc'
      ''
      '-- Inclui os itens do novo pedido'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '  Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado )'
      'select'
      '  @Cd_Filial, @Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item,'
      '  Vl_Unitario, ''''1'''
      ''
      'from'
      '  #Juncao;'
    )
    SQLOther5.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '--------------- Retira da Reserva'
      'execute Orcamento_Situacao @Cd_Filial, @Nr_Orcamento, ''''6'''', ''''5'''', null'
      ''
      '--------------- Informa o novo pedido'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Nr_Juncao = :Nr_NewOrcamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    Left = 123
    Top = 348
  end
  object ADODsItens: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Nr_Item, Cd_Produto, Sg_Unidade, Nm_Produto, Vl_Unitario, Qt_Item, Qt_Estoque,'#13#10'  Qt_Agregado, Qt_Imp_Item, Vl_Imp_Unit, Sg_Imp_Unid'#13#10#13#10'from'#13#10'  #Juncao'#13#10#13#10'order by'#13#10'  Cd_Produto'
    Parameters = <>
    Left = 183
    Top = 348
    object ADODsItensSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsItensNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsItensVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsItensQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0#'
      Precision = 12
      Size = 3
    end
    object ADODsItensQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      DisplayFormat = '#,##0.0#'
      Precision = 12
      Size = 3
    end
    object ADODsItensQt_Agregado: TBCDField
      DisplayLabel = 'Agregado'
      FieldName = 'Qt_Agregado'
      DisplayFormat = '#,##0.0#'
      Precision = 12
      Size = 3
    end
    object ADODsItensQt_Imp_Item: TBCDField
      FieldName = 'Qt_Imp_Item'
      DisplayFormat = '#,##0.0#'
      Precision = 12
      Size = 3
    end
    object ADODsItensVl_Imp_Unit: TBCDField
      FieldName = 'Vl_Imp_Unit'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsItensSg_Imp_Unid: TStringField
      FieldName = 'Sg_Imp_Unid'
      Size = 2
    end
    object ADODsItensNr_Item: TSmallintField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
    object ADODsItensCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Orcamento ) as NewOrcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      'select'
      '  Nr_Orcamento'
      ''
      'from'
      '  #Juncao_Pedido'
      ''
    )
    Left = 215
    Top = 348
  end
  object DsItens: TDataSource
    DataSet = ADODsItens
    Left = 153
    Top = 348
  end
end
