object FrmProduto_Fornecido: TFrmProduto_Fornecido
  Left = 265
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Fornecedores do Produto'
  ClientHeight = 272
  ClientWidth = 743
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
    Height = 272
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 722
    Height = 272
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 123
      Height = 13
      Caption = 'Fornecedores do Produto:'
    end
    object DbGFornecido: TDBGrid
      Left = 5
      Top = 14
      Width = 708
      Height = 251
      DataSource = DsFornecido
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFornecidoDblClick
      OnEnter = DbGFornecidoEnter
      OnExit = DbGFornecidoExit
      OnKeyPress = DbGFornecidoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 322
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Cidade'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Lancamento'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Width = 60
          Visible = True
        end>
    end
  end
  object DsFornecido: TDataSource
    DataSet = ADODsFornecido
    Left = 53
    Top = 224
  end
  object ADODsFornecido: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFornecidoCalcFields
    CommandText = 'select'#13#10'  EI.Nr_Entrada, EM.Nm_Emitente, EM.Nr_Documento, C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  E.Dt_Lancamento, EI.Qt_Item, EI.Vl_Unitario'#13#10#13#10'from'#13#10'  Entrada_Item EI'#13#10#13#10'inner join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial  = EI.Cd_Filial and'#13#10'  E.Nr_Entrada = EI.Nr_Entrada and'#13#10'  E.St_Entrada = ''''2'''#13#10#13#10'inner join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente = E.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = EM.Cd_Emitente and'#13#10'  EE.Nr_Endereco = EM.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  EI.Cd_Filial  = :Cd_Filial and'#13#10'  EI.Cd_Produto = :Cd_Produto'#13#10#13#10'order by'#13#10'  E.Dt_Lancamento Desc'
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
        Name = 'Cd_Produto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7240
      end>
    Left = 85
    Top = 224
    object ADODsFornecidoNm_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFornecidoNr_Documento: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'Nr_Documento'
      EditMask = '##.###.###/####-0; '
      Size = 14
    end
    object ADODsFornecidoDp_Cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsFornecidoDt_Lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Lancamento'
      EditMask = 'dd/mm/yyyy'
    end
    object ADODsFornecidoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsFornecidoVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object ADODsFornecidoVl_Total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsFornecidoDp_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 80
      Calculated = True
    end
    object ADODsFornecidoNr_Entrada: TIntegerField
      FieldName = 'Nr_Entrada'
    end
  end
end
