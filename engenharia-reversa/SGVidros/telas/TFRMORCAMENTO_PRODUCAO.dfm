object FrmOrcamento_Producao: TFrmOrcamento_Producao
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Aloca'#231#227'o em Processo de Produ'#231#227'o'
  ClientHeight = 517
  ClientWidth = 844
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 517
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 823
    Height = 517
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 49
      Height = 13
      Caption = 'Produ'#231#227'o:'
    end
    object Label5: TLabel
      Left = 4
      Top = 137
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label3: TLabel
      Left = 4
      Top = 316
      Width = 39
      Height = 13
      Caption = 'Setores:'
    end
    object DbGProducao: TDBGrid
      Left = 4
      Top = 16
      Width = 813
      Height = 120
      DataSource = DsProducao
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProducaoEnter
      OnExit = DbGProducaoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Producao'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Producao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Usuario'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Previsto'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_SitOrcamento'
          Title.Alignment = taCenter
          Width = 130
          Visible = True
        end>
    end
    object DbGItem: TDBGrid
      Left = 4
      Top = 152
      Width = 813
      Height = 165
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProducaoEnter
      OnExit = DbGProducaoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Id_Producao'
          Title.Alignment = taCenter
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 409
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Id_Reproducao'
          Title.Alignment = taRightJustify
          Width = 83
          Visible = True
        end>
    end
    object DbGSetor: TDBGrid
      Left = 4
      Top = 330
      Width = 813
      Height = 183
      DataSource = DsSetor
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProducaoEnter
      OnExit = DbGProducaoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Sg_Setor'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 379
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 102
          Visible = True
        end>
    end
  end
  object DsProducao: TDataSource
    DataSet = ADODsProducao
    Left = 112
    Top = 80
  end
  object ADODsProducao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsProducaoAfterOpen
    OnCalcFields = ADODsProducaoCalcFields
    CommandText = 'select distinct'#13#10'  P.Cd_Filial, P.Nr_Producao, P.Dt_Producao, P.St_Producao, P.Cd_Usuario,'#13#10'  P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino, PRI.Nr_Orcamento,'#13#10'  Fl_Produzido ='#13#10'    ('#13#10'    case when not exists'#13#10'      ('#13#10'      select'#13#10'        PS.Cd_Filial'#13#10#13#10'      from'#13#10'        Producao_Setor PS'#13#10#13#10'      where'#13#10'        PS.Cd_Filial   = PRI.Cd_Filial and'#13#10'        PS.Nr_Producao = PRI.Nr_Producao and'#13#10'        --PS.Id_Producao = PRI.Id_Producao and'#13#10'        PS.Fl_Setor   <= ''''2'''#13#10'      ) then ''''1'''' else ''''2'''' end'#13#10'    )'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Producao P'#13#10'on'#13#10'  P.Cd_Filial   = PRI.Cd_Filial and'#13#10'  P.Nr_Producao = PRI.Nr_Producao'#13#10#13#10'where'#13#10'  PRI.Cd_Filial    = :Cd_Filial and'#13#10'  PRI.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 142
    Top = 80
    object ADODsProducaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsProducaoNr_Producao: TIntegerField
      DisplayLabel = 'Produ'#231#227'o'
      FieldName = 'Nr_Producao'
    end
    object ADODsProducaoDt_Producao: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Producao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsProducaoSt_Producao: TStringField
      FieldName = 'St_Producao'
      FixedChar = True
      Size = 1
    end
    object ADODsProducaoCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsProducaoDt_Inicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsProducaoDt_Previsto: TDateTimeField
      DisplayLabel = 'Previsto'
      FieldName = 'Dt_Previsto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsProducaoDt_Termino: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsProducaoDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o da Produ'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsProducaoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsProducaoFl_Produzido: TStringField
      FieldName = 'Fl_Produzido'
      ReadOnly = True
      Size = 1
    end
    object ADODsProducaoDp_SitOrcamento: TStringField
      DisplayLabel = 'Situa'#231#227'o do Or'#231'amento'
      FieldKind = fkCalculated
      FieldName = 'Dp_SitOrcamento'
      Calculated = True
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao,'#13#10#13#10'  PRI.Nr_Orcamento, PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto,'#13#10'  PRI.Nr_Comprimento, PRI.Nr_Largura, PRI.Nr_Altura, PRI.Id_Reproducao,'#13#10'  PRI.Cd_Motivo, M.Ds_Motivo,'#13#10#13#10'  OI.Fl_Medida,'#13#10#13#10'  OT.Nm_Emitente,'#13#10#13#10'  Nm_Produto ='#13#10'    case'#13#10'      when PRI.Nr_Projeto is null then POI.Nm_Produto'#13#10'      else POPI.Nm_Produto'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Motivo M'#13#10'on'#13#10'  M.Cd_Motivo = PRI.Cd_Motivo'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Produto POI'#13#10'on'#13#10'  POI.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto'#13#10#13#10'left join'#13#10'  Produto POPI'#13#10'on'#13#10'  POPI.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  PRI.Nr_Producao = :Nr_Producao and'#13#10'  PRI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao'
    DataSource = DsProducao
    IndexFieldNames = 'Cd_Filial;Nr_Producao;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Producao;Nr_Orcamento'
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
        Value = 2
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 128
    Top = 231
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
      Size = 50
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
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 98
    Top = 231
  end
  object ADODsSetor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSetorCalcFields
    CommandText = 'select'#13#10'  PS.Cd_Filial, PS.Nr_Producao, PS.Cd_Setor, S.Sg_Setor, PS.Id_Producao,'#13#10'  PS.Cd_Funcionario, F.Nm_Funcionario, PS.Fl_Setor, PS.Dt_Inicio,'#13#10'  PS.Dt_Termino'#13#10'  '#13#10'from'#13#10'  Producao_Setor PS'#13#10#13#10'inner join'#13#10'  Setor S'#13#10'on'#13#10'  S.Cd_Setor = PS.Cd_Setor'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = PS.Cd_Funcionario'#13#10#13#10'where'#13#10'  PS.Cd_Filial   = :Cd_Filial and'#13#10'  PS.Nr_Producao = :Nr_Producao and'#13#10'  PS.Id_Producao = :Id_Producao'#13#10#13#10'order by'#13#10'  PS.Cd_Setor'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Filial;Nr_Producao;Id_Producao'
    MasterFields = 'Cd_Filial;Nr_Producao;Id_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 5
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 2
      end
      item
        Name = 'Id_Producao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end>
    Left = 236
    Top = 351
    object ADODsSetorCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSetorNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsSetorCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsSetorSg_Setor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'Sg_Setor'
      Size = 15
    end
    object ADODsSetorCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsSetorNm_Funcionario: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsSetorId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsSetorFl_Setor: TStringField
      FieldName = 'Fl_Setor'
      FixedChar = True
      Size = 1
    end
    object ADODsSetorDt_Inicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSetorDt_Termino: TDateTimeField
      DisplayLabel = 'Termino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsSetorDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
  end
  object DsSetor: TDataSource
    DataSet = ADODsSetor
    Left = 207
    Top = 351
  end
end
