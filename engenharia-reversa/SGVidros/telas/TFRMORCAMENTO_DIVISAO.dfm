object FrmOrcamento_Divisao: TFrmOrcamento_Divisao
  Left = 287
  Top = 288
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Divis'#227'o de Atendimento'
  ClientHeight = 323
  ClientWidth = 696
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 323
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 675
    Height = 323
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 293
      Width = 670
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 2
      Width = 107
      Height = 13
      Caption = 'Percentual de Divis'#227'o:'
    end
    object SbDivisao: TSpeedButton
      Left = 44
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Aplicar divis'#227'o'
      Flat = True
      Glyph.Data = {binary 1502 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDivisaoClick
    end
    object Label2: TLabel
      Left = 4
      Top = 38
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 502
      Top = 296
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 588
      Top = 296
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtPr_Divisao: TCurrencyEdit
      Left = 4
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 2
      Value = 50.0
    end
    object DbGItem: TDBGrid
      Left = 4
      Top = 52
      Width = 663
      Height = 237
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItemDblClick
      OnEnter = DbGItemEnter
      OnExit = DbGItemExit
      OnKeyPress = DbGItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 366
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
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Pedido1'
          Title.Alignment = taRightJustify
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Pedido2'
          Title.Alignment = taRightJustify
          Width = 69
          Visible = True
        end>
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,'#13#10'  Fl_Confirmado, Qt_Pedido1, Qt_Pedido2'#13#10#13#10'from'#13#10'  #Divisao'#13#10#13#10'order by'#13#10'  Nr_Item'
    Parameters = <>
    Left = 86
    Top = 292
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
      DisplayFormat = '###0'
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsItemSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0#'
      Precision = 18
      Size = 3
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemFl_Confirmado: TStringField
      FieldName = 'Fl_Confirmado'
      FixedChar = True
      Size = 1
    end
    object ADODsItemQt_Pedido1: TBCDField
      DisplayLabel = 'Quantidade 1'
      FieldName = 'Qt_Pedido1'
      DisplayFormat = '#,##0.0#'
      Precision = 18
      Size = 3
    end
    object ADODsItemQt_Pedido2: TBCDField
      DisplayLabel = 'Quantidade 2'
      FieldName = 'Qt_Pedido2'
      DisplayFormat = '#,##0.0#'
      Precision = 18
      Size = 3
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 56
    Top = 292
  end
  object ADOCmdDivisao: TMultADOCMD
    CommandText = 'if Object_ID( ''''TempDB..##Divisao'''' ) is null'#13#10'  create table ##Divisao'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Nr_Item SmallInt not null,'#13#10'    Cd_Produto SmallInt null,'#13#10'    Nm_Produto VarChar ( 80 ) not null,'#13#10'    Sg_Unidade VarChar ( 2 ) not null,'#13#10'    Qt_Item Numeric( 18, 3 ) not null,'#13#10'    Vl_Unitario Numeric( 18, 3 ) not null,'#13#10'    Fl_Confirmado Char ( 1 ) not null,'#13#10'    Qt_Pedido1 Numeric( 18, 3 ) null,'#13#10'    Qt_Pedido2 Numeric( 18, 3 ) null'#13#10'    )'#13#10'else'#13#10'  delete from'#13#10'    ##Divisao'#13#10#13#10'  where'#13#10'    Nr_SPID = @@SPID'#13#10#13#10'insert into ##Divisao( Nr_SPID, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade,'#13#10'   Qt_Item, Vl_Unitario, Fl_Confirmado )'#13#10#13#10'select'#13#10'  @@SPID, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,'#13#10'  Fl_Confirmado'#13#10#13#10'from'#13#10'  Venda_Item'#13#10#13#10'where'#13#10'  Nr_Venda = :Nr_Venda'#13#10
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Nr_Venda'
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'create table #divisao'
      '    ('
      '    Nr_Item SmallInt not null,'
      '    Cd_Produto SmallInt null,'
      '    Nm_Produto VarChar ( 120 ) not null,'
      '    Sg_Unidade VarChar ( 2 ) not null,'
      '    Qt_Item Numeric( 12, 3 ) not null,'
      '    Vl_Unitario Numeric( 12, 3 ) not null,'
      '    Fl_Confirmado Char ( 1 ) not null,'
      '    Qt_Pedido1 Numeric( 12, 3 ) null,'
      '    Qt_Pedido2 Numeric( 12, 3 ) null'
      '    )'
    )
    SQLOther1.Strings = (
      'insert into #Divisao( Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade,'
      '   Qt_Item, Vl_Unitario, Fl_Confirmado )'
      ''
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item,'
      '  OI.Vl_Unitario, OI.Fl_Confirmado'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OI.Cd_Produto and'
      '  P.Fl_Produto <= ''''2'''
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther2.Strings = (
      'update'
      '  #Divisao'
      ''
      'set'
      '  Qt_Pedido1 = :Qt_Pedido1,'
      '  Qt_Pedido2 = :Qt_Pedido2'
      ''
      'where'
      '  Nr_Item = :Nr_Item'
    )
    SQLOther3.Strings = (
      '-- Inclui o novo pedido'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Mm_Observacao, Cd_Tabela, Vl_Coleta_Frete, Vl_Pedido_Frete, Pr_ICMS, Fl_Frete )'
      ''
      'select'
      '  @Cd_Filial, @Nr_NewOrcamento, @Dt_Emissao, ''''1'''', Tp_Carga,'
      '  Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco, Mm_Observacao,'
      '  Cd_Tabela, Vl_Coleta_Frete, Vl_Pedido_Frete, Pr_ICMS, Fl_Frete'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento;'
      ''
      '-- Inclui os itens'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto, Nm_Produto,'
      '  Sg_Unidade, Vl_Unitario, Fl_Confirmado, Qt_Item )'
      ''
      'select'
      '  @Cd_Filial, @Nr_NewOrcamento, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Vl_Unitario,'
      '  Fl_Confirmado, @Qt_Pedido'
      ''
      'from'
      '  #Divisao'
      ''
      'where'
      '  @Qt_Pedido > 0'
    )
    SQLOther4.Strings = (
      'update'
      '  Orcamento'
      ''
      'set'
      '  St_Orcamento = ''''7'''
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther6.Strings = (
      'delete from #Divisao'
    )
    Left = 26
    Top = 292
  end
  object ADODsNewOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Orcamento ) as Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 116
    Top = 292
    object ADODsNewOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
  end
end
