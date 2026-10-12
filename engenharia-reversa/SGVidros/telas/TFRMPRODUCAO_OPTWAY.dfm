object FrmProducao_Optway: TFrmProducao_Optway
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Produtos'
  ClientHeight = 327
  ClientWidth = 662
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
    Height = 327
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 641
    Height = 327
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 296
      Width = 635
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 37
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object SbSave: TSpeedButton
      Left = 282
      Top = 13
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSaveClick
    end
    object Label5: TLabel
      Left = 308
      Top = 1
      Width = 33
      Height = 13
      Caption = 'Aresta:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 468
      Top = 299
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 554
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGItem: TDBGrid
      Left = 5
      Top = 50
      Width = 630
      Height = 244
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 543
          Visible = True
        end>
    end
    object CkBProduto: TCheckBox
      Left = 7
      Top = 303
      Width = 217
      Height = 17
      Caption = 'Gerar somente do produto selecionado'
      TabOrder = 3
    end
    object EdtNm_File: TEdit
      Left = 5
      Top = 15
      Width = 274
      Height = 19
      TabOrder = 0
      Text = 'Remessa.TXT'
    end
    object EdtNr_Aresta: TCurrencyEdit
      Tag = 5
      Left = 308
      Top = 15
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Value = 2.0
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  Cd_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then OI.Cd_Produto'#13#10'      else OPI.Cd_Produto'#13#10#13#10'    end,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  PRI.Nr_Producao = :Nr_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 31
      end>
    Left = 388
    Top = 295
    object ADODsProdutoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
    object ADODsProdutoNm_Produto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsProduto
    Left = 358
    Top = 295
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,'#13#10#13#10'  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,'#13#10'  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10'  PRI.Cd_Motivo, M.Ds_Motivo, OT.Dt_Emissao, OT.Nm_Cidade, OT.Nr_Pedido_Emitente,'#13#10#13#10'  Fl_Medida ='#13#10'    case'#13#10'      when OI.Fl_Medida is not null then OI.Fl_Medida'#13#10'      else ''''3'''' -- sempre milimetros para projetos'#13#10#13#10'    end,'#13#10#13#10'  OT.Nm_Emitente, OT.Nm_Fantasia,'#13#10#13#10'  Cd_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then OI.Cd_Produto'#13#10'      else OPI.Cd_Produto'#13#10#13#10'    end,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end,'#13#10#13#10'  Nm_Abreviado ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Abreviado'#13#10'      else POPI.Nm_Abreviado'#13#10#13#10'    end,'#13#10#13#10'  IsNull( OD.Ds_Detalhe, PP.Ds_Peca ) as Ds_Detalhe,'#13#10#13#10'  Vl_Unitario ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then OI.Vl_Unitario'#13#10'      else OPI.Vl_Unitario'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OD.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OD.Nr_Item      = PRI.Nr_Item and'#13#10'  OD.Nr_Detalhe = PRI.Nr_Detalhe'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial    = OPI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OPI.Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = OPI.Nr_Projeto'#13#10#13#10'/*'#13#10'left join'#13#10'  Projeto_Item ProI'#13#10'on'#13#10'  ProI.Cd_Projeto = OP.Cd_Projeto and'#13#10'  ProI.Nr_Item    = OPI.Nr_Item'#13#10'*/'#13#10'left join'#13#10'  Projeto_Peca PP'#13#10'on'#13#10'  PP.Cd_Peca = OPI.Cd_Peca'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  PRI.Nr_Producao = :Nr_Producao'#13#10#13#10'order by'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 5
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 416
    Top = 295
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsItemId_Producao: TSmallintField
      DisplayLabel = 'ID'
      FieldName = 'Id_Producao'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      DisplayLabel = 'Item do Or'#231'amento'
      FieldName = 'Nr_Item'
    end
    object ADODsItemNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsItemNr_Projeto: TSmallintField
      DisplayLabel = 'N'#186' Projeto'
      FieldName = 'Nr_Projeto'
    end
    object ADODsItemNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsItemNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsItemNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsItemId_Reproducao: TSmallintField
      DisplayLabel = 'ID Reprodu'#231#227'o'
      FieldName = 'Id_Reproducao'
    end
    object ADODsItemCd_Motivo: TSmallintField
      FieldName = 'Cd_Motivo'
    end
    object ADODsItemDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 50
    end
    object ADODsItemDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento da pe'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 80
      Calculated = True
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object StringField1: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsItemBarCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarCode'
      Calculated = True
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
    object ADODsItemNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      ReadOnly = True
      Size = 40
    end
    object ADODsItemNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsItemDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      ReadOnly = True
      Size = 50
    end
    object ADODsItemDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsItemNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsItemNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      ReadOnly = True
      Precision = 20
      Size = 5
    end
  end
end
