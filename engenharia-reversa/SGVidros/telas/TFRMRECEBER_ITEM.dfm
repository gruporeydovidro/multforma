object FrmReceber_Item: TFrmReceber_Item
  Left = 302
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Itens Vendidos'
  ClientHeight = 229
  ClientWidth = 604
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 229
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 583
    Height = 229
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 199
      Width = 576
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 494
      Top = 202
      Width = 85
      Height = 25
      Cancel = True
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGControlado: TDBGrid
      Left = 5
      Top = 5
      Width = 573
      Height = 181
      DataSource = DsControlado
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGControladoEnter
      OnExit = DbGControladoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_fatura'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Title.Caption = 'Produto'
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_item'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Caption = 'Unit'#225'rio'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Width = 105
          Visible = True
        end>
    end
  end
  object DsControlado: TDataSource
    DataSet = ADODsReceber_Item
    Left = 61
    Top = 45
  end
  object ADODsReceber_Item: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select '#13#10'  B.Cd_Filial, B.Cd_Emitente,'#13#10'  BI.Nr_Item, BI.Cd_Produto, P.Nm_Produto,'#13#10'  BI.Vl_Unitario, BI.Qt_Item,B.Dt_fatura, '#13#10'  BI.Vl_Unitario * BI.Qt_Item as Vl_Total'#13#10#13#10#13#10'from'#13#10'  Balcao B'#13#10#13#10#13#10'inner join'#13#10'  Balcao_Item BI'#13#10'on'#13#10' BI.Nr_Balcao = B.Nr_Balcao'#13#10#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = BI.Cd_Produto'#13#10#13#10'where'#13#10'  B.Cd_Filial = :Cd_Filial and'#13#10'  B.Nr_Balcao = :Nr_Balcao and'#13#10'  B.Cd_Emitente = :Cd_Emitente'#13#10#13#10#13#10'order by'#13#10'  BI.Nr_Item desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Balcao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Size = -1
        Value = nil?
      end>
    Left = 90
    Top = 45
    object ADODsReceber_Itemcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReceber_Itemcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsReceber_Itemnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsReceber_Itemcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsReceber_Itemnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsReceber_Itemvl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsReceber_Itemqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsReceber_Itemvl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 16
      Size = 8
    end
    object ADODsReceber_Itemdt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
end
