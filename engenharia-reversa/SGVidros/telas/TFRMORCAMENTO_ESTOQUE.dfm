object FrmOrcamento_Estoque: TFrmOrcamento_Estoque
  Left = 294
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Confirma'#231#227'o de Estoque'
  ClientHeight = 316
  ClientWidth = 705
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 316
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 684
    Height = 316
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 286
      Width = 675
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label2: TLabel
      Left = 337
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Carga:'
    end
    object Label10: TLabel
      Left = 5
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 262
      Top = 5
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label6: TLabel
      Left = 70
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 79
      Width = 675
      Height = 5
      Shape = bsTopLine
    end
    object Label8: TLabel
      Left = 5
      Top = 81
      Width = 77
      Height = 13
      Caption = 'Itens do Pedido:'
    end
    object SbTeorico: TSpeedButton
      Left = 3
      Top = 289
      Width = 145
      Height = 25
      Caption = '&Estoque do Or'#231'amento'
      Flat = True
      Glyph.Data = {binary 946 bytes}
      OnClick = SbTeoricoClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 511
      Top = 289
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 597
      Top = 289
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 8
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbEdtNr_Orcamento: TDBEdit
      Left = 5
      Top = 20
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'nr_orcamento'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DbEdtCd_Cliente: TDBEdit
      Left = 5
      Top = 55
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Cd_Emitente'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DbEdtNm_Cliente: TDBEdit
      Left = 66
      Top = 55
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
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DbEdtDs_Carga: TDBEdit
      Left = 337
      Top = 20
      Width = 121
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Ds_Carga'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DbEdtDs_Orcamento: TDBEdit
      Left = 70
      Top = 20
      Width = 186
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dp_Situacao'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DbEdtDt_Emissao: TDBEdit
      Left = 262
      Top = 20
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Emissao'
      DataSource = DsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 95
      Width = 671
      Height = 188
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
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
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 325
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_estoque'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_agregado'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Tp_Carga, O.Cd_Emitente,'#13#10'  E.Nm_Emitente'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 654
    Top = 126
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentodt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentotp_carga: TStringField
      FieldName = 'tp_carga'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcamentoDs_Carga: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Carga'
      Calculated = True
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 626
    Top = 126
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OI.Cd_Produto, B.Nm_Produto, OI.Sg_Unidade, B.Sg_Estoque, OI.Qt_Item,'#13#10'  OI.Qt_Estoque, OI.Qt_Agregado, OI.Nr_Item'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = :Cd_Filial and'#13#10'  OI.Nr_Orcamento  = :Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'order by'#13#10'  OI.Nr_Item'
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
    Left = 497
    Top = 250
    object ADODsProdutoCd_Produto: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
      DisplayFormat = '#,##0'
    end
    object ADODsProdutoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsProdutoSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsProdutoSg_Estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsProdutoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutoqt_estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_estoque'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoqt_agregado: TBCDField
      DisplayLabel = 'Agregado'
      FieldName = 'qt_agregado'
      DisplayFormat = '#,##0.0##'
      Precision = 9
      Size = 3
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 469
    Top = 250
  end
  object ADOCmdTeorico: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Atualiza'#231#227'o de itens avulsos'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Qt_Estoque = Qt_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Cd_Produto is null;'
      ''
      '-- Atualiza'#231#227'o do situa'#231#227'o do or'#231'amento'
      'execute Orcamento_Situacao  :Cd_Filial, :Nr_Orcamento, :St_New, :St_Old, :Dt_Confirmado'
    )
    SQLOther1.Strings = (
      '-- Atribui'#231#227'o de estoque te'#243'rico'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Qt_Estoque ='
      '    case'
      '      when Cd_Produto is null then Qt_Item'
      '      else Qt_Item * Coalesce('
      '      ('
      '      select'
      '        Nr_Fator'
      ''
      '      from'
      '        Produto_Unidade PU'
      ''
      '      where'
      '        PU.Cd_Produto = Orcamento_Item.Cd_Produto and'
      '        PU.Sg_Unidade = Orcamento_Item.Sg_Unidade'
      '      ), 1.0 )'
      ''
      '    end'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther2.Strings = (
      '-- Atribui'#231#227'o de estoque dos itens avulsos'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Qt_Estoque = Qt_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Cd_Produto is null'
    )
    Left = 195
    Top = 250
  end
end
