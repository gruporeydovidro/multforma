object FrmCompra_Orcamento: TFrmCompra_Orcamento
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Importar itens de Or'#231'amento'
  ClientHeight = 450
  ClientWidth = 847
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
    Height = 450
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 826
    Height = 450
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 420
      Width = 817
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 66
      Top = 16
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
    object Label2: TLabel
      Left = 93
      Top = 1
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      FocusControl = DbEdtNm_Emitente
    end
    object BvlSeparator_1: TBevel
      Left = 4
      Top = 38
      Width = 817
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 6
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Fabricante:'
    end
    object Label4: TLabel
      Left = 6
      Top = 176
      Width = 113
      Height = 13
      Caption = 'Produtos por fabricante:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 653
      Top = 423
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 739
      Top = 423
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 16
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtNr_OrcamentoExit
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object DbEdtNm_Emitente: TDBEdit
      Left = 93
      Top = 16
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Nm_Emitente'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DbGFabricante: TDBGrid
      Left = 6
      Top = 53
      Width = 635
      Height = 120
      DataSource = DsFabricante
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGFabricanteEnter
      OnExit = DbGFabricanteExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Laboratorio'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Laboratorio'
          Width = 539
          Visible = True
        end>
    end
    object DbGProduto: TDBGrid
      Left = 6
      Top = 190
      Width = 812
      Height = 227
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 528
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Produto'
          Title.Alignment = taRightJustify
          Width = 118
          Visible = True
        end>
    end
    object CkBFabricante: TCheckBox
      Left = 6
      Top = 427
      Width = 147
      Height = 17
      Caption = 'Desconsiderar Fabricante'
      TabOrder = 4
    end
    object CkBSomar: TCheckBox
      Left = 162
      Top = 427
      Width = 147
      Height = 17
      Caption = 'Somar itens repetidos'
      TabOrder = 7
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, O.Dt_Emissao,'#13#10'  O.Dt_Confirmado, O.Nr_Entrega, O.St_Orcamento,'#13#10#13#10'  C.Nm_Cidade, C.Sg_Estado, R.Ds_Rota'#13#10#13#10'from'#13#10'  Orcamento O             '#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 270
    Top = 5
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsOrcamentoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 240
    Top = 5
  end
  object ADODsFabricante: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/*'#13#10'  create table ##CompraOrca'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Cd_Produto Int,'#13#10'    Cd_Laboratorio SmallInt,'#13#10'    Qt_Produto Numeric( 12, 3 ),'#13#10'    Sg_Unidade Char( 2 )'#13#10'    )'#13#10'*/'#13#10'select distinct'#13#10'  CO.Cd_Laboratorio,'#13#10'  Coalesce( L.Nm_Laboratorio, ''''<< N'#227'o Identificado >>'''' ) as Nm_Laboratorio'#13#10#13#10'from'#13#10'  ##CompraOrca CO'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = CO.Cd_Laboratorio'#13#10#13#10'where'#13#10'  CO.Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  2'
    Parameters = <>
    Left = 80
    Top = 144
    object ADODsFabricanteCd_Laboratorio: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Laboratorio'
    end
    object ADODsFabricanteNm_Laboratorio: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'Nm_Laboratorio'
      ReadOnly = True
      Size = 50
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/*'#13#10'  create table ##CompraOrca'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Cd_Produto Int,'#13#10'    Cd_Laboratorio SmallInt,'#13#10'    Qt_Produto Numeric( 12, 3 ),'#13#10'    Sg_Unidade Char( 2 )'#13#10'    )'#13#10'*/'#13#10'select'#13#10'  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade, sum( Qt_Produto ) as Qt_Produto'#13#10#13#10'from'#13#10'  ##CompraOrca CO'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = CO.Cd_Produto'#13#10#13#10'where'#13#10'  CO.Nr_SPID = @@SPID and'#13#10'  CO.Cd_Laboratorio = :Cd_Laboratorio'#13#10#13#10'group by'#13#10'  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade'#13#10#13#10'order by'#13#10'  1'
    DataSource = DsFabricante
    MasterFields = 'Cd_Laboratorio'
    Parameters = <
      item
        Name = 'Cd_Laboratorio'
        DataType = ftSmallint
        Value = nil?
      end>
    Left = 64
    Top = 320
    object ADODsProdutoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 14
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 144
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 8
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoQt_Produto: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 47
      FieldName = 'Qt_Produto'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      Precision = 32
      Size = 3
    end
  end
  object DsFabricante: TDataSource
    DataSet = ADODsFabricante
    Left = 48
    Top = 144
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 32
    Top = 320
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Cria/Limpa table'
      'if Object_ID( ''''TempDB..##CompraOrca'''' ) is null'
      '  create table ##CompraOrca'
      '    ('
      '    Nr_SPID Int,'
      '    Cd_Produto Int,'
      '    Cd_Laboratorio SmallInt,'
      '    Qt_Produto Numeric( 12, 3 ),'
      '    Sg_Unidade Char( 2 )'
      '    )'
      ''
      'else'
      '  delete from'
      '    ##CompraOrca'
      ''
      '  where'
      '    Nr_SPID = @@SPID'
      ''
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '--------------- Itens do or'#231'amento'
      'insert into ##CompraOrca'
      'select'
      '  @@SPID, OI.Cd_Produto, P.Cd_Laboratorio, OI.Qt_Item, OI.Sg_Unidade'
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
      '  OI.Cd_Filial    = @Cd_Filial and'
      '  OI.Nr_Orcamento = @Nr_Orcamento'
      ''
      '--------------- Itens do Conjunto'
      'insert into ##CompraOrca'
      'select'
      '  @@SPID, OC.Cd_Produto, P.Cd_Laboratorio, OC.Qt_Vendido, OC.Sg_Unidade'
      ''
      'from'
      '  Orcamento_Conjunto_Total OC'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OC.Cd_Produto'
      ''
      'where'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = @Nr_Orcamento'
      ''
      '/* Itens de Projeto */'
      ''
      '--------------- Ajusta os sem laboratorio para 0 "zero"'
      'update'
      '  ##CompraOrca'
      ''
      'set'
      '  Cd_Laboratorio = 0'
      ''
      'where'
      '  Nr_SPID = @@SPID and'
      '  Cd_Laboratorio is null'
    )
    SQLOther1.Strings = (
      '--------------- Itens do Conjunto'
      'insert into ##CompraOrca'
      'select'
      '  @@SPID, OP.Cd_Produto, P.Cd_Laboratorio, OP.Qt_Vendido, OP.Sg_Unidade'
      ''
      'from'
      '  Orcamento_Projeto_Item_Total OP'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OP.Cd_Produto'
      ''
      'where'
      '  OP.Cd_Filial    = @Cd_Filial and'
      '  OP.Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther2.Strings = (
      '--------------- Table auxiliar com somatorio'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Compra Int'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Nr_Compra = :Nr_Compra'
      ''
      'if Object_ID( ''''TempDB..#CompraOrcaAux'''' ) is not null'
      '  drop table #CompraOrcaAux'
      ''
      'create table #CompraOrcaAux'
      '  ('
      '  Cd_Produto Int,'
      '  Nm_Produto VarChar( 150 ),'
      '  Sg_Unidade Char( 2 ),'
      '  Qt_Produto Numeric( 12, 3 ),'
      '  Nr_Item SmallInt Identity( 1, 1 )'
      '  )'
      ''
      'insert into #CompraOrcaAux( Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Produto )'
      'select'
      '  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade, sum( Qt_Produto ) as Qt_Produto'
      ''
      'from'
      '  ##CompraOrca CO'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = CO.Cd_Produto'
      ''
      'where'
      '  CO.Nr_SPID = @@SPID'
      '  /* Cd_Laboratorio */'
      ''
      'group by'
      '  CO.Cd_Produto, P.Nm_Produto, CO.Sg_Unidade'
      ''
      ''
    )
    SQLOther3.Strings = (
      '--------------- Faz as somatorias'
      'update'
      '  Compra_Item'
      ''
      'set'
      '  Qt_Item = Qt_Item + Coalesce('
      '    ('
      '    select'
      '      sum( COA.Qt_Produto )'
      ''
      '    from'
      '      #CompraOrcaAux COA'
      ''
      '    where'
      '      COA.Cd_Produto = Compra_Item.Cd_Produto'
      '    ), 0 )'
      ''
      'where'
      '  Cd_Filial = @Cd_Filial and'
      '  Nr_Compra = @Nr_Compra'
    )
    SQLOther4.Strings = (
      '--------------- Inclui os itens fazendo somat'#243'rios'
      'insert into Compra_Item( Cd_Filial, Nr_Compra, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Qt_Recebida )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Compra, :Nr_Item + Nr_Item, Cd_Produto, Nm_Produto,'
      '  Sg_Unidade, Qt_Produto, 0.0, 0.0'
      ''
      'from'
      '  #CompraOrcaAux COA'
      ''
      ''
    )
    SQLOther5.Strings = (
      '--------------- Somente soma os repetidos'
      'where'
      '  not Exists('
      '    select'
      '      CI.Cd_Filial'
      ''
      '    from'
      '      Compra_Item CI'
      ''
      '    where'
      '      CI.Cd_Filial  = @Cd_Filial and'
      '      CI.Nr_Compra  = @Nr_Compra and'
      '      CI.Cd_Produto = COA.Cd_Produto'
      '      )'
      ''
    )
    Left = 299
    Top = 5
  end
end
