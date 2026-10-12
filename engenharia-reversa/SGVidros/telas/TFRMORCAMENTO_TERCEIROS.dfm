object FrmOrcamento_Terceiros: TFrmOrcamento_Terceiros
  Left = 286
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gerar nota de mercadoria em poder de terceiros'
  ClientHeight = 309
  ClientWidth = 703
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
    Height = 309
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 682
    Height = 309
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 279
      Width = 674
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 100
      Top = 4
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 131
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label2: TLabel
      Left = 4
      Top = 4
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label3: TLabel
      Left = 36
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label1: TLabel
      Left = 5
      Top = 39
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 509
      Top = 282
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 595
      Top = 282
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_CFOP: TEdit
      Left = 100
      Top = 18
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 2
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_CFOPKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 155
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
      TabOrder = 3
    end
    object EdtCd_Serie: TEdit
      Left = 5
      Top = 18
      Width = 27
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 0
      OnExit = EdtCd_SerieExit
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 36
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 54
      Width = 671
      Height = 222
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutoDblClick
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      OnKeyPress = DbGProdutoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Title.Alignment = taRightJustify
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 380
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_item'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saida'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Confirmado'
          Title.Alignment = taCenter
          Width = 56
          Visible = True
        end>
    end
    object BitBtnLeter: TBitBtn
      Left = 0
      Top = 282
      Width = 85
      Height = 25
      Caption = 'Car&ta'
      TabOrder = 7
      OnClick = BitBtnLeterClick
      Glyph.Data = {binary 826 bytes}
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 28
    Top = 246
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Qt_Item, Qt_Saida, Fl_Confirmado,'#13#10'  Sg_Unidade'#13#10#13#10'from'#13#10'  #Orcamento_Terceiros'#13#10#13#10'order by'#13#10'  Nr_Item'
    Parameters = <>
    Left = 56
    Top = 246
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutoqt_item: TBCDField
      DisplayLabel = 'Vendido'
      FieldName = 'qt_item'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsProdutofl_confirmado: TStringField
      FieldName = 'fl_confirmado'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoDp_Confirmado: TStringField
      DisplayLabel = 'Confirmado'
      FieldKind = fkCalculated
      FieldName = 'Dp_Confirmado'
      Size = 3
      Calculated = True
    end
    object ADODsProdutoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutoQt_Saida: TBCDField
      DisplayLabel = 'Nota'
      FieldName = 'Qt_Saida'
      DisplayFormat = '#,##0.0##'
    end
    object ADODsProdutoSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'create table #orcamento_terceiros'
      '  ('
      '  nr_item smallint,'
      '  cd_produto int,'
      '  nm_produto varchar( 120 ) COLLATE Latin1_General_CI_AI,'
      '  qt_item numeric( 12, 3 ),'
      '  qt_saida numeric( 12, 3 ),'
      '  sg_unidade char( 2 ) COLLATE Latin1_General_CI_AI,'
      '  fl_confirmado char( 1 )'
      '  );'
    )
    SQLOther1.Strings = (
      'truncate table #Orcamento_Terceiros'
    )
    SQLOther2.Strings = (
      'insert into #Orcamento_Terceiros( Nr_Item, Cd_Produto, Nm_produto, Qt_Item,'
      '   Qt_Saida, Fl_Confirmado, Sg_Unidade )'
      'select'
      '  Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Qt_Item, OI.Qt_Item, ''''1'''','
      '  OI.Sg_Unidade'
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
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Nr_Orcamento  = :Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''';'
    )
    SQLOther3.Strings = (
      'update'
      '  #Orcamento_Terceiros'
      ''
      'set'
      '  Fl_Confirmado = :Fl_Confirmado'
      ''
      'where'
      '  Nr_Item = :Nr_Item'
    )
    SQLOther4.Strings = (
      '-- Nota de Saida'
      'insert into Saida( Cd_Filial, Nr_Saida, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota,'
      '  St_Saida, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa, Fl_Frete )'
      'values( :Cd_Filial, :Nr_Saida, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, 0, 0,'
      '  0, 0, 0, 0, 0, 0, ''''1'''', 0, 0, 0, 0, ''''1'''' );'
    )
    SQLOther5.Strings = (
      '-- Inclui os itens da nota de saida'
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nm_Produto )'
      ''
      'select'
      '  :Cd_Filial, :Nr_Saida, OT.Nr_Item, OT.Cd_Produto,'
      '  OT.Sg_Unidade, OT.Qt_Saida,'
      '  OT.Qt_Saida * Coalesce( PU.Nr_Fator, 1.0 ), PP.Vl_Custo, P.Nm_Produto'
      ''
      'from'
      '  #Orcamento_Terceiros OT'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OT.Cd_Produto'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = OT.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OT.Cd_Produto and'
      '  PU.Sg_Unidade = OT.Sg_Unidade'
      ''
      'where'
      '  Fl_Confirmado = ''''1'''';'
    )
    SQLOther6.Strings = (
      '-- Altera a quantidade da nota'
      'update'
      '  #Orcamento_Terceiros'
      ''
      'set'
      '  Qt_Saida = :Qt_Saida'
      ''
      'where'
      '  Nr_Item = :Nr_Item'
    )
    Left = 85
    Top = 246
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( A.Nr_Saida ) + 1 as Nr_Saida'#13#10#13#10'from'#13#10'  Saida A'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 114
    Top = 246
    object ADODsPrimarynr_saida: TIntegerField
      FieldName = 'nr_saida'
    end
  end
end
