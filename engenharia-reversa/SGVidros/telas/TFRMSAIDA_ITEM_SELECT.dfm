object FrmSaida_Item_Select: TFrmSaida_Item_Select
  Left = 287
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sa'#237'da no Estoque'
  ClientHeight = 398
  ClientWidth = 766
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 398
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 745
    Height = 398
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 5
      Top = 367
      Width = 734
      Height = 5
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 7
      Top = 289
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label1: TLabel
      Left = 181
      Top = 291
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 266
      Top = 291
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object Label2: TLabel
      Left = 351
      Top = 291
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 436
      Top = 291
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 229
      Top = 327
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 324
      Top = 327
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Label9: TLabel
      Left = 8
      Top = 328
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label11: TLabel
      Left = 51
      Top = 328
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object SbTributacao: TSpeedButton
      Left = 456
      Top = 341
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTributacaoClick
    end
    object Label15: TLabel
      Left = 416
      Top = 326
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object BitBtnConfirm: TBitBtn
      Left = 571
      Top = 371
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 657
      Top = 371
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 15
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbEstoque: TComboBox
      Left = 7
      Top = 304
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 181
      Top = 304
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 3
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtQt_Estoque: TCurrencyEdit
      Left = 266
      Top = 304
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 4
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 351
      Top = 304
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 5
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 436
      Top = 304
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 229
      Top = 341
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 10
    end
    object EdtDt_Validade: TDateEdit
      Left = 324
      Top = 341
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 11
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 94
      Top = 341
      Width = 130
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 9
    end
    object EdtPr_ICMSItem: TCurrencyEdit
      Left = 8
      Top = 341
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 7
    end
    object EdtPr_IPIItem: TCurrencyEdit
      Left = 51
      Top = 341
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 8
    end
    object EdtFind: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 408
      Height = 19
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do Produto'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnEnter = EdtFindEnter
      OnExit = EdtFindExit
      OnKeyPress = EdtFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 39
      Width = 732
      Height = 249
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFindDblClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
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
          Width = 615
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Estoque'
          Width = 43
          Visible = True
        end>
    end
    object CkBContendo: TCheckBox
      Left = 661
      Top = 2
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 3
      Left = 416
      Top = 341
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_TributacaoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 479
      Top = 341
      Width = 258
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '  Pr_ICMS, Pr_IPI, Nm_Produto, Cd_Tributacao )'
      'values( :Cd_Filial, :Nr_Saida, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '  :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade,'
      '  :Pr_ICMS, :Pr_IPI, :Nm_Produto, :Cd_Tributacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Saida_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Qt_Estoque    = :Qt_Estoque,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Nr_Lote       = :Nr_Lote,'
      '  Dt_Fabricacao = :Dt_Fabricacao,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Pr_ICMS       = :Pr_ICMS,'
      '  Pr_IPI        = :Pr_IPI,'
      '  Cd_Tributacao = :Cd_Tributacao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida and'
      '  Nr_Item   = :Nr_Item'
    )
    Left = 30
    Top = 367
  end
  object ADODsCheck: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  Saida_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Saida = :Nr_Saida'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Item ) as NewItem'
      ''
      'from'
      '  Saida_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida = :Nr_Saida'
    )
    SQLOther0.Strings = (
      '---------- Valida se o produto ja esta no emitente'
      'select'
      '  SI.Cd_Produto'
      ''
      'from'
      '  Saida_Item Si'
      ''
      'where'
      '  SI.Cd_Filial  = :Cd_Filial and'
      '  SI.Nr_Saida   = :Nr_Saida and'
      '  SI.Cd_Produto = :Cd_Produto'
    )
    SQLOther1.Strings = (
      '--------- Valida se o item existe pelo codigo'
      'select'
      '  Cd_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Fabricante = :Cd_Fabricante'
    )
    Left = 60
    Top = 366
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'#13#10#13#10'from'#13#10'  Produto P'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nr_Sequencia'
    )
    SQLOther1.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'from'
      '  Produto P'
      ''
      'where'
      '  P.Nm_Produto like :Nm_Produto'
      ''
      'order by'
      '  P.Nm_Produto'
    )
    Left = 360
    Top = 192
    object ADODsFindCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsFindNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsFindSg_Estoque: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 328
    Top = 192
  end
end
