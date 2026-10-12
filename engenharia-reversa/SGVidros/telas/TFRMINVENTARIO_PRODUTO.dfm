object FrmInventario_Produto: TFrmInventario_Produto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Produto no Inventario'
  ClientHeight = 144
  ClientWidth = 608
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 144
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 587
    Height = 144
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 114
      Width = 579
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label7: TLabel
      Left = 438
      Top = 2
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object Label13: TLabel
      Left = 174
      Top = 39
      Width = 37
      Height = 13
      Caption = 'Sa'#237'das:'
    end
    object Label15: TLabel
      Left = 259
      Top = 39
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object Label21: TLabel
      Left = 5
      Top = 39
      Width = 69
      Height = 13
      Caption = 'Saldo Anterior:'
    end
    object Label22: TLabel
      Left = 90
      Top = 39
      Width = 45
      Height = 13
      Caption = 'Entradas:'
    end
    object Label1: TLabel
      Left = 342
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label2: TLabel
      Left = 427
      Top = 39
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object LblInventario: TLabel
      Left = 5
      Top = 74
      Width = 138
      Height = 13
      Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 414
      Top = 117
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 9
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 500
      Top = 117
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 10
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_ProdInventa: TEdit
      Left = 90
      Top = 17
      Width = 345
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
    object EdtSg_Unidade: TEdit
      Left = 438
      Top = 17
      Width = 140
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
      TabOrder = 2
    end
    object EdtQt_Saidas: TCurrencyEdit
      Left = 174
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnChange = EdtQt_AnteriorChange
    end
    object EdtQt_Saldo: TCurrencyEdit
      Left = 259
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtQt_Anterior: TCurrencyEdit
      Left = 5
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnChange = EdtQt_AnteriorChange
    end
    object EdtQt_Entradas: TCurrencyEdit
      Left = 90
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnChange = EdtQt_AnteriorChange
    end
    object EdtVl_Custo: TCurrencyEdit
      Left = 342
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnChange = EdtQt_AnteriorChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 427
      Top = 53
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object CbInventario: TComboBox
      Left = 5
      Top = 89
      Width = 206
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 4
      ParentCtl3D = False
      TabOrder = 11
      Text = 'Material de Revenda'
      Items.Strings = (
        'Mat'#233'ria Prima'
        'Insumos ou Material Secund'#225'rio'
        'Produtos Acabados'
        'Material em Poder de Terceiros'
        'Material de Revenda'
        'Material uso e consumo'
        'Material uso presta'#231#227'o de servi'#231'os'
      )
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      '--------------- Anual'
      'insert into Inventario_Produto( Cd_Filial, Nr_Ano, Cd_Produto,'
      '  Qt_Anterior, Qt_Entradas, Qt_Saidas, Vl_Custo, Fl_Inventario )'
      'values( :Cd_Filial, :Nr_Ano, :Cd_Produto, :Qt_Anterior, :Qt_Entradas,'
      '  :Qt_Saidas, :Vl_Custo, :Fl_Inventario )'
    )
    SQLUpdate.Strings = (
      '--------------- Anual'
      'update'
      '  Inventario_Produto'
      ''
      'set'
      '  Qt_Anterior   = :Qt_Anterior,'
      '  Qt_Entradas   = :Qt_Entradas,'
      '  Qt_Saidas     = :Qt_Saidas,'
      '  Vl_Custo      = :Vl_Custo,'
      '  Fl_Inventario = :Fl_Inventario'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Ano        = :Nr_Ano and'
      '  Cd_Produto    = :Cd_Produto and'
      '  Fl_Inventario = :Fl_OldInventario'
    )
    SQLOther0.Strings = (
      '--------------- Mensal'
      'insert into Inventario_Mensal_Produto( Cd_Filial, Cd_Periodo, Cd_Produto,'
      '  Qt_Anterior, Qt_Entradas, Qt_Saidas, Vl_Custo )'
      'values( :Cd_Filial, :Cd_Periodo, :Cd_Produto, :Qt_Anterior, :Qt_Entradas, :Qt_Saidas, :Vl_Custo )'
    )
    SQLOther1.Strings = (
      '--------------- Mensal'
      'update'
      '  Inventario_Mensal_Produto'
      ''
      'set'
      '  Qt_Anterior = :Qt_Anterior,'
      '  Qt_Entradas = :Qt_Entradas,'
      '  Qt_Saidas   = :Qt_Saidas,'
      '  Vl_Custo    = :Vl_Custo'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo and'
      '  Cd_Produto = :Cd_Produto'
    )
    SQLOther2.Strings = (
      '--------------- Trimestral'
      'insert into Inventario_Trimestral_Produto( Cd_Filial, Nr_Ano, Cd_Produto,'
      '  Qt_Anterior, Qt_Entradas, Qt_Saidas, Vl_Custo, Fl_Inventario )'
      'values( :Cd_Filial, :Nr_Ano, :Cd_Produto, :Qt_Anterior, :Qt_Entradas,'
      '  :Qt_Saidas, :Vl_Custo, :Fl_Inventario )'
    )
    SQLOther3.Strings = (
      '--------------- Trimestral'
      'update'
      '  Inventario_Trimestral_Produto'
      ''
      'set'
      '  Qt_Anterior   = :Qt_Anterior,'
      '  Qt_Entradas   = :Qt_Entradas,'
      '  Qt_Saidas     = :Qt_Saidas,'
      '  Vl_Custo      = :Vl_Custo,'
      '  Fl_Inventario = :Fl_Inventario'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Ano        = :Nr_Ano and'
      '  Cd_Produto    = :Cd_Produto and'
      '  Fl_Inventario = :Fl_OldInventario'
    )
    Left = 242
    Top = 83
  end
  object ADODsPrimary: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Teste do anual'
      'select'
      '  Cd_Filial'
      ''
      'from'
      '  Inventario_Produto'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Ano        = :Nr_Ano and'
      '  Cd_Produto    = :Cd_Produto and'
      '  Fl_Inventario = :Fl_Inventario'
    )
    SQLOther1.Strings = (
      '--------------- Teste do mensal'
      'select'
      '  Cd_Filial'
      ''
      'from'
      '  Inventario_Mensal_Produto'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Cd_Periodo    = :Cd_Periodo and'
      '  Cd_Produto    = :Cd_Produto '
    )
    SQLOther2.Strings = (
      '--------------- Teste do Trimestral'
      'select'
      '  Cd_Filial'
      ''
      'from'
      '  Inventario_Trimestral_Produto'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Ano        = :Nr_Ano and'
      '  Cd_Produto    = :Cd_Produto and'
      '  Fl_Inventario = :Fl_Inventario'
    )
    Left = 272
    Top = 82
  end
end
