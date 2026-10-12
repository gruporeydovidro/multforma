object FrmOServico_Orcamento: TFrmOServico_Orcamento
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Itens do Or'#231'amento'
  ClientHeight = 446
  ClientWidth = 710
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
    Height = 446
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 689
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 416
      Width = 681
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 6
      Top = 39
      Width = 96
      Height = 13
      Caption = 'Itens do Or'#231'amento:'
    end
    object Label4: TLabel
      Left = 5
      Top = 248
      Width = 69
      Height = 13
      Caption = '&Detalhamento:'
      FocusControl = DbGDetalhe
    end
    object BvlMoldura: TBevel
      Left = 462
      Top = 262
      Width = 219
      Height = 150
      Shape = bsFrame
    end
    object ImgProduto: TImage
      Left = 464
      Top = 264
      Width = 214
      Height = 145
      Center = True
      Stretch = True
    end
    object Label3: TLabel
      Left = 464
      Top = 248
      Width = 40
      Height = 13
      Caption = 'Imagem:'
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 17
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
    object BitBtnConfirm: TBitBtn
      Left = 516
      Top = 419
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 602
      Top = 419
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGOrcamento: TDBGrid
      Left = 6
      Top = 54
      Width = 675
      Height = 191
      DataSource = DsOrcamento
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Ds_Ambiente'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 361
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 5
      Top = 262
      Width = 450
      Height = 150
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Comprimento'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Detalhe'
          Width = 193
          Visible = True
        end>
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 17
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
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 32
    Top = 112
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsOrcamentoAfterScroll
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item, OI.Ds_Ambiente,'#13#10'  OI.Im_SubProduto, OI.Fl_Medida'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'where '#13#10'  OI.Cd_Filial     = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OI.Ds_Ambiente, OI.Nr_Item'
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
    Left = 64
    Top = 112
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsOrcamentoDs_Ambiente: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsOrcamentoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsOrcamentoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsOrcamentoSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0##'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsOrcamentoFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item,'#13#10'  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item = :Nr_Item'#13#10#13#10'order by'#13#10'  Nr_Item'
    DataSource = DsOrcamento
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
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
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 57
    Top = 382
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDetalheNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheDs_Detalhe: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
      Precision = 12
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 28
    Top = 382
  end
  object ADOCmdOrcamento: TADOCommand
    CommandText = 'insert into OServico_Item( Cd_Filial, Nr_OS, Nr_Item, Cd_Produto,'#13#10'  Nm_Produto, Mm_ObsItem, Im_Item, Cd_Funcionario )'#13#10'values( :Cd_Filial, :Nr_OS, :Nr_Item, :Cd_Produto, :Nm_Produto, :Mm_ObsItem, :Im_Item, :Cd_Funcionario )'#13#10
    Connection = FrmMain.ADOConMaster
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
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nm_Produto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 120
        Value = nil?
      end
      item
        Name = 'Mm_ObsItem'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Im_Item'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = nil?
      end
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 288
    Top = 416
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  OServico_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_OS     = :Nr_OS'#13#10
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
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 320
    Top = 416
    object ADODsItemNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
end
