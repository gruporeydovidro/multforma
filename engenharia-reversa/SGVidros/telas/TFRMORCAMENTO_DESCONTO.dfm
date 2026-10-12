object FrmOrcamento_Desconto: TFrmOrcamento_Desconto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Distribui'#231#227'o de desconto no valor unit'#225'rio'
  ClientHeight = 348
  ClientWidth = 772
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
    Height = 348
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 751
    Height = 348
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 318
      Width = 744
      Height = 5
      Shape = bsTopLine
    end
    object LblDesconto: TLabel
      Left = 5
      Top = 3
      Width = 107
      Height = 13
      Caption = '&Desconto ( % / Valor ):'
      FocusControl = EdtPr_DescPed
    end
    object SbAplicar: TSpeedButton
      Left = 131
      Top = 15
      Width = 73
      Height = 22
      Caption = '&Aplicar'
      Flat = True
      Glyph.Data = {binary 826 bytes}
      OnClick = SbAplicarClick
    end
    object Label1: TLabel
      Left = 5
      Top = 41
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label2: TLabel
      Left = 493
      Top = 3
      Width = 98
      Height = 13
      Caption = 'Desconto da Venda:'
      FocusControl = EdtPr_DescPed
    end
    object Label3: TLabel
      Left = 213
      Top = 3
      Width = 76
      Height = 13
      Caption = 'Total da Venda:'
      FocusControl = EdtPr_DescPed
    end
    object Label4: TLabel
      Left = 399
      Top = 3
      Width = 92
      Height = 13
      Caption = 'Valor dos Produtos:'
      FocusControl = EdtPr_DescPed
    end
    object Label5: TLabel
      Left = 298
      Top = 3
      Width = 99
      Height = 13
      Caption = 'Valor com Desconto:'
      FocusControl = EdtPr_DescPed
    end
    object LblImportante: TLabel
      Left = 374
      Top = 41
      Width = 369
      Height = 13
      Caption = 'Importante: Os itens de projeto N'#195'O s'#227'o afetados por esta rotina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 578
      Top = 321
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 664
      Top = 321
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtPr_DescPed: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 0
      OnEnter = EdtPr_DescPedEnter
      OnExit = EdtVl_DescPedExit
    end
    object EdtVl_DescPed: TCurrencyEdit
      Tag = 2
      Left = 50
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 1
      OnEnter = EdtVl_DescPedEnter
      OnExit = EdtVl_DescPedExit
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 56
      Width = 740
      Height = 259
      DataSource = DsProdutos
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 399
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
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
    object EdtVl_Resto: TCurrencyEdit
      Tag = 2
      Left = 493
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Venda: TCurrencyEdit
      Tag = 2
      Left = 213
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtVl_Produtos: TCurrencyEdit
      Tag = 2
      Left = 399
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtVl_Liquido: TCurrencyEdit
      Tag = 2
      Left = 298
      Top = 18
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object DsProdutos: TDataSource
    DataSet = ADODsProdutos
    Left = 40
    Top = 280
  end
  object ADODsProdutos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/*--------------- Cria tabela temporaria para tratamento das informa'#231#245'es'#13#10'if Object_ID( ''''TempDB..##OItems'''' ) is not null'#13#10'  truncate table ##OItems'#13#10#13#10'else'#13#10'  create table ##OItems'#13#10'    ('#13#10'    Nr_Item SmallInt,'#13#10'    Cd_Produto Int,'#13#10'    Nm_Produto VarChar( 120 ),'#13#10'    Sg_Unidade Char( 2 ),'#13#10'    Qt_Item Numeric( 12, 3 ),'#13#10'    Vl_Unitario Numeric( 12, 3 )'#13#10'    )'#13#10'*/'#13#10#13#10'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,'#13#10'  Vl_Total = Qt_Item * Vl_Unitario'#13#10#13#10'from'#13#10'  ##OItems'#13#10#13#10'where'#13#10'  Id_SPID = @@SPID'#13#10#13#10'order by'#13#10'  Nr_Item'
    Parameters = <>
    Left = 70
    Top = 280
    object ADODsProdutosNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutosCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutosNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutosSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutosQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0###'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00###'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 25
      Size = 6
    end
  end
  object ADOCmdDesconto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Cria tabela temporaria para tratamento das informa'#231#245'es'
      'if Object_ID( ''''TempDB..##OItems'''' ) is not null'
      '  delete from ##OItems where Id_SPID = @@SPID'
      ''
      'else'
      '  create table ##OItems'
      '    ('
      '    Id_SPID Int,'
      '    Nr_Item SmallInt,'
      '    Cd_Produto Int,'
      '    Nm_Produto VarChar( 120 ),'
      '    Sg_Unidade Char( 2 ),'
      '    Qt_Item Numeric( 12, 3 ),'
      '    Vl_Unitario Numeric( 12, 3 )'
      '    )'
      ''
      '--------------- Carrega os dados'
      'insert into ##OItems'
      'select'
      '  @@SPID, Nr_Item, Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Fl_Confirmado = ''''1'''
      ''
    )
    SQLOther1.Strings = (
      '--------------- Atualiza os itens com o valor unitario modificado'
      'update'
      '  ##OItems'
      ''
      'set'
      '  Vl_Unitario = :Vl_Unitario'
      ''
      'where'
      '  Id_SPID = @@SPID and'
      '  Nr_Item = :Nr_Item'
    )
    SQLOther2.Strings = (
      '--------------- Atualiza os itens do or'#231'amento'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Vl_Unitario = :Vl_Unitario'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
      ''
    )
    SQLOther3.Strings = (
      '--------------- Atualiza o Or'#231'amento'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Vl_Desconto   = :Vl_Desconto,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    Left = 104
    Top = 280
  end
end
