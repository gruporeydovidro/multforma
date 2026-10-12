object FrmOrcamento_Old: TFrmOrcamento_Old
  Left = 292
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amento Anterior'
  ClientHeight = 256
  ClientWidth = 674
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 256
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 653
    Height = 256
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 226
      Width = 645
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 113
      Height = 13
      Caption = 'Negocia'#231#245'es Anteriores'
    end
    object BitBtnConfirm: TBitBtn
      Left = 566
      Top = 229
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 20
      Width = 641
      Height = 201
      DataSource = DsOldNegocio
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'nr_orcamento'
          Title.Alignment = taRightJustify
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Width = 65
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
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Situacao'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Estoque'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Estoque'
          Title.Alignment = taRightJustify
          Width = 82
          Visible = True
        end>
    end
  end
  object ADODsOldNegocio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOldNegocioCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, OI.Qt_Item, OI.Sg_Unidade, OI.Vl_Unitario,'#13#10'  OI.Vl_Unitario * OI.Qt_Item as Vl_Total, O.St_Orcamento,'#13#10'  P.Sg_Estoque,'#13#10'  OI.Qt_Item * PU.Nr_Fator as Qt_Estoque,'#13#10'  OI.Vl_Unitario * PU.Nr_Fator as Vl_Estoque'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  OI.Cd_Produto   = :Cd_Produto'#13#10#13#10'inner join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = OI.Cd_Produto and'#13#10'  PU.Sg_Unidade = OI.Sg_Unidade'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Cd_Emitente  = :Cd_Emitente and'#13#10'  O.Nr_Orcamento < :Nr_Orcamento'#13#10#13#10'order by'#13#10'  O.Nr_Orcamento desc'
    Parameters = <
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
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
    Left = 59
    Top = 193
    object ADODsOldNegocioDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOldNegocioQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsOldNegocioSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsOldNegocioVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00#'
      Precision = 18
      Size = 3
    end
    object ADODsOldNegocioVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 6
    end
    object ADODsOldNegocioQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      Precision = 32
      Size = 6
    end
    object ADODsOldNegocioVl_Estoque: TBCDField
      DisplayLabel = 'Valor Estoque'
      FieldName = 'Vl_Estoque'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 6
    end
    object ADODsOldNegocioSg_Estoque: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsOldNegocionr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsOldNegociost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOldNegocioDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
  end
  object DsOldNegocio: TDataSource
    DataSet = ADODsOldNegocio
    Left = 29
    Top = 193
  end
end
